begin_hunk_0

bb.c:                                             ; preds = %.lr.ph224
  %i.q = getelementptr i8, ptr %i.o, i64 10
  %.val.i26 = load i8, ptr %i.q, align 2, !tbaa !13 ; 5 uses
  %i.r = getelementptr i8, ptr %i.o, i64 11
  %.val3.i = load i8, ptr %i.r, align 1, !tbaa !16 ; 2 uses
  %i.s = and i8 %.val3.i, 16
  %.not.i.i.i27 = icmp eq i8 %i.s, 0              ; 2 uses
  br i1 %.not.i.i.i27, label %upb_MiniTableField_CType.exit.i29, label %bb.d

bb.d:                                             ; preds = %bb.c
  switch i8 %.val.i26, label %upb_MiniTableField_CType.exit.i29 [
    i8 5, label %upb_MiniTable_SubMessage.exit.thread
    i8 12, label %upb_MiniTable_SubMessage.exit.thread
  ]

upb_MiniTableField_CType.exit.i29:                ; preds = %bb.d, %bb.c
  %9 = and i8 %.val.i26, -2
  %10 = icmp eq i8 %9, 10
  br i1 %10, label %bb.e, label %upb_MiniTable_SubMessage.exit

bb.e:                                             ; preds = %upb_MiniTableField_CType.exit.i29
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 8
end_hunk_0
begin_hunk_1
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !18
  br label %upb_MiniTable_SubMessage.exit

upb_MiniTable_SubMessage.exit.thread:             ; preds = %bb.d, %bb.d
  %11 = zext nneg i8 %.val.i26 to i64
  br label %upb_MiniTable_SubMessage.exit.thread.a

upb_MiniTable_SubMessage.exit:                    ; preds = %upb_MiniTableField_CType.exit.i29, %bb.e
  %.0.i28 = phi ptr [ %i.y, %bb.e ], [ null, %upb_MiniTableField_CType.exit.i29 ] ; 2 uses
  %12 = zext i8 %.val.i26 to i64                  ; 2 uses
  br i1 %.not.i.i.i27, label %upb_MiniTable_SubMessage.exit.thread._crit_edge, label %upb_MiniTable_SubMessage.exit.thread.a

upb_MiniTable_SubMessage.exit.thread.a:           ; preds = %upb_MiniTable_SubMessage.exit.thread, %upb_MiniTable_SubMessage.exit
  %13 = phi i64 [ %11, %upb_MiniTable_SubMessage.exit.thread ], [ %12, %upb_MiniTable_SubMessage.exit ]
  %.0.i2859 = phi ptr [ null, %upb_MiniTable_SubMessage.exit.thread ], [ %.0.i28, %upb_MiniTable_SubMessage.exit ] ; 3 uses
  switch i8 %.val.i26, label %upb_MiniTable_SubMessage.exit.thread._crit_edge [
    i8 5, label %upb_MiniTableField_CType.exit
    i8 12, label %14
  ]

14:                                               ; preds = %upb_MiniTable_SubMessage.exit.thread.a
  br label %upb_MiniTableField_CType.exit

upb_MiniTable_SubMessage.exit.thread._crit_edge:  ; preds = %upb_MiniTable_SubMessage.exit.thread.a, %upb_MiniTable_SubMessage.exit
  %15 = phi i64 [ %13, %upb_MiniTable_SubMessage.exit.thread.a ], [ %12, %upb_MiniTable_SubMessage.exit ]
  %.0.i2858 = phi ptr [ %.0.i2859, %upb_MiniTable_SubMessage.exit.thread.a ], [ %.0.i28, %upb_MiniTable_SubMessage.exit ]
  %.pre = add nuw nsw i64 %15, 4294967295
  %.pre147 = and i64 %.pre, 4294967295
  br label %upb_MiniTableField_CType.exit

