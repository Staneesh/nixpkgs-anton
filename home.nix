{ pkgs, lib, ...}: {
	programs.home-manager.enable = true;
	programs.bash = {
		enable = true;
		# Hook direnv program to bash shell on shell startup
		# Start ssh-agent and add private keys
		profileExtra = ''
			eval "$(direnv hook bash)"
			eval "$(ssh-agent)" && ssh-add ~/.ssh/github
		'';
	};
	programs.git = {
		enable = true;
		userName = "Staneesh";
		userEmail = "blkreasons@outlook.com";
	};
	programs.starship = {
		enable = true;
	};

	home.stateVersion = "22.11";
	home.username = "stanisz";
	home.homeDirectory = "/home/stanisz";

	home.packages = with pkgs; [
		direnv		# Automatic shell.nix activation in programming environments
	];
}
