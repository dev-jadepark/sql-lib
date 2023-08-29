--암호화 확장팩 설치
CREATE EXTENSION IF NOT EXISTS pgcrypto;

--암호화하기
SELECT pgp_sym_encrypt('secret_value', 'encryption_key');

--복호화하기
SELECT  pgp_sym_decrypt(pgp_sym_encrypt('secret_value', 'encryption_key'), 'encryption_key');
