package com.test.net;

import com.test.framework.ServiceManager;
import com.test.sdk.SdkService;

/**
 * @ClassName: TestClass
 * @Description: java类作用描述
 * @Author: flying
 * @CreateDate: 2018/9/29 12:54
 */
public class TestClass {
    public void test() {
        SdkService sdk = (SdkService) ServiceManager.getInstance().getService(SdkService.class);
        sdk.test();
    }
}
