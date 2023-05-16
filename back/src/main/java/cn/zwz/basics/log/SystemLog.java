package cn.zwz.basics.log;

import io.swagger.annotations.ApiModelProperty;
import io.swagger.annotations.ApiOperation;

import java.lang.annotation.*;

/**
 * @author 郑为中
 * CSDN: Designer 小郑
 */
@ApiOperation(value = "日志实体类")
@Target({ElementType.PARAMETER, ElementType.METHOD})
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface SystemLog {

        @ApiModelProperty(value = "日志名称")
        public String about() default "系统日志";

        @ApiModelProperty(value = "日志类型")
        public LogType type() default LogType.DEFAULT_OPERATION;

        @ApiModelProperty(value = "操作代码")
        String doType() default "";
}
