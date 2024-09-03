<template>
<div :style="{ height: clientHeight }" class="topDiv">
    <Row :gutter="20">
        <!-- 主体部分 -->
        <div class="body">
            <!--第二排内容 -->
            <div class="awayMenu">
                <!--左侧 -->
                <div class="awayLeft">
                    <span class="manage2">
                        前后端分离开发模版
                    </span>
                    <!--登入地址 -->
                    <div class="manage">登入地址：{{ location }}</div>
                </div>
                <!--时间，上下布局 -->
                <div class="bottom">
                    <!--年月日 -->
                    <span class="showtime">{{ showtime }}</span>
                    <!--时分 -->
                    <span class="showtime2">{{ showtime2 }}</span>
                </div>
            </div>
            <div id="containerHome"></div>
        </div>
    </Row>
</div>
</template>

<script>
import Cookies from "js-cookie";
import {
    DualAxes
} from '@antv/g2plot';
import {
    ipInfo,
    getMyDoorList6
} from "./api.js";
export default {
    name: "home",
    data() {
        return {
            name: "",
            showtime: "",
            showtime2: "",
            location: "",
            addMenuTempList: [],
            number1: 0,
            number2: 0,
            number3: 0,
            number1List: [],
            number2List: [],
            number3List: [],
            stackedColumnPlot: {},
            data1: [{
                    title: '2024-08',
                    value: 220,
                    type: '浏览人数'
                },
                {
                    title: '2024-09',
                    value: 300,
                    type: '浏览人数'
                },
                {
                    title: '2024-10',
                    value: 250,
                    type: '浏览人数'
                },
                {
                    title: '2024-11',
                    value: 220,
                    type: '浏览人数'
                },
                {
                    title: '2024-12',
                    value: 362,
                    type: '浏览人数'
                },
                {
                    title: '2024-08',
                    value: 350,
                    type: '浏览人数'
                },
                {
                    title: '2024-09',
                    value: 900,
                    type: '浏览人数'
                },
                {
                    title: '2024-10',
                    value: 300,
                    type: '浏览人数'
                },
                {
                    title: '2024-11',
                    value: 450,
                    type: '浏览人数'
                },
                {
                    title: '2024-12',
                    value: 470,
                    type: '浏览人数'
                },
                {
                    title: '2024-08',
                    value: 220,
                    type: '意向人数'
                },
                {
                    title: '2024-09',
                    value: 300,
                    type: '意向人数'
                },
                {
                    title: '2024-10',
                    value: 250,
                    type: '意向人数'
                },
                {
                    title: '2024-11',
                    value: 220,
                    type: '意向人数'
                },
                {
                    title: '2024-12',
                    value: 362,
                    type: '意向人数'
                }
            ],
            data2: [{
                    title: '2024-08',
                    value: 10,
                    type: '成交比例'
                },
                {
                    title: '2024-09',
                    value: 25,
                    type: '成交比例'
                },
                {
                    title: '2024-10',
                    value: 10,
                    type: '成交比例'
                },
                {
                    title: '2024-11',
                    value: 30,
                    type: '成交比例'
                },
                {
                    title: '2024-12',
                    value: 10,
                    type: '成交比例'
                },
                {
                    title: '2024-08',
                    value: 5,
                    type: '成交增长率'
                },
                {
                    title: '2024-09',
                    value: 18,
                    type: '成交增长率'
                },
                {
                    title: '2024-10',
                    value: 20,
                    type: '成交增长率'
                },
                {
                    title: '2024-11',
                    value: 15,
                    type: '成交增长率'
                },
                {
                    title: '2024-12',
                    value: 20,
                    type: '成交增长率'
                },
            ]
        };
    },

    methods: {
        init() {
            this.initAntvFx();
            let user = JSON.parse(Cookies.get("userInfo"));
            this.name = user.nickname;
            this.getNowTime();
            ipInfo().then((res) => {
                if (res.success) {
                    this.location = res.result;
                }
            });
            this.timer = setInterval(this.getNowTime, 1000);
        },
        getNowTime() {
            this.showtime = this.format(new Date(), "yyyy年MM月dd日");
            this.showtime2 = this.format(new Date(), "HH:mm:dd");
        },
        initAntvFx() {
            const uvBillData = this.data1;
            const transformData = this.data2;
            this.stackedColumnPlot = new DualAxes('containerHome', {
                data: [uvBillData, transformData],
                xField: 'title',
                yField: ['value', 'value'],
                geometryOptions: [{
                        geometry: 'column',
                        isStack: true,
                        seriesField: 'type',
                        columnWidthRatio: 0.4,
                        label: {},
                    },
                    {
                        geometry: 'line',
                        seriesField: 'type',
                        smooth: true,
                        connectNulls: false,
                        label: {},
                        point: {
                            color: "#F00"
                        },
                        lineStyle: ({
                            type
                        }) => {
                            if (type.indexOf("平均") > -1) {
                                return {
                                    lineDash: [10, 15],
                                    opacity: 1,
                                    cursor: "pointer"
                                };
                            }
                            return {
                                opacity: 0.5,
                            };
                        },
                    },
                ],
            });
            this.stackedColumnPlot.render();
            // this.stackedColumnPlot.update({ "theme": { "styleSheet": { "brandColor": "#FF6B3B", "paletteQualitative10": ["#61DDAA", "#5B8FF9", "#FF6B3B", "#9FB40F", "#76523B", "#DAD5B5", "#0E8E89", "#E19348", "#F383A2", "#247FEA"], "paletteQualitative20": ["#FF6B3B", "#626681", "#FFC100", "#9FB40F", "#76523B", "#DAD5B5", "#0E8E89", "#E19348", "#F383A2", "#247FEA", "#2BCB95", "#B1ABF4", "#1D42C2", "#1D9ED1", "#D64BC0", "#255634", "#8C8C47", "#8CDAE5", "#8E283B", "#791DC9"] } } });
        }
    },
    mounted() {
        this.init();
        this.clientHeight = `${document.documentElement.clientHeight}`;
        let that = this;
        window.onresize = function () {
            this.clientHeight = `${document.documentElement.clientHeight}`;
            if (that.$refs.page) {
                that.$refs.page.style.minHeight = clientHeight - 100 + "px";
            }
        };
    },
    watch: {
        clientHeight() {
            this.changeFixed(this.clientHeight);
        },
    },
};
</script>

