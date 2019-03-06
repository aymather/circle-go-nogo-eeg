function EEGtrigger(trigger)

    write_parallel(888,trigger);
    WaitSecs(.003);
    write_parallel(888,0);