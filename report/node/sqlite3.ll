inline.NumInlined: 12421
inline.NumDeleted: 1708
begin_hunk_0_@geopolyBBox:bb.a
bb.b:                                             ; preds = %bb.a
  %i.c = load float, ptr %2, align 4, !tbaa !227
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  %4 = load float, ptr %i.d, align 4, !tbaa !227
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %6 = load float, ptr %5, align 4, !tbaa !227
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.f = load float, ptr %i.e, align 4, !tbaa !227
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.g = tail call fastcc ptr @geopolyFuncParam(ptr noundef %0, ptr noundef %1, ptr noundef %3) ; 8 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.ah, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %7 = load float, ptr %i.h, align 4, !tbaa !8105 ; 4 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %9 = load float, ptr %8, align 4, !tbaa !8105   ; 4 uses
  %i.i = load i32, ptr %i.g, align 4, !tbaa !8103 ; 2 uses
  %i.j = icmp sgt i32 %i.i, 1
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge
end_hunk_0
begin_hunk_1_@geopolyBBox:bb.a

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.j ] ; 2 uses
  %.0139 = phi float [ %9, %.lr.ph.preheader ], [ %.1, %bb.j ] ; 3 uses
  %.0103138 = phi float [ %9, %.lr.ph.preheader ], [ %.1104, %bb.j ] ; 3 uses
  %.0106137 = phi float [ %7, %.lr.ph.preheader ], [ %.1107, %bb.j ] ; 3 uses
  %.0109136 = phi float [ %7, %.lr.ph.preheader ], [ %.1110, %bb.j ] ; 3 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 3
end_hunk_1
begin_hunk_2_@geopolyBBox:bb.a

bb.g:                                             ; preds = %.lr.ph, %bb.e, %bb.f
  %.1110 = phi float [ %.0109136, %bb.e ], [ %.0109136, %bb.f ], [ %i.l, %.lr.ph ] ; 2 uses
  %.1107 = phi float [ %.0106137, %bb.e ], [ %i.l, %bb.f ], [ %.0106137, %.lr.ph ] ; 2 uses
  %i.o = getelementptr i8, ptr %i.k, i64 4
  %i.p = load float, ptr %i.o, align 4, !tbaa !8105 ; 4 uses
  %i.q = fcmp olt float %i.p, %.0103138
end_hunk_2
begin_hunk_3_@geopolyBBox:bb.a
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.1104 = phi float [ %.0103138, %bb.h ], [ %.0103138, %bb.i ], [ %i.p, %bb.g ] ; 2 uses
  %.1 = phi float [ %.0139, %bb.h ], [ %i.p, %bb.i ], [ %.0139, %bb.g ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !8162

._crit_edge:                                      ; preds = %bb.j, %bb.d
  %.0109.lcssa = phi float [ %7, %bb.d ], [ %.1110, %bb.j ] ; 2 uses
  %.0106.lcssa = phi float [ %7, %bb.d ], [ %.1107, %bb.j ] ; 2 uses
  %.0103.lcssa = phi float [ %9, %bb.d ], [ %.1104, %bb.j ] ; 2 uses
  %.0.lcssa = phi float [ %9, %bb.d ], [ %.1, %bb.j ] ; 2 uses
  %.not125 = icmp eq ptr %3, null
  br i1 %.not125, label %bb.l, label %bb.k

end_hunk_3
begin_hunk_4_@geopolyBBox:bb.a
bb.m:                                             ; preds = %bb.l, %bb.b
  %.0112 = phi ptr [ null, %bb.b ], [ %i.g, %bb.l ] ; 5 uses
  %.2111 = phi float [ %i.c, %bb.b ], [ %.0109.lcssa, %bb.l ] ; 2 uses
  %.2.a = phi float [ %4, %bb.b ], [ %.0106.lcssa, %bb.l ] ; 2 uses
  %.2105 = phi float [ %6, %bb.b ], [ %.0103.lcssa, %bb.l ] ; 2 uses
  %.2 = phi float [ %i.f, %bb.b ], [ %.0.lcssa, %bb.l ] ; 2 uses
  %i.t = tail call i32 @sqlite3_initialize(), !inline_history !1057
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %sqlite3_realloc64.exit, label %sqlite3_realloc64.exit.thread

sqlite3_realloc64.exit:                           ; preds = %bb.m
  %i.u = tail call fastcc ptr @sqlite3Realloc(ptr noundef %.0112, i64 noundef 40), !inline_history !1057 ; 12 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %sqlite3_realloc64.exit.thread, label %bb.ab

end_hunk_4
begin_hunk_5_@geopolyBBox:bb.a
  %i.bq = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store float %.2111, ptr %i.bq, align 4, !tbaa !8105
  %i.br = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store float %.2105, ptr %i.br, align 4, !tbaa !8105
  %10 = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store float %.2.a, ptr %10, align 4, !tbaa !8105
  %11 = getelementptr inbounds nuw i8, ptr %i.u, i64 20
  store float %.2105, ptr %11, align 4, !tbaa !8105
  %12 = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store float %.2.a, ptr %12, align 4, !tbaa !8105
  %i.bs = getelementptr inbounds nuw i8, ptr %i.u, i64 28
  store float %.2, ptr %i.bs, align 4, !tbaa !8105
  %i.bt = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store float %.2111, ptr %i.bt, align 4, !tbaa !8105
  %i.bu = getelementptr inbounds nuw i8, ptr %i.u, i64 36
  store float %.2, ptr %i.bu, align 4, !tbaa !8105
  br label %bb.aj

bb.ac:                                            ; preds = %bb.l
end_hunk_5
