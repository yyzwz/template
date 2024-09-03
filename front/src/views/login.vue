<template>
<div class="loginParentDiv">
    <loginPage1 v-if="loginPageType == 1"></loginPage1>
    <loginPage2 v-if="loginPageType == 2"></loginPage2>
    <loginPage3 v-if="loginPageType == 3"></loginPage3>
</div>
</template>

<script>
import loginPage1 from './loginPage/loginPage1.vue';
import loginPage2 from './loginPage/loginPage2.vue';
import loginPage3 from './loginPage/loginPage3.vue';
export default {
    components: {
        loginPage1,
        loginPage2,
        loginPage3
    },
    data() {
        return {
            loginPageType: 1
        };
    },
    methods: {
        init() {}
    },
    mounted() {
        this.init();
    }
};
</script>

<style lang="less" scoped>
.loginParentDiv {
    height: 100%;
    width: 100%;
}
</style>
