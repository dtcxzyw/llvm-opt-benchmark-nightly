Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/tetgen?download=true
inline.NumInlined: 6986
inline.NumDeleted: 169
loop-unroll.NumCompletelyUnrolled: 436
loop-unroll.NumRuntimeUnrolled: 112
loop-unroll.NumUnrolled: 551
begin_hunk_0_@_ZN10tetgenmesh13tri_tri_interEPdS0_S0_S0_S0_S0_:bb.a
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
  %i.ae = load i32, ptr %i.c, align 4, !tbaa !57
  %i.af = icmp eq i32 %i.ae, 2
  br i1 %i.af, label %select.unfold117.thread, label %_ZN10tetgenmesh19tri_edge_inter_tailEPdS0_S0_S0_S0_dd.exit109

bb.h:                                             ; preds = %select.unfold
  %i.ag = load i32, ptr %i.c, align 4, !tbaa !57
  switch i32 %i.ag, label %_ZN10tetgenmesh19tri_edge_inter_tailEPdS0_S0_S0_S0_dd.exit109 [
    i32 2, label %bb.i
    i32 3, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !57
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
  %i.ao = load i32, ptr %i.a, align 4, !tbaa !57
  %i.ap = icmp eq i32 %i.ao, 2
  br i1 %i.ap, label %select.unfold121, label %_ZN10tetgenmesh19tri_edge_inter_tailEPdS0_S0_S0_S0_dd.exit113

bb.m:                                             ; preds = %bb.k
  %i.aq = load i32, ptr %i.a, align 4, !tbaa !57
  switch i32 %i.aq, label %_ZN10tetgenmesh19tri_edge_inter_tailEPdS0_S0_S0_S0_dd.exit113 [
    i32 2, label %bb.n
    i32 3, label %select.unfold121
  ]

bb.n:                                             ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !57
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
  store double 1.000000e+00, ptr %4, align 8, !tbaa !56
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
  %i.h = load double, ptr %i.g, align 8, !tbaa !56
  %i.i = tail call double @llvm.fabs.f64(double %i.h) ; 2 uses
  %i.j = fcmp olt double %.0101120.us, %i.i
  %.1102.us = select i1 %i.j, double %i.i, double %.0101120.us ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.k = icmp slt i64 %indvars.iv.next, %i.e
  br i1 %i.k, label %bb.b, label %._crit_edge.us, !llvm.loop !566

bb.c:                                             ; preds = %._crit_edge.us
  %i.l = fdiv double 1.000000e+00, %.1102.us
  %i.m = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv142
  store double %i.l, ptr %i.m, align 8, !tbaa !56
  %i.n = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv142
  %i.o = trunc nsw i64 %indvars.iv142 to i32
  store i32 %i.o, ptr %i.n, align 4, !tbaa !57
  %indvars.iv.next143 = add nsw i64 %indvars.iv142, 1 ; 2 uses
  %i.p = icmp slt i64 %indvars.iv.next143, %i.e
  br i1 %i.p, label %.preheader115.us, label %.preheader113, !llvm.loop !567

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
  %scevgep = getelementptr i8, ptr %1, i64 8
  %i.v = add i32 %5, 1
  %i.w = add i32 %2, -2
  %i.x = add i32 %5, %2
  %i.y = add i32 %5, %2
  %i.z = add i32 %2, -2
  br label %.preheader112

.loopexit111:                                     ; preds = %..loopexit_crit_edge.us, %bb.f
  %lftr.wideiv163 = trunc i64 %indvars.iv.next146 to i32
  %exitcond164.not = icmp eq i32 %i.r, %lftr.wideiv163
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond164.not, label %._crit_edge138, label %.preheader112, !llvm.loop !568

.preheader112:                                    ; preds = %.preheader112.preheader, %.loopexit111
  %indvar = phi i32 [ 0, %.preheader112.preheader ], [ %indvar.next, %.loopexit111 ] ; 6 uses
  %indvars.iv150.in = phi i32 [ %5, %.preheader112.preheader ], [ %indvars.iv150, %.loopexit111 ]
  %indvars.iv145 = phi i64 [ %i.t, %.preheader112.preheader ], [ %indvars.iv.next146, %.loopexit111 ] ; 12 uses
  %.098136 = phi i32 [ 0, %.preheader112.preheader ], [ %.2100.lcssa, %.loopexit111 ] ; 2 uses
  %.neg = add i32 %indvar, 1
  %i.aa = add i32 %i.v, %indvar
  %i.ab = sext i32 %i.aa to i64
  %i.ac = shl nsw i64 %i.ab, 3                    ; 2 uses
  %i.ad = sub i32 %i.w, %indvar
  %i.ae = zext i32 %i.ad to i64
  %i.af = shl nuw nsw i64 %i.ae, 3                ; 2 uses
  %indvars.iv150 = add i32 %indvars.iv150.in, 1   ; 2 uses
  %i.ag = sext i32 %indvars.iv150 to i64          ; 5 uses
  %i.ah = icmp slt i64 %indvars.iv145, %i.u
  br i1 %i.ah, label %.lr.ph, label %.loopexit114

.lr.ph:                                           ; preds = %.preheader112
  %i.ai = sub i32 %2, %indvar
  %invariant.gep = getelementptr [8 x i8], ptr %1, i64 %indvars.iv145 ; 3 uses
  %xtraiter = and i32 %i.ai, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.aj = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv145
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !57
  %i.al = sext i32 %i.ak to i64                   ; 2 uses
  %gep.prol = getelementptr [32 x i8], ptr %invariant.gep, i64 %i.al
  %i.am = load double, ptr %gep.prol, align 8, !tbaa !56
  %i.an = tail call double @llvm.fabs.f64(double %i.am)
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.al
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !56
  %i.aq = fmul double %i.an, %i.ap                ; 2 uses
  %i.ar = fcmp ogt double %i.aq, 0.000000e+00     ; 2 uses
  %.3.prol = select i1 %i.ar, double %i.aq, double 0.000000e+00 ; 2 uses
  %i.as = trunc nsw i64 %indvars.iv145 to i32
  %.2100.prol = select i1 %i.ar, i32 %i.as, i32 %.098136 ; 2 uses
  %indvars.iv.next148.prol = add nsw i64 %indvars.iv145, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %.3.lcssa.unr = phi double [ poison, %.lr.ph ], [ %.3.prol, %.prol.loopexit.unr-lcssa ]
  %.2100.lcssa.unr = phi i32 [ poison, %.lr.ph ], [ %.2100.prol, %.prol.loopexit.unr-lcssa ]
  %indvars.iv147.unr = phi i64 [ %indvars.iv145, %.lr.ph ], [ %indvars.iv.next148.prol, %.prol.loopexit.unr-lcssa ]
  %.199126.unr = phi i32 [ %.098136, %.lr.ph ], [ %.2100.prol, %.prol.loopexit.unr-lcssa ]
  %.2103125.unr = phi double [ 0.000000e+00, %.lr.ph ], [ %.3.prol, %.prol.loopexit.unr-lcssa ]
  %i.at = icmp eq i32 %2, %.neg
  br i1 %i.at, label %._crit_edge, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv147 = phi i64 [ %indvars.iv.next148.1, %.lr.ph.new ], [ %indvars.iv147.unr, %.prol.loopexit ] ; 4 uses
  %.199126 = phi i32 [ %.2100.1, %.lr.ph.new ], [ %.199126.unr, %.prol.loopexit ]
  %.2103125 = phi double [ %.3.1, %.lr.ph.new ], [ %.2103125.unr, %.prol.loopexit ] ; 2 uses
  %i.au = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv147
  %i.av = load i32, ptr %i.au, align 4, !tbaa !57
  %i.aw = sext i32 %i.av to i64                   ; 2 uses
  %gep = getelementptr [32 x i8], ptr %invariant.gep, i64 %i.aw
  %i.ax = load double, ptr %gep, align 8, !tbaa !56
  %i.ay = tail call double @llvm.fabs.f64(double %i.ax)
  %i.az = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.aw
  %i.ba = load double, ptr %i.az, align 8, !tbaa !56
  %i.bb = fmul double %i.ay, %i.ba                ; 2 uses
  %i.bc = fcmp olt double %.2103125, %i.bb        ; 2 uses
  %.3 = select i1 %i.bc, double %i.bb, double %.2103125 ; 2 uses
  %i.bd = trunc nsw i64 %indvars.iv147 to i32
  %.2100 = select i1 %i.bc, i32 %i.bd, i32 %.199126
  %indvars.iv.next148 = add nsw i64 %indvars.iv147, 1 ; 2 uses
  %i.be = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv.next148
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !57
  %i.bg = sext i32 %i.bf to i64                   ; 2 uses
  %gep.1 = getelementptr [32 x i8], ptr %invariant.gep, i64 %i.bg
  %i.bh = load double, ptr %gep.1, align 8, !tbaa !56
  %i.bi = tail call double @llvm.fabs.f64(double %i.bh)
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.bg
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !56
  %i.bl = fmul double %i.bi, %i.bk                ; 2 uses
  %i.bm = fcmp olt double %.3, %i.bl              ; 2 uses
  %.3.1 = select i1 %i.bm, double %i.bl, double %.3 ; 2 uses
  %i.bn = trunc nsw i64 %indvars.iv.next148 to i32
  %.2100.1 = select i1 %i.bm, i32 %i.bn, i32 %.2100 ; 2 uses
  %indvars.iv.next148.1 = add nsw i64 %indvars.iv147, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next148.1 to i32
  %exitcond.not.1 = icmp eq i32 %i.b, %lftr.wideiv.1
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.new, !llvm.loop !569

._crit_edge:                                      ; preds = %.lr.ph.new, %.prol.loopexit
  %.3.lcssa = phi double [ %.3.lcssa.unr, %.prol.loopexit ], [ %.3.1, %.lr.ph.new ]
  %.2100.lcssa = phi i32 [ %.2100.lcssa.unr, %.prol.loopexit ], [ %.2100.1, %.lr.ph.new ] ; 3 uses
  %i.bo = fcmp oeq double %.3.lcssa, 0.000000e+00
  br i1 %i.bo, label %.loopexit114, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.bp = trunc nsw i64 %indvars.iv145 to i32
  %.not = icmp eq i32 %.2100.lcssa, %i.bp
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bq = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv145 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !57
  %i.bs = sext i32 %.2100.lcssa to i64
  %i.bt = getelementptr inbounds [4 x i8], ptr %3, i64 %i.bs ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !57
  store i32 %i.bu, ptr %i.bq, align 4, !tbaa !57
  store i32 %i.br, ptr %i.bt, align 4, !tbaa !57
  %i.bv = load double, ptr %4, align 8, !tbaa !56
  %i.bw = fneg double %i.bv
  store double %i.bw, ptr %4, align 8, !tbaa !56
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bx = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv145
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !57
  %i.bz = sext i32 %i.by to i64                   ; 2 uses
  %i.ca = getelementptr inbounds [32 x i8], ptr %1, i64 %i.bz ; 5 uses
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %indvars.iv145
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !56
  %indvars.iv.next146 = add nsw i64 %indvars.iv145, 1 ; 3 uses
  %i.cd = icmp slt i64 %indvars.iv.next146, %i.u
  br i1 %i.cd, label %.lr.ph133.preheader, label %.loopexit111

.lr.ph133.preheader:                              ; preds = %bb.f
  %i.ce = shl nsw i64 %i.bz, 5
  %i.cf = add nsw i64 %i.ce, %i.ac                ; 2 uses
  %i.cg = getelementptr i8, ptr %scevgep, i64 %i.cf
  %scevgep178 = getelementptr i8, ptr %i.cg, i64 %i.af
  %scevgep179 = getelementptr i8, ptr %1, i64 %i.cf
  %i.ch = sub i32 %i.z, %indvar                   ; 2 uses
  %i.ci = zext i32 %i.ch to i64
  %i.cj = add nuw nsw i64 %i.ci, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.ch, 3
  %invariant.gep187.a = getelementptr i8, ptr %1, i64 %i.af
  %n.vec = and i64 %i.cj, 8589934588              ; 3 uses
  %i.ck = add nsw i64 %n.vec, %i.ag
  %cmp.n = icmp eq i64 %i.cj, %n.vec
  br label %.lr.ph133

.lr.ph133:                                        ; preds = %.lr.ph133.preheader, %..loopexit_crit_edge.us
  %indvars.iv157 = phi i64 [ %indvars.iv.next158, %..loopexit_crit_edge.us ], [ %i.ag, %.lr.ph133.preheader ] ; 2 uses
  %i.cl = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv157
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !57
  %i.cn = sext i32 %i.cm to i64                   ; 2 uses
  %i.co = getelementptr inbounds [32 x i8], ptr %1, i64 %i.cn ; 5 uses
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.co, i64 %indvars.iv145 ; 2 uses
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !56
  %i.cr = fdiv double %i.cq, %i.cc                ; 3 uses
  store double %i.cr, ptr %i.cp, align 8, !tbaa !56
  %i.cs = fcmp une double %i.cr, 0.000000e+00
  br i1 %i.cs, label %.preheader.us, label %..loopexit_crit_edge.us

.preheader.us:                                    ; preds = %.lr.ph133
  %i.ct = fneg double %i.cr                       ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.us
  %i.cu = shl nsw i64 %i.cn, 5
  %6 = add nsw i64 %i.cu, %i.ac                   ; 2 uses
  %7 = getelementptr i8, ptr %1, i64 %6
  %gep188 = getelementptr i8, ptr %invariant.gep187.a, i64 %6
  %i.cv = getelementptr i8, ptr %gep188, i64 8
  %bound0 = icmp ult ptr %7, %scevgep178
  %bound1 = icmp ult ptr %scevgep179, %i.cv
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ct, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cw = add i64 %index, %i.ag                   ; 2 uses
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %i.cw ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %wide.load = load <2 x double>, ptr %i.cx, align 8, !tbaa !56, !alias.scope !576
  %wide.load180 = load <2 x double>, ptr %i.cy, align 8, !tbaa !56, !alias.scope !576
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.co, i64 %i.cw ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 2 uses
  %wide.load181 = load <2 x double>, ptr %i.cz, align 8, !tbaa !56, !alias.scope !577, !noalias !576
  %wide.load182 = load <2 x double>, ptr %i.da, align 8, !tbaa !56, !alias.scope !577, !noalias !576
  %i.db = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load181)
  %i.dc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load180, <2 x double> %wide.load182)
  store <2 x double> %i.db, ptr %i.cz, align 8, !tbaa !56, !alias.scope !577, !noalias !576
  store <2 x double> %i.dc, ptr %i.da, align 8, !tbaa !56, !alias.scope !577, !noalias !576
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dd = icmp eq i64 %index.next, %n.vec
  br i1 %i.dd, label %middle.block, label %vector.body, !llvm.loop !573

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader.us, %middle.block
  %indvars.iv152.ph = phi i64 [ %i.ag, %vector.memcheck ], [ %i.ag, %.preheader.us ], [ %i.ck, %middle.block ] ; 5 uses
  %i.de = trunc i64 %indvars.iv152.ph to i32      ; 2 uses
  %i.df = sub i32 %i.x, %i.de
  %.neg186 = add i32 %i.de, 1
  %xtraiter184 = and i32 %i.df, 1
  %lcmp.mod185.not = icmp eq i32 %xtraiter184, 0
  br i1 %lcmp.mod185.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %indvars.iv152.ph
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !56
  %i.di = getelementptr inbounds [8 x i8], ptr %i.co, i64 %indvars.iv152.ph ; 2 uses
  %i.dj = load double, ptr %i.di, align 8, !tbaa !56
  %i.dk = tail call double @llvm.fmuladd.f64(double %i.ct, double %i.dh, double %i.dj)
  store double %i.dk, ptr %i.di, align 8, !tbaa !56
  %indvars.iv.next153.prol = add nsw i64 %indvars.iv152.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv152.unr = phi i64 [ %indvars.iv152.ph, %scalar.ph.preheader ], [ %indvars.iv.next153.prol, %scalar.ph.prol ]
  %i.dl = icmp eq i32 %i.y, %.neg186
  br i1 %i.dl, label %..loopexit_crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv152 = phi i64 [ %indvars.iv.next153.1, %scalar.ph ], [ %indvars.iv152.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %indvars.iv152
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !56
  %i.do = getelementptr inbounds [8 x i8], ptr %i.co, i64 %indvars.iv152 ; 2 uses
  %i.dp = load double, ptr %i.do, align 8, !tbaa !56
  %i.dq = tail call double @llvm.fmuladd.f64(double %i.ct, double %i.dn, double %i.dp)
  store double %i.dq, ptr %i.do, align 8, !tbaa !56
  %indvars.iv.next153 = add nsw i64 %indvars.iv152, 1 ; 2 uses
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %indvars.iv.next153
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !56
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.co, i64 %indvars.iv.next153 ; 2 uses
  %i.du = load double, ptr %i.dt, align 8, !tbaa !56
  %i.dv = tail call double @llvm.fmuladd.f64(double %i.ct, double %i.ds, double %i.du)
  store double %i.dv, ptr %i.dt, align 8, !tbaa !56
  %indvars.iv.next153.1 = add nsw i64 %indvars.iv152, 2 ; 2 uses
  %lftr.wideiv155.1 = trunc i64 %indvars.iv.next153.1 to i32
  %exitcond156.not.1 = icmp eq i32 %i.b, %lftr.wideiv155.1
  br i1 %exitcond156.not.1, label %..loopexit_crit_edge.us, label %scalar.ph, !llvm.loop !574

..loopexit_crit_edge.us:                          ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.lr.ph133
  %indvars.iv.next158 = add nsw i64 %indvars.iv157, 1 ; 2 uses
  %lftr.wideiv160 = trunc i64 %indvars.iv.next158 to i32
  %exitcond161.not = icmp eq i32 %i.b, %lftr.wideiv160
  br i1 %exitcond161.not, label %.loopexit111, label %.lr.ph133, !llvm.loop !575

._crit_edge138:                                   ; preds = %.loopexit111, %.preheader113
  %i.dw = sext i32 %i.r to i64                    ; 2 uses
  %i.dx = getelementptr inbounds [4 x i8], ptr %3, i64 %i.dw
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !57
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds [32 x i8], ptr %1, i64 %i.dz
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %i.dw
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !56
  %i.ed = fcmp une double %i.ec, 0.000000e+00
  br label %.loopexit114

.loopexit114:                                     ; preds = %._crit_edge.us, %.preheader112, %._crit_edge, %._crit_edge138
  %.0104 = phi i1 [ false, %.preheader112 ], [ %i.ed, %._crit_edge138 ], [ false, %._crit_edge ], [ false, %._crit_edge.us ]
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
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.k, i1 false), !tbaa !56
  %i.l = sext i32 %5 to i64                       ; 3 uses
  %i.m = sext i32 %i.b to i64
  br label %.preheader65

