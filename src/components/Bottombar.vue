<template>
  <div class="bottombar">
    <h1>Bottom Bar</h1>
    <div class="nav">
      <router-link to="/">Home</router-link>
      <router-link to="/marvel">Marvel</router-link>
      <router-link to="/dc">DC</router-link>
      <router-link to="/heroes">heroe</router-link>
    </div>
  </div>
</template>

<script>

export default {
  name: 'bottombar',
  components: {
  },
}

</script>

<style lang="sass">
  
  .bottombar
    display: flex
    align-items: center
    justify-content: center
    flex-direction: column
    width: 100vw
    height: 15vh
    background-color: #ff6e6e
    margin: 0
    position: absolute
    bottom: 0
    left: 0

    h1
      color: #000000
      margin: 0 0 1vw 0

    .nav  
      a
        margin: 1vw 2vw

</style>