<style lang="less" scoped>
@import "./home.less";

.ivu-tooltip {
    width: 100% !important;
}

.margin {
    margin-bottom: 20px;
}

.awayLeft {
    width: 60%;
    display: flex;
    align-items: center;
}

.bottom {
    width: 30%;
    margin-left: 10%;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
}

.title {
    width: 15%;
    margin: 5vh 0;
    max-height: 80px;
}

.awayMenu {
    width: 100%;
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.manage {
    width: 40%;
    height: 100%;
    font-family: Microsoft YaHei;
    font-size: 20px;
    display: flex;
    align-items: center;
    font-weight: 550;
    color: #4d33e2;
}

.manage2 {
    width: 60%;
    height: 100%;
    font-size: 28px;
    display: flex;
    align-items: center;
    font-weight: 550;
    color: #4d33e2;
}

.showtime {
    font-family: Microsoft YaHei;
    font-size: 22px;
    letter-spacing: 1px;
    font-weight: 550;
    color: #4d33e2;
    font-weight: 100;
    text-align: center;
}

.showtime2 {
    font-family: Microsoft YaHei;
    font-size: 26px;
    font-weight: 500;
    letter-spacing: 1px;
    font-weight: 550;
    color: #4d33e2;
    text-align: center;
}

#containerHome {
    width: 100%;
    height: 700px;
    margin-top: 20px;
}

.antvTitle {
    font-size: 26px;
    text-align: center;
    justify-content: center;
    display: flex;
}
</style>
