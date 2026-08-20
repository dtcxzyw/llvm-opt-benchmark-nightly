inline.NumInlined: 892
inline.NumDeleted: 188
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN17b3PgsJacobiSolver14initSolverBodyEiP12b3SolverBodyP15b3RigidBodyData:bb.a
  %i.ab = fadd float %i.y, %i.aa
  %i.ac = fsub float 1.000000e+00, %i.ab
  %i.ad = fsub float %i.w, %i.u
  %i.ae = fadd float %i.x, %i.t
  %i.af = fadd float %i.w, %i.u
  %i.ag = fadd float %i.v, %i.aa
  %i.ah = fsub float 1.000000e+00, %i.ag
  %i.ai = fsub float %i.z, %i.s
  %i.aj = fsub float %i.x, %i.t
  %i.ak = fadd float %i.z, %i.s
  %i.al = fadd float %i.v, %i.y
  %i.am = fsub float 1.000000e+00, %i.al
  store float %i.ac, ptr %2, align 16
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %i.ad, ptr %.sroa.443.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %i.ae, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  store float 0.000000e+00, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !17
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16
  store float %i.af, ptr %i.an, align 16
  %.sroa.9.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20
  store float %i.ah, ptr %.sroa.9.16..sroa_idx, align 4
  %.sroa.10.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  store float %i.ai, ptr %.sroa.10.16..sroa_idx, align 8
  %.sroa.11.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 28
  store float 0.000000e+00, ptr %.sroa.11.16..sroa_idx, align 4, !tbaa !17
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 32
  store float %i.aj, ptr %i.ao, align 16
  %.sroa.14.32..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 36
  store float %i.ak, ptr %.sroa.14.32..sroa_idx, align 4
  %.sroa.15.32..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  store float %i.am, ptr %.sroa.15.32..sroa_idx, align 8
  %.sroa.16.32..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 44
  store float 0.000000e+00, ptr %.sroa.16.32..sroa_idx, align 4, !tbaa !17
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ap, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.17, i64 16, i1 false), !tbaa.struct !81
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17)
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !85 ; 2 uses
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.ar, i64 0
  %.sroa.0.4.vec.insert.i = shufflevector <2 x float> %.sroa.0.0.vec.insert.i, <2 x float> poison, <2 x i32> zeroinitializer
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ar, i64 0
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 128
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %i.as, align 16
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 136
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.441.0..sroa_idx, align 8, !tbaa !17
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 208
  store i32 %1, ptr %i.at, align 16, !tbaa !17
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 96
  store <2 x float> splat (float 1.000000e+00), ptr %i.au, align 16
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 104
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !17
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 112
  store <2 x float> splat (float 1.000000e+00), ptr %i.av, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 120
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !17
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 176
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ax, ptr noundef nonnull align 16 dereferenceable(16) %i.aw, i64 16, i1 false), !tbaa.struct !81
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 192
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.az, ptr noundef nonnull align 16 dereferenceable(16) %i.ay, i64 16, i1 false), !tbaa.struct !81
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store float 1.000000e+00, ptr %2, align 16, !tbaa !17
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ba, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bb, align 4, !tbaa !17
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bd, align 8, !tbaa !17
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.be, i8 0, i64 20, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bf, i8 0, i64 16, i1 false)
  store i32 %1, ptr %i.bg, align 16, !tbaa !17
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 96
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.bh, align 16, !tbaa !17
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 112
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.bi, align 16, !tbaa !17
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.bj, i8 0, i64 32, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef float @_ZN17b3PgsJacobiSolver16restitutionCurveEff(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(448) %0, float noundef %1, float noundef %2) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = fneg float %1
  %i.b = fmul float %2, %i.a
  ret float %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN17b3PgsJacobiSolver23setupFrictionConstraintEP15b3RigidBodyDataP13b3InertiaDataR18b3SolverConstraintRK9b3Vector3iiR14b3ContactPointS8_S8_S1_S1_fff(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(448) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull align 16 captures(none) dereferenceable(160) initializes((0, 88), (96, 120), (128, 136), (144, 152)) %3, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %4, i32 noundef %5, i32 noundef %6, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(128) %7, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %8, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %9, ptr nofree readnone captures(none) %10, ptr nofree readnone captures(none) %11, float noundef %12, float noundef %13, float noundef %14) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !81
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27   ; 2 uses
  %i.d = sext i32 %5 to i64
  %i.e = getelementptr inbounds [240 x i8], ptr %i.c, i64 %i.d ; 5 uses
  %i.f = sext i32 %6 to i64
  %i.g = getelementptr inbounds [240 x i8], ptr %i.c, i64 %i.f ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 208 ; 3 uses
  %i.i = load i32, ptr %i.h, align 16, !tbaa !17
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [80 x i8], ptr %1, i64 %i.j ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 208 ; 3 uses
  %i.m = load i32, ptr %i.l, align 16, !tbaa !17
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [80 x i8], ptr %1, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 144
  store i32 %5, ptr %i.p, align 16, !tbaa !89
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 148
  store i32 %6, ptr %i.q, align 4, !tbaa !90
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 60
  %i.s = load float, ptr %i.r, align 4, !tbaa !91
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 96
  store float %i.s, ptr %i.t, align 16, !tbaa !92
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 128
  store ptr null, ptr %i.u, align 16, !tbaa !17
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 80
  store <2 x float> zeroinitializer, ptr %i.v, align 16, !tbaa !14
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.z = load float, ptr %i.a, align 16, !tbaa !17 ; 5 uses
  %i.aa = load float, ptr %8, align 16, !tbaa !17 ; 2 uses
  %i.ab = load <2 x float>, ptr %i.y, align 4, !tbaa !17 ; 8 uses
  %i.ac = extractelement <2 x float> %i.ab, i64 0
  %i.ad = fneg float %i.z                         ; 2 uses
  %i.ae = load <2 x float>, ptr %i.w, align 4, !tbaa !17 ; 3 uses
  %i.af = fneg <2 x float> %i.ab                  ; 3 uses
  %i.ag = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ah = insertelement <2 x float> %i.ag, float %i.aa, i64 1
  %i.ai = fmul <2 x float> %i.ah, %i.af
  %i.aj = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ak = insertelement <2 x float> %i.aj, float %i.z, i64 1
  %i.al = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ae, <2 x float> %i.ak, <2 x float> %i.ai) ; 7 uses
  %i.am = extractelement <2 x float> %i.ae, i64 0
  %i.an = fmul float %i.am, %i.ad
  %i.ao = tail call float @llvm.fmuladd.f32(float %i.aa, float %i.ac, float %i.an) ; 4 uses
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ao, i64 0
  store <2 x float> %i.al, ptr %3, align 16
  %.sroa.6150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.6150.0..sroa_idx, align 8, !tbaa !17
  %.not = icmp eq ptr %1, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ap = load i32, ptr %i.h, align 16, !tbaa !17
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [96 x i8], ptr %2, i64 %i.aq ; 7 uses
  %i.as = load float, ptr %i.ar, align 16, !tbaa !17
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.au = load float, ptr %i.at, align 4, !tbaa !17
  %i.av = extractelement <2 x float> %i.al, i64 1
  %i.aw = fmul float %i.av, %i.au
  %i.ax = extractelement <2 x float> %i.al, i64 0
  %i.ay = tail call float @llvm.fmuladd.f32(float %i.as, float %i.ax, float %i.aw)
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.ba = load float, ptr %i.az, align 8, !tbaa !17
  %i.bb = tail call noundef float @llvm.fmuladd.f32(float %i.ba, float %i.ao, float %i.ay)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.be = load float, ptr %i.bd, align 8, !tbaa !17
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.bh = load float, ptr %i.bg, align 8, !tbaa !17
  %i.bi = load <2 x float>, ptr %i.bc, align 16, !tbaa !17 ; 2 uses
  %i.bj = load <2 x float>, ptr %i.bf, align 16, !tbaa !17 ; 2 uses
  %i.bk = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bl = shufflevector <2 x float> %i.bi, <2 x float> %i.bj, <2 x i32> <i32 1, i32 3>
  %i.bm = fmul <2 x float> %i.bk, %i.bl
  %i.bn = shufflevector <2 x float> %i.bi, <2 x float> %i.bj, <2 x i32> <i32 0, i32 2>
  %i.bo = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bn, <2 x float> %i.bo, <2 x float> %i.bm)
  %i.bq = insertelement <2 x float> poison, float %i.be, i64 0
  %i.br = insertelement <2 x float> %i.bq, float %i.bh, i64 1
  %i.bs = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.bt = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.br, <2 x float> %i.bt, <2 x float> %i.bp) ; 2 uses
  %.sroa.0.0.vec.insert.i.i96 = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.bv = shufflevector <2 x float> %.sroa.0.0.vec.insert.i.i96, <2 x float> %i.bu, <2 x i32> <i32 0, i32 2>
  %i.bw = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.bu, <2 x i32> <i32 3, i32 1>
  %.fca.0.insert.i.i99 = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.bv, 0
  %.fca.1.insert.i.i100 = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i.i99, <2 x float> %i.bw, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.pn = phi { <2 x float>, <2 x float> } [ %.fca.1.insert.i.i100, %bb.b ], [ zeroinitializer, %bb.a ] ; 2 uses
  %.sroa.519.0 = extractvalue { <2 x float>, <2 x float> } %.pn, 1 ; 3 uses
  %.sroa.018.0 = extractvalue { <2 x float>, <2 x float> } %.pn, 0 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 48
  store <2 x float> %.sroa.018.0, ptr %i.bx, align 16
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 56
  store <2 x float> %.sroa.519.0, ptr %.sroa.519.0..sroa_idx, align 8, !tbaa !17
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.bz = load float, ptr %9, align 16, !tbaa !17 ; 2 uses
  %i.ca = load <2 x float>, ptr %i.by, align 4, !tbaa !17 ; 3 uses
  %i.cb = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cc = insertelement <2 x float> %i.cb, float %i.bz, i64 1
  %i.cd = fmul <2 x float> %i.ab, %i.cc
  %i.ce = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cf = insertelement <2 x float> %i.ce, float %i.ad, i64 1
  %i.cg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ca, <2 x float> %i.cf, <2 x float> %i.cd) ; 7 uses
  %i.ch = extractelement <2 x float> %i.ca, i64 0
  %i.ci = fmul float %i.z, %i.ch
  %i.cj = extractelement <2 x float> %i.af, i64 0
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.bz, float %i.cj, float %i.ci) ; 4 uses
  %.sroa.3.12.vec.insert.i.i108 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ck, i64 0
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 32
  store <2 x float> %i.cg, ptr %i.cl, align 16
  %.sroa.6148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  store <2 x float> %.sroa.3.12.vec.insert.i.i108, ptr %.sroa.6148.0..sroa_idx, align 8, !tbaa !17
  br i1 %.not, label %bb.d, label %.thread163