upb_MiniTableField_CType.exit:                    ; preds = %upb_MiniTable_SubMessage.exit.thread.a, %14, %upb_MiniTable_SubMessage.exit.thread._crit_edge
  %.0.i2857 = phi ptr [ %.0.i2858, %upb_MiniTable_SubMessage.exit.thread._crit_edge ], [ %.0.i2859, %14 ], [ %.0.i2859, %upb_MiniTable_SubMessage.exit.thread.a ] ; 3 uses
  %.0.i.i25 = phi i64 [ %.pre147, %upb_MiniTable_SubMessage.exit.thread._crit_edge ], [ 8, %14 ], [ 13, %upb_MiniTable_SubMessage.exit.thread.a ]
  %i.z = getelementptr inbounds nuw [4 x i8], ptr @upb_FieldType_CType.c_type, i64 %.0.i.i25
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3   ; 2 uses
  %i.ab = and i8 %.val3.i, 3
end_hunk_1
begin_hunk_2
  %.val21.i = load ptr, ptr %.0.i2857, align 8, !tbaa !10 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.val21.i, i64 12
  %i.aq = getelementptr i8, ptr %.val21.i, i64 22
  %.val.i.i = load i8, ptr %i.aq, align 2, !tbaa !13 ; 5 uses
  %i.ar = getelementptr i8, ptr %.val21.i, i64 23
  %.val3.i.i = load i8, ptr %i.ar, align 1, !tbaa !16
  %i.as = and i8 %.val3.i.i, 16
  %.not.i.i.i.i = icmp eq i8 %i.as, 0             ; 2 uses
  br i1 %.not.i.i.i.i, label %upb_MiniTableField_CType.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  switch i8 %.val.i.i, label %upb_MiniTableField_CType.exit.i.i [
    i8 5, label %upb_MiniTable_SubMessage.exit.i.thread
    i8 12, label %upb_MiniTable_SubMessage.exit.i.thread
  ]

upb_MiniTableField_CType.exit.i.i:                ; preds = %bb.n, %bb.m
  %16 = and i8 %.val.i.i, -2
  %17 = icmp eq i8 %16, 10
  br i1 %17, label %bb.o, label %upb_MiniTable_SubMessage.exit.i

bb.o:                                             ; preds = %upb_MiniTableField_CType.exit.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.val21.i, i64 20
end_hunk_2
begin_hunk_3
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !18
  br label %upb_MiniTable_SubMessage.exit.i

upb_MiniTable_SubMessage.exit.i.thread:           ; preds = %bb.n, %bb.n
  %18 = zext nneg i8 %.val.i.i to i64
  br label %upb_MiniTable_SubMessage.exit.i.thread.a

upb_MiniTable_SubMessage.exit.i:                  ; preds = %bb.o, %upb_MiniTableField_CType.exit.i.i
  %.0.i.i = phi ptr [ %i.ay, %bb.o ], [ null, %upb_MiniTableField_CType.exit.i.i ] ; 2 uses
  %19 = zext i8 %.val.i.i to i64                  ; 2 uses
  br i1 %.not.i.i.i.i, label %upb_MiniTable_SubMessage.exit.i.thread._crit_edge, label %upb_MiniTable_SubMessage.exit.i.thread.a

upb_MiniTable_SubMessage.exit.i.thread.a:         ; preds = %upb_MiniTable_SubMessage.exit.i.thread, %upb_MiniTable_SubMessage.exit.i
  %20 = phi i64 [ %18, %upb_MiniTable_SubMessage.exit.i.thread ], [ %19, %upb_MiniTable_SubMessage.exit.i ]
  %.0.i.i63 = phi ptr [ null, %upb_MiniTable_SubMessage.exit.i.thread ], [ %.0.i.i, %upb_MiniTable_SubMessage.exit.i ] ; 3 uses
  switch i8 %.val.i.i, label %upb_MiniTable_SubMessage.exit.i.thread._crit_edge [
    i8 5, label %upb_MiniTableField_CType.exit.i
    i8 12, label %21
  ]

21:                                               ; preds = %upb_MiniTable_SubMessage.exit.i.thread.a
  br label %upb_MiniTableField_CType.exit.i

