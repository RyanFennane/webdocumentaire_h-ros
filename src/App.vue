<template>
  <div id="app">
    <router-view/>
  </div>
</template>

<script>

export default {
  name: 'app'
}

</script>

<style lang="sass">

@import url('https://fonts.googleapis.com/css?family=Montserrat:300,400,500,700,900,900i&display=swa')
@import url('https://use.fontawesome.com/releases/v5.8.1/css/all.css')

#app
  font-family: 'Montserrat', Helvetica, Arial, sans-serif
  -webkit-font-smoothing: antialiased
  -moz-osx-font-smoothing: grayscale
  width: 100vw
  height: 100vh
  display: flex
  justify-content: center
  align-items: center

body
  margin: 0
  padding: 0
  overflow: hidden

</style>
