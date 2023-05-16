package cn.zwz.basics.log;

import io.swagger.annotations.ApiOperation;

/**
 * @author 郑为中
 * CSDN: Designer 小郑
 */
@ApiOperation(value = "日志枚举类")
public enum LogType {

    /**
     * 1 默认
     */
    DEFAULT_OPERATION,

    /**
     * 2  登录
     */
    LOGIN,

    /**
     * 3  系统基础模块
     */
    DATA_CENTER,

    /**
     * 4  更多开发模块
     */
    MORE_MOUDLE,

    /**
     * 5  图表
     */
    CHART
}
