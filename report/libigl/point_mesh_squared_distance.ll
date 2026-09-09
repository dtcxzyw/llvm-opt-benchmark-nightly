Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/point_mesh_squared_distance?download=true
inline.NumInlined: 12093
inline.NumDeleted: 4173
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 57
begin_hunk_0_@_ZN4CGAL20CommonKernelFunctors27Construct_projected_point_3INS_16Simple_cartesianIdEEEclERKNS_10Triangle_3IS3_EERKNS_7Point_3IS3_EERKS3_:bb.a
  %i.fk = call double @llvm.fmuladd.f64(double %i.fj, double %i.fe, double %i.fi) ; 2 uses
  %i.fl = fcmp ugt double %i.fk, 0.000000e+00
  br i1 %i.fl, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store <2 x double> %i.f, ptr %0, align 8
  %.sroa.9132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.l, ptr %.sroa.9132.0..sroa_idx, align 8
  br label %_ZN4CGAL20CommonKernelFunctors27Construct_projected_point_3INS_16Simple_cartesianIdEEEclERKNS_9Segment_3IS3_EERKNS_7Point_3IS3_EERKS3_.exit

bb.ac:                                            ; preds = %bb.aa
  %i.fm = fsub double %i.ex, %i.k
  %i.fn = fsub double %i.fa, %i.j
  %i.fo = fsub double %i.fd, %i.m
  %i.fp = fmul double %i.ff, %i.fn
  %i.fq = call double @llvm.fmuladd.f64(double %i.fh, double %i.fm, double %i.fp)
  %i.fr = call noundef double @llvm.fmuladd.f64(double %i.fj, double %i.fo, double %i.fq)
  %i.fs = fcmp ult double %i.fr, 0.000000e+00
  br i1 %i.fs, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store <2 x double> %i.i, ptr %0, align 8
  %.sroa.16141.24..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.m, ptr %.sroa.16141.24..sroa_idx, align 8
  br label %_ZN4CGAL20CommonKernelFunctors27Construct_projected_point_3INS_16Simple_cartesianIdEEEclERKNS_9Segment_3IS3_EERKNS_7Point_3IS3_EERKS3_.exit

bb.ae:                                            ; preds = %bb.ac
  %i.ft = fmul double %i.ff, %i.ff
  %i.fu = call double @llvm.fmuladd.f64(double %i.fh, double %i.fh, double %i.ft)
  %i.fv = call double @llvm.fmuladd.f64(double %i.fj, double %i.fj, double %i.fu)
  %i.fw = fdiv double %i.fk, %i.fv                ; 2 uses
  %i.fx = call double @llvm.fmuladd.f64(double %i.fw, double %i.fj, double %i.l)
  %i.fy = insertelement <2 x double> poison, double %i.fw, i64 0
  %i.fz = shufflevector <2 x double> %i.fy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ga = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fz, <2 x double> %i.aw, <2 x double> %i.f)
  store <2 x double> %i.ga, ptr %0, align 8, !alias.scope !2994
  %.sroa.5.0..sroa_idx.i.i24.i83 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.fx, ptr %.sroa.5.0..sroa_idx.i.i24.i83, align 8, !alias.scope !2994
  br label %_ZN4CGAL20CommonKernelFunctors27Construct_projected_point_3INS_16Simple_cartesianIdEEEclERKNS_9Segment_3IS3_EERKNS_7Point_3IS3_EERKS3_.exit

bb.af:                                            ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2995)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21, !noalias !2995
  %i.gb = fcmp oeq double %i.p, %i.k
  %.sroa.04.0.insert.insert.i.i.i.i.i92 = select i1 %i.gb, i16 257, i16 0 ; 4 uses
  %.sroa.0.0.extract.trunc.i.i.i.i.i.i.i.i93 = trunc i16 %.sroa.04.0.insert.insert.i.i.i.i.i92 to i8
  %.sroa.2.0.extract.shift.i.i.i.i.i.i.i.i94 = lshr i16 %.sroa.04.0.insert.insert.i.i.i.i.i92, 8
  %.sroa.2.0.extract.trunc.i.i.i.i.i.i.i.i95 = trunc nuw nsw i16 %.sroa.2.0.extract.shift.i.i.i.i.i.i.i.i94 to i8
  %i.gc = icmp ne i8 %.sroa.0.0.extract.trunc.i.i.i.i.i.i.i.i93, %.sroa.2.0.extract.trunc.i.i.i.i.i.i.i.i95
  %i.gd = trunc i16 %.sroa.04.0.insert.insert.i.i.i.i.i92 to i1
  %.not7.i.i.i.i.i.i96 = or i1 %i.gc, %i.gd
  br i1 %.not7.i.i.i.i.i.i96, label %bb.ag, label %_ZNK4CGAL20CommonKernelFunctors15Is_degenerate_3INS_16Simple_cartesianIdEEEclERKNS_9Segment_3IS3_EE.exit.i97

bb.ag:                                            ; preds = %bb.af
  %i.ge = fcmp oeq double %i.o, %i.j
  %.sroa.01.0.insert.insert.i.i.i.i.i.i.i101 = select i1 %i.ge, i16 257, i16 0 ; 4 uses
  %.sroa.0.0.extract.trunc.i.i.i.i.i.i.i.i.i.i102 = trunc i16 %.sroa.01.0.insert.insert.i.i.i.i.i.i.i101 to i8
  %.sroa.2.0.extract.shift.i.i.i.i.i.i.i.i.i.i103 = lshr i16 %.sroa.01.0.insert.insert.i.i.i.i.i.i.i101, 8
  %.sroa.2.0.extract.trunc.i.i.i.i.i.i.i.i.i.i104 = trunc nuw nsw i16 %.sroa.2.0.extract.shift.i.i.i.i.i.i.i.i.i.i103 to i8
  %i.gf = icmp ne i8 %.sroa.0.0.extract.trunc.i.i.i.i.i.i.i.i.i.i102, %.sroa.2.0.extract.trunc.i.i.i.i.i.i.i.i.i.i104
  %i.gg = trunc i16 %.sroa.01.0.insert.insert.i.i.i.i.i.i.i101 to i1
  %.not6.i.i.i.i.i.i.i.i105 = or i1 %i.gf, %i.gg
  br i1 %.not6.i.i.i.i.i.i.i.i105, label %bb.ah, label %_ZNK4CGAL20CommonKernelFunctors15Is_degenerate_3INS_16Simple_cartesianIdEEEclERKNS_9Segment_3IS3_EE.exit.i97

bb.ah:                                            ; preds = %bb.ag
  %i.gh = fcmp oeq double %i.q, %i.m
  %i.gi = select i1 %i.gh, i16 %.sroa.01.0.insert.insert.i.i.i.i.i.i.i101, i16 0
  %i.gj = and i16 %i.gi, %.sroa.04.0.insert.insert.i.i.i.i.i92
  br label %_ZNK4CGAL20CommonKernelFunctors15Is_degenerate_3INS_16Simple_cartesianIdEEEclERKNS_9Segment_3IS3_EE.exit.i97