upb_MiniTable_SubMessage.exit.i.thread._crit_edge: ; preds = %upb_MiniTable_SubMessage.exit.i.thread.a, %upb_MiniTable_SubMessage.exit.i
  %22 = phi i64 [ %20, %upb_MiniTable_SubMessage.exit.i.thread.a ], [ %19, %upb_MiniTable_SubMessage.exit.i ]
  %.0.i.i62 = phi ptr [ %.0.i.i63, %upb_MiniTable_SubMessage.exit.i.thread.a ], [ %.0.i.i, %upb_MiniTable_SubMessage.exit.i ]
  %.pre149 = add nuw nsw i64 %22, 4294967295
  %.pre151 = and i64 %.pre149, 4294967295
  br label %upb_MiniTableField_CType.exit.i

upb_MiniTableField_CType.exit.i:                  ; preds = %upb_MiniTable_SubMessage.exit.i.thread._crit_edge, %21, %upb_MiniTable_SubMessage.exit.i.thread.a
  %.0.i.i61 = phi ptr [ %.0.i.i62, %upb_MiniTable_SubMessage.exit.i.thread._crit_edge ], [ %.0.i.i63, %21 ], [ %.0.i.i63, %upb_MiniTable_SubMessage.exit.i.thread.a ]
  %.0.i.i.i = phi i64 [ %.pre151, %upb_MiniTable_SubMessage.exit.i.thread._crit_edge ], [ 8, %21 ], [ 13, %upb_MiniTable_SubMessage.exit.i.thread.a ]
  %i.az = getelementptr inbounds nuw [4 x i8], ptr @upb_FieldType_CType.c_type, i64 %.0.i.i.i
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #4
end_hunk_3
begin_hunk_4
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !18
  %i.dx = getelementptr i8, ptr %i.ds, i64 10
  %.val31.i = load i8, ptr %i.dx, align 2, !tbaa !13 ; 3 uses
  %i.dy = and i8 %.val31.i, -2
  %spec.select.i = icmp eq i8 %i.dy, 10
  br i1 %spec.select.i, label %bb.ap, label %upb_MiniTableExtension_GetSubMessage.exit

bb.ap:                                            ; preds = %bb.ao
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8
  br label %upb_MiniTableExtension_GetSubMessage.exit

upb_MiniTableExtension_GetSubMessage.exit:        ; preds = %bb.ap, %bb.ao
  %23 = phi ptr [ null, %bb.ao ], [ %i.ea, %bb.ap ] ; 2 uses
  %i.eb = getelementptr i8, ptr %i.ds, i64 11
  %.val28.i = load i8, ptr %i.eb, align 1, !tbaa !16 ; 2 uses
  %i.ec = zext i8 %.val31.i to i64
end_hunk_4
begin_hunk_5
  ]

bb.at:                                            ; preds = %upb_MiniTableField_CType.exit40
  %i.ej = call fastcc zeroext i1 @_upb_Array_IsEqual(ptr noundef %.sroa.0.0.copyload, ptr noundef %.sroa.0.0.copyload.i, i32 noundef %i.eh, ptr noundef %23, i32 noundef %3)
  br i1 %i.ej, label %.preheader.backedge, label %_upb_Message_ExtensionsAreEqual.exit.thread

.preheader.backedge:                              ; preds = %upb_MiniTableField_CType.exit40, %bb.az, %bb.at, %bb.av, %bb.ba, %bb.bb, %bb.ax, %bb.aw
end_hunk_5
begin_hunk_6
  br i1 %.not5.i.i34, label %.preheader.backedge, label %_upb_Message_ExtensionsAreEqual.exit.thread

bb.bb:                                            ; preds = %bb.au
  %i.ev = call zeroext i1 @upb_Message_IsEqual(ptr noundef %.sroa.0.0.copyload, ptr noundef %.sroa.0.0.copyload.i, ptr noundef %23, i32 noundef %3)
  br i1 %i.ev, label %.preheader.backedge, label %_upb_Message_ExtensionsAreEqual.exit.thread

bb.bc:                                            ; preds = %bb.au
end_hunk_6
