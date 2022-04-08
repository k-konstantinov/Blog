<template>
  <div class="blogDetails">
    <Header>
      <p><span class="fw-bolder text-primary">Design</span> | {{ data.time }}</p>
      <h1 class="fw-bolder">
        {{ data.title }}
      </h1>
      <p class="fw-bolder small py-5">By Robert Long</p>
    </Header>
    <div class="container">
      <div class="row">
        <div class="col-1"></div>
        <div class="col-10">
          <img :src="data.image" class="singlePostImg w-100" alt="" />
        </div>
        <div class="col-1"></div>
      </div>
      <div class="row">
        <div class="col-1"></div>
        <div class="col-10">
          <p class="text-muted small my-5">{{ data.content }}</p>
        </div>
        <div class="col-1"></div>
      </div>
      <div class="row">
        <div class="col-1"></div>
        <div class="col-5">
          <img src="../assets/single-page-img-left.jpg" class="my-5 w-100" alt="post-img">
        </div>
        <div class="col-5">
          <img src="../assets/single-page-img-right.jpg" class="my-5 w-100" alt="post-img">
        </div>
        <div class="col-1"></div>
      </div>
      <div class="row">
        <div class="col-1"></div>
        <div class="col-10">
          <p class="text-muted small my-5">{{ data.content }}</p>
        </div>
        <div class="col-1"></div>
      </div>
      <div class="row">
        <div class="col-2"></div>
        <div class="col-8 quote">
          <img src="../assets/quote.png" alt="quote" class="quote-sign"/>
          <p class="my-5">
            Prada were so cool about it, even<br/>
            though they understood thecriticism
          </p>
        </div>
        <div class="col-2"></div>
      </div>
      <div class="row">
        <div class="col-7"></div>
        <div class="col-3">
          <p class="mt-2 mb-5"><span class="fw-bolder">Natasha Singh,</span> ABC Inc.</p>
        </div>
        <div class="col-2"></div>
      </div>
      <div class="row">
        <div class="col-1"></div>
        <div class="col-10 mb-5">
          <p class="text-muted small my-5">
            {{ data.content }}<br/><br/>
            {{ data.content }}<br/><br/>
          </p>
          <p class="mb-3">Tags: <span class="text-primary">design, app, tips</span></p>
        </div>
        <div class="col-1"></div>
      </div>
      <div class="row">
        <div class="col-1"></div>
        <div class="col-10 my-5 mt-0">
          <h2 class="mt-5 fw-bolder">Leave a Comments</h2>
          <p class="mb-5">Nullam tincidunt, purus sit amet viverra auctor, quamque incidunt, puincidunt, Vestibulum </p>
          <form>
            <div class="row">
              <div class="col-12">
                <div class="mb-3">
                  <textarea type="text" class="form-control" id="message" rows="4" placeholder="Your message" />
                </div>
              </div>
              <div class="col-6">
                <div class="mb-3">
                  <input type="text" class="form-control" id="name" placeholder="Name" />
                </div>
              </div>
              <div class="col-6">
                <div class="mb-3">
                  <input type="email" class="form-control" id="email" placeholder="Email" />
                </div>
              </div>
              <div class="col-6">
                <div class="mb-3">
                  <input type="text" class="form-control" id="phone" placeholder="Phone no." />
                </div>
              </div>
              <div class="col-6">
                <div class="mb-3">
                  <input type="text" class="form-control" id="website" placeholder="Website" />
                </div>
              </div>
            </div>
            <br />
            <button v-on:click="SendEmail" class="btn-lg btn-primary text-left float-start mb-5">Post Comment</button>
          </form>
        </div>
        <div class="col-1"></div>
      </div>
      <div class="row">
        <div class="col-3"></div>
        <div class="col-md-6 my-5">
          <div class="row">
            <div class="col-3">
              <img src="../assets/RL.jpg" alt="post-img" class="w-100"/>
            </div>
            <div class="col-1"></div>
            <div class="col-8 text-start">
              <p class="text-mutted comment">30 min ago</p>
              <h6 class="fw-bolder">Robert Long</h6>
              <p class="text-mutted comment">
                Aliquam vitae eros lectus. Fusce vel condimentum neque. 
                Class aptent taciti sociosqu ad litora torquent per conubia nostra, 
                per inceptos himenaeos. Nunc eget bibendum ante. Nulla eget neque malesuada, 
                hendrerit nibh quis, fringilla ligula
              </p>
            </div>
          </div>
        </div>
        <div class="col-3"></div>
      </div>
      <div class="row">
        <div class="col-3"></div>
        <div class="col-md-6 my-5">
          <div class="row">
            <div class="col-3">
              <img src="../assets/JS.jpg" alt="post-img" class="w-100"/>
            </div>
            <div class="col-1"></div>
            <div class="col-8 text-start">
              <p class="text-mutted comment">1 hr ago</p>
              <h6 class="fw-bolder">Jennifer Smith</h6>
              <p class="text-mutted comment">
                Aliquam vitae eros lectus. Fusce vel condimentum neque. 
                Class aptent taciti sociosqu ad litora torquent per conubia nostra, 
                per inceptos himenaeos. Nunc eget bibendum ante. Nulla eget neque malesuada, 
                hendrerit nibh quis, fringilla ligula
              </p>
            </div>
          </div>
        </div>
        <div class="col-3"></div>
      </div>
      <div class="row">
        <div class="col-3"></div>
        <div class="col-md-6 my-5">
          <div class="row">
            <div class="col-3">
              <img src="../assets/NS.jpg" alt="post-img" class="w-100"/>
            </div>
            <div class="col-1"></div>
            <div class="col-8 text-start">
              <p class="text-mutted comment">2 hrs ago</p>
              <h6 class="fw-bolder">Natasha Singh</h6>
              <p class="text-mutted comment">
                Aliquam vitae eros lectus. Fusce vel condimentum neque. 
                Class aptent taciti sociosqu ad litora torquent per conubia nostra, 
                per inceptos himenaeos. Nunc eget bibendum ante. Nulla eget neque malesuada, 
                hendrerit nibh quis, fringilla ligula.Fusce vel condimentum neque. 
                Class aptent taciti sociosqu.
              </p>
            </div>
          </div>
        </div>
        <div class="col-3"></div>
      </div>
      <div class="row">
        <div class="col-12 my-5">
            <h2 class="mt-5 fw-bolder">Releated Posts</h2>
            <p class="mb-5">Nullam tincidunt, purus sit amet viverra auctor, quamque incidunt, puincidunt, Vestibulum </p>
        </div>
      </div>
      <div class="row">
        <div class="col-1"></div>
        <div class="col-10">
          <div class="row d-flex justify-content-between">
            <div class="col-md-3 p-3 outside">
              <p class="text-mutted comment text-end pe-2 pt-2">30 min ago</p>
              <div class="text-center bg-white p-4 inside">
                <h5 class="fw-bolder">Added Cool Features</h5>
                <p class="inside-text">Nullam tincidunt, purus sit amet viverra auctor, quamque incidunt, puincidunt, Vestibulum</p>
                <a href="#" class="text-primary text-decoration-none small fw-bolder">Read Story</a>
              </div>
            </div>
            <div class="col-md-3 p-3 outside">
              <p class="text-mutted comment text-end pe-2 pt-2">30 min ago</p>
              <div class="text-center bg-white p-4 inside">
                <h5 class="fw-bolder">Added Cool Features</h5>
                <p class="inside-text">Nullam tincidunt, purus sit amet viverra auctor, quamque incidunt, puincidunt, Vestibulum</p>
                <a href="#" class="text-primary text-decoration-none small fw-bolder">Read Story</a>
              </div>
            </div>
            <div class="col-md-3 p-3 outside">
              <p class="text-mutted comment text-end pe-2 pt-2">30 min ago</p>
              <div class="text-center bg-white p-4 inside">
                <h5 class="fw-bolder">Added Cool Features</h5>
                <p class="inside-text">Nullam tincidunt, purus sit amet viverra auctor, quamque incidunt, puincidunt, Vestibulum</p>
                <a href="#" class="text-primary text-decoration-none small fw-bolder">Read Story</a>
              </div>
            </div>
          </div>
        </div>
        <div class="col-1"></div>
        
      </div>
    </div>
  </div>
  <Footer/>
