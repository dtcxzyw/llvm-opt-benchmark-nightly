Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/convex_manifold?download=true
inline.NumInlined: 436
inline.NumDeleted: 65
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@b3ComputeSeparatingAxis:bb.a
  br label %.loopexit

.split.1:                                         ; preds = %bb.p, %.split.preheader
  %i.abv = phi i32 [ %i.xm, %bb.p ], [ %.us-phi774, %.split.preheader ]
  %i.abw = phi i32 [ %i.abt, %bb.p ], [ %.us-phi742770, %.split.preheader ]
  %i.abx = phi float [ %.sroa.0.0.vec.extract891, %bb.p ], [ %.us-phi743766, %.split.preheader ]
  %i.aby = phi float [ %.sroa.0898.0.vec.extract900, %bb.p ], [ %.us-phi744762, %.split.preheader ]
  %i.abz = phi float [ %.sroa.0907.0.vec.extract909, %bb.p ], [ %.us-phi745758, %.split.preheader ]
  %i.aca = phi float [ %.sroa.0916.0.vec.extract918, %bb.p ], [ %.us-phi746754, %.split.preheader ] ; 2 uses
  %.sroa.0916.4.vec.extract920 = extractelement <4 x float> %i.aak, i64 1 ; 4 uses
  %i.acb = fcmp ogt float %.sroa.0916.4.vec.extract920, %i.aca
  br i1 %i.acb, label %bb.q, label %.split.2

bb.q:                                             ; preds = %.split.1
  %.sroa.0907.4.vec.extract911 = extractelement <4 x float> %i.zy, i64 1 ; 2 uses
  %.sroa.0898.4.vec.extract902 = extractelement <4 x float> %i.zz, i64 1 ; 2 uses
  %.sroa.0.4.vec.extract893 = extractelement <4 x float> %i.aaa, i64 1 ; 2 uses
  %i.acc = fcmp ogt float %.sroa.0916.4.vec.extract920, %i.bs
  %indvars.iv882.tr942 = trunc i64 %indvars.iv882 to i32
  %i.acd = shl i32 %indvars.iv882.tr942, 1
  %i.ace = or disjoint i32 %i.acd, 2              ; 2 uses
  br i1 %i.acc, label %.thread672, label %.split.2

.split.2:                                         ; preds = %bb.q, %.split.1
  %i.acf = phi i32 [ %i.xm, %bb.q ], [ %i.abv, %.split.1 ]
  %i.acg = phi i32 [ %i.ace, %bb.q ], [ %i.abw, %.split.1 ]
  %i.ach = phi float [ %.sroa.0.4.vec.extract893, %bb.q ], [ %i.abx, %.split.1 ]
  %i.aci = phi float [ %.sroa.0898.4.vec.extract902, %bb.q ], [ %i.aby, %.split.1 ]
  %i.acj = phi float [ %.sroa.0907.4.vec.extract911, %bb.q ], [ %i.abz, %.split.1 ]
  %i.ack = phi float [ %.sroa.0916.4.vec.extract920, %bb.q ], [ %i.aca, %.split.1 ] ; 2 uses
  %.sroa.0916.8.vec.extract922 = extractelement <4 x float> %i.aak, i64 2 ; 4 uses
  %i.acl = fcmp ogt float %.sroa.0916.8.vec.extract922, %i.ack
  br i1 %i.acl, label %bb.r, label %.split.3

bb.r:                                             ; preds = %.split.2
  %.sroa.0907.8.vec.extract913 = extractelement <4 x float> %i.zy, i64 2 ; 2 uses
  %.sroa.0898.8.vec.extract904 = extractelement <4 x float> %i.zz, i64 2 ; 2 uses
  %.sroa.0.8.vec.extract895 = extractelement <4 x float> %i.aaa, i64 2 ; 2 uses
  %i.acm = fcmp ogt float %.sroa.0916.8.vec.extract922, %i.bs
  %indvars.iv882.tr943 = trunc i64 %indvars.iv882 to i32
  %i.acn = shl i32 %indvars.iv882.tr943, 1
  %i.aco = or disjoint i32 %i.acn, 4              ; 2 uses
  br i1 %i.acm, label %.thread672, label %.split.3

.split.3:                                         ; preds = %bb.r, %.split.2
  %i.acp = phi i32 [ %i.xm, %bb.r ], [ %i.acf, %.split.2 ]
  %i.acq = phi i32 [ %i.aco, %bb.r ], [ %i.acg, %.split.2 ]
  %i.acr = phi float [ %.sroa.0.8.vec.extract895, %bb.r ], [ %i.ach, %.split.2 ]
  %i.acs = phi float [ %.sroa.0898.8.vec.extract904, %bb.r ], [ %i.aci, %.split.2 ]
  %i.act = phi float [ %.sroa.0907.8.vec.extract913, %bb.r ], [ %i.acj, %.split.2 ]
  %i.acu = phi float [ %.sroa.0916.8.vec.extract922, %bb.r ], [ %i.ack, %.split.2 ] ; 2 uses
  %.sroa.0916.12.vec.extract924 = extractelement <4 x float> %i.aak, i64 3 ; 4 uses
  %i.acv = fcmp ogt float %.sroa.0916.12.vec.extract924, %i.acu
  br i1 %i.acv, label %bb.s, label %.thread

bb.s:                                             ; preds = %.split.3
  %.sroa.0907.12.vec.extract915 = extractelement <4 x float> %i.zy, i64 3 ; 2 uses
  %.sroa.0898.12.vec.extract906 = extractelement <4 x float> %i.zz, i64 3 ; 2 uses
  %.sroa.0.12.vec.extract897 = extractelement <4 x float> %i.aaa, i64 3 ; 2 uses
  %i.acw = fcmp ogt float %.sroa.0916.12.vec.extract924, %i.bs
  %indvars.iv882.tr944 = trunc i64 %indvars.iv882 to i32
  %i.acx = shl i32 %indvars.iv882.tr944, 1
  %i.acy = or disjoint i32 %i.acx, 6              ; 2 uses
  br i1 %i.acw, label %.thread672, label %.thread

.thread:                                          ; preds = %bb.o, %.split.us.3, %bb.s, %.split.3, %bb.j, %bb.i
  %.us-phi773 = phi i32 [ %.us-phi774, %bb.j ], [ %.us-phi774, %bb.i ], [ %i.abj, %.split.us.3 ], [ %i.xm, %bb.o ], [ %i.xm, %bb.s ], [ %i.acp, %.split.3 ] ; 2 uses
  %.us-phi742769 = phi i32 [ %.us-phi742770, %bb.j ], [ %.us-phi742770, %bb.i ], [ %i.abk, %.split.us.3 ], [ %i.abr, %bb.o ], [ %i.acy, %bb.s ], [ %i.acq, %.split.3 ] ; 2 uses
  %.us-phi743765 = phi float [ %.us-phi743766, %bb.j ], [ %.us-phi743766, %bb.i ], [ %i.abl, %.split.us.3 ], [ %.sroa.0.12.vec.extract, %bb.o ], [ %.sroa.0.12.vec.extract897, %bb.s ], [ %i.acr, %.split.3 ] ; 2 uses
  %.us-phi744761 = phi float [ %.us-phi744762, %bb.j ], [ %.us-phi744762, %bb.i ], [ %i.abm, %.split.us.3 ], [ %.sroa.0898.12.vec.extract, %bb.o ], [ %.sroa.0898.12.vec.extract906, %bb.s ], [ %i.acs, %.split.3 ] ; 2 uses
  %.us-phi745757 = phi float [ %.us-phi745758, %bb.j ], [ %.us-phi745758, %bb.i ], [ %i.abn, %.split.us.3 ], [ %.sroa.0907.12.vec.extract, %bb.o ], [ %.sroa.0907.12.vec.extract915, %bb.s ], [ %i.act, %.split.3 ] ; 2 uses
  %.us-phi746753 = phi float [ %.us-phi746754, %bb.j ], [ %.us-phi746754, %bb.i ], [ %i.abo, %.split.us.3 ], [ %.sroa.0916.12.vec.extract, %bb.o ], [ %.sroa.0916.12.vec.extract924, %bb.s ], [ %i.acu, %.split.3 ] ; 2 uses
  %indvars.iv.next883 = add nuw nsw i64 %indvars.iv882, 4 ; 2 uses
  %i.acz = icmp samesign ult i64 %indvars.iv.next883, %i.sw
  br i1 %i.acz, label %bb.i, label %._crit_edge751, !llvm.loop !88

._crit_edge751:                                   ; preds = %.thread, %bb.h
  %.us-phi773.lcssa793 = phi i32 [ %.us-phi773.lcssa794, %bb.h ], [ %.us-phi773, %.thread ] ; 2 uses
  %.us-phi742769.lcssa790 = phi i32 [ %.us-phi742769.lcssa791, %bb.h ], [ %.us-phi742769, %.thread ] ; 2 uses
  %.us-phi743765.lcssa787 = phi float [ %.us-phi743765.lcssa788, %bb.h ], [ %.us-phi743765, %.thread ] ; 2 uses
  %.us-phi744761.lcssa785 = phi float [ %.us-phi744761.lcssa786, %bb.h ], [ %.us-phi744761, %.thread ] ; 2 uses
  %.us-phi745757.lcssa783 = phi float [ %.us-phi745757.lcssa784, %bb.h ], [ %.us-phi745757, %.thread ] ; 2 uses
  %.us-phi746753.lcssa780 = phi float [ %.us-phi746753.lcssa781, %bb.h ], [ %.us-phi746753, %.thread ] ; 2 uses
  %indvars.iv.next886 = add nuw nsw i64 %indvars.iv885, 1 ; 2 uses
  %exitcond889.not = icmp eq i64 %indvars.iv.next886, %wide.trip.count888
  br i1 %exitcond889.not, label %..loopexit_crit_edge, label %bb.h, !llvm.loop !89

..loopexit_crit_edge:                             ; preds = %._crit_edge751
  store float %.us-phi746753.lcssa780, ptr %i.tn, align 4
  store float %.us-phi745757.lcssa783, ptr %i.tm, align 4
  store float %.us-phi744761.lcssa785, ptr %.sroa.2.0..sroa_idx, align 4
  store float %.us-phi743765.lcssa787, ptr %.sroa.3.0..sroa_idx, align 4
  store i32 %.us-phi742769.lcssa790, ptr %i.to, align 4
  store i32 %.us-phi773.lcssa793, ptr %i.tp, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge717, %..loopexit_crit_edge, %.thread672
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.t

bb.t:                                             ; preds = %.critedge491, %.critedge, %.loopexit
  ret void
}

