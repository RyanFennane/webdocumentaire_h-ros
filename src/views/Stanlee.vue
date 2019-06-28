<template>
  <div class="stanlee">
    <div class="stanlee__intro step">
      <div class="stanlee__first--container">
        <img src="@/assets/images/marvel-logo2.png" alt="marvel logo">
      </div>
      <div class="stanlee__second--container">
        <span>1960</span>
        <p>Au debut des années 1960, il crée de nombreux super-héros comme Hulk, les 4 fantastiques. Spider Man .. Avec tous ses héros qui sont des modèles il devient un des meilleurs auteurs de comic-book. Avec cette notoriété, il fait de Marvel le symbole des comics.</p>
      </div>
    </div>
  </div>
</template>

<script>

export default {
  name: 'stanlee',
  data () {
    return{
      step: 0
    }
  },
  mounted () {
    let steps = document.querySelectorAll('.step')
    window.addEventListener("wheel", event => {
      const delta = Math.sign(event.deltaY)
      if(delta == 1){
        if(this.step<steps.length-1){
          this.step++
          this.changeStep()
        } else {
          this.$router.push('heroes')
        }
      } else {
        if(this.step>0){
          this.step--
          this.changeStep()
        } else {
          this.$router.push('marvel')
        }
      }
    })
  },
  methods: {
    changeStep() {
      let steps = document.querySelectorAll('.step')
      for (let i = 0; i<steps.length; i++) {
        if(this.step == i){
          steps[i].style.display = 'flex'
        } else {
          steps[i].style.display = 'none'
        }
      }
    }
  }
}

</script>

<style lang="sass">

  .stanlee
    display: flex
    justify-content: center
    width: 100vw
    height: 100vh

  .stanlee__intro
    display: flex
    justify-content: flex-start
    flex-direction: column
    align-items: center
    width: 100vw
    height: 88vh
    background: url('~@/assets/images/stanlee-bg.png') no-repeat
    background-size: cover
    color: #ffffff

    .stanlee__second--container
      display: flex
      justify-content: flex-end
      flex-direction: column
      align-items: center
      width: 100vw
      height: 100%
      margin-bottom: 5vw

      span
        font-size: 5vw
        font-weight: bold

      p
        font-size: 1.25vw
        padding: 0 15vw
        text-align: center
        font-weight: bold
</style>