package cn.exrick.xboot.common.exception;

import lombok.Data;

/**
 * @author 郑为中
 */
@Data
public class LimitException extends RuntimeException {

    private String msg;

    public LimitException(String msg) {
        super(msg);
        this.msg = msg;
    }
}
