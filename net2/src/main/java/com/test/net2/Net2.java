package com.test.net2;

import com.test.framework.ServiceManager;
import com.test.sdk.SdkApi;
import com.test.sdk.SdkService;

/**
 * @ClassName: Net2
 * @Description: java类作用描述
 * @Author: flying
 * @CreateDate: 2018/10/9 20:08
 */
public class Net2 {
    public void test(){
        SdkService sdkApi = (SdkService) ServiceManager.getInstance().getService(SdkService.class);
        sdkApi.test2();
    }
}
