{pkgs, ...}: {
    programs.kitty.enable = true; # required for the default Hyprland config
    wayland.windowManager.hyprland = {
        enable = true;
        # set the Hyprland and XDPH packages to null to use the ones from the NixOS module
        # package = null;
        # portalPackage = null;

        plugins = with pkgs.hyprlandPlugins; [
            # Add plugins here
            borders-plus-plus
        ];
    };

    # Optional, hint Electron apps to use Wayland:
    # home.sessionVariables.NIXOS_OZONE_WL = "1";
}