bb.d:                                             ; preds = %bb.c
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 424
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cm, i8 0, i64 16, i1 false)
  %i.co = load i8, ptr %i.cn, align 8, !tbaa !58, !range !63, !noundef !93
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %bb.j, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.k, i64 68
  %.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !85
  br label %bb.e

.thread163:                                       ; preds = %bb.c
  %i.cq = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cr = load i32, ptr %i.l, align 16, !tbaa !17
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [96 x i8], ptr %2, i64 %i.cs ; 7 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load float, ptr %i.cu, align 8, !tbaa !17
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cy = load float, ptr %i.cx, align 8, !tbaa !17
  %i.cz = load <2 x float>, ptr %i.ct, align 16, !tbaa !17 ; 2 uses
  %i.da = load <2 x float>, ptr %i.cw, align 16, !tbaa !17 ; 2 uses
  %i.db = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dc = shufflevector <2 x float> %i.cz, <2 x float> %i.da, <2 x i32> <i32 1, i32 3>
  %i.dd = fmul <2 x float> %i.db, %i.dc
  %i.de = shufflevector <2 x float> %i.cz, <2 x float> %i.da, <2 x i32> <i32 0, i32 2>
  %i.df = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.de, <2 x float> %i.df, <2 x float> %i.dd)
  %i.dh = insertelement <2 x float> poison, float %i.cv, i64 0
  %i.di = insertelement <2 x float> %i.dh, float %i.cy, i64 1
  %i.dj = insertelement <2 x float> poison, float %i.ck, i64 0
  %i.dk = shufflevector <2 x float> %i.dj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.di, <2 x float> %i.dk, <2 x float> %i.dg) ; 5 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  %i.dn = load float, ptr %i.dm, align 16, !tbaa !17
  %i.do = getelementptr inbounds nuw i8, ptr %i.ct, i64 36
  %i.dp = load float, ptr %i.do, align 4, !tbaa !17
  %i.dq = extractelement <2 x float> %i.cg, i64 1
  %i.dr = fmul float %i.dq, %i.dp
  %i.ds = extractelement <2 x float> %i.cg, i64 0
  %i.dt = tail call float @llvm.fmuladd.f32(float %i.dn, float %i.ds, float %i.dr)
  %i.du = getelementptr inbounds nuw i8, ptr %i.ct, i64 40
  %i.dv = load float, ptr %i.du, align 8, !tbaa !17
  %i.dw = tail call noundef float @llvm.fmuladd.f32(float %i.dv, float %i.ck, float %i.dt) ; 3 uses
  %.sroa.3.12.vec.insert.i.i113 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dw, i64 0
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 64
  store <2 x float> %i.dl, ptr %i.dx, align 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 72
  store <2 x float> %.sroa.3.12.vec.insert.i.i113, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !17
  %i.dy = load float, ptr %i.x, align 8, !tbaa !17 ; 2 uses
  %15 = fneg float %i.dy
  %16 = getelementptr inbounds nuw i8, ptr %i.k, i64 68
  %i.dz = load float, ptr %16, align 4, !tbaa !85 ; 2 uses
  %17 = load <4 x float>, ptr %4, align 16        ; 3 uses
  %18 = load float, ptr %i.cq, align 8, !tbaa !17
  %19 = getelementptr inbounds nuw i8, ptr %i.o, i64 68
  %i.ea = load float, ptr %19, align 4, !tbaa !85
  %20 = load <2 x float>, ptr %8, align 16, !tbaa !17 ; 3 uses
  %21 = load float, ptr %i.w, align 4, !tbaa !17
  %22 = fneg float %21
  %23 = extractelement <2 x float> %20, i64 0
  %i.eb = fneg float %23
  %24 = fneg float %i.dw
  %25 = load <2 x float>, ptr %9, align 16, !tbaa !17 ; 3 uses
  %26 = insertelement <2 x float> %.sroa.519.0, float %i.dw, i64 1
  %27 = insertelement <2 x float> %25, float %22, i64 0
  %28 = fmul <2 x float> %26, %27
  %29 = shufflevector <2 x float> %.sroa.018.0, <2 x float> poison, <2 x i32> <i32 1, i32 poison> ; 2 uses
  %30 = fneg <2 x float> %i.dl
  %31 = shufflevector <2 x float> %29, <2 x float> %30, <2 x i32> <i32 0, i32 3>
  %32 = insertelement <2 x float> poison, float %i.dy, i64 0
  %33 = insertelement <2 x float> %32, float %18, i64 1 ; 2 uses
  %34 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %31, <2 x float> %33, <2 x float> %28)
  %35 = shufflevector <2 x float> %.sroa.018.0, <2 x float> %i.dl, <2 x i32> <i32 0, i32 2>
  %36 = insertelement <2 x float> %33, float %15, i64 0
  %37 = fmul <2 x float> %35, %36
  %38 = insertelement <2 x float> %.sroa.519.0, float %24, i64 1
  %39 = shufflevector <2 x float> %20, <2 x float> %25, <2 x i32> <i32 0, i32 2> ; 2 uses
  %40 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %38, <2 x float> %39, <2 x float> %37)
  %41 = shufflevector <2 x float> %29, <2 x float> %i.dl, <2 x i32> <i32 0, i32 3>
  %42 = insertelement <2 x float> %39, float %i.eb, i64 0
  %43 = fmul <2 x float> %41, %42
  %44 = fneg <2 x float> %i.dl
  %45 = shufflevector <2 x float> %.sroa.018.0, <2 x float> %44, <2 x i32> <i32 0, i32 2>
  %46 = shufflevector <2 x float> %25, <2 x float> %20, <2 x i32> <i32 3, i32 1>
  %47 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %45, <2 x float> %46, <2 x float> %43)
  %48 = shufflevector <4 x float> %17, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %49 = fmul <2 x float> %40, %48
  %50 = shufflevector <4 x float> %17, <4 x float> poison, <2 x i32> zeroinitializer
  %51 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %50, <2 x float> %34, <2 x float> %49)
  %52 = shufflevector <4 x float> %17, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %53 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %52, <2 x float> %47, <2 x float> %51)
  %54 = insertelement <2 x float> poison, float %i.dz, i64 0
  %55 = insertelement <2 x float> %54, float %i.ea, i64 1
  %56 = fadd <2 x float> %55, %53                 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.ed = load i8, ptr %i.ec, align 8, !tbaa !58, !range !63, !noundef !93
  %i.ee = trunc nuw i8 %i.ed to i1
  br i1 %i.ee, label %.thread170, label %bb.e

