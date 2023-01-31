import java.io.IOException;
import java.net.URI;

class Handler implements URLHandler{
	String output = "";

	public String handleRequest(URI url) {
		if (url.getPath().equals("/")) {
			return output;
		} else if (url.getPath().equals("/add-message")) {
			String[] parameters = url.getQuery().split("=");
			if (parameters[0].equals("s")) {
				output += parameters[1] + "\n";
				return output;
			} else {
				return "Error: Invalid parameter";
			}
		}
		return "404 Not Found";

	}
}
public class StringServer {
	public static void main(String[] args) throws IOException {
		if (args.length == 0) {
			System.out.println("Missing port number! Try any number between 1024 to 49151");
			return;
		}

		int port = Integer.parseInt(args[0]);

		Server.start(port, new Handler());
	}
}
