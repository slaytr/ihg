<!-- Please remove this file from your project -->
<template>
  <div class="mt-8 bg-white overflow-hidden shadow sm:rounded-lg p-6 max-w-md min-w-sm">
    <h2 class="text-2xl leading-7 font-semibold">
      Idle Hotelier
    </h2>
    <p class="mt-3 text-gray-600">
      This is a chill idle game about running a hotel
    </p>
    <div id="row" class="mt-4 pt-4 border-t border-dashed">
      <div class="increment-item-row grid grid-cols-12">
        <div class="col-span-2 flex justify-start items-center">
          <div id="money" class="fas fa-money-bill-alt"></div>
        </div>
        <div class="col-span-4 grid grid-cols-4 flex justify-start items-center">
          <div class="col-span-2 text-left">
            {{ money }}
          </div>
          <div class="col-span-2 text-center"></div>
        </div>
      </div>
    </div>
    <div class="mt-4 pt-4 border-t border-dashed">
      <div class="increment-item-row grid grid-cols-12">
        <div class="col-span-2 grid grid-cols-2 flex justify-start items-center">
          <div class="col-span-1 fas fa-bed"></div>
        </div>
        <div class="col-span-4 grid grid-cols-4 flex justify-start items-center">
          <div class="col-span-2 text-left">
            {{ counter }}
          </div>
          <div class="col-span-2 text-center"></div>
        </div>
        <b-button-group class="increment-button-group col-span-6 grid grid-cols-6">
          <b-button class="col-span-2" variant="outline-secondary" @click="increment">
            1
          </b-button>
          <b-button class="col-span-2" variant="outline-secondary">
            10
          </b-button>
          <b-button class="col-span-2" variant="outline-secondary">
            MAX
          </b-button>
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
import { mapMutations } from 'vuex'

export default {
  data () {
    return {
      makeCash: {
        interval: null
      },
      money: 0
    }
  },
  computed: {
    counter () {
      return this.$store.state.counter
    }
  },
  mounted () {
    this.makeCashInterval()
  },
  methods: {
    makeCashInterval () {
      // console.log(this.data)
      // console.log(this.state)
      this.makeCash.interval = setInterval(() => {
        this.money += 100 * this.counter
      }, 3000)
      // this.data.makeCash.interval = cashInterval;
    },
    ...mapMutations({
      increment: 'increment'
    })
  }
}
</script>

<style>
  .increment-button-group {
    min-width: 50%;
  }
  #row {
    perspective: 3000px;
  }
  @keyframes changewidth {
    from {
      transform: rotateY(0deg);
    }

    to {
      transform: rotateY(360deg);
    }
  }
  #money {
    animation-duration: 1s;
    animation-name: changewidth;
    animation-iteration-count: infinite;
    animation-direction: alternate;
  }
</style>
