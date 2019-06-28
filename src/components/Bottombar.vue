<template>
  <div class="bottombar">
    <div class="nav__section">
      <router-link to="home"><i class="fas fa-circle"></i></router-link>
      <router-link to="dc"><i class="fas fa-circle"></i></router-link>
      <router-link to="marvel"><i class="fas fa-circle"></i></router-link>
      <router-link to="stanlee"><i class="fas fa-circle"></i></router-link>
      <router-link to="heroes"><i class="fas fa-circle"></i></router-link>
      <div class="nav__section--current"></div>
    </div>
    <div class="nav__heroe">
      <router-link to="/heroes/superman"><img src="@/assets/images/superman-logo.png" alt=""></router-link>
    </div>
    <div class="nav__title">
      <div class="number">1</div>
      <h4>Origines</h4>
    </div>
  </div>
</template>

<script>

export default {
  name: 'bottombar',
  components: {
  },
  mounted () {
    this.bottomBarTransition()
  },
  watch: {
    '$route' (to, from) { //eslint-disable-line
      this.bottomBarTransition()
    }
  },
  methods: {
    bottomBarTransition () {
      let bottombar = document.querySelector('.bottombar')
      let redBar = document.querySelector('.nav__section--current')
      let heroesLogo = document.querySelector('.nav__heroe a')
      let navTitle = document.querySelector('.nav__title h4')
      let navNumber = document.querySelector('.nav__title .number')

      switch (this.$route.name) {
          case 'home':
              bottombar.style.display = 'none'
              redBar.style.width = '1%'
              heroesLogo.querySelector('img').style.filter = 'grayscale(100%)'  
              break;
          case 'dc':
              setTimeout(() => {
                bottombar.style.display = 'flex'
              }, 1000);
              redBar.style.width = '25%'
              heroesLogo.querySelector('img').style.filter = 'grayscale(100%)'
              navTitle.innerHTML = 'DC Comics'
              navNumber.innerHTML = '2'
              break;
          case 'marvel':
              redBar.style.width = '50%'
              heroesLogo.querySelector('img').style.filter = 'grayscale(100%)'
              navTitle.innerHTML = 'Marvel'
              navNumber.innerHTML = '3'
              break;
          case 'stanlee':
              redBar.style.width = '75%'
              heroesLogo.querySelector('img').style.filter = 'grayscale(100%)'
              navTitle.innerHTML = 'Stan Lee'
              navNumber.innerHTML = '4'
              break;
          case 'heroes':
              redBar.style.width = '100%'
              heroesLogo.querySelector('img').style.filter = 'grayscale(100%)'
              navTitle.innerHTML = 'Héros'
              navNumber.innerHTML = '5'
              break;  
          case 'superman':
              heroesLogo.querySelector('img').style.filter = 'grayscale(0%)'
              navTitle.innerHTML = 'Superman'
              navNumber.innerHTML = '5'
              break;    
          default:
      }
    }
  }
}

</script>

<style lang="sass">
  
  .bottombar
    display: flex
    align-items: center
    justify-content: flex-start
    flex-direction: column
    width: 100vw
    height: 12vh
    background-color: #2C2929
    margin: 0
    position: absolute
    bottom: 0
    left: 0

    .nav__section
      display: flex
      justify-content: space-between
      position: relative
      width: 80%
      height: 1vw
      margin-top: 0.25vw
      padding-bottom: 0.25vw
      border-bottom: 2px #ffffff solid
      z-index: 2

      .nav__section--current
        position: absolute
        width: 0%
        height: 50%
        bottom: -15%
        left: 0
        border-bottom: 3px #FF1C00 solid
        transition: width 0.5s ease

      &:before
        content: ''
        position: absolute
        height: 100%
        top: 0
        left: -15%
        width: 15%
        border-bottom: 2px #ffffff solid
        z-index: 2
      
      &:after
        content: ''
        position: absolute
        height: 100%
        top: 0
        right: -15%
        width: 15%
        border-bottom: 2px #ffffff solid

      a
        color: #ffffff
        text-decoration: none
        font-size: 0.7vw
    
    .nav__heroe
      margin-top: 1vw
      img
        filter: grayscale(100%)
        transition: filter 0.5 ease
    
    .nav__title
      position: absolute
      top: 0
      left: 5%
      display: flex
      flex-direction: row
      align-items: center
      height: 100%
      margin-top: 0.5vw

      .number
        width: 2vw
        height: 2vw
        border: 2px solid #ffffff
        border-radius: 50%
        color: #ffffff
        display: flex
        justify-content: center
        align-items: center
        font-size: 1.3vw

      h4
        margin: 0 0 0 0.5vw
        color: #ffffff

</style>
