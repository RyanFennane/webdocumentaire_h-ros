<template>
  <div class="dc">
    <h1>Dc Comics</h1>
    <bottombar></bottombar>
  </div>
</template>

<script>

  import bottombar from '@/components/Bottombar.vue'

export default {
  name: 'dc',
  components: {
    bottombar
  },
  mounted () {
    let hone = document.querySelector('h1')

    hone.addEventListener('click', ()=>{
      console.log('ok')
    })

  },
  beforeDestroy () {
    document.querySelector('h1').style.color = '#000000'
  }
}

</script>

<style lang="sass">

  .dc
    color: #ff6e6e

    h1
      color: #ff6e6e
      transition: color 0.5s ease  

</style>