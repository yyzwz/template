package cn.zwz.basics.security.jwt;

import cn.zwz.basics.utils.ResponseUtil;
import io.swagger.annotations.ApiOperation;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.web.access.AccessDeniedHandler;
import org.springframework.stereotype.Component;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * @author 郑为中
 * CSDN: Designer 小郑
 */
@ApiOperation(value = "自定义权限文案")
@Component
public class ZwzAccessDeniedHandler implements AccessDeniedHandler {

    private static final boolean RESPONSE_FAIL_FLAG = false;

    private static final int RESPONSE_NO_SELF_ROLE_CODE = 403;

    @Override
    @ApiOperation(value = "重写自定义权限拒绝方法")
    public void handle(HttpServletRequest request, HttpServletResponse response, AccessDeniedException exception) {
        ResponseUtil.out(response, ResponseUtil.resultMap(RESPONSE_FAIL_FLAG,RESPONSE_NO_SELF_ROLE_CODE,"您无权访问该菜单，谢谢！"));
    }
}