; Function Attrs: nounwind uwtable
define void @b3CollideHulls(ptr nofree noundef captures(none) initializes((32, 36)) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #2 {
bb.a:
  %6 = alloca %struct.b3SATCache, align 8         ; 6 uses
  %7 = alloca %struct.b3SeparatingAxis, align 8   ; 10 uses
  %8 = alloca %struct.b3SATCache, align 8         ; 6 uses
  %9 = alloca %struct.b3SeparatingAxis, align 8   ; 10 uses
  %10 = alloca %struct.b3SATCache, align 8        ; 6 uses
  %11 = alloca %struct.b3AxisQuery, align 4       ; 5 uses
  %12 = alloca %struct.b3AxisQuery, align 4       ; 4 uses
  %13 = alloca %struct.b3SeparatingAxis, align 8  ; 4 uses
  %14 = alloca %struct.b3AxisQuery, align 8       ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %14, i64 56
  %15 = alloca %struct.b3AxisQuery, align 4       ; 19 uses
  %16 = alloca %struct.b3SeparatingAxis, align 8  ; 4 uses
  %17 = alloca %struct.b3SeparatingAxis, align 8  ; 6 uses
  %18 = alloca %struct.b3LocalManifold, align 8   ; 7 uses
  %19 = alloca %struct.b3LocalManifoldPoint, align 4 ; 5 uses
  %20 = alloca %struct.b3SATCache, align 8        ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store i32 0, ptr %i.b, align 8, !tbaa !16
  %i.c = icmp slt i32 %1, 4
  br i1 %i.c, label %.critedge378, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call float @b3GetLengthUnitsPerMeter() #11
  %i.e = fmul float %i.d, 5.000000e-03
  %i.f = fmul float %i.e, 4.000000e+00            ; 3 uses
  %i.g = tail call float @b3GetLengthUnitsPerMeter() #11
  %i.h = fmul float %i.g, 5.000000e-03            ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 116
  %i.j = load i32, ptr %i.i, align 4, !tbaa !47   ; 2 uses
  %i.k = ptrtoint ptr %2 to i64                   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.m = load i32, ptr %i.l, align 4, !tbaa !42   ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  %i.o = sext i32 %i.m to i64
  %i.p = add nsw i64 %i.o, %i.k
  %i.q = inttoptr i64 %i.p to ptr
  %.0.i399 = select i1 %i.n, ptr null, ptr %i.q   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 108
  %i.s = load i32, ptr %i.r, align 4, !tbaa !28   ; 2 uses
  %i.t = icmp eq i32 %i.s, 0
  %i.u = sext i32 %i.s to i64
  %i.v = add nsw i64 %i.u, %i.k
  %i.w = inttoptr i64 %i.v to ptr
  %.0.i400 = select i1 %i.t, ptr null, ptr %i.w   ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 116
  %i.y = load i32, ptr %i.x, align 4, !tbaa !47   ; 2 uses
  %i.z = ptrtoint ptr %3 to i64                   ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 124
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !42 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 0
  %i.ad = sext i32 %i.ab to i64
  %i.ae = add nsw i64 %i.ad, %i.z
  %i.af = inttoptr i64 %i.ae to ptr
  %.0.i402 = select i1 %i.ac, ptr null, ptr %i.af ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 108
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !28 ; 2 uses
  %i.ai = icmp eq i32 %i.ah, 0
  %i.aj = sext i32 %i.ah to i64
  %i.ak = add nsw i64 %i.aj, %i.z
  %i.al = inttoptr i64 %i.ak to ptr
  %.0.i403 = select i1 %i.ai, ptr null, ptr %i.al ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 7 ; 7 uses
  store i8 0, ptr %i.am, align 1, !tbaa !92
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  %i.ao = load i8, ptr %i.an, align 4, !tbaa !67
  switch i8 %i.ao, label %.critedge376 [
    i8 8, label %bb.t
    i8 2, label %bb.c
    i8 3, label %bb.g
    i8 4, label %bb.k
    i8 6, label %bb.r
    i8 7, label %bb.s
  ]

bb.c:                                             ; preds = %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 5 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !68
  %i.ar = zext i8 %i.aq to i64
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %.0.i399, i64 %i.ar ; 2 uses
  %.sroa.0242.0.copyload = load <2 x float>, ptr %i.as, align 4, !tbaa !9 ; 6 uses
  %.sroa.6245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.6245.0.copyload = load <2 x float>, ptr %.sroa.6245.0..sroa_idx, align 4, !tbaa !9 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.au = load <2 x float>, ptr %i.at, align 4    ; 10 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.aw = load <2 x float>, ptr %i.av, align 4    ; 5 uses
  %.sroa.6245.8.vec.extract = extractelement <2 x float> %.sroa.6245.0.copyload, i64 0
  %.sroa.3.8.vec.extract.i = extractelement <2 x float> %i.aw, i64 0
  %.sroa.011.4.vec.extract.i.i = extractelement <2 x float> %i.au, i64 1
  %.sroa.03.4.vec.extract.i.i = extractelement <2 x float> %.sroa.0242.0.copyload, i64 1
  %i.ax = shufflevector <2 x float> %.sroa.0242.0.copyload, <2 x float> %.sroa.6245.0.copyload, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ay = fmul <2 x float> %i.ax, %i.au
  %i.az = shufflevector <2 x float> %i.aw, <2 x float> %i.au, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.ba = fmul <2 x float> %.sroa.0242.0.copyload, %i.az
  %i.bb = shufflevector <2 x float> %i.au, <2 x float> %i.aw, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.bc = fmul <2 x float> %.sroa.0242.0.copyload, %i.bb
  %i.bd = shufflevector <2 x float> %.sroa.6245.0.copyload, <2 x float> %.sroa.0242.0.copyload, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.be = fmul <2 x float> %i.bd, %i.au
  %i.bf = fsub <2 x float> %i.ay, %i.bc
  %i.bg = fsub <2 x float> %i.ba, %i.be
  %i.bh = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.bi = fmul <2 x float> %i.bd, %i.bh
  %i.bj = fmul <2 x float> %i.ax, %i.bh
  %i.bk = fsub <2 x float> %i.bf, %i.bi           ; 2 uses
  %i.bl = fsub <2 x float> %i.bg, %i.bj           ; 2 uses
  %i.bm = fmul <2 x float> %i.bb, %i.bk
  %i.bn = fmul <2 x float> %i.az, %i.bl
  %i.bo = fsub <2 x float> %i.bm, %i.bn
  %foldExtExtBinop = fmul <2 x float> %i.au, %i.bl
  %foldExtExtBinop580 = fmul <2 x float> %i.au, %i.bk
  %shift = shufflevector <2 x float> %foldExtExtBinop580, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop582 = fsub <2 x float> %foldExtExtBinop, %shift
  %i.bp = extractelement <2 x float> %foldExtExtBinop582, i64 0
  %i.bq = fmul <2 x float> %i.bo, splat (float 2.000000e+00)
  %i.br = fadd <2 x float> %.sroa.0242.0.copyload, %i.bq
  %i.bs = fmul float %i.bp, 2.000000e+00
  %i.bt = fadd float %.sroa.6245.8.vec.extract, %i.bs
  %i.bu = fneg <2 x float> %i.br
  %i.bv = fneg float %i.bt
  %i.bw = tail call i32 @b3FindHullSupportVertex(ptr noundef nonnull %3, <2 x float> %i.bu, float %i.bv) #11 ; 2 uses
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [12 x i8], ptr %.0.i403, i64 %i.bx ; 2 uses
  %.sroa.0218.0.copyload = load <2 x float>, ptr %i.by, align 4 ; 4 uses
  %.sroa.2219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %.sroa.2219.0.copyload = load float, ptr %.sroa.2219.0..sroa_idx, align 4 ; 3 uses
  %.sroa.0573.0.copyload = load <2 x float>, ptr %4, align 8 ; 2 uses
  %.sroa.4574.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.4574.0.copyload = load float, ptr %.sroa.4574.0..sroa_idx, align 8
  %.sroa.03.4.vec.extract.i.i408 = extractelement <2 x float> %.sroa.0218.0.copyload, i64 1 ; 2 uses
  %.sroa.03.4.vec.extract.i417 = extractelement <2 x float> %.sroa.0573.0.copyload, i64 1
  %i.bz = fmul float %.sroa.011.4.vec.extract.i.i, %.sroa.2219.0.copyload
  %i.ca = fmul float %.sroa.3.8.vec.extract.i, %.sroa.03.4.vec.extract.i.i408
  %i.cb = fmul <2 x float> %i.az, %.sroa.0218.0.copyload ; 2 uses
  %i.cc = shufflevector <2 x float> %.sroa.0218.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cd = insertelement <2 x float> %i.cc, float %.sroa.2219.0.copyload, i64 0 ; 2 uses
  %i.ce = fmul <2 x float> %i.au, %i.cd           ; 2 uses
  %i.cf = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cg = insertelement <2 x float> %i.cf, float %i.bz, i64 0
  %i.ch = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ci = insertelement <2 x float> %i.ch, float %i.ca, i64 0
  %i.cj = fsub <2 x float> %i.cg, %i.ci
  %i.ck = fsub <2 x float> %i.cb, %i.ce
  %i.cl = fmul <2 x float> %i.bh, %.sroa.0218.0.copyload
  %i.cm = insertelement <2 x float> %i.cc, float %.sroa.2219.0.copyload, i64 1
  %i.cn = fmul <2 x float> %i.bh, %i.cm
  %i.co = fadd <2 x float> %i.cl, %i.cj           ; 2 uses
  %i.cp = fadd <2 x float> %i.cn, %i.ck           ; 2 uses
  %foldExtExtBinop584 = fmul <2 x float> %i.aw, %i.co
  %shift586 = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop587 = fmul <2 x float> %i.au, %shift586
  %foldExtExtBinop589 = fsub <2 x float> %foldExtExtBinop584, %foldExtExtBinop587
  %i.cq = extractelement <2 x float> %foldExtExtBinop589, i64 0
  %i.cr = fmul <2 x float> %i.au, %i.cp
  %i.cs = fmul <2 x float> %i.bb, %i.co
  %i.ct = fsub <2 x float> %i.cr, %i.cs
  %i.cu = fmul float %i.cq, 2.000000e+00
  %i.cv = fadd float %.sroa.03.4.vec.extract.i.i408, %i.cu
  %i.cw = fmul <2 x float> %i.ct, splat (float 2.000000e+00)
  %i.cx = fadd <2 x float> %i.cd, %i.cw
  %i.cy = fadd float %.sroa.03.4.vec.extract.i417, %i.cv
  %i.cz = shufflevector <2 x float> %.sroa.0573.0.copyload, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.da = insertelement <2 x float> %i.cz, float %.sroa.4574.0.copyload, i64 0
  %i.db = fadd <2 x float> %i.da, %i.cx
  %i.dc = fmul float %.sroa.03.4.vec.extract.i.i, %i.cy
  %i.dd = fmul <2 x float> %i.bd, %i.db           ; 2 uses
  %i.de = extractelement <2 x float> %i.dd, i64 1
  %i.df = fadd float %i.de, %i.dc
  %i.dg = extractelement <2 x float> %i.dd, i64 0
  %i.dh = fadd float %i.dg, %i.df
  %.sroa.28.12.vec.extract.i = extractelement <2 x float> %.sroa.6245.0.copyload, i64 1
  %i.di = fsub float %i.dh, %.sroa.28.12.vec.extract.i
  %i.dj = fcmp ult float %i.di, %i.f
  br i1 %i.dj, label %bb.d, label %.critedge

.critedge:                                        ; preds = %bb.c
  store i8 1, ptr %i.am, align 1, !tbaa !92
  br label %.critedge378

bb.d:                                             ; preds = %bb.c
  %i.dk = load i8, ptr %i.ap, align 1, !tbaa !68
  %i.dl = zext i8 %i.dk to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  store i64 0, ptr %6, align 8
  %i.dm = call fastcc zeroext i1 @b3BuildFaceAContact(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull byval(%struct.b3Transform) align 8 %4, i32 %i.dl, i32 %i.bw, ptr noundef nonnull %6)
  br i1 %i.dm, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.dn = load float, ptr %5, align 4, !tbaa !69
  %i.do = load float, ptr %6, align 8, !tbaa !69
  %i.dp = fsub float %i.dn, %i.do
  %i.dq = tail call float @llvm.fabs.f32(float %i.dp)
  %i.dr = fcmp olt float %i.dq, %i.h
  br i1 %i.dr, label %.critedge378.critedge, label %bb.f

.critedge378.critedge:                            ; preds = %bb.e
  store i8 1, ptr %i.am, align 1, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %.critedge378

bb.f:                                             ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %.critedge376

bb.g:                                             ; preds = %bb.b
  %i.ds = getelementptr inbounds nuw i8, ptr %5, i64 6 ; 2 uses
  %i.dt = load i8, ptr %i.ds, align 2, !tbaa !70
  %i.du = zext i8 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %.0.i402, i64 %i.du ; 2 uses
  %.sroa.0198.0.copyload = load <2 x float>, ptr %i.dv, align 4, !tbaa !9 ; 7 uses
  %.sroa.6201.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %.sroa.6201.0.copyload = load <2 x float>, ptr %.sroa.6201.0..sroa_idx, align 4, !tbaa !9 ; 5 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.dx = load <2 x float>, ptr %i.dw, align 4    ; 8 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.dz = load <2 x float>, ptr %i.dy, align 4    ; 5 uses
  %.sroa.6201.8.vec.extract = extractelement <2 x float> %.sroa.6201.0.copyload, i64 0 ; 2 uses
  %.sroa.03.4.vec.extract.i.i422 = extractelement <2 x float> %.sroa.0198.0.copyload, i64 1
  %foldExtExtBinop591 = fmul <2 x float> %.sroa.0198.0.copyload, %i.dz
  %foldExtExtBinop593 = fmul <2 x float> %.sroa.6201.0.copyload, %i.dx
  %foldExtExtBinop595 = fsub <2 x float> %foldExtExtBinop591, %foldExtExtBinop593
  %i.ea = shufflevector <2 x float> %.sroa.0198.0.copyload, <2 x float> %.sroa.6201.0.copyload, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.eb = fmul <2 x float> %i.ea, %i.dx
  %i.ec = shufflevector <2 x float> %i.dx, <2 x float> %i.dz, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.ed = fmul <2 x float> %.sroa.0198.0.copyload, %i.ec
  %i.ee = fsub <2 x float> %i.eb, %i.ed           ; 2 uses
  %i.ef = shufflevector <2 x float> %.sroa.6201.0.copyload, <2 x float> %.sroa.0198.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.eg = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.eh = fmul <2 x float> %i.ef, %i.eg
  %i.ei = fmul <2 x float> %i.ea, %i.eg
  %i.ej = fadd <2 x float> %i.eh, %i.ee           ; 2 uses
  %i.ek = shufflevector <2 x float> %i.ee, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.el = shufflevector <2 x float> %foldExtExtBinop595, <2 x float> %i.ek, <2 x i32> <i32 0, i32 3>
  %i.em = fadd <2 x float> %i.ei, %i.el           ; 2 uses
  %i.en = fmul <2 x float> %i.ec, %i.ej
  %i.eo = shufflevector <2 x float> %i.dz, <2 x float> %i.dx, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.ep = fmul <2 x float> %i.eo, %i.em
  %i.eq = fsub <2 x float> %i.en, %i.ep
  %i.er = shufflevector <2 x float> %i.em, <2 x float> %i.ej, <2 x i32> <i32 0, i32 3>
  %i.es = fmul <2 x float> %i.dx, %i.er           ; 2 uses
  %shift597 = shufflevector <2 x float> %i.es, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop598 = fsub <2 x float> %i.es, %shift597
  %i.et = extractelement <2 x float> %foldExtExtBinop598, i64 0
  %i.eu = fmul <2 x float> %i.eq, splat (float 2.000000e+00)
  %i.ev = fadd <2 x float> %.sroa.0198.0.copyload, %i.eu
  %i.ew = fmul float %i.et, 2.000000e+00
  %i.ex = fadd float %.sroa.6201.8.vec.extract, %i.ew
  %i.ey = fneg <2 x float> %i.ev
  %i.ez = fneg float %i.ex
  %i.fa = tail call i32 @b3FindHullSupportVertex(ptr noundef nonnull %2, <2 x float> %i.ey, float %i.ez) #11 ; 2 uses
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds [12 x i8], ptr %.0.i400, i64 %i.fb ; 2 uses
  %.sroa.0174.0.copyload = load <2 x float>, ptr %i.fc, align 4 ; 2 uses
  %.sroa.2175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %.sroa.2175.0.copyload = load float, ptr %.sroa.2175.0..sroa_idx, align 4
  %.sroa.09.0.copyload.i = load <2 x float>, ptr %4, align 8 ; 2 uses
  %.sroa.210.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.210.0.copyload.i = load float, ptr %.sroa.210.0..sroa_idx.i, align 8
  %i.fd = fsub <2 x float> %.sroa.0174.0.copyload, %.sroa.09.0.copyload.i ; 4 uses
  %i.fe = shufflevector <2 x float> %.sroa.0174.0.copyload, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ff = insertelement <2 x float> %i.fe, float %.sroa.2175.0.copyload, i64 0
  %i.fg = shufflevector <2 x float> %.sroa.09.0.copyload.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fh = insertelement <2 x float> %i.fg, float %.sroa.210.0.copyload.i, i64 0
  %i.fi = fsub <2 x float> %i.ff, %i.fh           ; 4 uses
  %i.fj = fmul <2 x float> %i.ec, %i.fi
end_hunk_0
begin_hunk_1_@b3CollideHulls:bb.a
  %i.mw = fadd <2 x float> %i.mu, %i.mr           ; 2 uses
  %i.mx = fmul <2 x float> %.sroa.5571.0.copyload, %i.mw
  %i.my = fmul <2 x float> %i.ji, %i.mv
  %i.mz = fsub <2 x float> %i.mx, %i.my
  %i.na = fmul <2 x float> %i.mz, splat (float 2.000000e+00)
  %i.nb = fadd <2 x float> %i.mk, %i.na
  %i.nc = shufflevector <2 x float> %.sroa.6572.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nd = shufflevector <2 x float> %i.jf, <2 x float> %i.mv, <2 x i32> <i32 0, i32 2>
  %i.ne = fmul <2 x float> %i.nc, %i.nd
  %i.nf = shufflevector <2 x float> %i.jg, <2 x float> %i.mw, <2 x i32> <i32 1, i32 3>
  %i.ng = fmul <2 x float> %i.lm, %i.nf
  %i.nh = fsub <2 x float> %i.ne, %i.ng
  %i.ni = fmul <2 x float> %i.nh, splat (float 2.000000e+00)
  %i.nj = shufflevector <2 x float> %.sroa.0113.0.copyload, <2 x float> %.sroa.0122.0.copyload, <2 x i32> <i32 1, i32 3>
  %i.nk = fadd <2 x float> %i.nj, %i.ni
  %i.nl = shufflevector <2 x float> %.sroa.0569.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.nm = fadd <2 x float> %i.nl, %i.nk           ; 3 uses
  %i.nn = fadd <2 x float> %i.jo, %i.nb
  %shift617 = shufflevector <2 x float> %i.nm, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop618 = fsub <2 x float> %i.nm, %shift617 ; 2 uses
  %i.no = fsub <2 x float> %i.jp, %i.nn           ; 3 uses
  %shift620 = shufflevector <2 x float> %i.no, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop621 = fmul <2 x float> %.sroa.0134.0.copyload, %shift620
  %shift623 = shufflevector <2 x float> %.sroa.0134.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop624 = fmul <2 x float> %shift623, %foldExtExtBinop618
  %foldExtExtBinop626 = fadd <2 x float> %foldExtExtBinop621, %foldExtExtBinop624
  %i.np = extractelement <2 x float> %foldExtExtBinop626, i64 0
  %i.nq = extractelement <2 x float> %i.no, i64 0
  %i.nr = fmul float %.sroa.4135.0.copyload, %i.nq
  %i.ns = fadd float %i.nr, %i.np
  %shift628 = shufflevector <2 x float> %.sroa.0132.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop629 = fmul <2 x float> %shift628, %foldExtExtBinop618
  %i.nt = shufflevector <2 x float> %.sroa.0132.0.copyload, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.nu = insertelement <2 x float> %i.nt, float %.sroa.4133.0.copyload, i64 0
  %i.nv = fmul <2 x float> %i.nu, %i.no           ; 2 uses
  %shift631 = shufflevector <2 x float> %i.nv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop632 = fadd <2 x float> %shift631, %foldExtExtBinop629
  %foldExtExtBinop634 = fadd <2 x float> %i.nv, %foldExtExtBinop632
  %i.nw = extractelement <2 x float> %foldExtExtBinop634, i64 0 ; 2 uses
  %i.nx = fneg float %i.nw
  %i.ny = extractelement <2 x float> %i.mg, i64 0 ; 2 uses
  %i.nz = extractelement <2 x float> %i.mg, i64 1 ; 4 uses
  %i.oa = fmul float %i.nz, %i.ny
  %i.ob = fcmp olt float %i.oa, 0.000000e+00
  %i.oc = fmul float %i.ns, %i.nw
  %i.od = fcmp olt float %i.oc, 0.000000e+00
  %or.cond = select i1 %i.ob, i1 %i.od, i1 false
  %i.oe = fmul float %i.nz, %i.nx
  %i.of = fcmp ogt float %i.oe, 0.000000e+00
  %or.cond372 = select i1 %or.cond, i1 %i.of, i1 false
  br i1 %or.cond372, label %bb.l, label %.critedge376

bb.l:                                             ; preds = %bb.k
  %i.og = fmul <2 x float> %i.mg, %i.mg           ; 2 uses
  %i.oh = extractelement <2 x float> %i.og, i64 0 ; 2 uses
  %i.oi = extractelement <2 x float> %i.og, i64 1 ; 2 uses
  %i.oj = fcmp ogt float %i.oi, %i.oh
  %i.ok = select i1 %i.oj, float %i.oi, float %i.oh
  %i.ol = fmul <2 x float> %i.ht, %i.ht           ; 2 uses
  %shift636 = shufflevector <2 x float> %i.ol, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop637 = fadd <2 x float> %i.ol, %shift636
  %i.om = extractelement <2 x float> %foldExtExtBinop637, i64 0
  %i.on = fmul float %i.hu, %i.hu
  %i.oo = fadd float %i.on, %i.om
  %i.op = fmul float %i.oo, 2.500000e-05
  %i.oq = fcmp ult float %i.ok, %i.op
  br i1 %i.oq, label %.critedge376, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.or = fsub float %i.nz, %i.ny
  %i.os = fdiv float %i.nz, %i.or                 ; 2 uses
  %i.ot = fsub float 1.000000e+00, %i.os          ; 2 uses
  %i.ou = insertelement <2 x float> poison, float %i.ot, i64 0
  %i.ov = shufflevector <2 x float> %i.ou, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ow = fmul <2 x float> %i.kr, %i.ov
  %i.ox = insertelement <2 x float> poison, float %i.os, i64 0 ; 2 uses
  %i.oy = shufflevector <2 x float> %i.ox, <2 x float> poison, <2 x i32> zeroinitializer
  %i.oz = fmul <2 x float> %i.ll, %i.oy
  %i.pa = fadd <2 x float> %i.oz, %i.ow           ; 3 uses
  %i.pb = insertelement <2 x float> %i.ox, float %i.ot, i64 1
  %i.pc = fmul <2 x float> %i.lw, %i.pb
  %i.pd = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.pc) ; 3 uses
  %i.pe = fmul <2 x float> %i.pa, %i.pa           ; 2 uses
  %shift639 = shufflevector <2 x float> %i.pe, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop640 = fadd <2 x float> %i.pe, %shift639
  %i.pf = extractelement <2 x float> %foldExtExtBinop640, i64 0
  %i.pg = fmul float %i.pd, %i.pd
  %i.ph = fadd float %i.pg, %i.pf                 ; 2 uses
  %i.pi = fcmp ogt float %i.ph, f0x057A0000
  br i1 %i.pi, label %bb.n, label %b3Normalize.exit

