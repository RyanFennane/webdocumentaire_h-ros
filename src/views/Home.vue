<template>
  <div class="home">
    <h1>Intro</h1>
    <bottombar></bottombar>
  </div>
</template>

<script>

import bottombar from '@/components/Bottombar.vue'

export default {
  name: 'home',
  components: {
    bottombar
  },
}

</script>

<style lang="sass">

  .home
    width: 100vw
    height: 100vh
    display: flex
    justify-content: center
    align-items: center

    >h1
      color: #ff6e6e

</style>

