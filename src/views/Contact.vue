<template>
  <Header>
    <p class="page-info">Get in touch!</p>
    <h1>Contact Us</h1>
  </Header>
  <div class="container">
    <div class="row">
      <div class="col-md-3"></div>
        <div class="col-md-6 header-overlay text-start mb-5">
          <form>
            <div class="row d-flex justify-content-between">
              <h6 class="small my-4">Fill up the form below & our team will get back soon.</h6>
              <div class="col-md-3 contact-square text-center mb-4">
                <p class="fw-bolder small h6my-3"><i class="bi bi-geo-alt-fill h5 text-primary"></i><br />403 Street, Avenue,<br />
                  New York USA
                </p>
              </div>
              <div class="col-md-3 contact-square text-center mb-4">
                <p class="fw-bolder small h6 mt-3"><i class="bi bi-telephone-fill h5 text-primary"></i><br />+800 123 456789</p>
              </div>
              <div class="col-md-3 contact-square text-center mb-4">
                <p class="fw-bolder small h6 mt-3"><i class="bi bi-envelope-open-fill h5 text-primary"></i><br />hello@onir.com</p>
              </div>
            </div>
            <div class="row">
              <div class="col-6">
                <div class="mb-3">
                  <input type="text" class="form-control" v-model="name" id="name" placeholder="Name" />
                </div>
              </div>
              <div class="col-6">
                <div class="mb-3">
                  <input type="email" class="form-control" v-model="email" id="email" placeholder="Email" />
                </div>
              </div>
              <div class="col-6">
                <div class="mb-3">
                  <input type="text" class="form-control" v-model="country" id="companyName" placeholder="Company Name" />
                </div>
              </div>
              <div class="col-6">
                <div class="mb-3">
                  <input type="text" list="country" class="form-control" placeholder="Country" />
                  <datalist id="country">
                    <option>Bulgaria</option>
                    <option>Austria</option>
                    <option>Spain</option>
                    <option>Schweiz</option>
                  </datalist>
                </div>
              </div>
              <div class="col-6">
                <div class="mb-3">
                  <input type="text" class="form-control" v-model="phone" id="phone" placeholder="Phone no." />
                </div>
              </div>
              <div class="col-6">
                <div class="mb-3">
                  <input type="text" class="form-control" id="website" placeholder="Website" />
                </div>
              </div>
              <div class="col-12">
                <div class="mb-3">
                  <textarea type="text" class="form-control" v-model="message" id="message" rows="4" placeholder="Your message" />
                </div>
              </div>
            </div>
            <br />
            <p v-if="show" class="text-danger fw-bolder">Should to fill all fields</p>
            <button v-on:click="sendEmail"  class="btn-lg btn-primary text-left">Submit</button>
          </form>
        </div>
        <div class="col-md-3"></div>
    </div>
    <div class="row">
      <div class="col-1"></div>
      <div class="col-4">
        <h3>Our office</h3>
        <p class="mt-3 mb-5">
          Duis orci nisl, ornare non diam id, dapibus faucibus urna. Vestibulum tristique posuere iaculis. Suspendisse orci tortor, auctor non lu
        </p>
        <img src="../assets/office2.png" alt="office" class="w-100 mt-5"/>
      </div>
      <div class="col-6">
        <img src="../assets/office.png" alt="office" class="w-100 my-5"/>
      </div>
      <div class="col-1"></div>
    </div>
    <div class="row mt-5">
      <div class="col-1"></div>
      <div class="col-2">
        <p class="fw-bolder h6 pt-5">
          403 Street,<br />
          Avenue,<br />
          New York USA.
        </p>
      </div>
      <div class="col-8 mb-5">
        <iframe
          src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d186125.67986879864!2d27.802821657675793!3d43.20500591176435!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40a4538baaf3d7a1%3A0x5727941c71a58b7c!2sVarna!5e0!3m2!1sen!2sbg!4v1640676194170!5m2!1sen!2sbg"
          class="w-100"
          style="border: 0"
          loading="lazy"
        ></iframe>
      </div>
      <div class="col-1" id="element"></div>
    </div>
  </div>
  <Footer />
</template>

<script>
import Header from "../components/Header.vue";
import Footer from "../components/Footer.vue";
import axios from "axios";

export default {
  name: "Contact",
  components: {
    Header,
    Footer,
  },
  data() {
    return{
      email: "",
      name: "",
      country: "",
      phone: "",
      message: "",
      show: ''
    }   
  },
  methods:
  {
    async sendEmail(e) 
    {
      if(!this.name || !this.email || !this.phone || !this.message){
          this.show=true;
          e.preventDefault();
      }
      try{
        await axios.post('http://localhost:3000/email',
          {name: this.name, message: this.message})
          .then((response) => {
            return response.data
            })
      } catch(err) {
        console.log(err);
      }
    }
  }
};
</script>



<style scoped lang="scss">
.page-info {
  font-size: 14px;
  font-weight: 400;
  padding-top: 50px;
  font-weight: 500;
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
input, textarea{
    font-size: 12px;
    padding: 15px;
    background: #FFF0E9B2;
    border: #FFF0E9;
    border-radius: 10px;
}
.contact-square{
  border: 1px solid #FFF0E9;
  border-radius: 25px;
}
</style>