_ZNK4CGAL20CommonKernelFunctors15Is_degenerate_3INS_16Simple_cartesianIdEEEclERKNS_9Segment_3IS3_EE.exit.i97: ; preds = %bb.ah, %bb.ag, %bb.af
  %.sroa.06.0.i.i.i.i.i.i98 = phi i16 [ 0, %bb.af ], [ %i.gj, %bb.ah ], [ 0, %bb.ag ]
  store i16 %.sroa.06.0.i.i.i.i.i.i98, ptr %5, align 2, !noalias !2995
  %i.gk = call noundef zeroext i1 @_ZNK4CGAL9UncertainIbE12make_certainEv(ptr noundef nonnull align 1 dereferenceable(2) %5), !noalias !2995
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21, !noalias !2995
  br i1 %i.gk, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %_ZNK4CGAL20CommonKernelFunctors15Is_degenerate_3INS_16Simple_cartesianIdEEEclERKNS_9Segment_3IS3_EE.exit.i97
  store <2 x double> %i.n, ptr %0, align 8
  %.sroa.9.0..sroa_idx117 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.q, ptr %.sroa.9.0..sroa_idx117, align 8
  br label %_ZN4CGAL20CommonKernelFunctors27Construct_projected_point_3INS_16Simple_cartesianIdEEEclERKNS_9Segment_3IS3_EERKNS_7Point_3IS3_EERKS3_.exit

bb.aj:                                            ; preds = %_ZNK4CGAL20CommonKernelFunctors15Is_degenerate_3INS_16Simple_cartesianIdEEEclERKNS_9Segment_3IS3_EE.exit.i97
  %i.gl = load double, ptr %3, align 8, !tbaa !193, !noalias !2996 ; 2 uses
  %i.gm = fsub double %i.gl, %i.p
  %i.gn = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.go = load double, ptr %i.gn, align 8, !tbaa !193, !noalias !2996 ; 2 uses
  %i.gp = fsub double %i.go, %i.o
  %i.gq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !193, !noalias !2996 ; 2 uses
  %i.gs = fsub double %i.gr, %i.q
  %i.gt = fmul double %i.ay, %i.gp
  %i.gu = call double @llvm.fmuladd.f64(double %i.az, double %i.gm, double %i.gt)
  %i.gv = call double @llvm.fmuladd.f64(double %i.ba, double %i.gs, double %i.gu) ; 2 uses
  %i.gw = fcmp ugt double %i.gv, 0.000000e+00
  br i1 %i.gw, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store <2 x double> %i.n, ptr %0, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.q, ptr %.sroa.9.0..sroa_idx, align 8
  br label %_ZN4CGAL20CommonKernelFunctors27Construct_projected_point_3INS_16Simple_cartesianIdEEEclERKNS_9Segment_3IS3_EERKNS_7Point_3IS3_EERKS3_.exit

bb.al:                                            ; preds = %bb.aj
  %i.gx = fsub double %i.gl, %i.k
  %i.gy = fsub double %i.go, %i.j
  %i.gz = fsub double %i.gr, %i.m
  %i.ha = fmul double %i.ay, %i.gy
  %i.hb = call double @llvm.fmuladd.f64(double %i.az, double %i.gx, double %i.ha)
  %i.hc = call noundef double @llvm.fmuladd.f64(double %i.ba, double %i.gz, double %i.hb)
  %i.hd = fcmp ult double %i.hc, 0.000000e+00
  br i1 %i.hd, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  store <2 x double> %i.i, ptr %0, align 8
  %.sroa.16.24..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.m, ptr %.sroa.16.24..sroa_idx, align 8
  br label %_ZN4CGAL20CommonKernelFunctors27Construct_projected_point_3INS_16Simple_cartesianIdEEEclERKNS_9Segment_3IS3_EERKNS_7Point_3IS3_EERKS3_.exit

bb.an:                                            ; preds = %bb.al
  %i.he = fmul double %i.ay, %i.ay
  %i.hf = call double @llvm.fmuladd.f64(double %i.az, double %i.az, double %i.he)
  %i.hg = call double @llvm.fmuladd.f64(double %i.ba, double %i.ba, double %i.hf)
  %i.hh = fdiv double %i.gv, %i.hg                ; 2 uses
  %i.hi = call double @llvm.fmuladd.f64(double %i.hh, double %i.ba, double %i.q)
  %i.hj = insertelement <2 x double> poison, double %i.hh, i64 0
  %i.hk = shufflevector <2 x double> %i.hj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hk, <2 x double> %i.ax, <2 x double> %i.n)
  store <2 x double> %i.hl, ptr %0, align 8, !alias.scope !2997
  %.sroa.5.0..sroa_idx.i.i24.i100 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.hi, ptr %.sroa.5.0..sroa_idx.i.i24.i100, align 8, !alias.scope !2997
  br label %_ZN4CGAL20CommonKernelFunctors27Construct_projected_point_3INS_16Simple_cartesianIdEEEclERKNS_9Segment_3IS3_EERKNS_7Point_3IS3_EERKS3_.exit

