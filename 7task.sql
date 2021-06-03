CREATE VIEW credit_info AS SELECT borrower.id, borrower.created_at, borrower.created_by, 
                                  borrower.name, borrower.gender, borrower.email, borrower.education, 
                                  borrower.marital_status, borrower.salary, borrower.address, borrower.birth_date, 
                                  borrower.document_id, borrower.children, credit.id AS credit_id, 
                                  credit.disbursment_date, credit.amount, credit.term, credit.status, credit.eir
FROM borrower inner join credit on borrower.id = credit.borrower_id
 
