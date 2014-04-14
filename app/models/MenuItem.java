package models;

import play.*;
import play.db.jpa.*;

import javax.persistence.*;
import java.util.*;

@Entity
public class MenuItem extends Model {

	private String name;
	
	private long pageid;
	
	private boolean hasSubpages;
	
	@OneToMany
	private List<Page> subpages;
}