bb.n:                                             ; preds = %bb.m
  %sqrt = tail call float @llvm.sqrt.f32(float %i.ph)
  %i.pj = fdiv float 1.000000e+00, %sqrt          ; 2 uses
  %i.pk = insertelement <2 x float> poison, float %i.pj, i64 0
  %i.pl = shufflevector <2 x float> %i.pk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pm = fmul <2 x float> %i.pa, %i.pl
  %i.pn = fmul float %i.pd, %i.pj
  br label %b3Normalize.exit

b3Normalize.exit:                                 ; preds = %bb.m, %bb.n
  %.sroa.018.0.i = phi <2 x float> [ %i.pm, %bb.n ], [ zeroinitializer, %bb.m ] ; 3 uses
  %.sroa.5.0.i = phi float [ %i.pn, %bb.n ], [ 0.000000e+00, %bb.m ] ; 2 uses
  %i.po = shufflevector <2 x float> %.sroa.0147.0.copyload, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.pp = insertelement <2 x float> %i.po, float %.sroa.5149.0.copyload, i64 0
  %i.pq = fsub <2 x float> %i.pp, %i.jp
  %shift642 = shufflevector <2 x float> %.sroa.0147.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop643 = fsub <2 x float> %shift642, %i.nm
  %shift645 = shufflevector <2 x float> %.sroa.018.0.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop646 = fmul <2 x float> %foldExtExtBinop643, %shift645
  %i.pr = shufflevector <2 x float> %.sroa.018.0.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ps = insertelement <2 x float> %i.pr, float %.sroa.5.0.i, i64 0
  %i.pt = fmul <2 x float> %i.pq, %i.ps           ; 2 uses
  %shift648 = shufflevector <2 x float> %i.pt, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop649 = fadd <2 x float> %shift648, %foldExtExtBinop646
  %foldExtExtBinop651 = fadd <2 x float> %i.pt, %foldExtExtBinop649
  %i.pu = extractelement <2 x float> %foldExtExtBinop651, i64 0
  %i.pv = fcmp ogt float %i.pu, %i.f
  br i1 %i.pv, label %.critedge374, label %bb.o

.critedge374:                                     ; preds = %b3Normalize.exit
  store i8 1, ptr %i.am, align 1, !tbaa !92
  br label %.critedge378

bb.o:                                             ; preds = %b3Normalize.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  %i.pw = fneg <2 x float> %.sroa.018.0.i
  %i.px = fneg float %.sroa.5.0.i
  store <2 x float> %i.pw, ptr %9, align 8, !tbaa !9
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store float %i.px, ptr %.sroa.412.0..sroa_idx, align 8, !tbaa !9
  %i.py = getelementptr inbounds nuw i8, ptr %9, i64 12
  store float 0.000000e+00, ptr %i.py, align 4, !tbaa !53
  %i.pz = zext i8 %i.hi to i32
  %i.qa = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 %i.pz, ptr %i.qa, align 8, !tbaa !54
  %i.qb = zext i8 %i.ie to i32
  %i.qc = getelementptr inbounds nuw i8, ptr %9, i64 20
  store i32 %i.qb, ptr %i.qc, align 4, !tbaa !55
  %i.qd = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i32 4, ptr %i.qd, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
  store i64 0, ptr %10, align 8
  %i.qe = call fastcc zeroext i1 @b3BuildEdgeContact(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull byval(%struct.b3Transform) align 8 %4, ptr noundef nonnull byval(%struct.b3SeparatingAxis) align 8 %9, ptr noundef nonnull %10)
  br i1 %i.qe, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.qf = load float, ptr %5, align 4, !tbaa !69
  %i.qg = load float, ptr %10, align 8, !tbaa !69
  %i.qh = fsub float %i.qf, %i.qg
  %i.qi = tail call float @llvm.fabs.f32(float %i.qh)
  %i.qj = fcmp olt float %i.qi, %i.h
  br i1 %i.qj, label %.critedge378.critedge383, label %bb.q

.critedge378.critedge383:                         ; preds = %bb.p
  store i8 1, ptr %i.am, align 1, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  br label %.critedge378

bb.q:                                             ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  br label %.critedge376

bb.r:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  call void @b3ComputeSeparatingAxis(ptr dead_on_unwind nonnull writable sret(%struct.b3AxisQuery) align 4 %11, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull byval(%struct.b3Transform) align 8 %4, i1 noundef zeroext false)
  %.sroa.3559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 16
  %.sroa.3559.0.copyload = load i32, ptr %.sroa.3559.0..sroa_idx, align 4, !tbaa !32
  %.sroa.4560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 20
  %.sroa.4560.0.copyload = load i32, ptr %.sroa.4560.0..sroa_idx, align 4, !tbaa !32
  %i.qk = tail call fastcc zeroext i1 @b3BuildFaceAContact(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull byval(%struct.b3Transform) align 8 %4, i32 %.sroa.3559.0.copyload, i32 %.sroa.4560.0.copyload, ptr noundef nonnull %5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %.critedge378

bb.s:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #11
  call void @b3ComputeSeparatingAxis(ptr dead_on_unwind nonnull writable sret(%struct.b3AxisQuery) align 4 %12, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull byval(%struct.b3Transform) align 8 %4, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #11
  %i.ql = getelementptr inbounds nuw i8, ptr %12, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %13, ptr noundef nonnull align 4 dereferenceable(28) %i.ql, i64 28, i1 false), !tbaa.struct !93
  %i.qm = tail call fastcc zeroext i1 @b3BuildFaceBContact(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull byval(%struct.b3Transform) align 8 %4, ptr noundef nonnull byval(%struct.b3SeparatingAxis) align 8 %13, ptr noundef nonnull %5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  br label %.critedge378

bb.t:                                             ; preds = %bb.b
  call void @b3ComputeSeparatingAxis(ptr dead_on_unwind nonnull writable sret(%struct.b3AxisQuery) align 4 %14, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull byval(%struct.b3Transform) align 8 %4, i1 noundef zeroext false)
  %i.qn = getelementptr inbounds nuw i8, ptr %14, i64 72
  %i.qo = load i32, ptr %i.qn, align 8
  %.not = icmp eq i32 %i.qo, -1
  br i1 %.not, label %.critedge378, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.qp = tail call fastcc zeroext i1 @b3BuildEdgeContact(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull byval(%struct.b3Transform) align 8 %4, ptr noundef nonnull byval(%struct.b3SeparatingAxis) align 8 %i.a, ptr noundef nonnull %5) ; 0 uses
  br label %.critedge378

.critedge376:                                     ; preds = %bb.l, %bb.q, %bb.j, %bb.f, %bb.k, %bb.b
  store i32 0, ptr %i.b, align 8, !tbaa !16
  store float 0.000000e+00, ptr %5, align 4, !tbaa !9
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 5 ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 6 ; 3 uses
  store i32 0, ptr %i.an, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #11
  call void @b3ComputeSeparatingAxis(ptr dead_on_unwind nonnull writable sret(%struct.b3AxisQuery) align 4 %15, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull byval(%struct.b3Transform) align 8 %4, i1 noundef zeroext true)
  %i.qq = getelementptr inbounds nuw i8, ptr %15, i64 84
  %i.qr = load i32, ptr %i.qq, align 4, !tbaa !65 ; 3 uses
  %.not367 = icmp eq i32 %i.qr, 0
  br i1 %.not367, label %bb.z, label %bb.v

bb.v:                                             ; preds = %.critedge376
  %i.qs = trunc i32 %i.qr to i8
  store i8 %i.qs, ptr %i.an, align 4, !tbaa !67
  switch i32 %i.qr, label %bb.y [
    i32 2, label %bb.w
    i32 3, label %bb.x
  ]

bb.w:                                             ; preds = %bb.v
  %i.qt = getelementptr inbounds nuw i8, ptr %15, i64 12
  %i.qu = load float, ptr %i.qt, align 4, !tbaa !94
  store float %i.qu, ptr %5, align 4, !tbaa !69
  %i.qv = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.qw = load i32, ptr %i.qv, align 4, !tbaa !95
  %i.qx = trunc i32 %i.qw to i8
  store i8 %i.qx, ptr %.sroa.3.0..sroa_idx, align 1, !tbaa !68
  %i.qy = getelementptr inbounds nuw i8, ptr %15, i64 20
  %i.qz = load i32, ptr %i.qy, align 4, !tbaa !96
  %i.ra = trunc i32 %i.qz to i8
  store i8 %i.ra, ptr %.sroa.4.0..sroa_idx, align 2, !tbaa !70
  br label %bb.aj

bb.x:                                             ; preds = %bb.v
  %i.rb = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.rc = load float, ptr %i.rb, align 4, !tbaa !97
  store float %i.rc, ptr %5, align 4, !tbaa !69
  %i.rd = getelementptr inbounds nuw i8, ptr %15, i64 44
  %i.re = load i32, ptr %i.rd, align 4, !tbaa !98
  %i.rf = trunc i32 %i.re to i8
  store i8 %i.rf, ptr %.sroa.3.0..sroa_idx, align 1, !tbaa !68
  %i.rg = getelementptr inbounds nuw i8, ptr %15, i64 48
  %i.rh = load i32, ptr %i.rg, align 4, !tbaa !99
  %i.ri = trunc i32 %i.rh to i8
  store i8 %i.ri, ptr %.sroa.4.0..sroa_idx, align 2, !tbaa !70
  br label %bb.aj

bb.y:                                             ; preds = %bb.v
  %i.rj = getelementptr inbounds nuw i8, ptr %15, i64 68
  %i.rk = load float, ptr %i.rj, align 4, !tbaa !100
  store float %i.rk, ptr %5, align 4, !tbaa !69
  %i.rl = getelementptr inbounds nuw i8, ptr %15, i64 72
  %i.rm = load i32, ptr %i.rl, align 4, !tbaa !101
  %i.rn = trunc i32 %i.rm to i8
  store i8 %i.rn, ptr %.sroa.3.0..sroa_idx, align 1, !tbaa !68
  %i.ro = getelementptr inbounds nuw i8, ptr %15, i64 76
  %i.rp = load i32, ptr %i.ro, align 4, !tbaa !102
  %i.rq = trunc i32 %i.rp to i8
  store i8 %i.rq, ptr %.sroa.4.0..sroa_idx, align 2, !tbaa !70
  br label %bb.aj

bb.z:                                             ; preds = %.critedge376
  %i.rr = getelementptr inbounds nuw i8, ptr %15, i64 12
  %i.rs = load float, ptr %i.rr, align 4, !tbaa !94
  %i.rt = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.ru = load float, ptr %i.rt, align 4, !tbaa !97
  %i.rv = fcmp ogt float %i.rs, %i.ru
  br i1 %i.rv, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %.sroa.3.0..sroa_idx556 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx556, align 4, !tbaa !32
  %.sroa.4.0..sroa_idx557 = getelementptr inbounds nuw i8, ptr %15, i64 20
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx557, align 4, !tbaa !32
  %i.rw = tail call fastcc zeroext i1 @b3BuildFaceAContact(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull byval(%struct.b3Transform) align 8 %4, i32 %.sroa.3.0.copyload, i32 %.sroa.4.0.copyload, ptr noundef nonnull %5) ; 0 uses
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.rx = getelementptr inbounds nuw i8, ptr %15, i64 28
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %16, ptr noundef nonnull align 4 dereferenceable(28) %i.rx, i64 28, i1 false), !tbaa.struct !93
  %i.ry = tail call fastcc zeroext i1 @b3BuildFaceBContact(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull byval(%struct.b3Transform) align 8 %4, ptr noundef nonnull byval(%struct.b3SeparatingAxis) align 8 %16, ptr noundef nonnull %5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #11
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #11
  %i.rz = getelementptr inbounds nuw i8, ptr %15, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %17, ptr noundef nonnull align 4 dereferenceable(28) %i.rz, i64 28, i1 false), !tbaa.struct !93
  %i.sa = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.sb = load i32, ptr %i.sa, align 8, !tbaa !54
  %i.sc = icmp eq i32 %i.sb, -1
  br i1 %i.sc, label %bb.ai, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.sd = load i32, ptr %i.b, align 8, !tbaa !16
  %i.se = icmp eq i32 %i.sd, 0
  br i1 %i.se, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.sf = load float, ptr %5, align 4, !tbaa !69
  %i.sg = getelementptr inbounds nuw i8, ptr %17, i64 12
  %i.sh = load float, ptr %i.sg, align 4, !tbaa !53
  %i.si = fadd float %i.h, %i.sf
  %i.sj = fcmp ogt float %i.sh, %i.si
  br i1 %i.sj, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %18, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  %i.sk = getelementptr inbounds nuw i8, ptr %18, i64 24
  store ptr %19, ptr %i.sk, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #11
  store i64 0, ptr %20, align 8
  %i.sl = call fastcc zeroext i1 @b3BuildEdgeContact(ptr noundef nonnull %18, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull byval(%struct.b3Transform) align 8 %4, ptr noundef nonnull byval(%struct.b3SeparatingAxis) align 8 %17, ptr noundef nonnull %20) ; 0 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.sn = load i32, ptr %i.sm, align 8, !tbaa !16
  %i.so = icmp eq i32 %i.sn, 1
  br i1 %i.so, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.sp = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !17 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %18, i64 64, i1 false), !tbaa.struct !104
  store ptr %i.sq, ptr %i.sp, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.sq, ptr noundef nonnull align 4 dereferenceable(24) %19, i64 24, i1 false), !tbaa.struct !71
  %i.sr = load i64, ptr %20, align 8
  store i64 %i.sr, ptr %5, align 4
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #11
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ae, %bb.ah, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #11
  br label %bb.aj

