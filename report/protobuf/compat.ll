begin_hunk_0
  ]

upb_MiniTableField_CType.exit92:                  ; preds = %bb.t, %bb.s
  %5 = add nuw nsw i64 %i.aj, 4294967295
  %i.bj = and i64 %5, 4294967295
  %6 = add nsw i64 %i.bj, -9
  %7 = icmp ult i64 %6, 2
  br i1 %7, label %bb.u, label %.thread

bb.u:                                             ; preds = %upb_MiniTableField_CType.exit92
  %i.bk = load ptr, ptr %3, align 8, !tbaa !23
end_hunk_0
