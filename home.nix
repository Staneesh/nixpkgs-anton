{ pkgs, lib, ...}: {
	programs.home-manager.enable = true;
	programs.bash = {
		enable = true;
		bashrcExtra = ''
			eval "$(direnv hook bash)"
		'';
	};

	home.stateVersion = "22.11";
	home.username = "stanisz";
	home.homeDirectory = "/home/stanisz";

	home.packages = [
		pkgs.direnv
	];
}
