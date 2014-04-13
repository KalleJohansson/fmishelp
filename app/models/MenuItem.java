package models;

import play.*;
import play.db.jpa.*;

import javax.persistence.*;
import java.util.*;

@Entity
public class MenuItem extends Model {

	private String name;
	
	private Page page;
	
	private boolean hasSubpages;
	
	@OneToMany
	private List<Page> subpages;
}
