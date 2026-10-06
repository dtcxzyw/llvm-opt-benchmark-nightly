Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/LevelSetDilatedMesh?download=true
inline.NumInlined: 79535
inline.NumDeleted: 25229
loop-unroll.NumCompletelyUnrolled: 202
loop-unroll.NumRuntimeUnrolled: 278
loop-unroll.NumUnrolled: 951
begin_hunk_0_@_ZNK7openvdb5v13_05tools6lvlset23TaperedCapsuleVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE23taperedCapsuleBottomTopMUlRfSK_RKfSM_E_clESK_SK_SM_SM_:bb.a
  %i.dp = getelementptr inbounds nuw i8, ptr %i.d, i64 456
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !5208
  %i.dr = fcmp ogt double %i.dl, %i.dq
  br i1 %i.dr, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d, %.critedge117
  %i.ds = fpext float %i.cn to double
  %i.dt = fsub double %i.ds, %i.dc
  %i.du = tail call noundef double @llvm.fmuladd.f64(double %i.dk, double %i.dt, double %i.di) ; 2 uses
  %i.dv = fcmp ogt double %i.dn, %i.du
  br i1 %i.dv, label %.critedge69, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dw = getelementptr inbounds nuw i8, ptr %i.d, i64 456
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !5208
  %i.dy = fcmp ogt double %i.du, %i.dx
  br i1 %i.dy, label %.critedge69, label %.critedge

