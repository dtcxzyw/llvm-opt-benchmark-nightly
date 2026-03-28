begin_hunk_0
  br i1 %.not.i69.i, label %bb.ag, label %HUF_compress1X_usingCTable_internal_default.exit

bb.ag:                                            ; preds = %HUF_compress1X_usingCTable_internal_body_loop.exit.i
  %6 = and i64 %i.bmq, 7
  %i.bmx = ptrtoint ptr %spec.store.select.i.i to i64
  %i.bmy = ptrtoint ptr %0 to i64
  %i.bmz = icmp ne i64 %6, 0
  %i.bna = zext i1 %i.bmz to i64
  %i.bnb = sub i64 %i.bna, %i.bmy
  %i.bnc = add i64 %i.bnb, %i.bmx
end_hunk_0
begin_hunk_1
  br i1 %.not.i69, label %bb.ae, label %HUF_compress1X_usingCTable_internal_body.exit

bb.ae:                                            ; preds = %HUF_compress1X_usingCTable_internal_body_loop.exit
  %5 = and i64 %i.bqv, 7
  %i.brc = ptrtoint ptr %spec.store.select.i to i64
  %i.brd = ptrtoint ptr %0 to i64
  %i.bre = icmp ne i64 %5, 0
  %i.brf = zext i1 %i.bre to i64
  %i.brg = sub i64 %i.brf, %i.brd
  %i.brh = add i64 %i.brg, %i.brc
end_hunk_1
