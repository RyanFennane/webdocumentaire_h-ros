<template>
  <div class="selectheroes">
    <div class="select">
      <div class="heroe__intro--title">
        <h2>Choisissez un Héros</h2>
      </div>
      <router-link to="/heroes/superman">
        <div class="heroe__card"></div>
      </router-link>
    </div>
    <bottombar></bottombar>
  </div>
</template>

<script>

import bottombar from '@/components/Bottombar.vue'

export default {
  name: 'selectheroes',
  components: {
    bottombar
  },
}

</script>

<style lang="sass">

  .selectheroes
    display: flex
    justify-content: center
    width: 100vw
    height: 100vh

    .select
      display: flex
      justify-content: flex-start
      flex-direction: column
      align-items: center
      width: 100vw
      height: 88%
      background: url('~@/assets/images/comics.png')
      background-size: cover
      

      .heroe__intro--title
        color: #ffffff
        font-weight: bold
        font-size: 1.5vw
        border: 12px solid #CF3030
        box-sizing: border-box
        padding: 1.5vw
        background: #0000006b
        margin-top: 2vw

      a
        background: url('~@/assets/images/superman-card.png') no-repeat
        width: 15%
        height: 50%
        background-size: cover
        margin-top: 2vw
        filter: grayscale(100%)
        transition: filter 0.2s ease

        &:hover
          filter: grayscale(0%)

</style>