begin_hunk_0_@rebuild_lambda:bb.a
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %._crit_edge.us.us.us, %.preheader148.us.us
  %.1152.us.us.us = phi double [ %.0144156.us.us, %.preheader148.us.us ], [ %.3.us.us.us, %._crit_edge.us.us.us ]
  %.0142151.us.us.us = phi i32 [ 0, %.preheader148.us.us ], [ %i.dm, %._crit_edge.us.us.us ] ; 2 uses
  %i.bg = mul nsw i32 %.0142151.us.us.us, %i.o
  %i.bh = add i32 %i.bg, %i.bf
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.preheader.us.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %.preheader.us.us.us ] ; 2 uses
  %.2149.us.us.us = phi double [ %.3.us.us.us, %bb.c ], [ %.1152.us.us.us, %.preheader.us.us.us ] ; 2 uses
  %i.bi = trunc nuw nsw i64 %indvars.iv to i32
  %i.bj = add i32 %i.bh, %i.bi                    ; 3 uses
  %i.bk = sext i32 %i.bj to i64                   ; 5 uses
end_hunk_0
begin_hunk_1_@rebuild_lambda:bb.a
  br i1 %exitcond.not, label %._crit_edge.us.us.us, label %bb.c, !llvm.loop !71

._crit_edge.us.us.us:                             ; preds = %bb.c
  %i.dm = add nuw nsw i32 %.0142151.us.us.us, 1   ; 2 uses
  %exitcond170.not = icmp eq i32 %i.dm, %i.x
  br i1 %exitcond170.not, label %._crit_edge153.split.us.us.us, label %.preheader.us.us.us, !llvm.loop !72

end_hunk_1
begin_hunk_2_@project_cell_to_face:bb.a

bb.b:                                             ; preds = %.lr.ph, %._crit_edge81
  %indvars.iv94 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next95, %._crit_edge81 ] ; 2 uses
  %i.j = getelementptr inbounds nuw [256 x i8], ptr %i.g, i64 %indvars.iv94
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 248
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !33
end_hunk_2
begin_hunk_3_@project_cell_to_face:bb.a
  %i.al = ptrtoaddr ptr %i.ak to i64              ; 2 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.ah ; 4 uses
  switch i32 %4, label %bb.e [
    i32 2, label %bb.d
    i32 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ %i.q, %bb.d ], [ %i.o, %bb.c ] ; 5 uses
  %.not79 = icmp slt i32 %i.v, 0
  %.not7176 = icmp slt i32 %i.x, 0
  %or.cond = select i1 %.not79, i1 true, i1 %.not7176
end_hunk_3
begin_hunk_4_@project_cell_to_face:bb.a
  %i.an = add nuw i32 %i.y, 1
  %wide.trip.count = zext i32 %i.an to i64        ; 4 uses
  %i.ao = sub i64 %i.al, %i.ad
  %i.ap = sext i32 %.0 to i64
  %i.aq = shl nsw i64 %i.ap, 3
  %i.ar = add i64 %i.aq, %i.al
  %i.as = sub i64 %i.ar, %i.ad
end_hunk_4
begin_hunk_5_@project_cell_to_face:bb.a
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.scevcheck ] ; 2 uses
  %i.bc = trunc i64 %index to i32
  %i.bd = add i32 %i.ax, %i.bc                    ; 2 uses
  %i.be = sub nsw i32 %i.bd, %.0
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.bf ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
end_hunk_5
begin_hunk_6_@project_cell_to_face:bb.a
scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bs = trunc nuw nsw i64 %indvars.iv.ph to i32
  %i.bt = add i32 %i.ax, %i.bs                    ; 2 uses
  %i.bu = sub nsw i32 %i.bt, %.0
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.bv
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !44
end_hunk_6
begin_hunk_7_@project_cell_to_face:bb.a
  %indvars.iv = phi i64 [ %indvars.iv.unr, %scalar.ph.preheader.new ], [ %indvars.iv.next.1, %scalar.ph ] ; 3 uses
  %i.cf = trunc nuw nsw i64 %indvars.iv to i32
  %i.cg = add i32 %i.ax, %i.cf                    ; 2 uses
  %i.ch = sub nsw i32 %i.cg, %.0
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ci
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !44
end_hunk_7
begin_hunk_8_@project_cell_to_face:bb.a
  store double %i.cp, ptr %i.cq, align 8, !tbaa !44
  %i.cr = trunc i64 %indvars.iv to i32
  %.reass = add i32 %i.cr, %invariant.op          ; 2 uses
  %i.cs = sub nsw i32 %.reass, %.0
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ct
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !44
end_hunk_8
