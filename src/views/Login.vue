<template>
  <div class="register">
    <Header>
      <button v-on:click="logout" class="btn-sm btn-primary">Log Out</button>
      <p>Log in your profile!</p>
      <h1>Login</h1>
    </Header>
    <div class="container">
      <div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-6 header-overlay mb-5">
          <form>
            <div class="mb-3">
              <input v-model="username" type="text" class="form-control" id="username" placeholder="username" required />
            </div>
            <div class="mb-3">
              <input v-model="password" type="password" class="form-control" id="password" placeholder="Password" required/>
            </div>
            <br />
            <button  v-on:click.prevent="handleSubmit" class="btn-lg btn-primary">
              Sign In
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
      getuservue: "http://localhost:3000/getuservue",
      updatetokenvue: "http://localhost:3000/updatetokenvue",
      tokenremove: "http://localhost:3000/tokenremove",
      password: "",
      username: "",
    };
  },
  methods: {
    async handleSubmit(){
        if(
            document.getElementById("username").value === "" ||
            document.getElementById("password").value === ""
        ){
            alert("Please fill all fields");
            return false;
        }
        try{
            let result = await axios.post(this.getuservue, {
                user_name: this.username,
                user_password: this.password,
            });
            this.something = result.data[0].user_password;
            if(this.something == this.password){
                await axios.put(this.updatetokenvue, {
                    user_id: result.data[0].user_id,
                    token: 1,
                });
                this.$router.push('/');
            } 
        }catch (err){
            console.log(err);
        }
    },
    async logout(){
      try{
        await axios.put(this.tokenremove);
      } catch(err){
        console.log(err);
      }
    this.$router.push('/register');}
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

