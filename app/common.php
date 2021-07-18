<?php
// +----------------------------------------------------------------------
// | RXThinkCMF框架 [ RXThinkCMF ]
// +----------------------------------------------------------------------
// | 版权所有 2017~2020 南京RXThinkCMF研发中心
// +----------------------------------------------------------------------
// | 官方网站: http://www.rxthink.cn
// +----------------------------------------------------------------------
// | Author: 牧羊人 <1175401194@qq.com>
// +----------------------------------------------------------------------

// 应用公共文件

use think\exception\ValidateException;
use think\facade\Filesystem;

if (!function_exists('__')) {

    /**
     * 获取语言变量值
     * @param string $name 语言变量名
     * @param array $vars 动态变量值
     * @param string $lang 语言
     * @return mixed 返回结果
     * @author 牧羊人
     * @date 2020-04-21
     */
    function __($name, $vars = [], $lang = '')
    {
        if (is_numeric($name) || !$name) {
            return $name;
        }
        if (!is_array($vars)) {
            $vars = func_get_args();
            array_shift($vars);
            $lang = '';
        }
        return \think\Lang::get($name, $vars, $lang);
    }

}

if (!function_exists('array2xml')) {

    /**
     * 数组转XML
     * @param array $arr 数据源
     * @param bool $ignore XML解析器忽略
     * @param int $level 层级
     * @return string|string[]|null 返回结果
     * @author 牧羊人
     * @date 2020-04-21
     */
    function array2xml($arr, $ignore = true, $level = 1)
    {
        $s = $level == 1 ? "<?xml version=\"1.0\" encoding=\"ISO-8859-1\"?>\r\n<root>\r\n" : '';
        $space = str_repeat("\t", $level);
        foreach ($arr as $k => $v) {
            if (!is_array($v)) {
                $s .= $space . "<item id=\"$k\">" . ($ignore ? '<![CDATA[' : '') . $v . ($ignore ? ']]>' : '')
                    . "</item>\r\n";
            } else {
                $s .= $space . "<item id=\"$k\">\r\n" . array2xml($v, $ignore, $level + 1) . $space . "</item>\r\n";
            }
        }
        $s = preg_replace("/([\x01-\x08\x0b-\x0c\x0e-\x1f])+/", ' ', $s);
        return $level == 1 ? $s . "</root>" : $s;
    }

}

if (!function_exists('xml2array')) {

    /**
     * XML转数组
     * @param string $xml xml格式内容
     * @param bool $isnormal
     * @return array
     */
    /**
     * xml转数组
     * @param $xml xml文本内容
     * @return string 返回结果
     * @author 牧羊人
     * @date 2020-04-21
     */
    function xml2array(&$xml)
    {
        $xml = "<xml>";
        foreach ($xml as $key => $val) {
            if (is_numeric($val)) {
                $xml .= "<" . $key . ">" . $val . "</" . $key . ">";
            } else {
                $xml .= "<" . $key . "><![CDATA[" . $val . "]]></" . $key . ">";
            }
        }
        $xml .= "</xml>";
        return $xml;
    }

}

if (!function_exists('array_sort')) {

    /**
     * 二位数组排序
     * @param array $arr 数据源
     * @param string $keys KEY
     * @param bool $desc 排序方式（默认：asc）
     * @return array 返回结果
     * @author 牧羊人
     * @date 2020-04-21
     */
    function array_sort($arr, $keys, $desc = false)
    {
        $key_value = $new_array = array();
        foreach ($arr as $k => $v) {
            $key_value[$k] = $v[$keys];
        }
        if ($desc) {
            arsort($key_value);
        } else {
            asort($key_value);
        }
        reset($key_value);
        foreach ($key_value as $k => $v) {
            $new_array[$k] = $arr[$k];
        }
        return $new_array;
    }
}

if (!function_exists('array_merge_multiple')) {

    /**
     * 多维数组合并
     * @param array $array1 数组1
     * @param array $array2 数组2
     * @return array 返回合并数组
     * @author 牧羊人
     * @date 2020-04-21
     */
    function array_merge_multiple($array1, $array2)
    {
        $merge = $array1 + $array2;
        $data = [];
        foreach ($merge as $key => $val) {
            if (isset($array1[$key])
                && is_array($array1[$key])
                && isset($array2[$key])
                && is_array($array2[$key])
            ) {
                $data[$key] = array_merge_multiple($array1[$key], $array2[$key]);
            } else {
                $data[$key] = isset($array2[$key]) ? $array2[$key] : $array1[$key];
            }
        }
        return $data;
    }
}

if (!function_exists('array_key_value')) {
    /**
     * 获取数组中某个字段的所有值
     * @param $arr 数组
     * @param string $name 字段值
     * @return array
     * @since 2021/2/1
     * @author 牧羊人
     */
    function array_key_value($arr, $name = "")
    {
        $return = array();
        if ($arr) {
            foreach ($arr as $key => $val) {
                if ($name) {
                    $return[] = $val[$name];
                } else {
                    $return[] = $key;
                }
            }
        }
        $return = array_unique($return);
        return $return;
    }
}

if (!function_exists('curl_url')) {

    /**
     * 获取当前访问的完整URL
     * @return string 返回结果
     * @author 牧羊人
     * @date 2020-04-21
     */
    function curl_url()
    {
        $pageURL = 'http';
        if (isset($_SERVER["HTTPS"]) && $_SERVER["HTTPS"] === 'on') {
            $pageURL .= "s";
        }
        $pageURL .= "://";
        if ($_SERVER["SERVER_PORT"] != "80") {
            $pageURL .= $_SERVER["SERVER_NAME"] . ":" . $_SERVER["SERVER_PORT"] . $_SERVER["REQUEST_URI"];
        } else {
            $pageURL .= $_SERVER["SERVER_NAME"] . $_SERVER["REQUEST_URI"];
        }
        return $pageURL;
    }

}

if (!function_exists('curl_get')) {

    /**
     * curl请求(GET)
     * @param string $url 请求地址
     * @param array $data 请求参数
     * @return bool|string 返回结果
     * @author 牧羊人
     * @date 2020-04-21
     */
    function curl_get($url, $data = [])
    {
        // 处理get数据
        if (!empty($data)) {
            $url = $url . '?' . http_build_query($data);
        }
        $curl = curl_init();
        curl_setopt($curl, CURLOPT_URL, $url);
        curl_setopt($curl, CURLOPT_HEADER, false);
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);//这个是重点。
        $result = curl_exec($curl);
        curl_close($curl);
        return $result;
    }
}

