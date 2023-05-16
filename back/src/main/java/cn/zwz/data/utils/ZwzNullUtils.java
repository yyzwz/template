package cn.zwz.data.utils;

import io.swagger.annotations.Api;

import java.util.Objects;

/**
 * @author 郑为中
 * CSDN: Designer 小郑
 */
@Api(tags = "判断为空工具类")
public class ZwzNullUtils {
    public static boolean isNull(String str){
        if(str == null || Objects.equals("",str) || Objects.equals("null",str) || Objects.equals("undefined",str)) {
            return true;
        }
        return false;
    }
}
