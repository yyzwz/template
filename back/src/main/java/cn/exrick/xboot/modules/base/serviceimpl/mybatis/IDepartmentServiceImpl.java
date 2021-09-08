package cn.exrick.xboot.modules.base.serviceimpl.mybatis;

import cn.exrick.xboot.modules.base.dao.mapper.DepartmentMapper;
import cn.exrick.xboot.modules.base.entity.Department;
import cn.exrick.xboot.modules.base.service.mybatis.IDepartmentService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author 郑为中
 */
@Service
public class IDepartmentServiceImpl extends ServiceImpl<DepartmentMapper, Department> implements IDepartmentService {

    @Autowired
    private DepartmentMapper departmentMapper;

}