_ZNK4CGAL20CommonKernelFunctors15Is_degenerate_3INS_16Simple_cartesianIdEEEclERKNS_7Plane_3IS3_EE.exit.thread: ; preds = %bb.a
  %i.hm = fneg double %i.al
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2998)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2999)
  %i.hn = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ho = load double, ptr %i.hn, align 8, !tbaa !193, !noalias !3000 ; 2 uses
  %i.hp = fmul double %i.ao, %i.ao
  %i.hq = tail call double @llvm.fmuladd.f64(double %i.am, double %i.am, double %i.hp)
  %i.hr = tail call double @llvm.fmuladd.f64(double %i.al, double %i.al, double %i.hq)
  %i.hs = load <2 x double>, ptr %3, align 8, !tbaa !193, !noalias !3000 ; 3 uses
  %i.ht = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hu = fneg <2 x double> %i.i
  %i.hv = shufflevector <2 x double> %i.hs, <2 x double> %i.hu, <2 x i32> <i32 3, i32 1>
  %i.hw = fmul <2 x double> %i.ht, %i.hv
  %i.hx = fneg <2 x double> %i.ag
  %i.hy = shufflevector <2 x double> %i.hx, <2 x double> %i.ag, <2 x i32> <i32 0, i32 2>
  %i.hz = shufflevector <2 x double> %i.i, <2 x double> %i.hs, <2 x i32> <i32 0, i32 2>
  %i.ia = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hy, <2 x double> %i.hz, <2 x double> %i.hw)
  %i.ib = insertelement <2 x double> poison, double %i.hm, i64 0
  %i.ic = insertelement <2 x double> %i.ib, double %i.al, i64 1
  %i.id = insertelement <2 x double> %i.x, double %i.ho, i64 1
  %i.ie = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ic, <2 x double> %i.id, <2 x double> %i.ia) ; 2 uses
  %shift = shufflevector <2 x double> %i.ie, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop219 = fadd <2 x double> %i.ie, %shift
  %i.if = extractelement <2 x double> %foldExtExtBinop219, i64 0
  %i.ig = fneg double %i.if
  %i.ih = fdiv double %i.ig, %i.hr                ; 2 uses
  %i.ii = insertelement <2 x double> poison, double %i.ih, i64 0
  %i.ij = shufflevector <2 x double> %i.ii, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ik = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ij, <2 x double> %i.ag, <2 x double> %i.hs)
  %i.il = tail call double @llvm.fmuladd.f64(double %i.ih, double %i.al, double %i.ho)
  store <2 x double> %i.ik, ptr %9, align 16, !alias.scope !3001
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %9, i64 16
  store double %i.il, ptr %.sroa.5.0..sroa_idx.i.i, align 16, !alias.scope !3001
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  store double %i.am, ptr %11, align 8, !alias.scope !3002
  %.sroa.4.0..sroa_idx.i.i107 = getelementptr inbounds nuw i8, ptr %11, i64 8
  store double %i.ao, ptr %.sroa.4.0..sroa_idx.i.i107, align 8, !alias.scope !3002
  %.sroa.5.0..sroa_idx.i.i108 = getelementptr inbounds nuw i8, ptr %11, i64 16
  store double %i.al, ptr %.sroa.5.0..sroa_idx.i.i108, align 8, !tbaa !127, !alias.scope !3002
  %i.im = call noundef zeroext i1 @_ZN4CGAL20CommonKernelFunctors27Construct_projected_point_3INS_16Simple_cartesianIdEEE20is_inside_triangle_3ERKNS_7Point_3IS3_EERKNS_10Triangle_3IS3_EERKNS_8Vector_3IS3_EERS6_RKS3_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %. = select i1 %i.im, ptr %9, ptr %10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %., i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %_ZN4CGAL20CommonKernelFunctors27Construct_projected_point_3INS_16Simple_cartesianIdEEEclERKNS_9Segment_3IS3_EERKNS_7Point_3IS3_EERKS3_.exit

_ZN4CGAL20CommonKernelFunctors27Construct_projected_point_3INS_16Simple_cartesianIdEEEclERKNS_9Segment_3IS3_EERKNS_7Point_3IS3_EERKS3_.exit: ; preds = %bb.g, %bb.i, %bb.k, %bb.l, %bb.p, %bb.r, %bb.t, %bb.u, %bb.z, %bb.ab, %bb.ad, %bb.ae, %bb.ai, %bb.ak, %bb.am, %bb.an, %_ZNK4CGAL20CommonKernelFunctors15Is_degenerate_3INS_16Simple_cartesianIdEEEclERKNS_7Plane_3IS3_EE.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4CGAL20CommonKernelFunctors27Construct_projected_point_3INS_16Simple_cartesianIdEEE20is_inside_triangle_3ERKNS_7Point_3IS3_EERKNS_10Triangle_3IS3_EERKNS_8Vector_3IS3_EERS6_RKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 1 dereferenceable(1) %5) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.d = load <2 x double>, ptr %2, align 8, !tbaa !193, !noalias !3015 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.f = load double, ptr %i.e, align 8, !tbaa !193, !noalias !3015 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load double, ptr %i.g, align 8, !tbaa !193, !noalias !3015 ; 7 uses
  %i.i = fsub double %i.f, %i.h                   ; 6 uses
  %i.j = load <2 x double>, ptr %i.a, align 8, !tbaa !193, !noalias !3015 ; 7 uses
  %i.k = load double, ptr %i.c, align 8, !tbaa !193, !noalias !3015 ; 5 uses
  %i.l = extractelement <2 x double> %i.d, i64 0  ; 2 uses
  %i.m = extractelement <2 x double> %i.d, i64 1  ; 3 uses
  %i.n = insertelement <2 x double> %i.j, double %i.k, i64 1 ; 3 uses
  %i.o = fsub <2 x double> %i.n, %i.d             ; 3 uses
  %6 = load <3 x double>, ptr %1, align 8, !tbaa !193, !noalias !3016 ; 5 uses
  %i.p = load double, ptr %1, align 8, !tbaa !193, !noalias !3016 ; 6 uses
  %7 = fsub double %i.p, %i.l                     ; 4 uses
  %8 = extractelement <3 x double> %6, i64 1      ; 6 uses
  %i.q = fsub double %8, %i.m                     ; 4 uses
  %9 = extractelement <3 x double> %6, i64 2      ; 6 uses
  %i.r = fsub double %9, %i.h                     ; 4 uses
  %i.s = fneg double %i.q
  %i.t = fmul double %i.i, %i.s
  %i.u = extractelement <2 x double> %i.o, i64 1  ; 5 uses
  %i.v = tail call double @llvm.fmuladd.f64(double %i.u, double %i.r, double %i.t)
  %i.w = fneg double %i.r
  %i.x = extractelement <2 x double> %i.o, i64 0  ; 5 uses
  %i.y = fmul double %i.x, %i.w
  %i.z = tail call double @llvm.fmuladd.f64(double %i.i, double %7, double %i.y)
  %i.aa = fneg double %7
  %i.ab = fmul double %i.u, %i.aa
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.x, double %i.q, double %i.ab)
  %i.ad = load double, ptr %3, align 8, !tbaa !193 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.af = load double, ptr %i.ae, align 8, !tbaa !193 ; 3 uses
  %i.ag = fmul double %i.af, %i.z
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.v, double %i.ad, double %i.ag)
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !193 ; 3 uses
  %i.ak = tail call noundef double @llvm.fmuladd.f64(double %i.ac, double %i.aj, double %i.ah)
  %i.al = fcmp olt double %i.ak, 0.000000e+00     ; 2 uses
  br i1 %i.al, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.am = fmul double %i.u, %i.q
  %i.an = tail call double @llvm.fmuladd.f64(double %7, double %i.x, double %i.am)
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.r, double %i.i, double %i.an) ; 2 uses
  %i.ap = fcmp ult double %i.ao, 0.000000e+00
  br i1 %i.ap, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aq = extractelement <2 x double> %i.j, i64 0
  %i.ar = fsub double %i.p, %i.aq
  %i.as = fsub double %8, %i.k
  %i.at = fsub double %9, %i.f
  %foldExtExtBinop = fsub <2 x double> %i.d, %i.j
  %i.au = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.av = fsub double %i.m, %i.k
  %i.aw = fsub double %i.h, %i.f
  %i.ax = fmul double %i.av, %i.as
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.ar, double %i.au, double %i.ax)
  %i.az = tail call noundef double @llvm.fmuladd.f64(double %i.at, double %i.aw, double %i.ay)
  %i.ba = fcmp ult double %i.az, 0.000000e+00
  br i1 %i.ba, label %bb.d, label %_ZN4CGAL20CommonKernelFunctors27Construct_projected_point_3INS_16Simple_cartesianIdEEE24is_inside_triangle_3_auxERKNS_8Vector_3IS3_EERKNS_7Point_3IS3_EESC_SC_RSA_RbRKS3_.exit

