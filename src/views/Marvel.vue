<template>
  <div class="marvel">
    <div class="marvel__intro step">
      <div class="marvel__intro--title">
        <h2>Maison d'édition Marvel</h2>
      </div>
    </div>
    <div class="marvel__second step">
      <div class="marvel__first--container">
        <img src="@/assets/images/marvel-logo.png" alt="marvel logo">
        <p>Le nom « Marvel Comics » est employée depuis les années 30. Marvel Comics présente des personnages étranges, moralement ambivalent.</p>
      </div>
      <div class="marvel__second--container"></div>
    </div>
    <div class="marvel__third step">
      <div class="marvel__first--container">
        <img src="@/assets/images/marvel-logo2.png" alt="marvel logo">
        <p>En 1953 Stan Lee change totalement les super-héros et les met au gout du jour.</p>
      </div>
      <div class="marvel__second--container"></div>
    </div>
  </div>
</template>

<script>

export default {
  name: 'marvel',
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
          this.$router.push('stanlee')
        }
      } else {
        if(this.step>0){
          this.step--
          this.changeStep()
        } else {
          this.$router.push('dc')
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

  .marvel
    color: #ff6e6e
    width: 100vw
    height: 100vh
    display: flex
    justify-content: flex-start

    .marvel__intro
      display: flex
      justify-content: center
      align-items: center
      width: 100vw
      height: 88vh
      background: url('~@/assets/images/comics.png')
      background-size: cover

      .marvel__intro--title
        color: #ffffff
        font-weight: bold
        font-size: 1.5vw
        border: 12px solid #CF3030
        box-sizing: border-box
        padding: 2vw
        background: #0000006b
    
    .marvel__second
      display: none
      justify-content: center
      align-items: center
      width: 100%
      height: 88vh

      .marvel__first--container
        height: 100%
        width: 50%
        background: #ffffff

        img
          margin-top: 15vh
          padding: 0 4.5vw

        p
          color: #000000
          padding: 0 5vw
          font-size: 1.5vw

      .marvel__second--container
        height: 100%
        width: 50%
        background: url('~@/assets/images/marvel_2.png')
        background-size: cover

    .marvel__third
      display: none
      justify-content: center
      align-items: center
      width: 100%
      height: 88vh

      .marvel__first--container
        display: flex
        align-items: center
        justify-content: space-between
        flex-direction: column
        height: 100%
        width: 50%
        background: #ffffff

        img
          margin-top: 5vh

        p
          color: #000000
          padding: 0 10vw
          font-size: 1.5vw
          margin-bottom: 40vh

      .marvel__second--container
        height: 100%
        width: 50%
        background: url('~@/assets/images/marvel_3.png')
        background-size: cover

</style>
