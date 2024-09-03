<template>
<div class="loginPage2">
    <div class="logo"></div>
    <div class="form">
        <div class="logo-box">
            <img src="https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png" alt="">
            <div class="title">
                <p style="color: #fff;">前后端分离开发模版</p>
                <p class="title-num">ZWZ</p>
            </div>
        </div>
        <Form @keydown.enter.native="submitLogin">
            <FormItem>
                <Input prefix="ios-contact" v-model="form.username" placeholder="请输入账号" />
            </FormItem>
            <FormItem>
                <Input prefix="md-unlock" type="password" v-model="form.password" placeholder="请输入密码" />
            </FormItem>
            <FormItem class="verification-code">
                <Input v-model="form.imgCode" placeholder="请输入验证码" />
                <img :src="captchaImg" @click="getCaptchaImg" alt="验证码加载失败" class="verification-code-text" />
            </FormItem>
        </Form>
        <div class="btn">
            <Button size="large" type="warning" @click="submitLogin" style="width: 70%;">登录</Button>
            <router-link to="/regist">
                <a>没有账号？点我注册</a>
            </router-link>
        </div>
        <div class="loginDown">
            <p>
                <span>Copyright © 2020 - 至今 XXX 版权所有</span>
                <span style="display:inline-block; width:4px;height:6px"></span>
                <a target="_blank" href="https://beian.miit.gov.cn">ICP备案 浙ICP备XXXXXXXX号</a>
                <a target="_blank" href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=XXXXXXXXXXXXXX号">
                    <img src="../../assets/login/gonganlogo.png" style="margin-left:6px" />
                    <span>浙公网安备 XXXXXXXXXXXXXX号</span>
                </a>
            </p>
        </div>
    </div>
</div>
</template>

<script>
import {
    login,
    userInfo,
    initCaptcha,
    drawCodeImage
} from "@/api/index";
import Cookies from "js-cookie";
import util from "@/libs/util.js";
export default {
    components: {},
    data() {
        return {
            saoMaFx: false,
            captchaId: "",
            captchaImg: "",
            loadingCaptcha: false,
            error: false,
            tabName: "userAndPassword",
            saveLogin: true,
            loading: false,
            form: {
                username: "admin",
                password: "123456",
                mobile: "",
                code: ""
            },
            usernameLoginFormRules: {
                username: [{
                    required: true,
                    message: "账号不能为空",
                    trigger: "blur"
                }],
                password: [{
                    required: true,
                    message: "密码不能为空",
                    trigger: "blur"
                }],
                imgCode: [{
                    required: true,
                    message: "验证码不能为空",
                    trigger: "blur"
                }]
            }
        };
    },
    methods: {
        getCaptchaImg() {
            this.loadingCaptcha = true;
            initCaptcha().then(res => {
                this.loadingCaptcha = false;
                if (res.success) {
                    this.captchaId = res.result;
                    this.captchaImg = drawCodeImage + this.captchaId;
                }
            });
        },
        changeTabName(e) {
            if (e != "userAndPassword") {
                window.WwLogin({
                    "id": "qywxsmqywxsm",
                    "appid": "wwf94bb44e76e308f8",
                    "agentid": "1000002",
                    "redirect_uri": "https://artskyhome.com:8080/%23/login",
                    "state": "ZWZ1314520",
                    "href": "",
                });
            }
        },
        afterLogin(res) {
            let accessToken = res.result;
            this.setStore("accessToken", accessToken);
            userInfo().then((res) => {
                if (res.success) {
                    delete res.result.permissions;
                    let roles = [];
                    res.result.roles.forEach((e) => {
                        roles.push(e.name);
                    });
                    delete res.result.roles;
                    this.setStore("roles", roles);
                    this.setStore("saveLogin", this.saveLogin);
                    if (this.saveLogin) {
                        Cookies.set("userInfo", JSON.stringify(res.result), {
                            expires: 7,
                        });
                    } else {
                        Cookies.set("userInfo", JSON.stringify(res.result));
                    }
                    this.setStore("userInfo", res.result);
                    this.$store.commit("setAvatarPath", res.result.avatar);
                    util.initRouter(this);
                    this.$router.push({
                        name: "home_index",
                    });
                } else {
                    this.loading = false;
                }
            });
        },
        submitLogin() {
            this.loading = true;
            login({
                username: this.form.username,
                password: this.form.password,
                code: this.form.imgCode,
                captchaId: this.captchaId,
                saveLogin: this.saveLogin
            }).then(res => {
                if (res.success) {
                    this.afterLogin(res);
                } else {
                    this.loading = false;
                    this.getCaptchaImg();
                }
            });
        }
    },
    mounted() {
        this.getCaptchaImg();
    }
};
</script>

<style lang="less" scoped>
.loginPage2 {
    height: 100%;
    display: flex;
    justify-content: space-evenly;
    align-items: center;
    background: rgb(76, 170, 232);

    .logo {
        width: 40%;
        height: 700px;
        background: url(../../assets/login/star.png ) no-repeat;
        background-size: contain;
        background-position: 50%;
    }

    .form {
        width: 40%;
        height: 450px;
        max-width: 600px;

        .logo-box {
            height: 80px;
            color: white;
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;

            img {
                width: 110px;
                height: 100%;
            }

            .title {
                font-size: 28px;
                width: 100%;
                margin-left: 10px;

                .title-num {
                    color: rgba(255, 255, 255, 0.7);
                    font-size: 20px;
                    line-height: 30px;
                }
            }
        }

        .ivu-form {
            width: 100%;

            :deep(.ivu-input) {
                height: 44px;
                font-size: 20px;
                padding-left: 35px;
            }

            :deep(.ivu-input-prefix i) {
                font-size: 30px;
                line-height: 44px;
                margin-left: 5px;

            }

            :deep(.ivu-input-suffix i) {
                line-height: 44px;
            }

            .verification-code {
                :deep(.ivu-form-item-content) {
                    display: flex;
                    color: white;
                    justify-content: space-between;

                }

                :deep(.ivu-input-wrapper) {
                    width: 70%;
                }

                .verification-code-text {
                    width: 9rem;
                    background: white;
                    border-radius: 4px;
                    margin-left: 2rem;

                }
            }
        }

        .btn {
            display: flex;
            justify-content: space-between;
            align-items: center;

            a {
                color: white;
                font-size: 16px;

            }
        }

        .loginDown {
            width: 800px;
            position: fixed;
            left: 0;
            right: 0;
            bottom: 0;
            margin: auto;
            color: white;

            a {
                color: white;

            }
        }
    }

}
</style>
