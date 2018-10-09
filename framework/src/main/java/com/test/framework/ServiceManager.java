package com.test.framework;

import android.util.Log;

import java.util.HashMap;

/**
 * @ClassName: PluginManager
 * @Description: java类作用描述
 * @Author: flying
 * @CreateDate: 2018/10/8 10:54
 */
public class ServiceManager {
    private static final String TAG = ServiceManager.class.getSimpleName();
    private HashMap<Class, Object> serviceMap = new HashMap<>();

    private ServiceManager() {
    }

    private static class Inner {
        private static final ServiceManager INSTANCE = new ServiceManager();
    }

    public static ServiceManager getInstance() {
        return Inner.INSTANCE;
    }

    public boolean registerService(Class c, Object service) {
        if (c.isAssignableFrom(service.getClass())) {
            serviceMap.put(c, service);
            return true;
        }
        Log.e(TAG, service.getClass().getSimpleName() + " is not implement " + c.getSimpleName());
        return false;
    }

    public Object getService(Class c) {
        if (!serviceMap.containsKey(c)) {
            throw new RuntimeException("please register service before get service");
        }
        return serviceMap.get(c);
    }

    public void unregisterService(Class c) {
        serviceMap.remove(c);
    }

}