.thread170:                                       ; preds = %.thread163
  %shift = shufflevector <2 x float> %56, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %56, %shift
  %57 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ef = fdiv float %12, %57                     ; 2 uses
  br label %bb.i

bb.e:                                             ; preds = %._crit_edge, %.thread163
  %i.eg = phi float [ %i.dz, %.thread163 ], [ %.pre, %._crit_edge ]
  %58 = phi <2 x float> [ %56, %.thread163 ], [ zeroinitializer, %._crit_edge ] ; 2 uses
  %59 = extractelement <2 x float> %58, i64 0     ; 2 uses
  %60 = extractelement <2 x float> %58, i64 1     ; 3 uses
  %i.eh = fadd float %60, %59
  %i.ei = fdiv float %12, %i.eh
  %i.ej = fcmp une float %i.eg, 0.000000e+00
  br i1 %i.ej, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ek = load i32, ptr %i.h, align 16, !tbaa !17
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !41
  %i.en = sext i32 %i.ek to i64
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.em, i64 %i.en
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !94
  %i.eq = sitofp i32 %i.ep to float
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.er = phi float [ %i.eq, %bb.f ], [ 1.000000e+00, %bb.e ]
  %i.es = getelementptr inbounds nuw i8, ptr %i.o, i64 68
  %i.et = load float, ptr %i.es, align 4, !tbaa !85
  %i.eu = fcmp une float %i.et, 0.000000e+00
  br i1 %i.eu, label %bb.h, label %.thread158

