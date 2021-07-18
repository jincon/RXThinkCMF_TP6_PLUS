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

if (!function_exists('message')) {

    /**
     * 消息数组函数
     * @param string $msg 提示语
     * @param bool $success 是否成功
     * @param array $data 结果数据
     * @param int $code 错误码
     * @return array 返回消息对象
     * @author 牧羊人
     * @date 2020/7/1
     */
    function message($msg = "操作成功", $success = true, $data = [], $code = 0)
    {
        $result = ['msg' => $msg, 'data' => $data, 'success' => $success];
        if ($success) {
            // 成功统一返回0
            $result['code'] = 0;
        } else {
            // 失败状态(可配置常用状态码)
            $result['code'] = $code ? $code : -1;
        }
        return $result;
    }
}


function test($test=0){
    return ("testtesttesttesttesttesttesttest");
}

/**
 * 下拉框组件
 *
 * @author 牧羊人
 * @date 2018-07-10
 * @param unknown $arr
 * @param string $selected
 * @param string $show_field 支持多个字段显示 格式field_a,field_b
 * @param string $val_field
 * @return string
 */
function make_option($arr, $selected='', $show_field='', $val_field='') {
    $ret = '';
    $show_field_arr = explode(',', $show_field);
    if (is_array( $arr )) {
        foreach ($arr as $k => $v) {
            $show_text = '';
            if (is_array( $v )) {
                foreach ($show_field_arr as $s) {
                    $show_text .= $v[$s].' ';
                }
                $show_text = substr($show_text, 0, -1);
                $val_field && $k = $v[$val_field];
            } else {
                $show_text = $v;
            }
            $sel = '';
            if ($selected && $k == $selected) {
                $sel = 'selected';
            }
            $ret .= '<option value =' . $k . ' ' . $sel . '>' . $show_text . '</option>';
        }
    }
    return $ret;
}

/**
 * 单选按钮组件
 *
 * @author 牧羊人
 * @date 2018-10-22
 * @param unknown $arr
 * @param unknown $name
 * @param string $checked
 * @param unknown $val
 * @param unknown $field
 * @param number $show_num
 * @return string
 */
function make_radio($arr, $name, $checked='', $val, $field, $show_num=10) {
    $ret = '';
    $m = 1;
    if (is_array( $arr )) {
        foreach ($arr as $k => $v) {
            $show_name  = $name;
            $show_id    = $name.'_'.$k;
            if (is_array( $v )) {
                $show_val   = $v[$val];
                $show_field = $v[$field];
                $k 			= $show_val;
            } else {
                $show_val   = $k;
                $show_field = $v;
            }
            $sel = '';
            if ( $k == $checked) {
                $sel = 'checked="checked"';
            }
            $ret .= '<input name="'.$show_name.'" id="'.$show_id.'" value="'.$show_val.'" title="'.$show_field.'" '.$sel.' type="radio">';
            if ($m % $show_num == 0) {
                $ret .= '<br>';
            }
            $m ++;
        }
    }
    return $ret;
}

/**
 * 生成复选框checkbox
 *
 * @author 牧羊人
 * @date 2018-10-24
 * @param unknown $arr
 * @param unknown $name
 * @param unknown $checked_array
 * @param number $per_line
 * @param string $value_field
 * @param string $text_field
 * @param string $class
 * @return string
 */
function make_checkbox($arr, $name, $checkedArr=array(), $val, $fleid,$class='') {
    $result = '';
    foreach ($arr as $k=>$v) {
        if (is_array($v)) {
            $show_val = $v[$val];
            $show_field = $v[$fleid];
        } else {
            $show_val = $k;
            $show_field = $v;
        }
        $checked = '';
        if ($checkedArr && in_array($show_val, $checkedArr)) {
            $checked = 'checked';
        }
        $result .= '<input class="'.$class.'" name="'.$name.'[]" lay-skin="primary" title="'.$show_field.'" value="'.$show_val.'" '.$checked.' type="checkbox">';
    }
    return $result;
}