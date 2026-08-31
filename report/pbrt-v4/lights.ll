Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/lights?download=true
inline.NumInlined: 8455
inline.NumDeleted: 1612
loop-unroll.NumCompletelyUnrolled: 70
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 107
begin_hunk_0_@_ZN4pbrt27WindowedPiecewiseConstant2D15SampleBisectionIZNKS0_6SampleENS_6Point2IfEENS_7Bounds2IfEEPfEUlfE_EEfT_fffi:bb.a
  %i.c = tail call noundef float @llvm.ceil.f32(float %i.b)
  %i.d = fmul float %2, %i.a
  %i.e = tail call noundef float @llvm.floor.f32(float %i.d)
  %i.f = fsub float %i.c, %i.e
  %i.g = fcmp ogt float %i.f, 1.000000e+00
  %.pre = load ptr, ptr %0, align 8, !tbaa !1384  ; 22 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1386 ; 6 uses
  br i1 %i.g, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.phi.trans.insert39 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre40 = load ptr, ptr %.phi.trans.insert39, align 8, !tbaa !1387
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.k = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !135, !align !800 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.036 = phi float [ %2, %.lr.ph ], [ %.0., %bb.b ] ; 2 uses
  %.01835 = phi float [ %3, %.lr.ph ], [ %..018, %bb.b ] ; 2 uses
  %i.n = fadd float %.01835, %.036
  %i.o = fmul float %i.n, 5.000000e-01            ; 4 uses
  %.sroa.01.0.copyload.i = load <2 x float>, ptr %i.i, align 4 ; 2 uses
  %.sroa.5.12.vec.extract.i.i = load float, ptr %i.j, align 4 ; 2 uses
  %i.p = tail call noundef float @_ZNK4pbrt15SummedAreaTable6LookupEff(ptr noundef nonnull align 8 dereferenceable(32) %.pre, float noundef %i.o, float noundef %.sroa.5.12.vec.extract.i.i)
  %i.q = fpext float %i.p to double
  %.sroa.0.0.vec.extract.i.i = extractelement <2 x float> %.sroa.01.0.copyload.i, i64 0 ; 2 uses
  %i.r = tail call noundef float @_ZNK4pbrt15SummedAreaTable6LookupEff(ptr noundef nonnull align 8 dereferenceable(32) %.pre, float noundef %.sroa.0.0.vec.extract.i.i, float noundef %.sroa.5.12.vec.extract.i.i)
  %i.s = fpext float %i.r to double
  %i.t = fsub double %i.q, %i.s
  %.sroa.0.4.vec.extract.i.i = extractelement <2 x float> %.sroa.01.0.copyload.i, i64 1 ; 2 uses
  %i.u = tail call noundef float @_ZNK4pbrt15SummedAreaTable6LookupEff(ptr noundef nonnull align 8 dereferenceable(32) %.pre, float noundef %.sroa.0.0.vec.extract.i.i, float noundef %.sroa.0.4.vec.extract.i.i)
  %i.v = fpext float %i.u to double
  %i.w = tail call noundef float @_ZNK4pbrt15SummedAreaTable6LookupEff(ptr noundef nonnull align 8 dereferenceable(32) %.pre, float noundef %i.o, float noundef %.sroa.0.4.vec.extract.i.i)
  %i.x = fpext float %i.w to double
  %i.y = fsub double %i.v, %i.x
  %i.z = fadd double %i.t, %i.y
  %i.aa = load <2 x i32>, ptr %i.k, align 8, !tbaa !97
  %i.ab = load <2 x i32>, ptr %.pre, align 8, !tbaa !97
  %i.ac = sub nsw <2 x i32> %i.aa, %i.ab          ; 2 uses
  %shift = shufflevector <2 x i32> %i.ac, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = mul nsw <2 x i32> %shift, %i.ac
  %i.ad = extractelement <2 x i32> %foldExtExtBinop, i64 0
  %i.ae = sitofp i32 %i.ad to double
  %i.af = fdiv double %i.z, %i.ae                 ; 2 uses
  %i.ag = fptrunc double %i.af to float
  %i.ah = fcmp olt double %i.af, f0xB690000000000000
  %.sroa.speculated.i.i = select i1 %i.ah, float 0.000000e+00, float %i.ag
  %i.ai = load float, ptr %i.m, align 4, !tbaa !89
  %i.aj = fdiv float %.sroa.speculated.i.i, %i.ai
  %i.ak = fcmp ogt float %i.aj, %1                ; 2 uses
  %..018 = select i1 %i.ak, float %i.o, float %.01835 ; 3 uses
  %.0. = select i1 %i.ak, float %.036, float %i.o ; 3 uses
  %i.al = fmul float %..018, %i.a
  %i.am = tail call noundef float @llvm.ceil.f32(float %i.al)
  %i.an = fmul float %.0., %i.a
  %i.ao = tail call noundef float @llvm.floor.f32(float %i.an)
  %i.ap = fsub float %i.am, %i.ao
  %i.aq = fcmp ogt float %i.ap, 1.000000e+00
  br i1 %i.aq, label %bb.b, label %._crit_edge, !llvm.loop !1388