bb.h:                                             ; preds = %bb.g
  %i.ev = load i32, ptr %i.l, align 16, !tbaa !17
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !41
  %i.ey = sext i32 %i.ev to i64
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.ex, i64 %i.ey
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !94
  %i.fb = sitofp i32 %i.fa to float
  %i.fc = fmul float %60, %i.fb
  br label %.thread158

.thread158:                                       ; preds = %bb.h, %bb.g
  %i.fd = phi float [ %i.fc, %bb.h ], [ %60, %bb.g ]
  %i.fe = tail call float @llvm.fmuladd.f32(float %59, float %i.er, float %i.fd)
  %i.ff = fdiv float %12, %i.fe
  br label %bb.i

bb.i:                                             ; preds = %.thread170, %.thread158
  %.sink = phi float [ %i.ef, %.thread170 ], [ %i.ei, %.thread158 ]
  %.089162 = phi float [ %i.ef, %.thread170 ], [ %i.ff, %.thread158 ]
  %i.fg = getelementptr inbounds nuw i8, ptr %3, i64 100
  store float %.sink, ptr %i.fg, align 4, !tbaa !76
  %i.fh = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  %.sroa.0135.0.copyload = load <2 x float>, ptr %i.fh, align 16 ; 2 uses
  %.sroa.6136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 184
  %.sroa.6136.0.copyload = load <2 x float>, ptr %.sroa.6136.0..sroa_idx, align 8, !tbaa !17
  %i.fi = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  %.sroa.0133.0.copyload = load <2 x float>, ptr %i.fi, align 16
  %.sroa.6134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  %.sroa.6134.0.copyload = load <2 x float>, ptr %.sroa.6134.0..sroa_idx, align 8, !tbaa !17
  %i.fj = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  %.sroa.0131.0.copyload = load <2 x float>, ptr %i.fj, align 16 ; 2 uses
  %.sroa.6132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 184
  %.sroa.6132.0.copyload = load <2 x float>, ptr %.sroa.6132.0..sroa_idx, align 8, !tbaa !17
  %i.fk = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fl = shufflevector <2 x float> %.sroa.0135.0.copyload, <2 x float> %.sroa.0131.0.copyload, <2 x i32> <i32 1, i32 3>
  %i.fm = fmul <2 x float> %i.fk, %i.fl
  %i.fn = insertelement <2 x float> poison, float %i.z, i64 0
  %i.fo = shufflevector <2 x float> %i.fn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fp = shufflevector <2 x float> %.sroa.0135.0.copyload, <2 x float> %.sroa.0131.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.fq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fo, <2 x float> %i.fp, <2 x float> %i.fm)
  %i.fr = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fs = shufflevector <2 x float> %.sroa.6136.0.copyload, <2 x float> %.sroa.6132.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.ft = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fr, <2 x float> %i.fs, <2 x float> %i.fq)
  %i.fu = getelementptr inbounds nuw i8, ptr %i.g, i64 192
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.fu, align 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 200
  %.sroa.6.0.copyload = load <2 x float>, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !17
  br label %bb.k

