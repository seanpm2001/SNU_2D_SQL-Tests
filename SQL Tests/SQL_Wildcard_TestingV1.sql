/* Start of script */
/* Documentation */
/* This file is for the testing of Wildcards in SQL and to serve as a reference. */
/* File version history
Version 1: December 30th 2019
Version 2: Coming soon
*/
/* Wildcards in SQL */
/*

* 	Represents zero or more characters 	bl* finds bl, black, blue, and blob
? 	Represents a single character 	h?t finds hot, hat, and hit
[] 	Represents any single character within the brackets 	h[oa]t finds hot and hat, but not hit
! 	Represents any character not in the brackets 	h[!oa]t finds hit, but not hot and hat
- 	Represents a range of characters 	c[a-b]t finds cat and cbt
# 	Represents any single numeric character 	2#5 finds 205, 215, 225, 235, 245, 255, 265, 275, 285, and 295

*/
/* Wildcards in SQL server */
/*

% 	Represents zero or more characters 	bl% finds bl, black, blue, and blob
_ 	Represents a single character 	h_t finds hot, hat, and hit
[] 	Represents any single character within the brackets 	h[oa]t finds hot and hat, but not hit
^ 	Represents any character not in the brackets 	h[^oa]t finds hit, but not hot and hat
- 	Represents a range of characters 	c[a-b]t finds cat and cbt

*/
/* Table collection */
CREATE TABLE colors_table (
	color1 black,
	color2 blue,
	color3 brown,
	color4 red,
	color5 orange,
	color6 green,
	color7 pink,
	color8 yellow,
	color9 grey,
	color10 beige;
	color11 purple;
	color12 cyan;
	color13 white;
	color14 magenta;
	color15 salmonPin;
	color16 turquiose;
);
CREATE TABLE heat_table (
	heat1 hot,
	heat2 cold,
	heat3 fahrenheit,
	heat4 celsius,
};
CREATE TABLE testing1_table (
	test1 hot,
	test2 hat,
	test3 hit,
);
CREATE TABLE testing2_table (
	test2_1 black,
	test2_2 blue,
	test2_3 blob1,
};
CREATE TABLE testing3_table (
	test3_1 cat.
	test3_2 cbt,
	test3_3 cct,
	test3_4 cdt,
	test3_5 cet,
	test3_6 cft.
);
CREATE TABLE testing4_table (
	test4_1 0,
	test4_2 1,
	test4_3 2,
	test4_4 5,
	test4_5 9,
	test4_6 10,
	test4_7 12,
	test4_8 15,
	test4_9 18,
	test4_10 19,
	test4_11 20,
	test4_12 20.1,
	test4_13 25.3,
	test4_14 25.8,
	test4_15 25.9,
	test4_16 255,
	test4_17 399,
);
/* Database colelction */
CREATE DATABASE testingtables; /* Testing database */
/* Database has tables:
{
testing1_table
testing2_table
testing3_table
testing4_table
}
*/
CREATE DATABASE othertables; /* Other database */
/* Database has tables:
{
colors_table
heat_table
}
*/
/* Database backup */
BACKUP DATABASE testingtables
TO DISK = '/testingTablesDB.bak';
BACKUP DATABASE othertables
TO DISK = '/othertablesDB.bak';
/* Testing */
SELECT * FROM colors_table
WHERE cyan LIKE 'bl%';
SELECT ^ FROM heat_table
WHERE celsius LIKE 'siu%';
/* End of script */