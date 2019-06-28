<template>
  <div class="dc">
    <div class="dc__intro step">
      <div class="dc__intro--title">
        <h2>Maison d'édition DC Comics</h2>
      </div>
    </div>
    <div class="dc__first step">
      <div class="dc__first--container">
        <div class="dc__title">
          <div class="logo">
            <img src="@/assets/images/dc-logo.png" alt="DC logo">
          </div>
          <h4>DC COMICS</h4>
        </div>
        <p class="description">
          En 1934,durant la Grande Dépression, Malcolm Wheeler-Nicholson ancien Major de l’armée américaine créa une entreprise de comic-book qui sera l'origine de DC Comics.
        </p>
      </div>
      <div class="dc__second--container">
        <div class="major">
          <div class="major__plus">
            <i class="fas fa-circle"></i>
          </div>
        </div>
      </div> 
    </div>
    <div class="dc__second step">
      <div class="dc__first--container"></div>
      <div class="dc__second--container">
        <div class="dc__title">
          <div class="logo">
            <img src="@/assets/images/dc-logo.png" alt="DC logo">
          </div>
          <h4>DC COMICS</h4>
        </div>
        <p class="description">
          Le nom de DC comics est tiré de leur premier comic-book qui porter le nom de Detective Comic. DC Comics est l’une des principales maisons d’édition américaines de bandes dessinées.
        </p>
      </div>
    </div>
  </div>
</template>

<script>

export default {
  name: 'dc',
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
          this.$router.push('marvel')
        }
      } else {
        if(this.step>0){
          this.step--
          this.changeStep()
        } else {
          this.step = 0
          this.changeStep()
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

  .dc
    color: #ff6e6e
    width: 100vw
    height: 100vh
    display: flex
    justify-content: flex-start

    .dc__intro
      display: flex
      justify-content: center
      align-items: center
      width: 100vw
      height: 88vh
      background: url('~@/assets/images/comics.png')
      background-size: cover

      .dc__intro--title
        color: #ffffff
        font-weight: bold
        font-size: 1.5vw
        border: 12px solid #CF3030
        box-sizing: border-box
        padding: 2vw
        background: #0000006b

    .dc__first
      display: none
      align-items: center
      width: 100vw
      height: 88vh
      background: url('~@/assets/images/dc-bg.png')
      background-size: cover

      .dc__first--container
        display: flex 
        flex-direction: column
        align-items: center
        justify-content: space-evenly
        width: 50vw
        height: 60%
        color: #ffffff

        .dc__title
          display: flex 
          flex-direction: row
          align-items: center
          justify-content: center

          .logo
            margin-right: 1vw

          h4
            font-size: 1.5vw

        .description
          font-weight: bold
          font-size: 1.2vw
          margin: 0vw 10vw
      
      .dc__second--container
        display: flex
        justify-content: center
        align-items: center
        height: 100%
        width: 50%

        .major
          position: relative
          background: url('~@/assets/images/major.png')
          background-size: cover
          background-position: center
          height: 80%
          width: 75%

        .major__plus
          position: absolute
          right: 40%
          top: 25%

          i
            color: #ffffff
            border: 2px #000000 solid
            border-radius: 50%
            font-size: 2vw
            cursor: pointer
            position: relative

            &:hover:after
              transform: scale(1)
        
            &:after
              position: absolute
              transform: scale(0)
              transform-origin: top left
              transition: transform 0.5s ease
              content: "Le major Malcolm Wheeler-Nicholson, est un militaire, entrepreneur, ecrivain et editeur américain. Sa maison d'edition National Allied Publications, créée en 1934, est à l'origine directe de DC Comics, l'un des deux plus grands éditeurs de bande dessinée américains."
              font-family: 'Montserrat', Helvetica, Arial, sans-serif
              font-weight: 500
              top: 90%
              left: 100%
              width: 10vw
              font-size: 1vw 
              color: #000000
              background: #ffffff
              padding: 1vw
              border: 2px #000000 solid

    .dc__second
      display: none
      justify-content: center
      align-items: center
      width: 100vw
      height: 88vh
      background: #ffffff

      .dc__first--container
        width: 30%
        height: 100%
        background: url('~@/assets/images/marvel_1-bg.png') no-repeat

      .dc__second--container
        width: 70%
        height: 100%
        display: flex
        justify-content: center
        align-items: center
        flex-direction: column
        color: #000000

        .dc__title
          display: flex 
          flex-direction: row
          align-items: center
          padding-left: 20vw
          width: 100%

          .logo
            margin-right: 1vw

          h4
            font-size: 1.5vw
        
        .description
          padding: 1vw 10vw
          font-size: 1.3vw
          font-weight: bold

</style>