bb.j:                                             ; preds = %bb.d
  %i.fv = fdiv float %12, 0.000000e+00            ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %3, i64 100
  store float %i.fv, ptr %i.fw, align 4, !tbaa !76
  %i.fx = fmul <2 x float> %i.ab, <float 0.000000e+00, float poison>
  %i.fy = insertelement <2 x float> poison, float %i.z, i64 0
  %i.fz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fy, <2 x float> <float 0.000000e+00, float poison>, <2 x float> %i.fx)
  %i.ga = shufflevector <2 x float> %i.fz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gb = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gb, <2 x float> zeroinitializer, <2 x float> %i.ga)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.0133.0201 = phi <2 x float> [ zeroinitializer, %bb.j ], [ %.sroa.0133.0.copyload, %bb.i ] ; 2 uses
  %.sroa.6134.0199 = phi <2 x float> [ zeroinitializer, %bb.j ], [ %.sroa.6134.0.copyload, %bb.i ]
  %.089161180197 = phi float [ %i.fv, %bb.j ], [ %.089162, %bb.i ]
  %.sroa.6.0 = phi <2 x float> [ zeroinitializer, %bb.j ], [ %.sroa.6.0.copyload, %bb.i ]
  %.sroa.0.0 = phi <2 x float> [ zeroinitializer, %bb.j ], [ %.sroa.0.0.copyload, %bb.i ] ; 2 uses
  %i.gd = phi <2 x float> [ %i.gc, %bb.j ], [ %i.ft, %bb.i ] ; 2 uses
  %.sroa.6134.8.vec.extract = extractelement <2 x float> %.sroa.6134.0199, i64 0
  %.sroa.0133.0.vec.extract = extractelement <2 x float> %.sroa.0133.0201, i64 0
  %foldExtExtBinop.a = fmul <2 x float> %.sroa.0133.0201, %i.al
  %i.ge = extractelement <2 x float> %foldExtExtBinop.a, i64 1
  %i.gf = extractelement <2 x float> %i.al, i64 0
  %i.gg = tail call float @llvm.fmuladd.f32(float %i.gf, float %.sroa.0133.0.vec.extract, float %i.ge)
  %i.gh = tail call noundef float @llvm.fmuladd.f32(float %i.ao, float %.sroa.6134.8.vec.extract, float %i.gg)
  %i.gi = extractelement <2 x float> %i.gd, i64 0
  %i.gj = fadd float %i.gi, %i.gh
  %.sroa.0.0.vec.extract = extractelement <2 x float> %.sroa.0.0, i64 0
  %foldExtExtBinop205 = fmul <2 x float> %.sroa.0.0, %i.cg
  %i.gk = extractelement <2 x float> %foldExtExtBinop205, i64 1
  %i.gl = extractelement <2 x float> %i.cg, i64 0
  %i.gm = tail call float @llvm.fmuladd.f32(float %i.gl, float %.sroa.0.0.vec.extract, float %i.gk)
  %.sroa.6.8.vec.extract = extractelement <2 x float> %.sroa.6.0, i64 0
  %i.gn = tail call noundef float @llvm.fmuladd.f32(float %i.ck, float %.sroa.6.8.vec.extract, float %i.gm)
  %i.go = extractelement <2 x float> %i.gd, i64 1
  %i.gp = fsub float %i.gn, %i.go
  %i.gq = fadd float %i.gj, %i.gp
  %i.gr = fsub float %13, %i.gq
  %i.gs = fmul float %.089161180197, %i.gr
  %i.gt = getelementptr inbounds nuw i8, ptr %3, i64 104
  store float %i.gs, ptr %i.gt, align 8, !tbaa !72
  %i.gu = getelementptr inbounds nuw i8, ptr %3, i64 108
  store float %14, ptr %i.gu, align 4, !tbaa !75
  %i.gv = getelementptr inbounds nuw i8, ptr %3, i64 112
  store <2 x float> <float 0.000000e+00, float 1.000000e+10>, ptr %i.gv, align 16, !tbaa !14
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 16 dereferenceable(160) ptr @_ZN17b3PgsJacobiSolver21addFrictionConstraintEP15b3RigidBodyDataP13b3InertiaDataRK9b3Vector3iiiR14b3ContactPointS6_S6_S1_S1_fff(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(448) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(128) %7, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %8, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %9, ptr nofree readnone captures(none) %10, ptr nofree readnone captures(none) %11, float noundef %12, float noundef %13, float noundef %14) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !35   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !36
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZN20b3AlignedObjectArrayI18b3SolverConstraintE21expandNonInitializingEv.exit

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i32 %i.b, 0
  %i.f = shl nsw i32 %i.b, 1
  %i.g = select i1 %.not.i.i, i32 1, i32 %i.f     ; 6 uses
  %i.h = icmp slt i32 %i.b, %i.g
  br i1 %i.h, label %bb.c, label %_ZN20b3AlignedObjectArrayI18b3SolverConstraintE21expandNonInitializingEv.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i, label %.split7.i.i, label %_ZN20b3AlignedObjectArrayI18b3SolverConstraintE8allocateEi.exit.i.i

