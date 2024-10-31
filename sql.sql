CREATE TABLE  wp_pd_orders (id int(11) NOT NULL auto_increment, file_id int(11) NOT NULL,
payer_name varchar(255) collate utf8_unicode_ci NOT NULL, payer_phone varchar(255) collate utf8_unicode_ci NOT NULL,
payer_email varchar(255) collate utf8_unicode_ci NOT NULL, completed int(11) NOT NULL default '0', UNIQUE KEY id (id));

CREATE TABLE wp_pd_files (id int(11) NOT NULL auto_increment, title varchar(255) collate utf8_unicode_ci NOT NULL,
filename varchar(255) collate utf8_unicode_ci NOT NULL, uploaded int(11) NOT NULL default '1',
filename_original varchar(255) collate utf8_unicode_ci NOT NULL, price float NOT NULL,
currency varchar(7) collate utf8_unicode_ci NOT NULL, available_copies int(11) NOT NULL default '0',
license_url varchar(255) NOT NULL default '', registered int(11) NOT NULL, deleted int(11) NOT NULL default '0', UNIQUE KEY id (id));

CREATE TABLE wp_pd_downloadlinks (id int(11) NOT NULL auto_increment, file_id int(11) NOT NULL,
download_key varchar(255) collate utf8_unicode_ci NOT NULL, owner varchar(63) collate utf8_unicode_ci NOT NULL,
source varchar(15) collate utf8_unicode_ci NOT NULL, created int(11) NOT NULL, deleted int(11) NOT NULL default '0', UNIQUE KEY id (id));

CREATE TABLE  wp_pd_transactions (id int(11) NOT NULL auto_increment, file_id int(11) NOT NULL,
payer_name varchar(255) collate utf8_unicode_ci NOT NULL, payer_phone varchar(255) collate utf8_unicode_ci NOT NULL,
payer_email varchar(255) collate utf8_unicode_ci NOT NULL, gross float NOT NULL, currency varchar(15) collate utf8_unicode_ci NOT NULL,
payment_status varchar(31) collate utf8_unicode_ci NOT NULL, transaction_type varchar(31) collate utf8_unicode_ci NOT NULL,
details text collate utf8_unicode_ci NOT NULL, created int(11) NOT NULL, deleted int(11) NOT NULL default '0', UNIQUE KEY id (id));