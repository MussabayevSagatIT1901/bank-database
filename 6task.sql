create function mpay(a integer, t integer, e numeric) returns numeric AS $$
    select (a+(a*e*0.01))/t as monthly_payment;
$$ language sql;

select amount, term, eir, mpay(amount, term, eir) from credit
