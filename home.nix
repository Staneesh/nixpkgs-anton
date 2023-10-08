{ pkgs, lib, nixpkgs, ...}: {
	programs.home-manager.enable = true;

	programs.nushell = {
		enable = true;
	};

	programs.git = {
		enable = true;
		userName = "Staneesh";
		userEmail = "blkreasons@outlook.com";
		signing.key = "FFA25D0D7797E537";
		signing.signByDefault = true;
	};

	programs.starship = {
		enable = true;
	};

	programs.direnv = {
		enable = true;
		nix-direnv.enable = true;
	};

	home.packages = [
		pkgs.python311
		pkgs.gh		# GitHub CLI 
		pkgs.gnupg
	];

	home.stateVersion = "22.11";
	home.username = "stanisz";
	home.homeDirectory = "/home/stanisz";
}
