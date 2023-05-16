package cn.zwz.data.serviceimpl;

import cn.zwz.data.dao.mapper.SettingMapper;
import cn.zwz.data.entity.Setting;
import cn.zwz.data.service.ISettingService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * @author 郑为中
 * CSDN: Designer 小郑
 */
@Service
public class ISettingServiceImpl extends ServiceImpl<SettingMapper, Setting> implements ISettingService {

}
