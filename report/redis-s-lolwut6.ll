begin_hunk_0
  %27 = sub i32 %.065, %8                         ; [#uses=1 type=i32]
  %28 = and i32 %27, 1                            ; [#uses=1 type=i32]
  %.not55 = icmp eq i32 %28, 0                    ; [#uses=1 type=i1]
  %.fr = freeze i1 %26                            ; [#uses=1 type=i1]
  %.fr63 = freeze i1 %25                          ; [#uses=1 type=i1]
  %29 = and i1 %.fr, %.fr63                       ; [#uses=1 type=i1]
  br i1 %29, label %.lr.ph.split, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph
end_hunk_0
