import Vue from 'vue'
import Router from 'vue-router'
import Home from './views/Home.vue'

Vue.use(Router)

export default new Router({
  mode: 'history',
  base: process.env.BASE_URL,
  routes: [
    {
      path: '/',
      name: 'home',
      component: Home,
      meta: { title: 'Superheroes'}
    },
    {
      path: '/marvel',
      name: 'marvel',
      component: () => import('./views/Marvel.vue'),
      meta: { title: 'Superheroes | Marvel'}
    },
    {
      path: '/dc',
      name: 'dc',
      component: () => import('./views/DC.vue'),
      meta: { title: 'Superheroes | DC Comics'}
    },
    {
      path: '/stanlee',
      name: 'stanlee',
      component: () => import('./views/Stanlee.vue'),
      meta: { title: 'Superheroes | Stan Lee'}
    },
    {
      path: '/heroes',
      name: 'heroes',
      component: () => import('./views/Selectheroes.vue'),
      meta: { title: 'Superheroes | Select your heroe'}
    },
    {
      path: '/heroes/superman',
      name: 'superman',
      component: () => import('./views/superheroes/Superman.vue'),
      meta: { title: 'Superheroes | Superman'}
    },
    {
      path: '/admin',
      name: 'admin',
      component: () => import('./views/Admin.vue'),
      meta: { title: 'Superheroes | Admin'}
    },
    {
      path: '*',
      redirect: '/',
      meta: { title: 'Superheroes' }
    }
  ]
})