if (!function_exists('curl_post')) {

    /**
     * curl请求(POST)
     * @param string $url 请求地址
     * @param array $data 请求参数
     * @return bool|string 返回结果
     * @author 牧羊人
     * @date 2020-04-21
     */
    function curl_post($url, $data = [])
    {
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_POST, 1);
        curl_setopt($ch, CURLOPT_HEADER, 0);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        $result = curl_exec($ch);
        curl_close($ch);
        return $result;
    }
}

if (!function_exists('curl_request')) {

    /**
     * curl请求(支持get和post)
     * @param $url 请求地址
     * @param array $data 请求参数
     * @param string $type 请求类型(默认：post)
     * @param bool $https 是否https请求true或false
     * @return bool|string 返回请求结果
     * @author 牧羊人
     * @date 2020-04-21
     */
    function curl_request($url, $data = [], $type = 'post', $https = false)
    {
        // 初始化
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_1_1);
        curl_setopt($ch, CURLOPT_USERAGENT, 'Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.1; Trident/6.0)');
        curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 30);
        // 设置超时时间
        curl_setopt($ch, CURLOPT_TIMEOUT, 30);
        // 是否要求返回数据
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        if ($https) {
            // 对认证证书来源的检查
            curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
            // 从证书中检查SSL加密算法是否存在
            curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, false);
        }
        if (strtolower($type) == 'post') {
            // 设置post方式提交
            curl_setopt($ch, CURLOPT_POST, true);
            // 提交的数据
            curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
        } elseif (!empty($data) && is_array($data)) {
            // get网络请求
            $url = $url . '?' . http_build_query($data);
        }
        // 设置抓取的url
        curl_setopt($ch, CURLOPT_URL, $url);
        // 执行命令
        $result = curl_exec($ch);
        if ($result === false) {
            return false;
        }
        // 关闭URL请求(释放句柄)
        curl_close($ch);
        return $result;
    }
}

if (!function_exists('datetime')) {

    /**
     * 时间戳转日期格式
     * @param int $time 时间戳
     * @param string $format 转换格式(默认：Y-m-d h:i:s)
     * @return false|string 返回结果
     * @author 牧羊人
     * @date 2020-04-21
     */
    function datetime($time, $format = 'Y-m-d H:i:s')
    {
        if (empty($time)) {
            return '--';
        }
        $time = is_numeric($time) ? $time : strtotime($time);
        return date($format, $time);
    }

}

if (!function_exists('data_auth_sign')) {

    /**
     * 数字签名认证
     * @param $data 签名认证数据
     * @return string
     * @author 牧羊人
     * @date 2019/2/1
     */
    function data_auth_sign($data)
    {
        //数据类型检测
        if (!is_array($data)) {
            $data = (array)$data;
        }
        // 排序
        ksort($data);
        // url编码并生成query字符串
        $code = http_build_query($data);
        //生成签名
        $sign = sha1($code);
        return $sign;
    }
}

if (!function_exists('decrypt')) {

    /**
     * DES解密
     * @param string $data 解密字符串
     * @param string $key 解密KEY
     * @return mixed
     * @author 牧羊人
     * @date 2020-04-21
     */
    function decrypt($data, $key = 'p@ssw0rd')
    {
        return openssl_decrypt($data, 'des-ecb', $key);
    }
}

if (!function_exists('encrypt')) {

    /**
     *
     * @param string $data 加密字符串
     * @param string $key 加密KEY
     * @return string
     * @author 牧羊人
     * @date 2020-04-21
     */
    function encrypt($data, $key = 'p@ssw0rd')
    {
        return openssl_encrypt($data, 'des-ecb', $key);
    }
}

if (!function_exists('export_excel')) {

    /**
     * 数据导出Excel(csv文件)
     * @param string $file_name 文件名称
     * @param array $tile 标题
     * @param array $data 数据源
     * @author 牧羊人
     * @date 2020-04-21
     */
    function export_excel($file_name, $tile = [], $data = [])
    {
        ini_set('memory_limit', '512M');
        ini_set('max_execution_time', 0);
        ob_end_clean();
        ob_start();
        header("Content-Type: text/csv");
        header("Content-Disposition:filename=" . $file_name);
        $fp = fopen('php://output', 'w');
        // 转码 防止乱码(比如微信昵称)
        fwrite($fp, chr(0xEF) . chr(0xBB) . chr(0xBF));
        fputcsv($fp, $tile);
        $index = 0;
        foreach ($data as $item) {
            if ($index == 1000) {
                $index = 0;
                ob_flush();
                flush();
            }
            $index++;
            fputcsv($fp, $item);
        }
        ob_flush();
        flush();
        ob_end_clean();
    }
}

if (!function_exists('format_bytes')) {

    /**
     * 将字节转换为可读文本
     * @param int $size 字节大小
     * @param string $delimiter 分隔符
     * @return string 返回结果
     * @author 牧羊人
     * @date 2020-04-21
     */
    function format_bytes($size, $delimiter = '')
    {
        $units = array('B', 'KB', 'MB', 'GB', 'TB', 'PB');
        for ($i = 0; $size >= 1024 && $i < 6; $i++) {
            $size /= 1024;
        }
        return round($size, 2) . $delimiter . $units[$i];
    }

}

if (!function_exists('get_guid_v4')) {

    /**
     * 获取唯一性GUID
     * @param bool $trim 是否去除{}
     * @return string 返回结果
     * @author 牧羊人
     * @date 2020-04-21
     */
    function get_guid_v4($trim = true)
    {
        // Windows
        if (function_exists('com_create_guid') === true) {
            $charid = com_create_guid();
            return $trim == true ? trim($charid, '{}') : $charid;
        }
        // OSX/Linux
        if (function_exists('openssl_random_pseudo_bytes') === true) {
            $data = openssl_random_pseudo_bytes(16);
            $data[6] = chr(ord($data[6]) & 0x0f | 0x40);    // set version to 0100
            $data[8] = chr(ord($data[8]) & 0x3f | 0x80);    // set bits 6-7 to 10
            return vsprintf('%s%s-%s-%s-%s-%s%s%s', str_split(bin2hex($data), 4));
        }
        // Fallback (PHP 4.2+)
        mt_srand((double)microtime() * 10000);
        $charid = strtolower(md5(uniqid(rand(), true)));
        $hyphen = chr(45);                  // "-"
        $lbrace = $trim ? "" : chr(123);    // "{"
        $rbrace = $trim ? "" : chr(125);    // "}"
        $guidv4 = $lbrace .
            substr($charid, 0, 8) . $hyphen .
            substr($charid, 8, 4) . $hyphen .
            substr($charid, 12, 4) . $hyphen .
            substr($charid, 16, 4) . $hyphen .
            substr($charid, 20, 12) .
            $rbrace;
        return $guidv4;
    }
}