bb.aj:                                            ; preds = %bb.w, %bb.y, %bb.x, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  br label %.critedge378

.critedge378:                                     ; preds = %bb.t, %bb.u, %.critedge378.critedge383, %.critedge378.critedge381, %.critedge378.critedge, %bb.r, %bb.s, %bb.aj, %.critedge, %.critedge369, %.critedge374, %bb.a
  ret void
}

declare i32 @b3FindHullSupportVertex(ptr noundef, <2 x float>, float) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @b3BuildFaceAContact(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %3, i32 %.16.val, i32 %.20.val, ptr nofree noundef writeonly captures(none) %4) unnamed_addr #2 {
bb.a:
  %5 = alloca [64 x %struct.b3ClipVertex], align 16 ; 4 uses
  %6 = alloca [64 x %struct.b3ClipVertex], align 16 ; 3 uses
  %7 = alloca [64 x %struct.b3LocalManifoldPoint], align 16 ; 18 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.b = load i32, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %i.c = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.e = load i32, ptr %i.d, align 4, !tbaa !47   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.g = load i32, ptr %i.f, align 4, !tbaa !42   ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  %i.i = sext i32 %i.g to i64
  %i.j = add nsw i64 %i.i, %i.c
  %i.k = inttoptr i64 %i.j to ptr
  %.0.i147 = select i1 %i.h, ptr null, ptr %i.k
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.m = load i32, ptr %i.l, align 4, !tbaa !28   ; 2 uses
  %i.n = sext i32 %.16.val to i64                 ; 2 uses
  %i.o = getelementptr inbounds [16 x i8], ptr %.0.i147, i64 %i.n ; 2 uses
  %.sroa.0100.0.copyload = load <2 x float>, ptr %i.o, align 4, !tbaa !9 ; 13 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.9.0.copyload = load <2 x float>, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !9 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.q = load <2 x float>, ptr %i.p, align 4      ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.s = load <2 x float>, ptr %i.r, align 4      ; 8 uses
  %.sroa.9.8.vec.extract = extractelement <2 x float> %.sroa.9.0.copyload, i64 0 ; 4 uses
  %i.t = shufflevector <2 x float> %i.q, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.u = shufflevector <2 x float> %.sroa.0100.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.v = extractelement <2 x float> %.sroa.0100.0.copyload, i64 1
  %.sroa.03.0.vec.extract.i.i = extractelement <2 x float> %.sroa.0100.0.copyload, i64 0
  %i.w = shufflevector <2 x float> %.sroa.0100.0.copyload, <2 x float> %.sroa.9.0.copyload, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.x = fmul <2 x float> %i.w, %i.q
  %i.y = shufflevector <2 x float> %i.s, <2 x float> %i.q, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.z = fmul <2 x float> %.sroa.0100.0.copyload, %i.y
  %i.aa = shufflevector <2 x float> %i.q, <2 x float> %i.s, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ab = fmul <2 x float> %.sroa.0100.0.copyload, %i.aa
  %i.ac = shufflevector <2 x float> %.sroa.9.0.copyload, <2 x float> %.sroa.0100.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ad = fmul <2 x float> %i.ac, %i.q
  %i.ae = fsub <2 x float> %i.x, %i.ab
  %i.af = fsub <2 x float> %i.z, %i.ad
  %i.ag = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ah = fmul <2 x float> %i.ac, %i.ag
  %i.ai = fmul <2 x float> %i.w, %i.ag
  %i.aj = fsub <2 x float> %i.ae, %i.ah           ; 2 uses
  %i.ak = fsub <2 x float> %i.af, %i.ai           ; 2 uses
  %i.al = fmul <2 x float> %i.aa, %i.aj
  %i.am = fmul <2 x float> %i.y, %i.ak
  %i.an = fsub <2 x float> %i.al, %i.am
end_hunk_1
begin_hunk_2_@b3BuildFaceAContact:bb.a
  %i.bj = extractelement <4 x float> %i.bi, i64 0
  %i.bk = fmul float %i.bj, 2.000000e+00
  %i.bl = fadd float %.sroa.9.8.vec.extract, %i.bk
  %i.bm = tail call i32 @b3FindIncidentFace(ptr noundef %2, <2 x float> %i.ap, float %i.bl, i32 noundef %.20.val) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %.sroa.0.0.copyload = load <2 x float>, ptr %3, align 8
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx1, align 8
  %i.bn = load i32, ptr %i.aq, align 8, !tbaa !57 ; 2 uses
  %i.bo = icmp eq i32 %i.bn, 0
  %i.bp = sext i32 %i.bn to i64
  %i.bq = add nsw i64 %i.bp, %i.ar
  %i.br = inttoptr i64 %i.bq to ptr
  %.0.i.i = select i1 %i.bo, ptr null, ptr %i.br
  %i.bs = load i32, ptr %i.as, align 4, !tbaa !47
  %i.bt = sext i32 %i.bs to i64
  %i.bu = add nsw i64 %i.bt, %i.ar
  %i.bv = inttoptr i64 %i.bu to ptr               ; 2 uses
  %i.bw = load i32, ptr %i.at, align 4, !tbaa !28 ; 2 uses
  %i.bx = icmp eq i32 %i.bw, 0
  %i.by = sext i32 %i.bw to i64
  %i.bz = add nsw i64 %i.by, %i.ar
  %i.ca = inttoptr i64 %i.bz to ptr
  %.0.i43.i = select i1 %i.bx, ptr null, ptr %i.ca
  %i.cb = sext i32 %i.bm to i64
  %i.cc = getelementptr inbounds i8, ptr %.0.i.i, i64 %i.cb ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !59
  %i.ce = zext i8 %i.cd to i32
  %i.cf = extractelement <4 x float> %i.bi, i64 1
  %i.cg = fmul float %i.cf, 2.000000e+00
  %i.ch = shufflevector <2 x float> %i.av, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ci = shufflevector <4 x float> %i.bd, <4 x float> %i.ch, <4 x i32> <i32 2, i32 3, i32 1, i32 5>
  %i.cj = shufflevector <4 x float> %i.bh, <4 x float> %i.ch, <4 x i32> <i32 2, i32 3, i32 1, i32 4>
  %i.ck = fadd <4 x float> %i.ci, %i.cj           ; 4 uses
  %i.cl = shufflevector <4 x float> %i.bi, <4 x float> %i.ck, <2 x i32> <i32 2, i32 4>
  %i.cm = fmul <2 x float> %i.cl, splat (float 2.000000e+00)
  %i.cn = extractelement <4 x float> %i.ck, i64 1
  %i.co = fmul float %i.cn, 2.000000e+00
  %i.cp = shufflevector <4 x float> %i.ck, <4 x float> %i.bi, <2 x i32> <i32 2, i32 7>
  %i.cq = fmul <2 x float> %i.cp, splat (float 2.000000e+00)
  %i.cr = extractelement <4 x float> %i.ck, i64 3
  %i.cs = fmul float %i.cr, 2.000000e+00
  %i.ct = fsub float 1.000000e+00, %i.cs
  %.sroa.28.12.vec.extract.i.i = extractelement <2 x float> %.sroa.9.0.copyload, i64 1
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %.0.i149 = phi i32 [ %i.cx, %bb.b ], [ %i.ce, %bb.a ] ; 2 uses
  %i.cu = zext nneg i32 %.0.i149 to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !60  ; 3 uses
  %i.cx = zext i8 %i.cw to i32                    ; 2 uses
  %i.cy = zext i8 %i.cw to i64
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 2
  %i.db = load i8, ptr %i.da, align 1, !tbaa !50
  %i.dc = zext i8 %i.db to i64
  %i.dd = getelementptr inbounds nuw [12 x i8], ptr %.0.i43.i, i64 %i.dc ; 2 uses
  %.sroa.012.0.copyload.i = load <2 x float>, ptr %i.dd, align 4 ; 4 uses
  %.sroa.213.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %.sroa.213.0.copyload.i = load float, ptr %.sroa.213.0..sroa_idx.i, align 4 ; 2 uses
  %i.de = shufflevector <2 x float> %.sroa.012.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.03.0.vec.extract.i.i150 = extractelement <2 x float> %.sroa.012.0.copyload.i, i64 0
  %i.df = fmul float %i.cg, %.sroa.03.0.vec.extract.i.i150
  %i.dg = extractelement <2 x float> %.sroa.012.0.copyload.i, i64 1
  %i.dh = fmul float %i.co, %i.dg
  %i.di = fadd float %i.df, %i.dh
  %i.dj = fmul float %i.ct, %.sroa.213.0.copyload.i
  %i.dk = fadd float %i.dj, %i.di
  %i.dl = fmul <2 x float> %i.cm, %i.de
  %i.dm = fmul <2 x float> %i.az, %.sroa.012.0.copyload.i
  %i.dn = fadd <2 x float> %i.dl, %i.dm
  %i.do = insertelement <2 x float> poison, float %.sroa.213.0.copyload.i, i64 0
  %i.dp = shufflevector <2 x float> %i.do, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dq = fmul <2 x float> %i.cq, %i.dp
  %i.dr = fadd <2 x float> %i.dq, %i.dn
  %i.ds = fadd <2 x float> %.sroa.0.0.copyload, %i.dr ; 3 uses
  %i.dt = fadd float %.sroa.4.0.copyload, %i.dk   ; 2 uses
  %foldExtExtBinop5 = fmul <2 x float> %.sroa.0100.0.copyload, %i.ds
  %foldExtExtBinop7 = fmul <2 x float> %.sroa.0100.0.copyload, %i.ds
  %shift = shufflevector <2 x float> %foldExtExtBinop7, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop9 = fadd <2 x float> %foldExtExtBinop5, %shift
  %i.du = extractelement <2 x float> %foldExtExtBinop9, i64 0
  %i.dv = fmul float %.sroa.9.8.vec.extract, %i.dt
  %i.dw = fadd float %i.dv, %i.du
  %i.dx = fsub float %i.dw, %.sroa.28.12.vec.extract.i.i
  %i.dy = tail call i32 @b3MakeFeaturePair(i32 noundef 1, i32 noundef %.0.i149, i32 noundef 1, i32 noundef %i.cx) #11
  %i.dz = getelementptr inbounds nuw [20 x i8], ptr %5, i64 %indvars.iv.i ; 4 uses
  store <2 x float> %i.ds, ptr %i.dz, align 4, !tbaa !9
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  store float %i.dt, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !9
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 12
  store float %i.dx, ptr %.sroa.7.0..sroa_idx.i, align 4, !tbaa !9
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  store i32 %i.dy, ptr %.sroa.8.0..sroa_idx.i, align 4, !tbaa !21
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ea = load i8, ptr %i.cc, align 1, !tbaa !59
  %i.eb = icmp ne i8 %i.cw, %i.ea
  %i.ec = icmp samesign ult i64 %indvars.iv.i, 63
  %i.ed = select i1 %i.eb, i1 %i.ec, i1 false
  br i1 %i.ed, label %bb.b, label %b3BuildPolygon.exit, !llvm.loop !105

b3BuildPolygon.exit:                              ; preds = %bb.b
  %i.ee = icmp eq i32 %i.b, 0
  %i.ef = sext i32 %i.b to i64
  %i.eg = add nsw i64 %i.ef, %i.c
  %i.eh = inttoptr i64 %i.eg to ptr
  %.0.i = select i1 %i.ee, ptr null, ptr %i.eh
  %i.ei = icmp eq i32 %i.e, 0
  %i.ej = sext i32 %i.e to i64
  %i.ek = add nsw i64 %i.ej, %i.c
  %i.el = inttoptr i64 %i.ek to ptr               ; 2 uses
  %.0.i146 = select i1 %i.ei, ptr null, ptr %i.el
  %i.em = icmp eq i32 %i.m, 0
  %i.en = sext i32 %i.m to i64
  %i.eo = add nsw i64 %i.en, %i.c
  %i.ep = inttoptr i64 %i.eo to ptr
  %.0.i148 = select i1 %i.em, ptr null, ptr %i.ep ; 2 uses
  %i.eq = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.er = getelementptr inbounds i8, ptr %.0.i, i64 %i.n ; 2 uses
  %i.es = load i8, ptr %i.er, align 1, !tbaa !59
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %b3BuildPolygon.exit
  %.0143.in = phi i8 [ %i.es, %b3BuildPolygon.exit ], [ %i.ev, %bb.f ] ; 2 uses
  %.0139 = phi ptr [ %6, %b3BuildPolygon.exit ], [ %.0138, %bb.f ] ; 3 uses
  %.0138 = phi ptr [ %5, %b3BuildPolygon.exit ], [ %.0139, %bb.f ] ; 2 uses
  %.0137 = phi i32 [ %i.eq, %b3BuildPolygon.exit ], [ %i.gf, %bb.f ]
  %.0143 = zext i8 %.0143.in to i32
  %i.et = zext i8 %.0143.in to i64
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %.0.i146, i64 %i.et ; 2 uses
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !60  ; 3 uses
  %i.ew = zext i8 %i.ev to i64
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.ew
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eu, i64 2
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !50
  %i.fa = zext i8 %i.ez to i64
  %i.fb = getelementptr inbounds nuw [12 x i8], ptr %.0.i148, i64 %i.fa ; 2 uses
  %.sroa.067.0.copyload = load <2 x float>, ptr %i.fb, align 4, !tbaa !9 ; 3 uses
  %.sroa.569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %.sroa.569.0.copyload = load float, ptr %.sroa.569.0..sroa_idx, align 4, !tbaa !9 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 2
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !50
  %i.fe = zext i8 %i.fd to i64
  %i.ff = getelementptr inbounds nuw [12 x i8], ptr %.0.i148, i64 %i.fe ; 2 uses
  %.sroa.065.0.copyload = load <2 x float>, ptr %i.ff, align 4, !tbaa !9
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %.sroa.466.0.copyload = load float, ptr %.sroa.466.0..sroa_idx, align 4, !tbaa !9
  %.sroa.03.0.vec.extract.i = extractelement <2 x float> %.sroa.067.0.copyload, i64 0
  %.sroa.03.4.vec.extract.i = extractelement <2 x float> %.sroa.067.0.copyload, i64 1
  %i.fg = fsub <2 x float> %.sroa.065.0.copyload, %.sroa.067.0.copyload ; 3 uses
  %i.fh = fsub float %.sroa.466.0.copyload, %.sroa.569.0.copyload ; 3 uses
  %i.fi = fmul <2 x float> %i.fg, %i.fg           ; 2 uses
  %shift11 = shufflevector <2 x float> %i.fi, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop12 = fadd <2 x float> %i.fi, %shift11
  %i.fj = extractelement <2 x float> %foldExtExtBinop12, i64 0
  %i.fk = fmul float %i.fh, %i.fh
  %i.fl = fadd float %i.fk, %i.fj                 ; 2 uses
  %i.fm = fcmp ogt float %i.fl, f0x057A0000
  br i1 %i.fm, label %bb.d, label %b3Normalize.exit

bb.d:                                             ; preds = %bb.c
  %sqrt = call float @llvm.sqrt.f32(float %i.fl)
  %i.fn = fdiv float 1.000000e+00, %sqrt          ; 2 uses
  %i.fo = insertelement <2 x float> poison, float %i.fn, i64 0
  %i.fp = shufflevector <2 x float> %i.fo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fq = fmul <2 x float> %i.fg, %i.fp
  %i.fr = fmul float %i.fh, %i.fn
  br label %b3Normalize.exit

