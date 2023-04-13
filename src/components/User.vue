<template>
    <div class="users">
        <h1>User component</h1>


        <ul>
            <li v-for="user in users">
                {{ user.name }} ({{ user.email }}) <button v-on:click="deleteUser(user)">X</button>
            </li>
        </ul>

        <form v-on:submit.prevent="addUser">    
            <input type="text" v-model="newUser.name" placeholder="Nombre">
            <input type="email" v-model="newUser.email" placeholder="Email">
            <button type="submit">Add</button>
        </form>

    </div>
</template>


<script>
import axios from 'axios'

export default {
    data() {
        return {
            users: [
                // { name: 'Joe', email: 'joe@hh.com', contacted: false },
                // { name: 'Natt', email: 'natt@hh.com', contacted: true },
                // { name: 'Hitt', email: 'hitt@hh.com', contacted: false },
            ],

            newUser: []
        }
    },

    methods: {
        addUser(e) {
            // e.preventDefault()
            this.users.push(this.newUser)
            console.log(this.users);
            this.newUser = []
        },

        deleteUser(user) {
            this.users.splice(this.users.indexOf(user), 1)
        }
    },

    created(){
        
        axios.get('https://jsonplaceholder.typicode.com/users')
            .then( res => this.users = res.data)
    }
}
</script>
<style>
.users {
    background: #333;
    color: white;
}
</style>