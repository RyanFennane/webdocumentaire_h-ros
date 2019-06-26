<template>
  <div class="selectheroes">
    <h1>Select Heroes</h1>
    <div class="select">
      <router-link to="/heroes/superman">Superman</router-link>
    </div>
  </div>
</template>

<script>

export default {
  name: 'selectheroes',
  components: {
  },
}

</script>

<style lang="sass">

  .selectheroes
    color: #ff6e6e

</style>