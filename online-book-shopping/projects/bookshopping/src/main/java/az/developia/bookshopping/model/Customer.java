package az.developia.bookshopping.model;

import java.sql.Timestamp;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.annotations.CreationTimestamp;

import lombok.Data;
import lombok.ToString;
@Data
@ToString
@Entity
public class Customer {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	
	@Size (min = 2,message = "Minimum 2 simvol yazmaq lazimdır")
	@Size (max = 30,message = "Maxsimum 30 simvol yazmaq lazimdır")
	@NotEmpty (message = "Boş qoymaq olmaz")
	@Column(columnDefinition = "VARCHAR(30)")
	private String name;
	
	@Size (min = 2,message = "Minimum 2 simvol yazmaq lazimdır")
	@Size (max = 200,message = "Maxsimum 200 simvol yazmaq lazimdır")
	@NotEmpty (message = "Boş qoymaq olmaz")
	@Column(columnDefinition = "VARCHAR(200)")
	private String address;
		
	@Pattern(regexp = "[0-9]{3}-[0-9]{3}-[0-9]{4}",message="Telefonu düzgün formatda yazın. Məsələn: 000-000-0000")
	@NotEmpty (message = "Boş qoymaq olmaz")
	@Column(columnDefinition = "VARCHAR(20)")
	@Size (max = 20,message = "Maxsimum 20 simvol yazmaq lazimdır")
	private String phone;
	
	@NotEmpty (message = "Boş qoymaq olmaz")
	@Column(columnDefinition = "VARCHAR(100)")
	@Size (max = 100,message = "Maxsimum 100 simvol yazmaq lazimdır")
	@Email(regexp = "[a-z0-9A-Z._%+-]+@[a-z0-9.-]+\\.[a-z]{2,4}", message = "Email-i düzgün formatda yazın")
	private String email;
	
	@Column(columnDefinition = "VARCHAR(100)")
	@Size (max = 100,message = "Maxsimum 100 simvol yazmaq lazimdır")
	private String note;
	
}