if (!function_exists('getter')) {

    /**
     * 获取数组的下标值
     * @param array $data 数据源
     * @param string $field 字段名称
     * @param string $default 默认值
     * @return mixed|string 返回结果
     * @author 牧羊人
     * @date 2020-04-21
     */
    function getter($data, $field, $default = '')
    {
        $result = $default;
        if (isset($data[$field])) {
            if (is_array($data[$field])) {
                $result = $data[$field];
            } else {
                $result = trim($data[$field]);
            }
        }
        return $result;
    }
}

if (!function_exists('get_random_str')) {

    /**
     * 生成随机字符串
     * @param int $length 生成长度
     * @param int $type 生成类型：0-小写字母+数字，1-小写字母，2-大写字母，3-数字，4-小写+大写字母，5-小写+大写+数字
     * @return string 返回结果
     * @author 牧羊人
     * @date 2020-04-21
     */
    function get_random_str($length = 8, $type = 0)
    {
        $a = 'abcdefghijklmnopqrstuvwxyz';
        $A = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
        $n = '0123456789';

        switch ($type) {
            case 1:
                $chars = $a;
                break;
            case 2:
                $chars = $A;
                break;
            case 3:
                $chars = $n;
                break;
            case 4:
                $chars = $a . $A;
                break;
            case 5:
                $chars = $a . $A . $n;
                break;
            default:
                $chars = $a . $n;
        }

        $str = '';
        for ($i = 0; $i < $length; $i++) {
            $str .= $chars[mt_rand(0, strlen($chars) - 1)];
        }
        return $str;
    }

}

if (!function_exists('get_random_code')) {

    /**
     * 获取指定位数的随机码
     * @param int $num 随机码长度
     * @return string 返回字符串
     * @author 牧羊人
     * @date 2020-04-21
     */
    function get_random_code($num = 12)
    {
        $codeSeeds = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        $codeSeeds .= "abcdefghijklmnopqrstuvwxyz";
        $codeSeeds .= "0123456789_";
        $len = strlen($codeSeeds);
        $code = "";
        for ($i = 0; $i < $num; $i++) {
            $rand = rand(0, $len - 1);
            $code .= $codeSeeds[$rand];
        }
        return $code;
    }
}

if (!function_exists('get_server_ip')) {

    /**
     * 获取服务端IP地址
     * @return string 返回IP地址
     * @author 牧羊人
     * @date 2020-04-21
     */
    function get_server_ip()
    {
        if (isset($_SERVER)) {
            if ($_SERVER['SERVER_ADDR']) {
                $server_ip = $_SERVER['SERVER_ADDR'];
            } else {
                $server_ip = $_SERVER['LOCAL_ADDR'];
            }
        } else {
            $server_ip = getenv('SERVER_ADDR');
        }
        return $server_ip;
    }
}

if (!function_exists('get_client_ip')) {

    /**
     * 获取客户端IP地址
     * @param int $type 返回类型 0 返回IP地址 1 返回IPV4地址数字
     * @param bool $adv 否进行高级模式获取（有可能被伪装）
     * @return mixed 返回IP
     * @author 牧羊人
     * @date 2020-04-21
     */
    function get_client_ip($type = 0, $adv = false)
    {
        $type = $type ? 1 : 0;
        static $ip = null;
        if ($ip !== null) {
            return $ip[$type];
        }
        if ($adv) {
            if (isset($_SERVER['HTTP_X_FORWARDED_FOR'])) {
                $arr = explode(',', $_SERVER['HTTP_X_FORWARDED_FOR']);
                $pos = array_search('unknown', $arr);
                if (false !== $pos) {
                    unset($arr[$pos]);
                }
                $ip = trim($arr[0]);
            } elseif (isset($_SERVER['HTTP_CLIENT_IP'])) {
                $ip = $_SERVER['HTTP_CLIENT_IP'];
            } elseif (isset($_SERVER['REMOTE_ADDR'])) {
                $ip = $_SERVER['REMOTE_ADDR'];
            }
        } elseif (isset($_SERVER['REMOTE_ADDR'])) {
            $ip = $_SERVER['REMOTE_ADDR'];
        }
        // IP地址合法验证
        $long = sprintf("%u", ip2long($ip));
        $ip = $long ? array($ip, $long) : array('0.0.0.0', 0);
        return $ip[$type];
    }

}

if (!function_exists('get_zodiac_sign')) {


    /**
     * 根据月、日获取星座
     *
     * @param unknown $month 月
     * @param unknown $day 日
     * @return boolean|multitype:
     * @author 牧羊人
     * @date 2020-04-21
     */
    function get_zodiac_sign($month, $day)
    {
        // 检查参数有效性
        if ($month < 1 || $month > 12 || $day < 1 || $day > 31) {
            return false;
        }

        // 星座名称以及开始日期
        $signs = array(
            array("20" => "水瓶座"),
            array("19" => "双鱼座"),
            array("21" => "白羊座"),
            array("20" => "金牛座"),
            array("21" => "双子座"),
            array("22" => "巨蟹座"),
            array("23" => "狮子座"),
            array("23" => "处女座"),
            array("23" => "天秤座"),
            array("24" => "天蝎座"),
            array("22" => "射手座"),
            array("22" => "摩羯座")
        );
        list($sign_start, $sign_name) = each($signs[(int)$month - 1]);
        if ($day < $sign_start) {
            list($sign_start, $sign_name) = each($signs[($month - 2 < 0) ? $month = 11 : $month -= 2]);
        }
        return $sign_name;
    }

}

if (!function_exists('get_format_time')) {

    /**
     * 获取格式化显示时间
     * @param int $time 时间戳
     * @return false|string 返回结果
     * @author 牧羊人
     * @date 2020-04-21
     */
    function get_format_time($time)
    {
        $time = (int)substr($time, 0, 10);
        $int = time() - $time;
        $str = '';
        if ($int <= 2) {
            $str = sprintf('刚刚', $int);
        } elseif ($int < 60) {
            $str = sprintf('%d秒前', $int);
        } elseif ($int < 3600) {
            $str = sprintf('%d分钟前', floor($int / 60));
        } elseif ($int < 86400) {
            $str = sprintf('%d小时前', floor($int / 3600));
        } elseif ($int < 1728000) {
            $str = sprintf('%d天前', floor($int / 86400));
        } else {
            $str = date('Y年m月d日', $time);
        }
        return $str;
    }

}

