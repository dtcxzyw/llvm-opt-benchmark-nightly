begin_hunk_0
  %.val.i = load i8, ptr %i.bf, align 2, !tbaa !33 ; 2 uses
  %i.bg = getelementptr i8, ptr %5, i64 11
  %.val3.i = load i8, ptr %i.bg, align 1, !tbaa !27
  %i.bh = and i8 %.val3.i, 16
  %.not.i.i.i.i = icmp eq i8 %i.bh, 0
  br i1 %.not.i.i.i.i, label %upb_MiniTableExtension_CType.exit.i, label %bb.s
end_hunk_0
begin_hunk_1
  ]

upb_MiniTableExtension_CType.exit.i:              ; preds = %bb.s, %bb.r
  %6 = and i8 %.val.i, -2
  %7 = icmp eq i8 %6, 10
  br i1 %7, label %bb.t, label %upb_MiniTableExtension_GetSubMessage.exit

bb.t:                                             ; preds = %upb_MiniTableExtension_CType.exit.i
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 16
end_hunk_1
begin_hunk_2
bb.u:                                             ; preds = %_upb_TextEncode_EndField_dont_copy_me__upb_internal_use_only.exit
  %.val.i37 = load i8, ptr %i.aa, align 2, !tbaa !33 ; 2 uses
  %.val3.i38 = load i8, ptr %i.ab, align 1, !tbaa !27
  %i.bk = and i8 %.val3.i38, 16
  %.not.i.i.i39 = icmp eq i8 %i.bk, 0
  br i1 %.not.i.i.i39, label %upb_MiniTableField_CType.exit.i, label %bb.v
end_hunk_2
begin_hunk_3
  ]

upb_MiniTableField_CType.exit.i:                  ; preds = %bb.v, %bb.u
  %8 = and i8 %.val.i37, -2
  %9 = icmp eq i8 %8, 10
  br i1 %9, label %bb.w, label %upb_MiniTableExtension_GetSubMessage.exit

bb.w:                                             ; preds = %upb_MiniTableField_CType.exit.i
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 8
end_hunk_3
