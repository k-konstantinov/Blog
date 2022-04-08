<template>
  <div class="register">
    <Header>
      <p>Make your registration here!</p>
      <h1>Registration</h1>
    </Header>
    <div class="container">
      <div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-6 header-overlay mb-5">
          <form>
            <div class="mb-3">
              <input v-model="email" type="email" class="form-control" id="email" aria-describedby="emailHelp" placeholder="Email" required />
            </div>
            <div class="mb-3">
              <input v-model="name" type="text" class="form-control" id="username" placeholder="Username" required />
            </div>
            <div class="mb-3">
              <input v-model="pass" type="password" class="form-control" id="pass" placeholder="Password" required/>
              <p v-if="pass.length > 0 && pass.length < 6" class="text-danger">Password should be minimum 6 symbols</p>
            </div>
            <div class="mb-3">
              <input v-model="rePass" type="password" class="form-control" id="repass" placeholder="Re-Password"/>
              <p v-if="rePass.length > 0 && pass != rePass" class="text-danger">Password dont match</p>
            </div>
            <br />
            <button :disabled="!name || !pass || !email || !rePass" v-on:click="InsertUser" class="btn-lg btn-primary">
              Register
            </button>
          </form>
        </div>
        <div class="col-md-3"></div>
      </div>
    </div>
    <Footer/>
  </div>
</template>

<script>
import Header from "../components/Header.vue";
import Footer from "../components/Footer.vue";
import axios from "axios";

export default {
  name: "Register",
  components: {
      Header,
      Footer
  },
  data() {
    return {
      insertuser: "http://localhost:3000/insertuservue",
      name: "",
      pass: "",
      rePass: "",
      email: "",
    };
  },
  methods: {
    async InsertUser() {
      try {
        await axios.post(this.insertuser, {
          user_name: this.name,
          user_password: this.pass,
          email: this.email,
        });
      } catch (err) {
        console.log(err);
      }
    },
  },
};
</script>


<style scoped lang="scss">
p {
  font-size: 15px;
  font-weight: 400;
  padding-top: 50px;
}
h1 {
  font-size: 70px;
  font-weight: 900;
  padding-bottom: 100px;
}
form{
    padding: 35px;
    border: 1px solid #FFF0E9;
    border-radius: 25px;
    background: white;
}
input{
    font-size: 12px;
    padding: 15px;
    background: #FFF0E9B2;
    border: #FFF0E9;
    border-radius: 10px;
}
</style>