package cn.exrick.xboot.common.vo;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.io.Serializable;

/**
 * @author 郑为中
 */
@Data
@AllArgsConstructor
public class TokenMember implements Serializable {

    private String username;

    private Integer platform;
}