_ZN4CGAL20CommonKernelFunctors27Construct_projected_point_3INS_16Simple_cartesianIdEEE24is_inside_triangle_3_auxERKNS_8Vector_3IS3_EERKNS_7Point_3IS3_EESC_SC_RSA_RbRKS3_.exit: ; preds = %bb.c
  %i.bb = fmul double %i.u, %i.u
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.x, double %i.x, double %i.bb)
  %i.bd = tail call double @llvm.fmuladd.f64(double %i.i, double %i.i, double %i.bc)
  %i.be = fdiv double %i.ao, %i.bd                ; 2 uses
  %i.bf = tail call double @llvm.fmuladd.f64(double %i.be, double %i.i, double %i.h)
  %i.bg = insertelement <2 x double> poison, double %i.be, i64 0
  %i.bh = shufflevector <2 x double> %i.bg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bh, <2 x double> %i.o, <2 x double> %i.d)
  store <2 x double> %i.bi, ptr %4, align 8
  %.sroa.540.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store double %i.bf, ptr %.sroa.540.0..sroa_idx.i, align 8
  br label %bb.k

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bk = load <2 x double>, ptr %i.b, align 8, !tbaa !193, !noalias !3017 ; 6 uses
  %i.bl = load double, ptr %i.bj, align 8, !tbaa !193, !noalias !3017 ; 4 uses
  %i.bm = extractelement <2 x double> %i.j, i64 0
  %i.bn = insertelement <2 x double> %i.bk, double %i.bl, i64 1 ; 4 uses
  %i.bo = fsub <2 x double> %i.bn, %i.n           ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !193, !noalias !3017 ; 8 uses
  %i.br = fsub double %i.bq, %i.f                 ; 6 uses
  %i.bs = fsub double %i.p, %i.bm                 ; 3 uses
  %i.bt = fsub double %8, %i.k                    ; 3 uses
  %i.bu = fsub double %9, %i.f                    ; 3 uses
  %i.bv = fneg double %i.bt
  %i.bw = fmul double %i.br, %i.bv
  %i.bx = extractelement <2 x double> %i.bo, i64 1 ; 5 uses
  %i.by = tail call double @llvm.fmuladd.f64(double %i.bx, double %i.bu, double %i.bw)
  %i.bz = fneg double %i.bu
  %i.ca = extractelement <2 x double> %i.bo, i64 0 ; 5 uses
  %i.cb = fmul double %i.ca, %i.bz
  %i.cc = tail call double @llvm.fmuladd.f64(double %i.br, double %i.bs, double %i.cb)
  %i.cd = fneg double %i.bs
  %i.ce = fmul double %i.bx, %i.cd
  %i.cf = tail call double @llvm.fmuladd.f64(double %i.ca, double %i.bt, double %i.ce)
  %i.cg = fmul double %i.af, %i.cc
  %i.ch = tail call double @llvm.fmuladd.f64(double %i.by, double %i.ad, double %i.cg)
  %i.ci = tail call noundef double @llvm.fmuladd.f64(double %i.cf, double %i.aj, double %i.ch)
  %i.cj = fcmp olt double %i.ci, 0.000000e+00
  br i1 %i.cj, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ck = fmul double %i.bx, %i.bt
  %i.cl = tail call double @llvm.fmuladd.f64(double %i.bs, double %i.ca, double %i.ck)
  %i.cm = tail call double @llvm.fmuladd.f64(double %i.bu, double %i.br, double %i.cl) ; 2 uses
  %i.cn = fcmp ult double %i.cm, 0.000000e+00
  br i1 %i.cn, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.co = extractelement <2 x double> %i.bk, i64 0
  %i.cp = fsub double %i.p, %i.co
  %i.cq = fsub double %8, %i.bl
  %i.cr = fsub double %9, %i.bq
  %foldExtExtBinop56 = fsub <2 x double> %i.j, %i.bk
  %i.cs = extractelement <2 x double> %foldExtExtBinop56, i64 0
  %i.ct = fsub double %i.k, %i.bl
  %i.cu = fsub double %i.f, %i.bq
  %i.cv = fmul double %i.ct, %i.cq
  %i.cw = tail call double @llvm.fmuladd.f64(double %i.cp, double %i.cs, double %i.cv)
  %i.cx = tail call noundef double @llvm.fmuladd.f64(double %i.cr, double %i.cu, double %i.cw)
  %i.cy = fcmp ult double %i.cx, 0.000000e+00
  br i1 %i.cy, label %bb.g, label %_ZN4CGAL20CommonKernelFunctors27Construct_projected_point_3INS_16Simple_cartesianIdEEE24is_inside_triangle_3_auxERKNS_8Vector_3IS3_EERKNS_7Point_3IS3_EESC_SC_RSA_RbRKS3_.exit34

