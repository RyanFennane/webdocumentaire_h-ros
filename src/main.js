import Vue from 'vue'
import router from './router'

Vue.config.devtools = true
Vue.config.productionTip = false

new Vue({
  router,
  render: h => h(require('./App.vue').default)
}).$mount('#app')
