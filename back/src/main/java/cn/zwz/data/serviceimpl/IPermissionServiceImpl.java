package cn.zwz.data.serviceimpl;

import cn.zwz.data.dao.mapper.PermissionMapper;
import cn.zwz.data.entity.Permission;
import cn.zwz.data.service.IPermissionService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * @author 郑为中
 * CSDN: Designer 小郑
 */
@Service
public class IPermissionServiceImpl extends ServiceImpl<PermissionMapper, Permission> implements IPermissionService {

}
