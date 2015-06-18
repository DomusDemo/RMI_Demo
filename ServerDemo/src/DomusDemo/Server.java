package DomusDemo;

import java.rmi.RemoteException;
import java.rmi.registry.LocateRegistry;
import java.rmi.registry.Registry;
import java.rmi.server.UnicastRemoteObject;

import DomusDemo.RemoteDomusInterface;

public class Server {
	Domus domus;
	static String host ="localhost"; 
	static int exportingPort = 1100;
	static int bindingPort = 1099;
	static String serviceName = "Domus";

	public Server() {
		super();
		domus = new Domus();
	}

	public static void main(String[] args) {
		Server server = new Server();

		System.setProperty("java.rmi.server.hostname", host);
		try {
			RemoteDomusInterface remoteObjectStub =
				 (RemoteDomusInterface) UnicastRemoteObject
					.exportObject(server.domus, exportingPort);

			Registry registry = LocateRegistry.createRegistry(bindingPort);

			registry.rebind(serviceName, remoteObjectStub);

			
			System.out.println("RMI server started.");

		} catch (RemoteException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
