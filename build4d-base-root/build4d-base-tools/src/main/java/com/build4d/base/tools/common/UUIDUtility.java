package com.build4d.base.tools.common;

import java.util.Date;
import java.util.UUID;

public class UUIDUtility {

    /**
     * 获取UUID
     *
     * @return
     */
    public static String getUUID(){
        return  UUID.randomUUID().toString();
    }

    public static String getUUIDNotSplit(){
        String uuid=getUUID();
        return uuid.replaceAll("-","");
    }

    public static String getFullTimeStr(){
        return DateUtility.getDate_yyyyMMddHHmmssSSS();
    }
}
