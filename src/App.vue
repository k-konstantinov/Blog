<template>
  <Header>
    <div class="container">
      <div class="row">
        <div class="col-md-1"></div>
        <div class="col-md-10">
          <nav class="navbar navbar-expand-lg navbar-light mt-3">
            <div class="container-fluid">
              <a class="navbar-brand" href="#"
                ><img src="./assets/logo.png" alt="logo"
              /></a>
              <button
                class="navbar-toggler"
                type="button"
                data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent"
                aria-expanded="false"
                aria-label="Toggle navigation"
              >
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                  <li class="nav-item p-1">
                    <router-link class="nav-link" to="/">How It Works</router-link>
                  </li>
                  <li class="nav-item p-1">
                    <a class="nav-link" to="features">Features</a>
                  </li>
                  <li class="nav-item p-1">
                    <a class="nav-link" to="pricing">Pricing</a>
                  </li>
                  <li class="nav-item p-1">
                    <router-link class="nav-link" to="/blog-page">Blog</router-link>
                  </li>
                  <li class="nav-item p-1">
                    <router-link class="nav-link" to="/contact">Contact</router-link>
                  </li>
                  <li class="nav-item p-1">
                    <a class="nav-link" to="about">About</a>
                  </li>
                  <li class="nav-item p-1">
                    <router-link class="nav-link" to="/login">Login</router-link>
                  </li>
                  <li class="nav-item p-1">
                    <router-link class="nav-link bg-primary text-white rounded-pill px-4 text-decoration-none" to="/register"
                      >Sign Up</router-link>
                  </li>
                </ul>
              </div>
            </div>
          </nav>
        </div>
        <div class="col-md-1"></div>
      </div>
    </div>
  </Header>
  <router-view />
</template>

<script>
import Header from "./components/Header.vue";

export default {
  name: 'App',
  components: {
    Header,
  }
};
</script>

<style lang="scss">
@import url('http://fonts.cdnfonts.com/css/roboto');

#app {
  font-family: 'Roboto', sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #1f1f39;
}

nav {
  padding-top: 30px;

  a {
    color: #1f1f39;
    font-weight: bold;
    text-decoration: none;
    padding: 0 20px;

    &.router-link-exact-active {
      text-decoration: underline solid #0e7dff 2px;
      text-underline-offset: 5px;
    }

    &:hover {
      text-decoration: underline solid #0e7dff 2px;
      text-underline-offset: 5px;
    }
  }
}
</style>
