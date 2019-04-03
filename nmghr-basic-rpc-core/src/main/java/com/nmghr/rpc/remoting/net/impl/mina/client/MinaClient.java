package com.nmghr.rpc.remoting.net.impl.mina.client;

import com.nmghr.rpc.remoting.net.Client;
import com.nmghr.rpc.remoting.net.common.ConnectClient;
import com.nmghr.rpc.remoting.net.params.XxlRpcRequest;

/**
 * mina client
 *
 * @author xuxueli 2015-11-24 22:25:15
 */
public class MinaClient extends Client {

	private Class<? extends ConnectClient> connectClientImpl = MinaConnectClient.class;

	@Override
	public void asyncSend(String address, XxlRpcRequest xxlRpcRequest) throws Exception {
		ConnectClient.asyncSend(xxlRpcRequest, address, connectClientImpl, xxlRpcReferenceBean);
	}

}
