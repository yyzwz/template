package cn.zwz.data.serviceimpl;

import cn.zwz.data.dao.mapper.DepartmentMapper;
import cn.zwz.data.entity.Department;
import cn.zwz.data.service.IDepartmentService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * @author 郑为中
 * CSDN: Designer 小郑
 */
@Service
public class IDepartmentServiceImpl extends ServiceImpl<DepartmentMapper, Department> implements IDepartmentService {

}
