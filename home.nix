{ pkgs, lib, ...}: {
	programs.home-manager.enable = true;
	programs.bash = {
		enable = true;
	};

	home.stateVersion = "22.11";
	home.username = "stanisz";
	home.homeDirectory = "/home/stanisz";

	home.packages = [
		pkgs.R
	];
}
