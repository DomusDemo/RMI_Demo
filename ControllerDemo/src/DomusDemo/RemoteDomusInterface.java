package DomusDemo;


import java.rmi.Remote;
import java.rmi.RemoteException;

public interface RemoteDomusInterface extends Remote{

	public boolean getLightState(int room) throws RemoteException;
	public void setLightState(int room, boolean b) throws RemoteException;
	
}