b3Normalize.exit:                                 ; preds = %bb.c, %bb.d
  %.sroa.018.0.i = phi <2 x float> [ %i.fq, %bb.d ], [ zeroinitializer, %bb.c ] ; 3 uses
  %.sroa.5.0.i = phi float [ %i.fr, %bb.d ], [ 0.000000e+00, %bb.c ] ; 2 uses
  %shift14 = shufflevector <2 x float> %.sroa.018.0.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop15 = fmul <2 x float> %.sroa.9.0.copyload, %shift14
  %i.fs = extractelement <2 x float> %foldExtExtBinop15, i64 0
  %i.ft = fmul float %i.v, %.sroa.5.0.i
  %i.fu = fsub float %i.fs, %i.ft                 ; 2 uses
  %.sroa.018.0.vec.insert.i155 = insertelement <2 x float> poison, float %i.fu, i64 0
  %i.fv = fmul float %.sroa.03.0.vec.extract.i.i, %.sroa.5.0.i
  %foldExtExtBinop17 = fmul <2 x float> %.sroa.9.0.copyload, %.sroa.018.0.i
  %i.fw = extractelement <2 x float> %foldExtExtBinop17, i64 0
  %i.fx = fsub float %i.fv, %i.fw                 ; 2 uses
  %.sroa.018.4.vec.insert.i157 = insertelement <2 x float> %.sroa.018.0.vec.insert.i155, float %i.fx, i64 1
  %i.fy = fmul <2 x float> %i.u, %.sroa.018.0.i   ; 2 uses
  %shift19 = shufflevector <2 x float> %i.fy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop20 = fsub <2 x float> %i.fy, %shift19 ; 2 uses
  %i.fz = extractelement <2 x float> %foldExtExtBinop20, i64 0
  %i.ga = fmul float %.sroa.03.0.vec.extract.i, %i.fu
  %i.gb = fmul float %.sroa.03.4.vec.extract.i, %i.fx
  %i.gc = fadd float %i.ga, %i.gb
  %i.gd = fmul float %.sroa.569.0.copyload, %i.fz
  %i.ge = fadd float %i.gd, %i.gc
  %.sroa.211.12.vec.insert.i = insertelement <2 x float> %foldExtExtBinop20, float %i.ge, i64 1
  %i.gf = call i32 @b3ClipPolygon(ptr noundef %.0139, ptr noundef %.0138, i32 noundef %.0137, <2 x float> %.sroa.018.4.vec.insert.i157, <2 x float> %.sroa.211.12.vec.insert.i, i32 noundef %.0143, <2 x float> %.sroa.0100.0.copyload, <2 x float> %.sroa.9.0.copyload) #11 ; 5 uses
  %i.gg = icmp sgt i32 %i.gf, 2
  br i1 %i.gg, label %bb.f, label %bb.e

bb.e:                                             ; preds = %b3Normalize.exit
  store float 0.000000e+00, ptr %4, align 4, !tbaa !9
  %.sroa.225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %.sroa.225.0..sroa_idx, align 4
  br label %bb.ab

bb.f:                                             ; preds = %b3Normalize.exit
  %i.gh = load i8, ptr %i.er, align 1, !tbaa !59
  %.not = icmp eq i8 %i.ev, %i.gh
  br i1 %.not, label %bb.g, label %bb.c, !llvm.loop !106

bb.g:                                             ; preds = %bb.f
  %i.gi = call i32 @llvm.umin.i32(i32 %i.gf, i32 64) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  store <2 x float> %.sroa.0100.0.copyload, ptr %0, align 8, !tbaa !9
  %.sroa.9.0..sroa_idx106 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store float %.sroa.9.8.vec.extract, ptr %.sroa.9.0..sroa_idx106, align 8, !tbaa !9
  %wide.trip.count = zext nneg i32 %i.gi to i64   ; 2 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %i.gj = call float @b3GetLengthUnitsPerMeter() #11
  %i.gk = fmul float %i.gj, 5.000000e-03
  %i.gl = fmul float %i.gk, 4.000000e+00
  %i.gm = fcmp ult float %i.hf, %i.gl             ; 2 uses
  br i1 %i.gm, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.i
  %indvars.iv = phi i64 [ 0, %bb.g ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %.01417 = phi float [ f0x7F7FFFFF, %bb.g ], [ %i.hf, %bb.i ] ; 2 uses
  %i.gn = getelementptr inbounds nuw [20 x i8], ptr %.0139, i64 %indvars.iv ; 4 uses
  %i.go = getelementptr inbounds nuw [24 x i8], ptr %7, i64 %indvars.iv ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.go, i8 0, i64 24, i1 false)
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 12 ; 3 uses
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !46
  %i.gr = fmul float %i.gq, 5.000000e-01          ; 2 uses
  %.sroa.05.0.copyload = load <2 x float>, ptr %i.gn, align 4
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %.sroa.26.0.copyload = load float, ptr %.sroa.26.0..sroa_idx, align 4
  %i.gs = insertelement <2 x float> poison, float %i.gr, i64 0
  %i.gt = shufflevector <2 x float> %i.gs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gu = fmul <2 x float> %.sroa.0100.0.copyload, %i.gt
  %i.gv = fsub <2 x float> %.sroa.05.0.copyload, %i.gu
  %i.gw = fmul float %.sroa.9.8.vec.extract, %i.gr
  %i.gx = fsub float %.sroa.26.0.copyload, %i.gw
  store <2 x float> %i.gv, ptr %i.go, align 8, !tbaa !9
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  store float %i.gx, ptr %.sroa.48.0..sroa_idx, align 8, !tbaa !9
  %i.gy = load float, ptr %i.gp, align 4, !tbaa !46
  %i.gz = getelementptr inbounds nuw i8, ptr %i.go, i64 12
  store float %i.gy, ptr %i.gz, align 4, !tbaa !20
  %i.ha = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !21
  store i32 %i.hc, ptr %i.ha, align 8, !tbaa !21
  %i.hd = load float, ptr %i.gp, align 4, !tbaa !46 ; 2 uses
  %i.he = fcmp olt float %.01417, %i.hd
  %i.hf = select i1 %i.he, float %.01417, float %i.hd ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.h, label %bb.i, !llvm.loop !107

bb.j:                                             ; preds = %bb.h
  store float 0.000000e+00, ptr %4, align 4, !tbaa !9
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %.sroa.2.0..sroa_idx, align 4
  br label %bb.aa

bb.k:                                             ; preds = %bb.h
  %i.hg = icmp samesign ult i32 %i.gf, 5
  br i1 %i.hg, label %.lr.ph459.i, label %bb.m

.lr.ph459.i:                                      ; preds = %bb.k
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.hi, ptr noundef nonnull align 16 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !71
  %i.hj = load ptr, ptr %i.hh, align 8, !tbaa !17
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  %i.hl = getelementptr inbounds nuw i8, ptr %7, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.hk, ptr noundef nonnull align 8 dereferenceable(24) %i.hl, i64 24, i1 false), !tbaa.struct !71
  %i.hm = load ptr, ptr %i.hh, align 8, !tbaa !17
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 48
  %i.ho = getelementptr inbounds nuw i8, ptr %7, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.hn, ptr noundef nonnull align 16 dereferenceable(24) %i.ho, i64 24, i1 false), !tbaa.struct !71
  %exitcond481.not.i.2 = icmp eq i32 %i.gf, 3
  br i1 %exitcond481.not.i.2, label %._crit_edge460.i, label %bb.l

._crit_edge460.i:                                 ; preds = %bb.l, %.lr.ph459.i
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.gi, ptr %i.hp, align 8, !tbaa !16
  br label %b3ReduceManifoldPoints.exit

bb.l:                                             ; preds = %.lr.ph459.i
  %i.hq = load ptr, ptr %i.hh, align 8, !tbaa !17
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 72
  %i.hs = getelementptr inbounds nuw i8, ptr %7, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.hr, ptr noundef nonnull align 8 dereferenceable(24) %i.hs, i64 24, i1 false), !tbaa.struct !71
  br label %._crit_edge460.i

bb.m:                                             ; preds = %bb.k
  %.sroa.0244.0.copyload.i = load <2 x float>, ptr %0, align 8, !tbaa !9 ; 7 uses
  %.sroa.10.0.copyload.i = load float, ptr %.sroa.9.0..sroa_idx106, align 8, !tbaa !9 ; 8 uses
  %i.ht = call float @b3GetLengthUnitsPerMeter() #11
  %i.hu = fmul float %i.ht, 5.000000e-03
  %i.hv = fmul float %i.hu, 4.000000e+00          ; 3 uses
  %i.hw = fmul float %i.hv, %i.hv                 ; 3 uses
  %i.hx = shufflevector <2 x float> %.sroa.0244.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %.sroa.041.0.vec.extract.i.i = extractelement <2 x float> %.sroa.0244.0.copyload.i, i64 0 ; 6 uses
  %i.hy = call float @llvm.fabs.f32(float %.sroa.041.0.vec.extract.i.i)
  %or.cond.i.i = fcmp ogt float %i.hy, 5.000000e-01
  br i1 %or.cond.i.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.hz = extractelement <2 x float> %.sroa.0244.0.copyload.i, i64 1
  %i.ia = fmul float %i.hz, 6.700000e-01
  %i.ib = fmul float %.sroa.10.0.copyload.i, 4.200000e-01
  %i.ic = fsub float %i.ia, %i.ib
  %i.id = fmul nnan float %.sroa.041.0.vec.extract.i.i, -6.700000e-01
  %i.ie = fmul nnan float %.sroa.041.0.vec.extract.i.i, 4.200000e-01
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  %i.if = extractelement <2 x float> %.sroa.0244.0.copyload.i, i64 1 ; 3 uses
  %i.ig = call float @llvm.fabs.f32(float %i.if)
  %or.cond5.i.i = fcmp ogt float %i.ig, 5.000000e-01
  br i1 %or.cond5.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ih = fmul nnan float %i.if, 6.700000e-01
  %i.ii = fmul float %.sroa.041.0.vec.extract.i.i, -6.700000e-01
  %i.ij = fmul float %.sroa.10.0.copyload.i, 4.200000e-01
  %i.ik = fsub float %i.ii, %i.ij
  %i.il = fmul nnan float %i.if, 4.200000e-01
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.im = fmul float %.sroa.10.0.copyload.i, 6.700000e-01
  %i.in = fmul float %.sroa.10.0.copyload.i, -4.200000e-01
  %i.io = fmul <2 x float> %.sroa.0244.0.copyload.i, <float 6.700000e-01, float 4.200000e-01> ; 2 uses
  %shift22 = shufflevector <2 x float> %i.io, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop23 = fsub <2 x float> %shift22, %i.io
  %i.ip = extractelement <2 x float> %foldExtExtBinop23, i64 0
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.n
  %.sink67.i.i = phi float [ %i.ih, %bb.p ], [ %i.im, %bb.q ], [ %i.ic, %bb.n ] ; 3 uses
  %.sink.i.i = phi float [ %i.ik, %bb.p ], [ %i.in, %bb.q ], [ %i.id, %bb.n ] ; 3 uses
  %.sroa.9.0.i.i = phi float [ %i.il, %bb.p ], [ %i.ip, %bb.q ], [ %i.ie, %bb.n ] ; 3 uses
  %i.iq = fmul float %.sink67.i.i, %.sink67.i.i
  %i.ir = fmul float %.sink.i.i, %.sink.i.i
  %i.is = fadd float %i.iq, %i.ir
  %i.it = fmul float %.sroa.9.0.i.i, %.sroa.9.0.i.i
  %i.iu = fadd float %i.it, %i.is                 ; 2 uses
  %i.iv = fcmp ogt float %i.iu, f0x057A0000
  br i1 %i.iv, label %bb.s, label %.lr.ph.i

bb.s:                                             ; preds = %bb.r
  %sqrt.i.i = call float @llvm.sqrt.f32(float %i.iu)
  %i.iw = fdiv float 1.000000e+00, %sqrt.i.i      ; 3 uses
  %i.ix = fmul float %.sink67.i.i, %i.iw
  %.sroa.018.0.vec.insert.i.i.i = insertelement <2 x float> poison, float %i.ix, i64 0
  %i.iy = fmul float %.sink.i.i, %i.iw
  %.sroa.018.4.vec.insert.i.i.i = insertelement <2 x float> %.sroa.018.0.vec.insert.i.i.i, float %i.iy, i64 1
  %i.iz = fmul float %.sroa.9.0.i.i, %i.iw
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.s, %bb.r
  %.sroa.018.0.i.i.i = phi <2 x float> [ %.sroa.018.4.vec.insert.i.i.i, %bb.s ], [ zeroinitializer, %bb.r ]
  %.sroa.5.0.i.i.i = phi float [ %i.iz, %bb.s ], [ 0.000000e+00, %bb.r ]
  br label %bb.t

._crit_edge.i:                                    ; preds = %bb.v
  %i.ja = icmp eq i32 %.2.i, -1
  br i1 %i.ja, label %bb.w, label %.lr.ph438.i

bb.t:                                             ; preds = %bb.v, %.lr.ph.i
  %indvars.iv.i166 = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i169, %bb.v ] ; 3 uses
  %.0301433.i = phi i32 [ -1, %.lr.ph.i ], [ %.2.i, %bb.v ] ; 2 uses
  %.0302432.i = phi float [ f0xFF7FFFFF, %.lr.ph.i ], [ %.2304.i, %bb.v ] ; 3 uses
  %i.jb = getelementptr inbounds nuw [24 x i8], ptr %7, i64 %indvars.iv.i166 ; 3 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 12
  %i.jd = load float, ptr %i.jc, align 4, !tbaa !20 ; 2 uses
  %i.je = fcmp ogt float %i.jd, %i.hv
  br i1 %i.je, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.sroa.0198.0.copyload.i = load <2 x float>, ptr %i.jb, align 8
  %.sroa.2199.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  %.sroa.2199.0.copyload.i = load float, ptr %.sroa.2199.0..sroa_idx.i, align 8
  %i.jf = fmul <2 x float> %.sroa.018.0.i.i.i, %.sroa.0198.0.copyload.i ; 2 uses
  %shift25 = shufflevector <2 x float> %i.jf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop26 = fadd <2 x float> %i.jf, %shift25
  %i.jg = extractelement <2 x float> %foldExtExtBinop26, i64 0
  %i.jh = fmul float %.sroa.5.0.i.i.i, %.sroa.2199.0.copyload.i
  %i.ji = fadd float %i.jh, %i.jg
  %i.jj = fsub float %i.ji, %i.jd                 ; 2 uses
  %i.jk = fmul float %i.jj, f0x3F733333
  %i.jl = fcmp ogt float %i.jk, %.0302432.i       ; 2 uses
  %.1303.i = select i1 %i.jl, float %i.jj, float %.0302432.i
  %i.jm = trunc nuw nsw i64 %indvars.iv.i166 to i32
  %.1.i = select i1 %i.jl, i32 %i.jm, i32 %.0301433.i
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.2304.i = phi float [ %.1303.i, %bb.u ], [ %.0302432.i, %bb.t ]
  %.2.i = phi i32 [ %.1.i, %bb.u ], [ %.0301433.i, %bb.t ] ; 3 uses
  %indvars.iv.next.i169 = add nuw nsw i64 %indvars.iv.i166, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i169, %wide.trip.count
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.t, !llvm.loop !108

bb.w:                                             ; preds = %._crit_edge.i
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.jn, align 8, !tbaa !16
  br label %b3ReduceManifoldPoints.exit

