CREATE TRIGGER add_passenger AFTER
INSERT ON cliente_voo
FOR EACH ROW
UPDATE voo
SET num_passageiros = num_passageiros + 1;