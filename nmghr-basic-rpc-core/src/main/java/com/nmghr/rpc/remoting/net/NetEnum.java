package com.nmghr.rpc.remoting.net;

import com.nmghr.rpc.remoting.net.impl.jetty.client.JettyClient;
import com.nmghr.rpc.remoting.net.impl.jetty.server.JettyServer;
import com.nmghr.rpc.remoting.net.impl.mina.client.MinaClient;
import com.nmghr.rpc.remoting.net.impl.mina.server.MinaServer;
import com.nmghr.rpc.remoting.net.impl.netty.client.NettyClient;
import com.nmghr.rpc.remoting.net.impl.netty.server.NettyServer;
import com.nmghr.rpc.remoting.net.impl.netty_http.client.NettyHttpClient;
import com.nmghr.rpc.remoting.net.impl.netty_http.server.NettyHttpServer;

/**
 * remoting net
 *
 * @author xuxueli 2015-11-24 22:09:57
 */
public enum NetEnum {


	/**
	 * netty tcp server
	 */
	NETTY(NettyServer.class, NettyClient.class),

	/**
	 * netty http server (servlet no server, ServletServerHandler)
	 */
	NETTY_HTTP(NettyHttpServer.class, NettyHttpClient.class),

	/**
	 * mina tcp server
	 */
	MINA(MinaServer.class, MinaClient.class),

	/**
	 * jetty http server
	 */
	JETTY(JettyServer .class, JettyClient .class);


	public final Class<? extends Server> serverClass;
	public final Class<? extends Client> clientClass;

	NetEnum(Class<? extends Server> serverClass, Class<? extends Client> clientClass) {
		this.serverClass = serverClass;
		this.clientClass = clientClass;
	}

	public static NetEnum autoMatch(String name, NetEnum defaultEnum) {
		for (NetEnum item : NetEnum.values()) {
			if (item.name().equals(name)) {
				return item;
			}
		}
		return defaultEnum;
	}

}