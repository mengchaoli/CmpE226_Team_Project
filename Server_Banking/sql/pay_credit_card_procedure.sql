USE `226team`;
DROP procedure IF EXISTS `pay_credit_card`;

DELIMITER $$
USE `226team`$$
CREATE PROCEDURE pay_credit_card (IN check_acct varchar(255), IN credit_acct varchar(255), IN num decimal, IN today date)
BEGIN
	DECLARE _rollback BOOL DEFAULT 0;
	DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET _rollback = 1;
	start transaction;
		UPDATE checking
		SET balance = balance - num
		WHERE account_num = check_acct;
        INSERT INTO checking_statement (user, user_account, partner_account, category, amount, date, balance) 
		SELECT customer, account_num, credit_acct, 'payment', num, today, balance
		FROM checking
        WHERE account_num = check_acct;
		UPDATE credit_card
		SET balance = balance + num
		WHERE card_num = credit_acct;
		INSERT INTO credit_statement (user, user_account, partner_account, category, amount, date, balance) 
		SELECT customer, card_num, check_acct, 'payment', num, today, balance
		FROM credit_card
        WHERE card_num = credit_acct;
	IF _rollback = 1 THEN
		ROLLBACK;
	ELSE
		COMMIT;
	END IF;
END$$

DELIMITER ;