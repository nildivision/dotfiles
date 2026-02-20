{
  flake.modules.homeManager.yazi = {
    programs.yazi = {
      enable = true;
      settings.opener.edit = [
        { run = "hx \"$@\""; block = true; }
      ];
    };
  };
}
