public class Cluster
{
    public final static int NUM_STEMS = 10; //number of tendrils per cluster

    public Cluster(int len, int x, int y)
    {
        if (! (len <= 5)) {
            for (int i=0; i<NUM_STEMS; i++) {
                colorMode(HSB, 360, 100, 100);
                stroke(128,len,83);
                Tendril t = new Tendril(len, 2*PI/NUM_STEMS*(i+1), x, y);
                t.show();
                if (Math.random() < 0.2) continue;
                Cluster c = new Cluster((int)(len*.45), t.getFX(), t.getFY());
            }
        }
    }
}