.lr.ph438.i:                                      ; preds = %._crit_edge.i
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !17
  %i.jq = sext i32 %.2.i to i64
  %i.jr = getelementptr inbounds [24 x i8], ptr %7, i64 %i.jq ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.jp, ptr noundef nonnull align 8 dereferenceable(24) %i.jr, i64 24, i1 false), !tbaa.struct !71
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  store i32 1, ptr %i.js, align 8, !tbaa !16
  %i.jt = add nsw i32 %i.gi, -1
  %i.ju = zext nneg i32 %i.jt to i64              ; 2 uses
  %i.jv = getelementptr inbounds nuw [24 x i8], ptr %7, i64 %i.ju
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jr, ptr noundef nonnull align 8 dereferenceable(24) %i.jv, i64 24, i1 false), !tbaa.struct !71
  %i.jw = load ptr, ptr %i.jo, align 8, !tbaa !17 ; 3 uses
  %.sroa.0193.0.copyload.i = load <2 x float>, ptr %i.jw, align 4, !tbaa !9 ; 6 uses
  %.sroa.8.0..sroa_idx.i170 = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %.sroa.8.0.copyload.i = load float, ptr %.sroa.8.0..sroa_idx.i170, align 4, !tbaa !9 ; 5 uses
  %i.jx = extractelement <2 x float> %.sroa.0244.0.copyload.i, i64 1 ; 4 uses
  %i.jy = shufflevector <2 x float> %.sroa.0193.0.copyload.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.jz = insertelement <2 x float> %i.jy, float %.sroa.8.0.copyload.i, i64 0
  %i.ka = insertelement <2 x float> %i.hx, float %.sroa.10.0.copyload.i, i64 0 ; 2 uses
  br label %bb.x

._crit_edge439.i:                                 ; preds = %bb.x
  %i.kb = fcmp olt float %.4306.i, %i.hw
  br i1 %i.kb, label %b3ReduceManifoldPoints.exit, label %.lr.ph447.preheader.i

bb.x:                                             ; preds = %bb.x, %.lr.ph438.i
  %indvars.iv462.i = phi i64 [ 0, %.lr.ph438.i ], [ %indvars.iv.next463.i, %bb.x ] ; 3 uses
  %.3436.i = phi i32 [ -1, %.lr.ph438.i ], [ %.4.i, %bb.x ]
  %.3305435.i = phi float [ 0.000000e+00, %.lr.ph438.i ], [ %.4306.i, %bb.x ] ; 2 uses
  %i.kc = getelementptr inbounds nuw [24 x i8], ptr %7, i64 %indvars.iv462.i ; 3 uses
  %.sroa.0186.0.copyload.i = load <2 x float>, ptr %i.kc, align 8, !tbaa !9 ; 2 uses
  %.sroa.4187.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  %.sroa.4187.0.copyload.i = load float, ptr %.sroa.4187.0..sroa_idx.i, align 8, !tbaa !9
  %foldExtExtBinop28 = fsub <2 x float> %.sroa.0186.0.copyload.i, %.sroa.0193.0.copyload.i
  %i.kd = extractelement <2 x float> %foldExtExtBinop28, i64 1 ; 2 uses
  %i.ke = fmul float %i.jx, %i.kd
  %i.kf = shufflevector <2 x float> %.sroa.0186.0.copyload.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.kg = insertelement <2 x float> %i.kf, float %.sroa.4187.0.copyload.i, i64 0
  %i.kh = fsub <2 x float> %i.kg, %i.jz           ; 2 uses
  %i.ki = fmul <2 x float> %i.ka, %i.kh           ; 2 uses
  %i.kj = extractelement <2 x float> %i.ki, i64 1
  %i.kk = fadd float %i.kj, %i.ke
  %i.kl = extractelement <2 x float> %i.ki, i64 0
  %i.km = fadd float %i.kl, %i.kk                 ; 2 uses
  %i.kn = fmul float %i.jx, %i.km
  %i.ko = fsub float %i.kd, %i.kn                 ; 2 uses
  %i.kp = insertelement <2 x float> poison, float %i.km, i64 0
  %i.kq = shufflevector <2 x float> %i.kp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kr = fmul <2 x float> %i.ka, %i.kq
  %i.ks = fsub <2 x float> %i.kh, %i.kr           ; 2 uses
end_hunk_2
begin_hunk_3_@b3BuildFaceAContact:bb.a
  %i.mw = getelementptr inbounds nuw i8, ptr %i.lq, i64 48
  %i.mx = sext i32 %.6.i to i64
  %i.my = getelementptr inbounds [24 x i8], ptr %7, i64 %i.mx ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.mw, ptr noundef nonnull align 8 dereferenceable(24) %i.my, i64 24, i1 false), !tbaa.struct !71
  store i32 3, ptr %i.js, align 8, !tbaa !16
  %i.mz = add nsw i32 %i.gi, -3
  %i.na = zext nneg i32 %i.mz to i64              ; 2 uses
  %i.nb = getelementptr inbounds nuw [24 x i8], ptr %7, i64 %i.na
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.my, ptr noundef nonnull align 8 dereferenceable(24) %i.nb, i64 24, i1 false), !tbaa.struct !71
  %i.nc = load ptr, ptr %i.jo, align 8, !tbaa !17 ; 3 uses
  %.sroa.6105.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.nc, i64 56
  %.sroa.6105.0.copyload.i = load float, ptr %.sroa.6105.0..sroa_idx.i, align 4, !tbaa !9 ; 3 uses
  %i.nd = fcmp olt float %.1314.i, 0.000000e+00
  %i.ne = select i1 %i.nd, float -1.000000e+00, float 1.000000e+00 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nc, i64 48
  %.sroa.0102.0.copyload.i = load <2 x float>, ptr %i.nf, align 4, !tbaa !9 ; 3 uses
  %i.ng = fsub <2 x float> %.sroa.0102.0.copyload.i, %.sroa.0150.0.copyload.i ; 3 uses
  %i.nh = shufflevector <2 x float> %i.ng, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ni = fsub float %.sroa.6105.0.copyload.i, %.sroa.6153.0.copyload.i
  %i.nj = fsub <2 x float> %.sroa.0193.0.copyload.i, %.sroa.0102.0.copyload.i ; 3 uses
  %i.nk = shufflevector <2 x float> %i.nj, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.nl = fsub float %.sroa.8.0.copyload.i, %.sroa.6105.0.copyload.i
  %i.nm = insertelement <2 x float> poison, float %i.ne, i64 0
  %i.nn = shufflevector <2 x float> %i.nm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.no = insertelement <2 x float> poison, float %.sroa.10.0.copyload.i, i64 0
  %i.np = shufflevector <2 x float> %i.no, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nq = insertelement <2 x float> poison, float %i.ni, i64 0
  %i.nr = insertelement <2 x float> poison, float %i.nl, i64 1
  br label %bb.y

._crit_edge456.i:                                 ; preds = %bb.y
  %.not.i = icmp eq i32 %.8.i, -1
  br i1 %.not.i, label %b3ReduceManifoldPoints.exit, label %bb.z

bb.y:                                             ; preds = %bb.y, %.lr.ph455.i
  %indvars.iv472.i = phi i64 [ 0, %.lr.ph455.i ], [ %indvars.iv.next473.i, %bb.y ] ; 3 uses
  %.7453.i = phi i32 [ -1, %.lr.ph455.i ], [ %.8.i, %bb.y ]
  %.7309452.i = phi float [ %i.hw, %.lr.ph455.i ], [ %.8310.i, %bb.y ] ; 2 uses
  %i.ns = getelementptr inbounds nuw [24 x i8], ptr %7, i64 %indvars.iv472.i ; 2 uses
  %.sroa.093.0.copyload.i = load <2 x float>, ptr %i.ns, align 8, !tbaa !9 ; 3 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ns, i64 8
  %.sroa.6.0.copyload.i = load float, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !9 ; 3 uses
  %i.nt = fsub float %.sroa.6.0.copyload.i, %.sroa.8.0.copyload.i ; 2 uses
  %i.nu = fmul float %i.lw, %i.nt
  %i.nv = fmul float %i.lv, %i.nt
  %i.nw = fsub <2 x float> %.sroa.093.0.copyload.i, %.sroa.0193.0.copyload.i ; 3 uses
  %i.nx = extractelement <2 x float> %i.nw, i64 1
  %i.ny = fmul float %i.lu, %i.nx
  %i.nz = fsub float %i.ny, %i.nu
  %i.oa = extractelement <2 x float> %i.nw, i64 0
  %i.ob = fmul float %i.lu, %i.oa
  %i.oc = fsub float %i.nv, %i.ob
  %i.od = fmul <2 x float> %i.lt, %i.nw           ; 2 uses
  %shift33 = shufflevector <2 x float> %i.od, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop34 = fsub <2 x float> %i.od, %shift33
  %i.oe = extractelement <2 x float> %foldExtExtBinop34, i64 0
  %i.of = fmul float %.sroa.041.0.vec.extract.i.i, %i.nz
  %i.og = fmul float %i.jx, %i.oc
  %i.oh = fadd float %i.of, %i.og
  %i.oi = fmul float %.sroa.10.0.copyload.i, %i.oe
  %i.oj = fadd float %i.oi, %i.oh
  %i.ok = fmul float %i.ne, %i.oj                 ; 2 uses
  %i.ol = fsub float %.sroa.6.0.copyload.i, %.sroa.6153.0.copyload.i
  %i.om = fsub <2 x float> %.sroa.093.0.copyload.i, %.sroa.0150.0.copyload.i ; 3 uses
  %i.on = fmul <2 x float> %i.nh, %i.om           ; 2 uses
  %i.oo = fsub float %.sroa.6.0.copyload.i, %.sroa.6105.0.copyload.i
  %i.op = fsub <2 x float> %.sroa.093.0.copyload.i, %.sroa.0102.0.copyload.i ; 3 uses
  %i.oq = fmul <2 x float> %i.nk, %i.op           ; 2 uses
  %i.or = insertelement <2 x float> %i.nq, float %i.oo, i64 1 ; 2 uses
  %i.os = shufflevector <2 x float> %i.om, <2 x float> %i.nj, <2 x i32> <i32 0, i32 3>
  %i.ot = fmul <2 x float> %i.or, %i.os
  %i.ou = shufflevector <2 x float> %i.om, <2 x float> %i.nj, <2 x i32> <i32 1, i32 2>
  %i.ov = fmul <2 x float> %i.or, %i.ou
  %i.ow = shufflevector <2 x float> %i.ng, <2 x float> %i.op, <2 x i32> <i32 0, i32 3>
  %i.ox = insertelement <2 x float> %i.nr, float %i.ol, i64 0 ; 2 uses
  %i.oy = fmul <2 x float> %i.ow, %i.ox
  %i.oz = fsub <2 x float> %i.oy, %i.ot
  %i.pa = shufflevector <2 x float> %i.ng, <2 x float> %i.op, <2 x i32> <i32 1, i32 2>
  %i.pb = fmul <2 x float> %i.pa, %i.ox
  %i.pc = fsub <2 x float> %i.ov, %i.pb
  %i.pd = shufflevector <2 x float> %i.on, <2 x float> %i.oq, <2 x i32> <i32 0, i32 2>
  %i.pe = shufflevector <2 x float> %i.on, <2 x float> %i.oq, <2 x i32> <i32 1, i32 3>
  %i.pf = fsub <2 x float> %i.pd, %i.pe
  %i.pg = fmul <2 x float> %i.hx, %i.oz
  %i.ph = fmul <2 x float> %.sroa.0244.0.copyload.i, %i.pc
  %i.pi = fadd <2 x float> %i.pg, %i.ph
  %i.pj = fmul <2 x float> %i.np, %i.pf
  %i.pk = fadd <2 x float> %i.pj, %i.pi
  %i.pl = fmul <2 x float> %i.nn, %i.pk           ; 2 uses
  %i.pm = extractelement <2 x float> %i.pl, i64 0 ; 2 uses
  %i.pn = extractelement <2 x float> %i.pl, i64 1 ; 2 uses
  %i.po = fcmp ogt float %i.pm, %i.pn
  %i.pp = select i1 %i.po, float %i.pm, float %i.pn ; 2 uses
  %i.pq = fcmp ogt float %i.ok, %i.pp
  %i.pr = select i1 %i.pq, float %i.ok, float %i.pp ; 2 uses
  %i.ps = fmul float %i.pr, f0x3F733333
  %i.pt = fcmp ogt float %i.ps, %.7309452.i       ; 2 uses
  %.8310.i = select i1 %i.pt, float %i.pr, float %.7309452.i
  %i.pu = trunc nuw nsw i64 %indvars.iv472.i to i32
  %.8.i = select i1 %i.pt, i32 %i.pu, i32 %.7453.i ; 3 uses
  %indvars.iv.next473.i = add nuw nsw i64 %indvars.iv472.i, 1 ; 2 uses
  %exitcond476.not.i = icmp eq i64 %indvars.iv.next473.i, %i.na
  br i1 %exitcond476.not.i, label %._crit_edge456.i, label %bb.y, !llvm.loop !111

bb.z:                                             ; preds = %._crit_edge456.i
  %i.pv = getelementptr inbounds nuw i8, ptr %i.nc, i64 72
  %i.pw = sext i32 %.8.i to i64
  %i.px = getelementptr inbounds [24 x i8], ptr %7, i64 %i.pw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.pv, ptr noundef nonnull align 8 dereferenceable(24) %i.px, i64 24, i1 false), !tbaa.struct !71
  %i.py = load i32, ptr %i.js, align 8, !tbaa !16
  %i.pz = add nsw i32 %i.py, 1
  store i32 %i.pz, ptr %i.js, align 8, !tbaa !16
  br label %b3ReduceManifoldPoints.exit

b3ReduceManifoldPoints.exit:                      ; preds = %._crit_edge460.i, %bb.w, %._crit_edge439.i, %._crit_edge448.i, %._crit_edge456.i, %bb.z
  store float %i.hf, ptr %4, align 4, !tbaa !69
  %i.qa = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i8 2, ptr %i.qa, align 4, !tbaa !67
  %i.qb = trunc i32 %.16.val to i8
  %i.qc = getelementptr inbounds nuw i8, ptr %4, i64 5
  store i8 %i.qb, ptr %i.qc, align 1, !tbaa !68
  %i.qd = trunc i32 %.20.val to i8
  %i.qe = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i8 %i.qd, ptr %i.qe, align 2, !tbaa !70
  br label %bb.aa

bb.aa:                                            ; preds = %b3ReduceManifoldPoints.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  br label %bb.ab

