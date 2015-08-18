function on_pause()
  mp.set_property("show_progress", "yes")
end
mp.register_event("pause", on_pause)
