package nio.prepare.reactor.master;


import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.ServerSocketChannel;
import java.nio.channels.SocketChannel;

public class Acceptor {

    private static final int CORE = Runtime.getRuntime().availableProcessors();
    private ServerSocketChannel serverSocketChannel;
    private Selector[] selectors = new Selector[CORE];
    private Slave[] slaves = new Slave[CORE];

    private static int nextId = 0;


    public Acceptor(ServerSocketChannel channel) {
        try {
            for (int i = 0; i < selectors.length; i++) {
                selectors[i] = Selector.open();
                slaves[i] = new Slave(selectors[i]);
                slaves[i].setDaemon(true);
                slaves[i].start();
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        this.serverSocketChannel = channel;
    }

    public void accept() {
        // 设置不阻塞才可以使用 selector
        try {
            SocketChannel accept = serverSocketChannel.accept();
            accept.configureBlocking(false);

            slaves[nextId].setRestart(true);
            selectors[nextId].wakeup();
            accept.register(selectors[nextId], SelectionKey.OP_READ, new Worker(accept));
            selectors[nextId].wakeup();
            slaves[nextId].setRestart(false);
            nextId = (nextId + 1) % CORE;
        } catch (Exception exception) {
            throw new RuntimeException(exception);
        }

    }
}
