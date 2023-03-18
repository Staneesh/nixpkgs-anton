{ pkgs, lib, ...}: {
	programs.home-manager.enable = true;
	programs.bash = {
		enable = true;
		# Hook direnv program to bash shell on shell startup
		bashrcExtra = ''
			eval "$(direnv hook bash)" 
		'';
	};

	home.stateVersion = "22.11";
	home.username = "stanisz";
	home.homeDirectory = "/home/stanisz";

	home.packages = with pkgs; [
		direnv		# Automatic shell.nix activation in programming environments
		zellij		# Terminal multiplexter written in Rust
	];
}
