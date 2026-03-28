begin_hunk_0
  %.val.i13 = load i8, ptr %i.ac, align 2, !tbaa !33 ; 2 uses
  %i.ad = getelementptr i8, ptr %i.d, i64 11
  %.val3.i = load i8, ptr %i.ad, align 1, !tbaa !36
  %i.ae = and i8 %.val3.i, 16
  %.not.i.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i, label %upb_MiniTableExtension_CType.exit.i, label %bb.h
end_hunk_0
begin_hunk_1
  ]

upb_MiniTableExtension_CType.exit.i:              ; preds = %bb.h, %bb.g
  %8 = and i8 %.val.i13, -2
  %9 = icmp eq i8 %8, 10
  br i1 %9, label %bb.i, label %upb_MiniTableExtension_GetSubMessage.exit

bb.i:                                             ; preds = %upb_MiniTableExtension_CType.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 16
end_hunk_1
