<template>
  <div class="home">
    <div class="home__welcome" v-if="!intro">
      <h1>SUPERHEROS</h1>
      <button class="home__welcome--validate" v-on:click="intro = true">Allons-y</button>
    </div>
    <div class="home__videos" v-else>
      <div class="home__videos--video video1" v-if="video1">
        <video autoplay preload buffered>
          <source src="@/assets/videos/intro.mp4" type="video/mp4">
          <p>Votre navigateur ne prend pas en charge les vidéos HTML5.</p>
        </video>
        <div class="video__pass">
          <span>Passer l'intro</span>
        </div>
      </div>
      <div class="home__videos--video video2" v-else>
        <video autoplay preload buffered>
          <source src="@/assets/videos/intro2.mp4" type="video/mp4">
          <p>Votre navigateur ne prend pas en charge les vidéos HTML5.</p>
        </video>
        <router-link to="dc">
          <div class="video__pass">
            <span>Passer l'intro</span>
          </div>
        </router-link>
      </div>
    </div>
  </div>
</template>

<script>

export default {
  name: 'intro',
  data () {
    return {
      intro: false,
      video1: true
    }
  },
  updated () {
    if(this.intro && this.video1){
      document.querySelector('.video1 video').volume = 0.2
      setTimeout(() => {
        document.querySelector('.video1 .video__pass').style.visibility = 'visible'
      }, 1500);
      document.querySelector('.video1 .video__pass').addEventListener('click', () =>{
        this.video1 = false
        setTimeout(() => {
          document.querySelector('.video2 .video__pass').style.visibility = 'visible'
        }, 2000);
      })
      this.switchVideos()
      document.querySelector('.home').style.background = '#000000'
    } else {
      document.querySelector('.bottombar').style.display = 'flex'
    }
  },
  methods: {
    switchVideos () {
      document.querySelector('.video1 video').addEventListener('ended', ()=>{
        this.video1 = false
        setTimeout(() => {
          document.querySelector('.video2 .video__pass').style.visibility = 'visible'
        }, 2500);
      })
    }
  }
}

</script>

<style lang="sass">

  .home
    width: 100vw
    height: 100vh
    display: flex
    justify-content: center
    align-items: center
    background: url('~@/assets/images/intro-bg.jpg')
    background-size: cover

    >h1
      color: #ff6e6e

    .home__welcome
      display: flex
      justify-content: center
      align-items: center
      flex-direction: column
      width: 40vw
      height: 40vh
      background: #00000073

      h1
        font-size: 4vw
        color: #ffffff

      .home__welcome--validate
        background: #CF3030
        border: 0
        color: #ffffff
        font-family: 'Montserrat', Helvetica, Arial, sans-serif
        font-size: 1.4vw
        font-weight: bold
        width: 12vw
        height: 3vw
        cursor: pointer

    .video__pass
      position: absolute
      right: 5%
      bottom: 15%
      width: 10vw
      height: 3vw
      background: #CF3030
      display: flex
      align-items: center
      justify-content: center
      font-weight: bold
      color: #ffffff
      cursor: pointer
      visibility: hidden

</style>