_ZN4CGAL20CommonKernelFunctors27Construct_projected_point_3INS_16Simple_cartesianIdEEE24is_inside_triangle_3_auxERKNS_8Vector_3IS3_EERKNS_7Point_3IS3_EESC_SC_RSA_RbRKS3_.exit34: ; preds = %bb.f
  %i.cz = fmul double %i.bx, %i.bx
  %i.da = tail call double @llvm.fmuladd.f64(double %i.ca, double %i.ca, double %i.cz)
  %i.db = tail call double @llvm.fmuladd.f64(double %i.br, double %i.br, double %i.da)
  %i.dc = fdiv double %i.cm, %i.db                ; 2 uses
  %i.dd = tail call double @llvm.fmuladd.f64(double %i.dc, double %i.br, double %i.f)
  %i.de = insertelement <2 x double> poison, double %i.dc, i64 0
  %i.df = shufflevector <2 x double> %i.de, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.df, <2 x double> %i.bo, <2 x double> %i.n)
  store <2 x double> %i.dg, ptr %4, align 8
  %.sroa.540.0..sroa_idx.i32 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store double %i.dd, ptr %.sroa.540.0..sroa_idx.i32, align 8
  br label %bb.k

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.e
  %.1.ph = phi i1 [ true, %bb.e ], [ true, %bb.f ], [ %i.al, %bb.d ]
  %i.dh = extractelement <2 x double> %i.bk, i64 0
  %i.di = fsub <2 x double> %i.d, %i.bn           ; 3 uses
  %i.dj = fsub double %i.h, %i.bq                 ; 6 uses
  %i.dk = fsub double %i.p, %i.dh                 ; 3 uses
  %i.dl = fsub double %8, %i.bl                   ; 3 uses
  %i.dm = fsub double %9, %i.bq                   ; 3 uses
  %i.dn = fneg double %i.dl
  %i.do = fmul double %i.dj, %i.dn
  %i.dp = extractelement <2 x double> %i.di, i64 1 ; 5 uses
  %i.dq = tail call double @llvm.fmuladd.f64(double %i.dp, double %i.dm, double %i.do)
  %i.dr = fneg double %i.dm
  %i.ds = extractelement <2 x double> %i.di, i64 0 ; 5 uses
  %i.dt = fmul double %i.ds, %i.dr
  %i.du = tail call double @llvm.fmuladd.f64(double %i.dj, double %i.dk, double %i.dt)
  %i.dv = fneg double %i.dk
  %i.dw = fmul double %i.dp, %i.dv
  %i.dx = tail call double @llvm.fmuladd.f64(double %i.ds, double %i.dl, double %i.dw)
  %i.dy = fmul double %i.af, %i.du
  %i.dz = tail call double @llvm.fmuladd.f64(double %i.dq, double %i.ad, double %i.dy)
  %i.ea = tail call noundef double @llvm.fmuladd.f64(double %i.dx, double %i.aj, double %i.dz)
  %i.eb = fcmp olt double %i.ea, 0.000000e+00
  br i1 %i.eb, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ec = fmul double %i.dp, %i.dl
  %i.ed = tail call double @llvm.fmuladd.f64(double %i.dk, double %i.ds, double %i.ec)
  %i.ee = tail call double @llvm.fmuladd.f64(double %i.dm, double %i.dj, double %i.ed) ; 2 uses
  %i.ef = fcmp ult double %i.ee, 0.000000e+00
  br i1 %i.ef, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.eg = fsub <2 x double> %i.bn, %i.d           ; 2 uses
  %i.eh = fsub double %i.bq, %i.h
  %i.ei = extractelement <2 x double> %i.eg, i64 1
  %i.ej = fmul double %i.ei, %i.q
  %i.ek = extractelement <2 x double> %i.eg, i64 0
  %i.el = tail call double @llvm.fmuladd.f64(double %7, double %i.ek, double %i.ej)
  %i.em = tail call noundef double @llvm.fmuladd.f64(double %i.r, double %i.eh, double %i.el)
  %i.en = fcmp ult double %i.em, 0.000000e+00
  br i1 %i.en, label %.thread, label %_ZN4CGAL20CommonKernelFunctors27Construct_projected_point_3INS_16Simple_cartesianIdEEE24is_inside_triangle_3_auxERKNS_8Vector_3IS3_EERKNS_7Point_3IS3_EESC_SC_RSA_RbRKS3_.exit39

_ZN4CGAL20CommonKernelFunctors27Construct_projected_point_3INS_16Simple_cartesianIdEEE24is_inside_triangle_3_auxERKNS_8Vector_3IS3_EERKNS_7Point_3IS3_EESC_SC_RSA_RbRKS3_.exit39: ; preds = %bb.i
  %i.eo = fmul double %i.dp, %i.dp
  %i.ep = tail call double @llvm.fmuladd.f64(double %i.ds, double %i.ds, double %i.eo)
  %i.eq = tail call double @llvm.fmuladd.f64(double %i.dj, double %i.dj, double %i.ep)
  %i.er = fdiv double %i.ee, %i.eq                ; 2 uses
  %i.es = tail call double @llvm.fmuladd.f64(double %i.er, double %i.dj, double %i.bq)
  %i.et = insertelement <2 x double> poison, double %i.er, i64 0
  %i.eu = shufflevector <2 x double> %i.et, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ev = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eu, <2 x double> %i.di, <2 x double> %i.bn)
  store <2 x double> %i.ev, ptr %4, align 8
  %.sroa.540.0..sroa_idx.i37 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store double %i.es, ptr %.sroa.540.0..sroa_idx.i37, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  br i1 %.1.ph, label %.thread, label %bb.k

.thread:                                          ; preds = %bb.i, %bb.h, %bb.j
  %i.ew = fsub double %i.l, %i.p                  ; 2 uses
  %i.ex = fsub double %i.m, %8                    ; 2 uses
  %i.ey = fsub double %i.h, %9                    ; 2 uses
  %i.ez = fmul double %i.ex, %i.ex
  %i.fa = tail call double @llvm.fmuladd.f64(double %i.ew, double %i.ew, double %i.ez)
  %i.fb = tail call noundef double @llvm.fmuladd.f64(double %i.ey, double %i.ey, double %i.fa)
  %i.fc = shufflevector <2 x double> %i.j, <2 x double> %i.bk, <2 x i32> <i32 0, i32 2>
  %i.fd = shufflevector <3 x double> %6, <3 x double> poison, <2 x i32> zeroinitializer
  %i.fe = fsub <2 x double> %i.fc, %i.fd          ; 2 uses
  %i.ff = shufflevector <2 x double> %i.j, <2 x double> %i.bk, <2 x i32> <i32 1, i32 3>
  %10 = shufflevector <3 x double> %6, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fg = fsub <2 x double> %i.ff, %10            ; 2 uses
  %i.fh = insertelement <2 x double> poison, double %i.f, i64 0
  %i.fi = insertelement <2 x double> %i.fh, double %i.bq, i64 1
  %11 = shufflevector <3 x double> %6, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.fj = fsub <2 x double> %i.fi, %11            ; 2 uses
  %i.fk = fmul <2 x double> %i.fg, %i.fg
  %i.fl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fe, <2 x double> %i.fe, <2 x double> %i.fk)
  %i.fm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fj, <2 x double> %i.fj, <2 x double> %i.fl) ; 3 uses
  %i.fn = insertelement <2 x double> poison, double %i.fb, i64 0
  %i.fo = shufflevector <2 x double> %i.fn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fp = fcmp ult <2 x double> %i.fm, %i.fo
  %i.fq = bitcast <2 x i1> %i.fp to i2
  %or.cond.i.not = icmp eq i2 %i.fq, 0
  %i.fr = extractelement <2 x double> %i.fm, i64 0
  %i.fs = extractelement <2 x double> %i.fm, i64 1
  %i.ft = fcmp ult double %i.fs, %i.fr
  %..i = select i1 %i.ft, ptr %i.b, ptr %i.a
  %.sink.i = select i1 %or.cond.i.not, ptr %2, ptr %..i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %.sink.i, i64 24, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %_ZN4CGAL20CommonKernelFunctors27Construct_projected_point_3INS_16Simple_cartesianIdEEE24is_inside_triangle_3_auxERKNS_8Vector_3IS3_EERKNS_7Point_3IS3_EESC_SC_RSA_RbRKS3_.exit39, %_ZN4CGAL20CommonKernelFunctors27Construct_projected_point_3INS_16Simple_cartesianIdEEE24is_inside_triangle_3_auxERKNS_8Vector_3IS3_EERKNS_7Point_3IS3_EESC_SC_RSA_RbRKS3_.exit34, %_ZN4CGAL20CommonKernelFunctors27Construct_projected_point_3INS_16Simple_cartesianIdEEE24is_inside_triangle_3_auxERKNS_8Vector_3IS3_EERKNS_7Point_3IS3_EESC_SC_RSA_RbRKS3_.exit, %bb.j, %.thread
  %.0 = phi i1 [ false, %_ZN4CGAL20CommonKernelFunctors27Construct_projected_point_3INS_16Simple_cartesianIdEEE24is_inside_triangle_3_auxERKNS_8Vector_3IS3_EERKNS_7Point_3IS3_EESC_SC_RSA_RbRKS3_.exit ], [ false, %.thread ], [ false, %_ZN4CGAL20CommonKernelFunctors27Construct_projected_point_3INS_16Simple_cartesianIdEEE24is_inside_triangle_3_auxERKNS_8Vector_3IS3_EERKNS_7Point_3IS3_EESC_SC_RSA_RbRKS3_.exit39 ], [ false, %_ZN4CGAL20CommonKernelFunctors27Construct_projected_point_3INS_16Simple_cartesianIdEEE24is_inside_triangle_3_auxERKNS_8Vector_3IS3_EERKNS_7Point_3IS3_EESC_SC_RSA_RbRKS3_.exit34 ], [ true, %bb.j ]
  ret i1 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #24

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4CGAL9AABB_treeINS_13AABB_traits_3INS_16Simple_cartesianIdEENS_25AABB_triangle_primitive_3IS3_N9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS3_EESt6vectorIS8_SaIS8_EEEESt17integral_constantIbLb0EEEENS_7DefaultEEEE12custom_buildINSI_12Compute_bboxENSI_16Split_primitivesEEEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(107) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !163  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !164  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.d, %i.b
  br i1 %.not.i.i.i, label %_ZN4CGAL9AABB_treeINS_13AABB_traits_3INS_16Simple_cartesianIdEENS_25AABB_triangle_primitive_3IS3_N9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS3_EESt6vectorIS8_SaIS8_EEEESt17integral_constantIbLb0EEEENS_7DefaultEEEE11clear_nodesEv.exit, label %_ZSt8_DestroyIPN4CGAL9AABB_nodeINS0_13AABB_traits_3INS0_16Simple_cartesianIdEENS0_25AABB_triangle_primitive_3IS4_N9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEESt17integral_constantIbLb0EEEENS0_7DefaultEEEEESK_EvT_SM_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN4CGAL9AABB_nodeINS0_13AABB_traits_3INS0_16Simple_cartesianIdEENS0_25AABB_triangle_primitive_3IS4_N9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEESt17integral_constantIbLb0EEEENS0_7DefaultEEEEESK_EvT_SM_RSaIT0_E.exit.i.i.i: ; preds = %bb.a
  store ptr %i.b, ptr %i.c, align 8, !tbaa !164
  br label %_ZN4CGAL9AABB_treeINS_13AABB_traits_3INS_16Simple_cartesianIdEENS_25AABB_triangle_primitive_3IS3_N9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS3_EESt6vectorIS8_SaIS8_EEEESt17integral_constantIbLb0EEEENS_7DefaultEEEE11clear_nodesEv.exit

