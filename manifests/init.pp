
# .config/autostart/dropbox.desktop
# TODO: use XDG to get location  (XDG facts?)  (Need to be correct user, though...)


define autostartentry(
  $title="",
  $cmd="",
  $genericname="",
  $comment="",
  $terminal="false",
  $apptype="Application",
  $icon="folder",
  $categories="",
  $startupnotify="false") {


    file { "${myhome}/.config/autostart/${title}.desktop":
      content => template("puppet-gnome-autostart/desktop.erb"),
      }
}
