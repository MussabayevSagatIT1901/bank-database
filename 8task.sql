create index index_credit_application 
on credit_application(id,requested_at,product_id,status,created_by,
					  requested_amount,approved_amount,
					  requested_term,approved_term,credit_id,
					 disbursment_date,borrower_id,verificator_id );
create index index_credit
on credit(id,disbursment_date,product_id,amount,term,status,borrower_id,credit_application_id,
		 EIR);
					
create index index_borrower
on borrower(id,created_at,created_by,address,birth_date,children,document_id,education,
		   phone,email,name,gender,marital_status,salary);
		   
