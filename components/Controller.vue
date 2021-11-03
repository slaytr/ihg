<template>
  <div>
    <div class="dev-header">
      <b-button class="dev-header--button" variant="outline-primary">
        Home
      </b-button>
      <b-button class="dev-header--button" variant="outline-success">
        Development
      </b-button>
    </div>
    <div class="app">
      <div class="relative flex items-top justify-center min-h-screen bg-gray-100 sm:items-center sm:pt-0">
        <App />
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'Controller',
  head () {
    return {
      meta: [
        {
          hid: 'someid',
          name: 'somename',
          content: 'somecontent'
        }
      ],
      link: [
        {
          // Font Awesome 5.15.4
          rel: 'stylesheet',
          href: 'https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css',
          integrity: 'sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ==',
          crossorigin: 'anonymous',
          referrerpolicy: 'no-referrer'
        }
      ]
    }
  }
}
</script>

<style scoped>
  .dev-header {
    display: flex;
    justify-content: center;
    height: 60px;
    width: 100vw;
    position: fixed;
    z-index: 10;
  }

  .dev-header--button {
    padding: 10px;
    margin: 6px;
  }
</style>
