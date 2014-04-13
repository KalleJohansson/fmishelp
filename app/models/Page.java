package models;

import play.*;
import play.db.jpa.*;

import javax.persistence.*;
import java.util.*;

@Entity
public class Page extends Model {
    
	private String name;
	
	private String pageuri;
	
	private String content;
}
