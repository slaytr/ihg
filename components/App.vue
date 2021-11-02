<!-- Please remove this file from your project -->
<template>
    <div class="mt-8 bg-white overflow-hidden shadow sm:rounded-lg p-6 max-w-md min-w-sm">
      <h2 class="text-2xl leading-7 font-semibold">
        Idle Hotelier
      </h2>
      <p class="mt-3 text-gray-600">
        This is a chill idle game about running a hotel
      </p>
      <div class="mt-4 pt-4 border-t border-dashed">
        <div class="increment-item-row grid grid-cols-12">
          <div class="col-span-2 flex justify-start items-center">
            <div class="fas fa-money-bill-alt"></div>
          </div>
          <div class="col-span-4 grid grid-cols-4 flex justify-start items-center">
            <div class="col-span-2 text-left">1000</div>
            <div class="col-span-2 text-center"></div>
          </div>
        </div>
      </div>
      <div class="mt-4 pt-4 border-t border-dashed">
        <div class="increment-item-row grid grid-cols-12">
          <div class="col-span-2 grid grid-cols-2 flex justify-start items-center">
            <div class="col-span-1 fas fa-bed"/>
          </div>
          <div class="col-span-4 grid grid-cols-4 flex justify-start items-center">
            <div class="col-span-2 text-left">{{counter}}</div>
            <div class="col-span-2 text-center"></div>
          </div>
          <b-button-group class="increment-button-group col-span-6 grid grid-cols-6">
            <b-button class="col-span-2" variant="outline-secondary">1</b-button>
            <b-button class="col-span-2" variant="outline-secondary">10</b-button>
            <b-button class="col-span-2" variant="outline-secondary">MAX</b-button>
          </b-button-group>
        </div>
      </div>
      <p class="mt-4 pt-4 text-gray-800 border-t border-dashed">
        To get started, remove <code class="bg-gray-100 text-sm p-1 rounded border">components/Tutorial.vue</code> and
        start coding in <code class="bg-gray-100 text-sm p-1 rounded border">pages/index.vue</code>. Have fun!
      </p>
    </div>
</template>

<script>
export default {
  computed: {
    counter () {
      return this.$store.state.counter
    }
  }
}
</script>

<style>
  .increment-button-group {
    min-width: 50%;
  }
</style>
