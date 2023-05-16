package cn.zwz.data.entity;

import cn.zwz.basics.baseClass.ZwzBaseEntity;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import jakarta.persistence.Transient;
import java.math.BigDecimal;

/**
 * @author 郑为中
 * CSDN: Designer 小郑
 */
@Data
@Entity
@DynamicInsert
@DynamicUpdate
@Table(name = "a_dict_data")
@TableName("a_dict_data")
@ApiModel(value = "数据字典值")
public class DictData extends ZwzBaseEntity {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "数据字典ID")
    private String dictId;

    @Transient
    @TableField(exist=false)
    @ApiModelProperty(value = "数据字典名称")
    private String dictName;

    @ApiModelProperty(value = "数据字典键")
    private String title;

    @ApiModelProperty(value = "数据字典值排序值")
    @Column(precision = 10, scale = 2)
    private BigDecimal sortOrder;

    @ApiModelProperty(value = "数据字典值")
    private String value;

    @ApiModelProperty(value = "数据字典值备注")
    private String description;

    @ApiModelProperty(value = "是否启用")
    private Integer status = 0;
}