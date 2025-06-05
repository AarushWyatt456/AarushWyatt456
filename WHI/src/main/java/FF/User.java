package FF;

import javax.validation.constraints.NotEmpty;

public class User {
    @NotEmpty(message = "Username is required")
    private String username;
    
    @NotEmpty(message = "Password is required")
    private String password;
    
    private String email;
    
    // Getters and Setters
    public String getUsername() {
        return username;
    }
    
    public void setUsername(String username) {
        this.username = username;
    }
    
    public String getPassword() {
        return password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }
    
    public String getEmail() {
        return email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }
}