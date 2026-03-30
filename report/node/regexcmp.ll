begin_hunk_0
  %i.jm = lshr i32 %i.jl, 24                      ; 3 uses
  %i.jn = icmp eq i32 %i.jm, 37
  %i.jo = add nsw i32 %.0140.ph305, 2
  %spec.select = select i1 %i.jn, i32 %i.jo, i32 %.0140.ph305
  %i.jp = icmp eq i32 %i.jm, 44
  %i.jq = zext i1 %i.jp to i32
  %.2142 = add nsw i32 %spec.select, %i.jq        ; 5 uses
  %trunc258 = trunc nuw i32 %i.jm to i8
  switch i8 %trunc258, label %.thread253.outer304.backedge [
    i8 38, label %bb.bc
end_hunk_0
begin_hunk_1
  ]

bb.bc:                                            ; preds = %_ZNK6icu_789UVector6410elementAtiEi.exit243, %_ZNK6icu_789UVector6410elementAtiEi.exit243
  %i.jr = add nsw i32 %.2142, -1                  ; 2 uses
  %i.js = icmp eq i32 %i.jr, 0
  br i1 %i.js, label %_ZNK6icu_789UVector3210elementAtiEi.exit221, label %.thread253.outer304.backedge

end_hunk_1
