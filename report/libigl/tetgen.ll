Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/tetgen?download=true
inline.NumInlined: 6986
inline.NumDeleted: 169
loop-unroll.NumCompletelyUnrolled: 436
loop-unroll.NumRuntimeUnrolled: 116
loop-unroll.NumUnrolled: 555
begin_hunk_0_@_ZN10tetgenmesh13tri_tri_interEPdS0_S0_S0_S0_S0_:bb.a

bb.d:                                             ; preds = %bb.c
  %i.v = load i32, ptr %i.e, align 4, !tbaa !59
  %i.w = icmp eq i32 %i.v, 2
  br i1 %i.w, label %select.unfold, label %_ZN10tetgenmesh19tri_edge_inter_tailEPdS0_S0_S0_S0_dd.exit

bb.e:                                             ; preds = %bb.c
  %i.x = load i32, ptr %i.e, align 4, !tbaa !59
  switch i32 %i.x, label %_ZN10tetgenmesh19tri_edge_inter_tailEPdS0_S0_S0_S0_dd.exit [
    i32 2, label %bb.f
    i32 3, label %select.unfold
  ]

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !59
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %select.unfold, label %_ZN10tetgenmesh19tri_edge_inter_tailEPdS0_S0_S0_S0_dd.exit

_ZN10tetgenmesh19tri_edge_inter_tailEPdS0_S0_S0_S0_dd.exit: ; preds = %bb.e, %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #45
  br label %bb.r

