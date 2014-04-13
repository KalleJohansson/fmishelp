package models;

import play.*;
import play.db.jpa.*;

import javax.persistence.*;
import java.util.*;

@Entity
public class WordList extends Model {
    
	private String term;
	
	private String description;
}
