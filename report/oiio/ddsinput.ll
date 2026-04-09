inline.NumInlined: 3419
inline.NumDeleted: 948
begin_hunk_0_@_ZN3fmt3v126detail12parse_arg_idIcRZNS1_23parse_replacement_fieldIcRNS1_14format_handlerIcEEEEPKT_S9_S9_OT0_E10id_adapterEES9_S9_S9_SB_
define linkonce_odr hidden noundef ptr @_ZN3fmt3v126detail12parse_arg_idIcRZNS1_23parse_replacement_fieldIcRNS1_14format_handlerIcEEEEPKT_S9_S9_OT0_E10id_adapterEES9_S9_S9_SB_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(12) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = load i8, ptr %0, align 1, !tbaa !9       ; 5 uses
  %i.d = add i8 %i.c, -48
  %or.cond = icmp ult i8 %i.d, 10
end_hunk_0
begin_hunk_1_@_ZN3fmt3v126detail12parse_arg_idIcRZNS1_23parse_replacement_fieldIcRNS1_14format_handlerIcEEEEPKT_S9_S9_OT0_E10id_adapterEES9_S9_S9_SB_:bb.a
  br i1 %.not28, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = sub i64 %i.b, %i.a
  %scevgep.i.a = getelementptr i8, ptr %0, i64 %i.e ; 2 uses
  %i.f = zext nneg i8 %i.c to i32
end_hunk_1
begin_hunk_2_@_ZN3fmt3v126detail12parse_arg_idIcRZNS1_23parse_replacement_fieldIcRNS1_14format_handlerIcEEEEPKT_S9_S9_OT0_E10id_adapterEES9_S9_S9_SB_:bb.a
  br i1 %.not34.i, label %.critedge.i, label %.lr.ph62, !llvm.loop !603

.lr.ph62:                                         ; preds = %bb.c, %bb.d
  %i.n = phi ptr [ %i.m, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  %i.o = phi i32 [ %i.l, %bb.d ], [ %i.g, %bb.c ] ; 4 uses
  %.027.i61 = phi i32 [ %i.o, %bb.d ], [ 0, %bb.c ]
  %.028.i60 = phi ptr [ %i.n, %bb.d ], [ %0, %bb.c ]
end_hunk_2
begin_hunk_3_@_ZN3fmt3v126detail12parse_arg_idIcRZNS1_23parse_replacement_fieldIcRNS1_14format_handlerIcEEEEPKT_S9_S9_OT0_E10id_adapterEES9_S9_S9_SB_:bb.a
  br label %.critedge.i, !llvm.loop !603

.critedge.i:                                      ; preds = %bb.d, %..critedge.i_crit_edge, %bb.c
  %.028.i.lcssa = phi ptr [ %.028.i60, %..critedge.i_crit_edge ], [ %0, %bb.c ], [ %i.n, %bb.d ]
  %.027.i.lcssa = phi i32 [ %.027.i61, %..critedge.i_crit_edge ], [ 0, %bb.c ], [ %i.o, %bb.d ]
  %.lcssa = phi i32 [ %i.o, %..critedge.i_crit_edge ], [ %i.g, %bb.c ], [ %i.l, %bb.d ] ; 2 uses
  %.lcssa.i = phi ptr [ %i.n, %..critedge.i_crit_edge ], [ %scevgep.i.a, %bb.c ], [ %scevgep.i.a, %bb.d ] ; 4 uses
  %i.r = ptrtoint ptr %.lcssa.i to i64
  %i.s = sub i64 %i.r, %i.a                       ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN3fmt3v126detail12parse_arg_idIcRZNS1_23parse_replacement_fieldIcRNS1_14format_handlerIcEEEEPKT_S9_S9_OT0_E10id_adapterEES9_S9_S9_SB_:bb.a
bb.f:                                             ; preds = %bb.e
  %i.v = zext i32 %.027.i.lcssa to i64
  %i.w = mul nuw nsw i64 %i.v, 10
  %i.x = load i8, ptr %.028.i.lcssa, align 1, !tbaa !9
  %i.y = sext i8 %i.x to i64
  %i.z = add nsw i64 %i.y, 4294967248
  %i.aa = and i64 %i.z, 4294967294
end_hunk_4
begin_hunk_5_@_ZN3fmt3v126detail18parse_dynamic_specIcEENS1_25parse_dynamic_spec_resultIT_EEPKS4_S7_RiRNS1_7arg_refIS4_EERNS0_13parse_contextIS4_EE:bb.a
  br i1 %or.cond23, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %1 to i64
  %i.e = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.f = sub i64 %i.d, %i.e
  %scevgep.i.a = getelementptr i8, ptr %0, i64 %i.f ; 2 uses
  %i.g = zext nneg i8 %i.b to i32
end_hunk_5
begin_hunk_6_@_ZN3fmt3v126detail18parse_dynamic_specIcEENS1_25parse_dynamic_spec_resultIT_EEPKS4_S7_RiRNS1_7arg_refIS4_EERNS0_13parse_contextIS4_EE:bb.a
  br i1 %.not34.i, label %.critedge.i, label %.lr.ph, !llvm.loop !603

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.i, %bb.b ] ; 5 uses
  %i.p = phi i32 [ %i.m, %bb.c ], [ %i.h, %bb.b ] ; 4 uses
  %.027.i37 = phi i32 [ %i.p, %bb.c ], [ 0, %bb.b ]
  %.028.i36 = phi ptr [ %i.o, %bb.c ], [ %0, %bb.b ]
