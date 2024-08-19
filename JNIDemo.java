public class JNIDemo {
    public static void main(String[] args) {
        System.out.println(add(1,9));
        System.out.println("hello world");
    }

    public static native int add(int a, int b);

    static {
        // System.load("/root/JNI/build/libJNIDemo.so");
        System.load(System.getProperty("user.dir") + "/build/libJNIDemo.so"); // 使用相对路径加载库
    }
}