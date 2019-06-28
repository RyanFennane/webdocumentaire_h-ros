<template>
  <div class="superman">
    <div class="button">
      <img class="button__logo" src="~@/assets/images/logo_superman.png">
      <div class="button__contentje">
        <img class="button__contentje__jerry" src="~@/assets/images/button.png">
      </div>
      <div class="button__contentjo">
        <img class="button__contentjo__joe" src="~@/assets/images/button.png">
        <div class="button__contentjo__describe">
          <p class="button__contentjo__describe--text">Joseph (Joe) Shuster était un dessinateur de comics d'origine canadienne.
Il est essentiellement connu pour avoir été avec Jerry Siegel le cocréateur du personnage de Superman.</p>
        </div>
      </div>
      <div class="button__contents">
        <img class="button__contents__superman" src="~@/assets/images/button.png">
        <div class="button__contents__superman__describe">
          <figure class="button__contents__superman__describe__figure">
            <img class="button__contents__superman__describe__figure--img" src="~@/assets/images/superman_avatar.png">
            <figcaption class="button__contents__superman__describe__figure--figcaption">Premier dessin de Superman</figcaption>
          </figure>
          <p class="button__contents__superman__describe--text">La biographie de Superman se confond avec celle de ses deux créateurs, fils d'immigrés d'Europe centrale. Comme eux, Superman est 
            un rescapé. Originaire de la planète Krypton, dont la population, composée de brillants scientifiques, s'apprête à être décimée, 
            il répond au nom de Kal-El</p>
        </div>
      </div>
    </div>
    <div class="origin">
      <h1 class="origin_title">Les origines de superman</h1>
      <div class="main">
        <p class="main__describe"><span class="main__date">1930</span> Des revues satiriques émergent un renouveau de 
        la bande dessinée qui permet en 1930, à Joe Shuster et Jerry Siegel, deux jeunes juifs de créer Superman. La seconde guerre 
        mondiale contribuera grandement à la popularité de ce personnage, qui combat les ennemis des Etats-Unis.
Superman porte en lui un emblème politique: celui du peuple juif opprimé qui voit le nazisme submerger l’Europe.</p>
      </div>
    </div>
  </div>
</template>

<script>

export default {
  name: 'superman',
  components: {
  },
}

</script>

<style lang="sass">

  .superman
    height: 100vh
    width: 100vw
    display: flex
    margin: 0

    .button
      width: 70%
      background-repeat: no-repeat
      background-image: url(~@/assets/images/joe_jerry.png)
      background-size: cover

      .button__contentje
        position: absolute
        width: 33px
        height: 33px
        left: 470px
        top: 150px
      
      .button__contentjo
        position: absolute
        width: 33px
        height: 33px
        left: 540px
        top: 400px

        .button__contentjo__describe
          width: 256px
          height: 269px
          background-color: #ffffff
          
          .button__contentjo__describe--text
            width: 90%
            padding-top: 35px
            margin: 0 auto
            font-weight: 500
            font-size: 18px
            line-height: 22px

      .button__contents
        position: absolute
        width: 33px
        height: 33px
        left: 185px
        top: 460px

        .button__contents__superman__describe
          display: flex
          width: 546px
          height: 294px
          background-color: #ffffff

          .button__contents__superman__describe__figure
            padding-top: 20px

            .button__contents__superman__describe__figure--figcaption
              text-align: center
              font-size: 14px
              font-weight: bold

        .button__contents__superman__describe--text
          padding-top: 20px
          font-weight: 500
          font-size: 18px
          line-height: 22px

      .button__logo
        position: absolute
        width: 144px
        height: 112px
        left: 38.6%
        top: 20px


    .origin
      width: 90%
      background-repeat: no-repeat
      background-image: url(~@/assets/images/jerry_house.png)
      background-size: cover
      color: #ffffff
      
      .origin_title
        text-align: center
        margin-top: 85px
        font-weight: 900
        font-size: 40px
        line-height: 49px

      .main
        margin-top: 427px

        .main__describe
          font-weight: bold
          margin: 0 auto
          width: 90%
          font-size: 20px

        .main__date
          font-size: 100px
</style>