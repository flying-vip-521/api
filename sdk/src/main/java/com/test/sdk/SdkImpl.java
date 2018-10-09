package com.test.sdk;

import android.util.Log;



/**
 * @ClassName: SdkImpl
 * @Description: java类作用描述
 * @Author: flying
 * @CreateDate: 2018/10/8 11:08
 */
public class SdkImpl implements SdkService {
    private static final String TAG = SdkImpl.class.getSimpleName();

    @Override
    public void test() {
        Log.v(TAG,"test -> sdk_impl");
    }

    @Override
    public void test2() {
        Log.v(TAG,"test2 -> sdk_impl");

    }
}