.preheader65:                                     ; preds = %.preheader65.preheader, %._crit_edge
  %indvars.iv88 = phi i64 [ %i.l, %.preheader65.preheader ], [ %indvars.iv.next89, %._crit_edge ] ; 5 uses
  %i.n = add nsw i64 %indvars.iv88, %i.l
  %i.o = icmp sgt i64 %indvars.iv88, 0
  %i.p = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv88
  %i.q = load i32, ptr %i.p, align 4, !tbaa !57
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
  %i.w = load double, ptr %i.v, align 8, !tbaa !56
  %i.x = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.y = load double, ptr %i.x, align 8, !tbaa !56
  %i.z = tail call double @llvm.fmuladd.f64(double %i.w, double %i.y, double %.069) ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.aa = icmp slt i64 %indvars.iv.next, %i.n
  br i1 %i.aa, label %bb.b, label %._crit_edge, !llvm.loop !578

._crit_edge:                                      ; preds = %bb.b, %.preheader65
  %.0.lcssa = phi double [ 0.000000e+00, %.preheader65 ], [ %i.z, %bb.b ]
  %i.ab = getelementptr inbounds [8 x i8], ptr %4, i64 %i.r
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !56
  %i.ad = fsub double %i.ac, %.0.lcssa
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv88
  store double %i.ad, ptr %i.ae, align 8, !tbaa !56
  %indvars.iv.next89 = add nsw i64 %indvars.iv88, 1 ; 2 uses
  %i.af = icmp slt i64 %indvars.iv.next89, %i.m
  br i1 %i.af, label %.preheader65, label %.preheader63.preheader, !llvm.loop !579

.preheader63:                                     ; preds = %.preheader63.preheader, %._crit_edge76
  %indvar = phi i32 [ 0, %.preheader63.preheader ], [ %indvar.next, %._crit_edge76 ] ; 3 uses
  %indvars.iv91 = phi i64 [ %i.t, %.preheader63.preheader ], [ %indvars.iv.next92, %._crit_edge76 ] ; 4 uses
  %i.ag = add i32 %indvar, -1
  %indvars.iv.next92 = add nsw i64 %indvars.iv91, -1 ; 5 uses
  %i.ah = icmp slt i64 %indvars.iv91, %i.t
  %i.ai = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv.next92
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !57
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
  %i.an = load double, ptr %i.am, align 8, !tbaa !56
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv93.prol
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !56
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.an, double %i.ap, double %.174.prol) ; 3 uses
  %indvars.iv.next94.prol = add nsw i64 %indvars.iv93.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !580

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph75
  %.lcssa.unr = phi double [ poison, %.lr.ph75 ], [ %i.aq, %.prol.preheader ]
end_hunk_0