_ZN20b3AlignedObjectArrayI18b3SolverConstraintE8allocateEi.exit.i.i: ; preds = %bb.c
  %i.i = sext i32 %i.g to i64
  %i.j = mul nsw i64 %i.i, 160
  %i.k = tail call noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.j, i32 noundef 16) ; 7 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.split7.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %_ZN20b3AlignedObjectArrayI18b3SolverConstraintE8allocateEi.exit.i.i
  %i.m = load i32, ptr %i.a, align 4, !tbaa !35   ; 4 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph.i.i.i, label %_ZNK20b3AlignedObjectArrayI18b3SolverConstraintE4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.split.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.m to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.p = icmp eq i32 %i.m, 1
  br i1 %i.p, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.d ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %bb.d ]
  %i.q = getelementptr inbounds nuw [160 x i8], ptr %i.k, i64 %indvars.iv.i.i.i
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !34
  %i.s = getelementptr inbounds nuw [160 x i8], ptr %i.r, i64 %indvars.iv.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.q, ptr noundef nonnull align 16 dereferenceable(160) %i.s, i64 160, i1 false), !tbaa.struct !95
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.t = getelementptr inbounds nuw [160 x i8], ptr %i.k, i64 %indvars.iv.next.i.i.i
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !34
  %i.v = getelementptr inbounds nuw [160 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.t, ptr noundef nonnull align 16 dereferenceable(160) %i.v, i64 160, i1 false), !tbaa.struct !95
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20b3AlignedObjectArrayI18b3SolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, label %bb.d, !llvm.loop !96

