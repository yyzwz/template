package cn.zwz.basics.code;

import cn.zwz.basics.code.vue.MyBatisPlusUtils;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;

/**
 * @author 郑为中
 * CSDN: Designer 小郑
 */
@Slf4j
@ApiOperation(value = "后端代码生成器执行类")
public class MyBatisPlusCodeUtils {

    @ApiOperation(value = "一键产生增删改查代码")
    public static void main(String[] args) throws Exception {
        new MyBatisPlusUtils(CLASS_NAME,DESCRIPTION,CLASS_PATH,REMOVE_FLAG).work();
    }

    @ApiModelProperty(value = "类名")
    private static final String CLASS_NAME = "DynamicTableData";

    @ApiModelProperty(value = "类备注")
    private static final String DESCRIPTION = "动态表格值";

    @ApiModelProperty(value = "生成路径")
    private static final String CLASS_PATH = "cn.zwz.test";

    @ApiModelProperty(value = "是否删除代码")
    private static final Boolean REMOVE_FLAG = false;
}
