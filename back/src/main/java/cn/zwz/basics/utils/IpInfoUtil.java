package cn.zwz.basics.utils;

import cn.hutool.http.HttpUtil;
import cn.zwz.data.utils.ZwzNullUtils;
import com.alibaba.fastjson2.JSONObject;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

import jakarta.servlet.http.HttpServletRequest;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Objects;

/**
 * @author 郑为中
 * CSDN: Designer 小郑
 */
@ApiOperation(value = "IP定位工具类")
@Slf4j
@Component
public class IpInfoUtil {

    @ApiModelProperty(value = "腾讯地图的KEY值")
    private String key = "XXXXX-XXXXX-XXXXX-XXXXX-XXXXX";

    private static final String IP_HEADER_PRE_ONE = "x-forwarded-for";

    private static final String IP_HEADER_PRE_TWO = "Proxy-Client-IP";

    private static final String IP_HEADER_PRE_THREE = "WL-Proxy-Client-IP";

    private static final String IP_HEADER_NONE = "unknown";

    private static final String IP_HEADER_LOCAL_HOST = "127.0.0.1";

    private static final String IP_HEADER_LOCAL_LONG_HOST = "0:0:0:0:0:0:0:1";

    private static final String TXDT_URL_PRE = "https://apis.map.qq.com/ws/location/v1/ip?key=";

    @ApiOperation(value = "查询IP地址的区县")
    public String getIpCity(HttpServletRequest request){
        String url = TXDT_URL_PRE + key + "&ip=" + getRequestIpAddress(request);
        String resultStr = "本地测试";
        try {
            JSONObject objectResult = JSONObject.parseObject(HttpUtil.get(url, 3000));
            if(Objects.equals(objectResult.get("status"),"0")) {
                JSONObject adInfo = objectResult.getJSONObject("result").getJSONObject("ad_info");
                String nationStr = adInfo.getString("nation");
                String provinceStr = adInfo.getString("province");
                String cityStr = adInfo.getString("city");
                String districtStr = adInfo.getString("district");
                if(!ZwzNullUtils.isNull(nationStr) && ZwzNullUtils.isNull(provinceStr)){
                    resultStr = nationStr;
                } else {
                    resultStr = provinceStr;
                    if(!ZwzNullUtils.isNull(cityStr)){
                        resultStr += "-" + cityStr;
                    }
                    if(!ZwzNullUtils.isNull(districtStr)){
                        resultStr += "-" + districtStr;
                    }
                }
            }
        } catch (Exception e) {
            log.warn("区县查询失败");
        }
        return resultStr;
    }

    @ApiOperation(value = "查询请求的IP地址")
    public String getRequestIpAddress(HttpServletRequest request) {
        String ipAddress = request.getHeader(IP_HEADER_PRE_ONE);
        if (ipAddress == null || ipAddress.length() < 1 || IP_HEADER_NONE.equalsIgnoreCase(ipAddress)) {
            ipAddress = request.getHeader(IP_HEADER_PRE_TWO);
        }
        if (ipAddress == null || ipAddress.length() < 1 || IP_HEADER_NONE.equalsIgnoreCase(ipAddress)) {
            ipAddress = request.getHeader(IP_HEADER_PRE_THREE);
        }
        if (ipAddress == null || ipAddress.length() < 1 || IP_HEADER_NONE.equalsIgnoreCase(ipAddress)) {
            ipAddress = request.getRemoteAddr();
            if (Objects.equals(IP_HEADER_LOCAL_HOST,ipAddress)) {
                InetAddress inetAddress = null;
                try {
                    inetAddress = InetAddress.getLocalHost();
                } catch (UnknownHostException exception) {
                    exception.printStackTrace();
                }
                ipAddress = inetAddress.getHostAddress();
            }
        }
        if (ipAddress != null && ipAddress.length() > 15) {
            if (ipAddress.indexOf(",") > 0) {
                ipAddress = ipAddress.substring(0, ipAddress.indexOf(","));
            }
        }
        if(Objects.equals(IP_HEADER_LOCAL_LONG_HOST,ipAddress)){
            ipAddress = IP_HEADER_LOCAL_HOST;
        }
        return ipAddress;
    }
}
