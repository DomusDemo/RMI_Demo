package DomusDemo;

import java.rmi.RemoteException;
import java.rmi.registry.LocateRegistry;
import java.rmi.registry.Registry;

import DomusDemo.RemoteDomusInterface;

public class Client {
	private RemoteDomusInterface rdi;

	public Client() {
		try {
			String serviceName = "Domus";

			Registry registry = LocateRegistry.getRegistry("localhost");

			rdi = (RemoteDomusInterface) registry.lookup(serviceName);
		} catch (RemoteException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public boolean getLightState(int room) {
		try {
			return rdi.getLightState(room);
		} catch (RemoteException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public void setLightState(int room, boolean b){
		try {
			rdi.setLightState(room, b);
		} catch (RemoteException e) {
			e.printStackTrace();
		}
	}
	
}
