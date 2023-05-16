package cn.zwz.basics.baseVo;

import io.swagger.annotations.ApiModelProperty;
import io.swagger.annotations.ApiOperation;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.List;

/**
 * @author 郑为中
 * CSDN: Designer 小郑
 */
@ApiOperation(value = "临时用户类")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class TokenUser implements Serializable{

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "用户名")
    private String username;

    @ApiModelProperty(value = "拥有的菜单权限")
    private List<String> permissions;

    @ApiModelProperty(value = "是否自动登录")
    private Boolean saveLogin;
}
