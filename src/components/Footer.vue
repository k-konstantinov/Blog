<template>
  <div class="container-fluid">
    <div class="row">
      <div class="col-1"></div>
      <div class="col-10 overlay">
        <div class="row">
          <div class="col-12 col-md-8 mb-5">
            <h2 class="h1 text-start fw-bolder">Lets try out Onir<br/>
                for Free</h2>
            <p class="text-start mb-5 mt-3">
              Download our latest version and please don`t<br />
              forget to rate :)
            </p>
            <div class="row">
              <div class="col-10 d-flex justify-content-between">
                <a href="#"><button class="btn-lg btn-white store-btn-top"><img src="../assets/app-store.png" alt="icon" class="p-3 mx-4"/><span class="btn-text">App Store</span></button></a>
                <a href="#"><button class="btn-lg btn-white store-btn-top"><img src="../assets/play-store.png" alt="icon" class="p-3 mx-4"/><span class="btn-text">Play Store</span></button></a>
              </div>
              <div class="col-12 col-md-2 mt-5"></div>
            </div>
          </div>
          <div class="col-4 mobiles-overlay mt-5">
            <img src="../assets/mobiles.png" alt="mobiles"/>
          </div>
        </div>
      </div>
      <div class="col-1"></div>
    </div>
    <div class="row row-bottom">
      <div class="col-12">
        <h2 class="fw-bolder mt-5">Subscribe Newsletter</h2>
        <p class="small text-muted mb-5">Suspendisse tincidunt sapien feliuentum</p>
        <div class="row">
          <div class="col-4"></div>
          <div class="col-md-3 mb-5">
            <input type="email" class="form-control py-3 small btn-radius" id="email" placeholder="Enter your email adress" />
          </div>
          <div class="col-md-1">
            <button class="btn-lg btn-white border-0 btn-radius align-middle py-3 px-5"><p class="h6 small fw-bold">Submit</p></button>
          </div>
          <div class="col-4"></div>
        </div>
        <hr class="my-5" />
        <div class="row">
          <div class="col-1"></div>
          <div class="col-10 d-md-flex justify-content-between pb-5">
            <ul>
              <li><img src="../assets/logo-white.png" alt="logo"/></li>
              <li class="my-3 text-muted">hello@onirapp.com</li>
              <li class="text-muted">+1-800-123 4567</li>
            </ul>
            <ul>
              <li class="fw-bolder mb-4">Company</li>
              <li class="mb-2"><a href="#" class="text-muted">About</a></li>
              <li class="mb-2"><a href="#" class="text-muted">Services</a></li>
              <li class="mb-2"><a href="#" class="text-muted">Careers</a></li>
              <li class="mb-2"><a href="#" class="text-muted">Blog</a></li>
              <li class="mb-2"><a href="#" class="text-muted">Pricing</a></li>
            </ul>
            <ul>
              <li class="fw-bolder mb-4">Contact</li>
              <li class="mb-2"><a href="#" class="text-muted">Help</a></li>
              <li class="mb-2"><a href="#" class="text-muted">FAQs</a></li>
              <li class="mb-2"><a href="#" class="text-muted">Press</a></li>
              <li class="mb-2"><a href="#" class="text-muted">Terms & Conditions</a></li>
              <li class="mb-2"><a href="#" class="text-muted">Partners</a></li>
            </ul>
            <ul>
              <li>
                <ul class="list-group list-group-horizontal">
                  <li><a href="#" class=""><img src="../assets/fb.png" alt="Facebook"/></a></li>
                  <li><a href="#" class="mx-3"><img src="../assets/twitt.png" alt="Twitter"/></a></li>
                  <li><a href="#" class=""><img src="../assets/insta.png" alt="Instagram"/></a></li>
                </ul>
              </li>
              <li class="row my-3"><p class="float-start small">Let`s try out!</p></li>
              <li class="mt-3"><a href="#"><button class="btn-lg btn-white border-0 btn-radius"><img src="../assets/app-store.png" alt="icon" class="me-2"/><span class="btn-text">App Store</span></button></a></li>
              <li class="mt-3"><a href="#"><button class="btn-lg btn-white border-0 btn-radius"><img src="../assets/play-store.png" alt="icon" class="me-2"/><span class="btn-text">Play Store</span></button></a></li>
            </ul>
          </div>
          <div class="col-1"></div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "Footer",
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped lang="scss">
.overlay{
    position: relative;
    top: 100px;
    background: #FFF0E9;
    border: #FFF0E9;
    border-radius: 30px;
    padding: 100px;
    padding-bottom: 0px;;
}
.row-bottom {
  background: #1f1f39;
  color: white;
  padding-top: 200px;
}
input{
  background: #1f1f39;
}
li{
  list-style-type: none;
}
a{
  text-decoration: none;
}
.btn-text{
  font-size: 15px;
  font-weight: 700;
  line-height: 28px;
  letter-spacing: 0em;
}
.store-btn-top{
  background: #FFF0E9;
  border-radius: 15px;
}
.btn-radius{
  border-radius: 15px;
}
.mobiles-overlay{
  height: 350px;
  position: relative;
  bottom: 250px;
  right: 50px;
}
@media only screen and (max-width: 720px) {
  .mobiles-overlay {
    bottom: 100px;
    right: 110px;
  }
}
</style>
