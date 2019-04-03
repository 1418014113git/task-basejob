package com.nmghr.rpc.remoting.invoker.annotation;

import java.lang.annotation.*;

import com.nmghr.rpc.remoting.invoker.call.CallType;
import com.nmghr.rpc.remoting.invoker.route.LoadBalance;
import com.nmghr.rpc.remoting.net.NetEnum;
import com.nmghr.rpc.serialize.Serializer;

/**
 * rpc service annotation, skeleton of stub ("@Inherited" allow service use "Transactional")
 *
 * @author 2015-10-29 19:44:33
 */
@Target({ElementType.FIELD})
@Retention(RetentionPolicy.RUNTIME)
@Inherited
public @interface XxlRpcReference {

    NetEnum netType() default NetEnum.NETTY;
    Serializer.SerializeEnum serializer() default Serializer.SerializeEnum.HESSIAN;
    CallType callType() default CallType.SYNC;
    LoadBalance loadBalance() default LoadBalance.ROUND;

    //Class<?> iface;
    String version() default "";

    long timeout() default 1000;

    String address() default "";
    String accessToken() default "";

    //XxlRpcInvokeCallback invokeCallback() ;

}
