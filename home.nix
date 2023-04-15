{ pkgs, lib, nixpkgs, ...}: {
	programs.home-manager.enable = true;

	programs.bash = {
		enable = true;
		# Hook direnv program to bash shell on shell startup
		# Start ssh-agent and add private keys - this is not needed if the key has a standard name
		#profileExtra = ''
		#	eval "$(direnv hook bash)"
		#	eval "$(ssh-agent)" && ssh-add ~/.ssh/github
		#'';
	};

	programs.git = {
		enable = true;
		userName = "Staneesh";
		userEmail = "blkreasons@outlook.com";
	};

	programs.starship = {
		enable = true;
	};

	programs.direnv = {
		enable = true;
		nix-direnv.enable = true;
	};

	home.packages = [
		pkgs.python310
		# Not sure if ipykernel and pip are needed to handle dev-envs
		pkgs.python310Packages.ipykernel
		pkgs.python310Packages.pip
		pkgs.gh		# GitHub CLI 
		pkgs.gnupg
	];

	home.stateVersion = "22.11";
	home.username = "stanisz";
	home.homeDirectory = "/home/stanisz";
}
