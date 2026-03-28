begin_hunk_0
  br i1 %i.lv, label %bb.bs, label %bb.bq

bb.bq:                                            ; preds = %_ZNK10StringView10startsWithEc.exit.i
  %3 = and i8 %2, 1
  %.not = icmp eq i8 %3, 0
  br i1 %.not, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
end_hunk_0
