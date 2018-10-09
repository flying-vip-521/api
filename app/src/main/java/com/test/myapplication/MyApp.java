package com.test.myapplication;

import android.app.Application;
import com.test.sdk.Test;

/**
 * @ClassName: MyApp
 * @Description: java类作用描述
 * @Author: flying
 * @CreateDate: 2018/10/8 11:12
 */
public class MyApp extends Application {
    @Override
    public void onCreate() {
        super.onCreate();
        Test.initSdk();
    }
}
