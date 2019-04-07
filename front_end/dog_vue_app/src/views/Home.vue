<template>
  <div class="home">
    <h1>{{ message }}</h1>
    <div v-for="dog in dogs">
      <p>Name: {{ dog.name }}</p>
      
      <p>Breed: {{ dog.breed }}</p>
      <p>Size: {{ dog.size }}</p>
      <hr>
    </div>
  </div>
</template>

<style>
</style>

<script>
import axios from "axios";

export default {
  data: function() {
    return {
      message: "Welcome to Vue.js!",
      dogs: []
    };
  },
  created: function() {
    axios.get("/api/dogs").then(response => {
      this.dogs = response.data;
    })
  },
  methods: {}
};
</script>