if (!function_exists('get_device_type')) {

    /**
     * 获取设备类型(苹果或安卓)
     * @return int 返回结果
     * @author 牧羊人
     * @date 2020-04-21
     */
    function get_device_type()
    {
        // 全部变成小写字母
        $agent = strtolower($_SERVER['HTTP_USER_AGENT']);
        $type = 0;
        // 分别进行判断
        if (strpos($agent, 'iphone') !== false || strpos($agent, 'ipad') !== false) {
            $type = 1;
        }
        if (strpos($agent, 'android') !== false) {
            $type = 2;
        }
        return $type;
    }

}

if (!function_exists('get_password')) {

    /**
     * 获取双MD5加密密码
     * @param string $password 加密字符串
     * @return string 返回结果
     * @author 牧羊人
     * @date 2019/4/5
     */
    function get_password($password)
    {
        return md5(md5($password));
    }

}

if (!function_exists('get_image_url')) {

    /**
     * 获取网络图片地址
     * @param string $image_url 图片地址
     * @return string 输出网络图片地址
     * @author 牧羊人
     * @date 2020-04-21
     */
    function get_image_url($image_url)
    {
        if(strpos($image_url,'http')!==false){
            return $image_url;
        }
        return IMG_URL . $image_url;
    }

}

if (!function_exists('get_uid')) {

    /**
     * 获取管理员登录ID
     * @return bool
     * @author 牧羊人
     * @date 2019/2/1
     */
    function get_uid()
    {
        $adminInfo = session('adminInfo');
        if (session('admin_auth_sign') == data_auth_sign($adminInfo)) {
            return $adminInfo['uid'];
        } else {
            return false;
        }
    }
}

if (!function_exists('is_email')) {

    /**
     * 判断是否为邮箱
     * @param string $str 邮箱
     * @return false 返回结果true或false
     * @author 牧羊人
     * @date 2020-04-21
     */
    function is_email($str)
    {
        return preg_match('/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/', $str);
    }

}

if (!function_exists('is_mobile')) {

    /**
     * 判断是否为手机号
     * @param string $mobile 手机号码
     * @return false 返回结果true或false
     * @author 牧羊人
     * @date 2020-04-21
     */
    function is_mobile($mobile)
    {
//        return preg_match('/^1(3|4|5|6|7|8|9)\d{9}$/', $mobile);
        return preg_match('/^1[3456789]{1}\d{9}$/', $mobile);
    }

}

if (!function_exists('is_zipcode')) {

    /**
     * 验证邮编是否正确
     * @param string $code 邮编
     * @return false 返回结果true或false
     * @author 牧羊人
     * @date 2020-04-21
     */
    function is_zipcode($code)
    {
        return preg_match('/^[1-9][0-9]{5}$/', $code);
    }

}

if (!function_exists('is_idcard')) {

    /**
     * 验证身份证是否正确
     * @param string $idno 身份证号
     * @return bool 返回结果true或false
     * @author 牧羊人
     * @date 2020-04-21
     */
    function is_idcard($idno)
    {
        $idno = strtoupper($idno);
        $regx = '/(^\d{15}$)|(^\d{17}([0-9]|X)$)/';
        $arr_split = array();
        if (!preg_match($regx, $idno)) {
            return false;
        }
        // 检查15位
        if (15 == strlen($idno)) {
            $regx = '/^(\d{6})+(\d{2})+(\d{2})+(\d{2})+(\d{3})$/';
            @preg_match($regx, $idno, $arr_split);
            $dtm_birth = "19" . $arr_split[2] . '/' . $arr_split[3] . '/' . $arr_split[4];
            if (!strtotime($dtm_birth)) {
                return false;
            } else {
                return true;
            }
        } else {
            // 检查18位
            $regx = '/^(\d{6})+(\d{4})+(\d{2})+(\d{2})+(\d{3})([0-9]|X)$/';
            @preg_match($regx, $idno, $arr_split);
            $dtm_birth = $arr_split[2] . '/' . $arr_split[3] . '/' . $arr_split[4];
            // 检查生日日期是否正确
            if (!strtotime($dtm_birth)) {
                return false;
            } else {
                // 检验18位身份证的校验码是否正确。
                // 校验位按照ISO 7064:1983.MOD 11-2的规定生成，X可以认为是数字10。
                $arr_int = array(7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2);
                $arr_ch = array('1', '0', 'X', '9', '8', '7', '6', '5', '4', '3', '2');
                $sign = 0;
                for ($i = 0; $i < 17; $i++) {
                    $b = (int)$idno{$i};
                    $w = $arr_int[$i];
                    $sign += $b * $w;
                }
                $n = $sign % 11;
                $val_num = $arr_ch[$n];
                if ($val_num != substr($idno, 17, 1)) {
                    return false;
                } else {
                    return true;
                }
            }
        }
    }

}

if (!function_exists('is_empty')) {

    /**
     * 判断是否为空
     * @param $value 参数值
     * @return bool 返回结果true或false
     * @author 牧羊人
     * @date 2020-04-21
     */
    function is_empty($value)
    {
        // 判断是否存在该值
        if (!isset($value)) {
            return true;
        }

        // 判断是否为empty
        if (empty($value)) {
            return true;
        }

        // 判断是否为null
        if ($value === null) {
            return true;
        }

        // 判断是否为空字符串
        if (trim($value) === '') {
            return true;
        }

        // 默认返回false
        return false;
    }
}

if (!function_exists('mkdirs')) {

    /**
     * 递归创建目录
     * @param string $dir 需要创建的目录路径
     * @param int $mode 权限值
     * @return bool 返回结果true或false
     * @author 牧羊人
     * @date 2020-04-21
     */
    function mkdirs($dir, $mode = 0777)
    {
        if (is_dir($dir) || mkdir($dir, $mode, true)) {
            return true;
        }
        if (!mkdirs(dirname($dir), $mode)) {
            return false;
        }
        return mkdir($dir, $mode, true);
    }
}

if (!function_exists('rmdirs')) {

    /**
     * 删除文件夹
     * @param string $dir 文件夹路径
     * @param bool $rmself 是否删除本身true或false
     * @return bool 返回删除结果
     * @author 牧羊人
     * @date 2020-04-21
     */
    function rmdirs($dir, $rmself = true)
    {
        if (!is_dir($dir)) {
            return false;
        }
        $files = new RecursiveIteratorIterator(
            new RecursiveDirectoryIterator($dir, RecursiveDirectoryIterator::SKIP_DOTS),
            RecursiveIteratorIterator::CHILD_FIRST
        );

        foreach ($files as $file) {
            $todo = ($file->isDir() ? 'rmdir' : 'unlink');
            $todo($file->getRealPath());
        }
        if ($rmself) {
            @rmdir($dir);
        }

        return true;
    }
}

