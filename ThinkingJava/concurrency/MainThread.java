public class MainThread {
    public static void main(String[] args) {
        LiftOff launch = new LiftOff(7);
        launch.run();

        //use signal thread.
        Thread countThread = new Thread( new LiftOff( 10 ));
        countThread.start();
    }
}

