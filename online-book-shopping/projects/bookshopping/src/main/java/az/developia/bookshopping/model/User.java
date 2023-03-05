package az.developia.bookshopping.model;

import javax.persistence.Column;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class User {
	@Size(min = 1, message = "Istifadəçi adı minimum 1 simvol yazmaq lazimdır")
	@Size (max = 30,message = "Istifadəçi adı maxsimum 30 simvol yazmaq lazimdır")
	@NotEmpty(message = "Boş qoymaq olmaz")
	private String username;
	@Size(min = 1, message = "Şifrə minimum 1 simvol yazmaq lazimdır")
	@Size (max = 30,message = "Şifrə maxsimum 30 simvol yazmaq lazimdır")
	@NotEmpty(message = "Boş qoymaq olmaz")
	private String password;
}