.split7.i.i:                                      ; preds = %_ZN20b3AlignedObjectArrayI18b3SolverConstraintE8allocateEi.exit.i.i, %bb.c
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 301)
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.8)
  store i32 0, ptr %i.a, align 4, !tbaa !35
  br label %_ZNK20b3AlignedObjectArrayI18b3SolverConstraintE4copyEiiPS0_.exit.i.i

_ZNK20b3AlignedObjectArrayI18b3SolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20b3AlignedObjectArrayI18b3SolverConstraintE4copyEiiPS0_.exit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20b3AlignedObjectArrayI18b3SolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.1, %_ZNK20b3AlignedObjectArrayI18b3SolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod21 = trunc i32 %i.m to i1
  tail call void @llvm.assume(i1 %lcmp.mod21)
  %i.w = getelementptr inbounds nuw [160 x i8], ptr %i.k, i64 %indvars.iv.i.i.i.epil.init
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !34
  %i.y = getelementptr inbounds nuw [160 x i8], ptr %i.x, i64 %indvars.iv.i.i.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.w, ptr noundef nonnull align 16 dereferenceable(160) %i.y, i64 160, i1 false), !tbaa.struct !95
  br label %_ZNK20b3AlignedObjectArrayI18b3SolverConstraintE4copyEiiPS0_.exit.i.i