end_hunk_6
begin_hunk_7_@_ZN3fmt3v126detail18parse_dynamic_specIcEENS1_25parse_dynamic_spec_resultIT_EEPKS4_S7_RiRNS1_7arg_refIS4_EERNS0_13parse_contextIS4_EE:bb.a
  br label %.critedge.i, !llvm.loop !603

.critedge.i:                                      ; preds = %bb.c, %..critedge.i_crit_edge, %bb.b
  %.028.i.lcssa = phi ptr [ %.028.i36, %..critedge.i_crit_edge ], [ %0, %bb.b ], [ %i.o, %bb.c ]
  %.027.i.lcssa = phi i32 [ %.027.i37, %..critedge.i_crit_edge ], [ 0, %bb.b ], [ %i.p, %bb.c ]
  %.lcssa = phi i32 [ %i.p, %..critedge.i_crit_edge ], [ %i.h, %bb.b ], [ %i.m, %bb.c ] ; 3 uses
  %.lcssa.i = phi ptr [ %i.o, %..critedge.i_crit_edge ], [ %scevgep.i.a, %bb.b ], [ %scevgep.i.a, %bb.c ] ; 2 uses
  %i.s = ptrtoint ptr %.lcssa.i to i64
  %i.t = sub i64 %i.s, %i.e                       ; 2 uses
end_hunk_7
begin_hunk_8_@_ZN3fmt3v126detail18parse_dynamic_specIcEENS1_25parse_dynamic_spec_resultIT_EEPKS4_S7_RiRNS1_7arg_refIS4_EERNS0_13parse_contextIS4_EE:bb.a
bb.e:                                             ; preds = %bb.d
  %i.w = zext i32 %.027.i.lcssa to i64
  %i.x = mul nuw nsw i64 %i.w, 10
  %i.y = load i8, ptr %.028.i.lcssa, align 1, !tbaa !9
  %i.z = sext i8 %i.y to i64
  %i.aa = add nsw i64 %i.z, 4294967248
  %i.ab = and i64 %i.aa, 4294967294
end_hunk_8
begin_hunk_9_@_ZN3fmt3v126detail12parse_arg_idIcNS1_20dynamic_spec_handlerIcEEEEPKT_S7_S7_OT0_
define linkonce_odr hidden noundef ptr @_ZN3fmt3v126detail12parse_arg_idIcNS1_20dynamic_spec_handlerIcEEEEPKT_S7_S7_OT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = load i8, ptr %0, align 1, !tbaa !9       ; 5 uses
  %i.d = add i8 %i.c, -48
  %or.cond = icmp ult i8 %i.d, 10
end_hunk_9
begin_hunk_10_@_ZN3fmt3v126detail12parse_arg_idIcNS1_20dynamic_spec_handlerIcEEEEPKT_S7_S7_OT0_:bb.a
  br i1 %.not28, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = sub i64 %i.b, %i.a
  %scevgep.i.a = getelementptr i8, ptr %0, i64 %i.e ; 2 uses
  %i.f = zext nneg i8 %i.c to i32
end_hunk_10
begin_hunk_11_@_ZN3fmt3v126detail12parse_arg_idIcNS1_20dynamic_spec_handlerIcEEEEPKT_S7_S7_OT0_:bb.a
  br i1 %.not34.i, label %.critedge.i, label %.lr.ph50, !llvm.loop !603

.lr.ph50:                                         ; preds = %bb.c, %bb.d
  %i.n = phi ptr [ %i.m, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  %i.o = phi i32 [ %i.l, %bb.d ], [ %i.g, %bb.c ] ; 4 uses
  %.027.i49 = phi i32 [ %i.o, %bb.d ], [ 0, %bb.c ]
  %.028.i48 = phi ptr [ %i.n, %bb.d ], [ %0, %bb.c ]
end_hunk_11
begin_hunk_12_@_ZN3fmt3v126detail12parse_arg_idIcNS1_20dynamic_spec_handlerIcEEEEPKT_S7_S7_OT0_:bb.a
  br label %.critedge.i, !llvm.loop !603

.critedge.i:                                      ; preds = %bb.d, %..critedge.i_crit_edge, %bb.c
  %.028.i.lcssa = phi ptr [ %.028.i48, %..critedge.i_crit_edge ], [ %0, %bb.c ], [ %i.n, %bb.d ]
  %.027.i.lcssa = phi i32 [ %.027.i49, %..critedge.i_crit_edge ], [ 0, %bb.c ], [ %i.o, %bb.d ]
  %.lcssa = phi i32 [ %i.o, %..critedge.i_crit_edge ], [ %i.g, %bb.c ], [ %i.l, %bb.d ] ; 2 uses
  %.lcssa.i = phi ptr [ %i.n, %..critedge.i_crit_edge ], [ %scevgep.i.a, %bb.c ], [ %scevgep.i.a, %bb.d ] ; 4 uses
  %i.r = ptrtoint ptr %.lcssa.i to i64
  %i.s = sub i64 %i.r, %i.a                       ; 2 uses
end_hunk_12
begin_hunk_13_@_ZN3fmt3v126detail12parse_arg_idIcNS1_20dynamic_spec_handlerIcEEEEPKT_S7_S7_OT0_:bb.a
bb.f:                                             ; preds = %bb.e
  %i.v = zext i32 %.027.i.lcssa to i64
  %i.w = mul nuw nsw i64 %i.v, 10
  %i.x = load i8, ptr %.028.i.lcssa, align 1, !tbaa !9
  %i.y = sext i8 %i.x to i64
  %i.z = add nsw i64 %i.y, 4294967248
  %i.aa = and i64 %i.z, 4294967294
end_hunk_13
