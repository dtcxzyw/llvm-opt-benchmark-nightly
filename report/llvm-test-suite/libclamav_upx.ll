begin_hunk_0
  br i1 %.not273, label %.thread355, label %bb.ad

.thread355:                                       ; preds = %checkpe.exit319, %bb.aa
  %9 = and i32 %8, 4095
  %.not274 = icmp eq i32 %9, 0
  %10 = select i1 %.not274, i32 0, i32 4096
  %i.dh = add i32 %10, %8
  %i.di = and i32 %i.dh, -4096                    ; 4 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.4) #6
  %i.dj = or disjoint i32 %i.di, 512              ; 2 uses
end_hunk_0
