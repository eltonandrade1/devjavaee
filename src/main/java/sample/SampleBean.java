package sample;

import javax.enterprise.inject.Model;
import javax.inject.Inject;

import org.eclipse.microprofile.config.inject.ConfigProperty;

@Model
public class SampleBean {

	@Inject
	@ConfigProperty(name = "message")
	private String message;

	@Inject
	@ConfigProperty(name = "teste")
	private String message2;

	public String getMessage() {
		return this.message;
	}

	public String getMessage2() {
		return this.message2;
	}
	
			
}