if (!function_exists('copydirs')) {

    /**
     * 复制文件夹
     * @param string $source 原文件夹路径
     * @param string $dest 目的文件夹路径
     * @author 牧羊人
     * @date 2020-04-21
     */
    function copydirs($source, $dest)
    {
        if (!is_dir($dest)) {
            mkdir($dest, 0755, true);
        }
        $iterator = new RecursiveIteratorIterator(
            new RecursiveDirectoryIterator($source, RecursiveDirectoryIterator::SKIP_DOTS),
            RecursiveIteratorIterator::SELF_FIRST
        );
        foreach ($iterator as $item) {
            if ($item->isDir()) {
                $sent_dir = $dest . "/" . $iterator->getSubPathName();
                if (!is_dir($sent_dir)) {
                    mkdir($sent_dir, 0755, true);
                }
            } else {
                copy($item, $dest . "/" . $iterator->getSubPathName());
            }
        }
    }
}

if (!function_exists('mbsubstr')) {
    /**
     * 字符串截取，支持中文和其他编码
     * @param string $str 需要转换的字符串
     * @param int $start 开始位置
     * @param int $length 截取长度
     * @param string $encoding 编码格式
     * @param string $suffix 截断显示字符
     * @return false|mixed|string 返回结果
     * @author 牧羊人
     * @date 2020-04-21
     */
    function mbsubstr($str, $start = 0, $length = null, $encoding = "utf-8", $suffix = '...')
    {
        if (function_exists("mb_substr")) {
            $slice = mb_substr($str, $start, $length, $encoding);
        } elseif (function_exists('iconv_substr')) {
            $slice = iconv_substr($str, $start, $length, $encoding);
            if (false === $slice) {
                $slice = '';
            }
        } else {
            $re['utf-8'] = "/[\x01-\x7f]|[\xc2-\xdf][\x80-\xbf]|[\xe0-\xef][\x80-\xbf]{2}|[\xf0-\xff][\x80-\xbf]{3}/";
            $re['gb2312'] = "/[\x01-\x7f]|[\xb0-\xf7][\xa0-\xfe]/";
            $re['gbk'] = "/[\x01-\x7f]|[\x81-\xfe][\x40-\xfe]/";
            $re['big5'] = "/[\x01-\x7f]|[\x81-\xfe]([\x40-\x7e]|\xa1-\xfe])/";
            preg_match_all($re[$encoding], $str, $match);
            $slice = join("", array_slice($match[0], $start, $length));
        }
        return $suffix ? $slice . $suffix : $slice;
    }
}

//if (!function_exists('message')) {
//
//    /**
//     * 消息数组
//     * @param string $msg 提示文字
//     * @param bool $success 是否成功true或false
//     * @param array $data 结果数据
//     * @param int $code 编码
//     * @return array 返回结果
//     * @author 牧羊人
//     * @date 2020-04-21
//     */
//    function message($msg = "系统繁忙，请稍候再试", $success = true, $data = [], $code = 0)
//    {
//        $result = ['msg' => $msg, 'data' => $data, 'success' => $success];
//        if ($success) {
//            // 成功统一返回0
//            $result['code'] = 0;
//        } else {
//            // 失败状态(可配置常用状态码)
//            $result['code'] = $code ? $code : -1;
//        }
//        return $result;
//    }
//}

if (!function_exists('format_num')) {

    /**
     * 格式化阅读量等数字单位
     * @param $num
     * @return string
     * @author 牧羊人
     * @date 2020-04-21
     */
    function format_num($num)
    {
        if ($num >= 10000) {
            $num = round($num / 10000 * 100) / 100 . 'W';
        } elseif ($num >= 1000) {
            $num = round($num / 1000 * 100) / 100 . 'K';
        } else {
            $num = $num;
        }
        return $num;
    }
}

if (!function_exists('object_array')) {

    /**
     * 对象转数组
     * @param $object 对象
     * @return mixed 返回结果
     * @author 牧羊人
     * @date 2020-04-21
     */
    function object_array($object)
    {
        //先编码成json字符串，再解码成数组
        return json_decode(json_encode($object), true);
    }
}

if (!function_exists('parse_attr')) {

    /**
     * 配置值解析成数组
     * @param string $value 参数值
     * @return array 返回结果
     * @author 牧羊人
     * @date 2020-04-21
     */
    function parse_attr($value = '')
    {
        if (is_array($value)) {
            return $value;
        }
        $array = preg_split('/[,;\r\n]+/', trim($value, ",;\r\n"));
        if (strpos($value, ':')) {
            $value = array();
            foreach ($array as $val) {
                list($k, $v) = explode(':', $val);
                $value[$k] = $v;
            }
        } else {
            $value = $array;
        }
        return $value;
    }
}

if (!function_exists('strip_html_tags')) {

    /**
     * 去除HTML标签、图像等 仅保留文本
     * @param string $str 字符串
     * @param int $length 长度
     * @return string 返回结果
     * @author 牧羊人
     * @date 2020-04-21
     */
    function strip_html_tags($str, $length = 0)
    {
        // 把一些预定义的 HTML 实体转换为字符
        $str = htmlspecialchars_decode($str);
        // 将空格替换成空
        $str = str_replace("&nbsp;", "", $str);
        // 函数剥去字符串中的 HTML、XML 以及 PHP 的标签,获取纯文本内容
        $str = strip_tags($str);
        $str = str_replace(array("\n", "\r\n", "\r"), ' ', $str);
        $preg = '/<script[\s\S]*?<\/script>/i';
        // 剥离JS代码
        $str = preg_replace($preg, "", $str, -1);
        if ($length == 2) {
            // 返回字符串中的前100字符串长度的字符
            $str = mb_substr($str, 0, $length, "utf-8");
        }
        return $str;
    }

}

if (!function_exists('strip_html_tags2')) {

    /**
     * 去除指定HTML标签
     * @param string $str 字符串
     * @param $tags 指定的标签
     * @param int $content 是否删除标签内的内容 0保留内容 1不保留内容
     * @return string 返回结果
     * 示例：echo strip_html_tags($str, array('a','img'))
     * @author 牧羊人
     * @date 2020-04-21
     */
    function strip_html_tags2($str, $tags, $content = 0)
    {
        if ($content) {
            $html = array();
            foreach ($tags as $tag) {
                $html[] = '/(<' . $tag . '.*?>[\s|\S]*?<\/' . $tag . '>)/';
            }
            $result = preg_replace($html, '', $str);
        } else {
            $html = array();
            foreach ($tags as $tag) {
                $html[] = "/(<(?:\/" . $tag . "|" . $tag . ")[^>]*>)/i";
            }
            $result = preg_replace($html, '', $str);
        }
        return $result;
    }

}