._crit_edge:                                      ; preds = %bb.b, %.._crit_edge_crit_edge
  %i.ar = phi ptr [ %.pre40, %.._crit_edge_crit_edge ], [ %i.m, %bb.b ] ; 3 uses
  %.018.lcssa = phi float [ %3, %.._crit_edge_crit_edge ], [ %..018, %bb.b ] ; 5 uses
  %.0.lcssa = phi float [ %2, %.._crit_edge_crit_edge ], [ %.0., %bb.b ] ; 7 uses
  %.sroa.01.0.copyload.i20 = load <2 x float>, ptr %i.i, align 4 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 12 ; 3 uses
  %.sroa.5.12.vec.extract.i.i21 = load float, ptr %i.as, align 4 ; 2 uses
  %i.at = tail call noundef float @_ZNK4pbrt15SummedAreaTable6LookupEff(ptr noundef nonnull align 8 dereferenceable(32) %.pre, float noundef %.0.lcssa, float noundef %.sroa.5.12.vec.extract.i.i21)
  %.sroa.0.0.vec.extract.i.i22 = extractelement <2 x float> %.sroa.01.0.copyload.i20, i64 0 ; 2 uses
  %i.au = tail call noundef float @_ZNK4pbrt15SummedAreaTable6LookupEff(ptr noundef nonnull align 8 dereferenceable(32) %.pre, float noundef %.sroa.0.0.vec.extract.i.i22, float noundef %.sroa.5.12.vec.extract.i.i21)
  %.sroa.0.4.vec.extract.i.i23 = extractelement <2 x float> %.sroa.01.0.copyload.i20, i64 1 ; 2 uses
  %i.av = tail call noundef float @_ZNK4pbrt15SummedAreaTable6LookupEff(ptr noundef nonnull align 8 dereferenceable(32) %.pre, float noundef %.sroa.0.0.vec.extract.i.i22, float noundef %.sroa.0.4.vec.extract.i.i23)
  %i.aw = tail call noundef float @_ZNK4pbrt15SummedAreaTable6LookupEff(ptr noundef nonnull align 8 dereferenceable(32) %.pre, float noundef %.0.lcssa, float noundef %.sroa.0.4.vec.extract.i.i23)
  %i.ax = getelementptr inbounds nuw i8, ptr %.pre, i64 8 ; 3 uses
  %i.ay = load float, ptr %i.ar, align 4, !tbaa !89
  %.sroa.01.0.copyload.i25 = load <2 x float>, ptr %i.i, align 4 ; 2 uses
  %.sroa.5.12.vec.extract.i.i26 = load float, ptr %i.as, align 4 ; 2 uses
  %.sroa.0.0.vec.extract.i.i27 = extractelement <2 x float> %.sroa.01.0.copyload.i25, i64 0 ; 2 uses
  %.sroa.0.4.vec.extract.i.i28 = extractelement <2 x float> %.sroa.01.0.copyload.i25, i64 1 ; 2 uses
  %i.az = insertelement <2 x float> poison, float %i.at, i64 0
  %i.ba = insertelement <2 x float> poison, float %i.au, i64 0
  %i.bb = insertelement <2 x float> poison, float %i.av, i64 0
  %i.bc = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.bd = load <2 x i32>, ptr %i.ax, align 8, !tbaa !97
  %i.be = load <2 x i32>, ptr %.pre, align 8, !tbaa !97
  %i.bf = tail call noundef float @_ZNK4pbrt15SummedAreaTable6LookupEff(ptr noundef nonnull align 8 dereferenceable(32) %.pre, float noundef %.018.lcssa, float noundef %.sroa.5.12.vec.extract.i.i26)
  %i.bg = fpext float %i.bf to double
  %i.bh = tail call noundef float @_ZNK4pbrt15SummedAreaTable6LookupEff(ptr noundef nonnull align 8 dereferenceable(32) %.pre, float noundef %.sroa.0.0.vec.extract.i.i27, float noundef %.sroa.5.12.vec.extract.i.i26)
  %i.bi = fpext float %i.bh to double
  %i.bj = fsub double %i.bg, %i.bi
  %i.bk = tail call noundef float @_ZNK4pbrt15SummedAreaTable6LookupEff(ptr noundef nonnull align 8 dereferenceable(32) %.pre, float noundef %.sroa.0.0.vec.extract.i.i27, float noundef %.sroa.0.4.vec.extract.i.i28)
  %i.bl = fpext float %i.bk to double
  %i.bm = tail call noundef float @_ZNK4pbrt15SummedAreaTable6LookupEff(ptr noundef nonnull align 8 dereferenceable(32) %.pre, float noundef %.018.lcssa, float noundef %.sroa.0.4.vec.extract.i.i28)
  %i.bn = fpext float %i.bm to double
  %i.bo = fsub double %i.bl, %i.bn
  %i.bp = fadd double %i.bj, %i.bo
  %i.bq = load <2 x i32>, ptr %i.ax, align 8, !tbaa !97
  %i.br = load <2 x i32>, ptr %.pre, align 8, !tbaa !97
  %i.bs = sub nsw <2 x i32> %i.bq, %i.br          ; 2 uses
  %shift42 = shufflevector <2 x i32> %i.bs, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop43 = mul nsw <2 x i32> %shift42, %i.bs
  %i.bt = extractelement <2 x i32> %foldExtExtBinop43, i64 0
  %i.bu = sitofp i32 %i.bt to double
  %i.bv = fdiv double %i.bp, %i.bu                ; 2 uses
  %i.bw = fptrunc double %i.bv to float
  %i.bx = fcmp olt double %i.bv, f0xB690000000000000
  %.sroa.speculated.i.i29 = select i1 %i.bx, float 0.000000e+00, float %i.bw
  %i.by = load float, ptr %i.ar, align 4, !tbaa !89
  %i.bz = fdiv float %.sroa.speculated.i.i29, %i.by
  %.sroa.01.0.copyload.i30 = load <2 x float>, ptr %i.i, align 4 ; 2 uses
  %.sroa.5.12.vec.extract.i.i31 = load float, ptr %i.as, align 4 ; 2 uses
  %i.ca = tail call noundef float @_ZNK4pbrt15SummedAreaTable6LookupEff(ptr noundef nonnull align 8 dereferenceable(32) %.pre, float noundef %.0.lcssa, float noundef %.sroa.5.12.vec.extract.i.i31)
  %i.cb = insertelement <2 x float> %i.az, float %i.ca, i64 1
  %i.cc = fpext <2 x float> %i.cb to <2 x double>
  %.sroa.0.0.vec.extract.i.i32 = extractelement <2 x float> %.sroa.01.0.copyload.i30, i64 0 ; 2 uses
  %i.cd = tail call noundef float @_ZNK4pbrt15SummedAreaTable6LookupEff(ptr noundef nonnull align 8 dereferenceable(32) %.pre, float noundef %.sroa.0.0.vec.extract.i.i32, float noundef %.sroa.5.12.vec.extract.i.i31)
  %i.ce = insertelement <2 x float> %i.ba, float %i.cd, i64 1
  %i.cf = fpext <2 x float> %i.ce to <2 x double>
  %i.cg = fsub <2 x double> %i.cc, %i.cf
  %.sroa.0.4.vec.extract.i.i33 = extractelement <2 x float> %.sroa.01.0.copyload.i30, i64 1 ; 2 uses
  %i.ch = tail call noundef float @_ZNK4pbrt15SummedAreaTable6LookupEff(ptr noundef nonnull align 8 dereferenceable(32) %.pre, float noundef %.sroa.0.0.vec.extract.i.i32, float noundef %.sroa.0.4.vec.extract.i.i33)
  %i.ci = insertelement <2 x float> %i.bb, float %i.ch, i64 1
  %i.cj = fpext <2 x float> %i.ci to <2 x double>
  %i.ck = tail call noundef float @_ZNK4pbrt15SummedAreaTable6LookupEff(ptr noundef nonnull align 8 dereferenceable(32) %.pre, float noundef %.0.lcssa, float noundef %.sroa.0.4.vec.extract.i.i33)
  %i.cl = insertelement <2 x float> %i.bc, float %i.ck, i64 1
  %i.cm = fpext <2 x float> %i.cl to <2 x double>
  %i.cn = fsub <2 x double> %i.cj, %i.cm
  %i.co = fadd <2 x double> %i.cg, %i.cn
  %i.cp = load <2 x i32>, ptr %i.ax, align 8, !tbaa !97
  %i.cq = load <2 x i32>, ptr %.pre, align 8, !tbaa !97
  %i.cr = sub nsw <2 x i32> %i.cp, %i.cq          ; 2 uses
  %i.cs = sub nsw <2 x i32> %i.bd, %i.be          ; 2 uses
  %i.ct = shufflevector <2 x i32> %i.cs, <2 x i32> %i.cr, <2 x i32> <i32 1, i32 3>
  %i.cu = shufflevector <2 x i32> %i.cs, <2 x i32> %i.cr, <2 x i32> <i32 0, i32 2>
  %i.cv = mul nsw <2 x i32> %i.ct, %i.cu
  %i.cw = sitofp <2 x i32> %i.cv to <2 x double>
  %i.cx = fdiv <2 x double> %i.co, %i.cw          ; 2 uses
  %i.cy = fptrunc <2 x double> %i.cx to <2 x float>
  %i.cz = fcmp olt <2 x double> %i.cx, splat (double f0xB690000000000000)
  %i.da = select <2 x i1> %i.cz, <2 x float> zeroinitializer, <2 x float> %i.cy
  %i.db = load float, ptr %i.ar, align 4, !tbaa !89
  %i.dc = insertelement <2 x float> poison, float %i.ay, i64 0
  %i.dd = insertelement <2 x float> %i.dc, float %i.db, i64 1
  %i.de = fdiv <2 x float> %i.da, %i.dd
  %i.df = insertelement <2 x float> poison, float %1, i64 0
  %i.dg = insertelement <2 x float> %i.df, float %i.bz, i64 1
  %i.dh = fsub <2 x float> %i.dg, %i.de           ; 2 uses
  %shift45 = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop46 = fdiv <2 x float> %i.dh, %shift45
  %i.di = extractelement <2 x float> %foldExtExtBinop46, i64 0 ; 2 uses
  %i.dj = fsub float 1.000000e+00, %i.di
  %i.dk = fmul float %.0.lcssa, %i.dj
  %i.dl = fmul float %.018.lcssa, %i.di
  %i.dm = fadd float %i.dl, %i.dk                 ; 3 uses
  %i.dn = fcmp olt float %i.dm, %.0.lcssa
  %i.do = fcmp ogt float %i.dm, %.018.lcssa
  %..i = select i1 %i.do, float %.018.lcssa, float %i.dm
  %.0.i = select i1 %i.dn, float %.0.lcssa, float %..i
  ret float %.0.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef float @_ZN4pbrt27WindowedPiecewiseConstant2D15SampleBisectionIZNKS0_6SampleENS_6Point2IfEENS_7Bounds2IfEEPfEUlfE0_EEfT_fffi(ptr noundef byval(%class.anon.176) align 8 %0, float noundef %1, float noundef %2, float noundef %3, i32 noundef %4) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = sitofp i32 %4 to float                   ; 4 uses
  %i.b = fmul float %3, %i.a
  %i.c = tail call noundef float @llvm.ceil.f32(float %i.b)
  %i.d = fmul float %2, %i.a
  %i.e = tail call noundef float @llvm.floor.f32(float %i.d)
  %i.f = fsub float %i.c, %i.e
  %i.g = fcmp ogt float %i.f, 1.000000e+00
  %.pre = load ptr, ptr %0, align 8, !tbaa !1389  ; 22 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1391 ; 6 uses
  br i1 %i.g, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.phi.trans.insert45 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre46 = load ptr, ptr %.phi.trans.insert45, align 8, !tbaa !1392
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !135, !align !800 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.042 = phi float [ %2, %.lr.ph ], [ %.0., %bb.b ] ; 2 uses
  %.01841 = phi float [ %3, %.lr.ph ], [ %..018, %bb.b ] ; 2 uses
  %i.m = fadd float %.01841, %.042
  %i.n = fmul float %i.m, 5.000000e-01            ; 4 uses
  %.sroa.01.0.copyload.i = load <2 x float>, ptr %i.i, align 4 ; 2 uses
  %.sroa.5.8.vec.extract.i.i = load float, ptr %.sroa.4.0..sroa_idx.i, align 4 ; 2 uses
  %i.o = tail call noundef float @_ZNK4pbrt15SummedAreaTable6LookupEff(ptr noundef nonnull align 8 dereferenceable(32) %.pre, float noundef %.sroa.5.8.vec.extract.i.i, float noundef %i.n)
  %i.p = fpext float %i.o to double
  %.sroa.0.0.vec.extract.i.i = extractelement <2 x float> %.sroa.01.0.copyload.i, i64 0 ; 2 uses
  %i.q = tail call noundef float @_ZNK4pbrt15SummedAreaTable6LookupEff(ptr noundef nonnull align 8 dereferenceable(32) %.pre, float noundef %.sroa.0.0.vec.extract.i.i, float noundef %i.n)
  %i.r = fpext float %i.q to double
  %i.s = fsub double %i.p, %i.r
  %.sroa.0.4.vec.extract.i.i = extractelement <2 x float> %.sroa.01.0.copyload.i, i64 1 ; 2 uses
  %i.t = tail call noundef float @_ZNK4pbrt15SummedAreaTable6LookupEff(ptr noundef nonnull align 8 dereferenceable(32) %.pre, float noundef %.sroa.0.0.vec.extract.i.i, float noundef %.sroa.0.4.vec.extract.i.i)
  %i.u = fpext float %i.t to double
  %i.v = tail call noundef float @_ZNK4pbrt15SummedAreaTable6LookupEff(ptr noundef nonnull align 8 dereferenceable(32) %.pre, float noundef %.sroa.5.8.vec.extract.i.i, float noundef %.sroa.0.4.vec.extract.i.i)
  %i.w = fpext float %i.v to double
  %i.x = fsub double %i.u, %i.w
  %i.y = fadd double %i.s, %i.x
  %i.z = load <2 x i32>, ptr %i.j, align 8, !tbaa !97
  %i.aa = load <2 x i32>, ptr %.pre, align 8, !tbaa !97
  %i.ab = sub nsw <2 x i32> %i.z, %i.aa           ; 2 uses
  %shift = shufflevector <2 x i32> %i.ab, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = mul nsw <2 x i32> %shift, %i.ab
  %i.ac = extractelement <2 x i32> %foldExtExtBinop, i64 0
  %i.ad = sitofp i32 %i.ac to double
  %i.ae = fdiv double %i.y, %i.ad                 ; 2 uses
  %i.af = fptrunc double %i.ae to float
  %i.ag = fcmp olt double %i.ae, f0xB690000000000000
  %.sroa.speculated.i.i = select i1 %i.ag, float 0.000000e+00, float %i.af
  %i.ah = load float, ptr %i.l, align 4, !tbaa !89
  %i.ai = fdiv float %.sroa.speculated.i.i, %i.ah
  %i.aj = fcmp ogt float %i.ai, %1                ; 2 uses
  %..018 = select i1 %i.aj, float %i.n, float %.01841 ; 3 uses
  %.0. = select i1 %i.aj, float %.042, float %i.n ; 3 uses
  %i.ak = fmul float %..018, %i.a
  %i.al = tail call noundef float @llvm.ceil.f32(float %i.ak)
  %i.am = fmul float %.0., %i.a
  %i.an = tail call noundef float @llvm.floor.f32(float %i.am)
  %i.ao = fsub float %i.al, %i.an
  %i.ap = fcmp ogt float %i.ao, 1.000000e+00
  br i1 %i.ap, label %bb.b, label %._crit_edge, !llvm.loop !1393