bb.ab:                                            ; preds = %bb.e, %bb.aa
  %.3 = phi i1 [ %i.gm, %bb.aa ], [ false, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  ret i1 %.3
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @b3BuildFaceBContact(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %3, ptr nofree noundef readonly byval(%struct.b3SeparatingAxis) align 8 captures(none) %4, ptr nofree noundef writeonly captures(none) %5) unnamed_addr #2 {
bb.a:
  %6 = alloca %struct.b3Transform, align 8        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %.sroa.093.0.copyload = load <2 x float>, ptr %3, align 8 ; 5 uses
  %.sroa.494.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.494.0.copyload = load float, ptr %.sroa.494.0..sroa_idx, align 8 ; 5 uses
  %.sroa.595.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sroa.595.0.copyload = load <2 x float>, ptr %.sroa.595.0..sroa_idx, align 4 ; 11 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 20
  %.sroa.6.0.copyload = load <2 x float>, ptr %.sroa.6.0..sroa_idx, align 4 ; 10 uses
  %.sroa.3.8.vec.extract.i.i = extractelement <2 x float> %.sroa.6.0.copyload, i64 0 ; 3 uses
  %.sroa.011.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.595.0.copyload, i64 0 ; 3 uses
  %i.a = fmul float %.sroa.494.0.copyload, %.sroa.011.0.vec.extract.i.i.i
  %foldExtExtBinop = fmul <2 x float> %.sroa.093.0.copyload, %.sroa.6.0.copyload
  %i.b = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.c = fsub float %i.a, %i.b
  %i.d = shufflevector <2 x float> %.sroa.595.0.copyload, <2 x float> %.sroa.6.0.copyload, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.e = fmul <2 x float> %.sroa.093.0.copyload, %i.d
  %i.f = shufflevector <2 x float> %.sroa.093.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.g = insertelement <2 x float> %i.f, float %.sroa.494.0.copyload, i64 1 ; 2 uses
  %i.h = fmul <2 x float> %i.g, %.sroa.595.0.copyload
  %i.i = fsub <2 x float> %i.e, %i.h              ; 2 uses
  %i.j = insertelement <2 x float> %i.f, float %.sroa.494.0.copyload, i64 0
  %i.k = shufflevector <2 x float> %.sroa.6.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.l = fmul <2 x float> %i.j, %i.k
  %i.m = fmul <2 x float> %i.g, %i.k
  %i.n = fadd <2 x float> %i.i, %i.l              ; 2 uses
  %i.o = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.p = insertelement <2 x float> %i.o, float %i.c, i64 0
  %i.q = fadd <2 x float> %i.m, %i.p              ; 2 uses
  %i.r = fmul <2 x float> %i.d, %i.n
  %i.s = shufflevector <2 x float> %.sroa.6.0.copyload, <2 x float> %.sroa.595.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.t = fmul <2 x float> %i.s, %i.q
  %i.u = fsub <2 x float> %i.r, %i.t
  %foldExtExtBinop2 = fmul <2 x float> %.sroa.595.0.copyload, %i.q
  %foldExtExtBinop4 = fmul <2 x float> %.sroa.595.0.copyload, %i.n
  %shift = shufflevector <2 x float> %foldExtExtBinop4, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop6 = fsub <2 x float> %foldExtExtBinop2, %shift
  %i.v = extractelement <2 x float> %foldExtExtBinop6, i64 0
  %i.w = fmul <2 x float> %i.u, splat (float 2.000000e+00)
  %i.x = fsub <2 x float> %i.w, %.sroa.093.0.copyload
  %i.y = fmul float %i.v, 2.000000e+00
  %i.z = fsub float %i.y, %.sroa.494.0.copyload
  store <2 x float> %i.x, ptr %6, align 8, !tbaa !9, !alias.scope !115
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %i.z, ptr %.sroa.413.0..sroa_idx.i, align 8, !tbaa !9, !alias.scope !115
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.ab = fneg <2 x float> %.sroa.595.0.copyload
  %i.ac = fneg float %.sroa.3.8.vec.extract.i.i
  %.sroa.33.12.vec.insert.i.i = insertelement <2 x float> %.sroa.6.0.copyload, float %i.ac, i64 0
  store <2 x float> %i.ab, ptr %i.aa, align 4, !tbaa !9, !alias.scope !115
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 20
  store <2 x float> %.sroa.33.12.vec.insert.i.i, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !9, !alias.scope !115
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !55 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !54 ; 2 uses
  %i.ah = tail call fastcc zeroext i1 @b3BuildFaceAContact(ptr noundef %0, ptr noundef %2, ptr noundef %1, ptr noundef nonnull byval(%struct.b3Transform) align 8 %6, i32 %i.ae, i32 %i.ag, ptr noundef %5) ; 2 uses
  br i1 %i.ah, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store float 0.000000e+00, ptr %5, align 4, !tbaa !9
  %.sroa.237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %.sroa.237.0..sroa_idx, align 4
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %.sroa.3.12.vec.extract.i.i = extractelement <2 x float> %.sroa.6.0.copyload, i64 1 ; 3 uses
  %.sroa.011.4.vec.extract.i.i.i = extractelement <2 x float> %.sroa.595.0.copyload, i64 1 ; 3 uses
  %i.ai = fmul <2 x float> %.sroa.595.0.copyload, %.sroa.595.0.copyload ; 2 uses
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %foldExtExtBinop8 = fmul <2 x float> %.sroa.6.0.copyload, %.sroa.6.0.copyload
  %i.ak = fmul float %.sroa.011.0.vec.extract.i.i.i, %.sroa.011.4.vec.extract.i.i.i ; 2 uses
  %foldExtExtBinop10 = fmul <2 x float> %.sroa.595.0.copyload, %.sroa.6.0.copyload
  %i.al = extractelement <2 x float> %foldExtExtBinop10, i64 0 ; 2 uses
  %i.am = fmul float %.sroa.011.0.vec.extract.i.i.i, %.sroa.3.12.vec.extract.i.i ; 2 uses
  %i.an = fmul float %.sroa.011.4.vec.extract.i.i.i, %.sroa.3.8.vec.extract.i.i ; 2 uses
  %i.ao = fmul float %.sroa.011.4.vec.extract.i.i.i, %.sroa.3.12.vec.extract.i.i ; 2 uses
  %i.ap = fmul float %.sroa.3.8.vec.extract.i.i, %.sroa.3.12.vec.extract.i.i ; 2 uses
  %i.aq = fsub float %i.al, %i.ao
  %i.ar = fmul float %i.aq, 2.000000e+00          ; 2 uses
  %i.as = fadd float %i.an, %i.am
  %i.at = fmul float %i.as, 2.000000e+00          ; 2 uses
  %i.au = fadd float %i.ak, %i.ap
  %i.av = fsub float %i.ak, %i.ap
  %i.aw = insertelement <2 x float> poison, float %i.av, i64 0
  %i.ax = insertelement <2 x float> %i.aw, float %i.au, i64 1
  %i.ay = fmul <2 x float> %i.ax, splat (float 2.000000e+00) ; 2 uses
  %i.az = shufflevector <2 x float> %foldExtExtBinop8, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ba = fadd <2 x float> %i.aj, %i.az
  %i.bb = fmul <2 x float> %i.ba, splat (float 2.000000e+00)
  %i.bc = fsub <2 x float> splat (float 1.000000e+00), %i.bb ; 2 uses
  %i.bd = fadd float %i.al, %i.ao
  %i.be = fsub float %i.an, %i.am
  %i.bf = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.bg = insertelement <2 x float> %i.bf, float %i.be, i64 1
  %i.bh = fmul <2 x float> %i.bg, splat (float 2.000000e+00) ; 2 uses
  %i.bi = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ai)
  %i.bj = fmul float %i.bi, 2.000000e+00
  %i.bk = fsub float 1.000000e+00, %i.bj          ; 2 uses
  %.sroa.030.0.copyload = load <2 x float>, ptr %0, align 8 ; 4 uses
  %.sroa.231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.231.0.copyload = load float, ptr %.sroa.231.0..sroa_idx, align 8 ; 2 uses
  %i.bl = shufflevector <2 x float> %.sroa.030.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.03.0.vec.extract.i62 = extractelement <2 x float> %.sroa.030.0.copyload, i64 0
  %i.bm = fmul float %i.ar, %.sroa.03.0.vec.extract.i62
  %i.bn = extractelement <2 x float> %.sroa.030.0.copyload, i64 1
  %i.bo = fmul float %i.at, %i.bn
  %i.bp = fadd float %i.bm, %i.bo
  %i.bq = fmul float %i.bk, %.sroa.231.0.copyload
  %i.br = fadd float %i.bq, %i.bp
  %i.bs = fmul <2 x float> %i.ay, %i.bl
  %i.bt = fmul <2 x float> %i.bc, %.sroa.030.0.copyload
  %i.bu = fadd <2 x float> %i.bs, %i.bt
  %i.bv = insertelement <2 x float> poison, float %.sroa.231.0.copyload, i64 0
  %i.bw = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bx = fmul <2 x float> %i.bh, %i.bw
  %i.by = fadd <2 x float> %i.bx, %i.bu
  %i.bz = fneg <2 x float> %i.by
  %i.ca = fneg float %i.br
  store <2 x float> %i.bz, ptr %0, align 8, !tbaa !9
  store float %i.ca, ptr %.sroa.231.0..sroa_idx, align 8, !tbaa !9
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !16
  %i.cd = icmp sgt i32 %i.cc, 0
  br i1 %i.cd, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.d

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i8 3, ptr %i.cf, align 4, !tbaa !67
  %i.cg = trunc i32 %i.ag to i8
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 5
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !68
  %i.ci = trunc i32 %i.ae to i8
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 6
  store i8 %i.ci, ptr %i.cj, align 2, !tbaa !70
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.ck = load ptr, ptr %i.ce, align 8, !tbaa !17
  %i.cl = getelementptr inbounds nuw [24 x i8], ptr %i.ck, i64 %indvars.iv ; 4 uses
  %.sroa.010.0.copyload = load <2 x float>, ptr %i.cl, align 4 ; 4 uses
  %.sroa.211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 2 uses
  %.sroa.211.0.copyload = load float, ptr %.sroa.211.0..sroa_idx, align 4 ; 2 uses
  %i.cm = shufflevector <2 x float> %.sroa.010.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.03.0.vec.extract.i72 = extractelement <2 x float> %.sroa.010.0.copyload, i64 0
  %i.cn = fmul float %i.ar, %.sroa.03.0.vec.extract.i72
  %i.co = extractelement <2 x float> %.sroa.010.0.copyload, i64 1
  %i.cp = fmul float %i.at, %i.co
  %i.cq = fadd float %i.cn, %i.cp
  %i.cr = fmul float %i.bk, %.sroa.211.0.copyload
  %i.cs = fadd float %i.cr, %i.cq
  %i.ct = fmul <2 x float> %i.ay, %i.cm
  %i.cu = fmul <2 x float> %i.bc, %.sroa.010.0.copyload
  %i.cv = fadd <2 x float> %i.ct, %i.cu
  %i.cw = insertelement <2 x float> poison, float %.sroa.211.0.copyload, i64 0
  %i.cx = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cy = fmul <2 x float> %i.bh, %i.cx
  %i.cz = fadd <2 x float> %i.cy, %i.cv
  %i.da = fadd <2 x float> %.sroa.093.0.copyload, %i.cz
  %i.db = fadd float %.sroa.494.0.copyload, %i.cs
  store <2 x float> %i.da, ptr %i.cl, align 4, !tbaa !9
  store float %i.db, ptr %.sroa.211.0..sroa_idx, align 4, !tbaa !9
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cl, i64 16 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4
  %i.de = tail call i32 @b3FlipPair(i32 %i.dd) #11
  store i32 %i.de, ptr %i.dc, align 4, !tbaa !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.df = load i32, ptr %i.cb, align 8, !tbaa !16
  %i.dg = sext i32 %i.df to i64
  %i.dh = icmp slt i64 %indvars.iv.next, %i.dg
  br i1 %i.dh, label %bb.d, label %._crit_edge, !llvm.loop !114

