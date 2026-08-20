inline.NumInlined: 6988
inline.NumDeleted: 169
loop-unroll.NumCompletelyUnrolled: 436
loop-unroll.NumRuntimeUnrolled: 118
loop-unroll.NumUnrolled: 560
begin_hunk_0_@_ZN10tetgenmesh13tri_tri_interEPdS0_S0_S0_S0_S0_:bb.a

select.unfold:                                    ; preds = %bb.f, %bb.d, %bb.e, %bb.c
  %i.ab = phi i1 [ false, %bb.d ], [ true, %bb.e ], [ false, %bb.c ], [ false, %bb.f ] ; 3 uses
  %i.ac = phi i1 [ true, %bb.d ], [ false, %bb.e ], [ false, %bb.c ], [ true, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #40
  %spec.select = zext i1 %i.ab to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #40
  %i.ad = call noundef i32 @_ZN10tetgenmesh13tri_edge_tailEPdS0_S0_S0_S0_S0_ddiPiS1_(ptr nonnull readnone align 8 poison, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %5, ptr noundef %6, ptr noundef null, double noundef %i.h, double noundef %i.i, i32 noundef 1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  switch i32 %i.ad, label %select.unfold117.thread [
    i32 4, label %bb.h
    i32 2, label %bb.g
  ]

bb.g:                                             ; preds = %select.unfold
  %i.ae = load i32, ptr %i.c, align 4, !tbaa !33
  %i.af = icmp eq i32 %i.ae, 2
  br i1 %i.af, label %select.unfold117.thread, label %_ZN10tetgenmesh19tri_edge_inter_tailEPdS0_S0_S0_S0_dd.exit109

bb.h:                                             ; preds = %select.unfold
  %i.ag = load i32, ptr %i.c, align 4, !tbaa !33
  switch i32 %i.ag, label %_ZN10tetgenmesh19tri_edge_inter_tailEPdS0_S0_S0_S0_dd.exit109 [
    i32 2, label %bb.i
    i32 3, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !33
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %select.unfold117.thread, label %_ZN10tetgenmesh19tri_edge_inter_tailEPdS0_S0_S0_S0_dd.exit109

_ZN10tetgenmesh19tri_edge_inter_tailEPdS0_S0_S0_S0_dd.exit109: ; preds = %bb.h, %bb.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  br label %bb.r

select.unfold117.thread:                          ; preds = %bb.g, %select.unfold, %bb.i
  %..ph = phi i32 [ 2, %bb.i ], [ 0, %select.unfold ], [ 2, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  %i.ak = select i1 %i.ab, i32 2, i32 1
  br label %bb.k

bb.k:                                             ; preds = %select.unfold117.thread, %bb.j
  %.128 = phi i32 [ 0, %bb.j ], [ %..ph, %select.unfold117.thread ]
  %i.al = phi i1 [ true, %bb.j ], [ false, %select.unfold117.thread ]
  %i.am = phi i32 [ %i.ak, %bb.j ], [ %spec.select, %select.unfold117.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  %i.an = call noundef i32 @_ZN10tetgenmesh13tri_edge_tailEPdS0_S0_S0_S0_S0_ddiPiS1_(ptr nonnull readnone align 8 poison, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %6, ptr noundef %4, ptr noundef null, double noundef %i.i, double noundef %i.g, i32 noundef 1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  switch i32 %i.an, label %select.unfold121 [
    i32 4, label %bb.m
    i32 2, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.ao = load i32, ptr %i.a, align 4, !tbaa !33
  %i.ap = icmp eq i32 %i.ao, 2
  br i1 %i.ap, label %select.unfold121, label %_ZN10tetgenmesh19tri_edge_inter_tailEPdS0_S0_S0_S0_dd.exit113

bb.m:                                             ; preds = %bb.k
  %i.aq = load i32, ptr %i.a, align 4, !tbaa !33
  switch i32 %i.aq, label %_ZN10tetgenmesh19tri_edge_inter_tailEPdS0_S0_S0_S0_dd.exit113 [
    i32 2, label %bb.n
    i32 3, label %select.unfold121
  ]

bb.n:                                             ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !33
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %select.unfold121, label %_ZN10tetgenmesh19tri_edge_inter_tailEPdS0_S0_S0_S0_dd.exit113

_ZN10tetgenmesh19tri_edge_inter_tailEPdS0_S0_S0_S0_dd.exit113: ; preds = %bb.m, %bb.n, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  br label %bb.r

select.unfold121:                                 ; preds = %bb.n, %bb.l, %bb.m, %bb.k
  %i.au = phi i1 [ false, %bb.l ], [ true, %bb.m ], [ false, %bb.k ], [ false, %bb.n ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %i.av = zext i1 %i.au to i32
  %spec.select103 = add nuw nsw i32 %i.am, %i.av
  %i.aw = icmp eq i32 %spec.select103, 3
  br i1 %i.aw, label %bb.r, label %bb.o

bb.o:                                             ; preds = %select.unfold121
  %i.ax = call noundef i32 @_ZN10tetgenmesh19tri_edge_inter_tailEPdS0_S0_S0_S0_dd(ptr nonnull align 8 poison, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %1, ptr noundef %2, double noundef %i.n, double noundef %i.o)
  %i.ay = icmp eq i32 %i.ax, 1
  br i1 %i.ay, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.az = call noundef i32 @_ZN10tetgenmesh19tri_edge_inter_tailEPdS0_S0_S0_S0_dd(ptr nonnull align 8 poison, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %2, ptr noundef %3, double noundef %i.o, double noundef %i.p)
  %i.ba = icmp eq i32 %i.az, 1
  br i1 %i.ba, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bb = call noundef i32 @_ZN10tetgenmesh19tri_edge_inter_tailEPdS0_S0_S0_S0_dd(ptr nonnull align 8 poison, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %3, ptr noundef %1, double noundef %i.p, double noundef %i.n)
  %i.bc = icmp eq i32 %i.bb, 1                    ; 2 uses
  %i.bd = or i1 %i.bc, %i.al
  %brmerge104 = or i1 %i.bd, %i.ab
  %brmerge105 = or i1 %i.au, %brmerge104
  %.mux.mux.mux = select i1 %i.bc, i32 1, i32 3
  %spec.select125 = select i1 %i.ac, i32 2, i32 %.128
  %spec.select126 = select i1 %brmerge105, i32 %.mux.mux.mux, i32 %spec.select125
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN10tetgenmesh19tri_edge_inter_tailEPdS0_S0_S0_S0_dd.exit113, %_ZN10tetgenmesh19tri_edge_inter_tailEPdS0_S0_S0_S0_dd.exit109, %_ZN10tetgenmesh19tri_edge_inter_tailEPdS0_S0_S0_S0_dd.exit, %select.unfold121, %bb.p, %bb.o, %bb.b, %bb.a
  %.295 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ 4, %select.unfold121 ], [ 1, %_ZN10tetgenmesh19tri_edge_inter_tailEPdS0_S0_S0_S0_dd.exit ], [ 1, %_ZN10tetgenmesh19tri_edge_inter_tailEPdS0_S0_S0_S0_dd.exit109 ], [ 1, %_ZN10tetgenmesh19tri_edge_inter_tailEPdS0_S0_S0_S0_dd.exit113 ], [ %spec.select126, %bb.q ], [ 1, %bb.o ], [ 1, %bb.p ]
  ret i32 %.295
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_ZN10tetgenmesh8lu_decmpEPA4_diPiPdi(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) initializes((0, 8)) %4, i32 noundef %5) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = alloca [4 x double], align 16            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store double 1.000000e+00, ptr %4, align 8, !tbaa !30
  %i.b = add i32 %5, %2                           ; 6 uses
  %i.c = icmp sgt i32 %2, 0
  br i1 %i.c, label %.preheader115.us.preheader, label %.preheader113

.preheader115.us.preheader:                       ; preds = %bb.a
  %i.d = sext i32 %5 to i64                       ; 2 uses
  %i.e = sext i32 %i.b to i64                     ; 2 uses
  br label %.preheader115.us

.preheader115.us:                                 ; preds = %.preheader115.us.preheader, %bb.c
  %indvars.iv142 = phi i64 [ %i.d, %.preheader115.us.preheader ], [ %indvars.iv.next143, %bb.c ] ; 5 uses
  %i.f = getelementptr inbounds [32 x i8], ptr %1, i64 %indvars.iv142
  br label %bb.b

bb.b:                                             ; preds = %.preheader115.us, %bb.b
  %indvars.iv = phi i64 [ %i.d, %.preheader115.us ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.0101120.us = phi double [ 0.000000e+00, %.preheader115.us ], [ %.1102.us, %bb.b ] ; 2 uses
  %i.g = getelementptr inbounds [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = load double, ptr %i.g, align 8, !tbaa !30
  %i.i = tail call double @llvm.fabs.f64(double %i.h) ; 2 uses
  %i.j = fcmp olt double %.0101120.us, %i.i
  %.1102.us = select i1 %i.j, double %i.i, double %.0101120.us ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.k = icmp slt i64 %indvars.iv.next, %i.e
  br i1 %i.k, label %bb.b, label %._crit_edge.us, !llvm.loop !373

bb.c:                                             ; preds = %._crit_edge.us
  %i.l = fdiv double 1.000000e+00, %.1102.us
  %i.m = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv142
  store double %i.l, ptr %i.m, align 8, !tbaa !30
  %i.n = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv142
  %i.o = trunc nsw i64 %indvars.iv142 to i32
  store i32 %i.o, ptr %i.n, align 4, !tbaa !33
  %indvars.iv.next143 = add nsw i64 %indvars.iv142, 1 ; 2 uses
  %i.p = icmp slt i64 %indvars.iv.next143, %i.e
  br i1 %i.p, label %.preheader115.us, label %.preheader113, !llvm.loop !374

._crit_edge.us:                                   ; preds = %bb.b
  %i.q = fcmp une double %.1102.us, 0.000000e+00
  br i1 %i.q, label %bb.c, label %.loopexit114

.preheader113:                                    ; preds = %bb.c, %bb.a
  %i.r = add nsw i32 %i.b, -1                     ; 3 uses
  %i.s = icmp slt i32 %5, %i.r
  br i1 %i.s, label %.preheader112.preheader, label %._crit_edge138

.preheader112.preheader:                          ; preds = %.preheader113
  %i.t = sext i32 %5 to i64
  %i.u = sext i32 %i.b to i64                     ; 2 uses
  %i.v = add i32 %5, 1
  %scevgep172 = getelementptr i8, ptr %1, i64 8
  %i.w = add i32 %2, -2                           ; 2 uses
  %scevgep176 = getelementptr i8, ptr %1, i64 8
  %i.x = add i32 %5, %2
  %i.y = add i32 %5, %2
  br label %.preheader112

.loopexit111:                                     ; preds = %..loopexit_crit_edge.us, %bb.f
  %lftr.wideiv163 = trunc i64 %indvars.iv.next146 to i32
  %exitcond164.not = icmp eq i32 %i.r, %lftr.wideiv163
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond164.not, label %._crit_edge138, label %.preheader112, !llvm.loop !375

.preheader112:                                    ; preds = %.preheader112.preheader, %.loopexit111
  %indvar = phi i32 [ 0, %.preheader112.preheader ], [ %indvar.next, %.loopexit111 ] ; 6 uses
  %indvars.iv150.in = phi i32 [ %5, %.preheader112.preheader ], [ %indvars.iv150, %.loopexit111 ]
  %indvars.iv145 = phi i64 [ %i.t, %.preheader112.preheader ], [ %indvars.iv.next146, %.loopexit111 ] ; 12 uses
  %.098136 = phi i32 [ 0, %.preheader112.preheader ], [ %.2100.lcssa, %.loopexit111 ] ; 2 uses
  %.neg = add i32 %indvar, 1
  %i.z = sub i32 %i.w, %indvar                    ; 2 uses
  %i.aa = zext i32 %i.z to i64
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %i.ac = add i32 %i.v, %indvar
  %i.ad = sext i32 %i.ac to i64
  %i.ae = shl nsw i64 %i.ad, 3                    ; 4 uses
  %i.af = sub i32 %i.w, %indvar
  %i.ag = zext i32 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 3                ; 2 uses
  %indvars.iv150 = add i32 %indvars.iv150.in, 1   ; 2 uses
  %i.ai = sext i32 %indvars.iv150 to i64          ; 5 uses
  %i.aj = icmp slt i64 %indvars.iv145, %i.u
  br i1 %i.aj, label %.lr.ph, label %.loopexit114

.lr.ph:                                           ; preds = %.preheader112
  %i.ak = sub i32 %2, %indvar
  %invariant.gep = getelementptr [8 x i8], ptr %1, i64 %indvars.iv145 ; 3 uses
  %xtraiter = and i32 %i.ak, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.al = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv145
  %i.am = load i32, ptr %i.al, align 4, !tbaa !33
  %i.an = sext i32 %i.am to i64                   ; 2 uses
  %gep.prol = getelementptr [32 x i8], ptr %invariant.gep, i64 %i.an
  %i.ao = load double, ptr %gep.prol, align 8, !tbaa !30
  %i.ap = tail call double @llvm.fabs.f64(double %i.ao)
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.an
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !30
  %i.as = fmul double %i.ap, %i.ar                ; 2 uses
  %i.at = fcmp ogt double %i.as, 0.000000e+00     ; 2 uses
  %.3.prol = select i1 %i.at, double %i.as, double 0.000000e+00 ; 2 uses
  %i.au = trunc nsw i64 %indvars.iv145 to i32
  %.2100.prol = select i1 %i.at, i32 %i.au, i32 %.098136 ; 2 uses
  %indvars.iv.next148.prol = add nsw i64 %indvars.iv145, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %.3.lcssa.unr = phi double [ poison, %.lr.ph ], [ %.3.prol, %.prol.loopexit.unr-lcssa ]
  %.2100.lcssa.unr = phi i32 [ poison, %.lr.ph ], [ %.2100.prol, %.prol.loopexit.unr-lcssa ]
  %indvars.iv147.unr = phi i64 [ %indvars.iv145, %.lr.ph ], [ %indvars.iv.next148.prol, %.prol.loopexit.unr-lcssa ]
  %.199126.unr = phi i32 [ %.098136, %.lr.ph ], [ %.2100.prol, %.prol.loopexit.unr-lcssa ]
  %.2103125.unr = phi double [ 0.000000e+00, %.lr.ph ], [ %.3.prol, %.prol.loopexit.unr-lcssa ]
  %i.av = icmp eq i32 %2, %.neg
  br i1 %i.av, label %._crit_edge, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv147 = phi i64 [ %indvars.iv.next148.1, %.lr.ph.new ], [ %indvars.iv147.unr, %.prol.loopexit ] ; 4 uses
  %.199126 = phi i32 [ %.2100.1, %.lr.ph.new ], [ %.199126.unr, %.prol.loopexit ]
  %.2103125 = phi double [ %.3.1, %.lr.ph.new ], [ %.2103125.unr, %.prol.loopexit ] ; 2 uses
  %i.aw = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv147
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !33
  %i.ay = sext i32 %i.ax to i64                   ; 2 uses
  %gep = getelementptr [32 x i8], ptr %invariant.gep, i64 %i.ay
  %i.az = load double, ptr %gep, align 8, !tbaa !30
  %i.ba = tail call double @llvm.fabs.f64(double %i.az)
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ay
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !30
  %i.bd = fmul double %i.ba, %i.bc                ; 2 uses
  %i.be = fcmp olt double %.2103125, %i.bd        ; 2 uses
  %.3 = select i1 %i.be, double %i.bd, double %.2103125 ; 2 uses
  %i.bf = trunc nsw i64 %indvars.iv147 to i32
  %.2100 = select i1 %i.be, i32 %i.bf, i32 %.199126
  %indvars.iv.next148 = add nsw i64 %indvars.iv147, 1 ; 2 uses
  %i.bg = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv.next148
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !33
  %i.bi = sext i32 %i.bh to i64                   ; 2 uses
  %gep.1 = getelementptr [32 x i8], ptr %invariant.gep, i64 %i.bi
  %i.bj = load double, ptr %gep.1, align 8, !tbaa !30
  %i.bk = tail call double @llvm.fabs.f64(double %i.bj)
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.bi
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !30
  %i.bn = fmul double %i.bk, %i.bm                ; 2 uses
  %i.bo = fcmp olt double %.3, %i.bn              ; 2 uses
  %.3.1 = select i1 %i.bo, double %i.bn, double %.3 ; 2 uses
  %i.bp = trunc nsw i64 %indvars.iv.next148 to i32
  %.2100.1 = select i1 %i.bo, i32 %i.bp, i32 %.2100 ; 2 uses
  %indvars.iv.next148.1 = add nsw i64 %indvars.iv147, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next148.1 to i32
  %exitcond.not.1 = icmp eq i32 %i.b, %lftr.wideiv.1
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.new, !llvm.loop !376

._crit_edge:                                      ; preds = %.lr.ph.new, %.prol.loopexit
  %.3.lcssa = phi double [ %.3.lcssa.unr, %.prol.loopexit ], [ %.3.1, %.lr.ph.new ]
  %.2100.lcssa = phi i32 [ %.2100.lcssa.unr, %.prol.loopexit ], [ %.2100.1, %.lr.ph.new ] ; 3 uses
  %i.bq = fcmp oeq double %.3.lcssa, 0.000000e+00
  br i1 %i.bq, label %.loopexit114, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.br = trunc nsw i64 %indvars.iv145 to i32
  %.not = icmp eq i32 %.2100.lcssa, %i.br
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bs = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv145 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !33
  %i.bu = sext i32 %.2100.lcssa to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr %3, i64 %i.bu ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !33
  store i32 %i.bw, ptr %i.bs, align 4, !tbaa !33
  store i32 %i.bt, ptr %i.bv, align 4, !tbaa !33
  %i.bx = load double, ptr %4, align 8, !tbaa !30
  %i.by = fneg double %i.bx
  store double %i.by, ptr %4, align 8, !tbaa !30
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bz = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv145
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !33
  %i.cb = sext i32 %i.ca to i64                   ; 2 uses
  %i.cc = getelementptr inbounds [32 x i8], ptr %1, i64 %i.cb ; 5 uses
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %indvars.iv145
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !30
  %indvars.iv.next146 = add nsw i64 %indvars.iv145, 1 ; 3 uses
  %i.cf = icmp slt i64 %indvars.iv.next146, %i.u
  br i1 %i.cf, label %.lr.ph133.preheader, label %.loopexit111

.lr.ph133.preheader:                              ; preds = %bb.f
  %scevgep = getelementptr i8, ptr %1, i64 %i.ae
  %i.cg = getelementptr i8, ptr %scevgep172, i64 %i.ae
  %scevgep173 = getelementptr i8, ptr %i.cg, i64 %i.ah
  %i.ch = shl nsw i64 %i.cb, 5                    ; 2 uses
  %6 = getelementptr i8, ptr %1, i64 %i.ch
  %scevgep175 = getelementptr i8, ptr %6, i64 %i.ae
  %scevgep175.a = getelementptr i8, ptr %scevgep176, i64 %i.ch
  %i.ci = getelementptr i8, ptr %scevgep175.a, i64 %i.ae
  %scevgep177 = getelementptr i8, ptr %i.ci, i64 %i.ah
  %min.iters.check = icmp ult i32 %i.z, 3
  %n.vec = and i64 %i.ab, 8589934588              ; 3 uses
  %i.cj = add nsw i64 %n.vec, %i.ai
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br label %.lr.ph133

.lr.ph133:                                        ; preds = %.lr.ph133.preheader, %..loopexit_crit_edge.us
  %indvars.iv157 = phi i64 [ %indvars.iv.next158, %..loopexit_crit_edge.us ], [ %i.ai, %.lr.ph133.preheader ] ; 2 uses
  %i.ck = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv157
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !33
  %i.cm = sext i32 %i.cl to i64                   ; 2 uses
  %i.cn = getelementptr inbounds [32 x i8], ptr %1, i64 %i.cm ; 5 uses
  %i.co = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %indvars.iv145 ; 2 uses
  %i.cp = load double, ptr %i.co, align 8, !tbaa !30
  %i.cq = fdiv double %i.cp, %i.ce                ; 3 uses
  store double %i.cq, ptr %i.co, align 8, !tbaa !30
  %i.cr = fcmp une double %i.cq, 0.000000e+00
  br i1 %i.cr, label %.preheader.us, label %..loopexit_crit_edge.us

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv152 = phi i64 [ %indvars.iv.next153.1, %scalar.ph ], [ %indvars.iv152.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %indvars.iv152
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !30
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %indvars.iv152 ; 2 uses
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !30
  %i.cw = tail call double @llvm.fmuladd.f64(double %i.dc, double %i.ct, double %i.cv)
  store double %i.cw, ptr %i.cu, align 8, !tbaa !30
  %indvars.iv.next153 = add nsw i64 %indvars.iv152, 1 ; 2 uses
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %indvars.iv.next153
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !30
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %indvars.iv.next153 ; 2 uses
  %i.da = load double, ptr %i.cz, align 8, !tbaa !30
  %i.db = tail call double @llvm.fmuladd.f64(double %i.dc, double %i.cy, double %i.da)
  store double %i.db, ptr %i.cz, align 8, !tbaa !30
  %indvars.iv.next153.1 = add nsw i64 %indvars.iv152, 2 ; 2 uses
  %lftr.wideiv155.1 = trunc i64 %indvars.iv.next153.1 to i32
  %exitcond156.not.1 = icmp eq i32 %i.b, %lftr.wideiv155.1
  br i1 %exitcond156.not.1, label %..loopexit_crit_edge.us, label %scalar.ph, !llvm.loop !377

..loopexit_crit_edge.us:                          ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.lr.ph133
  %indvars.iv.next158 = add nsw i64 %indvars.iv157, 1 ; 2 uses
  %lftr.wideiv160 = trunc i64 %indvars.iv.next158 to i32
  %exitcond161.not = icmp eq i32 %i.b, %lftr.wideiv160
  br i1 %exitcond161.not, label %.loopexit111, label %.lr.ph133, !llvm.loop !378

.preheader.us:                                    ; preds = %.lr.ph133
  %i.dc = fneg double %i.cq                       ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.us
  %i.dd = shl nsw i64 %i.cm, 5                    ; 2 uses
  %scevgep171 = getelementptr i8, ptr %scevgep, i64 %i.dd
  %scevgep174 = getelementptr i8, ptr %scevgep173, i64 %i.dd
  %bound0 = icmp ult ptr %scevgep171, %scevgep177
  %bound1 = icmp ult ptr %scevgep175, %scevgep174
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.dc, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.de = add i64 %index, %i.ai                   ; 2 uses
  %i.df = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %i.de ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %wide.load = load <2 x double>, ptr %i.df, align 8, !tbaa !30, !alias.scope !379
  %wide.load178 = load <2 x double>, ptr %i.dg, align 8, !tbaa !30, !alias.scope !379
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.de ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16 ; 2 uses
  %wide.load179 = load <2 x double>, ptr %i.dh, align 8, !tbaa !30, !alias.scope !382, !noalias !379
  %wide.load180 = load <2 x double>, ptr %i.di, align 8, !tbaa !30, !alias.scope !382, !noalias !379
  %i.dj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load179)
  %i.dk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load178, <2 x double> %wide.load180)
  store <2 x double> %i.dj, ptr %i.dh, align 8, !tbaa !30, !alias.scope !382, !noalias !379
  store <2 x double> %i.dk, ptr %i.di, align 8, !tbaa !30, !alias.scope !382, !noalias !379
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dl = icmp eq i64 %index.next, %n.vec
  br i1 %i.dl, label %middle.block, label %vector.body, !llvm.loop !384

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader.us, %middle.block
  %indvars.iv152.ph = phi i64 [ %i.ai, %vector.memcheck ], [ %i.ai, %.preheader.us ], [ %i.cj, %middle.block ] ; 5 uses
  %i.dm = trunc i64 %indvars.iv152.ph to i32      ; 2 uses
  %i.dn = sub i32 %i.x, %i.dm
  %.neg184 = add i32 %i.dm, 1
  %xtraiter182 = and i32 %i.dn, 1
  %lcmp.mod183.not = icmp eq i32 %xtraiter182, 0
  br i1 %lcmp.mod183.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.do = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %indvars.iv152.ph
  %i.dp = load double, ptr %i.do, align 8, !tbaa !30
  %i.dq = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %indvars.iv152.ph ; 2 uses
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !30
  %i.ds = tail call double @llvm.fmuladd.f64(double %i.dc, double %i.dp, double %i.dr)
  store double %i.ds, ptr %i.dq, align 8, !tbaa !30
  %indvars.iv.next153.prol = add nsw i64 %indvars.iv152.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv152.unr = phi i64 [ %indvars.iv152.ph, %scalar.ph.preheader ], [ %indvars.iv.next153.prol, %scalar.ph.prol ]
  %i.dt = icmp eq i32 %i.y, %.neg184
  br i1 %i.dt, label %..loopexit_crit_edge.us, label %scalar.ph

._crit_edge138:                                   ; preds = %.loopexit111, %.preheader113
  %i.du = sext i32 %i.r to i64                    ; 2 uses
  %i.dv = getelementptr inbounds [4 x i8], ptr %3, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !33
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds [32 x i8], ptr %1, i64 %i.dx
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %i.du
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !30
  %i.eb = fcmp une double %i.ea, 0.000000e+00
  br label %.loopexit114

.loopexit114:                                     ; preds = %._crit_edge.us, %.preheader112, %._crit_edge, %._crit_edge138
  %.0104 = phi i1 [ false, %.preheader112 ], [ %i.eb, %._crit_edge138 ], [ false, %._crit_edge ], [ false, %._crit_edge.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  ret i1 %.0104
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN10tetgenmesh8lu_solveEPA4_diPiPdi(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(69984) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, i32 noundef %5) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = alloca [4 x double], align 16            ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  %i.b = add i32 %5, %2                           ; 5 uses
  %i.c = icmp sgt i32 %2, 0
  br i1 %i.c, label %.preheader65.preheader, label %._crit_edge84

.preheader65.preheader:                           ; preds = %bb.a
  %i.d = sext i32 %5 to i64
  %i.e = shl nsw i64 %i.d, 3
  %scevgep = getelementptr i8, ptr %i.a, i64 %i.e
  %i.f = add i32 %5, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %i.b, i32 %i.f)
  %i.g = xor i32 %5, -1
  %i.h = add i32 %smax, %i.g
  %i.i = zext i32 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 3
  %i.k = add nuw nsw i64 %i.j, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.k, i1 false), !tbaa !30
  %i.l = sext i32 %5 to i64                       ; 3 uses
  %i.m = sext i32 %i.b to i64
  br label %.preheader65

.preheader65:                                     ; preds = %.preheader65.preheader, %._crit_edge
  %indvars.iv88 = phi i64 [ %i.l, %.preheader65.preheader ], [ %indvars.iv.next89, %._crit_edge ] ; 5 uses
  %i.n = add nsw i64 %indvars.iv88, %i.l
  %i.o = icmp sgt i64 %indvars.iv88, 0
  %i.p = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv88
  %i.q = load i32, ptr %i.p, align 4, !tbaa !33
  %i.r = sext i32 %i.q to i64                     ; 2 uses
  br i1 %i.o, label %.lr.ph70, label %._crit_edge

.lr.ph70:                                         ; preds = %.preheader65
  %i.s = getelementptr inbounds [32 x i8], ptr %1, i64 %i.r
  br label %bb.b

.preheader63.preheader:                           ; preds = %._crit_edge
  %i.t = sext i32 %i.b to i64                     ; 2 uses
  %i.u = sext i32 %5 to i64
  br label %.preheader63

bb.b:                                             ; preds = %.lr.ph70, %bb.b
  %indvars.iv = phi i64 [ %i.l, %.lr.ph70 ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %.069 = phi double [ 0.000000e+00, %.lr.ph70 ], [ %i.z, %bb.b ]
  %i.v = getelementptr inbounds [8 x i8], ptr %i.s, i64 %indvars.iv
  %i.w = load double, ptr %i.v, align 8, !tbaa !30
  %i.x = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.y = load double, ptr %i.x, align 8, !tbaa !30
  %i.z = tail call double @llvm.fmuladd.f64(double %i.w, double %i.y, double %.069) ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.aa = icmp slt i64 %indvars.iv.next, %i.n
  br i1 %i.aa, label %bb.b, label %._crit_edge, !llvm.loop !385

._crit_edge:                                      ; preds = %bb.b, %.preheader65
  %.0.lcssa = phi double [ 0.000000e+00, %.preheader65 ], [ %i.z, %bb.b ]
  %i.ab = getelementptr inbounds [8 x i8], ptr %4, i64 %i.r
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !30
  %i.ad = fsub double %i.ac, %.0.lcssa
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv88
  store double %i.ad, ptr %i.ae, align 8, !tbaa !30
  %indvars.iv.next89 = add nsw i64 %indvars.iv88, 1 ; 2 uses
  %i.af = icmp slt i64 %indvars.iv.next89, %i.m
  br i1 %i.af, label %.preheader65, label %.preheader63.preheader, !llvm.loop !386

.preheader63:                                     ; preds = %.preheader63.preheader, %._crit_edge76
  %indvar = phi i32 [ 0, %.preheader63.preheader ], [ %indvar.next, %._crit_edge76 ] ; 3 uses
  %indvars.iv91 = phi i64 [ %i.t, %.preheader63.preheader ], [ %indvars.iv.next92, %._crit_edge76 ] ; 4 uses
  %i.ag = add i32 %indvar, -1
  %indvars.iv.next92 = add nsw i64 %indvars.iv91, -1 ; 5 uses
  %i.ah = icmp slt i64 %indvars.iv91, %i.t
  %i.ai = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv.next92
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !33
  %i.ak = sext i32 %i.aj to i64                   ; 2 uses
  br i1 %i.ah, label %.lr.ph75, label %._crit_edge76

.lr.ph75:                                         ; preds = %.preheader63
  %i.al = getelementptr inbounds [32 x i8], ptr %1, i64 %i.ak ; 5 uses
  %xtraiter = and i32 %indvar, 3                  ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph75, %.prol.preheader
  %indvars.iv93.prol = phi i64 [ %indvars.iv.next94.prol, %.prol.preheader ], [ %indvars.iv91, %.lr.ph75 ] ; 3 uses
  %.174.prol = phi double [ %i.aq, %.prol.preheader ], [ 0.000000e+00, %.lr.ph75 ]
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph75 ]
  %i.am = getelementptr inbounds [8 x i8], ptr %i.al, i64 %indvars.iv93.prol
  %i.an = load double, ptr %i.am, align 8, !tbaa !30
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv93.prol
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !30
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.an, double %i.ap, double %.174.prol) ; 3 uses
  %indvars.iv.next94.prol = add nsw i64 %indvars.iv93.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !387

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph75
  %.lcssa.unr = phi double [ poison, %.lr.ph75 ], [ %i.aq, %.prol.preheader ]
  %indvars.iv93.unr = phi i64 [ %indvars.iv91, %.lr.ph75 ], [ %indvars.iv.next94.prol, %.prol.preheader ]
  %.174.unr = phi double [ 0.000000e+00, %.lr.ph75 ], [ %i.aq, %.prol.preheader ]
  %i.ar = icmp ult i32 %i.ag, 3
  br i1 %i.ar, label %._crit_edge76, label %.lr.ph75.new

.lr.ph83.preheader:                               ; preds = %._crit_edge76
  %i.as = sext i32 %5 to i64
  %i.at = shl nsw i64 %i.as, 3                    ; 2 uses
  %scevgep97 = getelementptr i8, ptr %4, i64 %i.at
  %scevgep98 = getelementptr i8, ptr %i.a, i64 %i.at
  %i.au = add i32 %5, 1
  %smax99 = tail call i32 @llvm.smax.i32(i32 %i.b, i32 %i.au)
  %i.av = xor i32 %5, -1
  %i.aw = add i32 %smax99, %i.av
  %i.ax = zext i32 %i.aw to i64
  %i.ay = shl nuw nsw i64 %i.ax, 3
  %i.az = add nuw nsw i64 %i.ay, 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep97, ptr noundef nonnull align 8 dereferenceable(1) %scevgep98, i64 %i.az, i1 false), !tbaa !30
  br label %._crit_edge84

.lr.ph75.new:                                     ; preds = %.prol.loopexit, %.lr.ph75.new
  %indvars.iv93 = phi i64 [ %indvars.iv.next94.3, %.lr.ph75.new ], [ %indvars.iv93.unr, %.prol.loopexit ] ; 6 uses
  %.174 = phi double [ %i.bt, %.lr.ph75.new ], [ %.174.unr, %.prol.loopexit ]
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.al, i64 %indvars.iv93
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !30
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv93
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !30
end_hunk_0
begin_hunk_1_@_ZN10tetgenmesh20checkflipeligibilityEiPdS0_S0_S0_S0_iiPNS_15flipconstraintsE:bb.a
  %i.fi = fcmp ogt double %i.et, %i.fh
  %i.fj = select i1 %i.fi, double %i.et, double %i.fh ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 2 uses
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !468 ; 2 uses
  %i.fm = fcmp olt double %i.fl, %i.fg
  %.302 = select i1 %i.fm, double %i.fl, double %i.fg
  store double %.302, ptr %i.fk, align 8, !tbaa !468
  %i.fn = getelementptr inbounds nuw i8, ptr %9, i64 72 ; 2 uses
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !469 ; 2 uses
  %i.fp = fcmp ogt double %i.fo, %i.fj
  %i.fq = select i1 %i.fp, double %i.fo, double %i.fj
  store double %i.fq, ptr %i.fn, align 8, !tbaa !469
  br label %.thread

bb.ai:                                            ; preds = %bb.ab
  %i.fr = icmp eq i32 %8, 1
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 68584
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !349 ; 3 uses
  %.not283 = icmp eq ptr %2, %i.ft
  %.not284 = icmp eq ptr %3, %i.ft
  %or.cond303 = or i1 %.not283, %.not284
  %.not285 = icmp eq ptr %4, %i.ft
  %or.cond304 = or i1 %.not285, %or.cond303       ; 2 uses
  br i1 %i.fr, label %bb.aj, label %bb.an

bb.aj:                                            ; preds = %bb.ai
  br i1 %or.cond304, label %.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store ptr null, ptr %10, align 8, !tbaa !460
  store i32 0, ptr %i.bu, align 8, !tbaa !461
  store ptr null, ptr %i.bv, align 8, !tbaa !462
  store i32 0, ptr %i.bw, align 8, !tbaa !463
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.bx, i8 0, i64 104, i1 false)
  store ptr %3, ptr %i.by, align 8, !tbaa !421
  %i.fu = getelementptr inbounds nuw i8, ptr %10, i64 96
  store ptr %2, ptr %i.fu, align 8, !tbaa !422
  %i.fv = getelementptr inbounds nuw i8, ptr %10, i64 104
  store ptr %4, ptr %i.fv, align 8, !tbaa !464
  %i.fw = getelementptr inbounds nuw i8, ptr %10, i64 112
  store ptr %6, ptr %i.fw, align 8, !tbaa !465
  %i.fx = call noundef zeroext i1 @_ZN10tetgenmesh11get_tetqualEPNS_7trifaceEPdPNS_7badfaceE(ptr noundef nonnull readonly align 8 dereferenceable(69984) %0, ptr noundef null, ptr noundef null, ptr noundef nonnull %10)
  br i1 %i.fx, label %bb.al, label %.thread

bb.al:                                            ; preds = %bb.ak
  %i.fy = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !30 ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !466 ; 2 uses
  %i.gc = fsub double %i.fz, %i.gb                ; 2 uses
  %i.gd = fdiv double %i.gc, %i.gb
  %i.ge = call double @llvm.fabs.f64(double %i.gd)
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !292
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 264
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !254
  %i.gj = fcmp uge double %i.ge, %i.gi
  %i.gk = fcmp ugt double %i.gc, 0.000000e+00
  %or.cond343 = select i1 %i.gj, i1 %i.gk, i1 false
  br i1 %or.cond343, label %bb.am, label %.thread

bb.am:                                            ; preds = %bb.al
  %i.gl = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 2 uses
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !468 ; 2 uses
  %i.gn = fcmp olt double %i.gm, %i.fz
  %..4218 = select i1 %i.gn, double %i.gm, double %i.fz
  store double %..4218, ptr %i.gl, align 8, !tbaa !468
  %i.go = getelementptr inbounds nuw i8, ptr %9, i64 72 ; 2 uses
  %i.gp = load double, ptr %i.go, align 8, !tbaa !469 ; 2 uses
  %i.gq = load double, ptr %i.bx, align 8, !tbaa !467 ; 2 uses
  %i.gr = fcmp ogt double %i.gp, %i.gq
  %i.gs = select i1 %i.gr, double %i.gp, double %i.gq
  store double %i.gs, ptr %i.go, align 8, !tbaa !469
  br label %.thread

bb.an:                                            ; preds = %bb.ai
  br i1 %or.cond304, label %.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  store ptr null, ptr %10, align 8, !tbaa !460
  store i32 0, ptr %i.bu, align 8, !tbaa !461
  store ptr null, ptr %i.bv, align 8, !tbaa !462
  store i32 0, ptr %i.bw, align 8, !tbaa !463
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.bx, i8 0, i64 104, i1 false)
  store ptr %2, ptr %i.by, align 8, !tbaa !421
  %i.gt = getelementptr inbounds nuw i8, ptr %10, i64 96
  store ptr %3, ptr %i.gt, align 8, !tbaa !422
  %i.gu = getelementptr inbounds nuw i8, ptr %10, i64 104
  store ptr %4, ptr %i.gu, align 8, !tbaa !464
  %i.gv = getelementptr inbounds nuw i8, ptr %10, i64 112
  store ptr %5, ptr %i.gv, align 8, !tbaa !465
  %i.gw = call noundef zeroext i1 @_ZN10tetgenmesh11get_tetqualEPNS_7trifaceEPdPNS_7badfaceE(ptr noundef nonnull readonly align 8 dereferenceable(69984) %0, ptr noundef null, ptr noundef null, ptr noundef nonnull %10)
  br i1 %i.gw, label %bb.ap, label %.thread

bb.ap:                                            ; preds = %bb.ao
  %i.gx = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !30 ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !466 ; 2 uses
  %i.hb = fsub double %i.gy, %i.ha                ; 2 uses
  %i.hc = fdiv double %i.hb, %i.ha
  %i.hd = call double @llvm.fabs.f64(double %i.hc)
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !292
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 264
  %i.hh = load double, ptr %i.hg, align 8, !tbaa !254
  %i.hi = fcmp uge double %i.hd, %i.hh
  %i.hj = fcmp ugt double %i.hb, 0.000000e+00
  %or.cond344 = select i1 %i.hi, i1 %i.hj, i1 false
  br i1 %or.cond344, label %bb.aq, label %.thread

bb.aq:                                            ; preds = %bb.ap
  %i.hk = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 2 uses
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !468 ; 2 uses
  %i.hm = fcmp olt double %i.hl, %i.gy
  %..5219 = select i1 %i.hm, double %i.hl, double %i.gy
  store double %..5219, ptr %i.hk, align 8, !tbaa !468
  %i.hn = getelementptr inbounds nuw i8, ptr %9, i64 72 ; 2 uses
  %i.ho = load double, ptr %i.hn, align 8, !tbaa !469 ; 2 uses
  %i.hp = load double, ptr %i.bx, align 8, !tbaa !467 ; 2 uses
  %i.hq = fcmp ogt double %i.ho, %i.hp
  %i.hr = select i1 %i.hq, double %i.ho, double %i.hp
  store double %i.hr, ptr %i.hn, align 8, !tbaa !469
  br label %.thread

.thread:                                          ; preds = %bb.ap, %bb.ao, %bb.al, %bb.ak, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.y, %bb.x, %bb.w, %bb.v, %bb.ah, %bb.z, %bb.aa, %bb.am, %bb.aj, %bb.aq, %bb.an, %bb.ac, %bb.u
  %.9 = phi i32 [ 1, %bb.ad ], [ 0, %bb.an ], [ 0, %bb.aa ], [ 0, %bb.u ], [ 0, %bb.z ], [ 1, %bb.ap ], [ 1, %bb.ao ], [ 0, %bb.ac ], [ 0, %bb.ah ], [ 0, %bb.am ], [ 1, %bb.ak ], [ 1, %bb.af ], [ 0, %bb.aj ], [ 0, %bb.aq ], [ 1, %bb.x ], [ 1, %bb.al ], [ 1, %bb.w ], [ 1, %bb.y ], [ 1, %bb.ae ], [ 1, %bb.ag ], [ 1, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40
  br label %bb.ar

bb.ar:                                            ; preds = %.thread, %.critedge11
  %.10 = phi i32 [ %.6, %.critedge11 ], [ %.9, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  ret i32 %.10
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN10tetgenmesh11flipnm_postEPNS_7trifaceEiiiPNS_15flipconstraintsE(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca [3 x %"class.tetgenmesh::triface"], align 16 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  store ptr null, ptr %6, align 16, !tbaa !330
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i32 0, ptr %i.a, align 8, !tbaa !335
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr null, ptr %.ptr.1, align 16, !tbaa !330
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 0, ptr %i.b, align 8, !tbaa !335
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  store ptr null, ptr %.ptr.2, align 16, !tbaa !330
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i32 0, ptr %i.c, align 8, !tbaa !335
  %i.d = icmp eq i32 %3, 2
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !434
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN10tetgenmesh6flip23EPNS_7trifaceEiPNS_15flipconstraintsE(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull %5)
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !433
  %.not114 = icmp eq i32 %i.h, 0
  br i1 %.not114, label %bb.d, label %.sink.split

.sink.split:                                      ; preds = %bb.c
  %i.i = icmp eq i32 %4, 0
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2800
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !366
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !98
  %. = select i1 %i.i, i64 -2, i64 -1
  %i.n = add nsw i64 %i.m, %.
  store i64 %i.n, ptr %i.l, align 8, !tbaa !98
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.b, %bb.c, %bb.a
  %.0103 = phi i32 [ %3, %bb.a ], [ 3, %bb.c ], [ 3, %bb.b ], [ 3, %.sink.split ] ; 2 uses
  %i.o = icmp slt i32 %.0103, %2
  br i1 %i.o, label %.lr.ph130, label %._crit_edge131

.lr.ph130:                                        ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 2800
  %i.v = sext i32 %.0103 to i64                   ; 2 uses
  %i.w = add nsw i64 %i.v, -1
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph130, %bb.u
  %indvar = phi i64 [ 0, %.lr.ph130 ], [ %indvar.next, %bb.u ] ; 2 uses
  %indvars.iv133 = phi i64 [ %i.v, %.lr.ph130 ], [ %indvars.iv.next134, %bb.u ] ; 12 uses
  %i.x = add nsw i64 %i.w, %indvar
  %i.y = trunc nsw i64 %indvars.iv133 to i32      ; 7 uses
  %i.z = and i64 %indvars.iv133, 4294967295
  %i.aa = getelementptr inbounds [16 x i8], ptr %1, i64 %indvars.iv133 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !335 ; 5 uses
  %i.ad = lshr i32 %i.ac, 4
  %i.ae = and i32 %i.ad, 3
  switch i32 %i.ae, label %bb.u [
    i32 1, label %bb.f
    i32 2, label %bb.k
  ]

bb.f:                                             ; preds = %bb.e
  %i.af = ashr i32 %i.ac, 6                       ; 4 uses
  %i.ag = load i32, ptr %i.p, align 8, !tbaa !434
  %.not117 = icmp eq i32 %i.ag, 0
  br i1 %.not117, label %bb.u, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = load ptr, ptr %i.q, align 8, !tbaa !292
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 156
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !258
  %i.ak = icmp sgt i32 %i.aj, 3
  br i1 %i.ak, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.al = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.261, i32 noundef %i.af) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.am = add i32 %i.y, -1
  %i.an = add i32 %i.am, %i.af
  %i.ao = srem i32 %i.an, %i.y
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [16 x i8], ptr %1, i64 %i.ap ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !330 ; 2 uses
  store ptr %i.ar, ptr %6, align 16, !tbaa !330
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.at = load i32, ptr %i.as, align 8, !tbaa !335
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8eprevtblE, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !33
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !33
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8enexttblE, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !33 ; 2 uses
  store i32 %i.bc, ptr %i.a, align 8, !tbaa !335
  %i.bd = sext i32 %i.bc to i64                   ; 2 uses
  %i.be = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10facepivot1E, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !33
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.bg
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !306
  %i.bj = ptrtoint ptr %i.bi to i64               ; 2 uses
  %i.bk = and i64 %i.bj, -16
  %i.bl = inttoptr i64 %i.bk to ptr               ; 2 uses
  store ptr %i.bl, ptr %.ptr.1, align 16, !tbaa !330
  %i.bm = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh10facepivot2E, i64 %i.bd
  %i.bn = and i64 %i.bj, 15
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !33 ; 2 uses
  store i32 %i.bp, ptr %i.r, align 8, !tbaa !335
  %i.bq = sext i32 %i.bp to i64                   ; 2 uses
  %i.br = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10facepivot1E, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !33
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.bt
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !306
  %i.bw = ptrtoint ptr %i.bv to i64               ; 2 uses
  %i.bx = and i64 %i.bw, -16
  %i.by = inttoptr i64 %i.bx to ptr
  store ptr %i.by, ptr %.ptr.2, align 16, !tbaa !330
  %i.bz = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh10facepivot2E, i64 %i.bq
  %i.ca = and i64 %i.bw, 15
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !33
  store i32 %i.cc, ptr %i.s, align 8, !tbaa !335
  call void @_ZN10tetgenmesh6flip32EPNS_7trifaceEiPNS_15flipconstraintsE(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef nonnull %6, i32 noundef 1, ptr noundef nonnull %5)
  %i.cd = sext i32 %i.af to i64                   ; 5 uses
  %.not118.not122 = icmp sgt i64 %indvars.iv133, %i.cd
  br i1 %.not118.not122, label %.lr.ph125.preheader, label %._crit_edge126

.lr.ph125.preheader:                              ; preds = %bb.i
  %i.ce = sub i64 %indvars.iv133, %i.cd
  %xtraiter = and i64 %i.ce, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph125.prol.loopexit, label %.lr.ph125.prol

.lr.ph125.prol:                                   ; preds = %.lr.ph125.preheader
  %indvars.iv.next136.prol = add nsw i64 %indvars.iv133, -1 ; 2 uses
  %i.cf = getelementptr inbounds [16 x i8], ptr %1, i64 %indvars.iv.next136.prol ; 2 uses
  %i.cg = getelementptr inbounds [16 x i8], ptr %1, i64 %indvars.iv133 ; 2 uses
  %i.ch = load ptr, ptr %i.cf, align 8, !tbaa !330
  store ptr %i.ch, ptr %i.cg, align 8, !tbaa !330
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !335
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store i32 %i.cj, ptr %i.ck, align 8, !tbaa !335
  br label %.lr.ph125.prol.loopexit

.lr.ph125.prol.loopexit:                          ; preds = %.lr.ph125.prol, %.lr.ph125.preheader
  %indvars.iv135.unr = phi i64 [ %indvars.iv133, %.lr.ph125.preheader ], [ %indvars.iv.next136.prol, %.lr.ph125.prol ]
  %i.cl = icmp eq i64 %i.x, %i.cd
  br i1 %i.cl, label %._crit_edge126, label %.lr.ph125

.lr.ph125:                                        ; preds = %.lr.ph125.prol.loopexit, %.lr.ph125
  %indvars.iv135 = phi i64 [ %indvars.iv.next136.1, %.lr.ph125 ], [ %indvars.iv135.unr, %.lr.ph125.prol.loopexit ] ; 3 uses
  %indvars.iv.next136 = add nsw i64 %indvars.iv135, -1 ; 2 uses
  %i.cm = getelementptr inbounds [16 x i8], ptr %1, i64 %indvars.iv.next136 ; 2 uses
  %i.cn = getelementptr inbounds [16 x i8], ptr %1, i64 %indvars.iv135 ; 2 uses
  %i.co = load ptr, ptr %i.cm, align 8, !tbaa !330
  store ptr %i.co, ptr %i.cn, align 8, !tbaa !330
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !335
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store i32 %i.cq, ptr %i.cr, align 8, !tbaa !335
  %indvars.iv.next136.1 = add nsw i64 %indvars.iv135, -2 ; 3 uses
  %i.cs = getelementptr inbounds [16 x i8], ptr %1, i64 %indvars.iv.next136.1 ; 2 uses
  %i.ct = getelementptr inbounds [16 x i8], ptr %1, i64 %indvars.iv.next136 ; 2 uses
  %i.cu = load ptr, ptr %i.cs, align 8, !tbaa !330
  store ptr %i.cu, ptr %i.ct, align 8, !tbaa !330
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !335
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store i32 %i.cw, ptr %i.cx, align 8, !tbaa !335
  %.not118.not.1 = icmp sgt i64 %indvars.iv.next136.1, %i.cd
  br i1 %.not118.not.1, label %.lr.ph125, label %._crit_edge126, !llvm.loop !470

._crit_edge126:                                   ; preds = %.lr.ph125.prol.loopexit, %.lr.ph125, %bb.i
  %i.cy = add i32 %i.af, %i.y
  %i.cz = trunc i64 %indvars.iv133 to i32
  %i.da = add i32 %i.cz, 1
  %i.db = srem i32 %i.cy, %i.da
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr inbounds [16 x i8], ptr %1, i64 %i.dc ; 2 uses
  %i.de = load ptr, ptr %.ptr.1, align 16, !tbaa !330
  store ptr %i.de, ptr %i.dd, align 8, !tbaa !330
  %i.df = load i32, ptr %i.r, align 8, !tbaa !335
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !33
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store i32 %i.di, ptr %i.dj, align 8, !tbaa !335
  %i.dk = getelementptr inbounds [16 x i8], ptr %1, i64 %i.cd ; 2 uses
  %i.dl = load ptr, ptr %6, align 16, !tbaa !330
  store ptr %i.dl, ptr %i.dk, align 8, !tbaa !330
  %i.dm = load i32, ptr %i.a, align 8, !tbaa !335
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store i32 %i.dm, ptr %i.dn, align 8, !tbaa !335
  %i.do = load i32, ptr %i.t, align 4, !tbaa !433
  %.not119 = icmp eq i32 %i.do, 0
  br i1 %.not119, label %bb.u, label %bb.j

bb.j:                                             ; preds = %._crit_edge126
  %i.dp = load ptr, ptr %i.u, align 8, !tbaa !366
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 32 ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !98
  %i.ds = add nsw i64 %i.dr, -2
  store i64 %i.ds, ptr %i.dq, align 8, !tbaa !98
  br label %bb.u

bb.k:                                             ; preds = %bb.e
  %i.dt = load ptr, ptr %i.aa, align 8, !tbaa !330 ; 16 uses
  %i.du = lshr i32 %i.ac, 19                      ; 4 uses
  %i.dv = and i32 %i.ac, 3                        ; 4 uses
  %i.dw = lshr i32 %i.ac, 6
  %i.dx = and i32 %i.dw, 8191                     ; 5 uses
  %i.dy = load i32, ptr %i.p, align 8, !tbaa !434
  %.not115 = icmp eq i32 %i.dy, 0
  br i1 %.not115, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dz = load ptr, ptr %i.q, align 8, !tbaa !292
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 156
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !258
  %i.ec = icmp sgt i32 %i.eb, 3
  br i1 %i.ec, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ed = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.262, i32 noundef %i.du, i32 noundef %i.dv, i32 noundef %i.dx) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ee = icmp eq i32 %i.dv, 1                    ; 3 uses
  %i.ef = add i32 %i.y, -1
  %i.eg = add i32 %i.ef, %i.dx
  %i.eh = srem i32 %i.eg, %i.y
  %i.ei = sext i32 %i.eh to i64
  %i.ej = getelementptr inbounds [16 x i8], ptr %1, i64 %i.ei ; 4 uses
  br i1 %i.ee, label %.split, label %.split105

.split:                                           ; preds = %bb.n
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !330 ; 2 uses
  store ptr %i.ek, ptr %i.dt, align 8, !tbaa !330
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.em = load i32, ptr %i.el, align 8, !tbaa !335 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.dt, i64 8 ; 4 uses
  store i32 %i.em, ptr %i.en, align 8, !tbaa !335
end_hunk_1