_ZN4CGAL9AABB_treeINS_13AABB_traits_3INS_16Simple_cartesianIdEENS_25AABB_triangle_primitive_3IS3_N9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS3_EESt6vectorIS8_SaIS8_EEEESt17integral_constantIbLb0EEEENS_7DefaultEEEE11clear_nodesEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN4CGAL9AABB_nodeINS0_13AABB_traits_3INS0_16Simple_cartesianIdEENS0_25AABB_triangle_primitive_3IS4_N9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEESt17integral_constantIbLb0EEEENS0_7DefaultEEEEESK_EvT_SM_RSaIT0_E.exit.i.i.i
  %i.e = phi ptr [ %i.d, %bb.a ], [ %i.b, %_ZSt8_DestroyIPN4CGAL9AABB_nodeINS0_13AABB_traits_3INS0_16Simple_cartesianIdEENS0_25AABB_triangle_primitive_3IS4_N9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEESt17integral_constantIbLb0EEEENS0_7DefaultEEEEESK_EvT_SM_RSaIT0_E.exit.i.i.i ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !168
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !167
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 4                   ; 2 uses
  %i.n = icmp ugt i64 %i.m, 1
  br i1 %i.n, label %bb.b, label %bb.h

bb.b:                                             ; preds = %_ZN4CGAL9AABB_treeINS_13AABB_traits_3INS_16Simple_cartesianIdEENS_25AABB_triangle_primitive_3IS3_N9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS3_EESt6vectorIS8_SaIS8_EEEESt17integral_constantIbLb0EEEENS_7DefaultEEEE11clear_nodesEv.exit
  %i.o = add nsw i64 %i.m, -1                     ; 4 uses
  %i.p = icmp ugt i64 %i.o, 144115188075855871
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.127) #37
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !512  ; 2 uses
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 6
  %i.w = icmp ult i64 %i.v, %i.o
  br i1 %i.w, label %_ZNSt12_Vector_baseIN4CGAL9AABB_nodeINS0_13AABB_traits_3INS0_16Simple_cartesianIdEENS0_25AABB_triangle_primitive_3IS4_N9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEESt17integral_constantIbLb0EEEENS0_7DefaultEEEEESaISK_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN4CGAL9AABB_nodeINS0_13AABB_traits_3INS0_16Simple_cartesianIdEENS0_25AABB_triangle_primitive_3IS4_N9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3IS4_EES_IS9_SaIS9_EEEESt17integral_constantIbLb0EEEENS0_7DefaultEEEEESaISJ_EE7reserveEm.exit

_ZNSt12_Vector_baseIN4CGAL9AABB_nodeINS0_13AABB_traits_3INS0_16Simple_cartesianIdEENS0_25AABB_triangle_primitive_3IS4_N9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEESt17integral_constantIbLb0EEEENS0_7DefaultEEEEESaISK_EE11_M_allocateEm.exit.i: ; preds = %bb.d
  %i.x = ptrtoint ptr %i.e to i64
  %i.y = sub i64 %i.x, %i.t
  %i.z = shl nuw nsw i64 %i.o, 6
  %i.aa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #39 ; 4 uses
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !163 ; 5 uses
  %i.ac = load ptr, ptr %i.c, align 8, !tbaa !164 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ab, %i.ac
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN4CGAL9AABB_nodeINS0_13AABB_traits_3INS0_16Simple_cartesianIdEENS0_25AABB_triangle_primitive_3IS4_N9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3IS4_EES_IS9_SaIS9_EEEESt17integral_constantIbLb0EEEENS0_7DefaultEEEEESaISJ_EE11_S_relocateEPSJ_SM_SM_RSK_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseIN4CGAL9AABB_nodeINS0_13AABB_traits_3INS0_16Simple_cartesianIdEENS0_25AABB_triangle_primitive_3IS4_N9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEESt17integral_constantIbLb0EEEENS0_7DefaultEEEEESaISK_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i ], [ %i.aa, %_ZNSt12_Vector_baseIN4CGAL9AABB_nodeINS0_13AABB_traits_3INS0_16Simple_cartesianIdEENS0_25AABB_triangle_primitive_3IS4_N9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEESt17integral_constantIbLb0EEEENS0_7DefaultEEEEESaISK_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i ], [ %i.ab, %_ZNSt12_Vector_baseIN4CGAL9AABB_nodeINS0_13AABB_traits_3INS0_16Simple_cartesianIdEENS0_25AABB_triangle_primitive_3IS4_N9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEESt17integral_constantIbLb0EEEENS0_7DefaultEEEEESaISK_EE11_M_allocateEm.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.0911.i.i.i.i, i64 64, i1 false), !tbaa.struct !429, !alias.scope !3023
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 64 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 64
  %.not.i.i.i.i = icmp eq ptr %i.ad, %i.ac
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN4CGAL9AABB_nodeINS0_13AABB_traits_3INS0_16Simple_cartesianIdEENS0_25AABB_triangle_primitive_3IS4_N9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3IS4_EES_IS9_SaIS9_EEEESt17integral_constantIbLb0EEEENS0_7DefaultEEEEESaISJ_EE11_S_relocateEPSJ_SM_SM_RSK_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !54