select.unfold:                                    ; preds = %bb.f, %bb.d, %bb.e, %bb.c
  %i.ab = phi i1 [ false, %bb.d ], [ true, %bb.e ], [ false, %bb.c ], [ false, %bb.f ] ; 3 uses
  %i.ac = phi i1 [ true, %bb.d ], [ false, %bb.e ], [ false, %bb.c ], [ true, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #45
  %spec.select = zext i1 %i.ab to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #45
  %i.ad = call noundef i32 @_ZN10tetgenmesh13tri_edge_tailEPdS0_S0_S0_S0_S0_ddiPiS1_(ptr nonnull readnone align 8 poison, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %5, ptr noundef %6, ptr noundef null, double noundef %i.h, double noundef %i.i, i32 noundef 1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  switch i32 %i.ad, label %select.unfold117.thread [
    i32 4, label %bb.h
    i32 2, label %bb.g
  ]

bb.g:                                             ; preds = %select.unfold
  %i.ae = load i32, ptr %i.c, align 4, !tbaa !59
  %i.af = icmp eq i32 %i.ae, 2
  br i1 %i.af, label %select.unfold117.thread, label %_ZN10tetgenmesh19tri_edge_inter_tailEPdS0_S0_S0_S0_dd.exit109

bb.h:                                             ; preds = %select.unfold
  %i.ag = load i32, ptr %i.c, align 4, !tbaa !59
  switch i32 %i.ag, label %_ZN10tetgenmesh19tri_edge_inter_tailEPdS0_S0_S0_S0_dd.exit109 [
    i32 2, label %bb.i
    i32 3, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !59
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %select.unfold117.thread, label %_ZN10tetgenmesh19tri_edge_inter_tailEPdS0_S0_S0_S0_dd.exit109

_ZN10tetgenmesh19tri_edge_inter_tailEPdS0_S0_S0_S0_dd.exit109: ; preds = %bb.h, %bb.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #45
  br label %bb.r

select.unfold117.thread:                          ; preds = %bb.g, %select.unfold, %bb.i
  %..ph = phi i32 [ 2, %bb.i ], [ 0, %select.unfold ], [ 2, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #45
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #45
  %i.ak = select i1 %i.ab, i32 2, i32 1
  br label %bb.k

bb.k:                                             ; preds = %select.unfold117.thread, %bb.j
  %.128 = phi i32 [ 0, %bb.j ], [ %..ph, %select.unfold117.thread ]
  %i.al = phi i1 [ true, %bb.j ], [ false, %select.unfold117.thread ]
  %i.am = phi i32 [ %i.ak, %bb.j ], [ %spec.select, %select.unfold117.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #45
  %i.an = call noundef i32 @_ZN10tetgenmesh13tri_edge_tailEPdS0_S0_S0_S0_S0_ddiPiS1_(ptr nonnull readnone align 8 poison, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %6, ptr noundef %4, ptr noundef null, double noundef %i.i, double noundef %i.g, i32 noundef 1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  switch i32 %i.an, label %select.unfold121 [
    i32 4, label %bb.m
    i32 2, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.ao = load i32, ptr %i.a, align 4, !tbaa !59
  %i.ap = icmp eq i32 %i.ao, 2
  br i1 %i.ap, label %select.unfold121, label %_ZN10tetgenmesh19tri_edge_inter_tailEPdS0_S0_S0_S0_dd.exit113

bb.m:                                             ; preds = %bb.k
  %i.aq = load i32, ptr %i.a, align 4, !tbaa !59
  switch i32 %i.aq, label %_ZN10tetgenmesh19tri_edge_inter_tailEPdS0_S0_S0_S0_dd.exit113 [
    i32 2, label %bb.n
    i32 3, label %select.unfold121
  ]

bb.n:                                             ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !59
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %select.unfold121, label %_ZN10tetgenmesh19tri_edge_inter_tailEPdS0_S0_S0_S0_dd.exit113

_ZN10tetgenmesh19tri_edge_inter_tailEPdS0_S0_S0_S0_dd.exit113: ; preds = %bb.m, %bb.n, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  br label %bb.r

select.unfold121:                                 ; preds = %bb.n, %bb.l, %bb.m, %bb.k
  %i.au = phi i1 [ false, %bb.l ], [ true, %bb.m ], [ false, %bb.k ], [ false, %bb.n ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  store double 1.000000e+00, ptr %4, align 8, !tbaa !58
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
  %i.h = load double, ptr %i.g, align 8, !tbaa !58
  %i.i = tail call double @llvm.fabs.f64(double %i.h) ; 2 uses
  %i.j = fcmp olt double %.0101120.us, %i.i
  %.1102.us = select i1 %i.j, double %i.i, double %.0101120.us ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.k = icmp slt i64 %indvars.iv.next, %i.e
  br i1 %i.k, label %bb.b, label %._crit_edge.us, !llvm.loop !568

bb.c:                                             ; preds = %._crit_edge.us
  %i.l = fdiv double 1.000000e+00, %.1102.us
  %i.m = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv142
  store double %i.l, ptr %i.m, align 8, !tbaa !58
  %i.n = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv142
  %i.o = trunc nsw i64 %indvars.iv142 to i32
  store i32 %i.o, ptr %i.n, align 4, !tbaa !59
  %indvars.iv.next143 = add nsw i64 %indvars.iv142, 1 ; 2 uses
  %i.p = icmp slt i64 %indvars.iv.next143, %i.e
  br i1 %i.p, label %.preheader115.us, label %.preheader113, !llvm.loop !569

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
  br i1 %exitcond164.not, label %._crit_edge138, label %.preheader112, !llvm.loop !570

.preheader112:                                    ; preds = %.preheader112.preheader, %.loopexit111
  %indvar = phi i32 [ 0, %.preheader112.preheader ], [ %indvar.next, %.loopexit111 ] ; 6 uses
  %indvars.iv150.in = phi i32 [ %5, %.preheader112.preheader ], [ %indvars.iv150, %.loopexit111 ]
  %indvars.iv145 = phi i64 [ %i.t, %.preheader112.preheader ], [ %indvars.iv.next146, %.loopexit111 ] ; 12 uses
  %.098136 = phi i32 [ 0, %.preheader112.preheader ], [ %.2100.lcssa, %.loopexit111 ] ; 2 uses
  %.neg = add i32 %indvar, 1
  %6 = sub i32 %i.w, %indvar                      ; 2 uses
  %i.z = add i32 %i.v, %indvar
  %i.aa = sext i32 %i.z to i64
  %i.ab = shl nsw i64 %i.aa, 3                    ; 3 uses
  %i.ac = sub i32 %i.w, %indvar
  %i.ad = zext i32 %i.ac to i64
  %i.ae = shl nuw nsw i64 %i.ad, 3                ; 2 uses
  %indvars.iv150 = add i32 %indvars.iv150.in, 1   ; 2 uses
  %i.af = sext i32 %indvars.iv150 to i64          ; 5 uses
  %i.ag = icmp slt i64 %indvars.iv145, %i.u
  br i1 %i.ag, label %.lr.ph, label %.loopexit114

.lr.ph:                                           ; preds = %.preheader112
  %i.ah = sub i32 %2, %indvar
  %invariant.gep = getelementptr [8 x i8], ptr %1, i64 %indvars.iv145 ; 3 uses
  %xtraiter = and i32 %i.ah, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.ai = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv145
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !59
  %i.ak = sext i32 %i.aj to i64                   ; 2 uses
  %gep.prol = getelementptr [32 x i8], ptr %invariant.gep, i64 %i.ak
  %i.al = load double, ptr %gep.prol, align 8, !tbaa !58
  %i.am = tail call double @llvm.fabs.f64(double %i.al)
  %i.an = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ak
  %i.ao = load double, ptr %i.an, align 8, !tbaa !58
  %i.ap = fmul double %i.am, %i.ao                ; 2 uses
  %i.aq = fcmp ogt double %i.ap, 0.000000e+00     ; 2 uses
  %.3.prol = select i1 %i.aq, double %i.ap, double 0.000000e+00 ; 2 uses
  %i.ar = trunc nsw i64 %indvars.iv145 to i32
  %.2100.prol = select i1 %i.aq, i32 %i.ar, i32 %.098136 ; 2 uses
  %indvars.iv.next148.prol = add nsw i64 %indvars.iv145, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %.3.lcssa.unr = phi double [ poison, %.lr.ph ], [ %.3.prol, %.prol.loopexit.unr-lcssa ]
  %.2100.lcssa.unr = phi i32 [ poison, %.lr.ph ], [ %.2100.prol, %.prol.loopexit.unr-lcssa ]
  %indvars.iv147.unr = phi i64 [ %indvars.iv145, %.lr.ph ], [ %indvars.iv.next148.prol, %.prol.loopexit.unr-lcssa ]
  %.199126.unr = phi i32 [ %.098136, %.lr.ph ], [ %.2100.prol, %.prol.loopexit.unr-lcssa ]
  %.2103125.unr = phi double [ 0.000000e+00, %.lr.ph ], [ %.3.prol, %.prol.loopexit.unr-lcssa ]
  %i.as = icmp eq i32 %2, %.neg
  br i1 %i.as, label %._crit_edge, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv147 = phi i64 [ %indvars.iv.next148.1, %.lr.ph.new ], [ %indvars.iv147.unr, %.prol.loopexit ] ; 4 uses
  %.199126 = phi i32 [ %.2100.1, %.lr.ph.new ], [ %.199126.unr, %.prol.loopexit ]
  %.2103125 = phi double [ %.3.1, %.lr.ph.new ], [ %.2103125.unr, %.prol.loopexit ] ; 2 uses
  %i.at = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv147
  %i.au = load i32, ptr %i.at, align 4, !tbaa !59
  %i.av = sext i32 %i.au to i64                   ; 2 uses
  %gep = getelementptr [32 x i8], ptr %invariant.gep, i64 %i.av
  %i.aw = load double, ptr %gep, align 8, !tbaa !58
  %i.ax = tail call double @llvm.fabs.f64(double %i.aw)
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.av
  %i.az = load double, ptr %i.ay, align 8, !tbaa !58
  %i.ba = fmul double %i.ax, %i.az                ; 2 uses
  %i.bb = fcmp olt double %.2103125, %i.ba        ; 2 uses
  %.3 = select i1 %i.bb, double %i.ba, double %.2103125 ; 2 uses
  %i.bc = trunc nsw i64 %indvars.iv147 to i32
  %.2100 = select i1 %i.bb, i32 %i.bc, i32 %.199126
  %indvars.iv.next148 = add nsw i64 %indvars.iv147, 1 ; 2 uses
  %i.bd = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv.next148
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !59
  %i.bf = sext i32 %i.be to i64                   ; 2 uses
  %gep.1 = getelementptr [32 x i8], ptr %invariant.gep, i64 %i.bf
  %i.bg = load double, ptr %gep.1, align 8, !tbaa !58
  %i.bh = tail call double @llvm.fabs.f64(double %i.bg)
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.bf
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !58
  %i.bk = fmul double %i.bh, %i.bj                ; 2 uses
  %i.bl = fcmp olt double %.3, %i.bk              ; 2 uses
  %.3.1 = select i1 %i.bl, double %i.bk, double %.3 ; 2 uses
  %i.bm = trunc nsw i64 %indvars.iv.next148 to i32
  %.2100.1 = select i1 %i.bl, i32 %i.bm, i32 %.2100 ; 2 uses
  %indvars.iv.next148.1 = add nsw i64 %indvars.iv147, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next148.1 to i32
  %exitcond.not.1 = icmp eq i32 %i.b, %lftr.wideiv.1
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.new, !llvm.loop !571

._crit_edge:                                      ; preds = %.lr.ph.new, %.prol.loopexit
  %.3.lcssa = phi double [ %.3.lcssa.unr, %.prol.loopexit ], [ %.3.1, %.lr.ph.new ]
  %.2100.lcssa = phi i32 [ %.2100.lcssa.unr, %.prol.loopexit ], [ %.2100.1, %.lr.ph.new ] ; 3 uses
  %i.bn = fcmp oeq double %.3.lcssa, 0.000000e+00
  br i1 %i.bn, label %.loopexit114, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.bo = trunc nsw i64 %indvars.iv145 to i32
  %.not = icmp eq i32 %.2100.lcssa, %i.bo
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bp = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv145 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !59
  %i.br = sext i32 %.2100.lcssa to i64
  %i.bs = getelementptr inbounds [4 x i8], ptr %3, i64 %i.br ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !59
  store i32 %i.bt, ptr %i.bp, align 4, !tbaa !59
  store i32 %i.bq, ptr %i.bs, align 4, !tbaa !59
  %i.bu = load double, ptr %4, align 8, !tbaa !58
  %i.bv = fneg double %i.bu
  store double %i.bv, ptr %4, align 8, !tbaa !58
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bw = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv145
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !59
  %i.by = sext i32 %i.bx to i64                   ; 2 uses
  %i.bz = getelementptr inbounds [32 x i8], ptr %1, i64 %i.by ; 5 uses
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %indvars.iv145
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !58
  %indvars.iv.next146 = add nsw i64 %indvars.iv145, 1 ; 3 uses
  %i.cc = icmp slt i64 %indvars.iv.next146, %i.u
  br i1 %i.cc, label %.lr.ph133.preheader, label %.loopexit111

.lr.ph133.preheader:                              ; preds = %bb.f
  %scevgep = getelementptr i8, ptr %1, i64 %i.ab
  %i.cd = getelementptr i8, ptr %scevgep172, i64 %i.ab
  %scevgep173 = getelementptr i8, ptr %i.cd, i64 %i.ae
  %i.ce = shl nsw i64 %i.by, 5
  %i.cf = add nsw i64 %i.ce, %i.ab                ; 2 uses
  %scevgep175 = getelementptr i8, ptr %1, i64 %i.cf
  %i.cg = getelementptr i8, ptr %scevgep176, i64 %i.cf
  %scevgep177 = getelementptr i8, ptr %i.cg, i64 %i.ae
  %i.ch = zext i32 %6 to i64
  %i.ci = add nuw nsw i64 %i.ch, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %6, 3
  %n.vec = and i64 %i.ci, 8589934588              ; 3 uses
  %i.cj = add nsw i64 %n.vec, %i.af
  %cmp.n = icmp eq i64 %i.ci, %n.vec
  br label %.lr.ph133

.lr.ph133:                                        ; preds = %.lr.ph133.preheader, %..loopexit_crit_edge.us
  %indvars.iv157 = phi i64 [ %indvars.iv.next158, %..loopexit_crit_edge.us ], [ %i.af, %.lr.ph133.preheader ] ; 2 uses
  %i.ck = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv157
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !59
  %i.cm = sext i32 %i.cl to i64                   ; 2 uses
  %i.cn = getelementptr inbounds [32 x i8], ptr %1, i64 %i.cm ; 5 uses
  %i.co = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %indvars.iv145 ; 2 uses
  %i.cp = load double, ptr %i.co, align 8, !tbaa !58
  %i.cq = fdiv double %i.cp, %i.cb                ; 3 uses
  store double %i.cq, ptr %i.co, align 8, !tbaa !58
  %i.cr = fcmp une double %i.cq, 0.000000e+00
  br i1 %i.cr, label %.preheader.us, label %..loopexit_crit_edge.us

.preheader.us:                                    ; preds = %.lr.ph133
  %i.cs = fneg double %i.cq                       ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.us
  %i.ct = shl nsw i64 %i.cm, 5                    ; 2 uses
  %scevgep171 = getelementptr i8, ptr %scevgep, i64 %i.ct
  %scevgep174 = getelementptr i8, ptr %scevgep173, i64 %i.ct
  %bound0 = icmp ult ptr %scevgep171, %scevgep177
  %bound1 = icmp ult ptr %scevgep175, %scevgep174
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.cs, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cu = add i64 %index, %i.af                   ; 2 uses
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.cu ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %wide.load = load <2 x double>, ptr %i.cv, align 8, !tbaa !58, !alias.scope !578
  %wide.load178 = load <2 x double>, ptr %i.cw, align 8, !tbaa !58, !alias.scope !578
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.cu ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16 ; 2 uses
  %wide.load179 = load <2 x double>, ptr %i.cx, align 8, !tbaa !58, !alias.scope !579, !noalias !578
  %wide.load180 = load <2 x double>, ptr %i.cy, align 8, !tbaa !58, !alias.scope !579, !noalias !578
  %i.cz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load179)
  %i.da = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load178, <2 x double> %wide.load180)
  store <2 x double> %i.cz, ptr %i.cx, align 8, !tbaa !58, !alias.scope !579, !noalias !578
  store <2 x double> %i.da, ptr %i.cy, align 8, !tbaa !58, !alias.scope !579, !noalias !578
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.db = icmp eq i64 %index.next, %n.vec
  br i1 %i.db, label %middle.block, label %vector.body, !llvm.loop !575

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader.us, %middle.block
  %indvars.iv152.ph = phi i64 [ %i.af, %vector.memcheck ], [ %i.af, %.preheader.us ], [ %i.cj, %middle.block ] ; 5 uses
  %i.dc = trunc i64 %indvars.iv152.ph to i32      ; 2 uses
  %i.dd = sub i32 %i.x, %i.dc
  %.neg184 = add i32 %i.dc, 1
  %xtraiter182 = and i32 %i.dd, 1
  %lcmp.mod183.not = icmp eq i32 %xtraiter182, 0
  br i1 %lcmp.mod183.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.de = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %indvars.iv152.ph
  %i.df = load double, ptr %i.de, align 8, !tbaa !58
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %indvars.iv152.ph ; 2 uses
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !58
  %i.di = tail call double @llvm.fmuladd.f64(double %i.cs, double %i.df, double %i.dh)
  store double %i.di, ptr %i.dg, align 8, !tbaa !58
  %indvars.iv.next153.prol = add nsw i64 %indvars.iv152.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv152.unr = phi i64 [ %indvars.iv152.ph, %scalar.ph.preheader ], [ %indvars.iv.next153.prol, %scalar.ph.prol ]
  %i.dj = icmp eq i32 %i.y, %.neg184
  br i1 %i.dj, label %..loopexit_crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv152 = phi i64 [ %indvars.iv.next153.1, %scalar.ph ], [ %indvars.iv152.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %indvars.iv152
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !58
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %indvars.iv152 ; 2 uses
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !58
  %i.do = tail call double @llvm.fmuladd.f64(double %i.cs, double %i.dl, double %i.dn)
  store double %i.do, ptr %i.dm, align 8, !tbaa !58
  %indvars.iv.next153 = add nsw i64 %indvars.iv152, 1 ; 2 uses
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %indvars.iv.next153
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !58
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %indvars.iv.next153 ; 2 uses
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !58
  %i.dt = tail call double @llvm.fmuladd.f64(double %i.cs, double %i.dq, double %i.ds)
  store double %i.dt, ptr %i.dr, align 8, !tbaa !58
  %indvars.iv.next153.1 = add nsw i64 %indvars.iv152, 2 ; 2 uses
  %lftr.wideiv155.1 = trunc i64 %indvars.iv.next153.1 to i32
  %exitcond156.not.1 = icmp eq i32 %i.b, %lftr.wideiv155.1
  br i1 %exitcond156.not.1, label %..loopexit_crit_edge.us, label %scalar.ph, !llvm.loop !576

..loopexit_crit_edge.us:                          ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.lr.ph133
  %indvars.iv.next158 = add nsw i64 %indvars.iv157, 1 ; 2 uses
  %lftr.wideiv160 = trunc i64 %indvars.iv.next158 to i32
  %exitcond161.not = icmp eq i32 %i.b, %lftr.wideiv160
  br i1 %exitcond161.not, label %.loopexit111, label %.lr.ph133, !llvm.loop !577

._crit_edge138:                                   ; preds = %.loopexit111, %.preheader113
  %i.du = sext i32 %i.r to i64                    ; 2 uses
  %i.dv = getelementptr inbounds [4 x i8], ptr %3, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !59
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds [32 x i8], ptr %1, i64 %i.dx
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %i.du
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !58
  %i.eb = fcmp une double %i.ea, 0.000000e+00
  br label %.loopexit114

.loopexit114:                                     ; preds = %._crit_edge.us, %.preheader112, %._crit_edge, %._crit_edge138
  %.0104 = phi i1 [ false, %.preheader112 ], [ %i.eb, %._crit_edge138 ], [ false, %._crit_edge ], [ false, %._crit_edge.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  ret i1 %.0104
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN10tetgenmesh8lu_solveEPA4_diPiPdi(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(69984) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, i32 noundef %5) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = alloca [4 x double], align 16            ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
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
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.k, i1 false), !tbaa !58
  %i.l = sext i32 %5 to i64                       ; 3 uses
  %i.m = sext i32 %i.b to i64
  br label %.preheader65

.preheader65:                                     ; preds = %.preheader65.preheader, %._crit_edge
  %indvars.iv88 = phi i64 [ %i.l, %.preheader65.preheader ], [ %indvars.iv.next89, %._crit_edge ] ; 5 uses
  %i.n = add nsw i64 %indvars.iv88, %i.l
  %i.o = icmp sgt i64 %indvars.iv88, 0
  %i.p = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv88
  %i.q = load i32, ptr %i.p, align 4, !tbaa !59
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
  %i.w = load double, ptr %i.v, align 8, !tbaa !58
  %i.x = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.y = load double, ptr %i.x, align 8, !tbaa !58
  %i.z = tail call double @llvm.fmuladd.f64(double %i.w, double %i.y, double %.069) ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.aa = icmp slt i64 %indvars.iv.next, %i.n
  br i1 %i.aa, label %bb.b, label %._crit_edge, !llvm.loop !580

._crit_edge:                                      ; preds = %bb.b, %.preheader65
  %.0.lcssa = phi double [ 0.000000e+00, %.preheader65 ], [ %i.z, %bb.b ]
  %i.ab = getelementptr inbounds [8 x i8], ptr %4, i64 %i.r
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !58
  %i.ad = fsub double %i.ac, %.0.lcssa
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv88
  store double %i.ad, ptr %i.ae, align 8, !tbaa !58
  %indvars.iv.next89 = add nsw i64 %indvars.iv88, 1 ; 2 uses
  %i.af = icmp slt i64 %indvars.iv.next89, %i.m
  br i1 %i.af, label %.preheader65, label %.preheader63.preheader, !llvm.loop !581

.preheader63:                                     ; preds = %.preheader63.preheader, %._crit_edge76
  %indvar = phi i32 [ 0, %.preheader63.preheader ], [ %indvar.next, %._crit_edge76 ] ; 3 uses
  %indvars.iv91 = phi i64 [ %i.t, %.preheader63.preheader ], [ %indvars.iv.next92, %._crit_edge76 ] ; 4 uses
  %i.ag = add i32 %indvar, -1
  %indvars.iv.next92 = add nsw i64 %indvars.iv91, -1 ; 5 uses
  %i.ah = icmp slt i64 %indvars.iv91, %i.t
end_hunk_0
begin_hunk_1_@_ZN10tetgenmesh6flip31EPNS_4faceEi:bb.a
  %i.je = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.jd
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !220
  %i.jg = getelementptr inbounds [8 x i8], ptr %i.cq, i64 %i.gx
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !220
  %.not83.2 = icmp ne ptr %i.jf, %i.jh
  %i.ji = zext i1 %.not83.2 to i32
  %spec.select = xor i32 %i.gv, %i.ji
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.sroa.22.0 = phi i64 [ %i.co, %bb.af ], [ 0, %bb.ag ]
  %.sroa.39.0 = phi i32 [ %i.gv, %bb.af ], [ %spec.select, %bb.ag ] ; 3 uses
  %i.jj = ashr i32 %.sroa.39.0, 1
  %i.jk = sext i32 %i.jj to i64
  %i.jl = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.jk
  store ptr %i.cf, ptr %i.jl, align 8, !tbaa !220
  %i.jm = ptrtoint ptr %i.dw to i64
  %i.jn = sext i32 %.sroa.39.0 to i64
  %i.jo = or i64 %i.jn, %i.jm
  %i.jp = inttoptr i64 %i.jo to ptr
  %i.jq = lshr i32 %.sroa.22117.0, 1
  %i.jr = zext nneg i32 %i.jq to i64
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %.sroa.18116.0, i64 %i.jr
  store ptr %i.jp, ptr %i.js, align 8, !tbaa !220
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ae
  %.sroa.22.1 = phi i64 [ %i.co, %bb.ae ], [ %.sroa.22.0, %bb.ah ]
  %.sroa.39.1 = phi i32 [ %i.gv, %bb.ae ], [ %.sroa.39.0, %bb.ah ] ; 4 uses
  %.not84.2 = icmp eq i64 %i.cp, 0
  br i1 %.not84.2, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.jt = or i64 %.sroa.22.1, %i.cp
  %i.ju = inttoptr i64 %i.jt to ptr
  %i.jv = ashr i32 %.sroa.39.1, 1
  %i.jw = sext i32 %i.jv to i64
  %i.jx = getelementptr [8 x i8], ptr %i.dw, i64 %i.jw
  %i.jy = getelementptr i8, ptr %i.jx, i64 48
  store ptr %i.ju, ptr %i.jy, align 8, !tbaa !220
  %i.jz = ptrtoint ptr %i.dw to i64
  %i.ka = sext i32 %.sroa.39.1 to i64
  %i.kb = or i64 %i.ka, %i.jz
  %i.kc = inttoptr i64 %i.kb to ptr
  store ptr %i.kc, ptr %i.cq, align 8, !tbaa !220
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 68608
  store ptr %i.dw, ptr %i.kd, align 8, !tbaa !224
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 68616
  store i32 %.pre.pre.pre, ptr %i.ke, align 8, !tbaa !225
  %.not80 = icmp eq i32 %2, 0
  br i1 %.not80, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.ak
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 2752 ; 3 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 2776 ; 6 uses
  %i.kh = load ptr, ptr %i.kf, align 8, !tbaa !263
  %i.ki = tail call noundef ptr @_ZN10tetgenmesh10memorypool5allocEv(ptr noundef nonnull align 8 dereferenceable(88) %i.kh) ; 6 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  store ptr %i.dw, ptr %i.kj, align 8, !tbaa !224
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ki, i64 24
  store i32 %.sroa.9.1, ptr %i.kk, align 8, !tbaa !225
  %i.kl = sext i32 %.sroa.9.1 to i64              ; 2 uses
  %i.km = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9sorgpivotE, i64 %i.kl
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !59
  %i.ko = sext i32 %i.kn to i64
  %i.kp = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.ko
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !220
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ki, i64 88
  store ptr %i.kq, ptr %i.kr, align 8, !tbaa !288
  %i.ks = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10sdestpivotE, i64 %i.kl
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !59
  %i.ku = sext i32 %i.kt to i64
  %i.kv = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.ku
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !220
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ki, i64 96
  store ptr %i.kw, ptr %i.kx, align 8, !tbaa !289
  %i.ky = load ptr, ptr %i.kg, align 8, !tbaa !290
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ki, i64 128
  store ptr %i.ky, ptr %i.kz, align 8, !tbaa !273
  store ptr %i.ki, ptr %i.kg, align 8, !tbaa !290
  %i.la = load ptr, ptr %i.kf, align 8, !tbaa !263
  %i.lb = tail call noundef ptr @_ZN10tetgenmesh10memorypool5allocEv(ptr noundef nonnull align 8 dereferenceable(88) %i.la) ; 6 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 16
  store ptr %i.dw, ptr %i.lc, align 8, !tbaa !224
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lb, i64 24
  store i32 %.sroa.24.1, ptr %i.ld, align 8, !tbaa !225
  %i.le = sext i32 %.sroa.24.1 to i64             ; 2 uses
  %i.lf = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9sorgpivotE, i64 %i.le
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !59
  %i.lh = sext i32 %i.lg to i64
  %i.li = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.lh
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !220
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lb, i64 88
  store ptr %i.lj, ptr %i.lk, align 8, !tbaa !288
  %i.ll = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10sdestpivotE, i64 %i.le
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !59
  %i.ln = sext i32 %i.lm to i64
  %i.lo = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.ln
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !220
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lb, i64 96
  store ptr %i.lp, ptr %i.lq, align 8, !tbaa !289
  %i.lr = load ptr, ptr %i.kg, align 8, !tbaa !290
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lb, i64 128
  store ptr %i.lr, ptr %i.ls, align 8, !tbaa !273
  store ptr %i.lb, ptr %i.kg, align 8, !tbaa !290
  %i.lt = load ptr, ptr %i.kf, align 8, !tbaa !263
  %i.lu = tail call noundef ptr @_ZN10tetgenmesh10memorypool5allocEv(ptr noundef nonnull align 8 dereferenceable(88) %i.lt) ; 6 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  store ptr %i.dw, ptr %i.lv, align 8, !tbaa !224
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lu, i64 24
  store i32 %.sroa.39.1, ptr %i.lw, align 8, !tbaa !225
  %i.lx = sext i32 %.sroa.39.1 to i64             ; 2 uses
  %i.ly = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9sorgpivotE, i64 %i.lx
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !59
  %i.ma = sext i32 %i.lz to i64
  %i.mb = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.ma
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !220
  %i.md = getelementptr inbounds nuw i8, ptr %i.lu, i64 88
  store ptr %i.mc, ptr %i.md, align 8, !tbaa !288
  %i.me = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10sdestpivotE, i64 %i.lx
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !59
  %i.mg = sext i32 %i.mf to i64
  %i.mh = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.mg
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !220
  %i.mj = getelementptr inbounds nuw i8, ptr %i.lu, i64 96
  store ptr %i.mi, ptr %i.mj, align 8, !tbaa !289
  %i.mk = load ptr, ptr %i.kg, align 8, !tbaa !290
  %i.ml = getelementptr inbounds nuw i8, ptr %i.lu, i64 128
  store ptr %i.mk, ptr %i.ml, align 8, !tbaa !273
  store ptr %i.lu, ptr %i.kg, align 8, !tbaa !290
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.ak
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN10tetgenmesh6flipnmEPNS_7trifaceEiiiPNS_15flipconstraintsE(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca [3 x %"class.tetgenmesh::triface"], align 16 ; 17 uses
  %7 = alloca %"class.tetgenmesh::triface", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %8 = alloca %"class.tetgenmesh::triface", align 8 ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #45
  store ptr null, ptr %6, align 16, !tbaa !231
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 9 uses
  store i32 0, ptr %i.c, align 8, !tbaa !236
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr null, ptr %.ptr.1, align 16, !tbaa !231
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store i32 0, ptr %i.d, align 8, !tbaa !236
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  store ptr null, ptr %.ptr.2, align 16, !tbaa !231
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  store i32 0, ptr %i.e, align 8, !tbaa !236
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #45
  store ptr null, ptr %7, align 8, !tbaa !231
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 0, ptr %i.f, align 8, !tbaa !236
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  %i.g = load ptr, ptr %1, align 8, !tbaa !231    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !236
  %i.j = sext i32 %i.i to i64                     ; 3 uses
  %i.k = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8orgpivotE, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !59
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !220  ; 11 uses
  %i.p = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9destpivotE, i64 %i.j
  %i.q = load i32, ptr %i.p, align 4, !tbaa !59
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !220  ; 13 uses
  %i.u = icmp sgt i32 %2, 3
  br i1 %i.u, label %.preheader685, label %bb.bh

.preheader685:                                    ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 68700
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 68684 ; 13 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 68584 ; 3 uses
  %i.y = icmp eq i32 %2, 4                        ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 68712
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 5 uses
  %i.ac = add nsw i32 %2, -1                      ; 8 uses
  %i.ad = zext i32 %i.ac to i64                   ; 7 uses
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.ad ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2800 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ak = add nsw i32 %2, -2
  %i.al = zext i32 %i.ak to i64                   ; 10 uses
  %i.am = zext nneg i32 %i.ac to i64              ; 2 uses
  %i.an = zext nneg i32 %2 to i64                 ; 2 uses
  %i.ao = add nuw nsw i64 %i.al, 1
  %i.ap = add nsw i64 %i.ad, -1
  br label %bb.b

bb.b:                                             ; preds = %.preheader685, %.critedge587
  %indvars.iv = phi i64 [ 0, %.preheader685 ], [ %indvars.iv.next, %.critedge587 ] ; 18 uses
  %.0472736 = phi i32 [ 0, %.preheader685 ], [ %.2474, %.critedge587 ] ; 12 uses
  %.lcssa715731734 = phi ptr [ undef, %.preheader685 ], [ %.lcssa715729, %.critedge587 ] ; 12 uses
  %i.aq = sub nsw i64 %i.ao, %indvars.iv
  %i.ar = sub nsw i64 %i.al, %indvars.iv
  %i.as = sub nsw i64 %i.ad, %indvars.iv
  %i.at = load i32, ptr %i.v, align 4, !tbaa !276
  %.not568 = icmp eq i32 %i.at, 0
  %.phi.trans.insert = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !231 ; 3 uses
  br i1 %.not568, label %._crit_edge864, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.au = getelementptr inbounds nuw i8, ptr %.pre, i64 72
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !220 ; 2 uses
  %.not569 = icmp eq ptr %i.av, null
  br i1 %.not569, label %._crit_edge864, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aw = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 8
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !236
  %i.ay = and i32 %i.ax, 3
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !112
  %.not570 = icmp eq ptr %i.bb, null
  br i1 %.not570, label %._crit_edge864, label %.critedge587

._crit_edge864:                                   ; preds = %bb.b, %bb.c, %bb.d
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv ; 4 uses
  %i.bd = load i32, ptr %i.w, align 4, !tbaa !232
  %i.be = sext i32 %i.bd to i64                   ; 2 uses
  %i.bf = getelementptr inbounds [4 x i8], ptr %.pre, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !59
  %i.bh = icmp sgt i32 %i.bg, 131071
  br i1 %i.bh, label %.critedge587, label %bb.e

bb.e:                                             ; preds = %._crit_edge864
  %i.bi = add nsw i64 %indvars.iv, -1             ; 2 uses
  %i.bj = trunc i64 %i.bi to i32
  %i.bk = add i32 %2, %i.bj
  %i.bl = srem i32 %i.bk, %2
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [16 x i8], ptr %1, i64 %i.bm ; 4 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !231 ; 2 uses
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %i.be
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !59
  %i.br = icmp sgt i32 %i.bq, 131071
  br i1 %i.br, label %.critedge587, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 3 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !236
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9apexpivotE, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !59
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [8 x i8], ptr %.pre, i64 %i.bx
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !220 ; 5 uses
  %i.ca = add nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.cb = icmp eq i64 %i.ca, %i.an
  %i.cc = select i1 %i.cb, i64 0, i64 %i.ca
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.cc ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !231
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !236
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9apexpivotE, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !59
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.ce, i64 %i.ck
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !220 ; 9 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 3 uses
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !236
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9apexpivotE, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !59
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.cs
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !220 ; 9 uses
  %i.cv = load ptr, ptr %i.x, align 8, !tbaa !250 ; 3 uses
  %i.cw = icmp eq ptr %i.cm, %i.cv
  %i.cx = icmp eq ptr %i.cu, %i.cv
  %or.cond582 = or i1 %i.cw, %i.cx
  br i1 %or.cond582, label %.critedge587, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cy = icmp eq ptr %i.bz, %i.cv                ; 2 uses
  %i.cz = zext i1 %i.cy to i32                    ; 2 uses
  br i1 %i.cy, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.da = call noundef double @_Z8orient3dPdS_S_S_(ptr noundef %i.t, ptr noundef %i.bz, ptr noundef %i.cm, ptr noundef %i.cu)
  %i.db = fcmp ogt double %i.da, 0.000000e+00
  br i1 %i.db, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.dc = call noundef double @_Z8orient3dPdS_S_S_(ptr noundef %i.bz, ptr noundef %i.o, ptr noundef %i.cm, ptr noundef %i.cu)
  %i.dd = fcmp ogt double %i.dc, 0.000000e+00
  br i1 %i.dd, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.de = call noundef double @_Z8orient3dPdS_S_S_(ptr noundef %i.o, ptr noundef %i.t, ptr noundef %i.cm, ptr noundef %i.cu) ; 3 uses
  %i.df = fcmp ogt double %i.de, 0.000000e+00
  br i1 %i.df, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dg = fcmp oeq double %i.de, 0.000000e+00
  %or.cond5 = and i1 %i.y, %i.dg
  br i1 %or.cond5, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.dh = and i64 %indvars.iv, 3
  %i.di = xor i64 %i.dh, 2
  %i.dj = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.di ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !231
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !236
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9apexpivotE, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !59
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.dk, i64 %i.dq
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !220
  %i.dt = load ptr, ptr %i.x, align 8, !tbaa !250
  %i.du = icmp eq ptr %i.ds, %i.dt
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.l
  %.0487 = phi i1 [ false, %bb.j ], [ %i.du, %bb.l ]
  %i.dv = fcmp oeq double %i.de, 0.000000e+00
  br label %bb.r

bb.n:                                             ; preds = %bb.h, %bb.k, %bb.i
  %i.dw = add nsw i32 %.0472736, 1
  br label %.critedge587

bb.o:                                             ; preds = %bb.g
  br i1 %i.y, label %bb.p, label %.critedge587

bb.p:                                             ; preds = %bb.o
  %i.dx = and i64 %indvars.iv, 3
  %i.dy = xor i64 %i.dx, 2
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.dy ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !231
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !236
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9apexpivotE, i64 %i.ed
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !59
  %i.eg = sext i32 %i.ef to i64
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %i.eg
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !220 ; 2 uses
  %i.ej = call noundef double @_Z8orient3dPdS_S_S_(ptr noundef %i.cm, ptr noundef %i.cu, ptr noundef %i.ei, ptr noundef %i.o)
  %i.ek = fcmp olt double %i.ej, 0.000000e+00
  br i1 %i.ek, label %bb.q, label %.critedge587

bb.q:                                             ; preds = %bb.p
  %i.el = call noundef double @_Z8orient3dPdS_S_S_(ptr noundef %i.cu, ptr noundef %i.cm, ptr noundef %i.ei, ptr noundef %i.t)
  %i.em = fcmp olt double %i.el, 0.000000e+00
  br i1 %i.em, label %bb.r, label %.critedge587

bb.r:                                             ; preds = %bb.q, %bb.m
  %.2492 = phi i1 [ %i.dv, %bb.m ], [ true, %bb.q ]
  %.1488 = phi i1 [ %.0487, %bb.m ], [ true, %bb.q ]
  %i.en = load i32, ptr %i.z, align 8, !tbaa !292
  %i.eo = icmp ne i32 %i.en, 0
  %or.cond = select i1 %i.eo, i1 %.1488, i1 false
  br i1 %or.cond, label %bb.s, label %.critedge

bb.s:                                             ; preds = %bb.r
  %i.ep = call noundef i32 @_ZN10tetgenmesh7getedgeEPdS0_PNS_7trifaceE(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef %i.cu, ptr noundef %i.cm, ptr noundef nonnull %7)
  %.not573.not = icmp eq i32 %i.ep, 0
  br i1 %.not573.not, label %.critedge, label %.critedge587

.critedge:                                        ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i64 16, i1 false), !tbaa.struct !294
  %i.eq = call noundef zeroext i1 @_ZN10tetgenmesh21valid_constrained_f23ERNS_7trifaceEPdS2_(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef %i.cm, ptr noundef %i.cu)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #45
  br i1 %i.eq, label %bb.t, label %.critedge587

bb.t:                                             ; preds = %.critedge
  %i.er = load i32, ptr %i.aa, align 8, !tbaa !295
  %.not576 = icmp eq i32 %i.er, 0
  br i1 %.not576, label %.critedge589, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.es = call noundef i32 @_ZN10tetgenmesh20checkflipeligibilityEiPdS0_S0_S0_S0_iiPNS_15flipconstraintsE(ptr noundef nonnull align 8 dereferenceable(69984) %0, i32 noundef 1, ptr noundef %i.o, ptr noundef %i.t, ptr noundef %i.bz, ptr noundef %i.cm, ptr noundef %i.cu, i32 noundef %3, i32 noundef %4, ptr noundef nonnull %5)
  %i.et = icmp eq i32 %i.es, 0
  br i1 %i.et, label %.critedge589, label %.critedge587

.critedge589:                                     ; preds = %bb.t, %bb.u
  %i.eu = load ptr, ptr %i.bc, align 8, !tbaa !231 ; 2 uses
  store ptr %i.eu, ptr %6, align 16, !tbaa !231
end_hunk_1
begin_hunk_2_@_ZN10tetgenmesh6flipnmEPNS_7trifaceEiiiPNS_15flipconstraintsE:bb.a
  br i1 %or.cond3, label %bb.w, label %.critedge602

bb.w:                                             ; preds = %bb.v
  %i.ik = trunc i64 %i.bi to i32
  %i.il = add i32 %i.ac, %i.ik
  %i.im = srem i32 %i.il, %i.ac
  %i.in = sext i32 %i.im to i64
  %i.io = getelementptr inbounds [16 x i8], ptr %1, i64 %i.in ; 2 uses
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !231 ; 2 uses
  store ptr %i.ip, ptr %6, align 16, !tbaa !231
  %i.iq = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %i.ir = load i32, ptr %i.iq, align 8, !tbaa !236
  %i.is = sext i32 %i.ir to i64
  %i.it = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh12edestoppotblE, i64 %i.is
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !59 ; 2 uses
  store i32 %i.iu, ptr %i.c, align 8, !tbaa !236
  %i.iv = sext i32 %i.iu to i64                   ; 2 uses
  %i.iw = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10facepivot1E, i64 %i.iv
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !59
  %i.iy = sext i32 %i.ix to i64
  %i.iz = getelementptr inbounds [8 x i8], ptr %i.ip, i64 %i.iy
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !220
  %i.jb = ptrtoint ptr %i.ja to i64               ; 2 uses
  %i.jc = and i64 %i.jb, -16
  %i.jd = inttoptr i64 %i.jc to ptr               ; 2 uses
  store ptr %i.jd, ptr %.ptr.1, align 16, !tbaa !231
  %i.je = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh10facepivot2E, i64 %i.iv
  %i.jf = and i64 %i.jb, 15
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.je, i64 %i.jf
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !59 ; 2 uses
  store i32 %i.jh, ptr %i.ab, align 8, !tbaa !236
  %i.ji = sext i32 %i.jh to i64                   ; 2 uses
  %i.jj = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10facepivot1E, i64 %i.ji
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !59
  %i.jl = sext i32 %i.jk to i64
  %i.jm = getelementptr inbounds [8 x i8], ptr %i.jd, i64 %i.jl
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !220
  %i.jo = ptrtoint ptr %i.jn to i64               ; 2 uses
  %i.jp = and i64 %i.jo, -16
  %i.jq = inttoptr i64 %i.jp to ptr
  store ptr %i.jq, ptr %.ptr.2, align 16, !tbaa !231
  %i.jr = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh10facepivot2E, i64 %i.ji
  %i.js = and i64 %i.jo, 15
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %i.js
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !59
  store i32 %i.ju, ptr %i.aj, align 8, !tbaa !236
  call void @_ZN10tetgenmesh6flip32EPNS_7trifaceEiPNS_15flipconstraintsE(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef nonnull %6, i32 noundef %i.cz, ptr noundef nonnull %5)
  %i.jv = load ptr, ptr %6, align 16, !tbaa !231  ; 2 uses
  %i.jw = load i32, ptr %i.w, align 4, !tbaa !232
  %i.jx = sext i32 %i.jw to i64
  %i.jy = getelementptr inbounds [4 x i8], ptr %i.jv, i64 %i.jx ; 2 uses
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !59 ; 2 uses
  %i.ka = and i32 %i.jz, -65536
  %i.kb = add i32 %i.ka, 65536
  %i.kc = and i32 %i.jz, 65535
  %i.kd = or disjoint i32 %i.kb, %i.kc
  store i32 %i.kd, ptr %i.jy, align 4, !tbaa !59
  %i.ke = load ptr, ptr %.ptr.1, align 16, !tbaa !231 ; 2 uses
  %i.kf = load i32, ptr %i.w, align 4, !tbaa !232
  %i.kg = sext i32 %i.kf to i64
  %i.kh = getelementptr inbounds [4 x i8], ptr %i.ke, i64 %i.kg ; 2 uses
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !59 ; 2 uses
  %i.kj = and i32 %i.ki, -65536
  %i.kk = add i32 %i.kj, 65536
  %i.kl = and i32 %i.ki, 65535
  %i.km = or disjoint i32 %i.kk, %i.kl
  store i32 %i.km, ptr %i.kh, align 4, !tbaa !59
  %.not579718 = icmp samesign ugt i64 %indvars.iv, %i.al
  br i1 %.not579718, label %._crit_edge722, label %.lr.ph721.preheader

.lr.ph721.preheader:                              ; preds = %bb.w
  %xtraiter956 = and i64 %i.aq, 3                 ; 2 uses
  %lcmp.mod957.not = icmp eq i64 %xtraiter956, 0
  br i1 %lcmp.mod957.not, label %.lr.ph721.prol.loopexit, label %.lr.ph721.prol

.lr.ph721.prol:                                   ; preds = %.lr.ph721.preheader, %.lr.ph721.prol
  %indvars.iv830.prol = phi i64 [ %indvars.iv.next831.prol, %.lr.ph721.prol ], [ %i.al, %.lr.ph721.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph721.prol ], [ 0, %.lr.ph721.preheader ]
  %i.kn = getelementptr inbounds [16 x i8], ptr %1, i64 %indvars.iv830.prol ; 4 uses
  %i.ko = getelementptr i8, ptr %i.kn, i64 16
  %i.kp = load ptr, ptr %i.kn, align 8, !tbaa !231
  store ptr %i.kp, ptr %i.ko, align 8, !tbaa !231
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %i.kr = load i32, ptr %i.kq, align 8, !tbaa !236
  %i.ks = getelementptr i8, ptr %i.kn, i64 24
  store i32 %i.kr, ptr %i.ks, align 8, !tbaa !236
  %indvars.iv.next831.prol = add nsw i64 %indvars.iv830.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter956
  br i1 %prol.iter.cmp.not, label %.lr.ph721.prol.loopexit, label %.lr.ph721.prol, !llvm.loop !603

.lr.ph721.prol.loopexit:                          ; preds = %.lr.ph721.prol, %.lr.ph721.preheader
  %indvars.iv830.unr = phi i64 [ %i.al, %.lr.ph721.preheader ], [ %indvars.iv.next831.prol, %.lr.ph721.prol ]
  %i.kt = icmp ult i64 %i.ar, 3
  br i1 %i.kt, label %._crit_edge722, label %.lr.ph721

.lr.ph721:                                        ; preds = %.lr.ph721.prol.loopexit, %.lr.ph721
  %indvars.iv830 = phi i64 [ %indvars.iv.next831.3, %.lr.ph721 ], [ %indvars.iv830.unr, %.lr.ph721.prol.loopexit ] ; 5 uses
  %i.ku = getelementptr inbounds [16 x i8], ptr %1, i64 %indvars.iv830 ; 4 uses
  %i.kv = getelementptr i8, ptr %i.ku, i64 16
  %i.kw = load ptr, ptr %i.ku, align 8, !tbaa !231
  store ptr %i.kw, ptr %i.kv, align 8, !tbaa !231
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  %i.ky = load i32, ptr %i.kx, align 8, !tbaa !236
  %i.kz = getelementptr i8, ptr %i.ku, i64 24
  store i32 %i.ky, ptr %i.kz, align 8, !tbaa !236
  %i.la = getelementptr [16 x i8], ptr %1, i64 %indvars.iv830 ; 4 uses
  %i.lb = getelementptr i8, ptr %i.la, i64 -16
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !231
  store ptr %i.lc, ptr %i.la, align 8, !tbaa !231
  %i.ld = getelementptr i8, ptr %i.la, i64 -8
  %i.le = load i32, ptr %i.ld, align 8, !tbaa !236
  %i.lf = getelementptr i8, ptr %i.la, i64 8
  store i32 %i.le, ptr %i.lf, align 8, !tbaa !236
  %i.lg = getelementptr [16 x i8], ptr %1, i64 %indvars.iv830 ; 4 uses
  %i.lh = getelementptr i8, ptr %i.lg, i64 -32
  %i.li = getelementptr i8, ptr %i.lg, i64 -16
  %i.lj = load ptr, ptr %i.lh, align 8, !tbaa !231
  store ptr %i.lj, ptr %i.li, align 8, !tbaa !231
  %i.lk = getelementptr i8, ptr %i.lg, i64 -24
  %i.ll = load i32, ptr %i.lk, align 8, !tbaa !236
  %i.lm = getelementptr i8, ptr %i.lg, i64 -8
  store i32 %i.ll, ptr %i.lm, align 8, !tbaa !236
  %indvars.iv.next831.2 = add nsw i64 %indvars.iv830, -3 ; 2 uses
  %i.ln = getelementptr inbounds [16 x i8], ptr %1, i64 %indvars.iv.next831.2 ; 4 uses
  %i.lo = getelementptr i8, ptr %i.ln, i64 16
  %i.lp = load ptr, ptr %i.ln, align 8, !tbaa !231
  store ptr %i.lp, ptr %i.lo, align 8, !tbaa !231
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ln, i64 8
  %i.lr = load i32, ptr %i.lq, align 8, !tbaa !236
  %i.ls = getelementptr i8, ptr %i.ln, i64 24
  store i32 %i.lr, ptr %i.ls, align 8, !tbaa !236
  %indvars.iv.next831.3 = add nsw i64 %indvars.iv830, -4
  %.not579.not.3 = icmp sgt i64 %indvars.iv.next831.2, %indvars.iv
  br i1 %.not579.not.3, label %.lr.ph721, label %._crit_edge722, !llvm.loop !604

._crit_edge722:                                   ; preds = %.lr.ph721.prol.loopexit, %.lr.ph721, %bb.w
  store ptr %i.ke, ptr %i.bn, align 8, !tbaa !231
  %i.lt = load i32, ptr %i.ab, align 8, !tbaa !236
  %i.lu = sext i32 %i.lt to i64
  %i.lv = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.lu
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !59
  store i32 %i.lw, ptr %i.cn, align 8, !tbaa !236
  store ptr %i.jv, ptr %i.bc, align 8, !tbaa !231
  %i.lx = load i32, ptr %i.c, align 8, !tbaa !236
  store i32 %i.lx, ptr %i.bs, align 8, !tbaa !236
  %i.ly = load i32, ptr %i.ag, align 4, !tbaa !296
  %.not580 = icmp eq i32 %i.ly, 0
  br i1 %.not580, label %bb.y, label %bb.x

bb.x:                                             ; preds = %._crit_edge722
  %i.lz = load ptr, ptr %i.ah, align 8, !tbaa !266
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 32 ; 2 uses
  %i.mb = load i64, ptr %i.ma, align 8, !tbaa !100
  %i.mc = add nsw i64 %i.mb, -2
  store i64 %i.mc, ptr %i.ma, align 8, !tbaa !100
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge722
  %.pr = load i32, ptr %i.ai, align 8, !tbaa !297
  %.not581 = icmp eq i32 %.pr, 0
  br i1 %.not581, label %.critedge602.loopexit686.split.loop.exit723, label %.critedge587

.critedge587:                                     ; preds = %bb.n, %bb.q, %bb.o, %bb.p, %bb.s, %.critedge, %bb.y, %bb.u, %bb.f, %._crit_edge864, %bb.e, %bb.d
  %.lcssa715729 = phi ptr [ %.lcssa715731734, %bb.d ], [ %.lcssa715731734, %._crit_edge864 ], [ %.lcssa715731734, %bb.e ], [ %.lcssa715731734, %bb.f ], [ %.lcssa715731734, %.critedge ], [ %.lcssa715731734, %bb.u ], [ %.lcssa715730, %bb.y ], [ %.lcssa715731734, %bb.s ], [ %.lcssa715731734, %bb.n ], [ %.lcssa715731734, %bb.q ], [ %.lcssa715731734, %bb.o ], [ %.lcssa715731734, %bb.p ] ; 2 uses
  %.2474 = phi i32 [ %.0472736, %bb.d ], [ %.0472736, %._crit_edge864 ], [ %.0472736, %bb.e ], [ %.0472736, %bb.f ], [ %.0472736, %.critedge ], [ %.0472736, %bb.u ], [ %.0472736, %bb.y ], [ %.0472736, %bb.s ], [ %i.dw, %bb.n ], [ %.0472736, %bb.q ], [ %.0472736, %bb.o ], [ %.0472736, %bb.p ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond835.not = icmp eq i64 %indvars.iv.next, %i.an
  br i1 %exitcond835.not, label %bb.z, label %bb.b, !llvm.loop !605

bb.z:                                             ; preds = %.critedge587
  store ptr %.lcssa715729, ptr %i.a, align 8
  %i.md = icmp sgt i32 %.2474, 0
  br i1 %i.md, label %bb.aa, label %.critedge602

bb.aa:                                            ; preds = %bb.z
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !218
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 188
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !298 ; 2 uses
  %i.mi = icmp slt i32 %i.mh, 0
  br i1 %i.mi, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 68716
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !299
  %i.ml = icmp slt i32 %3, %i.mk
  br i1 %i.ml, label %.lr.ph785, label %.critedge602

bb.ac:                                            ; preds = %bb.aa
  %i.mm = icmp slt i32 %3, %i.mh
  br i1 %i.mm, label %.lr.ph785, label %.critedge602

.lr.ph785:                                        ; preds = %bb.ab, %bb.ac
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 68696
  %i.mo = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 68688
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 2864
  %i.mr = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.ms = add nsw i32 %3, 1
  %smax = call i32 @llvm.smax.i32(i32 %2, i32 1)
  %wide.trip.count862 = zext nneg i32 %smax to i64
  %i.mt = add nuw nsw i64 %i.al, 1
  %i.mu = add nsw i64 %i.ad, -1
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph785, %.thread662
  %indvars.iv848 = phi i64 [ 0, %.lr.ph785 ], [ %indvars.iv.next849, %.thread662 ] ; 15 uses
  %i.mv = sub nsw i64 %i.mt, %indvars.iv848
  %i.mw = sub nsw i64 %i.al, %indvars.iv848
  %i.mx = sub nsw i64 %i.ad, %indvars.iv848
  %i.my = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv848 ; 4 uses
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !231 ; 2 uses
  %i.na = load i32, ptr %i.w, align 4, !tbaa !232
  %i.nb = sext i32 %i.na to i64                   ; 2 uses
  %i.nc = getelementptr inbounds [4 x i8], ptr %i.mz, i64 %i.nb
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !59
  %i.ne = icmp sgt i32 %i.nd, 131071
  br i1 %i.ne, label %.thread662, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.nf = add nsw i64 %indvars.iv848, -1          ; 2 uses
  %i.ng = trunc i64 %i.nf to i32
  %i.nh = add i32 %2, %i.ng
  %i.ni = srem i32 %i.nh, %2
  %i.nj = sext i32 %i.ni to i64
  %i.nk = getelementptr inbounds [16 x i8], ptr %1, i64 %i.nj ; 4 uses
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !231 ; 2 uses
  %i.nm = getelementptr inbounds [4 x i8], ptr %i.nl, i64 %i.nb
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !59
  %i.no = icmp sgt i32 %i.nn, 131071
  br i1 %i.no, label %.thread662, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.np = getelementptr inbounds nuw i8, ptr %i.my, i64 8 ; 3 uses
  %i.nq = load i32, ptr %i.np, align 8, !tbaa !236
  %i.nr = sext i32 %i.nq to i64
  %i.ns = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9apexpivotE, i64 %i.nr
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !59
  %i.nu = sext i32 %i.nt to i64
  %i.nv = getelementptr inbounds [8 x i8], ptr %i.mz, i64 %i.nu
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !220 ; 4 uses
  %i.nx = load ptr, ptr %i.x, align 8, !tbaa !250 ; 3 uses
  %i.ny = icmp eq ptr %i.nw, %i.nx
  br i1 %i.ny, label %.thread662, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.nz = trunc i64 %indvars.iv848 to i32
  %i.oa = add i32 %i.nz, 1
  %i.ob = urem i32 %i.oa, %2
  %i.oc = zext nneg i32 %i.ob to i64
  %i.od = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.oc ; 2 uses
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !231
  %i.of = getelementptr inbounds nuw i8, ptr %i.od, i64 8
  %i.og = load i32, ptr %i.of, align 8, !tbaa !236
  %i.oh = sext i32 %i.og to i64
  %i.oi = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9apexpivotE, i64 %i.oh
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !59
  %i.ok = sext i32 %i.oj to i64
  %i.ol = getelementptr inbounds [8 x i8], ptr %i.oe, i64 %i.ok
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !220 ; 3 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.nk, i64 8 ; 3 uses
  %i.oo = load i32, ptr %i.on, align 8, !tbaa !236
  %i.op = sext i32 %i.oo to i64
  %i.oq = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9apexpivotE, i64 %i.op
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !59
  %i.os = sext i32 %i.or to i64
  %i.ot = getelementptr inbounds [8 x i8], ptr %i.nl, i64 %i.os
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !220 ; 3 uses
  %i.ov = icmp eq ptr %i.om, %i.nx
  %i.ow = icmp eq ptr %i.ou, %i.nx
  %or.cond591 = or i1 %i.ov, %i.ow
  br i1 %or.cond591, label %.thread662, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ox = call noundef double @_Z8orient3dPdS_S_S_(ptr noundef %i.t, ptr noundef %i.nw, ptr noundef %i.om, ptr noundef %i.ou)
  %i.oy = fcmp ole double %i.ox, 0.000000e+00     ; 7 uses
  br i1 %i.oy, label %bb.ai, label %.critedge593

.critedge593:                                     ; preds = %bb.ah
  %i.oz = call noundef double @_Z8orient3dPdS_S_S_(ptr noundef %i.nw, ptr noundef %i.o, ptr noundef %i.om, ptr noundef %i.ou)
  %i.pa = fcmp ugt double %i.oz, 0.000000e+00
  br i1 %i.pa, label %.thread662, label %bb.ai

bb.ai:                                            ; preds = %.critedge593, %bb.ah
  %_ZN10tetgenmesh8enexttblE.sink = phi ptr [ @_ZN10tetgenmesh8enexttblE, %bb.ah ], [ @_ZN10tetgenmesh8eprevtblE, %.critedge593 ]
  %.1469.ph = phi i32 [ 1, %bb.ah ], [ 2, %.critedge593 ] ; 3 uses
  %i.pb = load i32, ptr %i.np, align 8, !tbaa !236
  %i.pc = sext i32 %i.pb to i64
  %i.pd = getelementptr inbounds [4 x i8], ptr %_ZN10tetgenmesh8enexttblE.sink, i64 %i.pc
  %.sroa.10621.1.ph = load i32, ptr %i.pd, align 4, !tbaa !59 ; 2 uses
  %.sroa.0616.1.ph = load ptr, ptr %i.my, align 8, !tbaa !231 ; 4 uses
  %i.pe = load i32, ptr %i.mn, align 8, !tbaa !275
  %.not556 = icmp eq i32 %i.pe, 0
  br i1 %.not556, label %bb.ao, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.pf = getelementptr inbounds nuw i8, ptr %.sroa.0616.1.ph, i64 64
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !220 ; 2 uses
  %.not557 = icmp eq ptr %i.pg, null
  br i1 %.not557, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ph = sext i32 %.sroa.10621.1.ph to i64
  %i.pi = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8ver2edgeE, i64 %i.ph
  %i.pj = load i32, ptr %i.pi, align 4, !tbaa !59
  %i.pk = sext i32 %i.pj to i64
  %i.pl = getelementptr inbounds [8 x i8], ptr %i.pg, i64 %i.pk
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !112 ; 2 uses
  %.not558 = icmp eq ptr %i.pm, null
  br i1 %.not558, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.pn = load i32, ptr %i.mo, align 8, !tbaa !300
  %.not567 = icmp eq i32 %i.pn, 0
  br i1 %.not567, label %.thread662, label %_ZN10tetgenmesh9tsspivot1ERNS_7trifaceERNS_4faceE.exit

_ZN10tetgenmesh9tsspivot1ERNS_7trifaceERNS_4faceE.exit: ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #45
  %i.po = ptrtoint ptr %i.pm to i64               ; 2 uses
  %i.pp = and i64 %i.po, -8
  %i.pq = inttoptr i64 %i.pp to ptr               ; 2 uses
  %i.pr = load i32, ptr %i.mp, align 8, !tbaa !239
  %i.ps = sext i32 %i.pr to i64
  %i.pt = getelementptr [4 x i8], ptr %i.pq, i64 %i.ps
  %i.pu = getelementptr i8, ptr %i.pt, i64 4      ; 2 uses
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !59 ; 2 uses
  %i.pw = trunc i32 %i.pv to i1
  br i1 %i.pw, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_ZN10tetgenmesh9tsspivot1ERNS_7trifaceERNS_4faceE.exit
  %i.px = trunc i64 %i.po to i32
  %i.py = and i32 %i.px, 7
  %i.pz = or disjoint i32 %i.pv, 1
  store i32 %i.pz, ptr %i.pu, align 4, !tbaa !59
  %i.qa = load ptr, ptr %i.mq, align 8, !tbaa !262
  %i.qb = call noundef i32 @_ZN10tetgenmesh9arraypool8newindexEPPv(ptr noundef nonnull align 8 dereferenceable(48) %i.qa, ptr noundef nonnull %i.b) ; 0 uses
  %i.qc = load ptr, ptr %i.b, align 8, !tbaa !227 ; 2 uses
  store ptr %i.pq, ptr %i.qc, align 8, !tbaa !224
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 8
  store i32 %i.py, ptr %i.qd, align 8, !tbaa !225
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %_ZN10tetgenmesh9tsspivot1ERNS_7trifaceERNS_4faceE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #45
  br label %.thread662

bb.ao:                                            ; preds = %bb.aj, %bb.ak, %bb.ai
  %i.qe = sext i32 %.sroa.10621.1.ph to i64
  %i.qf = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.qe
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !59 ; 2 uses
  %i.qh = load i32, ptr %i.w, align 4, !tbaa !232
  %i.qi = sext i32 %i.qh to i64
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ar, %bb.ao
  %indvar = phi i64 [ %indvar.next, %bb.ar ], [ 0, %bb.ao ] ; 3 uses
  %indvars.iv839 = phi i32 [ %indvars.iv.next840, %bb.ar ], [ 1, %bb.ao ] ; 2 uses
  %i.qj = phi i32 [ %i.rj, %bb.ar ], [ %i.qg, %bb.ao ] ; 2 uses
  %i.qk = phi ptr [ %i.rf, %bb.ar ], [ %.sroa.0616.1.ph, %bb.ao ] ; 3 uses
  %.0467 = phi i32 [ %i.qs, %bb.ar ], [ 0, %bb.ao ] ; 3 uses
  %.4 = phi i32 [ %i.qw, %bb.ar ], [ 0, %bb.ao ]
  %.0456 = phi i32 [ %.1457, %bb.ar ], [ 0, %bb.ao ] ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 72
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !220 ; 2 uses
  %.not559 = icmp eq ptr %i.qm, null
  br i1 %.not559, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.qn = and i32 %i.qj, 3
  %i.qo = zext nneg i32 %i.qn to i64
  %i.qp = getelementptr inbounds nuw [8 x i8], ptr %i.qm, i64 %i.qo
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !112
  %.not560 = icmp ne ptr %i.qq, null
  %i.qr = zext i1 %.not560 to i32
  %spec.select594 = add nsw i32 %.0456, %i.qr
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.1457 = phi i32 [ %.0456, %bb.ap ], [ %spec.select594, %bb.aq ] ; 2 uses
  %i.qs = add nuw nsw i32 %.0467, 1               ; 6 uses
  %i.qt = getelementptr inbounds [4 x i8], ptr %i.qk, i64 %i.qi
  %i.qu = load i32, ptr %i.qt, align 4, !tbaa !59
  %i.qv = ashr i32 %i.qu, 16
  %i.qw = add nsw i32 %i.qv, %.4                  ; 2 uses
  %i.qx = sext i32 %i.qj to i64                   ; 2 uses
  %i.qy = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10facepivot1E, i64 %i.qx
  %i.qz = load i32, ptr %i.qy, align 4, !tbaa !59
  %i.ra = sext i32 %i.qz to i64
  %i.rb = getelementptr inbounds [8 x i8], ptr %i.qk, i64 %i.ra
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !220
  %i.rd = ptrtoint ptr %i.rc to i64               ; 2 uses
  %i.re = and i64 %i.rd, -16
  %i.rf = inttoptr i64 %i.re to ptr               ; 2 uses
  %i.rg = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh10facepivot2E, i64 %i.qx
  %i.rh = and i64 %i.rd, 15
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %i.rg, i64 %i.rh
  %i.rj = load i32, ptr %i.ri, align 4, !tbaa !59
  %i.rk = icmp eq ptr %.sroa.0616.1.ph, %i.rf
  %indvars.iv.next840 = add nuw i32 %indvars.iv839, 1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.rk, label %bb.as, label %bb.ap, !llvm.loop !606
end_hunk_2
begin_hunk_3_@_ZN10tetgenmesh6flipnmEPNS_7trifaceEiiiPNS_15flipconstraintsE:bb.a
  br label %bb.bd

bb.bd:                                            ; preds = %.split502, %.split
  %.sink = phi i32 [ 2, %.split502 ], [ 1, %.split ]
  %i.xz = call noundef i32 @_ZN10tetgenmesh11flipnm_postEPNS_7trifaceEiiiPNS_15flipconstraintsE(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef nonnull %i.rx, i32 noundef %i.qs, i32 noundef 2, i32 noundef %.sink, ptr noundef nonnull %5) ; 0 uses
  %.not565757 = icmp samesign ugt i64 %indvars.iv848, %i.al
  br i1 %.not565757, label %._crit_edge761, label %.lr.ph760.preheader

.lr.ph760.preheader:                              ; preds = %bb.bd
  %xtraiter968 = and i64 %i.mv, 3                 ; 2 uses
  %lcmp.mod969.not = icmp eq i64 %xtraiter968, 0
  br i1 %lcmp.mod969.not, label %.lr.ph760.prol.loopexit, label %.lr.ph760.prol

.lr.ph760.prol:                                   ; preds = %.lr.ph760.preheader, %.lr.ph760.prol
  %indvars.iv855.prol = phi i64 [ %indvars.iv.next856.prol, %.lr.ph760.prol ], [ %i.al, %.lr.ph760.preheader ] ; 2 uses
  %prol.iter970 = phi i64 [ %prol.iter970.next, %.lr.ph760.prol ], [ 0, %.lr.ph760.preheader ]
  %i.ya = getelementptr inbounds [16 x i8], ptr %1, i64 %indvars.iv855.prol ; 4 uses
  %i.yb = getelementptr i8, ptr %i.ya, i64 16
  %i.yc = load ptr, ptr %i.ya, align 8, !tbaa !231
  store ptr %i.yc, ptr %i.yb, align 8, !tbaa !231
  %i.yd = getelementptr inbounds nuw i8, ptr %i.ya, i64 8
  %i.ye = load i32, ptr %i.yd, align 8, !tbaa !236
  %i.yf = getelementptr i8, ptr %i.ya, i64 24
  store i32 %i.ye, ptr %i.yf, align 8, !tbaa !236
  %indvars.iv.next856.prol = add nsw i64 %indvars.iv855.prol, -1 ; 2 uses
  %prol.iter970.next = add i64 %prol.iter970, 1   ; 2 uses
  %prol.iter970.cmp.not = icmp eq i64 %prol.iter970.next, %xtraiter968
  br i1 %prol.iter970.cmp.not, label %.lr.ph760.prol.loopexit, label %.lr.ph760.prol, !llvm.loop !610

.lr.ph760.prol.loopexit:                          ; preds = %.lr.ph760.prol, %.lr.ph760.preheader
  %indvars.iv855.unr = phi i64 [ %i.al, %.lr.ph760.preheader ], [ %indvars.iv.next856.prol, %.lr.ph760.prol ]
  %i.yg = icmp ult i64 %i.mw, 3
  br i1 %i.yg, label %._crit_edge761, label %.lr.ph760

.lr.ph760:                                        ; preds = %.lr.ph760.prol.loopexit, %.lr.ph760
  %indvars.iv855 = phi i64 [ %indvars.iv.next856.3, %.lr.ph760 ], [ %indvars.iv855.unr, %.lr.ph760.prol.loopexit ] ; 5 uses
  %i.yh = getelementptr inbounds [16 x i8], ptr %1, i64 %indvars.iv855 ; 4 uses
  %i.yi = getelementptr i8, ptr %i.yh, i64 16
  %i.yj = load ptr, ptr %i.yh, align 8, !tbaa !231
  store ptr %i.yj, ptr %i.yi, align 8, !tbaa !231
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yh, i64 8
  %i.yl = load i32, ptr %i.yk, align 8, !tbaa !236
  %i.ym = getelementptr i8, ptr %i.yh, i64 24
  store i32 %i.yl, ptr %i.ym, align 8, !tbaa !236
  %i.yn = getelementptr [16 x i8], ptr %1, i64 %indvars.iv855 ; 4 uses
  %i.yo = getelementptr i8, ptr %i.yn, i64 -16
  %i.yp = load ptr, ptr %i.yo, align 8, !tbaa !231
  store ptr %i.yp, ptr %i.yn, align 8, !tbaa !231
  %i.yq = getelementptr i8, ptr %i.yn, i64 -8
  %i.yr = load i32, ptr %i.yq, align 8, !tbaa !236
  %i.ys = getelementptr i8, ptr %i.yn, i64 8
  store i32 %i.yr, ptr %i.ys, align 8, !tbaa !236
  %i.yt = getelementptr [16 x i8], ptr %1, i64 %indvars.iv855 ; 4 uses
  %i.yu = getelementptr i8, ptr %i.yt, i64 -32
  %i.yv = getelementptr i8, ptr %i.yt, i64 -16
  %i.yw = load ptr, ptr %i.yu, align 8, !tbaa !231
  store ptr %i.yw, ptr %i.yv, align 8, !tbaa !231
  %i.yx = getelementptr i8, ptr %i.yt, i64 -24
  %i.yy = load i32, ptr %i.yx, align 8, !tbaa !236
  %i.yz = getelementptr i8, ptr %i.yt, i64 -8
  store i32 %i.yy, ptr %i.yz, align 8, !tbaa !236
  %indvars.iv.next856.2 = add nsw i64 %indvars.iv855, -3 ; 2 uses
  %i.za = getelementptr inbounds [16 x i8], ptr %1, i64 %indvars.iv.next856.2 ; 4 uses
  %i.zb = getelementptr i8, ptr %i.za, i64 16
  %i.zc = load ptr, ptr %i.za, align 8, !tbaa !231
  store ptr %i.zc, ptr %i.zb, align 8, !tbaa !231
  %i.zd = getelementptr inbounds nuw i8, ptr %i.za, i64 8
  %i.ze = load i32, ptr %i.zd, align 8, !tbaa !236
  %i.zf = getelementptr i8, ptr %i.za, i64 24
  store i32 %i.ze, ptr %i.zf, align 8, !tbaa !236
  %indvars.iv.next856.3 = add nsw i64 %indvars.iv855, -4
  %.not565.not.3 = icmp sgt i64 %indvars.iv.next856.2, %indvars.iv848
  br i1 %.not565.not.3, label %.lr.ph760, label %._crit_edge761, !llvm.loop !611

._crit_edge761:                                   ; preds = %.lr.ph760.prol.loopexit, %.lr.ph760, %bb.bd
  %i.zg = getelementptr inbounds nuw i8, ptr %i.rx, i64 16
  %i.zh = load ptr, ptr %i.zg, align 8, !tbaa !231 ; 3 uses
  store ptr %i.zh, ptr %6, align 16, !tbaa !231
  %i.zi = getelementptr inbounds nuw i8, ptr %i.rx, i64 24
  %i.zj = load i32, ptr %i.zi, align 8, !tbaa !236
  %i.zk = sext i32 %i.zj to i64
  %_ZN10tetgenmesh8enexttblE._ZN10tetgenmesh8eprevtblE = select i1 %i.oy, ptr @_ZN10tetgenmesh8enexttblE, ptr @_ZN10tetgenmesh8eprevtblE
  %_ZN10tetgenmesh8eprevtblE._ZN10tetgenmesh8enexttblE = select i1 %i.oy, ptr @_ZN10tetgenmesh8eprevtblE, ptr @_ZN10tetgenmesh8enexttblE
  %i.zl = getelementptr inbounds [4 x i8], ptr %_ZN10tetgenmesh8enexttblE._ZN10tetgenmesh8eprevtblE, i64 %i.zk
  %i.zm = load i32, ptr %i.zl, align 4, !tbaa !59
  %i.zn = sext i32 %i.zm to i64
  %i.zo = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.zn
  %i.zp = load i32, ptr %i.zo, align 4, !tbaa !59
  store i32 %i.zp, ptr %i.c, align 8, !tbaa !236
  %i.zq = load ptr, ptr %i.rx, align 8, !tbaa !231 ; 3 uses
  store ptr %i.zq, ptr %.ptr.1, align 16, !tbaa !231
  %i.zr = load i32, ptr %i.vq, align 8, !tbaa !236
  %i.zs = sext i32 %i.zr to i64
  %i.zt = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.zs
  %i.zu = load i32, ptr %i.zt, align 4, !tbaa !59
  %i.zv = sext i32 %i.zu to i64
  %i.zw = getelementptr inbounds [4 x i8], ptr %_ZN10tetgenmesh8eprevtblE._ZN10tetgenmesh8enexttblE, i64 %i.zv
  %storemerge906 = load i32, ptr %i.zw, align 4, !tbaa !59
  store i32 %storemerge906, ptr %i.ab, align 8, !tbaa !236
  %i.zx = load i32, ptr %i.w, align 4, !tbaa !232
  %i.zy = sext i32 %i.zx to i64
  %i.zz = getelementptr inbounds [4 x i8], ptr %i.zh, i64 %i.zy ; 2 uses
  %i.aaa = load i32, ptr %i.zz, align 4, !tbaa !59 ; 2 uses
  %i.aab = and i32 %i.aaa, -65536
  %i.aac = add i32 %i.aab, 65536
  %i.aad = and i32 %i.aaa, 65535
  %i.aae = or disjoint i32 %i.aac, %i.aad
  store i32 %i.aae, ptr %i.zz, align 4, !tbaa !59
  %i.aaf = load i32, ptr %i.w, align 4, !tbaa !232
  %i.aag = sext i32 %i.aaf to i64
  %i.aah = getelementptr inbounds [4 x i8], ptr %i.zq, i64 %i.aag ; 2 uses
  %i.aai = load i32, ptr %i.aah, align 4, !tbaa !59 ; 2 uses
  %i.aaj = and i32 %i.aai, -65536
  %i.aak = add i32 %i.aaj, 65536
  %i.aal = and i32 %i.aai, 65535
  %i.aam = or disjoint i32 %i.aak, %i.aal
  store i32 %i.aam, ptr %i.aah, align 4, !tbaa !59
  store ptr %i.zh, ptr %i.nk, align 8, !tbaa !231
  %i.aan = load i32, ptr %i.c, align 8, !tbaa !236
  store i32 %i.aan, ptr %i.on, align 8, !tbaa !236
  store ptr %i.zq, ptr %i.my, align 8, !tbaa !231
  %i.aao = load i32, ptr %i.ab, align 8, !tbaa !236
  store i32 %i.aao, ptr %i.np, align 8, !tbaa !236
  call void @_ZdaPv(ptr noundef nonnull %i.rx) #47
  %.pr657 = load i32, ptr %i.ai, align 8, !tbaa !297
  %.not566 = icmp eq i32 %.pr657, 0
  br i1 %.not566, label %.critedge602.loopexit.split.loop.exit763, label %.thread662

bb.be:                                            ; preds = %bb.az
  %i.aap = load i32, ptr %i.ai, align 8, !tbaa !297
  %.not563 = icmp eq i32 %i.aap, 0
  br i1 %.not563, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.aaq = call noundef i32 @_ZN10tetgenmesh11flipnm_postEPNS_7trifaceEiiiPNS_15flipconstraintsE(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef nonnull %i.rx, i32 noundef %i.qs, i32 noundef %i.tw, i32 noundef %.1469.ph, ptr noundef nonnull %5) ; 0 uses
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.aar = icmp sgt i32 %i.tw, 0
  br i1 %i.aar, label %.lr.ph750.preheader, label %._crit_edge751

.lr.ph750.preheader:                              ; preds = %bb.bg
  %wide.trip.count846 = zext nneg i32 %i.tw to i64 ; 2 uses
  %xtraiter962 = and i64 %wide.trip.count846, 1
  %i.aas = icmp eq i32 %i.tw, 1
  br i1 %i.aas, label %.lr.ph750.epil.preheader, label %.lr.ph750.preheader.new

.lr.ph750.preheader.new:                          ; preds = %.lr.ph750.preheader
  %unroll_iter = and i64 %wide.trip.count846, 2147483646
  br label %.lr.ph750

.lr.ph750:                                        ; preds = %.lr.ph750, %.lr.ph750.preheader.new
  %indvars.iv843 = phi i64 [ 0, %.lr.ph750.preheader.new ], [ %indvars.iv.next844.1, %.lr.ph750 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph750.preheader.new ], [ %niter.next.1, %.lr.ph750 ]
  %i.aat = getelementptr inbounds nuw [16 x i8], ptr %i.rx, i64 %indvars.iv843
  %i.aau = load ptr, ptr %i.aat, align 8, !tbaa !231
  %i.aav = load i32, ptr %i.w, align 4, !tbaa !232
  %i.aaw = sext i32 %i.aav to i64
  %i.aax = getelementptr inbounds [4 x i8], ptr %i.aau, i64 %i.aaw ; 2 uses
  %i.aay = load i32, ptr %i.aax, align 4, !tbaa !59
  %i.aaz = add i32 %i.aay, -65536
  store i32 %i.aaz, ptr %i.aax, align 4, !tbaa !59
  %i.aba = getelementptr inbounds nuw [16 x i8], ptr %i.rx, i64 %indvars.iv843
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aba, i64 16
  %i.abc = load ptr, ptr %i.abb, align 8, !tbaa !231
  %i.abd = load i32, ptr %i.w, align 4, !tbaa !232
  %i.abe = sext i32 %i.abd to i64
  %i.abf = getelementptr inbounds [4 x i8], ptr %i.abc, i64 %i.abe ; 2 uses
  %i.abg = load i32, ptr %i.abf, align 4, !tbaa !59
  %i.abh = add i32 %i.abg, -65536
  store i32 %i.abh, ptr %i.abf, align 4, !tbaa !59
  %indvars.iv.next844.1 = add nuw nsw i64 %indvars.iv843, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge751.loopexit.unr-lcssa, label %.lr.ph750, !llvm.loop !612

._crit_edge751.loopexit.unr-lcssa:                ; preds = %.lr.ph750
  %lcmp.mod963.not = icmp eq i64 %xtraiter962, 0
  br i1 %lcmp.mod963.not, label %._crit_edge751, label %.lr.ph750.epil.preheader

.lr.ph750.epil.preheader:                         ; preds = %._crit_edge751.loopexit.unr-lcssa, %.lr.ph750.preheader
  %indvars.iv843.epil.init = phi i64 [ 0, %.lr.ph750.preheader ], [ %indvars.iv.next844.1, %._crit_edge751.loopexit.unr-lcssa ]
  %lcmp.mod964 = trunc i32 %i.tw to i1
  call void @llvm.assume(i1 %lcmp.mod964)
  %i.abi = getelementptr inbounds nuw [16 x i8], ptr %i.rx, i64 %indvars.iv843.epil.init
  %i.abj = load ptr, ptr %i.abi, align 8, !tbaa !231
  %i.abk = load i32, ptr %i.w, align 4, !tbaa !232
  %i.abl = sext i32 %i.abk to i64
  %i.abm = getelementptr inbounds [4 x i8], ptr %i.abj, i64 %i.abl ; 2 uses
  %i.abn = load i32, ptr %i.abm, align 4, !tbaa !59
  %i.abo = add i32 %i.abn, -65536
  store i32 %i.abo, ptr %i.abm, align 4, !tbaa !59
  br label %._crit_edge751

._crit_edge751:                                   ; preds = %.lr.ph750.epil.preheader, %._crit_edge751.loopexit.unr-lcssa, %bb.bg
  call void @_ZdaPv(ptr noundef nonnull %i.rx) #47
  br label %.thread662

.thread662:                                       ; preds = %._crit_edge761, %._crit_edge751, %bb.aw, %bb.av, %bb.au, %.critedge593, %bb.al, %bb.an, %bb.ag, %bb.af, %bb.ad, %bb.ae
  %indvars.iv.next849 = add nuw nsw i64 %indvars.iv848, 1 ; 2 uses
  %exitcond863.not = icmp eq i64 %indvars.iv.next849, %wide.trip.count862
  br i1 %exitcond863.not, label %.critedge602, label %bb.ad, !llvm.loop !613

bb.bh:                                            ; preds = %bb.a
  %i.abp = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9apexpivotE, i64 %i.j
  %i.abq = load i32, ptr %i.abp, align 4, !tbaa !59
  %i.abr = sext i32 %i.abq to i64
  %i.abs = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.abr
  %i.abt = load ptr, ptr %i.abs, align 8, !tbaa !220 ; 7 uses
  %i.abu = getelementptr inbounds nuw i8, ptr %0, i64 68584 ; 2 uses
  %i.abv = load ptr, ptr %i.abu, align 8, !tbaa !250 ; 3 uses
  %i.abw = icmp eq ptr %i.abt, %i.abv
  %i.abx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aby = load ptr, ptr %i.abx, align 8, !tbaa !231
  %i.abz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aca = load i32, ptr %i.abz, align 8, !tbaa !236
  %i.acb = sext i32 %i.aca to i64
  %i.acc = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9apexpivotE, i64 %i.acb
  %i.acd = load i32, ptr %i.acc, align 4, !tbaa !59
  %i.ace = sext i32 %i.acd to i64
  %i.acf = getelementptr inbounds [8 x i8], ptr %i.aby, i64 %i.ace
  %i.acg = load ptr, ptr %i.acf, align 8, !tbaa !220 ; 7 uses
  br i1 %i.abw, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.ach = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aci = load ptr, ptr %i.ach, align 8, !tbaa !231
  %i.acj = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ack = load i32, ptr %i.acj, align 8, !tbaa !236
  %i.acl = sext i32 %i.ack to i64
  %i.acm = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9apexpivotE, i64 %i.acl
  %i.acn = load i32, ptr %i.acm, align 4, !tbaa !59
  %i.aco = sext i32 %i.acn to i64
  %i.acp = getelementptr inbounds [8 x i8], ptr %i.aci, i64 %i.aco
  %i.acq = load ptr, ptr %i.acp, align 8, !tbaa !220
  br label %select.unfold

bb.bj:                                            ; preds = %bb.bh
  %i.acr = icmp eq ptr %i.acg, %i.abv
  %i.acs = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.act = load ptr, ptr %i.acs, align 8, !tbaa !231
  %i.acu = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.acv = load i32, ptr %i.acu, align 8, !tbaa !236
  %i.acw = sext i32 %i.acv to i64
  %i.acx = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9apexpivotE, i64 %i.acw
  %i.acy = load i32, ptr %i.acx, align 4, !tbaa !59
  %i.acz = sext i32 %i.acy to i64
  %i.ada = getelementptr inbounds [8 x i8], ptr %i.act, i64 %i.acz
  %i.adb = load ptr, ptr %i.ada, align 8, !tbaa !220 ; 6 uses
  br i1 %i.acr, label %select.unfold, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.adc = icmp eq ptr %i.adb, %i.abv
  br i1 %i.adc, label %select.unfold, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.add = tail call noundef double @_Z8orient3dPdS_S_S_(ptr noundef %i.acg, ptr noundef %i.abt, ptr noundef %i.adb, ptr noundef %i.o)
  %i.ade = fcmp olt double %i.add, 0.000000e+00
  br i1 %i.ade, label %bb.bs, label %.critedge602

select.unfold:                                    ; preds = %bb.bj, %bb.bk, %bb.bi
  %.0496.ph = phi ptr [ %i.acg, %bb.bi ], [ %i.abt, %bb.bk ], [ %i.adb, %bb.bj ] ; 6 uses
  %.0495.ph = phi ptr [ %i.acq, %bb.bi ], [ %i.acg, %bb.bk ], [ %i.abt, %bb.bj ] ; 6 uses
  %.0494.ph = phi ptr [ %i.abt, %bb.bi ], [ %i.adb, %bb.bk ], [ %i.acg, %bb.bj ]
  %.cmp = phi i1 [ true, %bb.bi ], [ false, %bb.bk ], [ true, %bb.bj ]
  %.0489.ph = phi i32 [ 1, %bb.bi ], [ 3, %bb.bk ], [ 2, %bb.bj ] ; 3 uses
  %i.adf = getelementptr inbounds nuw i8, ptr %0, i64 68712
  %i.adg = load i32, ptr %i.adf, align 8, !tbaa !292
  %.not = icmp eq i32 %i.adg, 0
  br i1 %.not, label %bb.bm, label %.critedge599

bb.bm:                                            ; preds = %select.unfold
  %i.adh = tail call noundef double @_Z8orient3dPdS_S_S_(ptr noundef %i.o, ptr noundef %i.t, ptr noundef %.0496.ph, ptr noundef %.0495.ph)
  %i.adi = fcmp oeq double %i.adh, 0.000000e+00
  br i1 %i.adi, label %.critedge599, label %.critedge602

.critedge599:                                     ; preds = %select.unfold, %bb.bm
  %.urem = add nsw i32 %.0489.ph, -3
  %i.adj = select i1 %.cmp, i32 %.0489.ph, i32 %.urem
  %i.adk = zext nneg i32 %i.adj to i64
  %i.adl = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.adk ; 2 uses
  %i.adm = load ptr, ptr %i.adl, align 8, !tbaa !231
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adl, i64 8
  %i.ado = load i32, ptr %i.adn, align 8, !tbaa !236
  %i.adp = sext i32 %i.ado to i64
  %i.adq = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh11eorgoppotblE, i64 %i.adp
  %i.adr = load i32, ptr %i.adq, align 4, !tbaa !59
  %i.ads = sext i32 %i.adr to i64                 ; 2 uses
  %i.adt = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10facepivot1E, i64 %i.ads
  %i.adu = load i32, ptr %i.adt, align 4, !tbaa !59
  %i.adv = sext i32 %i.adu to i64
  %i.adw = getelementptr inbounds [8 x i8], ptr %i.adm, i64 %i.adv
  %i.adx = load ptr, ptr %i.adw, align 8, !tbaa !220
  %i.ady = ptrtoint ptr %i.adx to i64             ; 2 uses
  %i.adz = and i64 %i.ady, -16
  %i.aea = inttoptr i64 %i.adz to ptr             ; 2 uses
  %i.aeb = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh10facepivot2E, i64 %i.ads
  %i.aec = and i64 %i.ady, 15
  %i.aed = getelementptr inbounds nuw [4 x i8], ptr %i.aeb, i64 %i.aec
  %i.aee = load i32, ptr %i.aed, align 4, !tbaa !59 ; 2 uses
  %i.aef = sext i32 %i.aee to i64                 ; 2 uses
  %i.aeg = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9oppopivotE, i64 %i.aef
  %i.aeh = load i32, ptr %i.aeg, align 4, !tbaa !59
  %i.aei = sext i32 %i.aeh to i64
  %i.aej = getelementptr inbounds [8 x i8], ptr %i.aea, i64 %i.aei
  %i.aek = load ptr, ptr %i.aej, align 8, !tbaa !220 ; 2 uses
  %i.ael = icmp eq ptr %i.aek, %i.t
  br i1 %i.ael, label %.critedge602, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge599, %bb.bq
  %i.aem = phi ptr [ %i.afr, %bb.bq ], [ %i.aek, %.critedge599 ] ; 3 uses
  %i.aen = phi i64 [ %i.afm, %bb.bq ], [ %i.aef, %.critedge599 ]
  %i.aeo = phi i32 [ %i.afl, %bb.bq ], [ %i.aee, %.critedge599 ]
  %i.aep = phi ptr [ %i.afh, %bb.bq ], [ %i.aea, %.critedge599 ] ; 2 uses
  %.0700 = phi double [ %.1, %bb.bq ], [ 0.000000e+00, %.critedge599 ] ; 4 uses
  %.0454699 = phi ptr [ %.1455, %bb.bq ], [ null, %.critedge599 ] ; 3 uses
  %i.aeq = load ptr, ptr %i.abu, align 8, !tbaa !250 ; 2 uses
  %.not538 = icmp eq ptr %i.aem, %i.aeq
  br i1 %.not538, label %bb.bq, label %bb.bn

bb.bn:                                            ; preds = %.lr.ph
  %i.aer = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9apexpivotE, i64 %i.aen
  %i.aes = load i32, ptr %i.aer, align 4, !tbaa !59
  %i.aet = sext i32 %i.aes to i64
  %i.aeu = getelementptr inbounds [8 x i8], ptr %i.aep, i64 %i.aet
  %i.aev = load ptr, ptr %i.aeu, align 8, !tbaa !220 ; 2 uses
  %.not539 = icmp eq ptr %i.aev, %i.aeq
  br i1 %.not539, label %bb.bq, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.aew = tail call noundef double @_Z8orient3dPdS_S_S_(ptr noundef %.0495.ph, ptr noundef %.0496.ph, ptr noundef %i.aev, ptr noundef %i.aem)
  %i.aex = fneg double %i.aew                     ; 2 uses
  %i.aey = fcmp olt double %.0700, %i.aex
  br i1 %i.aey, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bo, %bb.bp, %bb.bn, %.lr.ph
  %.1455 = phi ptr [ %i.aem, %bb.bp ], [ %.0454699, %bb.bo ], [ %.0454699, %bb.bn ], [ %.0454699, %.lr.ph ] ; 6 uses
  %.1 = phi double [ %i.aex, %bb.bp ], [ %.0700, %bb.bo ], [ %.0700, %bb.bn ], [ %.0700, %.lr.ph ]
  %i.aez = sext i32 %i.aeo to i64                 ; 2 uses
  %i.afa = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10facepivot1E, i64 %i.aez
  %i.afb = load i32, ptr %i.afa, align 4, !tbaa !59
  %i.afc = sext i32 %i.afb to i64
  %i.afd = getelementptr inbounds [8 x i8], ptr %i.aep, i64 %i.afc
  %i.afe = load ptr, ptr %i.afd, align 8, !tbaa !220
  %i.aff = ptrtoint ptr %i.afe to i64             ; 2 uses
  %i.afg = and i64 %i.aff, -16
  %i.afh = inttoptr i64 %i.afg to ptr             ; 2 uses
  %i.afi = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh10facepivot2E, i64 %i.aez
  %i.afj = and i64 %i.aff, 15
  %i.afk = getelementptr inbounds nuw [4 x i8], ptr %i.afi, i64 %i.afj
  %i.afl = load i32, ptr %i.afk, align 4, !tbaa !59 ; 2 uses
  %i.afm = sext i32 %i.afl to i64                 ; 2 uses
  %i.afn = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9oppopivotE, i64 %i.afm
  %i.afo = load i32, ptr %i.afn, align 4, !tbaa !59
  %i.afp = sext i32 %i.afo to i64
  %i.afq = getelementptr inbounds [8 x i8], ptr %i.afh, i64 %i.afp
  %i.afr = load ptr, ptr %i.afq, align 8, !tbaa !220 ; 2 uses
  %i.afs = icmp eq ptr %i.afr, %i.t
  br i1 %i.afs, label %._crit_edge, label %.lr.ph, !llvm.loop !614

._crit_edge:                                      ; preds = %bb.bq
  %.not540 = icmp eq ptr %.1455, null
  br i1 %.not540, label %.critedge602, label %bb.br

bb.br:                                            ; preds = %._crit_edge
  %i.aft = tail call noundef double @_Z8orient3dPdS_S_S_(ptr noundef %.0495.ph, ptr noundef %.0496.ph, ptr noundef nonnull %.1455, ptr noundef %i.o)
  %i.afu = tail call noundef double @_Z8orient3dPdS_S_S_(ptr noundef %.0495.ph, ptr noundef %.0496.ph, ptr noundef nonnull %.1455, ptr noundef %i.t)
  %i.afv = fmul double %i.aft, %i.afu
  %i.afw = fcmp ult double %i.afv, 0.000000e+00
  br i1 %i.afw, label %.split679, label %.critedge602

.split679:                                        ; preds = %bb.br
  %i.afx = tail call noundef double @_Z8orient3dPdS_S_S_(ptr noundef %i.o, ptr noundef %i.t, ptr noundef nonnull %.1455, ptr noundef %.0496.ph)
  %i.afy = tail call noundef double @_Z8orient3dPdS_S_S_(ptr noundef %i.o, ptr noundef %i.t, ptr noundef nonnull %.1455, ptr noundef %.0495.ph)
  %i.afz = fmul double %i.afx, %i.afy
  %i.aga = fcmp ult double %i.afz, 0.000000e+00
  br i1 %i.aga, label %bb.bt, label %.critedge602

bb.bs:                                            ; preds = %bb.bl
  %i.agb = tail call noundef double @_Z8orient3dPdS_S_S_(ptr noundef %i.abt, ptr noundef %i.acg, ptr noundef %i.adb, ptr noundef %i.t)
  %i.agc = fcmp uge double %i.agb, 0.000000e+00
  br i1 %i.agc, label %.critedge602, label %bb.bt

bb.bt:                                            ; preds = %.split679, %bb.bs
  %.0496671683 = phi ptr [ %.0496.ph, %.split679 ], [ %i.abt, %bb.bs ]
  %.0495673682 = phi ptr [ %.0495.ph, %.split679 ], [ %i.acg, %bb.bs ]
  %.0494675681 = phi ptr [ %.0494.ph, %.split679 ], [ %i.adb, %bb.bs ]
  %.0489677680 = phi i32 [ %.0489.ph, %.split679 ], [ 0, %bb.bs ] ; 2 uses
  %i.agd = getelementptr inbounds nuw i8, ptr %0, i64 68700
  %i.age = load i32, ptr %i.agd, align 4, !tbaa !276
  %.not542 = icmp eq i32 %i.age, 0
  br i1 %.not542, label %.critedge607, label %.preheader691.preheader

.preheader691.preheader:                          ; preds = %bb.bt
  %i.agf = load ptr, ptr %1, align 8, !tbaa !231
  %i.agg = getelementptr inbounds nuw i8, ptr %i.agf, i64 72
  %i.agh = load ptr, ptr %i.agg, align 8, !tbaa !220 ; 2 uses
  %.not552 = icmp eq ptr %i.agh, null
end_hunk_3
