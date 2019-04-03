package com.nmghr.job.adminbiz;

import com.nmghr.job.core.biz.AdminBiz;
import com.nmghr.job.core.biz.model.RegistryParam;
import com.nmghr.job.core.biz.model.ReturnT;
import com.nmghr.job.core.enums.RegistryConfig;
import com.nmghr.rpc.remoting.invoker.XxlRpcInvokerFactory;
import com.nmghr.rpc.remoting.invoker.call.CallType;
import com.nmghr.rpc.remoting.invoker.reference.XxlRpcReferenceBean;
import com.nmghr.rpc.remoting.invoker.route.LoadBalance;
import com.nmghr.rpc.remoting.net.NetEnum;
import com.nmghr.rpc.serialize.Serializer;

import org.junit.Assert;
import org.junit.Test;

/**
 * admin api test
 *
 * @author xuxueli 2017-07-28 22:14:52
 */
public class AdminBizTest {

    // admin-client
    private static String addressUrl = "http://127.0.0.1:8080/xxl-job-admin".concat(AdminBiz.MAPPING);
    private static String accessToken = null;

    /**
     * registry executor
     *
     * @throws Exception
     */
    @Test
    public void registryTest() throws Exception {
        addressUrl = addressUrl.replace("http://", "");
        AdminBiz adminBiz = (AdminBiz) new XxlRpcReferenceBean(
                NetEnum.NETTY_HTTP,
                Serializer.SerializeEnum.HESSIAN.getSerializer(),
                CallType.SYNC,
                LoadBalance.ROUND,
                AdminBiz.class,
                null,
                10000,
                addressUrl,
                accessToken,
                null,
                null).getObject();

        // test executor registry
        RegistryParam registryParam = new RegistryParam(RegistryConfig.RegistType.EXECUTOR.name(), "xxl-job-executor-example", "127.0.0.1:9999");
        ReturnT<String> returnT = adminBiz.registry(registryParam);
        Assert.assertTrue(returnT.getCode() == ReturnT.SUCCESS_CODE);

        // stop invoker
        XxlRpcInvokerFactory.getInstance().stop();
    }

    /**
     * registry executor remove
     *
     * @throws Exception
     */
    @Test
    public void registryRemove() throws Exception {
        addressUrl = addressUrl.replace("http://", "");
        AdminBiz adminBiz = (AdminBiz) new XxlRpcReferenceBean(
                NetEnum.NETTY_HTTP,
                Serializer.SerializeEnum.HESSIAN.getSerializer(),
                CallType.SYNC,
                LoadBalance.ROUND,
                AdminBiz.class,
                null,
                10000,
                addressUrl,
                accessToken,
                null,
                null).getObject();

        // test executor registry remove
        RegistryParam registryParam = new RegistryParam(RegistryConfig.RegistType.EXECUTOR.name(), "xxl-job-executor-example", "127.0.0.1:9999");
        ReturnT<String> returnT = adminBiz.registryRemove(registryParam);
        Assert.assertTrue(returnT.getCode() == ReturnT.SUCCESS_CODE);

        // stop invoker
        XxlRpcInvokerFactory.getInstance().stop();
    }

}