_ZNSt6vectorIN4CGAL9AABB_nodeINS0_13AABB_traits_3INS0_16Simple_cartesianIdEENS0_25AABB_triangle_primitive_3IS4_N9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3IS4_EES_IS9_SaIS9_EEEESt17integral_constantIbLb0EEEENS0_7DefaultEEEEESaISJ_EE11_S_relocateEPSJ_SM_SM_RSK_.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt12_Vector_baseIN4CGAL9AABB_nodeINS0_13AABB_traits_3INS0_16Simple_cartesianIdEENS0_25AABB_triangle_primitive_3IS4_N9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEESt17integral_constantIbLb0EEEENS0_7DefaultEEEEESaISK_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.ab, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN4CGAL9AABB_nodeINS0_13AABB_traits_3INS0_16Simple_cartesianIdEENS0_25AABB_triangle_primitive_3IS4_N9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEESt17integral_constantIbLb0EEEENS0_7DefaultEEEEESaISK_EE13_M_deallocateEPSK_m.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4CGAL9AABB_nodeINS0_13AABB_traits_3INS0_16Simple_cartesianIdEENS0_25AABB_triangle_primitive_3IS4_N9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3IS4_EES_IS9_SaIS9_EEEESt17integral_constantIbLb0EEEENS0_7DefaultEEEEESaISJ_EE11_S_relocateEPSJ_SM_SM_RSK_.exit.i
  %i.af = load ptr, ptr %i.q, align 8, !tbaa !512
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ab to i64
  %i.ai = sub i64 %i.ag, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ai) #36
  br label %_ZNSt12_Vector_baseIN4CGAL9AABB_nodeINS0_13AABB_traits_3INS0_16Simple_cartesianIdEENS0_25AABB_triangle_primitive_3IS4_N9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEESt17integral_constantIbLb0EEEENS0_7DefaultEEEEESaISK_EE13_M_deallocateEPSK_m.exit.i

_ZNSt12_Vector_baseIN4CGAL9AABB_nodeINS0_13AABB_traits_3INS0_16Simple_cartesianIdEENS0_25AABB_triangle_primitive_3IS4_N9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEESt17integral_constantIbLb0EEEENS0_7DefaultEEEEESaISK_EE13_M_deallocateEPSK_m.exit.i: ; preds = %bb.e, %_ZNSt6vectorIN4CGAL9AABB_nodeINS0_13AABB_traits_3INS0_16Simple_cartesianIdEENS0_25AABB_triangle_primitive_3IS4_N9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3IS4_EES_IS9_SaIS9_EEEESt17integral_constantIbLb0EEEENS0_7DefaultEEEEESaISJ_EE11_S_relocateEPSJ_SM_SM_RSK_.exit.i
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !163
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y ; 2 uses
  store ptr %i.aj, ptr %i.c, align 8, !tbaa !164
  %i.ak = getelementptr inbounds nuw [64 x i8], ptr %i.aa, i64 %i.o ; 2 uses
  store ptr %i.ak, ptr %i.q, align 8, !tbaa !512
  br label %_ZNSt6vectorIN4CGAL9AABB_nodeINS0_13AABB_traits_3INS0_16Simple_cartesianIdEENS0_25AABB_triangle_primitive_3IS4_N9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3IS4_EES_IS9_SaIS9_EEEESt17integral_constantIbLb0EEEENS0_7DefaultEEEEESaISJ_EE7reserveEm.exit

_ZNSt6vectorIN4CGAL9AABB_nodeINS0_13AABB_traits_3INS0_16Simple_cartesianIdEENS0_25AABB_triangle_primitive_3IS4_N9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3IS4_EES_IS9_SaIS9_EEEESt17integral_constantIbLb0EEEENS0_7DefaultEEEEESaISJ_EE7reserveEm.exit: ; preds = %bb.d, %_ZNSt12_Vector_baseIN4CGAL9AABB_nodeINS0_13AABB_traits_3INS0_16Simple_cartesianIdEENS0_25AABB_triangle_primitive_3IS4_N9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEESt17integral_constantIbLb0EEEENS0_7DefaultEEEEESaISK_EE13_M_deallocateEPSK_m.exit.i
  %i.al = phi ptr [ %i.r, %bb.d ], [ %i.ak, %_ZNSt12_Vector_baseIN4CGAL9AABB_nodeINS0_13AABB_traits_3INS0_16Simple_cartesianIdEENS0_25AABB_triangle_primitive_3IS4_N9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEESt17integral_constantIbLb0EEEENS0_7DefaultEEEEESaISK_EE13_M_deallocateEPSK_m.exit.i ]
  %i.am = phi ptr [ %i.e, %bb.d ], [ %i.aj, %_ZNSt12_Vector_baseIN4CGAL9AABB_nodeINS0_13AABB_traits_3INS0_16Simple_cartesianIdEENS0_25AABB_triangle_primitive_3IS4_N9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEESt17integral_constantIbLb0EEEENS0_7DefaultEEEEESaISK_EE13_M_deallocateEPSK_m.exit.i ] ; 6 uses
  %.not.i.i = icmp eq ptr %i.am, %i.al
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN4CGAL9AABB_nodeINS0_13AABB_traits_3INS0_16Simple_cartesianIdEENS0_25AABB_triangle_primitive_3IS4_N9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3IS4_EES_IS9_SaIS9_EEEESt17integral_constantIbLb0EEEENS0_7DefaultEEEEESaISJ_EE7reserveEm.exit
  store <2 x double> splat (double +inf), ptr %i.am, align 8, !tbaa !193, !alias.scope !3024
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store <2 x double> <double +inf, double -inf>, ptr %i.an, align 8, !tbaa !193, !alias.scope !3024
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  store <2 x double> splat (double -inf), ptr %i.ao, align 8, !tbaa !193, !alias.scope !3024
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false)
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !164
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 64 ; 2 uses
  store ptr %i.ar, ptr %i.c, align 8, !tbaa !164
  br label %_ZN4CGAL9AABB_treeINS_13AABB_traits_3INS_16Simple_cartesianIdEENS_25AABB_triangle_primitive_3IS3_N9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS3_EESt6vectorIS8_SaIS8_EEEESt17integral_constantIbLb0EEEENS_7DefaultEEEE8new_nodeEv.exit

