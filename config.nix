{ 	
    # This should hopefully set NIX_PATH correctly so that it can execute home-manager build. 
	nix.nixPath = [
		"/home/stanisz/.nix-defexpr/channels"
	];
  
    allowUnfree = true; 
}
