<template>
  <div class="marvel">
    <h1>Marvel</h1>
    <bottombar></bottombar>
  </div>
</template>

<script>

import bottombar from '@/components/Bottombar.vue'

export default {
  name: 'marvel',
  components: {
    bottombar
  },
}

</script>

<style lang="sass">

  .marvel
    color: #ff6e6e

    >h1
      color: #ff6e6e

</style>