bb.g:                                             ; preds = %_ZNSt6vectorIN4CGAL9AABB_nodeINS0_13AABB_traits_3INS0_16Simple_cartesianIdEENS0_25AABB_triangle_primitive_3IS4_N9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3IS4_EES_IS9_SaIS9_EEEESt17integral_constantIbLb0EEEENS0_7DefaultEEEEESaISJ_EE7reserveEm.exit
  tail call void @_ZNSt6vectorIN4CGAL9AABB_nodeINS0_13AABB_traits_3INS0_16Simple_cartesianIdEENS0_25AABB_triangle_primitive_3IS4_N9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3IS4_EES_IS9_SaIS9_EEEESt17integral_constantIbLb0EEEENS0_7DefaultEEEEESaISJ_EE17_M_realloc_insertIJEEEvNS7_IPSJ_SL_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %i.am)
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !513
  br label %_ZN4CGAL9AABB_treeINS_13AABB_traits_3INS_16Simple_cartesianIdEENS_25AABB_triangle_primitive_3IS3_N9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS3_EESt6vectorIS8_SaIS8_EEEESt17integral_constantIbLb0EEEENS_7DefaultEEEE8new_nodeEv.exit

_ZN4CGAL9AABB_treeINS_13AABB_traits_3INS_16Simple_cartesianIdEENS_25AABB_triangle_primitive_3IS3_N9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS3_EESt6vectorIS8_SaIS8_EEEESt17integral_constantIbLb0EEEENS_7DefaultEEEE8new_nodeEv.exit: ; preds = %bb.f, %bb.g
  %i.as = phi ptr [ %i.ar, %bb.f ], [ %.pre.i, %bb.g ]
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -64
  %i.au = load ptr, ptr %i.f, align 8, !tbaa !188 ; 2 uses
  %i.av = load ptr, ptr %i.g, align 8, !tbaa !188 ; 2 uses
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = ashr exact i64 %i.ay, 4
  tail call void @_ZN4CGAL9AABB_treeINS_13AABB_traits_3INS_16Simple_cartesianIdEENS_25AABB_triangle_primitive_3IS3_N9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS3_EESt6vectorIS8_SaIS8_EEEESt17integral_constantIbLb0EEEENS_7DefaultEEEE6expandINS6_IPSG_SA_ISG_SaISG_EEEENSI_12Compute_bboxENSI_16Split_primitivesEEEvRNS_9AABB_nodeISI_EET_SU_mRKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(107) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.at, ptr %i.au, ptr %i.av, i64 noundef %i.az, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %bb.h

bb.h:                                             ; preds = %_ZN4CGAL9AABB_treeINS_13AABB_traits_3INS_16Simple_cartesianIdEENS_25AABB_triangle_primitive_3IS3_N9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS3_EESt6vectorIS8_SaIS8_EEEESt17integral_constantIbLb0EEEENS_7DefaultEEEE8new_nodeEv.exit, %_ZN4CGAL9AABB_treeINS_13AABB_traits_3INS_16Simple_cartesianIdEENS_25AABB_triangle_primitive_3IS3_N9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS3_EESt6vectorIS8_SaIS8_EEEESt17integral_constantIbLb0EEEENS_7DefaultEEEE11clear_nodesEv.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 105
  store atomic i8 0, ptr %i.ba release, align 1
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4CGAL9AABB_treeINS_13AABB_traits_3INS_16Simple_cartesianIdEENS_25AABB_triangle_primitive_3IS3_N9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS3_EESt6vectorIS8_SaIS8_EEEESt17integral_constantIbLb0EEEENS_7DefaultEEEE6expandINS6_IPSG_SA_ISG_SaISG_EEEENSI_12Compute_bboxENSI_16Split_primitivesEEEvRNS_9AABB_nodeISI_EET_SU_mRKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(107) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr %2, ptr %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %7 = alloca %"class.CGAL::Bbox_3", align 8      ; 4 uses
  %8 = alloca %"class.CGAL::Bbox_3", align 8      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  call void @_ZNK4CGAL13AABB_traits_3INS_16Simple_cartesianIdEENS_25AABB_triangle_primitive_3IS2_N9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS2_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEENS_7DefaultEE12Compute_bboxclINS5_IPSF_S9_ISF_SaISF_EEEEEENS_6Bbox_3ET_SP_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Bbox_3") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr %2, ptr %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(48) %8, i64 48, i1 false), !tbaa.struct !406
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @_ZNK4CGAL13AABB_traits_3INS_16Simple_cartesianIdEENS_25AABB_triangle_primitive_3IS2_N9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS2_EESt6vectorIS7_SaIS7_EEEESt17integral_constantIbLb0EEEENS_7DefaultEE16Split_primitivesclINS5_IPSF_S9_ISF_SaISF_EEEEEEvT_SO_RKNS_6Bbox_3E(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr %2, ptr %3, ptr noundef nonnull align 8 dereferenceable(48) %1)
  switch i64 %4, label %bb.f [
    i64 2, label %bb.b
    i64 3, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %2, ptr %i.b, align 8, !tbaa !510
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr %i.a, ptr %i.c, align 8, !tbaa !511
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !164  ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !512
  %.not.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store <2 x double> splat (double +inf), ptr %i.e, align 8, !tbaa !193, !alias.scope !3031
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store <2 x double> <double +inf, double -inf>, ptr %i.h, align 8, !tbaa !193, !alias.scope !3031
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store <2 x double> splat (double -inf), ptr %i.i, align 8, !tbaa !193, !alias.scope !3031
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !164
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64 ; 2 uses
  store ptr %i.l, ptr %i.d, align 8, !tbaa !164
  br label %_ZN4CGAL9AABB_treeINS_13AABB_traits_3INS_16Simple_cartesianIdEENS_25AABB_triangle_primitive_3IS3_N9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS3_EESt6vectorIS8_SaIS8_EEEESt17integral_constantIbLb0EEEENS_7DefaultEEEE8new_nodeEv.exit

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @_ZNSt6vectorIN4CGAL9AABB_nodeINS0_13AABB_traits_3INS0_16Simple_cartesianIdEENS0_25AABB_triangle_primitive_3IS4_N9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3IS4_EES_IS9_SaIS9_EEEESt17integral_constantIbLb0EEEENS0_7DefaultEEEEESaISJ_EE17_M_realloc_insertIJEEEvNS7_IPSJ_SL_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr %i.e)
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !513
  br label %_ZN4CGAL9AABB_treeINS_13AABB_traits_3INS_16Simple_cartesianIdEENS_25AABB_triangle_primitive_3IS3_N9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS3_EESt6vectorIS8_SaIS8_EEEESt17integral_constantIbLb0EEEENS_7DefaultEEEE8new_nodeEv.exit
end_hunk_0