</template>

<script>
import Header from "../components/Header.vue";
import Footer from "../components/Footer.vue";
export default {
  name: "BlogDetails",
  components: {
    Header,
    Footer,
  },
  props: ["id"],
  data() {
    return {
      data: "",
    };
  },
  mounted() {
    fetch("http://localhost:3000/getpost/" + this.id)
      .then((response) => {
        return response.json();
      })
      .then((result) => {
        this.data = result[0];
      })
      .catch((err) => {
        console.log(err.message);
      });
  },
};
</script>



<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped lang="scss">
h3 {
  margin: 40px 0 0;
}
ul {
  list-style-type: none;
  padding: 0;
}
li {
  display: inline-block;
  margin: 0 10px;
}
a {
  color: #42b983;
}
.singlePostImg{
  position: relative;
  bottom: 20px;
  border-radius: 20px;
}
.quote{
  background: #fff0e9;
  border-radius: 20px;
  font-size: 40px;
  font-weight: 50;
}
.quote-sign{
  position: relative;
  bottom: 35px;
  right: 271px;
}
form{
    padding: 35px;
    background: white;
}
input, textarea{
    font-size: 12px;
    padding: 15px;
    background: #FFF0E9B2;
    border: #FFF0E9;
    border-radius: 10px;
}
.comment{
  font-size: 12px;
}
.outside{
  background: #fff0e9;
  border-radius: 20px;
  margin-bottom: 200px;
}
.inside{
  margin-top: 80px;
  border-radius: 20px;
}
.inside-text{
  font-size: 12px;
}
</style>
