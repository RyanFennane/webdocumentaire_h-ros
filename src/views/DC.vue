<template>
  <div class="dc">
    <div class="dc__intro cake">
      <div class="background">
        <img class="background__img" src="../assets/Image fond Comics.png">
        <svg class="background__filter" width="100vw" height="93vh" viewBox="0 0 100vw 93vh" fill="none" xmlns="http://www.w3.org/2000/svg">
        <rect width="100vw" height="93vh" fill="black" fill-opacity="0.55"/>
        </svg>
      </div>
      <div class="rectangle">    
        <h1 class="title">Maisons d'éditions<br>Marvel et DC comics</h1>
      </div>
    </div>
      <div class="dc__firstp cake">
        <div class="background">
          <img class="background__img" src="../assets/Image fond bro.png">
          <svg class="background__filter" width="100vw" height="93vh" viewBox="0 0 100vw 93vh" fill="none" xmlns="http://www.w3.org/2000/svg">
          <rect width="100vw" height="93vh" fill="black" fill-opacity="0.55"/>
          </svg>
        </div>
        <img class="logo" src="../assets/DC logo.png">
        <h1 class="firstp__title">DC COMICS</h1>
        <p class="description">En 1934,durant la Grande Dépression, Malcolm Wheeler-Nicholson ancien Major de l’armée américaine créa une entreprise de comic-book qui sera l'origine de DC Comics.</p>
        <img class="major" src="../assets/Major.png">
        <p id="desc" class="cake major__description">Le major Malcolm Wheeler-Nicholson, est un militaire, entrepreneur, écrivain et éditeur américain.
           Sa maison d'édition National Allied Publications, créée en 1934, est à l'origine directe de DC Comics,
           l'un des deux plus grands éditeurs de bande dessinée américains.</p>
        <img class="button" id="button" src="../assets/button.png">
      </div>
      <div class="dc__secondp">
        <div class="batmanbox">
          <img class="batman" src="../assets/batman.png">
        </div>
        <div class="rightscreen">

        </div>
      </div>
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
    let button = document.getElementById('button')
    let desc = document.getElementById('desc')
    button.addEventListener('click', function() {
      desc.classList.toggle('cake');
    });

  },
  beforeDestroy () {
    document.querySelector('h1').style.color = '#000000'
  }
}

</script>

<style lang="sass">

  .dc
    color: #ff6e6e

    .cake
      display: none

    .rectangle
      position: absolute
      left: 35vw
      top: 35vh
      width: 546px
      height: 134px
      border: 12px solid #CF3030
      box-sizing: border-box

      .title
        font-family: Montserrat
        font-style: italic
        padding-top: 3px
        width: 480px
        height: 98px
        margin:0 auto
        font-weight: 900
        font-size: 40px
        line-height: 49px
        text-align: center
        color: #FFFFFF
        z-index: 1

    .background
      position: absolute
      top:0px
      left:0px
      width:100%
      height:88vh
      z-index: -5

      .background__img
        position: absolute
        width: inherit
        height: inherit
        z-index: -4

      .background__filter
        position: absolute
        width: inherit
        height: inherit
        z-index: -2

    .firstp__title
      position: absolute
      left: 22vw
      top: 19.5vh
      font-family: Montserrat
      font-style: italic
      font-weight: 900
      font-size: 1.7vw
      line-height: 32px
      color: #FFFFFF

    .logo
      position: absolute
      width: 4vw
      height: 7vh
      left: 15vw
      top: 19vh

    .major
      position: absolute
      width: 42vw
      height: 60vh
      left: 53vw
      top: 12vh

    .description
      position: absolute
      width: 33vw
      height: 18vh
      left: 10vw
      top: 40vh
      font-family: Montserrat
      font-style: normal
      font-weight: bold
      font-size: 1.4vw
      line-height: 4vh
      color: #FFFFFF

    .button
      position: absolute
      left: 75vw
      top: 27vh

    .major__description
      position: absolute
      width: 17vw
      height: 48vh
      left: 77vw
      top: 30vh
      background: #FFFFFF
      border: 8px solid #000000
      padding: 1.1vw
      box-sizing: border-box
      font-family: Montserrat
      font-style: normal
      font-weight: bold
      font-size: 1.6rem
      line-height: 2.4vh
      color: #000000

    .cake
      opacity: 0

    .batman
      left: 0px
      top: 0px



</style>