._crit_edge:                                      ; preds = %bb.b, %.._crit_edge_crit_edge
  %i.aq = phi ptr [ %.pre46, %.._crit_edge_crit_edge ], [ %i.l, %bb.b ] ; 3 uses
  %.018.lcssa = phi float [ %3, %.._crit_edge_crit_edge ], [ %..018, %bb.b ] ; 5 uses
  %.0.lcssa = phi float [ %2, %.._crit_edge_crit_edge ], [ %.0., %bb.b ] ; 7 uses
  %.sroa.01.0.copyload.i20 = load <2 x float>, ptr %i.i, align 4 ; 2 uses
  %.sroa.4.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %.sroa.5.8.vec.extract.i.i22 = load float, ptr %.sroa.4.0..sroa_idx.i21, align 4 ; 2 uses
  %i.ar = tail call noundef float @_ZNK4pbrt15SummedAreaTable6LookupEff(ptr noundef nonnull align 8 dereferenceable(32) %.pre, float noundef %.sroa.5.8.vec.extract.i.i22, float noundef %.0.lcssa)
  %.sroa.0.0.vec.extract.i.i24 = extractelement <2 x float> %.sroa.01.0.copyload.i20, i64 0 ; 2 uses
  %i.as = tail call noundef float @_ZNK4pbrt15SummedAreaTable6LookupEff(ptr noundef nonnull align 8 dereferenceable(32) %.pre, float noundef %.sroa.0.0.vec.extract.i.i24, float noundef %.0.lcssa)
  %.sroa.0.4.vec.extract.i.i25 = extractelement <2 x float> %.sroa.01.0.copyload.i20, i64 1 ; 2 uses
  %i.at = tail call noundef float @_ZNK4pbrt15SummedAreaTable6LookupEff(ptr noundef nonnull align 8 dereferenceable(32) %.pre, float noundef %.sroa.0.0.vec.extract.i.i24, float noundef %.sroa.0.4.vec.extract.i.i25)
  %i.au = tail call noundef float @_ZNK4pbrt15SummedAreaTable6LookupEff(ptr noundef nonnull align 8 dereferenceable(32) %.pre, float noundef %.sroa.5.8.vec.extract.i.i22, float noundef %.sroa.0.4.vec.extract.i.i25)
  %i.av = getelementptr inbounds nuw i8, ptr %.pre, i64 8 ; 3 uses
  %i.aw = load float, ptr %i.aq, align 4, !tbaa !89
  %.sroa.01.0.copyload.i27 = load <2 x float>, ptr %i.i, align 4 ; 2 uses
  %.sroa.5.8.vec.extract.i.i28 = load float, ptr %.sroa.4.0..sroa_idx.i21, align 4 ; 2 uses
  %.sroa.0.0.vec.extract.i.i31 = extractelement <2 x float> %.sroa.01.0.copyload.i27, i64 0 ; 2 uses
  %.sroa.0.4.vec.extract.i.i32 = extractelement <2 x float> %.sroa.01.0.copyload.i27, i64 1 ; 2 uses
  %i.ax = insertelement <2 x float> poison, float %i.ar, i64 0
  %i.ay = insertelement <2 x float> poison, float %i.as, i64 0
  %i.az = insertelement <2 x float> poison, float %i.at, i64 0
  %i.ba = insertelement <2 x float> poison, float %i.au, i64 0
  %i.bb = load <2 x i32>, ptr %i.av, align 8, !tbaa !97
  %i.bc = load <2 x i32>, ptr %.pre, align 8, !tbaa !97
  %i.bd = tail call noundef float @_ZNK4pbrt15SummedAreaTable6LookupEff(ptr noundef nonnull align 8 dereferenceable(32) %.pre, float noundef %.sroa.5.8.vec.extract.i.i28, float noundef %.018.lcssa)
  %i.be = fpext float %i.bd to double
  %i.bf = tail call noundef float @_ZNK4pbrt15SummedAreaTable6LookupEff(ptr noundef nonnull align 8 dereferenceable(32) %.pre, float noundef %.sroa.0.0.vec.extract.i.i31, float noundef %.018.lcssa)
  %i.bg = fpext float %i.bf to double
  %i.bh = fsub double %i.be, %i.bg
  %i.bi = tail call noundef float @_ZNK4pbrt15SummedAreaTable6LookupEff(ptr noundef nonnull align 8 dereferenceable(32) %.pre, float noundef %.sroa.0.0.vec.extract.i.i31, float noundef %.sroa.0.4.vec.extract.i.i32)
  %i.bj = fpext float %i.bi to double
  %i.bk = tail call noundef float @_ZNK4pbrt15SummedAreaTable6LookupEff(ptr noundef nonnull align 8 dereferenceable(32) %.pre, float noundef %.sroa.5.8.vec.extract.i.i28, float noundef %.sroa.0.4.vec.extract.i.i32)
  %i.bl = fpext float %i.bk to double
  %i.bm = fsub double %i.bj, %i.bl
  %i.bn = fadd double %i.bh, %i.bm
  %i.bo = load <2 x i32>, ptr %i.av, align 8, !tbaa !97
  %i.bp = load <2 x i32>, ptr %.pre, align 8, !tbaa !97
  %i.bq = sub nsw <2 x i32> %i.bo, %i.bp          ; 2 uses
  %shift48.a = shufflevector <2 x i32> %i.bq, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop49.a = mul nsw <2 x i32> %shift48.a, %i.bq
  %i.br = extractelement <2 x i32> %foldExtExtBinop49.a, i64 0
  %i.bs = sitofp i32 %i.br to double
  %i.bt = fdiv double %i.bn, %i.bs                ; 2 uses
  %i.bu = fptrunc double %i.bt to float
  %i.bv = fcmp olt double %i.bt, f0xB690000000000000
  %.sroa.speculated.i.i33 = select i1 %i.bv, float 0.000000e+00, float %i.bu
  %i.bw = load float, ptr %i.aq, align 4, !tbaa !89
  %i.bx = fdiv float %.sroa.speculated.i.i33, %i.bw
  %.sroa.01.0.copyload.i34 = load <2 x float>, ptr %i.i, align 4 ; 2 uses
  %.sroa.5.8.vec.extract.i.i34 = load float, ptr %.sroa.4.0..sroa_idx.i21, align 4 ; 2 uses
  %i.by = tail call noundef float @_ZNK4pbrt15SummedAreaTable6LookupEff(ptr noundef nonnull align 8 dereferenceable(32) %.pre, float noundef %.sroa.5.8.vec.extract.i.i34, float noundef %.0.lcssa)
  %i.bz = insertelement <2 x float> %i.ax, float %i.by, i64 1
  %i.ca = fpext <2 x float> %i.bz to <2 x double>
  %.sroa.0.0.vec.extract.i.i38 = extractelement <2 x float> %.sroa.01.0.copyload.i34, i64 0 ; 2 uses
  %i.cb = tail call noundef float @_ZNK4pbrt15SummedAreaTable6LookupEff(ptr noundef nonnull align 8 dereferenceable(32) %.pre, float noundef %.sroa.0.0.vec.extract.i.i38, float noundef %.0.lcssa)
  %i.cc = insertelement <2 x float> %i.ay, float %i.cb, i64 1
  %i.cd = fpext <2 x float> %i.cc to <2 x double>
  %i.ce = fsub <2 x double> %i.ca, %i.cd
  %.sroa.0.4.vec.extract.i.i39 = extractelement <2 x float> %.sroa.01.0.copyload.i34, i64 1 ; 2 uses
  %i.cf = tail call noundef float @_ZNK4pbrt15SummedAreaTable6LookupEff(ptr noundef nonnull align 8 dereferenceable(32) %.pre, float noundef %.sroa.0.0.vec.extract.i.i38, float noundef %.sroa.0.4.vec.extract.i.i39)
  %i.cg = insertelement <2 x float> %i.az, float %i.cf, i64 1
  %i.ch = fpext <2 x float> %i.cg to <2 x double>
  %i.ci = tail call noundef float @_ZNK4pbrt15SummedAreaTable6LookupEff(ptr noundef nonnull align 8 dereferenceable(32) %.pre, float noundef %.sroa.5.8.vec.extract.i.i34, float noundef %.sroa.0.4.vec.extract.i.i39)
  %i.cj = insertelement <2 x float> %i.ba, float %i.ci, i64 1
  %i.ck = fpext <2 x float> %i.cj to <2 x double>
  %i.cl = fsub <2 x double> %i.ch, %i.ck
  %i.cm = fadd <2 x double> %i.ce, %i.cl
  %i.cn = load <2 x i32>, ptr %i.av, align 8, !tbaa !97
  %i.co = load <2 x i32>, ptr %.pre, align 8, !tbaa !97
  %i.cp = sub nsw <2 x i32> %i.cn, %i.co          ; 2 uses
  %i.cq = sub nsw <2 x i32> %i.bb, %i.bc          ; 2 uses
  %i.cr = shufflevector <2 x i32> %i.cq, <2 x i32> %i.cp, <2 x i32> <i32 1, i32 3>
  %i.cs = shufflevector <2 x i32> %i.cq, <2 x i32> %i.cp, <2 x i32> <i32 0, i32 2>
  %i.ct = mul nsw <2 x i32> %i.cr, %i.cs
  %i.cu = sitofp <2 x i32> %i.ct to <2 x double>
  %i.cv = fdiv <2 x double> %i.cm, %i.cu          ; 2 uses
  %i.cw = fptrunc <2 x double> %i.cv to <2 x float>
  %i.cx = fcmp olt <2 x double> %i.cv, splat (double f0xB690000000000000)
  %i.cy = select <2 x i1> %i.cx, <2 x float> zeroinitializer, <2 x float> %i.cw
  %i.cz = load float, ptr %i.aq, align 4, !tbaa !89
  %i.da = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.db = insertelement <2 x float> %i.da, float %i.cz, i64 1
  %i.dc = fdiv <2 x float> %i.cy, %i.db
  %i.dd = insertelement <2 x float> poison, float %1, i64 0
  %i.de = insertelement <2 x float> %i.dd, float %i.bx, i64 1
  %i.df = fsub <2 x float> %i.de, %i.dc           ; 2 uses
  %shift51 = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop52 = fdiv <2 x float> %i.df, %shift51
  %i.dg = extractelement <2 x float> %foldExtExtBinop52, i64 0 ; 2 uses
  %i.dh = fsub float 1.000000e+00, %i.dg
  %i.di = fmul float %.0.lcssa, %i.dh
  %i.dj = fmul float %.018.lcssa, %i.dg
  %i.dk = fadd float %i.dj, %i.di                 ; 3 uses
  %i.dl = fcmp olt float %i.dk, %.0.lcssa
  %i.dm = fcmp ogt float %i.dk, %.018.lcssa
  %..i = select i1 %i.dm, float %.018.lcssa, float %i.dk
  %.0.i = select i1 %i.dl, float %.0.lcssa, float %..i
  ret float %.0.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef float @_ZNK4pbrt15SummedAreaTable6LookupEff(ptr noundef nonnull align 8 dereferenceable(32) %0, float noundef %1, float noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !230
  %i.c = load i32, ptr %0, align 8, !tbaa !230    ; 5 uses
  %i.d = sub nsw i32 %i.b, %i.c                   ; 9 uses
  %i.e = sitofp i32 %i.d to float
  %i.f = fmul float %1, %i.e                      ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !231  ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !231  ; 9 uses
  %i.k = sub nsw i32 %i.h, %i.j
  %i.l = sitofp i32 %i.k to float
  %i.m = fmul float %2, %i.l                      ; 2 uses
  %i.n = fptosi float %i.f to i32                 ; 5 uses
  %i.o = fptosi float %i.m to i32                 ; 7 uses
  %i.p = icmp eq i32 %i.n, 0                      ; 2 uses
  %i.q = icmp eq i32 %i.o, 0                      ; 2 uses
  %or.cond.i = or i1 %i.p, %i.q
  br i1 %or.cond.i, label %_ZNK4pbrt15SummedAreaTable9LookupIntEii.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = tail call i32 @llvm.smin.i32(i32 %i.d, i32 %i.n)
  %i.s = add nsw i32 %i.o, -1
  %i.t = xor i32 %i.j, -1
  %i.u = add i32 %i.h, %i.t
  %.sroa.speculated.i = tail call i32 @llvm.smin.i32(i32 %i.u, i32 %i.s)
  %i.v = xor i32 %i.c, -1
  %i.w = add i32 %i.r, %i.v
  %i.x = sub nsw i32 %.sroa.speculated.i, %i.j
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !559
  %i.aa = mul nsw i32 %i.x, %i.d
  %i.ab = add nsw i32 %i.w, %i.aa
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.ac
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !1354
  %i.af = fptrunc double %i.ae to float
  br label %_ZNK4pbrt15SummedAreaTable9LookupIntEii.exit

_ZNK4pbrt15SummedAreaTable9LookupIntEii.exit:     ; preds = %bb.a, %bb.b
  %.0.i = phi float [ %i.af, %bb.b ], [ 0.000000e+00, %bb.a ]
  %i.ag = add nsw i32 %i.n, 1                     ; 3 uses
  %i.ah = icmp eq i32 %i.ag, 0                    ; 2 uses
  %or.cond.i28 = or i1 %i.ah, %i.q
  br i1 %or.cond.i28, label %_ZNK4pbrt15SummedAreaTable9LookupIntEii.exit31, label %bb.c

bb.c:                                             ; preds = %_ZNK4pbrt15SummedAreaTable9LookupIntEii.exit
  %i.ai = tail call i32 @llvm.smin.i32(i32 %i.d, i32 %i.ag)
  %i.aj = add nsw i32 %i.o, -1
  %i.ak = xor i32 %i.j, -1
  %i.al = add i32 %i.h, %i.ak
  %.sroa.speculated.i29 = tail call i32 @llvm.smin.i32(i32 %i.al, i32 %i.aj)
  %i.am = xor i32 %i.c, -1
  %i.an = add i32 %i.ai, %i.am
  %i.ao = sub nsw i32 %.sroa.speculated.i29, %i.j
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !559
  %i.ar = mul nsw i32 %i.ao, %i.d
  %i.as = add nsw i32 %i.an, %i.ar
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.at
  %i.av = load double, ptr %i.au, align 8, !tbaa !1354
  %i.aw = fptrunc double %i.av to float
  br label %_ZNK4pbrt15SummedAreaTable9LookupIntEii.exit31

_ZNK4pbrt15SummedAreaTable9LookupIntEii.exit31:   ; preds = %_ZNK4pbrt15SummedAreaTable9LookupIntEii.exit, %bb.c
  %.0.i30 = phi float [ %i.aw, %bb.c ], [ 0.000000e+00, %_ZNK4pbrt15SummedAreaTable9LookupIntEii.exit ]
  %i.ax = icmp eq i32 %i.o, -1                    ; 2 uses
  %or.cond.i32 = or i1 %i.p, %i.ax
  br i1 %or.cond.i32, label %_ZNK4pbrt15SummedAreaTable9LookupIntEii.exit35, label %bb.d

bb.d:                                             ; preds = %_ZNK4pbrt15SummedAreaTable9LookupIntEii.exit31
  %i.ay = tail call i32 @llvm.smin.i32(i32 %i.d, i32 %i.n)
  %i.az = xor i32 %i.j, -1
  %i.ba = add i32 %i.h, %i.az
  %.sroa.speculated.i33 = tail call i32 @llvm.smin.i32(i32 %i.ba, i32 %i.o)
  %i.bb = xor i32 %i.c, -1
  %i.bc = add i32 %i.ay, %i.bb
  %i.bd = sub nsw i32 %.sroa.speculated.i33, %i.j
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !559
  %i.bg = mul nsw i32 %i.bd, %i.d
  %i.bh = add nsw i32 %i.bc, %i.bg
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.bi
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !1354
  %i.bl = fptrunc double %i.bk to float
  br label %_ZNK4pbrt15SummedAreaTable9LookupIntEii.exit35

_ZNK4pbrt15SummedAreaTable9LookupIntEii.exit35:   ; preds = %_ZNK4pbrt15SummedAreaTable9LookupIntEii.exit31, %bb.d
  %.0.i34 = phi float [ %i.bl, %bb.d ], [ 0.000000e+00, %_ZNK4pbrt15SummedAreaTable9LookupIntEii.exit31 ]
  %or.cond.i36 = or i1 %i.ah, %i.ax
  br i1 %or.cond.i36, label %_ZNK4pbrt15SummedAreaTable9LookupIntEii.exit39, label %bb.e

bb.e:                                             ; preds = %_ZNK4pbrt15SummedAreaTable9LookupIntEii.exit35
  %i.bm = tail call i32 @llvm.smin.i32(i32 %i.d, i32 %i.ag)
  %i.bn = xor i32 %i.j, -1
  %i.bo = add i32 %i.h, %i.bn
  %.sroa.speculated.i37 = tail call i32 @llvm.smin.i32(i32 %i.bo, i32 %i.o)
  %i.bp = xor i32 %i.c, -1
  %i.bq = add i32 %i.bm, %i.bp
  %i.br = sub nsw i32 %.sroa.speculated.i37, %i.j
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !559
  %i.bu = mul nsw i32 %i.br, %i.d
  %i.bv = add nsw i32 %i.bq, %i.bu
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %i.bw
  %i.by = load double, ptr %i.bx, align 8, !tbaa !1354
  %i.bz = fptrunc double %i.by to float
  br label %_ZNK4pbrt15SummedAreaTable9LookupIntEii.exit39

_ZNK4pbrt15SummedAreaTable9LookupIntEii.exit39:   ; preds = %_ZNK4pbrt15SummedAreaTable9LookupIntEii.exit35, %bb.e
  %.0.i38 = phi float [ %i.bz, %bb.e ], [ 0.000000e+00, %_ZNK4pbrt15SummedAreaTable9LookupIntEii.exit35 ]
  %i.ca = sitofp i32 %i.n to float
  %i.cb = fsub float %i.f, %i.ca                  ; 3 uses
  %i.cc = sitofp i32 %i.o to float
  %i.cd = fsub float %i.m, %i.cc                  ; 3 uses
  %i.ce = fsub float 1.000000e+00, %i.cb          ; 2 uses
  %i.cf = fsub float 1.000000e+00, %i.cd          ; 2 uses
  %i.cg = fmul float %i.ce, %i.cf
  %i.ch = fmul float %i.cg, %.0.i
  %i.ci = fmul float %i.ce, %i.cd
  %i.cj = fmul float %i.ci, %.0.i34
  %i.ck = fadd float %i.ch, %i.cj
  %i.cl = fmul float %i.cb, %i.cf
  %i.cm = fmul float %i.cl, %.0.i30
  %i.cn = fadd float %i.cm, %i.ck
  %i.co = fmul float %i.cb, %i.cd
  %i.cp = fmul float %i.co, %.0.i38
  %i.cq = fadd float %i.cn, %i.cp
  ret float %i.cq
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #29

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @acosf(float noundef) local_unnamed_addr #28

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef float @_ZN4pbrt15NewtonBisectionIZNS_16SampleSmoothStepEfffEUlfE_EEfffT_ff(float noundef %0, float noundef %1, <2 x float> %2, float %3, float noundef %4, float noundef %5) local_unnamed_addr #30 comdat {
_ZZN4pbrt16SampleSmoothStepEfffENKUlfE_clEf.exit:
  %.sroa.0.0.vec.extract62 = extractelement <2 x float> %2, i64 0 ; 8 uses
  %i.a = fsub float %0, %.sroa.0.0.vec.extract62
  %.sroa.0.4.vec.extract67 = extractelement <2 x float> %2, i64 1 ; 4 uses
  %i.b = fsub float %.sroa.0.4.vec.extract67, %.sroa.0.0.vec.extract62 ; 5 uses
  %i.c = fdiv float %i.a, %i.b                    ; 3 uses
  %i.d = fmul float %i.c, %i.c                    ; 3 uses
  %i.e = fmul float %i.c, %i.d
  %i.f = fmul float %i.e, 2.000000e+00
  %i.g = fmul float %i.d, %i.d
  %i.h = fsub float %i.f, %i.g
  %i.i = fsub float %i.h, %3                      ; 4 uses
  %i.j = fsub float %1, %.sroa.0.0.vec.extract62
  %i.k = fdiv float %i.j, %i.b                    ; 3 uses
  %i.l = fmul float %i.k, %i.k                    ; 3 uses
  %i.m = fmul float %i.k, %i.l
  %i.n = fmul float %i.m, 2.000000e+00
  %i.o = fmul float %i.l, %i.l
end_hunk_0