if (!function_exists('sub_str')) {

    /**
     * 字符串截取
     * @param string $str 需要截取的字符串
     * @param int $start 开始位置
     * @param int $length 截取长度
     * @param bool $suffix 截断显示字符
     * @param string $charset 编码格式
     * @return string 返回结果
     * @author 牧羊人
     * @date 2020-04-21
     */
    function sub_str($str, $start = 0, $length = 10, $suffix = true, $charset = "utf-8")
    {
        if (function_exists("mb_substr")) {
            $slice = mb_substr($str, $start, $length, $charset);
        } elseif (function_exists('iconv_substr')) {
            $slice = iconv_substr($str, $start, $length, $charset);
        } else {
            $re['utf-8'] = "/[\x01-\x7f]|[\xc2-\xdf][\x80-\xbf]|[\xe0-\xef][\x80-\xbf]{2}|[\xf0-\xff][\x80-\xbf]{3}/";
            $re['gb2312'] = "/[\x01-\x7f]|[\xb0-\xf7][\xa0-\xfe]/";
            $re['gbk'] = "/[\x01-\x7f]|[\x81-\xfe][\x40-\xfe]/";
            $re['big5'] = "/[\x01-\x7f]|[\x81-\xfe]([\x40-\x7e]|\xa1-\xfe])/";
            preg_match_all($re[$charset], $str, $match);
            $slice = join("", array_slice($match[0], $start, $length));
        }
        $omit = mb_strlen($str) >= $length ? '...' : '';
        return $suffix ? $slice . $omit : $slice;
    }

}

if (!function_exists('cutstr_html')) {

    /**
     * 提取纯文本
     * @param $str 原字符串
     * @return string 过滤后的字符串
     * @author 牧羊人
     * @date 2020-04-21
     */
    function cutstr_html($str)
    {
        $str = trim(strip_tags($str)); //清除字符串两边的空格
        $str = preg_replace("/\t/", "", $str); //使用正则表达式替换内容，如：空格，换行，并将替换为空。
        $str = preg_replace("/\r\n/", "", $str);
        $str = preg_replace("/\r/", "", $str);
        $str = preg_replace("/\n/", "", $str);
        $str = preg_replace("/ /", "", $str);
        $str = preg_replace("/  /", "", $str);  //匹配html中的空格
        return trim($str); //返回字符串
    }
}

if (!function_exists('save_image')) {

    /**
     * 保存图片
     * @param string $img_url 网络图片地址
     * @param string $save_dir 图片保存目录
     * @return string 返回路径
     * @author 牧羊人
     * @date 2020-04-21
     */
    function save_image($img_url, $save_dir = '/')
    {
        if (!$img_url) {
            return false;
        }
        $save_dir = trim($save_dir, "/");
        $imgExt = pathinfo($img_url, PATHINFO_EXTENSION);
        // 是否是本站图片
        if (strpos($img_url, IMG_URL) !== false) {
            // 是否是临时文件
            if (strpos($img_url, 'temp') === false) {
                return str_replace(IMG_URL, "", $img_url);
            }
            $new_path = create_image_path($save_dir, $imgExt);
            $old_path = str_replace(IMG_URL, ATTACHMENT_PATH, $img_url);
            if (!file_exists($old_path)) {
                return false;
            }
            rename($old_path, IMG_PATH . $new_path);
            return str_replace(ATTACHMENT_PATH, "", IMG_PATH) . $new_path;
        } else {
            // 保存远程图片
            $new_path = save_remote_image($img_url, $save_dir);
        }
        return $new_path;
    }
}

if (!function_exists('create_image_path')) {

    /**
     * 创建图片存储目录
     * @param string $save_dir 存储目录
     * @param string $image_ext 图片后缀
     * @param string $image_root 图片存储根目录路径
     * @return string 返回文件目录
     * @author 牧羊人
     * @date 2020-04-21
     */
    function create_image_path($save_dir = "", $image_ext = "", $image_root = IMG_PATH)
    {
        $image_dir = date("/Ymd/");
        if ($image_dir) {
            $image_dir = ($save_dir ? "/" : '') . $save_dir . $image_dir;
        }
        // 未指定后缀默认使用JPG
        if (!$image_ext) {
            $image_ext = "jpg";
        }
        $image_path = $image_root . $image_dir;
        if (!is_dir($image_path)) {
            // 创建目录并赋予权限
            mkdir($image_path, 0777, true);
        }
        $file_name = substr(md5(time() . rand(0, 999999)), 8, 16) . rand(100, 999) . ".{$image_ext}";
        $file_path = $image_dir . $file_name;
        return $file_path;
    }
}

if (!function_exists('save_remote_image')) {

    /**
     * 保存网络图片到本地
     * @param string $img_url 网络图片地址
     * @param string $save_dir 保存目录
     * @return bool|string 图片路径
     * @author 牧羊人
     * @date 2020-04-21
     */
    function save_remote_image($img_url, $save_dir = '/')
    {
        $content = file_get_contents($img_url);
        if (!$content) {
            return false;
        }
        if ($content{0} . $content{1} == "\xff\xd8") {
            $image_ext = 'jpg';
        } elseif ($content{0} . $content{1} . $content{2} == "\x47\x49\x46") {
            $image_ext = 'gif';
        } elseif ($content{0} . $content{1} . $content{2} == "\x89\x50\x4e") {
            $image_ext = 'png';
        } else {
            // 不是有效图片
            return false;
        }
        $save_path = create_image_path($save_dir, $image_ext);
        return file_put_contents(IMG_PATH . $save_path, $content) ? str_replace(ATTACHMENT_PATH, "", IMG_PATH) . $save_path : false;
    }
}

if (!function_exists('save_image_content')) {

    /**
     * 富文本信息处理
     * @param string $content 富文本内容
     * @param bool $title 标题
     * @param string $path 图片存储路径
     * @return bool|int 返回结果
     * @author 牧羊人
     * @date 2020-04-21
     */
    function save_image_content(&$content, $title = false, $path = 'article')
    {
        // 图片处理
        preg_match_all("/<img.*?src=[\"|\']?(.*?)[\"|\']?\s.*?>/i", str_ireplace("\\", "", $content), $match);
        if ($match[1]) {
            foreach ($match[1] as $id => $val) {
                $save_image = save_image($val, $path);
                if ($save_image) {
                    $content = str_replace($val, "[IMG_URL]" . $save_image, $content);
                }
            }
        }
        // 视频处理
        preg_match_all("/<embed .*?src=[\"|\']?(.*?)[\"|\']?\s.*?>/i", str_ireplace("\\", "", $content), $match2);
        if ($match2[1]) {
            foreach ($match2[1] as $vo) {
                $save_video = save_image($vo, $path);
                if ($save_video) {
                    $content = str_replace($vo, "[IMG_URL]" . str_replace(ATTACHMENT_PATH, "", IMG_PATH) . $save_video, $content);
                }
            }
        }
        // 提示标签替换
        if ((strpos($content, 'alt=\"\"') !== false) && $title) {
            $content = str_replace('alt=\"\"', 'alt=\"' . $title . '\"', $content);
        }
        return true;
    }
}