_ZNK20b3AlignedObjectArrayI18b3SolverConstraintE4copyEiiPS0_.exit.i.i: ; preds = %.epil.preheader, %_ZNK20b3AlignedObjectArrayI18b3SolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.split7.i.i, %.split.i.i
  %.0.i12.i.i = phi ptr [ null, %.split7.i.i ], [ %i.k, %.split.i.i ], [ %i.k, %_ZNK20b3AlignedObjectArrayI18b3SolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ], [ %i.k, %.epil.preheader ]
  %.0.i.i = phi i32 [ 0, %.split7.i.i ], [ %i.g, %.split.i.i ], [ %i.g, %_ZNK20b3AlignedObjectArrayI18b3SolverConstraintE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ], [ %i.g, %.epil.preheader ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !34  ; 2 uses
  %.not.i10.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i10.i.i, label %_ZN20b3AlignedObjectArrayI18b3SolverConstraintE10deallocateEv.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNK20b3AlignedObjectArrayI18b3SolverConstraintE4copyEiiPS0_.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !30, !range !63, !noundef !93
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.f, label %_ZN20b3AlignedObjectArrayI18b3SolverConstraintE10deallocateEv.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.aa)
  br label %_ZN20b3AlignedObjectArrayI18b3SolverConstraintE10deallocateEv.exit.i.i

_ZN20b3AlignedObjectArrayI18b3SolverConstraintE10deallocateEv.exit.i.i: ; preds = %bb.f, %bb.e, %_ZNK20b3AlignedObjectArrayI18b3SolverConstraintE4copyEiiPS0_.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 1, ptr %i.ae, align 8, !tbaa !30
  store ptr %.0.i12.i.i, ptr %i.z, align 8, !tbaa !34
  store i32 %.0.i.i, ptr %i.c, align 8, !tbaa !36
  %.pre.i = load i32, ptr %i.a, align 4, !tbaa !35
  br label %_ZN20b3AlignedObjectArrayI18b3SolverConstraintE21expandNonInitializingEv.exit

_ZN20b3AlignedObjectArrayI18b3SolverConstraintE21expandNonInitializingEv.exit: ; preds = %bb.a, %bb.b, %_ZN20b3AlignedObjectArrayI18b3SolverConstraintE10deallocateEv.exit.i.i
  %i.af = phi i32 [ %.pre.i, %_ZN20b3AlignedObjectArrayI18b3SolverConstraintE10deallocateEv.exit.i.i ], [ %i.b, %bb.b ], [ %i.b, %bb.a ]
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.a, align 4, !tbaa !35
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !34
  %i.aj = sext i32 %i.b to i64
  %i.ak = getelementptr inbounds [160 x i8], ptr %i.ai, i64 %i.aj ; 3 uses
end_hunk_0
