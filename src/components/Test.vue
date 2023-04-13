<template>
    <!-- <h1>{{ title }}</h1> -->
    <!-- <h1>{{ user.firstName }}</h1> -->
    <!-- <div v-html="miHtml"></div>
    <div v-text="title"></div>

    <div v-if="showName">
        <h1>{{ user.firstName }} {{ user.lastName }}</h1>
    </div>
    <div v-else>
        No puedo mostrar nombre...
    </div>

    <hr> -->

    <!-- <ul>
        <li v-for="task in tasks">
            {{ task.title }}
        </li>
    </ul>

    <hr>

    <input type="text" v-model="user.firstName">

    <button v-on:click="saludar(user.firstName)">
        CLICK
    </button> -->
    
    <!-- <input type="text" v-on:keyup.enter="typing">

    {{ fullName }} -->

    <span>Hola {{ greetingMessage }}</span>
    
    
</template>

<script>
    export default {
        data() {
            return {
                title: 'Hola Vue.js',
                user: {
                    firstName: 'Rodri',
                    lastName: 'Casas'
                },

                miHtml: '<h1>Hola vue!</h1>',
                showName: false,
                tasks: [
                    {title: 'Comer'},
                    {title: 'Cenar'},
                ]
            }
        },

        methods: {
            saludar(name) {
                alert('Hola ' + name)
            },

            typing(e) {
                console.log(e.target.value)
            },
        },

        computed: {
            fullName() {
                return this.user.firstName + ' ' + this.user.lastName;
            }
        },

        props: {
            greetingMessage: String
        }
    }
</script>

<style>
</style>