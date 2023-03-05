package az.developia.bookshopping.file;

import org.springframework.boot.context.properties.ConfigurationProperties;

import lombok.Getter;
import lombok.Setter;

@ConfigurationProperties("storage")
@Getter
@Setter
public class StorageProperties {
private String location = "upload-dir-book-shopping-spring-ajax";

public String getLocation() {
	return location;
}

public void setLocation(String location) {
	this.location = location;
}
}
