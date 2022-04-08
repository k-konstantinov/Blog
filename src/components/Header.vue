<template>
  <div class="header">
    <slot></slot>
  </div>
</template>

<script>
export default {
  name: "Header",

};
</script>


<style scoped lang="scss">
.header{
  background: #fff0e9;
  padding: 30px;
}
</style>
