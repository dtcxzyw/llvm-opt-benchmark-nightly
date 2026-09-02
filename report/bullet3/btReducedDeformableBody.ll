Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btReducedDeformableBody?download=true
inline.NumInlined: 956
inline.NumDeleted: 155
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 57
loop-unroll.NumUnrolled: 67
begin_hunk_0_@_ZN23btReducedDeformableBody12setTotalMassEfb:bb.a
  %wide.load12 = load <4 x float>, ptr %i.j, align 4, !tbaa !142
  %i.k = fmul <4 x float> %broadcast.splat, %wide.load
  %i.l = fmul <4 x float> %broadcast.splat, %wide.load12
  store <4 x float> %i.k, ptr %i.i, align 4, !tbaa !142
  store <4 x float> %i.l, ptr %i.j, align 4, !tbaa !142
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !290

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  store float %1, ptr %i.a, align 8, !tbaa !153
  %i.n = fcmp ogt float %1, 0.000000e+00
  %i.o = fdiv float 1.000000e+00, %1
  %i.p = select i1 %i.n, float %i.o, float 0.000000e+00
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2356
  store float %i.p, ptr %i.q, align 4, !tbaa !154
  tail call void @_ZN23btReducedDeformableBody33updateLocalInertiaTensorFromNodesEv(ptr noundef nonnull align 8 dereferenceable(3176) %0)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2432
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 2448
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2464
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 2440
  %i.v = load float, ptr %i.u, align 8, !tbaa !142, !noalias !294 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2456
  %i.x = load float, ptr %i.w, align 8, !tbaa !142, !noalias !294 ; 2 uses
  %i.y = fmul float %i.x, 0.000000e+00            ; 2 uses
  %i.z = fadd float %i.v, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 2472
  %i.ab = load float, ptr %i.aa, align 8, !tbaa !142, !noalias !294 ; 3 uses
  %i.ac = load <2 x float>, ptr %i.r, align 8, !tbaa !142, !noalias !294 ; 5 uses
  %i.ad = load <2 x float>, ptr %i.s, align 8, !tbaa !142, !noalias !294 ; 3 uses
  %i.ae = fmul <2 x float> %i.ad, zeroinitializer ; 3 uses
  %i.af = extractelement <2 x float> %i.ac, i64 0
  %foldExtExtBinop = fadd <2 x float> %i.ac, %i.ae
  %i.ag = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ah = load <2 x float>, ptr %i.t, align 8, !tbaa !142, !noalias !294 ; 4 uses
  %i.ai = extractelement <2 x float> %i.ah, i64 0
  %i.aj = shufflevector <2 x float> %i.ah, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>
  %i.ak = insertelement <4 x float> %i.aj, float %i.ab, i64 0
  %i.al = insertelement <4 x float> %i.ak, float %i.v, i64 1
  %i.am = shufflevector <4 x float> %i.al, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.an = insertelement <4 x float> poison, float %i.z, i64 0
  %i.ao = insertelement <4 x float> %i.an, float %i.x, i64 1
  %i.ap = insertelement <4 x float> %i.ao, float %i.y, i64 2
  %i.aq = shufflevector <4 x float> %i.ap, <4 x float> %i.ag, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ar = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.am, <4 x float> zeroinitializer, <4 x float> %i.aq) ; 5 uses
  %i.as = extractelement <4 x float> %i.ar, i64 1
  %i.at = tail call noundef float @llvm.fmuladd.f32(float %i.ab, float 0.000000e+00, float %i.as) ; 2 uses
  %i.au = extractelement <4 x float> %i.ar, i64 2
  %i.av = fadd float %i.ab, %i.au                 ; 2 uses
  %i.aw = extractelement <2 x float> %i.ac, i64 1
  %foldExtExtBinop14 = fadd <2 x float> %i.ac, %i.ae
  %i.ax = extractelement <2 x float> %foldExtExtBinop14, i64 1
  %i.ay = extractelement <2 x float> %i.ah, i64 1 ; 2 uses
  %i.az = tail call noundef float @llvm.fmuladd.f32(float %i.ay, float 0.000000e+00, float %i.ax) ; 2 uses
  %i.ba = extractelement <2 x float> %i.ad, i64 0
  %i.bb = tail call float @llvm.fmuladd.f32(float %i.af, float 0.000000e+00, float %i.ba)
  %i.bc = tail call noundef float @llvm.fmuladd.f32(float %i.ai, float 0.000000e+00, float %i.bb) ; 3 uses
  %i.bd = extractelement <2 x float> %i.ad, i64 1
  %i.be = tail call float @llvm.fmuladd.f32(float %i.aw, float 0.000000e+00, float %i.bd)
  %i.bf = tail call noundef float @llvm.fmuladd.f32(float %i.ay, float 0.000000e+00, float %i.be) ; 2 uses
  %i.bg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> zeroinitializer, <2 x float> %i.ae)
  %i.bh = fadd <2 x float> %i.ah, %i.bg           ; 2 uses
  %i.bi = fmul float %i.az, 0.000000e+00          ; 2 uses
  %i.bj = extractelement <4 x float> %i.ar, i64 3 ; 3 uses
  %i.bk = fadd float %i.bj, %i.bi
  %i.bl = tail call float @llvm.fmuladd.f32(float %i.bj, float 0.000000e+00, float %i.az)
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.bj, float 0.000000e+00, float %i.bi)
  %i.bn = extractelement <4 x float> %i.ar, i64 0
  %i.bo = fadd float %i.bm, %i.bn
  %i.bp = fmul float %i.bf, 0.000000e+00          ; 2 uses
  %i.bq = fadd float %i.bc, %i.bp
  %i.br = tail call float @llvm.fmuladd.f32(float %i.bc, float 0.000000e+00, float %i.bf)
  %i.bs = fmul <2 x float> %i.bh, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %i.bt = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bs, <2 x float> <float 0.000000e+00, float 1.000000e+00>, <2 x float> %i.bt)
  %i.bv = insertelement <2 x float> %i.bt, float %i.bc, i64 0
  %i.bw = insertelement <2 x float> %i.bs, float %i.bp, i64 0
  %i.bx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bv, <2 x float> zeroinitializer, <2 x float> %i.bw) ; 2 uses
  %i.by = extractelement <2 x float> %i.bx, i64 0
  %i.bz = fadd float %i.by, %i.at
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 2544
  %i.cb = shufflevector <4 x float> %i.ar, <4 x float> poison, <2 x i32> zeroinitializer
  %i.cc = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.cd = insertelement <2 x float> %i.cc, float %i.bl, i64 1
  %i.ce = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cb, <2 x float> zeroinitializer, <2 x float> %i.cd)
  store <2 x float> %i.ce, ptr %i.ca, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 2552
  store float %i.bo, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.617.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 2556
  store float 0.000000e+00, ptr %.sroa.617.0..sroa_idx.i, align 4, !tbaa !149
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 2560
  %i.cg = insertelement <2 x float> poison, float %i.at, i64 0
  %i.ch = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ci = insertelement <2 x float> poison, float %i.bq, i64 0
  %i.cj = insertelement <2 x float> %i.ci, float %i.br, i64 1
  %i.ck = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ch, <2 x float> zeroinitializer, <2 x float> %i.cj)
  store <2 x float> %i.ck, ptr %i.cf, align 8
  %.sroa.10.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 2568
  store float %i.bz, ptr %.sroa.10.16..sroa_idx.i, align 8
  %.sroa.1119.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 2572
  store float 0.000000e+00, ptr %.sroa.1119.16..sroa_idx.i, align 4, !tbaa !149
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 2576
  %i.cm = extractelement <2 x float> %i.bx, i64 1
  %i.cn = fadd float %i.cm, %i.av
  %i.co = insertelement <4 x float> <float poison, float poison, float -0.000000e+00, float -0.000000e+00>, float %i.av, i64 0
  %i.cp = shufflevector <4 x float> %i.co, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.cq = shufflevector <2 x float> %i.bu, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.cr = insertelement <4 x float> %i.cq, float 0.000000e+00, i64 3
  %i.cs = insertelement <4 x float> %i.cr, float %i.cn, i64 2
  %i.ct = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cp, <4 x float> zeroinitializer, <4 x float> %i.cs)
  store <4 x float> %i.ct, ptr %i.cl, align 8
  tail call void @_ZN23btReducedDeformableBody19updateInertiaTensorEv(ptr noundef nonnull align 8 dereferenceable(3176) %0)
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 2592
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 2640
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cv, ptr noundef nonnull align 8 dereferenceable(48) %i.cu, i64 16, i1 false), !tbaa.struct !150
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 2608
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 2656
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cx, ptr noundef nonnull align 8 dereferenceable(16) %i.cw, i64 16, i1 false), !tbaa.struct !150
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 2624
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 2672
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cz, ptr noundef nonnull align 8 dereferenceable(16) %i.cy, i64 16, i1 false), !tbaa.struct !150
  tail call void @_ZN23btReducedDeformableBody22internalInitializationEv(ptr noundef nonnull align 8 dereferenceable(3176) %0)
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv ; 2 uses
  %i.db = load float, ptr %i.da, align 4, !tbaa !142
  %i.dc = fmul float %i.c, %i.db
  store float %i.dc, ptr %i.da, align 4, !tbaa !142
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !293
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN23btReducedDeformableBody12applyDampingEf(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(3176) %0, float noundef %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2392
  %i.b = load float, ptr %i.a, align 8, !tbaa !295
  %i.c = fsub float 1.000000e+00, %i.b            ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2360 ; 2 uses
  %i.e = load <2 x float>, ptr %i.d, align 8, !tbaa !142
  %i.f = insertelement <2 x float> poison, float %i.c, i64 0
  %i.g = shufflevector <2 x float> %i.f, <2 x float> poison, <2 x i32> zeroinitializer
  %i.h = fmul <2 x float> %i.g, %i.e
  store <2 x float> %i.h, ptr %i.d, align 8, !tbaa !142
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2368 ; 2 uses
  %i.j = load float, ptr %i.i, align 8, !tbaa !142
  %i.k = fmul float %i.c, %i.j
  store float %i.k, ptr %i.i, align 8, !tbaa !142
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2396 ; 2 uses
  %i.m = load float, ptr %i.l, align 4, !tbaa !296 ; 2 uses
  %i.n = fsub float 1.000000e+00, %i.m
  %i.o = fmul float %i.m, %i.n
  store float %i.o, ptr %i.l, align 4, !tbaa !296
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN23btReducedDeformableBody19applyCentralImpulseERK9btVector3(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(3176) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2400
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load float, ptr %i.b, align 4, !tbaa !142
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2408
  %i.e = load float, ptr %i.d, align 8, !tbaa !142
  %i.f = fmul float %i.c, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2356
  %i.h = load float, ptr %i.g, align 4, !tbaa !142 ; 2 uses
  %i.i = fmul float %i.h, %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2360 ; 2 uses
  %i.k = load <2 x float>, ptr %1, align 4, !tbaa !142
  %i.l = load <2 x float>, ptr %i.a, align 8, !tbaa !142
  %i.m = fmul <2 x float> %i.k, %i.l
  %i.n = insertelement <2 x float> poison, float %i.h, i64 0
  %i.o = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> zeroinitializer
  %i.p = fmul <2 x float> %i.m, %i.o
  %i.q = load <2 x float>, ptr %i.j, align 8, !tbaa !142
  %i.r = fadd <2 x float> %i.p, %i.q
  store <2 x float> %i.r, ptr %i.j, align 8, !tbaa !142
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 2368 ; 2 uses
  %i.t = load float, ptr %i.s, align 8, !tbaa !142
  %i.u = fadd float %i.i, %i.t
  store float %i.u, ptr %i.s, align 8, !tbaa !142
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN23btReducedDeformableBody18applyTorqueImpulseERK9btVector3(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(3176) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2640
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 2644
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2648
  %i.d = load <4 x float>, ptr %i.c, align 8
  %i.e = shufflevector <4 x float> %i.d, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2656
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 2660
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2664
  %i.i = load float, ptr %i.h, align 8, !tbaa !142
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2672
  %i.k = load float, ptr %i.j, align 8, !tbaa !142
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2676
  %i.m = load float, ptr %i.l, align 4, !tbaa !142
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2680
  %i.o = load float, ptr %i.n, align 8, !tbaa !142
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2416
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2424
  %i.r = load float, ptr %i.q, align 8, !tbaa !142
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 2376 ; 2 uses
  %i.t = load <2 x float>, ptr %i.a, align 8, !tbaa !142
  %4 = load float, ptr %2, align 4, !tbaa !142
  %i.u = load float, ptr %i.b, align 4, !tbaa !142 ; 3 uses
  %i.v = load float, ptr %1, align 4, !tbaa !142  ; 2 uses
  %i.w = load float, ptr %i.f, align 4, !tbaa !142 ; 2 uses
  %i.x = load <2 x float>, ptr %i.g, align 8, !tbaa !142
  %5 = load float, ptr %3, align 4, !tbaa !142
  %6 = fmul float %i.u, %5
  %7 = fmul float %4, %i.u
  %8 = shufflevector <2 x float> %i.t, <2 x float> %i.x, <2 x i32> <i32 0, i32 2>
  %9 = insertelement <2 x float> poison, float %i.v, i64 0
  %10 = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> zeroinitializer
  %i.y = insertelement <2 x float> poison, float %7, i64 0
  %11 = insertelement <2 x float> %i.y, float %6, i64 1
  %i.z = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %8, <2 x float> %10, <2 x float> %11)
  %i.aa = insertelement <2 x float> %i.e, float %i.i, i64 1
  %i.ab = insertelement <2 x float> poison, float %i.w, i64 0
  %i.ac = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ad = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aa, <2 x float> %i.ac, <2 x float> %i.z)
  %i.ae = fmul float %i.u, %i.m
  %i.af = tail call float @llvm.fmuladd.f32(float %i.k, float %i.v, float %i.ae)
  %i.ag = tail call noundef float @llvm.fmuladd.f32(float %i.o, float %i.w, float %i.af)
  %i.ah = load <2 x float>, ptr %i.p, align 8, !tbaa !142
  %i.ai = fmul <2 x float> %i.ad, %i.ah
  %i.aj = fmul float %i.ag, %i.r
  %i.ak = load <2 x float>, ptr %i.s, align 8, !tbaa !142
  %i.al = fadd <2 x float> %i.ai, %i.ak
  store <2 x float> %i.al, ptr %i.s, align 8, !tbaa !142
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 2384 ; 2 uses
  %i.an = load float, ptr %i.am, align 8, !tbaa !142
  %i.ao = fadd float %i.aj, %i.an
  store float %i.ao, ptr %i.am, align 8, !tbaa !142
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN23btReducedDeformableBody25internalApplyRigidImpulseERK9btVector3S2_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(3176) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2356 ; 2 uses
  %i.b = load float, ptr %i.a, align 4, !tbaa !154 ; 2 uses
  %i.c = fcmp oeq float %i.b, 0.000000e+00
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 51) ; 0 uses
  %.pre = load float, ptr %i.a, align 4, !tbaa !142
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi float [ %.pre, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2400
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load float, ptr %i.g, align 4, !tbaa !142
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2408
  %i.j = load float, ptr %i.i, align 8, !tbaa !142 ; 2 uses
  %i.k = fmul float %i.h, %i.j
  %i.l = fmul float %i.e, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2240 ; 2 uses
  %i.n = load <2 x float>, ptr %1, align 4, !tbaa !142
  %i.o = load <2 x float>, ptr %i.f, align 8, !tbaa !142 ; 2 uses
  %i.p = fmul <2 x float> %i.n, %i.o
  %i.q = insertelement <2 x float> poison, float %i.e, i64 0
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> zeroinitializer
  %i.s = fmul <2 x float> %i.p, %i.r
  %i.t = load <2 x float>, ptr %i.m, align 8, !tbaa !142
  %i.u = fadd <2 x float> %i.s, %i.t
  store <2 x float> %i.u, ptr %i.m, align 8, !tbaa !142
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 2248 ; 2 uses
  %i.w = load float, ptr %i.v, align 8, !tbaa !142
  %i.x = fadd float %i.l, %i.w
  store float %i.x, ptr %i.v, align 8, !tbaa !142
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 2640
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2648
  %i.aa = load float, ptr %i.z, align 8, !tbaa !142
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 2656
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 2664
  %i.ad = load float, ptr %i.ac, align 8, !tbaa !142
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 2672
  %i.af = load float, ptr %i.ae, align 8, !tbaa !142
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2676
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !142
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 2680
  %i.aj = load float, ptr %i.ai, align 8, !tbaa !142
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 2416
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 2424
  %i.am = load float, ptr %i.al, align 8, !tbaa !142
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 2256 ; 2 uses
  %i.ao = load <3 x float>, ptr %1, align 4, !tbaa !142
  %i.ap = shufflevector <2 x float> %i.o, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.aq = insertelement <3 x float> %i.ap, float %i.j, i64 2
  %i.ar = fmul <3 x float> %i.aq, %i.ao           ; 2 uses
  %i.as = load <3 x float>, ptr %2, align 4, !tbaa !142 ; 2 uses
  %i.at = shufflevector <3 x float> %i.as, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.au = fneg <3 x float> %i.ar
  %i.av = shufflevector <3 x float> %i.au, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.aw = fmul <3 x float> %i.as, %i.av
  %i.ax = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.at, <3 x float> %i.ar, <3 x float> %i.aw) ; 6 uses
  %i.ay = load <2 x float>, ptr %i.y, align 8, !tbaa !142 ; 2 uses
  %i.az = load <2 x float>, ptr %i.ab, align 8, !tbaa !142 ; 2 uses
  %i.ba = shufflevector <2 x float> %i.ay, <2 x float> %i.az, <2 x i32> <i32 1, i32 3>
  %i.bb = shufflevector <3 x float> %i.ax, <3 x float> poison, <2 x i32> zeroinitializer
  %i.bc = fmul <2 x float> %i.ba, %i.bb
  %i.bd = shufflevector <2 x float> %i.ay, <2 x float> %i.az, <2 x i32> <i32 0, i32 2>
  %i.be = shufflevector <3 x float> %i.ax, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.bf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bd, <2 x float> %i.be, <2 x float> %i.bc)
  %i.bg = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.bh = insertelement <2 x float> %i.bg, float %i.ad, i64 1
  %i.bi = shufflevector <3 x float> %i.ax, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bh, <2 x float> %i.bi, <2 x float> %i.bf)
  %i.bk = extractelement <3 x float> %i.ax, i64 0
  %i.bl = fmul float %i.bk, %i.ah
  %i.bm = extractelement <3 x float> %i.ax, i64 2
  %i.bn = tail call float @llvm.fmuladd.f32(float %i.af, float %i.bm, float %i.bl)
  %i.bo = extractelement <3 x float> %i.ax, i64 1
  %i.bp = tail call noundef float @llvm.fmuladd.f32(float %i.aj, float %i.bo, float %i.bn)
  %i.bq = load <2 x float>, ptr %i.ak, align 8, !tbaa !142
  %i.br = fmul <2 x float> %i.bj, %i.bq
  %i.bs = fmul float %i.bp, %i.am
  %i.bt = load <2 x float>, ptr %i.an, align 8, !tbaa !142
  %i.bu = fadd <2 x float> %i.br, %i.bt
  store <2 x float> %i.bu, ptr %i.an, align 8, !tbaa !142
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 2264 ; 2 uses
  %i.bw = load float, ptr %i.bv, align 8, !tbaa !142
  %i.bx = fadd float %i.bs, %i.bw
  store float %i.bx, ptr %i.bv, align 8, !tbaa !142
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZN23btReducedDeformableBody14getRelativePosEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(3176) %0, i32 noundef %1) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.0.0.copyload = load float, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 76
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.8.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 92
  %.sroa.9.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load <4 x float>, ptr %.sroa.9.16..sroa_idx, align 8
  %i.d = shufflevector <4 x float> %i.c, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.sroa.12.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 108
  %.sroa.13.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.sroa.13.32.copyload = load float, ptr %.sroa.13.32..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2224
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !132
  %i.h = sext i32 %1 to i64
  %i.i = getelementptr inbounds [16 x i8], ptr %i.g, i64 %i.h ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load <2 x float>, ptr %i.b, align 8
  %.sroa.8.16.copyload = load float, ptr %.sroa.8.16..sroa_idx, align 4
  %i.m = load <2 x float>, ptr %i.e, align 8
  %.sroa.12.32.copyload = load float, ptr %.sroa.12.32..sroa_idx, align 4
  %i.n = load float, ptr %i.j, align 4, !tbaa !142 ; 3 uses
  %i.o = load float, ptr %i.i, align 4, !tbaa !142 ; 2 uses
  %i.p = load float, ptr %i.k, align 4, !tbaa !142 ; 2 uses
  %i.q = fmul float %.sroa.4.0.copyload, %i.n
  %i.r = tail call float @llvm.fmuladd.f32(float %.sroa.0.0.copyload, float %i.o, float %i.q)
  %i.s = tail call noundef float @llvm.fmuladd.f32(float %.sroa.5.0.copyload, float %i.p, float %i.r)
  %2 = fmul float %.sroa.12.32.copyload, %i.n
  %3 = fmul float %.sroa.8.16.copyload, %i.n
  %4 = shufflevector <2 x float> %i.l, <2 x float> %i.m, <2 x i32> <i32 0, i32 2>
  %5 = insertelement <2 x float> poison, float %i.o, i64 0
  %6 = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> zeroinitializer
  %i.t = insertelement <2 x float> poison, float %3, i64 0
  %7 = insertelement <2 x float> %i.t, float %2, i64 1
  %i.u = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %4, <2 x float> %6, <2 x float> %7)
  %i.v = insertelement <2 x float> %i.d, float %.sroa.13.32.copyload, i64 1
  %i.w = insertelement <2 x float> poison, float %i.p, i64 0
  %i.x = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> zeroinitializer
  %i.y = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.v, <2 x float> %i.x, <2 x float> %i.u) ; 2 uses
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.s, i64 0
  %i.z = shufflevector <2 x float> %.sroa.0.0.vec.insert.i, <2 x float> %i.y, <2 x i32> <i32 0, i32 2>
  %i.aa = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.y, <2 x i32> <i32 3, i32 1>
  %.fca.0.insert.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.z, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i, <2 x float> %i.aa, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN23btReducedDeformableBody16getImpulseFactorEi(ptr dead_on_unwind noalias nofree writable writeonly sret(%class.btMatrix3x3) align 4 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(3176) %1, i32 noundef %2) unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.btAlignedObjectArray.4, align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.10297.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 76
  %.sroa.16303.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.29316.16..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 92
  %.sroa.35.16..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.sroa.48.32..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 108
  %.sroa.54.32..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2224 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !132
  %i.f = sext i32 %2 to i64                       ; 2 uses
  %i.g = getelementptr inbounds [16 x i8], ptr %i.e, i64 %i.f ; 3 uses
  %i.h = load float, ptr %i.g, align 4, !tbaa !142 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.j = load float, ptr %i.i, align 4, !tbaa !142 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.l = load float, ptr %i.k, align 4, !tbaa !142 ; 3 uses
  %i.m = load <2 x float>, ptr %i.a, align 8      ; 6 uses
  %i.n = load <2 x float>, ptr %i.b, align 8      ; 7 uses
  %i.o = load <2 x float>, ptr %i.c, align 8      ; 6 uses
  %i.p = load <2 x float>, ptr %.sroa.10297.0..sroa_idx, align 4 ; 4 uses
  %.sroa.16303.0.copyload = load float, ptr %.sroa.16303.0..sroa_idx, align 8 ; 5 uses
  %i.q = load <2 x float>, ptr %.sroa.29316.16..sroa_idx, align 4 ; 5 uses
  %.sroa.35.16.copyload = load float, ptr %.sroa.35.16..sroa_idx, align 8 ; 4 uses
  %i.r = load <2 x float>, ptr %.sroa.48.32..sroa_idx, align 4 ; 5 uses
  %.sroa.54.32.copyload = load float, ptr %.sroa.54.32..sroa_idx, align 8 ; 8 uses
  %i.s = extractelement <2 x float> %i.p, i64 0   ; 4 uses
  %i.t = fmul float %i.s, %i.j
  %i.u = extractelement <2 x float> %i.m, i64 0   ; 4 uses
  %i.v = tail call float @llvm.fmuladd.f32(float %i.u, float %i.h, float %i.t)
  %i.w = tail call noundef float @llvm.fmuladd.f32(float %.sroa.16303.0.copyload, float %i.l, float %i.v) ; 4 uses
  %i.x = extractelement <2 x float> %i.q, i64 0   ; 3 uses
  %i.y = fmul float %i.x, %i.j
  %i.z = extractelement <2 x float> %i.n, i64 0   ; 2 uses
  %i.aa = tail call float @llvm.fmuladd.f32(float %i.z, float %i.h, float %i.y)
  %i.ab = extractelement <2 x float> %i.r, i64 0  ; 5 uses
  %i.ac = fmul float %i.ab, %i.j
  %i.ad = extractelement <2 x float> %i.o, i64 0  ; 5 uses
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.ad, float %i.h, float %i.ac)
  %i.af = tail call noundef float @llvm.fmuladd.f32(float %.sroa.35.16.copyload, float %i.l, float %i.aa) ; 5 uses
  %i.ag = tail call noundef float @llvm.fmuladd.f32(float %.sroa.54.32.copyload, float %i.l, float %i.ae) ; 6 uses
  %i.ah = fneg float %i.ag                        ; 4 uses
  %i.ai = fneg float %i.w                         ; 4 uses
  %i.aj = fneg float %i.af                        ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 3088 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !128
  %i.am = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.f
  %i.an = load float, ptr %i.am, align 4, !tbaa !142
  %i.ao = fcmp ogt float %i.an, 0.000000e+00
  br i1 %i.ao, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 2352
  %i.aq = load float, ptr %i.ap, align 8, !tbaa !153
  %i.ar = fdiv float 1.000000e+00, %i.aq
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.as = phi float [ %i.ar, %bb.b ], [ 0.000000e+00, %bb.a ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 2640 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 2656 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 2672 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 2644 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 2660 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 2676 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 2680
  %i.ba = load float, ptr %i.ax, align 4, !tbaa !142, !noalias !311 ; 2 uses
  %i.bb = load <3 x float>, ptr %i.au, align 8, !tbaa !142, !noalias !311 ; 2 uses
  %i.bc = fmul float %i.ba, %i.ah
  %i.bd = load float, ptr %i.aw, align 4, !tbaa !142, !noalias !311 ; 2 uses
  %i.be = load <3 x float>, ptr %i.at, align 8, !tbaa !142, !noalias !311 ; 2 uses
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.bd, float 0.000000e+00, float %i.bc)
  %i.bg = load float, ptr %i.ay, align 4, !tbaa !142, !noalias !311 ; 2 uses
  %i.bh = load <3 x float>, ptr %i.av, align 8, !tbaa !142, !noalias !311 ; 2 uses
  %i.bi = tail call noundef float @llvm.fmuladd.f32(float %i.bg, float %i.af, float %i.bf) ; 2 uses
  %i.bj = fmul float %i.ba, 0.000000e+00
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.bd, float %i.ag, float %i.bj)
  %i.bl = tail call noundef float @llvm.fmuladd.f32(float %i.bg, float %i.ai, float %i.bk) ; 2 uses
  %i.bm = insertelement <3 x float> poison, float %i.w, i64 0 ; 2 uses
  %i.bn = shufflevector <3 x float> %i.bm, <3 x float> poison, <3 x i32> zeroinitializer
  %i.bo = fmul <3 x float> %i.bn, %i.bb
  %i.bp = insertelement <3 x float> poison, float %i.aj, i64 0
  %i.bq = shufflevector <3 x float> %i.bp, <3 x float> poison, <3 x i32> zeroinitializer
  %i.br = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.be, <3 x float> %i.bq, <3 x float> %i.bo)
  %i.bs = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bh, <3 x float> zeroinitializer, <3 x float> %i.br) ; 4 uses
  %i.bt = fmul float %i.ag, %i.bi
  %i.bu = shufflevector <3 x float> %i.bs, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bv = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.ai, i64 1
  %i.bw = fmul <2 x float> %i.bu, %i.bv
  %i.bx = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.by = insertelement <2 x float> %i.bx, float %i.af, i64 1
  %i.bz = shufflevector <3 x float> %i.bs, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ca = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.by, <2 x float> %i.bz, <2 x float> %i.bw)
  %i.cb = shufflevector <3 x float> %i.bm, <3 x float> <float poison, float 0.000000e+00, float poison>, <2 x i32> <i32 0, i32 4>
  %i.cc = shufflevector <3 x float> %i.bs, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.cd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cb, <2 x float> %i.cc, <2 x float> %i.ca)
  %i.ce = shufflevector <3 x float> %i.bb, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison> ; 4 uses
  %i.cf = shufflevector <4 x float> %i.ce, <4 x float> <float poison, float poison, float -0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 6, i32 7>
  %i.cg = insertelement <4 x float> <float poison, float poison, float 1.000000e+00, float poison>, float %i.ah, i64 0 ; 3 uses
  %i.ch = shufflevector <4 x float> %i.cg, <4 x float> %i.ce, <4 x i32> <i32 0, i32 0, i32 2, i32 4>
  %i.ci = fmul <4 x float> %i.cf, %i.ch
  %i.cj = shufflevector <3 x float> %i.be, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison> ; 4 uses
  %i.ck = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, <4 x float> %i.cj, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.cl = shufflevector <4 x float> %i.cj, <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, <4 x i32> <i32 0, i32 0, i32 6, i32 poison>
  %i.cm = insertelement <4 x float> %i.cl, float %i.ag, i64 3 ; 2 uses
  %i.cn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ck, <4 x float> %i.cm, <4 x float> %i.ci)
  %i.co = shufflevector <3 x float> %i.bh, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison> ; 2 uses
  %i.cp = shufflevector <4 x float> %i.co, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 5, i32 0>
  %i.cq = insertelement <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, float %i.af, i64 0
  %i.cr = insertelement <4 x float> %i.cq, float %i.ai, i64 3
  %i.cs = shufflevector <4 x float> %i.cr, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3> ; 5 uses
  %i.ct = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cp, <4 x float> %i.cs, <4 x float> %i.cn) ; 3 uses
  %i.cu = shufflevector <4 x float> %i.ce, <4 x float> <float poison, float poison, float -0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 2, i32 2, i32 6, i32 7>
  %i.cv = shufflevector <4 x float> %i.cg, <4 x float> %i.ce, <4 x i32> <i32 0, i32 0, i32 poison, i32 6>
  %i.cw = insertelement <4 x float> %i.cv, float 1.000000e+00, i64 2
  %i.cx = fmul <4 x float> %i.cu, %i.cw
  %i.cy = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, <4 x float> %i.cj, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.cz = shufflevector <4 x float> %i.cj, <4 x float> %i.cm, <4 x i32> <i32 2, i32 2, i32 poison, i32 7> ; 2 uses
  %i.da = insertelement <4 x float> %i.cz, float -0.000000e+00, i64 2
  %i.db = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cy, <4 x float> %i.da, <4 x float> %i.cx)
  %i.dc = shufflevector <4 x float> %i.co, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 2, i32 2, i32 5, i32 2>
  %i.dd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dc, <4 x float> %i.cs, <4 x float> %i.db) ; 3 uses
  %i.de = extractelement <4 x float> %i.ct, i64 0
  %i.df = tail call float @llvm.fmuladd.f32(float %i.de, float 0.000000e+00, float %i.bt)
  %i.dg = extractelement <4 x float> %i.dd, i64 0
  %i.dh = tail call noundef float @llvm.fmuladd.f32(float %i.aj, float %i.dg, float %i.df)
  %i.di = insertelement <4 x float> %i.cz, float 0.000000e+00, i64 2
  %i.dj = insertelement <4 x float> %i.di, float %i.bi, i64 0
  %i.dk = shufflevector <4 x float> %i.dj, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.dl = insertelement <4 x float> <float 0.000000e+00, float poison, float 1.000000e+00, float poison>, float %i.ai, i64 1 ; 2 uses
  %i.dm = insertelement <4 x float> %i.dl, float %i.bl, i64 3
  %i.dn = fmul <4 x float> %i.dk, %i.dm
  %i.do = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, float %i.ah, i64 0
  %i.dp = insertelement <4 x float> %i.do, float %i.af, i64 1 ; 2 uses
  %i.dq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dp, <4 x float> %i.ct, <4 x float> %i.dn)
  %i.dr = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float poison>, float %i.w, i64 0
  %i.ds = insertelement <4 x float> %i.dr, float %i.aj, i64 3 ; 2 uses
  %i.dt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ds, <4 x float> %i.dd, <4 x float> %i.dq)
  %i.du = fsub float %i.as, %i.dh                 ; 2 uses
  %i.dv = fsub <4 x float> zeroinitializer, %i.dt ; 2 uses
  %i.dw = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, float %i.bl, i64 0
  %i.dx = insertelement <4 x float> %i.dw, float %i.ag, i64 3
  %i.dy = shufflevector <4 x float> %i.dx, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.dz = shufflevector <3 x float> %i.bs, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison> ; 3 uses
  %i.ea = shufflevector <4 x float> %i.dl, <4 x float> %i.dz, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.eb = fmul <4 x float> %i.dy, %i.ea
  %i.ec = shufflevector <4 x float> %i.ct, <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, <4 x i32> <i32 3, i32 3, i32 6, i32 poison>
  %i.ed = shufflevector <4 x float> %i.ec, <4 x float> %i.dz, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ee = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dp, <4 x float> %i.ed, <4 x float> %i.eb)
  %i.ef = shufflevector <4 x float> %i.dd, <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, <4 x i32> <i32 3, i32 3, i32 6, i32 poison>
  %i.eg = shufflevector <4 x float> %i.ef, <4 x float> %i.dz, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.eh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ds, <4 x float> %i.eg, <4 x float> %i.ee)
  %i.ei = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.as, i64 0
  %i.ej = fsub <4 x float> %i.ei, %i.eh           ; 2 uses
  %i.ek = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.as, i64 1
  %i.el = fsub <2 x float> %i.ek, %i.cd           ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 2712 ; 3 uses
  %i.en = load i32, ptr %i.em, align 8, !tbaa !139 ; 14 uses
  %i.eo = icmp sgt i32 %i.en, 0                   ; 2 uses
  %i.ep = mul nsw i32 %2, 3                       ; 2 uses
  br i1 %i.eo, label %.split352, label %.split353

.split352:                                        ; preds = %bb.c
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 2128
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 2096
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 2736
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !124 ; 25 uses
  %i.eu = load ptr, ptr %i.er, align 8, !tbaa !124 ; 25 uses
  %i.ev = load ptr, ptr %i.eq, align 8, !tbaa !124 ; 25 uses
  %i.ew = sext i32 %i.ep to i64                   ; 29 uses
  %wide.trip.count = zext nneg i32 %i.en to i64   ; 18 uses
  %i.ex = add nsw i64 %wide.trip.count, -1        ; 8 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ey = icmp eq i64 %i.ex, 0
  br i1 %i.ey, label %.epil.preheader, label %.split352.new

.split352.new:                                    ; preds = %.split352
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.g

.split353.loopexit:                               ; preds = %._crit_edge.1.2
  %i.ez = insertelement <3 x float> poison, float %.lcssa501, i64 0
  %i.fa = insertelement <3 x float> %i.ez, float %.lcssa503, i64 1
end_hunk_0
