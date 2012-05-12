#!/usr/bin/perl

Xchat::register("Auto Re-Join", "2010.01.21", "Automatically rejoins when kicked or SAparted");
Xchat::hook_print("You Kicked", "kicked");
Xchat::hook_print("You Part", "sapartednoreason");
Xchat::hook_print("You Part with Reason", "saparted");
Xchat::hook_command("CYCLE", "cycle");
Xchat::print("Auto-join script loaded. Written by KujiUn.");
sub kicked
{
	$kicker = Xchat::strip_code ($_[0][2]);
	$chan = Xchat::strip_code ($_[0][1]);
	$reason = Xchat::strip_code ($_[0][3]);
	Xchat::print ("You have been kicked by $kicker | Reason: $reason | Rejoining...");
	Xchat::command ("JOIN $chan");
	return Xchat::EAT_ALL;
}
sub saparted {
	$reason = Xchat::strip_code ($_[0][3]);
	if ($reason=~m/SAPart/) {
		$chan = Xchat::strip_code ($_[0][2]);
		$reason = substr($reason, 8);
		Xchat::print("You were SAparted | Reason: $reason | Rejoining...");
		Xchat::command ("JOIN $chan");
		return Xchat::EAT_ALL;
	}
	return Xchat::EAT_NONE;
}
sub sapartednoreason {
	$chan = Xchat::strip_code ($_[0][2]);
	Xchat::print("You were SAparted | Rejoining...");
	Xchat::command ("JOIN $chan");
	return Xchat::EAT_ALL;
}
sub cycle {
	$chan = Xchat::get_info("channel");
	Xchat::command("PART $chan I'm cycling.");
	Xchat::command("JOIN $chan");
	return Xchat::EAT_ALL;
}
