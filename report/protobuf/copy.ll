begin_hunk_0
  ]

upb_MiniTableField_CType.exit:                    ; preds = %bb.e, %bb.d
  %7 = add nuw nsw i64 %i.o, 4294967295
  %i.q = and i64 %7, 4294967295
  %8 = add nsw i64 %i.q, -9
  %9 = icmp ult i64 %8, 2
  br i1 %9, label %bb.f, label %.critedge32

bb.f:                                             ; preds = %upb_MiniTableField_CType.exit
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 20
end_hunk_0
begin_hunk_1

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %i.i, i64 10       ; 2 uses
  %.val151 = load i8, ptr %i.l, align 2, !tbaa !16 ; 5 uses
  %i.m = zext i8 %.val151 to i64
  %i.n = and i8 %.val155, 16
  %.not.i.i = icmp eq i8 %i.n, 0                  ; 2 uses
end_hunk_1
begin_hunk_2
  ]

bb.g:                                             ; preds = %upb_MiniTableField_CType.exit
  %i.s = icmp ugt i8 %.val155, -65
  tail call void @llvm.assume(i1 %i.s)
  %i.t = tail call fastcc { ptr, i64 } @upb_Message_GetField(ptr noundef %1, ptr noundef nonnull %i.i, ptr null, i64 undef)
end_hunk_2
begin_hunk_3
  %i.gw = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gv, ptr noundef nonnull align 8 dereferenceable(16) %i.gw, i64 16, i1 false), !tbaa.struct !45
  %i.gx = getelementptr i8, ptr %i.gu, i64 10
  %.val.i179 = load i8, ptr %i.gx, align 2, !tbaa !16 ; 2 uses
  %i.gy = getelementptr i8, ptr %i.gu, i64 11
  %.val6.i = load i8, ptr %i.gy, align 1, !tbaa !19
  %i.gz = zext i8 %.val.i179 to i64               ; 3 uses
  %i.ha = and i8 %.val6.i, 16
  %.not.i.i.i225 = icmp eq i8 %i.ha, 0
  br i1 %.not.i.i.i225, label %upb_MiniTableExtension_CType.exit.thread241, label %bb.bk

upb_MiniTableExtension_CType.exit.thread241:      ; preds = %bb.bj
  %4 = add nuw nsw i64 %i.gz, 4294967295
  %5 = and i64 %4, 4294967295                     ; 2 uses
  br label %upb_MiniTableExtension_CType.exit.i223

bb.bk:                                            ; preds = %bb.bj
  switch i8 %.val.i179, label %upb_MiniTableExtension_CType.exit.thread [
    i8 5, label %upb_MiniTableExtension_CType.exit.thread.thread
    i8 12, label %bb.bl
  ]
end_hunk_3
begin_hunk_4
  %i.hb = load i32, ptr %.in288, align 4, !tbaa !3
  br label %upb_MiniTableExtension_GetSubMessage.exit224

upb_MiniTableExtension_CType.exit.thread:         ; preds = %bb.bk
  %6 = add nuw nsw i64 %i.gz, 4294967295
  %7 = and i64 %6, 4294967295
  %.pre = add nuw nsw i64 %i.gz, 4294967295
  %.pre267 = and i64 %.pre, 4294967295
  br label %upb_MiniTableExtension_CType.exit.i223

upb_MiniTableExtension_CType.exit.i223:           ; preds = %upb_MiniTableExtension_CType.exit.thread, %upb_MiniTableExtension_CType.exit.thread241
  %.pre-phi268 = phi i64 [ %.pre267, %upb_MiniTableExtension_CType.exit.thread ], [ %5, %upb_MiniTableExtension_CType.exit.thread241 ]
  %.pn293 = phi i64 [ %7, %upb_MiniTableExtension_CType.exit.thread ], [ %5, %upb_MiniTableExtension_CType.exit.thread241 ]
  %.in292 = getelementptr inbounds nuw [4 x i8], ptr @upb_FieldType_CType.c_type, i64 %.pn293
  %i.hc = load i32, ptr %.in292, align 4, !tbaa !3 ; 2 uses
  %8 = add nsw i64 %.pre-phi268, -9
  %9 = icmp ult i64 %8, 2
  br i1 %9, label %bb.bm, label %upb_MiniTableExtension_GetSubMessage.exit224

bb.bm:                                            ; preds = %upb_MiniTableExtension_CType.exit.i223
end_hunk_4
begin_hunk_5
  %.val.i183 = load i8, ptr %i.ic, align 2, !tbaa !16 ; 2 uses
  %i.id = getelementptr i8, ptr %i.ib, i64 11
  %.val3.i = load i8, ptr %i.id, align 1, !tbaa !19
  %10 = zext i8 %.val.i183 to i64
  %i.ie = and i8 %.val3.i, 16
  %.not.i.i.i.i184 = icmp eq i8 %i.ie, 0
  br i1 %.not.i.i.i.i184, label %upb_MiniTableExtension_CType.exit.i, label %bb.bu
end_hunk_5
begin_hunk_6
  ]

upb_MiniTableExtension_CType.exit.i:              ; preds = %bb.bu, %upb_MiniTableField_CType.exit182
  %11 = add nuw nsw i64 %10, 4294967295
  %12 = and i64 %11, 4294967295
  %13 = add nsw i64 %12, -9
  %14 = icmp ult i64 %13, 2
  br i1 %14, label %bb.bv, label %upb_MiniTableExtension_GetSubMessage.exit

bb.bv:                                            ; preds = %upb_MiniTableExtension_CType.exit.i
  %i.if = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
end_hunk_6