.critedge:                                        ; preds = %.thread, %bb.f, %bb.d
  %or.cond.not = phi i1 [ false, %bb.f ], [ false, %bb.d ], [ true, %.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !1161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !1161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  call void @_ZNK7openvdb5v13_05tools6lvlset23TaperedCapsuleVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE24openConeFrustumBottomTopERfSJ_RiRKfSM_(ptr noundef nonnull align 8 dereferenceable(464) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4)
  %or.cond4 = select i1 %i.v, i1 %i.z, i1 false
  %i.dz = load i32, ptr %i.c, align 4, !tbaa !741 ; 3 uses
  br i1 %or.cond4, label %bb.g, label %bb.j

bb.g:                                             ; preds = %.critedge
  switch i32 %i.dz, label %bb.n [
    i32 2, label %bb.h
    i32 1, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.ea = load float, ptr %i.a, align 4, !tbaa !1161 ; 2 uses
  %i.eb = load float, ptr %1, align 4, !tbaa !1161 ; 2 uses
  %i.ec = fcmp olt float %i.ea, %i.eb
  %i.ed = select i1 %i.ec, float %i.ea, float %i.eb
  store float %i.ed, ptr %1, align 4, !tbaa !1161
  %i.ee = load float, ptr %2, align 4, !tbaa !1161 ; 2 uses
  %i.ef = load float, ptr %i.b, align 4, !tbaa !1161 ; 2 uses
  %i.eg = fcmp olt float %i.ee, %i.ef
  %i.eh = select i1 %i.eg, float %i.ef, float %i.ee
  store float %i.eh, ptr %2, align 4, !tbaa !1161
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.ei = load float, ptr %i.a, align 4, !tbaa !1161 ; 4 uses
  %i.ej = load float, ptr %1, align 4, !tbaa !1161 ; 2 uses
  %i.ek = fcmp olt float %i.ei, %i.ej
  %i.el = select i1 %i.ek, float %i.ei, float %i.ej
  store float %i.el, ptr %1, align 4, !tbaa !1161
  %i.em = load float, ptr %2, align 4, !tbaa !1161 ; 2 uses
  %i.en = fcmp olt float %i.em, %i.ei
  %i.eo = select i1 %i.en, float %i.ei, float %i.em
  store float %i.eo, ptr %2, align 4, !tbaa !1161
  br label %bb.n

bb.j:                                             ; preds = %.critedge
  %i.ep = icmp eq i32 %i.dz, 2                    ; 2 uses
  %brmerge = or i1 %or.cond.not, %i.ep
  br i1 %brmerge, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.eq = load float, ptr %i.a, align 4, !tbaa !1161
  store float %i.eq, ptr %1, align 4, !tbaa !1161
  %i.er = load float, ptr %i.b, align 4, !tbaa !1161
  store float %i.er, ptr %2, align 4, !tbaa !1161
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.es = icmp eq i32 %i.dz, 0
  br i1 %i.es, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.et = load float, ptr %2, align 4, !tbaa !1161 ; 2 uses
  %i.eu = load float, ptr %i.a, align 4, !tbaa !1161 ; 4 uses
  %i.ev = fcmp olt float %i.et, %i.eu
  %i.ew = select i1 %i.ev, float %i.eu, float %i.et
  store float %i.ew, ptr %2, align 4, !tbaa !1161
  %i.ex = load float, ptr %1, align 4, !tbaa !1161 ; 2 uses
  %i.ey = fcmp olt float %i.eu, %i.ex
  %i.ez = select i1 %i.ey, float %i.eu, float %i.ex
  store float %i.ez, ptr %1, align 4, !tbaa !1161
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.h, %bb.i, %bb.g, %bb.m, %bb.k
  %.3 = phi i1 [ true, %bb.m ], [ %i.ep, %bb.k ], [ true, %bb.h ], [ true, %bb.g ], [ true, %bb.i ], [ true, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %.critedge69

.critedge69:                                      ; preds = %bb.f, %bb.e, %bb.n
  %.4 = phi i1 [ %.3, %bb.n ], [ true, %bb.e ], [ true, %bb.f ]
  ret i1 %.4
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_05tools6lvlset23TaperedCapsuleVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE24openConeFrustumBottomTopERfSJ_RiRKfSM_(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) local_unnamed_addr #3 comdat align 2 {
bb.a:
  store i32 0, ptr %3, align 4, !tbaa !741
  %i.a = load float, ptr %4, align 4, !tbaa !1161
  %i.b = fpext float %i.a to double
  %i.c = load float, ptr %5, align 4, !tbaa !1161
  %i.d = fpext float %i.c to double
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.i = load double, ptr %i.h, align 8, !tbaa !5209 ; 2 uses
  %i.j = load <3 x double>, ptr %i.f, align 8, !tbaa !1192, !noalias !13466
  %i.k = load <4 x double>, ptr %i.g, align 8, !tbaa !1192 ; 5 uses
  %i.l = load double, ptr %i.e, align 8, !tbaa !5210 ; 2 uses
  %i.m = insertelement <3 x double> poison, double %i.b, i64 0
  %i.n = insertelement <3 x double> %i.m, double %i.d, i64 1
  %i.o = shufflevector <4 x double> %i.k, <4 x double> poison, <3 x i32> <i32 poison, i32 poison, i32 3>
  %i.p = shufflevector <3 x double> %i.n, <3 x double> %i.o, <3 x i32> <i32 0, i32 1, i32 5>
  %i.q = fsub <3 x double> %i.p, %i.j             ; 6 uses
  %i.r = shufflevector <3 x double> %i.q, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.s = shufflevector <3 x double> %i.q, <3 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison> ; 2 uses
  %i.t = shufflevector <4 x double> %i.k, <4 x double> %i.s, <2 x i32> <i32 1, i32 5>
  %i.u = fmul <2 x double> %i.r, %i.t
  %i.v = shufflevector <3 x double> %i.q, <3 x double> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>
  %i.w = shufflevector <4 x double> %i.k, <4 x double> %i.v, <2 x i32> <i32 0, i32 5>
  %i.x = shufflevector <3 x double> %i.q, <3 x double> poison, <2 x i32> zeroinitializer
  %i.y = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.w, <2 x double> %i.x, <2 x double> %i.u)
  %i.z = shufflevector <4 x double> %i.k, <4 x double> %i.s, <2 x i32> <i32 2, i32 6>
  %i.aa = shufflevector <3 x double> %i.q, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.ab = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.z, <2 x double> %i.aa, <2 x double> %i.y) ; 2 uses
  %i.ac = fneg <2 x double> %i.ab                 ; 2 uses
  %i.ad = extractelement <2 x double> %i.ac, i64 0
  %i.ae = extractelement <4 x double> %i.k, i64 2 ; 4 uses
  %i.af = fmul double %i.ae, %i.ad
  %i.ag = extractelement <3 x double> %i.q, i64 2
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.i, double %i.ag, double %i.af) ; 6 uses
  %i.ai = extractelement <2 x double> %i.ac, i64 1
  %i.aj = fmul double %i.i, %i.ai
  %i.ak = extractelement <2 x double> %i.ab, i64 0 ; 5 uses
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ak, double %i.ak, double %i.aj) ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.an = load double, ptr %i.am, align 8, !tbaa !5211 ; 2 uses
  %i.ao = fcmp une double %i.an, 0.000000e+00
  br i1 %i.ao, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.ap = fneg double %i.an
  %i.aq = fmul double %i.al, %i.ap
  %i.ar = tail call double @llvm.fmuladd.f64(double %i.ah, double %i.ah, double %i.aq) ; 2 uses
  %i.as = fcmp ult double %i.ar, 0.000000e+00
  br i1 %i.as, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.at = tail call noundef double @sqrt(double noundef %i.ar) #24 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.av = load double, ptr %i.au, align 8, !tbaa !5212 ; 2 uses
  %i.aw = fneg double %i.ah
  %i.ax = fsub double %i.at, %i.ah
  %i.ay = fmul double %i.av, %i.ax                ; 3 uses
  %i.az = fneg double %i.ay
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.az, double %i.ae, double %i.ak) ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !5207 ; 2 uses
  %i.bd = fcmp ole double %i.bc, %i.ba
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 2 uses
  %i.bf = load double, ptr %i.be, align 8         ; 2 uses
  %i.bg = fcmp ole double %i.ba, %i.bf
  %i.bh = select i1 %i.bd, i1 %i.bg, i1 false
  br i1 %i.bh, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bi = load i32, ptr %3, align 4, !tbaa !741
  %i.bj = add nsw i32 %i.bi, 1
  store i32 %i.bj, ptr %3, align 4, !tbaa !741
  %i.bk = fsub double %i.l, %i.ay
  %i.bl = fptrunc double %i.bk to float
  store float %i.bl, ptr %1, align 4, !tbaa !1161
  %.pre = load double, ptr %i.be, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bm = phi double [ %.pre, %bb.d ], [ %i.bf, %bb.c ]
  %i.bn = fsub double %i.aw, %i.at
  %i.bo = fmul double %i.av, %i.bn                ; 4 uses
  %i.bp = fneg double %i.bo
  %i.bq = tail call double @llvm.fmuladd.f64(double %i.bp, double %i.ae, double %i.ak) ; 2 uses
  %i.br = fcmp ole double %i.bc, %i.bq
  %i.bs = fcmp ole double %i.bq, %i.bm
  %i.bt = select i1 %i.br, i1 %i.bs, i1 false
  br i1 %i.bt, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.bu = load i32, ptr %3, align 4, !tbaa !741
  %i.bv = add nsw i32 %i.bu, 1                    ; 2 uses
  store i32 %i.bv, ptr %3, align 4, !tbaa !741
  %i.bw = icmp eq i32 %i.bv, 2
  %i.bx = fcmp ogt double %i.ay, %i.bo
  %or.cond = and i1 %i.bx, %i.bw
  br i1 %or.cond, label %.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.by = load float, ptr %1, align 4, !tbaa !1161
  store float %i.by, ptr %2, align 4, !tbaa !1161
  br label %.sink.split

