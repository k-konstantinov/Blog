<template>
  <div class="blogPage">
    <Header>
      <div class="container">
        <div class="row">
          <div class="col-4"></div>
          <div class="col-4">
            <p class="page-info">Checkout our Latest Stories</p>
            <h1>Blog</h1>
            <div class="row height d-flex justify-content-center align-items-center">
              <div class="col-md-12">
                  <div class="search"><i class="fa fa-search bg-danger"></i><input type="text" class="form-control" placeholder="Search"> <button class="btn btn-primary">Go</button> </div>
              </div>
          </div>
          </div>
          <div class="col-4"></div>
        </div>
      </div>
    </Header>
    <div class="container">
      <div class="row">
        <div class="col-md-12 mb-5 overlay-post">
          <div class="row">
            <div class="col-md-5">
              <img src="../assets/blog-post.png" alt="post-img" class="w-100"/>
            </div>
            <div class="col-md-7 text-start">
              <h3 class="fw-bolder mt-3">Added Cool Features</h3>
              <p class="posts-content my-1">
                Duis orci nisl, ornare non diam id, dapibus faucibus urna. 
                Vestibulum tristique posuere iaculis. Suspendisse orci tortor, 
                auctor non luctus sed, vulputate sit amet libero. 
                Maecenas congue fringilla justo molestie dapibus. 
                Cras quis erat in velit rhoncus mollis. Phasellus eu enim dignissim an
              </p>
              <a href="#" class="small text-primary fw-bold">Read Story</a>
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-4" v-for="post in posts" :key="post.post_id">
          <div class="row">
            <div class="col-12 mb-5 text-start">
              <img :src="post.image" class="w-100 img-border" alt=""/>
              <p class="mt-4 mb-1 time">{{ post.time }}</p>
              <h6 class="fw-bolder my-1">{{ post.title }}</h6>
              <p class="posts-content my-1">{{ post.content }}</p>
              <router-link :to="{ name: 'BlogDetails', params: { id: post.post_id } }"><a class="small text-primary fw-bold">Read Story</a></router-link>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <Footer/>
</template>

<script>
import Header from "../components/Header.vue";
import Footer from "../components/Footer.vue";
import axios from "axios";

export default {
  name: "BlogPage",
  components: {
    Header,
    Footer,
  },
  data() {
    return {
      getposts: "http://localhost:3000/getposts",
      posts: "",
    };
  },
  created() {
    this.getUser();

  },
  methods: {
    async getUser() {
      try {
        const result = await axios.get(this.getposts);
        this.posts = result.data;
      } catch (err) {
        console.log(err);
      }
    },
  },
};
</script>



<!-- Add "scoped" attribute to limit CSS to this component only -->
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
  font-size: 12px;
  text-decoration: none;
}
.posts-content{
  font-size: 10px;
}
.time{
  color: silver;
  font-size: 11px;
}
.search {
    position: relative;
    box-shadow: 0 0 40px rgba(51, 51, 51, .1);
    margin-bottom: 60px;
}
.search input {
    height: 60px;
    text-indent: 25px;
    border: 2px solid white;
    border-radius: 10px;
}
.search input:focus {
    box-shadow: none;
    border: 2px solid white;
}
.search button {
  background: #0d6efd;
  position: absolute;
  top: 5px;
  right: 5px;
  height: 50px;
}
.overlay-post{
  position: relative;
  bottom: 50px;
}
.img-border{
  border-radius: 20px;
}
</style>
