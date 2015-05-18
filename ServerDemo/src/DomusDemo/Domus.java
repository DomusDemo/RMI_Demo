package DomusDemo;

import java.rmi.RemoteException;
import DomusDemo.RemoteDomusInterface;

public class Domus implements RemoteDomusInterface {
	Light[] light;

	public Domus() {
		light = new Light[3];
		light[0] = new Light();	//luce prima stanza
		light[1] = new Light();	//luce seconda stanza
		light[2] = new Light();	//luce terza stanza
	}

	@Override
	public boolean getLightState(int room) throws RemoteException {
		return light[room].isOn();
	}

	@Override
	public void setLightState(int room, boolean b) throws RemoteException {
		light[room].setLight(b);
	}
}