bb.e:                                             ; preds = %._crit_edge, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  ret i1 %i.ah
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @b3BuildEdgeContact(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %3, ptr nofree noundef readonly byval(%struct.b3SeparatingAxis) align 8 captures(none) %4, ptr nofree noundef writeonly captures(none) initializes((0, 7)) %5) unnamed_addr #2 {
bb.a:
  %6 = alloca %struct.b3SegmentDistanceResult, align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.b = load i32, ptr %i.a, align 4, !tbaa !47   ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  %i.d = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.e = sext i32 %i.b to i64
  %i.f = add nsw i64 %i.e, %i.d
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %.0.i = select i1 %i.c, ptr null, ptr %i.g
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.i = load i32, ptr %i.h, align 4, !tbaa !28   ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  %i.k = sext i32 %i.i to i64
  %i.l = add nsw i64 %i.k, %i.d
  %i.m = inttoptr i64 %i.l to ptr
  %.0.i124 = select i1 %i.j, ptr null, ptr %i.m   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 116
  %i.o = load i32, ptr %i.n, align 4, !tbaa !47   ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  %i.q = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.r = sext i32 %i.o to i64
  %i.s = add nsw i64 %i.r, %i.q
  %i.t = inttoptr i64 %i.s to ptr                 ; 2 uses
  %.0.i125 = select i1 %i.p, ptr null, ptr %i.t
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 108
  %i.v = load i32, ptr %i.u, align 4, !tbaa !28   ; 2 uses
  %i.w = icmp eq i32 %i.v, 0
  %i.x = sext i32 %i.v to i64
  %i.y = add nsw i64 %i.x, %i.q
  %i.z = inttoptr i64 %i.y to ptr
  %.0.i126 = select i1 %i.w, ptr null, ptr %i.z   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !54 ; 3 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [4 x i8], ptr %.0.i, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !61
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !50
  %i.ak = zext i8 %i.aj to i64
  %i.al = getelementptr inbounds nuw [12 x i8], ptr %.0.i124, i64 %i.ak ; 2 uses
  %.sroa.091.0.copyload = load <2 x float>, ptr %i.al, align 4, !tbaa !9 ; 2 uses
  %.sroa.593.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.593.0.copyload = load float, ptr %.sroa.593.0..sroa_idx, align 4, !tbaa !9 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  %i.an = load i8, ptr %i.am, align 1, !tbaa !50
  %i.ao = zext i8 %i.an to i64
  %i.ap = getelementptr inbounds nuw [12 x i8], ptr %.0.i124, i64 %i.ao ; 2 uses
  %.sroa.089.0.copyload = load <2 x float>, ptr %i.ap, align 4, !tbaa !9
  %.sroa.490.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.490.0.copyload = load float, ptr %.sroa.490.0..sroa_idx, align 4, !tbaa !9
  %i.aq = fsub <2 x float> %.sroa.089.0.copyload, %.sroa.091.0.copyload
  %i.ar = fsub float %.sroa.490.0.copyload, %.sroa.593.0.copyload
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.at = load i32, ptr %i.as, align 4, !tbaa !55 ; 3 uses
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %.0.i125, i64 %i.au ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !61
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !50
  %i.bc = zext i8 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [12 x i8], ptr %.0.i126, i64 %i.bc ; 2 uses
  %.sroa.071.0.copyload = load <2 x float>, ptr %i.bd, align 4 ; 4 uses
  %.sroa.272.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.sroa.272.0.copyload = load float, ptr %.sroa.272.0..sroa_idx, align 4 ; 4 uses
  %.sroa.0181.0.copyload = load <2 x float>, ptr %3, align 8 ; 2 uses
  %.sroa.4182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.be = load <1 x float>, ptr %.sroa.4182.0..sroa_idx, align 8
  %.sroa.5183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sroa.5183.0.copyload = load <2 x float>, ptr %.sroa.5183.0..sroa_idx, align 4 ; 7 uses
  %.sroa.6184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 20
  %.sroa.6184.0.copyload = load <2 x float>, ptr %.sroa.6184.0..sroa_idx, align 4 ; 5 uses
  %.sroa.011.0.vec.extract.i.i = extractelement <2 x float> %.sroa.5183.0.copyload, i64 0 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 2
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !50
  %i.bh = zext i8 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [12 x i8], ptr %.0.i126, i64 %i.bh ; 2 uses
  %.sroa.063.0.copyload = load <2 x float>, ptr %i.bi, align 4 ; 4 uses
  %.sroa.264.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.sroa.264.0.copyload = load float, ptr %.sroa.264.0..sroa_idx, align 4 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.071.0.copyload, %.sroa.6184.0.copyload
  %i.bj = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bk = fmul float %.sroa.272.0.copyload, %.sroa.011.0.vec.extract.i.i
  %i.bl = fsub float %i.bj, %i.bk
  %i.bm = shufflevector <2 x float> %.sroa.071.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bn = insertelement <2 x float> %i.bm, float %.sroa.272.0.copyload, i64 1 ; 2 uses
  %i.bo = fmul <2 x float> %i.bn, %.sroa.5183.0.copyload
  %i.bp = shufflevector <2 x float> %.sroa.5183.0.copyload, <2 x float> %.sroa.6184.0.copyload, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.bq = fmul <2 x float> %.sroa.071.0.copyload, %i.bp
  %i.br = fsub <2 x float> %i.bo, %i.bq           ; 2 uses
  %i.bs = insertelement <2 x float> %i.bm, float %.sroa.272.0.copyload, i64 0
  %i.bt = shufflevector <2 x float> %.sroa.6184.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.bu = fmul <2 x float> %i.bs, %i.bt
  %i.bv = fmul <2 x float> %i.bn, %i.bt
  %i.bw = fadd <2 x float> %i.bu, %i.br           ; 2 uses
  %i.bx = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.by = insertelement <2 x float> %i.bx, float %i.bl, i64 0
  %i.bz = fadd <2 x float> %i.bv, %i.by           ; 2 uses
  %i.ca = fmul <2 x float> %i.bp, %i.bw
  %i.cb = shufflevector <2 x float> %.sroa.6184.0.copyload, <2 x float> %.sroa.5183.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.cc = fmul <2 x float> %i.cb, %i.bz
  %i.cd = fsub <2 x float> %i.ca, %i.cc
  %i.ce = fmul <2 x float> %i.cd, splat (float 2.000000e+00)
  %i.cf = fadd <2 x float> %.sroa.071.0.copyload, %i.ce
  %i.cg = fadd <2 x float> %.sroa.0181.0.copyload, %i.cf ; 2 uses
  %foldExtExtBinop189 = fmul <2 x float> %.sroa.6184.0.copyload, %.sroa.063.0.copyload
  %i.ch = extractelement <2 x float> %foldExtExtBinop189, i64 0
  %i.ci = fmul float %.sroa.011.0.vec.extract.i.i, %.sroa.264.0.copyload
  %i.cj = fsub float %i.ch, %i.ci
  %i.ck = shufflevector <2 x float> %.sroa.063.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cl = insertelement <2 x float> %i.ck, float %.sroa.264.0.copyload, i64 1 ; 2 uses
  %i.cm = fmul <2 x float> %.sroa.5183.0.copyload, %i.cl
  %i.cn = fmul <2 x float> %i.bp, %.sroa.063.0.copyload
  %i.co = fsub <2 x float> %i.cm, %i.cn           ; 2 uses
  %i.cp = insertelement <2 x float> %i.ck, float %.sroa.264.0.copyload, i64 0
  %i.cq = fmul <2 x float> %i.bt, %i.cp
  %i.cr = fmul <2 x float> %i.bt, %i.cl
  %i.cs = fadd <2 x float> %i.cq, %i.co           ; 2 uses
  %i.ct = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cu = insertelement <2 x float> %i.ct, float %i.cj, i64 0
  %i.cv = fadd <2 x float> %i.cr, %i.cu           ; 2 uses
  %i.cw = fmul <2 x float> %i.bp, %i.cs
  %i.cx = fmul <2 x float> %i.cb, %i.cv
  %i.cy = fsub <2 x float> %i.cw, %i.cx
  %i.cz = fmul <2 x float> %i.cy, splat (float 2.000000e+00)
  %i.da = fadd <2 x float> %.sroa.063.0.copyload, %i.cz
  %i.db = fadd <2 x float> %.sroa.0181.0.copyload, %i.da
  %i.dc = shufflevector <2 x float> %.sroa.5183.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dd = shufflevector <2 x float> %i.cv, <2 x float> %i.bz, <2 x i32> <i32 0, i32 2>
  %i.de = fmul <2 x float> %i.dc, %i.dd
  %i.df = shufflevector <2 x float> %.sroa.5183.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dg = shufflevector <2 x float> %i.cs, <2 x float> %i.bw, <2 x i32> <i32 1, i32 3>
  %i.dh = fmul <2 x float> %i.df, %i.dg
  %i.di = fsub <2 x float> %i.de, %i.dh
  %i.dj = fmul <2 x float> %i.di, splat (float 2.000000e+00)
  %i.dk = insertelement <2 x float> poison, float %.sroa.264.0.copyload, i64 0
  %i.dl = insertelement <2 x float> %i.dk, float %.sroa.272.0.copyload, i64 1
  %i.dm = fadd <2 x float> %i.dl, %i.dj
  %i.dn = shufflevector <1 x float> %i.be, <1 x float> poison, <2 x i32> zeroinitializer
  %i.do = fadd <2 x float> %i.dn, %i.dm           ; 2 uses
  %i.dp = fsub <2 x float> %i.db, %i.cg
  %i.dq = extractelement <2 x float> %i.do, i64 0
  %i.dr = extractelement <2 x float> %i.do, i64 1 ; 2 uses
  %i.ds = fsub float %i.dq, %i.dr
  %.sroa.044.0.copyload = load <2 x float>, ptr %4, align 8, !tbaa !9 ; 2 uses
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.546.0.copyload = load float, ptr %.sroa.546.0..sroa_idx, align 8, !tbaa !9 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @b3LineDistance(ptr dead_on_unwind nonnull writable sret(%struct.b3SegmentDistanceResult) align 4 %6, <2 x float> %.sroa.091.0.copyload, float %.sroa.593.0.copyload, <2 x float> %i.aq, float %i.ar, <2 x float> %i.cg, float %i.dr, <2 x float> %i.dp, float %i.ds) #11
  %i.dt = getelementptr inbounds nuw i8, ptr %6, i64 12
  %.val = load float, ptr %i.dt, align 4, !tbaa !63 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %6, i64 28
  %.val123 = load float, ptr %i.du, align 4       ; 2 uses
  %i.dv = fcmp oge float %.val, 0.000000e+00
  %i.dw = fcmp ole float %.val, 1.000000e+00
  %or.cond.not.i = and i1 %i.dv, %i.dw
  %i.dx = fcmp oge float %.val123, 0.000000e+00
  %i.dy = fcmp ole float %.val123, 1.000000e+00
  %spec.select.i = and i1 %i.dx, %i.dy
  %i.dz = select i1 %or.cond.not.i, i1 %spec.select.i, i1 false ; 2 uses
  br i1 %i.dz, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %.sroa.5.0..sroa_idx, align 4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ea = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.027.0.copyload = load <2 x float>, ptr %i.ea, align 8 ; 2 uses
  %.sroa.228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  %.sroa.228.0.copyload = load float, ptr %.sroa.228.0..sroa_idx, align 8 ; 2 uses
  %.sroa.025.0.copyload = load <2 x float>, ptr %6, align 8 ; 2 uses
  %.sroa.226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.226.0.copyload = load float, ptr %.sroa.226.0..sroa_idx, align 8 ; 2 uses
  %i.eb = fsub float %.sroa.228.0.copyload, %.sroa.226.0.copyload
  %i.ec = fsub <2 x float> %.sroa.027.0.copyload, %.sroa.025.0.copyload
  %i.ed = fmul <2 x float> %.sroa.044.0.copyload, %i.ec ; 2 uses
  %shift = shufflevector <2 x float> %i.ed, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop191 = fadd <2 x float> %i.ed, %shift
  %i.ee = extractelement <2 x float> %foldExtExtBinop191, i64 0
  %i.ef = fmul float %.sroa.546.0.copyload, %i.eb
  %i.eg = fadd float %i.ef, %i.ee                 ; 2 uses
  %i.eh = fadd float %.sroa.228.0.copyload, %.sroa.226.0.copyload
  %i.ei = fadd <2 x float> %.sroa.027.0.copyload, %.sroa.025.0.copyload
  %i.ej = fmul <2 x float> %i.ei, splat (float 5.000000e-01)
  %i.ek = fmul float %i.eh, 5.000000e-01
  store <2 x float> %.sroa.044.0.copyload, ptr %0, align 8, !tbaa !9
  %.sroa.546.0..sroa_idx47 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %.sroa.546.0.copyload, ptr %.sroa.546.0..sroa_idx47, align 8, !tbaa !9
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 1, ptr %i.el, align 8, !tbaa !16
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !17 ; 4 uses
  store <2 x float> %i.ej, ptr %i.en, align 4, !tbaa !9
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store float %i.ek, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !9
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 12
  store float %i.eg, ptr %i.eo, align 4, !tbaa !20
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.eq = call i32 @b3MakeFeaturePair(i32 noundef 0, i32 noundef %i.ab, i32 noundef 1, i32 noundef %i.at) #11
  store i32 %i.eq, ptr %i.ep, align 4, !tbaa !21
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i8 4, ptr %7, align 4, !tbaa !67
  %i.er = trunc i32 %i.ab to i8
  %8 = getelementptr inbounds nuw i8, ptr %5, i64 5
  store i8 %i.er, ptr %8, align 1, !tbaa !68
  %i.es = trunc i32 %i.at to i8
  %9 = getelementptr inbounds nuw i8, ptr %5, i64 6
  store i8 %i.es, ptr %9, align 2, !tbaa !70
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink187 = phi float [ %i.eg, %bb.c ], [ 0.000000e+00, %bb.b ]
  store float %.sink187, ptr %5, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  ret i1 %i.dz
}

declare i32 @b3GetPointSupport(ptr noundef, i32 noundef, <2 x float>, float) local_unnamed_addr #3

declare void @b3LineDistance(ptr dead_on_unwind writable sret(%struct.b3SegmentDistanceResult) align 4, <2 x float>, float, <2 x float>, float, <2 x float>, float, <2 x float>, float) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.sqrt.v4f32(<4 x float>) #9

declare i32 @b3FindIncidentFace(ptr noundef, <2 x float>, float, i32 noundef) local_unnamed_addr #3

declare i32 @b3ClipPolygon(ptr noundef, ptr noundef, i32 noundef, <2 x float>, <2 x float>, i32 noundef, <2 x float>, <2 x float>) local_unnamed_addr #3

declare i32 @b3FlipPair(i32) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"float", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"b3Vec3", !8, i64 0, !8, i64 4, !8, i64 8}
!11 = !{!"b3Sphere", !10, i64 0, !8, i64 12}
!12 = !{!11, !8, i64 12}
!13 = !{!"any pointer", !4, i64 0}
!14 = !{!"p1 _ZTS20b3LocalManifoldPoint", !13, i64 0}
!15 = !{!"b3LocalManifold", !10, i64 0, !10, i64 12, !14, i64 24, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !8, i64 52, !5, i64 56, !5, i64 60}
!16 = !{!15, !5, i64 32}
!17 = !{!15, !14, i64 24}
!18 = !{!"b3FeaturePair", !4, i64 0, !4, i64 1, !4, i64 2, !4, i64 3}
!19 = !{!"b3LocalManifoldPoint", !10, i64 0, !8, i64 12, !18, i64 16, !5, i64 20}
!20 = !{!19, !8, i64 12}
!21 = !{!4, !4, i64 0}
!22 = !{!"b3Capsule", !10, i64 0, !10, i64 12, !8, i64 24}
!23 = !{!22, !8, i64 24}
!24 = !{!"long", !4, i64 0}
!25 = !{!"b3AABB", !10, i64 0, !10, i64 12}
!26 = !{!"b3Matrix3", !10, i64 0, !10, i64 12, !10, i64 24}
!27 = !{!"b3HullData", !24, i64 0, !24, i64 8, !25, i64 16, !8, i64 40, !8, i64 44, !8, i64 48, !10, i64 52, !26, i64 64, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140}
!28 = !{!27, !5, i64 108}
!29 = !{!27, !5, i64 100}
!30 = !{!"p1 _ZTS6b3Vec3", !13, i64 0}
!31 = !{!30, !30, i64 0}
!32 = !{!5, !5, i64 0}
!33 = !{i64 0, i64 4, !9, i64 4, i64 4, !9, i64 8, i64 4, !9, i64 12, i64 4, !9, i64 16, i64 4, !9, i64 20, i64 4, !9, i64 24, i64 4, !9}
!34 = !{!"b3ShapeProxy", !30, i64 0, !5, i64 8, !8, i64 12}
!35 = !{!"b3Quat", !10, i64 0, !8, i64 12}
!36 = !{!"b3Transform", !10, i64 0, !35, i64 12}
!37 = !{!"_Bool", !4, i64 0}
!38 = !{!"b3DistanceInput", !34, i64 0, !34, i64 16, !36, i64 32, !37, i64 60}
!39 = !{!38, !37, i64 60}
!40 = !{!"b3DistanceOutput", !10, i64 0, !10, i64 12, !10, i64 24, !8, i64 36, !5, i64 40, !5, i64 44}
!41 = !{!40, !8, i64 36}
!42 = !{!27, !5, i64 124}
!43 = !{!27, !5, i64 120}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!"b3ClipVertex", !10, i64 0, !8, i64 12, !18, i64 16}
!46 = !{!45, !8, i64 12}
!47 = !{!27, !5, i64 116}
!48 = !{!27, !5, i64 112}
!49 = !{!"b3HullHalfEdge", !4, i64 0, !4, i64 1, !4, i64 2, !4, i64 3}
!50 = !{!49, !4, i64 2}
!51 = !{!49, !4, i64 3}
!52 = !{!"b3SeparatingAxis", !10, i64 0, !8, i64 12, !5, i64 16, !5, i64 20, !5, i64 24}
!53 = !{!52, !8, i64 12}
!54 = !{!52, !5, i64 16}
!55 = !{!52, !5, i64 20}
!56 = !{!52, !5, i64 24}
!57 = !{!27, !5, i64 128}
!58 = !{!"b3HullFace", !4, i64 0}
!59 = !{!58, !4, i64 0}
!60 = !{!49, !4, i64 0}
!61 = !{!49, !4, i64 1}
!62 = !{!"b3SegmentDistanceResult", !10, i64 0, !8, i64 12, !10, i64 16, !8, i64 28}
!63 = !{!62, !8, i64 12}
!64 = !{!"b3AxisQuery", !52, i64 0, !52, i64 28, !52, i64 56, !5, i64 84}
!65 = !{!64, !5, i64 84}
!66 = !{!"", !8, i64 0, !4, i64 4, !4, i64 5, !4, i64 6, !4, i64 7}
!67 = !{!66, !4, i64 4}
!68 = !{!66, !4, i64 5}
!69 = !{!66, !8, i64 0}
!70 = !{!66, !4, i64 6}
!71 = !{i64 0, i64 4, !9, i64 4, i64 4, !9, i64 8, i64 4, !9, i64 12, i64 4, !9, i64 16, i64 1, !21, i64 17, i64 1, !21, i64 18, i64 1, !21, i64 19, i64 1, !21, i64 20, i64 4, !32}
!72 = distinct !{!72, !44}
!73 = distinct !{!73, i1 true, !"b3QueryFaceDirectionHullAndCapsule"}
!74 = distinct !{!74, !73, !"b3QueryFaceDirectionHullAndCapsule: argument 0"}
!75 = distinct !{!75, !44}
!76 = distinct !{!76, i1 true, !"b3QueryEdgeDirectionHullAndCapsule"}
!77 = distinct !{!77, !76, !"b3QueryEdgeDirectionHullAndCapsule: argument 0"}
!78 = distinct !{!78, !44}
!79 = !{!74}
!80 = !{!77}
!81 = distinct !{!81, !44}
!82 = distinct !{!82, !44}
!83 = distinct !{!83, !44}
!84 = distinct !{!84, !44}
!85 = distinct !{!85, !44}
!86 = distinct !{!86, !44}
!87 = distinct !{!87, !44}
!88 = distinct !{!88, !44}
!89 = distinct !{!89, !44}
!90 = !{!27, !5, i64 132}
!91 = !{!27, !5, i64 136}
!92 = !{!66, !4, i64 7}
!93 = !{i64 0, i64 4, !9, i64 4, i64 4, !9, i64 8, i64 4, !9, i64 12, i64 4, !9, i64 16, i64 4, !32, i64 20, i64 4, !32, i64 24, i64 4, !32}
!94 = !{!64, !8, i64 12}
!95 = !{!64, !5, i64 16}
!96 = !{!64, !5, i64 20}
!97 = !{!64, !8, i64 40}
!98 = !{!64, !5, i64 44}
!99 = !{!64, !5, i64 48}
!100 = !{!64, !8, i64 68}
!101 = !{!64, !5, i64 72}
!102 = !{!64, !5, i64 76}
!103 = !{!14, !14, i64 0}
!104 = !{i64 0, i64 4, !9, i64 4, i64 4, !9, i64 8, i64 4, !9, i64 12, i64 4, !9, i64 16, i64 4, !9, i64 20, i64 4, !9, i64 24, i64 8, !103, i64 32, i64 4, !32, i64 36, i64 4, !32, i64 40, i64 4, !32, i64 44, i64 4, !32, i64 48, i64 4, !32, i64 52, i64 4, !9, i64 56, i64 4, !32, i64 60, i64 4, !32}
!105 = distinct !{!105, !44}
!106 = distinct !{!106, !44}
!107 = distinct !{!107, !44}
!108 = distinct !{!108, !44}
!109 = distinct !{!109, !44}
!110 = distinct !{!110, !44}
!111 = distinct !{!111, !44}
!112 = distinct !{!112, i1 true, !"b3InvertTransform"}
!113 = distinct !{!113, !112, !"b3InvertTransform: argument 0"}
!114 = distinct !{!114, !44}
!115 = !{!113}
end_hunk_3
