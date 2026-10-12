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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #40
  br label %bb.r

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