bb.h:                                             ; preds = %bb.a
  %i.bz = fcmp une double %i.ah, 0.000000e+00
  br i1 %i.bz, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ca = fneg double %i.al
  %i.cb = fmul double %i.ah, 2.000000e+00
  %i.cc = fdiv double %i.ca, %i.cb                ; 2 uses
  %i.cd = fneg double %i.cc
  %i.ce = tail call double @llvm.fmuladd.f64(double %i.cd, double %i.ae, double %i.ak) ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !5207
  %i.ch = fcmp ole double %i.cg, %i.ce
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.cj = load double, ptr %i.ci, align 8
  %i.ck = fcmp ole double %i.ce, %i.cj
  %i.cl = select i1 %i.ch, i1 %i.ck, i1 false
  br i1 %i.cl, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 1, ptr %3, align 4, !tbaa !741
  br label %.sink.split

.sink.split:                                      ; preds = %bb.f, %bb.g, %bb.j
  %.sink = phi double [ %i.cc, %bb.j ], [ %i.bo, %bb.g ], [ %i.bo, %bb.f ]
  %.sink51 = phi ptr [ %1, %bb.j ], [ %1, %bb.g ], [ %2, %bb.f ]
  %i.cm = fsub double %i.l, %.sink
  %i.cn = fptrunc double %i.cm to float
  store float %i.cn, ptr %.sink51, align 4, !tbaa !1161
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.i, %bb.e, %bb.b, %bb.h
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7openvdb5v13_05tools6lvlset23TaperedCapsuleVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE10initializeIfEEbRKNS0_4math4Vec3IT_EESP_RKSM_SR_(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::function.852", align 16 ; 11 uses
  %6 = alloca %"class.openvdb::v13_0::math::Vec3.198", align 4 ; 4 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %7 = alloca %"class.openvdb::v13_0::math::Vec3.198", align 8 ; 5 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.d = load float, ptr %i.c, align 8, !tbaa !1923 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.f = load <4 x float>, ptr %i.e, align 4
  %i.g = load float, ptr %4, align 4, !tbaa !1161
  %i.h = load float, ptr %3, align 4, !tbaa !1161
  %i.i = fcmp ugt float %i.g, %i.h                ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 216
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 224
  %. = select i1 %i.i, ptr %2, ptr %1             ; 2 uses
  %.223 = select i1 %i.i, ptr %1, ptr %2          ; 2 uses
  %.sroa.0186.0.copyload = load <2 x float>, ptr %., align 4
  %.sroa.4187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %., i64 8
  %.sroa.4187.0.copyload = load float, ptr %.sroa.4187.0..sroa_idx, align 4
  %i.k = insertelement <2 x float> poison, float %i.d, i64 0
  %i.l = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.m = fdiv <2 x float> %.sroa.0186.0.copyload, %i.l ; 8 uses
  %i.n = extractelement <2 x float> %i.m, i64 1
  %i.o = extractelement <2 x float> %i.m, i64 0
  %i.p = fdiv float %.sroa.4187.0.copyload, %i.d  ; 5 uses
  store <2 x float> %i.m, ptr %i.j, align 8
  store float %i.p, ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.0184.0.copyload = load <2 x float>, ptr %.223, align 4
  %.sroa.4185.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.223, i64 8
  %.sroa.4185.0.copyload = load float, ptr %.sroa.4185.0..sroa_idx, align 4
  %i.q = fdiv <2 x float> %.sroa.0184.0.copyload, %i.l ; 6 uses
  %i.r = fdiv float %.sroa.4185.0.copyload, %i.d  ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 228
  store <2 x float> %i.q, ptr %i.s, align 4
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 236
  store float %i.r, ptr %.sroa.430.0..sroa_idx, align 4
  %.val = load float, ptr %4, align 4
  %.val226 = load float, ptr %3, align 4
  %i.t = select i1 %i.i, float %.val, float %.val226
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.x = fdiv float %i.t, %i.d                    ; 3 uses
  store float %i.x, ptr %i.u, align 4, !tbaa !5213
  %.val227 = load float, ptr %3, align 4
  %.val228 = load float, ptr %4, align 4
  %.pn = select i1 %i.i, float %.val227, float %.val228
  %.sink = fdiv float %.pn, %i.d                  ; 3 uses
  store float %.sink, ptr %i.v, align 8, !tbaa !5214
  %i.y = shufflevector <4 x float> %i.f, <4 x float> poison, <2 x i32> zeroinitializer
  %i.z = insertelement <2 x float> poison, float %i.x, i64 0
  %i.aa = insertelement <2 x float> %i.z, float %.sink, i64 1
  %i.ab = fadd <2 x float> %i.y, %i.aa            ; 5 uses
  %i.ac = fmul <2 x float> %i.ab, %i.ab
  %i.ad = shufflevector <2 x float> %i.ab, <2 x float> %i.ac, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.ad, ptr %i.w, align 4, !tbaa !1161
  %i.ae = extractelement <2 x float> %i.ab, i64 0 ; 3 uses
  %i.af = fcmp ugt float %i.ae, 0.000000e+00
  br i1 %i.af, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.ag = extractelement <2 x float> %i.ab, i64 1 ; 3 uses
  %i.ah = fcmp olt float %i.ag, 0.000000e+00
  br i1 %i.ah, label %bb.c, label %_ZNK7openvdb5v13_04math4Vec3IdE8unitSafeEv.exit

bb.c:                                             ; preds = %bb.b
  %i.ai = load float, ptr %4, align 4, !tbaa !1161 ; 4 uses
  %i.aj = load float, ptr %3, align 4, !tbaa !1161 ; 4 uses
  %i.ak = fcmp ole float %i.ai, %i.aj             ; 3 uses
  %i.al = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.am = insertelement <2 x float> %i.al, float %i.aj, i64 1
  %i.an = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.ao = insertelement <2 x float> %i.an, float %i.ai, i64 1 ; 2 uses
  %i.ap = fsub <2 x float> %i.am, %i.ao
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ar = fdiv <2 x float> %i.ao, %i.aq           ; 2 uses
  %i.as = extractelement <2 x float> %i.ar, i64 0
  %i.at = extractelement <2 x float> %i.ar, i64 1
  %i.au = select i1 %i.ak, float %i.at, float %i.as ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.av = select i1 %i.ak, ptr %1, ptr %2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull align 4 dereferenceable(12) %i.av, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.aw = select i1 %i.ak, float %i.aj, float %i.ai
  store float %i.aw, ptr %i.a, align 4, !tbaa !1161
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %.sroa.0.0.copyload4.i.i = load <2 x float>, ptr %1, align 4
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload.i.i = load float, ptr %.sroa.6.0..sroa_idx.i.i, align 4
  %i.ax = fmul float %i.au, %.sroa.6.0.copyload.i.i
  %i.ay = fsub float 1.000000e+00, %i.au          ; 2 uses
  %.sroa.0.0.copyload4.i.i124 = load <2 x float>, ptr %2, align 4
  %.sroa.6.0..sroa_idx.i.i125 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload.i.i126 = load float, ptr %.sroa.6.0..sroa_idx.i.i125, align 4
  %i.az = fmul float %i.ay, %.sroa.6.0.copyload.i.i126
  %i.ba = insertelement <2 x float> poison, float %i.au, i64 0
  %i.bb = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bc = fmul <2 x float> %i.bb, %.sroa.0.0.copyload4.i.i
  %i.bd = insertelement <2 x float> poison, float %i.ay, i64 0
  %i.be = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bf = fmul <2 x float> %i.be, %.sroa.0.0.copyload4.i.i124
  %i.bg = fadd <2 x float> %i.bc, %i.bf
  %i.bh = fadd float %i.ax, %i.az
  store <2 x float> %i.bg, ptr %7, align 8
  %.sroa.214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store float %i.bh, ptr %.sroa.214.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !1161
  %i.bi = call noundef zeroext i1 @_ZN7openvdb5v13_05tools6lvlset23TaperedCapsuleVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE10initializeIfEEbRKNS0_4math4Vec3IT_EESP_RKSM_SR_(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.k

_ZNK7openvdb5v13_04math4Vec3IdE8unitSafeEv.exit:  ; preds = %bb.b
  %i.bj = fsub float %i.r, %i.p                   ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 248
  store float %i.bj, ptr %.sroa.4.0..sroa_idx, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 344
  store float %i.o, ptr %i.bn, align 8, !tbaa !5215
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 348
  store float %i.n, ptr %i.bo, align 4, !tbaa !13467
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 352
  store float %i.p, ptr %i.bp, align 8, !tbaa !5205
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 356
  store <2 x float> %i.q, ptr %i.bq, align 4, !tbaa !1161
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 364
  store float %i.r, ptr %i.br, align 4, !tbaa !5206
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.bt = fsub <2 x float> %i.q, %i.m             ; 3 uses
  store <2 x float> %i.bt, ptr %i.bs, align 4, !tbaa !1161
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 316
  store float %i.bj, ptr %i.bu, align 4, !tbaa !13468
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 252
  store <2 x float> %i.m, ptr %i.bv, align 4
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 260
  store <2 x float> %i.q, ptr %i.bw, align 4
  %i.bx = fsub <2 x float> %i.q, %i.m
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 268
  store <2 x float> %i.bx, ptr %i.by, align 4
  %i.bz = fmul <2 x float> %i.bt, %i.bt
  %i.ca = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.bz) ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 324
  store float %i.ca, ptr %i.cb, align 4, !tbaa !5216
  %sqrt = tail call float @llvm.sqrt.f32(float %i.ca)
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 320
  store float %sqrt, ptr %i.cc, align 8, !tbaa !13469
  %i.cd = fcmp une float %i.ca, 0.000000e+00
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.cf = fsub float %i.x, %.sink                 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 332
end_hunk_0
begin_hunk_1_@_ZNK7openvdb5v13_05tools6lvlset23TaperedCapsuleVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE23taperedCapsuleBottomTopMUlRdSK_RKdSM_E_clESK_SK_SM_SM_:bb.a
  br i1 %i.do, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d, %.critedge119
  %i.dp = fsub double %i.cn, %i.cz
  %i.dq = tail call noundef double @llvm.fmuladd.f64(double %i.dh, double %i.dp, double %i.df) ; 2 uses
  %i.dr = fcmp ogt double %i.dk, %i.dq
  br i1 %i.dr, label %.critedge69, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ds = getelementptr inbounds nuw i8, ptr %i.d, i64 632
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !13612
  %i.du = fcmp ogt double %i.dq, %i.dt
  br i1 %i.du, label %.critedge69, label %.critedge

.critedge:                                        ; preds = %.thread, %bb.f, %bb.d
  %or.cond.not = phi i1 [ false, %bb.f ], [ false, %bb.d ], [ true, %.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !1192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !1192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  call void @_ZNK7openvdb5v13_05tools6lvlset23TaperedCapsuleVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE24openConeFrustumBottomTopERdSJ_RiRKdSM_(ptr noundef nonnull align 8 dereferenceable(640) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %or.cond4 = select i1 %i.v, i1 %i.z, i1 false
  %i.dv = load i32, ptr %i.c, align 4, !tbaa !741 ; 3 uses
  br i1 %or.cond4, label %bb.g, label %bb.j

bb.g:                                             ; preds = %.critedge
  switch i32 %i.dv, label %bb.n [
    i32 2, label %bb.h
    i32 1, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.dw = load double, ptr %i.a, align 8, !tbaa !1192 ; 2 uses
  %i.dx = load double, ptr %1, align 8, !tbaa !1192 ; 2 uses
  %i.dy = fcmp olt double %i.dw, %i.dx
  %i.dz = select i1 %i.dy, double %i.dw, double %i.dx
  store double %i.dz, ptr %1, align 8, !tbaa !1192
  %i.ea = load double, ptr %2, align 8, !tbaa !1192 ; 2 uses
  %i.eb = load double, ptr %i.b, align 8, !tbaa !1192 ; 2 uses
  %i.ec = fcmp olt double %i.ea, %i.eb
  %i.ed = select i1 %i.ec, double %i.eb, double %i.ea
  store double %i.ed, ptr %2, align 8, !tbaa !1192
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.ee = load double, ptr %i.a, align 8, !tbaa !1192 ; 4 uses
  %i.ef = load double, ptr %1, align 8, !tbaa !1192 ; 2 uses
  %i.eg = fcmp olt double %i.ee, %i.ef
  %i.eh = select i1 %i.eg, double %i.ee, double %i.ef
  store double %i.eh, ptr %1, align 8, !tbaa !1192
  %i.ei = load double, ptr %2, align 8, !tbaa !1192 ; 2 uses
  %i.ej = fcmp olt double %i.ei, %i.ee
  %i.ek = select i1 %i.ej, double %i.ee, double %i.ei
  store double %i.ek, ptr %2, align 8, !tbaa !1192
  br label %bb.n

bb.j:                                             ; preds = %.critedge
  %i.el = icmp eq i32 %i.dv, 2                    ; 2 uses
  %brmerge = or i1 %or.cond.not, %i.el
  br i1 %brmerge, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.em = load double, ptr %i.a, align 8, !tbaa !1192
  store double %i.em, ptr %1, align 8, !tbaa !1192
  %i.en = load double, ptr %i.b, align 8, !tbaa !1192
  store double %i.en, ptr %2, align 8, !tbaa !1192
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.eo = icmp eq i32 %i.dv, 0
  br i1 %i.eo, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ep = load double, ptr %2, align 8, !tbaa !1192 ; 2 uses
  %i.eq = load double, ptr %i.a, align 8, !tbaa !1192 ; 4 uses
  %i.er = fcmp olt double %i.ep, %i.eq
  %i.es = select i1 %i.er, double %i.eq, double %i.ep
  store double %i.es, ptr %2, align 8, !tbaa !1192
  %i.et = load double, ptr %1, align 8, !tbaa !1192 ; 2 uses
  %i.eu = fcmp olt double %i.eq, %i.et
  %i.ev = select i1 %i.eu, double %i.eq, double %i.et
  store double %i.ev, ptr %1, align 8, !tbaa !1192
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.h, %bb.i, %bb.g, %bb.m, %bb.k
  %.3 = phi i1 [ true, %bb.m ], [ %i.el, %bb.k ], [ true, %bb.h ], [ true, %bb.g ], [ true, %bb.i ], [ true, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %.critedge69

.critedge69:                                      ; preds = %bb.f, %bb.e, %bb.n
  %.4 = phi i1 [ %.3, %bb.n ], [ true, %bb.e ], [ true, %bb.f ]
  ret i1 %.4
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_05tools6lvlset23TaperedCapsuleVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE24openConeFrustumBottomTopERdSJ_RiRKdSM_(ptr noundef nonnull align 8 dereferenceable(640) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #3 comdat align 2 {
bb.a:
  store i32 0, ptr %3, align 4, !tbaa !741
  %i.a = load double, ptr %4, align 8, !tbaa !1192
  %i.b = load double, ptr %5, align 8, !tbaa !1192
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.h = load double, ptr %i.g, align 8, !tbaa !5274 ; 2 uses
  %i.i = load <3 x double>, ptr %i.d, align 8, !tbaa !1192, !noalias !13615
  %i.j = load <4 x double>, ptr %i.e, align 8, !tbaa !1192 ; 5 uses
  %i.k = load double, ptr %i.c, align 8, !tbaa !5275 ; 2 uses
  %i.l = insertelement <3 x double> poison, double %i.a, i64 0
  %i.m = insertelement <3 x double> %i.l, double %i.b, i64 1
  %i.n = shufflevector <4 x double> %i.j, <4 x double> poison, <3 x i32> <i32 poison, i32 poison, i32 3>
  %i.o = shufflevector <3 x double> %i.m, <3 x double> %i.n, <3 x i32> <i32 0, i32 1, i32 5>
  %i.p = fsub <3 x double> %i.o, %i.i             ; 6 uses
  %i.q = shufflevector <3 x double> %i.p, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.r = shufflevector <3 x double> %i.p, <3 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison> ; 2 uses
  %i.s = shufflevector <4 x double> %i.j, <4 x double> %i.r, <2 x i32> <i32 1, i32 5>
  %i.t = fmul <2 x double> %i.q, %i.s
  %i.u = shufflevector <3 x double> %i.p, <3 x double> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>
  %i.v = shufflevector <4 x double> %i.j, <4 x double> %i.u, <2 x i32> <i32 0, i32 5>
  %i.w = shufflevector <3 x double> %i.p, <3 x double> poison, <2 x i32> zeroinitializer
  %i.x = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.v, <2 x double> %i.w, <2 x double> %i.t)
  %i.y = shufflevector <4 x double> %i.j, <4 x double> %i.r, <2 x i32> <i32 2, i32 6>
  %i.z = shufflevector <3 x double> %i.p, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.aa = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.y, <2 x double> %i.z, <2 x double> %i.x) ; 2 uses
  %i.ab = fneg <2 x double> %i.aa                 ; 2 uses
  %i.ac = extractelement <2 x double> %i.ab, i64 0
  %i.ad = extractelement <4 x double> %i.j, i64 2 ; 4 uses
  %i.ae = fmul double %i.ad, %i.ac
  %i.af = extractelement <3 x double> %i.p, i64 2
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.h, double %i.af, double %i.ae) ; 6 uses
  %i.ah = extractelement <2 x double> %i.ab, i64 1
  %i.ai = fmul double %i.h, %i.ah
  %i.aj = extractelement <2 x double> %i.aa, i64 0 ; 5 uses
  %i.ak = tail call double @llvm.fmuladd.f64(double %i.aj, double %i.aj, double %i.ai) ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.am = load double, ptr %i.al, align 8, !tbaa !5276 ; 2 uses
  %i.an = fcmp une double %i.am, 0.000000e+00
  br i1 %i.an, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.ao = fneg double %i.am
  %i.ap = fmul double %i.ak, %i.ao
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.ag, double %i.ap) ; 2 uses
  %i.ar = fcmp ult double %i.aq, 0.000000e+00
  br i1 %i.ar, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.as = tail call noundef double @sqrt(double noundef %i.aq) #24 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  %i.au = load double, ptr %i.at, align 8, !tbaa !5277 ; 2 uses
  %i.av = fneg double %i.ag
  %i.aw = fsub double %i.as, %i.ag
  %i.ax = fmul double %i.au, %i.aw                ; 3 uses
  %i.ay = fneg double %i.ax
  %i.az = tail call double @llvm.fmuladd.f64(double %i.ay, double %i.ad, double %i.aj) ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 2 uses
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !5273 ; 2 uses
  %i.bc = fcmp ole double %i.bb, %i.az
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  %i.be = load double, ptr %i.bd, align 8         ; 2 uses
  %i.bf = fcmp ole double %i.az, %i.be
  %i.bg = select i1 %i.bc, i1 %i.bf, i1 false
  br i1 %i.bg, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bh = load i32, ptr %3, align 4, !tbaa !741
  %i.bi = add nsw i32 %i.bh, 1
  store i32 %i.bi, ptr %3, align 4, !tbaa !741
  %i.bj = fsub double %i.k, %i.ax
  store double %i.bj, ptr %1, align 8, !tbaa !1192
  %.pre = load double, ptr %i.at, align 8, !tbaa !5277
  %.pre48 = load double, ptr %i.f, align 8, !tbaa !1192
  %.pre49 = load double, ptr %i.ba, align 8, !tbaa !5273
  %.pre50 = load double, ptr %i.bd, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bk = phi double [ %.pre50, %bb.d ], [ %i.be, %bb.c ]
  %i.bl = phi double [ %.pre49, %bb.d ], [ %i.bb, %bb.c ]
  %i.bm = phi double [ %.pre48, %bb.d ], [ %i.ad, %bb.c ]
  %i.bn = phi double [ %.pre, %bb.d ], [ %i.au, %bb.c ]
  %i.bo = fsub double %i.av, %i.as
  %i.bp = fmul double %i.bo, %i.bn                ; 4 uses
  %i.bq = fneg double %i.bp
  %i.br = tail call double @llvm.fmuladd.f64(double %i.bq, double %i.bm, double %i.aj) ; 2 uses
  %i.bs = fcmp ole double %i.bl, %i.br
  %i.bt = fcmp ole double %i.br, %i.bk
  %i.bu = select i1 %i.bs, i1 %i.bt, i1 false
  br i1 %i.bu, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.bv = load i32, ptr %3, align 4, !tbaa !741
  %i.bw = add nsw i32 %i.bv, 1                    ; 2 uses
  store i32 %i.bw, ptr %3, align 4, !tbaa !741
  %i.bx = icmp eq i32 %i.bw, 2
  %i.by = fcmp ogt double %i.ax, %i.bp
  %or.cond = and i1 %i.by, %i.bx
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bz = load double, ptr %i.c, align 8, !tbaa !5275
  %i.ca = fsub double %i.bz, %i.bp
  store double %i.ca, ptr %2, align 8, !tbaa !1192
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.cb = load double, ptr %1, align 8, !tbaa !1192
  store double %i.cb, ptr %2, align 8, !tbaa !1192
  %i.cc = load double, ptr %i.c, align 8, !tbaa !5275
  %i.cd = fsub double %i.cc, %i.bp
  store double %i.cd, ptr %1, align 8, !tbaa !1192
  br label %bb.l

bb.i:                                             ; preds = %bb.a
  %i.ce = fcmp une double %i.ag, 0.000000e+00
  br i1 %i.ce, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.cf = fneg double %i.ak
  %i.cg = fmul double %i.ag, 2.000000e+00
  %i.ch = fdiv double %i.cf, %i.cg                ; 2 uses
  %i.ci = fneg double %i.ch
  %i.cj = tail call double @llvm.fmuladd.f64(double %i.ci, double %i.ad, double %i.aj) ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !5273
  %i.cm = fcmp ole double %i.cl, %i.cj
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.co = load double, ptr %i.cn, align 8
  %i.cp = fcmp ole double %i.cj, %i.co
  %i.cq = select i1 %i.cm, i1 %i.cp, i1 false
  br i1 %i.cq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 1, ptr %3, align 4, !tbaa !741
  %i.cr = fsub double %i.k, %i.ch
  store double %i.cr, ptr %1, align 8, !tbaa !1192
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.e, %bb.h, %bb.g, %bb.b, %bb.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7openvdb5v13_05tools6lvlset23TaperedCapsuleVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE10initializeIfEEbRKNS0_4math4Vec3IT_EESP_RKSM_SR_(ptr noundef nonnull align 8 dereferenceable(640) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::function.862", align 16 ; 11 uses
  %6 = alloca %"class.openvdb::v13_0::math::Vec3.198", align 4 ; 4 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %7 = alloca %"class.openvdb::v13_0::math::Vec3.198", align 8 ; 5 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load <2 x double>, ptr %i.c, align 8, !tbaa !1192 ; 6 uses
  %i.e = load float, ptr %4, align 4, !tbaa !1161
  %i.f = load float, ptr %3, align 4, !tbaa !1161
  %i.g = fcmp ugt float %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %.sroa.9130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load float, ptr %i.i, align 4, !tbaa !1161
  %i.k = fpext float %i.j to double
  %i.l = load <2 x float>, ptr %1, align 4, !tbaa !1161
  %i.m = fpext <2 x float> %i.l to <2 x double>
  %i.n = shufflevector <2 x double> %i.d, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.o = fdiv <2 x double> %i.m, %i.n             ; 4 uses
  %i.p = extractelement <2 x double> %i.o, i64 1
  %i.q = extractelement <2 x double> %i.o, i64 0
  %i.r = extractelement <2 x double> %i.d, i64 0  ; 2 uses
  %i.s = fdiv double %i.k, %i.r                   ; 2 uses
  store <2 x double> %i.o, ptr %i.h, align 8
  store double %i.s, ptr %.sroa.9130.0..sroa_idx, align 8
  %i.t = load float, ptr %2, align 4, !tbaa !1161
  %i.u = fpext float %i.t to double
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.w = fdiv double %i.u, %i.r                   ; 2 uses
  %i.x = load <2 x float>, ptr %i.v, align 4, !tbaa !1161
  %i.y = fpext <2 x float> %i.x to <2 x double>
  %i.z = fdiv <2 x double> %i.y, %i.n             ; 4 uses
  %i.aa = extractelement <2 x double> %i.z, i64 1
  %i.ab = extractelement <2 x double> %i.z, i64 0
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 264
  store double %i.w, ptr %i.ac, align 8
  %.sroa.6135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 272
  store <2 x double> %i.z, ptr %.sroa.6135.0..sroa_idx, align 8
  %i.ad = load float, ptr %3, align 4, !tbaa !1161 ; 2 uses
  %i.ae = load float, ptr %4, align 4, !tbaa !1161 ; 2 uses
  %i.af = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.ag = insertelement <2 x float> %i.af, float %i.ad, i64 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !1161
  %i.aj = fpext float %i.ai to double
  %i.ak = load <2 x float>, ptr %2, align 4, !tbaa !1161
  %i.al = fpext <2 x float> %i.ak to <2 x double>
  %i.am = shufflevector <2 x double> %i.d, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.an = fdiv <2 x double> %i.al, %i.am          ; 4 uses
  %i.ao = extractelement <2 x double> %i.an, i64 1
  %i.ap = extractelement <2 x double> %i.an, i64 0
  %i.aq = extractelement <2 x double> %i.d, i64 0 ; 2 uses
  %i.ar = fdiv double %i.aj, %i.aq                ; 2 uses
  store <2 x double> %i.an, ptr %i.h, align 8
  store double %i.ar, ptr %.sroa.9130.0..sroa_idx, align 8
  %i.as = load float, ptr %1, align 4, !tbaa !1161
  %i.at = fpext float %i.as to double
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.av = fdiv double %i.at, %i.aq                ; 2 uses
  %i.aw = load <2 x float>, ptr %i.au, align 4, !tbaa !1161
  %i.ax = fpext <2 x float> %i.aw to <2 x double>
  %i.ay = fdiv <2 x double> %i.ax, %i.am          ; 4 uses
  %i.az = extractelement <2 x double> %i.ay, i64 1
  %i.ba = extractelement <2 x double> %i.ay, i64 0
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 264
  store double %i.av, ptr %i.bb, align 8
  %.sroa.6123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 272
  store <2 x double> %i.ay, ptr %.sroa.6123.0..sroa_idx, align 8
  %i.bc = load float, ptr %4, align 4, !tbaa !1161 ; 2 uses
  %i.bd = load float, ptr %3, align 4, !tbaa !1161 ; 2 uses
  %i.be = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.bf = insertelement <2 x float> %i.be, float %i.bc, i64 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bg = phi float [ %i.bd, %bb.c ], [ %i.ad, %bb.b ] ; 3 uses
  %i.bh = phi float [ %i.bc, %bb.c ], [ %i.ae, %bb.b ] ; 3 uses
  %i.bi = phi double [ %i.ar, %bb.c ], [ %i.s, %bb.b ] ; 4 uses
  %i.bj = phi double [ %i.ao, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %i.bk = phi double [ %i.ap, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.sroa.8112.0.copyload114 = phi double [ %i.az, %bb.c ], [ %i.aa, %bb.b ] ; 2 uses
  %.sroa.6109.0.copyload111 = phi double [ %i.ba, %bb.c ], [ %i.ab, %bb.b ] ; 2 uses
  %.sroa.0107.0.copyload108 = phi double [ %i.av, %bb.c ], [ %i.w, %bb.b ] ; 3 uses
  %i.bl = phi <2 x double> [ %i.ay, %bb.c ], [ %i.z, %bb.b ]
  %i.bm = phi <2 x double> [ %i.an, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %i.bn = phi <2 x float> [ %i.bf, %bb.c ], [ %i.ag, %bb.b ]
  %i.bo = fpext <2 x float> %i.bn to <2 x double>
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.br = shufflevector <2 x double> %i.d, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bs = fdiv <2 x double> %i.bo, %i.br          ; 4 uses
  %i.bt = shufflevector <2 x double> %i.bs, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.bt, ptr %i.bp, align 8, !tbaa !1192
  %i.bu = shufflevector <2 x double> %i.d, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bv = fadd <2 x double> %i.bu, %i.bs          ; 5 uses
  %i.bw = extractelement <2 x double> %i.bv, i64 1 ; 4 uses
  store double %i.bw, ptr %i.bq, align 8, !tbaa !5278
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.by = extractelement <2 x double> %i.bv, i64 0 ; 3 uses
  store double %i.by, ptr %i.bx, align 8, !tbaa !5279
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.ca = fmul <2 x double> %i.bv, %i.bv
  %i.cb = shufflevector <2 x double> %i.ca, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.cb, ptr %i.bz, align 8, !tbaa !1192
  %i.cc = fcmp ugt double %i.bw, 0.000000e+00
  br i1 %i.cc, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.cd = fcmp olt double %i.by, 0.000000e+00
  br i1 %i.cd, label %bb.f, label %_ZNK7openvdb5v13_04math4Vec3IdE8unitSafeEv.exit

bb.f:                                             ; preds = %bb.e
  %i.ce = fcmp ole float %i.bh, %i.bg             ; 3 uses
  %i.cf = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.cg = insertelement <2 x float> %i.cf, float %i.bh, i64 1 ; 3 uses
  %i.ch = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ci = fsub <2 x float> %i.cg, %i.ch
  %i.cj = fdiv <2 x float> %i.cg, %i.ci           ; 2 uses
  %i.ck = extractelement <2 x float> %i.cj, i64 0
  %i.cl = extractelement <2 x float> %i.cj, i64 1
  %i.cm = select i1 %i.ce, float %i.cl, float %i.ck ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.cn = select i1 %i.ce, ptr %1, ptr %2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull align 4 dereferenceable(12) %i.cn, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.co = select i1 %i.ce, float %i.bg, float %i.bh
  store float %i.co, ptr %i.a, align 4, !tbaa !1161
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %.sroa.0.0.copyload4.i.i = load <2 x float>, ptr %1, align 4
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload.i.i = load float, ptr %.sroa.6.0..sroa_idx.i.i, align 4
  %i.cp = fmul float %i.cm, %.sroa.6.0.copyload.i.i
  %i.cq = fsub float 1.000000e+00, %i.cm          ; 2 uses
  %.sroa.0.0.copyload4.i.i68 = load <2 x float>, ptr %2, align 4
  %.sroa.6.0..sroa_idx.i.i69 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload.i.i70 = load float, ptr %.sroa.6.0..sroa_idx.i.i69, align 4
  %i.cr = fmul float %i.cq, %.sroa.6.0.copyload.i.i70
  %i.cs = insertelement <2 x float> poison, float %i.cm, i64 0
  %i.ct = shufflevector <2 x float> %i.cs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cu = fmul <2 x float> %i.ct, %.sroa.0.0.copyload4.i.i
  %i.cv = insertelement <2 x float> poison, float %i.cq, i64 0
  %i.cw = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cx = fmul <2 x float> %i.cw, %.sroa.0.0.copyload4.i.i68
  %i.cy = fadd <2 x float> %i.cu, %i.cx
  %i.cz = fadd float %i.cp, %i.cr
  store <2 x float> %i.cy, ptr %7, align 8
end_hunk_1
