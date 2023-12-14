{pkgs}: {
  deps = [
    pkgs.pandoc
    pkgs.glibcLocales
    pkgs.gitFull
    pkgs.libev
  ];
  env = {
    PYTHON_LD_LIBRARY_PATH = pkgs.lib.makeLibraryPath [
      pkgs.glibcLocales
      pkgs.gitFull
      pkgs.libev
    ];
  };
}
