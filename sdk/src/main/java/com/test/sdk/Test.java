package com.test.sdk;

import com.test.framework.ServiceManager;

/**
 * @ClassName: Test
 * @Description: java类作用描述
 * @Author: flying
 * @CreateDate: 2018/9/29 12:35
 */
public class Test {

    public static void initSdk() {
        ServiceManager.getInstance().registerService(SdkService.class, new SdkImpl());
    }
}