if (!function_exists('upload_image')) {

    /**
     * 上传单张图片
     * @param string $form_name 文件表单名
     * @param string $save_dir 保存文件夹名
     * @param string $error 错误信息
     * @return array 返回结果
     * @author 牧羊人
     * @date 2020-04-21
     */
    function upload_image($form_name = 'file', $save_dir = "", &$error = '')
    {
        // 获取文件对象
        $files = \request()->file($form_name);
        // 判断是否有上传的文件
        if (!$files) {
            $error = "请选择图片";
            return false;
        }

        try {
            // 允许上传的后缀
            $allowext = 'gif,GIF,jpg,JPG,jpeg,JPEG,png,PNG,bmp,BMP';
            // 上传路径
            $save_dir = empty($save_dir) ? 'temp' : $save_dir;
            if (is_array($files)) {
                $data = [];
                foreach ($files as $file) {
                    // 使用验证器验证上传的文件
                    validate(['file' => [
                        // 限制文件大小(单位b)，这里限制为4M
                        'filesize' => 10 * 1024 * 1024,
                        // 限制文件后缀，多个后缀以英文逗号分割
                        'fileExt' => $allowext,
                    ]])->check(['file' => $file]);
                    // 上传到本地服务器
                    $savename = Filesystem::putFile($save_dir, $file);
                    if ($savename) {
                        // 拼接路径
                        $path = str_replace('\\', '/', '/' . $savename);
//                        $data[] = [
//                            'filepath' => $path,
//                            'filename' => $file->getOriginalName(),
//                            'fileext' => $file->extension(),
//                            'filesize' => $file->getSize(),
//                        ];
                        $data[] = $path;
                    }
                }
                return $data;
            } else {
                // 使用验证器验证上传的文件
                validate(['file' => [
                    // 限制文件大小(单位b)，这里限制为4M
                    'filesize' => 10 * 1024 * 1024,
                    // 限制文件后缀，多个后缀以英文逗号分割
                    'fileExt' => $allowext,
                ]])->check(['file' => $files]);
                // 上传到本地服务器
                $savename = Filesystem::putFile($save_dir, $files);
                if ($savename) {
                    // 拼接路径
                    $path = str_replace('\\', '/', '/' . $savename);
//                    $data = [
//                        'filepath' => $path,
//                        'filename' => $files->getOriginalName(),
//                        'fileext' => $files->extension(),
//                        'filesize' => $files->getSize(),
//                    ];
                    return $path;
                }
            }
        } catch (ValidateException $e) {
            // 上传校验失败
            $error = $e->getMessage();
        } catch (Exception $e) {
            // 上传异常
            $error = $e->getMessage();
        }
        return false;
    }
}

if (!function_exists('formUpload')) {

    /**
     * 表单提交图片(多图上传)
     * @param $name
     * @param string $dir
     * @param int $width
     * @param int $height
     * @param int $tooSmall
     * @return array
     * @author 牧羊人
     * @date 2020-04-21
     */
    function formUpload($name, $dir = "", $width = 0, $height = 0, &$tooSmall = 0)
    {
        $allowedExts = array("jpg", "JPG", "jpeg", "JPEG", "gif", "GIF", "png", "PNG", "bmp", "BMP", "tif", "TIF", "svg", "SVG");
        $fileData = $_FILES[$name];
        $fileList = $fileData['tmp_name'];
        if (!$fileList) {
            return array();
        }
        if (!is_array($fileList)) {
            $fileList = array($fileList);
            $tempData = $fileData;
            $fileData = array();
            $fileData['error'][0] = $tempData['error'];
            $fileData['name'][0] = $tempData['name'];
        }
        $images = array();
        foreach ($fileList as $key => $row) {
            if ($fileData['error'][$key] !== 0) {
                continue;
            }
            $tempFile = $row;
            $filename = $fileData['name'][$key];
            $ext = pathinfo($filename, PATHINFO_EXTENSION);
            if (!in_array($ext, $allowedExts)) {
                continue;
            }
            $imgPath = create_image_path($dir, $ext);
            $rs = @move_uploaded_file($tempFile, IMG_PATH . $imgPath);
            if ($rs) {
                $images[] = $imgPath;
            } else {
                $realPath = IMG_PATH . $imgPath;
                if ($width || $height) {
                    $imageInfo = getimagesize($realPath);
                    $imageWidth = $imageInfo['width'];
                    $heightWidth = $imageInfo['height'];
                }
                if ($width && $imageWidth < $width) {
                    $tooSmall = 1;
                }
                if ($height && $heightWidth < $height) {
                    $tooSmall = 1;
                }
            }
        }
        return $images;
    }
}

if (!function_exists('upload_file')) {

    /**
     * 上传单个文件
     * @param string $form_name 文件表单名
     * @param string $save_dir 存储文件夹名
     * @param string $error 错误信息
     * @return array 返回结果
     * @author 牧羊人
     * @date 2020-04-21
     */
    function upload_file($form_name = 'file', $save_dir = "", &$error = '')
    {
        // 获取文件对象
        $files = \request()->file($form_name);
        // 判断是否有上传的文件
        if (!$files) {
            $error = "请选择文件";
            return false;
        }

        try {
            // 允许上传的后缀
            $allowext = 'xls,xlsx,doc,docx,ppt,pptx,zip,rar,mp3,txt,pdf,sql,js,css,chm,';
            // 上传路径
            $save_dir = empty($save_dir) ? 'temp' : $save_dir;
            if (is_array($files)) {
                foreach ($files as $file) {
                    $data = [];
                    foreach ($files as $file) {
                        // 使用验证器验证上传的文件
                        validate(['file' => [
                            // 限制文件大小(单位b)，这里限制为4M
                            'filesize' => 10 * 1024 * 1024,
                            // 限制文件后缀，多个后缀以英文逗号分割
                            'fileExt' => $allowext,
                        ]])->check(['file' => $file]);
                        // 上传到本地服务器
                        $savename = Filesystem::putFile($save_dir, $file);
                        if ($savename) {
                            // 拼接路径
                            $path = str_replace('\\', '/', '/' . $savename);
                            $data[] = [
                                'fileName' => $file->getOriginalName(),
                                'filePath' => $path,
                            ];
                        }
                    }
                    return $data;
                }
            } else {
                // 使用验证器验证上传的文件
                validate(['file' => [
                    // 限制文件大小(单位b)，这里限制为4M
                    'filesize' => 10 * 1024 * 1024,
                    // 限制文件后缀，多个后缀以英文逗号分割
                    'fileExt' => $allowext,
                ]])->check(['file' => $files]);
                // 上传到本地服务器
                $savename = Filesystem::putFile($save_dir, $files);
                if ($savename) {
                    // 拼接路径
                    $path = str_replace('\\', '/', '/' . $savename);
                    $result = [
                        'fileName' => $files->getOriginalName(),
                        'filePath' => $path,
                    ];
                    return $result;
                }
            }
        } catch (ValidateException $e) {
            // 上传校验失败
            $error = $e->getMessage();
        } catch (Exception $e) {
            // 上传异常
            $error = $e->getMessage();
        }
    }
}

