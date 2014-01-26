<?php

/**
 * balcony - Online Portal for Hackerspaces
 *
 * Copyright (c) 2014, Iain R. Learmonth and contributors.
 * All rights reserved.
 *
 * See LICENSE for details of redistribution terms and disclaimer.
 */

class Member {

	function __construct($memberNumber) {

		$query = sprintf("SELECT * FROM `member` WHERE `memberNumber` = '%d'",
			mysql_real_escape_string($memberNumber));

		$result = mysql_query($query);

		$this->attrs = mysql_fetch_array($result);

	}

}

function getAllMembers() {

	$members = []

	$query = "SELECT `memberNumber` FROM `member`";

	$result = mysql_query($query);

	while ( ( $row = mysql_fetch_array($result) != null ) {

		$members[] = new Member($row[0]);

	}

	return $members;

}