if (!function_exists('zip_file')) {

    /**
     * 打包压缩文件及文件夹
     * @param array $files 文件
     * @param string $zipName 压缩包名称
     * @param bool $isDown 压缩后是否下载true或false
     * @return string 返回结果
     * @author 牧羊人
     * @date 2020-04-21
     */
    function zip_file($files = [], $zipName = '', $isDown = true)
    {
        // 文件名为空则生成文件名
        if (empty($zipName)) {
            $zipName = date('YmdHis') . '.zip';
        }

        // 实例化类,使用本类，linux需开启zlib，windows需取消php_zip.dll前的注释
        $zip = new \ZipArchive;
        /*
         * 通过ZipArchive的对象处理zip文件
         * $zip->open这个方法如果对zip文件对象操作成功，$zip->open这个方法会返回TRUE
         * $zip->open这个方法第一个参数表示处理的zip文件名。
         * 这里重点说下第二个参数，它表示处理模式
         * ZipArchive::OVERWRITE 总是以一个新的压缩包开始，此模式下如果已经存在则会被覆盖。
         * ZipArchive::OVERWRITE 不会新建，只有当前存在这个压缩包的时候，它才有效
         * */
        if ($zip->open($zipName, \ZIPARCHIVE::OVERWRITE | \ZIPARCHIVE::CREATE) !== true) {
            exit('无法打开文件，或者文件创建失败');
        }

        // 打包处理
        if (is_string($files)) {
            // 文件夹整体打包
            addFileToZip($files, $zip);
        } else {
            // 文件打包
            foreach ($files as $val) {
                if (file_exists($val)) {
                    // 添加文件
                    $zip->addFile($val, basename($val));
                }
            }
        }
        // 关闭
        $zip->close();

        // 验证文件是否存在
        if (!file_exists($zipName)) {
            exit("文件不存在");
        }

        if ($isDown) {
            // 下载压缩包
            header("Cache-Control: public");
            header("Content-Description: File Transfer");
            header('Content-disposition: attachment; filename=' . basename($zipName)); //文件名
            header("Content-Type: application/zip"); //zip格式的
            header("Content-Transfer-Encoding: binary"); //告诉浏览器，这是二进制文件
            header('Content-Length: ' . filesize($zipName)); //告诉浏览器，文件大小
            @readfile($zipName);
        } else {
            // 直接返回压缩包地址
            return $zipName;
        }
    }
}

if (!function_exists('addFileToZip')) {

    /**
     * 添加文件至压缩包
     * @param string $path 文件夹路径
     * @param $zip zip对象
     * @author 牧羊人
     * @date 2020-04-21
     */
    function addFileToZip($path, $zip)
    {
        // 打开文件夹
        $handler = opendir($path);
        while (($filename = readdir($handler)) !== false) {
            if ($filename != "." && $filename != "..") {
                // 编码转换
                $filename = iconv('gb2312', 'utf-8', $filename);
                // 文件夹文件名字为'.'和‘..’，不要对他们进行操作
                if (is_dir($path . "/" . $filename)) {
                    // 如果读取的某个对象是文件夹，则递归
                    addFileToZip($path . "/" . $filename, $zip);
                } else {
                    // 将文件加入zip对象
                    $file_path = $path . "/" . $filename;
                    $zip->addFile($file_path, basename($file_path));
                }
            }
        }
        // 关闭文件夹
        @closedir($path);
    }
}

if (!function_exists('unzip_file')) {

    /**
     * 压缩文件解压
     * @param string $file 被解压的文件
     * @param $dirname 解压目录
     * @return bool 返回结果true或false
     * @author 牧羊人
     * @date 2020-04-21
     */
    function unzip_file($file, $dirname)
    {
        if (!file_exists($file)) {
            return false;
        }
        // zip实例化对象
        $zipArc = new ZipArchive();
        // 打开文件
        if (!$zipArc->open($file)) {
            return false;
        }
        // 解压文件
        if (!$zipArc->extractTo($dirname)) {
            // 关闭
            $zipArc->close();
            return false;
        }
        return $zipArc->close();
    }
}

if (!function_exists('checkWords')) {
    /**
     * 检查敏感词
     * @param $list
     * @param $str
     * @return string
     * @author 牧羊人
     * @date 2020-04-21
     */
    function checkWords($list, $str, $flag = false)
    {
        $count = 0; //违规词的个数
        $sensitiveWord = '';  //违规词
        $stringAfter = $str;  //替换后的内容
        $pattern = "/" . implode("|", $list) . "/i"; //定义正则表达式
        if (preg_match_all($pattern, $str, $matches)) { //匹配到了结果
            $patternList = $matches[0];  //匹配到的数组
            $count = count($patternList);
            $sensitiveWord = implode(',', $patternList); //敏感词数组转字符串
//            $replaceArray = array_combine($patternList, array_fill(0, count($patternList), '***')); //把匹配到的数组进行合并，替换使用
//            $stringAfter = strtr($str, $replaceArray); //结果替换

            // 临时解决方案
            $itemArr = [];
            if (!empty($patternList)) {
                foreach ($patternList as $val) {
                    if (!$val) {
                        continue;
                    }
                    $itemArr[] = str_pad("", mb_strlen($val), "*", STR_PAD_LEFT);
                }
            }
            $replaceArray = array_combine($patternList, $itemArr); //把匹配到的数组进行合并，替换使用
            $stringAfter = strtr($str, $replaceArray); //结果替换
        }
        $log = "原句为 [ {$str} ]<br/>";
        if ($count == 0) {
            $log .= "暂未匹配到敏感词！";
        } else {
            $log .= "匹配到 [ {$count} ]个敏感词：[ {$sensitiveWord} ]<br/>" .
                "替换后为：[ {$stringAfter} ]";
        }
        if (!$flag) {
            return $stringAfter;
        } else {
            return $count;
        }
    }
}

