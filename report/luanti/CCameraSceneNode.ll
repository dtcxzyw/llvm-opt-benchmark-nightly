Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/CCameraSceneNode?download=true
inline.NumInlined: 900
inline.NumDeleted: 216
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN5scene16CCameraSceneNode14updateMatricesEv:bb.a
  %i.bd = fcmp ugt float %i.bc, f0x358637BD
  br i1 %i.bd, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4core8vector3dIfE9normalizeEv.exit6
  %i.be = fadd float %i.aw, 5.000000e-01
  store float %i.be, ptr %3, align 4, !tbaa !82
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN4core8vector3dIfE9normalizeEv.exit6
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 3 uses
  %i.bg = call noundef nonnull align 4 dereferenceable(64) ptr @_ZN4core8CMatrix4IfE25buildCameraLookAtMatrixLHERKNS_8vector3dIfEES5_S5_(ptr noundef nonnull align 4 dereferenceable(64) %i.bf, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull align 4 dereferenceable(12) %3) ; 0 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 580
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %i.bf, i64 64, i1 false), !tbaa.struct !81
  %i.bi = call noundef nonnull align 4 dereferenceable(64) ptr @_ZN4core8CMatrix4IfE20setbyproduct_nocheckERKS1_S3_(ptr noundef nonnull align 4 dereferenceable(64) %i.bf, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(64) %i.bh) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  call void @_ZN5scene16CCameraSceneNode19recalculateViewAreaEv(ptr noundef nonnull align 8 dereferenceable(646) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef nonnull align 4 dereferenceable(64) ptr @_ZN4core8CMatrix4IfE25buildCameraLookAtMatrixLHERKNS_8vector3dIfEES5_S5_(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %3) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = load <2 x float>, ptr %2, align 4, !tbaa !13
  %i.b = load <2 x float>, ptr %1, align 4, !tbaa !13
  %i.c = fsub <2 x float> %i.a, %i.b              ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load float, ptr %i.d, align 4, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.g = load float, ptr %i.f, align 4, !tbaa !15
  %i.h = fsub float %i.e, %i.g                    ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.c, %i.c
  %i.i = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.j = extractelement <2 x float> %i.c, i64 0   ; 2 uses
  %i.k = tail call float @llvm.fmuladd.f32(float %i.j, float %i.j, float %i.i)
  %i.l = tail call float @llvm.fmuladd.f32(float %i.h, float %i.h, float %i.k) ; 2 uses
  %i.m = fcmp oeq float %i.l, 0.000000e+00
  br i1 %i.m, label %_ZN4core8vector3dIfE9normalizeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = fpext float %i.l to double
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.n)
  %i.o = fdiv double 1.000000e+00, %sqrt.i        ; 2 uses
  %i.p = fpext <2 x float> %i.c to <2 x double>
  %i.q = insertelement <2 x double> poison, double %i.o, i64 0
  %i.r = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> zeroinitializer
  %i.s = fmul <2 x double> %i.r, %i.p
  %i.t = fptrunc <2 x double> %i.s to <2 x float>
  %i.u = fpext float %i.h to double
  %i.v = fmul double %i.o, %i.u
  %i.w = fptrunc double %i.v to float
  br label %_ZN4core8vector3dIfE9normalizeEv.exit

_ZN4core8vector3dIfE9normalizeEv.exit:            ; preds = %bb.a, %bb.b
  %.sroa.048.0 = phi <2 x float> [ %i.c, %bb.a ], [ %i.t, %bb.b ] ; 3 uses
  %.sroa.15.0 = phi float [ %i.h, %bb.a ], [ %i.w, %bb.b ] ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.sroa.048.4.vec.extract62 = extractelement <2 x float> %.sroa.048.0, i64 1 ; 6 uses
  %.sroa.048.0.vec.extract53 = extractelement <2 x float> %.sroa.048.0, i64 0 ; 5 uses
  %i.y = load float, ptr %3, align 4, !tbaa !82   ; 2 uses
  %i.z = load <2 x float>, ptr %i.x, align 4, !tbaa !13 ; 3 uses
  %i.aa = fneg float %.sroa.15.0
  %i.ab = fneg float %.sroa.048.4.vec.extract62
  %i.ac = fmul float %i.y, %i.aa
  %i.ad = extractelement <2 x float> %i.z, i64 1
  %i.ae = fmul float %i.ad, %i.ab
  %i.af = shufflevector <2 x float> %.sroa.048.0, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ag = insertelement <2 x float> %i.af, float %.sroa.15.0, i64 0
  %i.ah = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.ai = insertelement <2 x float> %i.ah, float %i.ac, i64 1
  %i.aj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.z, <2 x float> %i.ag, <2 x float> %i.ai) ; 5 uses
  %i.ak = fneg float %.sroa.048.0.vec.extract53
  %i.al = extractelement <2 x float> %i.z, i64 0
  %i.am = fmul float %i.al, %i.ak
  %i.an = tail call float @llvm.fmuladd.f32(float %i.y, float %.sroa.048.4.vec.extract62, float %i.am) ; 4 uses
  %foldExtExtBinop73 = fmul <2 x float> %i.aj, %i.aj
  %i.ao = extractelement <2 x float> %foldExtExtBinop73, i64 1
  %i.ap = extractelement <2 x float> %i.aj, i64 0 ; 2 uses
  %i.aq = tail call float @llvm.fmuladd.f32(float %i.ap, float %i.ap, float %i.ao)
  %i.ar = tail call float @llvm.fmuladd.f32(float %i.an, float %i.an, float %i.aq) ; 2 uses
  %i.as = fcmp oeq float %i.ar, 0.000000e+00
  br i1 %i.as, label %_ZN4core8vector3dIfE9normalizeEv.exit20, label %bb.c

bb.c:                                             ; preds = %_ZN4core8vector3dIfE9normalizeEv.exit
  %i.at = fpext float %i.ar to double
  %sqrt.i19 = tail call double @llvm.sqrt.f64(double %i.at)
  %i.au = fdiv double 1.000000e+00, %sqrt.i19     ; 2 uses
  %i.av = fpext <2 x float> %i.aj to <2 x double>
  %i.aw = insertelement <2 x double> poison, double %i.au, i64 0
  %i.ax = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ay = fmul <2 x double> %i.ax, %i.av
  %i.az = fptrunc <2 x double> %i.ay to <2 x float>
  %i.ba = fpext float %i.an to double
  %i.bb = fmul double %i.au, %i.ba
  %i.bc = fptrunc double %i.bb to float
  br label %_ZN4core8vector3dIfE9normalizeEv.exit20

_ZN4core8vector3dIfE9normalizeEv.exit20:          ; preds = %_ZN4core8vector3dIfE9normalizeEv.exit, %bb.c
  %.sroa.13.0 = phi float [ %i.an, %_ZN4core8vector3dIfE9normalizeEv.exit ], [ %i.bc, %bb.c ] ; 4 uses
  %.sroa.030.0 = phi <2 x float> [ %i.aj, %_ZN4core8vector3dIfE9normalizeEv.exit ], [ %i.az, %bb.c ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %.sroa.030.4.vec.extract42 = extractelement <2 x float> %.sroa.030.0, i64 1 ; 4 uses
  %i.be = fneg float %.sroa.030.4.vec.extract42
  %i.bf = fmul float %.sroa.15.0, %i.be
  %i.bg = tail call float @llvm.fmuladd.f32(float %.sroa.048.4.vec.extract62, float %.sroa.13.0, float %i.bf) ; 2 uses
  %.sroa.030.0.vec.extract35 = extractelement <2 x float> %.sroa.030.0, i64 0 ; 4 uses
  %i.bh = fneg float %.sroa.13.0
  %i.bi = fmul float %.sroa.048.0.vec.extract53, %i.bh
  %i.bj = tail call float @llvm.fmuladd.f32(float %.sroa.15.0, float %.sroa.030.0.vec.extract35, float %i.bi) ; 2 uses
  %i.bk = fneg float %.sroa.030.0.vec.extract35
  %i.bl = fmul float %.sroa.048.4.vec.extract62, %i.bk
  %i.bm = tail call float @llvm.fmuladd.f32(float %.sroa.048.0.vec.extract53, float %.sroa.030.4.vec.extract42, float %i.bl) ; 2 uses
  store float %.sroa.030.0.vec.extract35, ptr %0, align 4, !tbaa !13
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.bg, ptr %i.bn, align 4, !tbaa !13
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %.sroa.048.0.vec.extract53, ptr %i.bo, align 4, !tbaa !13
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float 0.000000e+00, ptr %i.bp, align 4, !tbaa !13
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %.sroa.030.4.vec.extract42, ptr %i.bq, align 4, !tbaa !13
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.bj, ptr %i.br, align 4, !tbaa !13
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %.sroa.048.4.vec.extract62, ptr %i.bs, align 4, !tbaa !13
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float 0.000000e+00, ptr %i.bt, align 4, !tbaa !13
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %.sroa.13.0, ptr %i.bu, align 4, !tbaa !13
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.bm, ptr %i.bv, align 4, !tbaa !13
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %.sroa.15.0, ptr %i.bw, align 4, !tbaa !13
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store float 0.000000e+00, ptr %i.bx, align 4, !tbaa !13
  %i.by = load float, ptr %1, align 4, !tbaa !82
  %i.bz = load float, ptr %i.bd, align 4, !tbaa !83
  %i.ca = fmul float %.sroa.030.4.vec.extract42, %i.bz
  %i.cb = tail call float @llvm.fmuladd.f32(float %.sroa.030.0.vec.extract35, float %i.by, float %i.ca)
  %i.cc = load float, ptr %i.f, align 4, !tbaa !15
  %i.cd = tail call noundef float @llvm.fmuladd.f32(float %.sroa.13.0, float %i.cc, float %i.cb)
  %i.ce = fneg float %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float %i.ce, ptr %i.cf, align 4, !tbaa !13
  %i.cg = load float, ptr %1, align 4, !tbaa !82
  %i.ch = load float, ptr %i.bd, align 4, !tbaa !83
  %i.ci = fmul float %i.bj, %i.ch
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.bg, float %i.cg, float %i.ci)
  %i.ck = load float, ptr %i.f, align 4, !tbaa !15
  %i.cl = tail call noundef float @llvm.fmuladd.f32(float %i.bm, float %i.ck, float %i.cj)
  %i.cm = fneg float %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 52
  store float %i.cm, ptr %i.cn, align 4, !tbaa !13
  %i.co = load float, ptr %1, align 4, !tbaa !82
  %i.cp = load float, ptr %i.bd, align 4, !tbaa !83
  %i.cq = fmul float %.sroa.048.4.vec.extract62, %i.cp
  %i.cr = tail call float @llvm.fmuladd.f32(float %.sroa.048.0.vec.extract53, float %i.co, float %i.cq)
  %i.cs = load float, ptr %i.f, align 4, !tbaa !15
  %i.ct = tail call noundef float @llvm.fmuladd.f32(float %.sroa.15.0, float %i.cs, float %i.cr)
  %i.cu = fneg float %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float %i.cu, ptr %i.cv, align 4, !tbaa !13
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float 1.000000e+00, ptr %i.cw, align 4, !tbaa !13
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 4 dereferenceable(24) ptr @_ZNK5scene16CCameraSceneNode14getBoundingBoxEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(646) %0) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 236
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_ZNK5scene16CCameraSceneNode14getViewFrustumEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(646) %0) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 300
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 4 dereferenceable(64) ptr @_ZN4core8CMatrix4IfE20setbyproduct_nocheckERKS1_S3_(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(64) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.c = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.d = add nuw i64 %i.c, 64
  %i.e = add nuw i64 %i.b, 64
  %i.f = add nuw i64 %i.a, 64                     ; 2 uses
  %rt.bound0 = icmp ugt i64 %i.d, %i.a
  %rt.bound1 = icmp ugt i64 %i.f, %i.c
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  %rt.bound0131 = icmp ugt i64 %i.e, %i.a
  %rt.bound1132 = icmp ugt i64 %i.f, %i.b
  %rt.conflict133 = and i1 %rt.bound0131, %rt.bound1132
  %rt.conflict.all = or i1 %rt.conflict, %rt.conflict133
  %rt.guard = freeze i1 %rt.conflict.all
  br i1 %rt.guard, label %.rtscalar, label %.rtvec, !prof !94

.rtvec:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.m = load float, ptr %2, align 4, !tbaa !13   ; 3 uses
  %i.n = load float, ptr %i.h, align 4, !tbaa !13 ; 3 uses
  %i.o = load float, ptr %i.j, align 4, !tbaa !13 ; 3 uses
  %i.p = load float, ptr %i.l, align 4, !tbaa !13 ; 3 uses
  %i.q = load <4 x float>, ptr %2, align 4, !tbaa !13 ; 4 uses
  %i.r = load <4 x float>, ptr %1, align 4, !tbaa !13
  %i.s = load <4 x float>, ptr %i.g, align 4, !tbaa !13
  %i.t = shufflevector <4 x float> %i.q, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.u = insertelement <4 x float> %i.t, float %i.n, i64 1
  %i.v = insertelement <4 x float> %i.u, float %i.n, i64 2
  %i.w = insertelement <4 x float> %i.v, float %i.n, i64 3
  %i.x = fmul <4 x float> %i.s, %i.w
  %i.y = insertelement <4 x float> %i.q, float %i.m, i64 1
  %i.z = insertelement <4 x float> %i.y, float %i.m, i64 2
  %i.aa = insertelement <4 x float> %i.z, float %i.m, i64 3
  %i.ab = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.r, <4 x float> %i.aa, <4 x float> %i.x)
  %i.ac = load <4 x float>, ptr %i.i, align 4, !tbaa !13
  %i.ad = shufflevector <4 x float> %i.q, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.ae = insertelement <4 x float> %i.ad, float %i.o, i64 1
  %i.af = insertelement <4 x float> %i.ae, float %i.o, i64 2
  %i.ag = insertelement <4 x float> %i.af, float %i.o, i64 3
  %i.ah = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ac, <4 x float> %i.ag, <4 x float> %i.ab)
  %i.ai = load <4 x float>, ptr %i.k, align 4, !tbaa !13
  %i.aj = shufflevector <4 x float> %i.q, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %i.ak = insertelement <4 x float> %i.aj, float %i.p, i64 1
  %i.al = insertelement <4 x float> %i.ak, float %i.p, i64 2
  %i.am = insertelement <4 x float> %i.al, float %i.p, i64 3
  %i.an = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ai, <4 x float> %i.am, <4 x float> %i.ah)
  store <4 x float> %i.an, ptr %0, align 4, !tbaa !13
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.at = load float, ptr %i.ao, align 4, !tbaa !13 ; 3 uses
  %i.au = load float, ptr %i.ap, align 4, !tbaa !13 ; 3 uses
  %i.av = load float, ptr %i.aq, align 4, !tbaa !13 ; 3 uses
  %i.aw = load float, ptr %i.ar, align 4, !tbaa !13 ; 3 uses
  %i.ax = load <4 x float>, ptr %i.ao, align 4, !tbaa !13 ; 4 uses
  %i.ay = load <4 x float>, ptr %1, align 4, !tbaa !13
  %i.az = load <4 x float>, ptr %i.g, align 4, !tbaa !13
  %i.ba = shufflevector <4 x float> %i.ax, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.bb = insertelement <4 x float> %i.ba, float %i.au, i64 1
  %i.bc = insertelement <4 x float> %i.bb, float %i.au, i64 2
  %i.bd = insertelement <4 x float> %i.bc, float %i.au, i64 3
  %i.be = fmul <4 x float> %i.az, %i.bd
  %i.bf = insertelement <4 x float> %i.ax, float %i.at, i64 1
  %i.bg = insertelement <4 x float> %i.bf, float %i.at, i64 2
  %i.bh = insertelement <4 x float> %i.bg, float %i.at, i64 3
  %i.bi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ay, <4 x float> %i.bh, <4 x float> %i.be)
  %i.bj = load <4 x float>, ptr %i.i, align 4, !tbaa !13
  %i.bk = shufflevector <4 x float> %i.ax, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.bl = insertelement <4 x float> %i.bk, float %i.av, i64 1
  %i.bm = insertelement <4 x float> %i.bl, float %i.av, i64 2
  %i.bn = insertelement <4 x float> %i.bm, float %i.av, i64 3
  %i.bo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bj, <4 x float> %i.bn, <4 x float> %i.bi)
  %i.bp = load <4 x float>, ptr %i.k, align 4, !tbaa !13
  %i.bq = shufflevector <4 x float> %i.ax, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %i.br = insertelement <4 x float> %i.bq, float %i.aw, i64 1
  %i.bs = insertelement <4 x float> %i.br, float %i.aw, i64 2
  %i.bt = insertelement <4 x float> %i.bs, float %i.aw, i64 3
  %i.bu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bp, <4 x float> %i.bt, <4 x float> %i.bo)
  store <4 x float> %i.bu, ptr %i.as, align 4, !tbaa !13
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ca = load float, ptr %i.bv, align 4, !tbaa !13 ; 3 uses
  %i.cb = load float, ptr %i.bw, align 4, !tbaa !13 ; 3 uses
  %i.cc = load float, ptr %i.bx, align 4, !tbaa !13 ; 3 uses
  %i.cd = load float, ptr %i.by, align 4, !tbaa !13 ; 3 uses
  %i.ce = load <4 x float>, ptr %i.bv, align 4, !tbaa !13 ; 4 uses
  %i.cf = load <4 x float>, ptr %1, align 4, !tbaa !13
  %i.cg = load <4 x float>, ptr %i.g, align 4, !tbaa !13
  %i.ch = shufflevector <4 x float> %i.ce, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ci = insertelement <4 x float> %i.ch, float %i.cb, i64 1
  %i.cj = insertelement <4 x float> %i.ci, float %i.cb, i64 2
  %i.ck = insertelement <4 x float> %i.cj, float %i.cb, i64 3
  %i.cl = fmul <4 x float> %i.cg, %i.ck
  %i.cm = insertelement <4 x float> %i.ce, float %i.ca, i64 1
  %i.cn = insertelement <4 x float> %i.cm, float %i.ca, i64 2
  %i.co = insertelement <4 x float> %i.cn, float %i.ca, i64 3
  %i.cp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cf, <4 x float> %i.co, <4 x float> %i.cl)
  %i.cq = load <4 x float>, ptr %i.i, align 4, !tbaa !13
  %i.cr = shufflevector <4 x float> %i.ce, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.cs = insertelement <4 x float> %i.cr, float %i.cc, i64 1
  %i.ct = insertelement <4 x float> %i.cs, float %i.cc, i64 2
  %i.cu = insertelement <4 x float> %i.ct, float %i.cc, i64 3
  %i.cv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cq, <4 x float> %i.cu, <4 x float> %i.cp)
  %i.cw = load <4 x float>, ptr %i.k, align 4, !tbaa !13
  %i.cx = shufflevector <4 x float> %i.ce, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %i.cy = insertelement <4 x float> %i.cx, float %i.cd, i64 1
  %i.cz = insertelement <4 x float> %i.cy, float %i.cd, i64 2
  %i.da = insertelement <4 x float> %i.cz, float %i.cd, i64 3
  %i.db = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cw, <4 x float> %i.da, <4 x float> %i.cv)
  store <4 x float> %i.db, ptr %i.bz, align 4, !tbaa !13
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dh = load float, ptr %i.dc, align 4, !tbaa !13 ; 3 uses
  %i.di = load float, ptr %i.dd, align 4, !tbaa !13 ; 3 uses
  %i.dj = load float, ptr %i.de, align 4, !tbaa !13 ; 3 uses
  %i.dk = load float, ptr %i.df, align 4, !tbaa !13 ; 3 uses
  %i.dl = load <4 x float>, ptr %i.dc, align 4, !tbaa !13 ; 4 uses
  %i.dm = load <4 x float>, ptr %1, align 4, !tbaa !13
  %i.dn = load <4 x float>, ptr %i.g, align 4, !tbaa !13
  %i.do = shufflevector <4 x float> %i.dl, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.dp = insertelement <4 x float> %i.do, float %i.di, i64 1
  %i.dq = insertelement <4 x float> %i.dp, float %i.di, i64 2
  %i.dr = insertelement <4 x float> %i.dq, float %i.di, i64 3
  %i.ds = fmul <4 x float> %i.dn, %i.dr
  %i.dt = insertelement <4 x float> %i.dl, float %i.dh, i64 1
  %i.du = insertelement <4 x float> %i.dt, float %i.dh, i64 2
  %i.dv = insertelement <4 x float> %i.du, float %i.dh, i64 3
  %i.dw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dm, <4 x float> %i.dv, <4 x float> %i.ds)
  %i.dx = load <4 x float>, ptr %i.i, align 4, !tbaa !13
  %i.dy = shufflevector <4 x float> %i.dl, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.dz = insertelement <4 x float> %i.dy, float %i.dj, i64 1
  %i.ea = insertelement <4 x float> %i.dz, float %i.dj, i64 2
  %i.eb = insertelement <4 x float> %i.ea, float %i.dj, i64 3
  %i.ec = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dx, <4 x float> %i.eb, <4 x float> %i.dw)
  %i.ed = load <4 x float>, ptr %i.k, align 4, !tbaa !13
  %i.ee = shufflevector <4 x float> %i.dl, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %i.ef = insertelement <4 x float> %i.ee, float %i.dk, i64 1
  %i.eg = insertelement <4 x float> %i.ef, float %i.dk, i64 2
  %i.eh = insertelement <4 x float> %i.eg, float %i.dk, i64 3
  %i.ei = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ed, <4 x float> %i.eh, <4 x float> %i.ec)
  store <4 x float> %i.ei, ptr %i.dg, align 4, !tbaa !13
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.a
  %i.ej = load float, ptr %1, align 4, !tbaa !13
  %i.ek = load float, ptr %2, align 4, !tbaa !13
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.em = load float, ptr %i.el, align 4, !tbaa !13
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 4 uses
  %i.eo = load float, ptr %i.en, align 4, !tbaa !13
  %i.ep = fmul float %i.em, %i.eo
  %i.eq = tail call float @llvm.fmuladd.f32(float %i.ej, float %i.ek, float %i.ep)
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.es = load float, ptr %i.er, align 4, !tbaa !13
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.eu = load float, ptr %i.et, align 4, !tbaa !13
  %i.ev = tail call float @llvm.fmuladd.f32(float %i.es, float %i.eu, float %i.eq)
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !13
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !13
  %i.fa = tail call float @llvm.fmuladd.f32(float %i.ex, float %i.ez, float %i.ev)
  store float %i.fa, ptr %0, align 4, !tbaa !13
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !13
  %i.fd = load float, ptr %2, align 4, !tbaa !13
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 4 uses
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !13
  %i.fg = load float, ptr %i.en, align 4, !tbaa !13
  %i.fh = fmul float %i.ff, %i.fg
  %i.fi = tail call float @llvm.fmuladd.f32(float %i.fc, float %i.fd, float %i.fh)
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 4 uses
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !13
  %i.fl = load float, ptr %i.et, align 4, !tbaa !13
  %i.fm = tail call float @llvm.fmuladd.f32(float %i.fk, float %i.fl, float %i.fi)
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 4 uses
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !13
  %i.fp = load float, ptr %i.ey, align 4, !tbaa !13
  %i.fq = tail call float @llvm.fmuladd.f32(float %i.fo, float %i.fp, float %i.fm)
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.fq, ptr %i.fr, align 4, !tbaa !13
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !13
  %i.fu = load float, ptr %2, align 4, !tbaa !13
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !13
  %i.fx = load float, ptr %i.en, align 4, !tbaa !13
  %i.fy = fmul float %i.fw, %i.fx
  %i.fz = tail call float @llvm.fmuladd.f32(float %i.ft, float %i.fu, float %i.fy)
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !13
  %i.gc = load float, ptr %i.et, align 4, !tbaa !13
  %i.gd = tail call float @llvm.fmuladd.f32(float %i.gb, float %i.gc, float %i.fz)
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !13
  %i.gg = load float, ptr %i.ey, align 4, !tbaa !13
  %i.gh = tail call float @llvm.fmuladd.f32(float %i.gf, float %i.gg, float %i.gd)
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.gh, ptr %i.gi, align 4, !tbaa !13
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !13
  %i.gl = load float, ptr %2, align 4, !tbaa !13
end_hunk_0
begin_hunk_1_@_ZN4core8CMatrix4IfE20setbyproduct_nocheckERKS1_S3_:bb.a
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !13
  %i.gx = load float, ptr %i.ey, align 4, !tbaa !13
  %i.gy = tail call float @llvm.fmuladd.f32(float %i.gw, float %i.gx, float %i.gu)
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.gy, ptr %i.gz, align 4, !tbaa !13
  %i.ha = load float, ptr %1, align 4, !tbaa !13
  %i.hb = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !13
  %i.hd = load float, ptr %i.el, align 4, !tbaa !13
  %i.he = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 4 uses
  %i.hf = load float, ptr %i.he, align 4, !tbaa !13
  %i.hg = fmul float %i.hd, %i.hf
  %i.hh = tail call float @llvm.fmuladd.f32(float %i.ha, float %i.hc, float %i.hg)
  %i.hi = load float, ptr %i.er, align 4, !tbaa !13
  %i.hj = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !13
  %i.hl = tail call float @llvm.fmuladd.f32(float %i.hi, float %i.hk, float %i.hh)
  %i.hm = load float, ptr %i.ew, align 4, !tbaa !13
  %i.hn = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 4 uses
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !13
  %i.hp = tail call float @llvm.fmuladd.f32(float %i.hm, float %i.ho, float %i.hl)
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.hp, ptr %i.hq, align 4, !tbaa !13
  %i.hr = load float, ptr %i.fb, align 4, !tbaa !13
  %i.hs = load float, ptr %i.hb, align 4, !tbaa !13
  %i.ht = load float, ptr %i.fe, align 4, !tbaa !13
  %i.hu = load float, ptr %i.he, align 4, !tbaa !13
  %i.hv = fmul float %i.ht, %i.hu
  %i.hw = tail call float @llvm.fmuladd.f32(float %i.hr, float %i.hs, float %i.hv)
  %i.hx = load float, ptr %i.fj, align 4, !tbaa !13
  %i.hy = load float, ptr %i.hj, align 4, !tbaa !13
  %i.hz = tail call float @llvm.fmuladd.f32(float %i.hx, float %i.hy, float %i.hw)
  %i.ia = load float, ptr %i.fn, align 4, !tbaa !13
  %i.ib = load float, ptr %i.hn, align 4, !tbaa !13
  %i.ic = tail call float @llvm.fmuladd.f32(float %i.ia, float %i.ib, float %i.hz)
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.ic, ptr %i.id, align 4, !tbaa !13
  %i.ie = load float, ptr %i.fs, align 4, !tbaa !13
  %i.if = load float, ptr %i.hb, align 4, !tbaa !13
  %i.ig = load float, ptr %i.fv, align 4, !tbaa !13
  %i.ih = load float, ptr %i.he, align 4, !tbaa !13
  %i.ii = fmul float %i.ig, %i.ih
  %i.ij = tail call float @llvm.fmuladd.f32(float %i.ie, float %i.if, float %i.ii)
  %i.ik = load float, ptr %i.ga, align 4, !tbaa !13
  %i.il = load float, ptr %i.hj, align 4, !tbaa !13
  %i.im = tail call float @llvm.fmuladd.f32(float %i.ik, float %i.il, float %i.ij)
  %i.in = load float, ptr %i.ge, align 4, !tbaa !13
  %i.io = load float, ptr %i.hn, align 4, !tbaa !13
  %i.ip = tail call float @llvm.fmuladd.f32(float %i.in, float %i.io, float %i.im)
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.ip, ptr %i.iq, align 4, !tbaa !13
  %i.ir = load float, ptr %i.gj, align 4, !tbaa !13
  %i.is = load float, ptr %i.hb, align 4, !tbaa !13
  %i.it = load float, ptr %i.gm, align 4, !tbaa !13
  %i.iu = load float, ptr %i.he, align 4, !tbaa !13
  %i.iv = fmul float %i.it, %i.iu
  %i.iw = tail call float @llvm.fmuladd.f32(float %i.ir, float %i.is, float %i.iv)
  %i.ix = load float, ptr %i.gr, align 4, !tbaa !13
  %i.iy = load float, ptr %i.hj, align 4, !tbaa !13
  %i.iz = tail call float @llvm.fmuladd.f32(float %i.ix, float %i.iy, float %i.iw)
  %i.ja = load float, ptr %i.gv, align 4, !tbaa !13
  %i.jb = load float, ptr %i.hn, align 4, !tbaa !13
  %i.jc = tail call float @llvm.fmuladd.f32(float %i.ja, float %i.jb, float %i.iz)
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %i.jc, ptr %i.jd, align 4, !tbaa !13
  %i.je = load float, ptr %1, align 4, !tbaa !13
  %i.jf = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !13
  %i.jh = load float, ptr %i.el, align 4, !tbaa !13
  %i.ji = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 4 uses
  %i.jj = load float, ptr %i.ji, align 4, !tbaa !13
  %i.jk = fmul float %i.jh, %i.jj
  %i.jl = tail call float @llvm.fmuladd.f32(float %i.je, float %i.jg, float %i.jk)
  %i.jm = load float, ptr %i.er, align 4, !tbaa !13
  %i.jn = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !13
  %i.jp = tail call float @llvm.fmuladd.f32(float %i.jm, float %i.jo, float %i.jl)
  %i.jq = load float, ptr %i.ew, align 4, !tbaa !13
  %i.jr = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 4 uses
  %i.js = load float, ptr %i.jr, align 4, !tbaa !13
  %i.jt = tail call float @llvm.fmuladd.f32(float %i.jq, float %i.js, float %i.jp)
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.jt, ptr %i.ju, align 4, !tbaa !13
  %i.jv = load float, ptr %i.fb, align 4, !tbaa !13
  %i.jw = load float, ptr %i.jf, align 4, !tbaa !13
  %i.jx = load float, ptr %i.fe, align 4, !tbaa !13
  %i.jy = load float, ptr %i.ji, align 4, !tbaa !13
  %i.jz = fmul float %i.jx, %i.jy
  %i.ka = tail call float @llvm.fmuladd.f32(float %i.jv, float %i.jw, float %i.jz)
  %i.kb = load float, ptr %i.fj, align 4, !tbaa !13
  %i.kc = load float, ptr %i.jn, align 4, !tbaa !13
  %i.kd = tail call float @llvm.fmuladd.f32(float %i.kb, float %i.kc, float %i.ka)
  %i.ke = load float, ptr %i.fn, align 4, !tbaa !13
  %i.kf = load float, ptr %i.jr, align 4, !tbaa !13
  %i.kg = tail call float @llvm.fmuladd.f32(float %i.ke, float %i.kf, float %i.kd)
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.kg, ptr %i.kh, align 4, !tbaa !13
  %i.ki = load float, ptr %i.fs, align 4, !tbaa !13
  %i.kj = load float, ptr %i.jf, align 4, !tbaa !13
  %i.kk = load float, ptr %i.fv, align 4, !tbaa !13
  %i.kl = load float, ptr %i.ji, align 4, !tbaa !13
  %i.km = fmul float %i.kk, %i.kl
  %i.kn = tail call float @llvm.fmuladd.f32(float %i.ki, float %i.kj, float %i.km)
  %i.ko = load float, ptr %i.ga, align 4, !tbaa !13
  %i.kp = load float, ptr %i.jn, align 4, !tbaa !13
  %i.kq = tail call float @llvm.fmuladd.f32(float %i.ko, float %i.kp, float %i.kn)
  %i.kr = load float, ptr %i.ge, align 4, !tbaa !13
  %i.ks = load float, ptr %i.jr, align 4, !tbaa !13
  %i.kt = tail call float @llvm.fmuladd.f32(float %i.kr, float %i.ks, float %i.kq)
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %i.kt, ptr %i.ku, align 4, !tbaa !13
  %i.kv = load float, ptr %i.gj, align 4, !tbaa !13
  %i.kw = load float, ptr %i.jf, align 4, !tbaa !13
  %i.kx = load float, ptr %i.gm, align 4, !tbaa !13
  %i.ky = load float, ptr %i.ji, align 4, !tbaa !13
  %i.kz = fmul float %i.kx, %i.ky
  %i.la = tail call float @llvm.fmuladd.f32(float %i.kv, float %i.kw, float %i.kz)
  %i.lb = load float, ptr %i.gr, align 4, !tbaa !13
  %i.lc = load float, ptr %i.jn, align 4, !tbaa !13
  %i.ld = tail call float @llvm.fmuladd.f32(float %i.lb, float %i.lc, float %i.la)
  %i.le = load float, ptr %i.gv, align 4, !tbaa !13
  %i.lf = load float, ptr %i.jr, align 4, !tbaa !13
  %i.lg = tail call float @llvm.fmuladd.f32(float %i.le, float %i.lf, float %i.ld)
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 44
  store float %i.lg, ptr %i.lh, align 4, !tbaa !13
  %i.li = load float, ptr %1, align 4, !tbaa !13
  %i.lj = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 4 uses
  %i.lk = load float, ptr %i.lj, align 4, !tbaa !13
  %i.ll = load float, ptr %i.el, align 4, !tbaa !13
  %i.lm = getelementptr inbounds nuw i8, ptr %2, i64 52 ; 4 uses
  %i.ln = load float, ptr %i.lm, align 4, !tbaa !13
  %i.lo = fmul float %i.ll, %i.ln
  %i.lp = tail call float @llvm.fmuladd.f32(float %i.li, float %i.lk, float %i.lo)
  %i.lq = load float, ptr %i.er, align 4, !tbaa !13
  %i.lr = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 4 uses
  %i.ls = load float, ptr %i.lr, align 4, !tbaa !13
  %i.lt = tail call float @llvm.fmuladd.f32(float %i.lq, float %i.ls, float %i.lp)
  %i.lu = load float, ptr %i.ew, align 4, !tbaa !13
  %i.lv = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 4 uses
  %i.lw = load float, ptr %i.lv, align 4, !tbaa !13
  %i.lx = tail call float @llvm.fmuladd.f32(float %i.lu, float %i.lw, float %i.lt)
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float %i.lx, ptr %i.ly, align 4, !tbaa !13
  %i.lz = load float, ptr %i.fb, align 4, !tbaa !13
  %i.ma = load float, ptr %i.lj, align 4, !tbaa !13
  %i.mb = load float, ptr %i.fe, align 4, !tbaa !13
  %i.mc = load float, ptr %i.lm, align 4, !tbaa !13
  %i.md = fmul float %i.mb, %i.mc
  %i.me = tail call float @llvm.fmuladd.f32(float %i.lz, float %i.ma, float %i.md)
  %i.mf = load float, ptr %i.fj, align 4, !tbaa !13
  %i.mg = load float, ptr %i.lr, align 4, !tbaa !13
  %i.mh = tail call float @llvm.fmuladd.f32(float %i.mf, float %i.mg, float %i.me)
  %i.mi = load float, ptr %i.fn, align 4, !tbaa !13
  %i.mj = load float, ptr %i.lv, align 4, !tbaa !13
  %i.mk = tail call float @llvm.fmuladd.f32(float %i.mi, float %i.mj, float %i.mh)
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 52
  store float %i.mk, ptr %i.ml, align 4, !tbaa !13
  %i.mm = load float, ptr %i.fs, align 4, !tbaa !13
  %i.mn = load float, ptr %i.lj, align 4, !tbaa !13
  %i.mo = load float, ptr %i.fv, align 4, !tbaa !13
  %i.mp = load float, ptr %i.lm, align 4, !tbaa !13
  %i.mq = fmul float %i.mo, %i.mp
  %i.mr = tail call float @llvm.fmuladd.f32(float %i.mm, float %i.mn, float %i.mq)
  %i.ms = load float, ptr %i.ga, align 4, !tbaa !13
  %i.mt = load float, ptr %i.lr, align 4, !tbaa !13
  %i.mu = tail call float @llvm.fmuladd.f32(float %i.ms, float %i.mt, float %i.mr)
  %i.mv = load float, ptr %i.ge, align 4, !tbaa !13
  %i.mw = load float, ptr %i.lv, align 4, !tbaa !13
  %i.mx = tail call float @llvm.fmuladd.f32(float %i.mv, float %i.mw, float %i.mu)
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float %i.mx, ptr %i.my, align 4, !tbaa !13
  %i.mz = load float, ptr %i.gj, align 4, !tbaa !13
  %i.na = load float, ptr %i.lj, align 4, !tbaa !13
  %i.nb = load float, ptr %i.gm, align 4, !tbaa !13
  %i.nc = load float, ptr %i.lm, align 4, !tbaa !13
  %i.nd = fmul float %i.nb, %i.nc
  %i.ne = tail call float @llvm.fmuladd.f32(float %i.mz, float %i.na, float %i.nd)
  %i.nf = load float, ptr %i.gr, align 4, !tbaa !13
  %i.ng = load float, ptr %i.lr, align 4, !tbaa !13
  %i.nh = tail call float @llvm.fmuladd.f32(float %i.nf, float %i.ng, float %i.ne)
  %i.ni = load float, ptr %i.gv, align 4, !tbaa !13
  %i.nj = load float, ptr %i.lv, align 4, !tbaa !13
  %i.nk = tail call float @llvm.fmuladd.f32(float %i.ni, float %i.nj, float %i.nh)
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float %i.nk, ptr %i.nl, align 4, !tbaa !13
  br label %.rtcont

.rtcont:                                          ; preds = %.rtscalar, %.rtvec
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5scene12SViewFrustum7setFromERKN4core8CMatrix4IfEEb(ptr noundef nonnull align 4 dereferenceable(280) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, i1 noundef zeroext %2) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 6 uses
  %i.b = load float, ptr %i.a, align 4, !tbaa !13
  %i.c = load float, ptr %1, align 4, !tbaa !13
  %i.d = fadd float %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 44
  store float %i.d, ptr %i.f, align 4, !tbaa !95
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 6 uses
  %i.h = load float, ptr %i.g, align 4, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = load float, ptr %i.i, align 4, !tbaa !13
  %i.k = fadd float %i.h, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float %i.k, ptr %i.l, align 4, !tbaa !96
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 6 uses
  %i.n = load float, ptr %i.m, align 4, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.p = load float, ptr %i.o, align 4, !tbaa !13
  %i.q = fadd float %i.n, %i.p                    ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 52
  store float %i.q, ptr %i.r, align 4, !tbaa !97
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 6 uses
  %i.t = load float, ptr %i.s, align 4, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.v = load float, ptr %i.u, align 4, !tbaa !13
  %i.w = fadd float %i.t, %i.v                    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float %i.w, ptr %i.x, align 4, !tbaa !49
  %i.y = load float, ptr %i.a, align 4, !tbaa !13
  %i.z = load float, ptr %1, align 4, !tbaa !13
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.ad = fsub float %i.y, %i.z                   ; 3 uses
  store float %i.ad, ptr %i.aa, align 4, !tbaa !95
  %i.ae = load float, ptr %i.g, align 4, !tbaa !13
  %i.af = load float, ptr %i.i, align 4, !tbaa !13
  %i.ag = fsub float %i.ae, %i.af                 ; 3 uses
  store float %i.ag, ptr %i.ab, align 4, !tbaa !96
  %i.ah = load float, ptr %i.m, align 4, !tbaa !13
  %i.ai = load float, ptr %i.o, align 4, !tbaa !13
  %i.aj = fsub float %i.ah, %i.ai                 ; 3 uses
  store float %i.aj, ptr %i.ac, align 4, !tbaa !97
  %i.ak = load float, ptr %i.s, align 4, !tbaa !13
  %i.al = load float, ptr %i.u, align 4, !tbaa !13
  %i.am = fsub float %i.ak, %i.al                 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72
  store float %i.am, ptr %i.an, align 4, !tbaa !49
  %i.ao = load float, ptr %i.a, align 4, !tbaa !13
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !13
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.bb = fsub float %i.ao, %i.aq                 ; 3 uses
  store float %i.bb, ptr %i.ar, align 4, !tbaa !95
  %i.bc = load float, ptr %i.g, align 4, !tbaa !13
  %i.bd = load float, ptr %i.as, align 4, !tbaa !13
  %i.be = fsub float %i.bc, %i.bd                 ; 3 uses
  store float %i.be, ptr %i.at, align 4, !tbaa !96
  %i.bf = load float, ptr %i.m, align 4, !tbaa !13
  %i.bg = load float, ptr %i.au, align 4, !tbaa !13
  %i.bh = fsub float %i.bf, %i.bg                 ; 3 uses
  store float %i.bh, ptr %i.av, align 4, !tbaa !97
  %i.bi = load float, ptr %i.s, align 4, !tbaa !13
  %i.bj = load float, ptr %i.aw, align 4, !tbaa !13
  %i.bk = fsub float %i.bi, %i.bj
  store float %i.bk, ptr %i.ax, align 4, !tbaa !49
  %i.bl = load float, ptr %i.a, align 4, !tbaa !13
  %i.bm = load float, ptr %i.ap, align 4, !tbaa !13
  %i.bn = fadd float %i.bl, %i.bm                 ; 3 uses
  store float %i.bn, ptr %i.ay, align 4, !tbaa !95
  %i.bo = load float, ptr %i.g, align 4, !tbaa !13
  %i.bp = load float, ptr %i.as, align 4, !tbaa !13
  %i.bq = fadd float %i.bo, %i.bp                 ; 3 uses
  store float %i.bq, ptr %i.az, align 4, !tbaa !96
  %i.br = load float, ptr %i.m, align 4, !tbaa !13
  %i.bs = load float, ptr %i.au, align 4, !tbaa !13
  %i.bt = fadd float %i.br, %i.bs                 ; 3 uses
  store float %i.bt, ptr %i.ba, align 4, !tbaa !97
  %i.bu = load float, ptr %i.s, align 4, !tbaa !13
  %i.bv = load float, ptr %i.aw, align 4, !tbaa !13
  %i.bw = fadd float %i.bu, %i.bv                 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store float %i.bw, ptr %i.bx, align 4, !tbaa !49
  %i.by = load float, ptr %i.a, align 4, !tbaa !13
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !13
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.cg = fsub float %i.by, %i.ca                 ; 3 uses
  store float %i.cg, ptr %i.e, align 4, !tbaa !95
  %i.ch = load float, ptr %i.g, align 4, !tbaa !13
  %i.ci = load float, ptr %i.cb, align 4, !tbaa !13
  %i.cj = fsub float %i.ch, %i.ci                 ; 3 uses
  store float %i.cj, ptr %i.cc, align 4, !tbaa !96
  %i.ck = load float, ptr %i.m, align 4, !tbaa !13
  %i.cl = load float, ptr %i.cd, align 4, !tbaa !13
  %i.cm = fsub float %i.ck, %i.cl                 ; 3 uses
  store float %i.cm, ptr %i.ce, align 4, !tbaa !97
  %i.cn = load float, ptr %i.s, align 4, !tbaa !13
  %i.co = load float, ptr %i.cf, align 4, !tbaa !13
  %i.cp = fsub float %i.cn, %i.co                 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.cp, ptr %i.cq, align 4, !tbaa !49
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.cr = load float, ptr %i.bz, align 4, !tbaa !13 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %i.cr, ptr %i.cs, align 4, !tbaa !95
  %i.ct = load float, ptr %i.cb, align 4, !tbaa !13 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.ct, ptr %i.cu, align 4, !tbaa !96
  %i.cv = load float, ptr %i.cd, align 4, !tbaa !13 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.cv, ptr %i.cw, align 4, !tbaa !97
  %i.cx = load float, ptr %i.cf, align 4, !tbaa !13
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.cy = load float, ptr %i.a, align 4, !tbaa !13
  %i.cz = load float, ptr %i.bz, align 4, !tbaa !13
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.dd = fadd float %i.cy, %i.cz                 ; 2 uses
  store float %i.dd, ptr %i.da, align 4, !tbaa !95
  %i.de = load float, ptr %i.g, align 4, !tbaa !13
  %i.df = load float, ptr %i.cb, align 4, !tbaa !13
  %i.dg = fadd float %i.de, %i.df                 ; 2 uses
  store float %i.dg, ptr %i.db, align 4, !tbaa !96
  %i.dh = load float, ptr %i.m, align 4, !tbaa !13
  %i.di = load float, ptr %i.cd, align 4, !tbaa !13
  %i.dj = fadd float %i.dh, %i.di                 ; 2 uses
  store float %i.dj, ptr %i.dc, align 4, !tbaa !97
  %i.dk = load float, ptr %i.s, align 4, !tbaa !13
  %i.dl = load float, ptr %i.cf, align 4, !tbaa !13
  %i.dm = fadd float %i.dk, %i.dl
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.dn = phi float [ %i.cv, %bb.b ], [ %i.dj, %bb.c ] ; 2 uses
  %i.do = phi float [ %i.ct, %bb.b ], [ %i.dg, %bb.c ] ; 2 uses
  %i.dp = phi float [ %i.cr, %bb.b ], [ %i.dd, %bb.c ] ; 2 uses
  %.sink = phi float [ %i.cx, %bb.b ], [ %i.dm, %bb.c ]
  %i.dq = insertelement <4 x float> poison, float %i.cg, i64 0
  %i.dr = insertelement <4 x float> %i.dq, float %i.cj, i64 1
  %i.ds = insertelement <4 x float> %i.dr, float %i.cm, i64 2
  %i.dt = insertelement <4 x float> %i.ds, float %i.cp, i64 3
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.dv = insertelement <4 x float> poison, float %i.dp, i64 0
  %i.dw = insertelement <4 x float> %i.dv, float %i.do, i64 1
  %i.dx = insertelement <4 x float> %i.dw, float %i.dn, i64 2
  %i.dy = insertelement <4 x float> %i.dx, float %.sink, i64 3
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.eb = load <2 x float>, ptr %i.dz, align 4, !tbaa !13
  %i.ec = load float, ptr %i.ea, align 4, !tbaa !83
  %i.ed = shufflevector <2 x float> %i.eb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 poison> ; 2 uses
  %i.ee = insertelement <4 x float> %i.ed, float %i.q, i64 2
  %i.ef = insertelement <4 x float> %i.ee, float %i.w, i64 3
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.eh = insertelement <4 x float> poison, float %i.cj, i64 0
  %i.ei = insertelement <4 x float> %i.eh, float %i.do, i64 1
  %i.ej = insertelement <4 x float> %i.ei, float %i.ec, i64 2
  %i.ek = insertelement <4 x float> %i.ej, float %i.ag, i64 3 ; 2 uses
  %i.el = fmul <4 x float> %i.ek, %i.ek
  %i.em = insertelement <4 x float> %i.ed, float %i.cg, i64 0
  %i.en = insertelement <4 x float> %i.em, float %i.dp, i64 1
  %i.eo = insertelement <4 x float> %i.en, float %i.ad, i64 3 ; 2 uses
  %i.ep = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eo, <4 x float> %i.eo, <4 x float> %i.el)
  %i.eq = insertelement <4 x float> poison, float %i.cm, i64 0
  %i.er = insertelement <4 x float> %i.eq, float %i.dn, i64 1
  %i.es = insertelement <4 x float> %i.er, float %i.q, i64 2
  %i.et = insertelement <4 x float> %i.es, float %i.aj, i64 3 ; 2 uses
  %i.eu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.et, <4 x float> %i.et, <4 x float> %i.ep)
  %i.ev = tail call <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.eu)
  %i.ew = fdiv <4 x float> splat (float -1.000000e+00), %i.ev ; 4 uses
  %i.ex = shufflevector <4 x float> %i.ew, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ey = fmul <4 x float> %i.dt, %i.ex
  store <4 x float> %i.ey, ptr %i.e, align 4, !tbaa !13
  %i.ez = shufflevector <4 x float> %i.ew, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.fa = fmul <4 x float> %i.dy, %i.ez
  store <4 x float> %i.fa, ptr %i.du, align 4, !tbaa !13
  %i.fb = shufflevector <4 x float> %i.ew, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.fc = fmul <4 x float> %i.ef, %i.fb
  store <4 x float> %i.fc, ptr %i.dz, align 4, !tbaa !13
  %i.fd = insertelement <4 x float> poison, float %i.ad, i64 0
  %i.fe = insertelement <4 x float> %i.fd, float %i.ag, i64 1
  %i.ff = insertelement <4 x float> %i.fe, float %i.aj, i64 2
  %i.fg = insertelement <4 x float> %i.ff, float %i.am, i64 3
  %i.fh = shufflevector <4 x float> %i.ew, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.fi = fmul <4 x float> %i.fg, %i.fh
  store <4 x float> %i.fi, ptr %i.eg, align 4, !tbaa !13
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.fk = insertelement <2 x float> poison, float %i.bq, i64 0
  %i.fl = insertelement <2 x float> %i.fk, float %i.be, i64 1 ; 2 uses
  %i.fm = fmul <2 x float> %i.fl, %i.fl
  %i.fn = insertelement <4 x float> poison, float %i.bn, i64 0
  %i.fo = insertelement <4 x float> %i.fn, float %i.bq, i64 1
  %i.fp = insertelement <4 x float> %i.fo, float %i.bt, i64 2
  %i.fq = insertelement <4 x float> %i.fp, float %i.bw, i64 3
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.fs = insertelement <2 x float> poison, float %i.bn, i64 0
  %i.ft = insertelement <2 x float> %i.fs, float %i.bb, i64 1 ; 2 uses
  %i.fu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ft, <2 x float> %i.ft, <2 x float> %i.fm)
  %i.fv = insertelement <2 x float> poison, float %i.bt, i64 0
  %i.fw = insertelement <2 x float> %i.fv, float %i.bh, i64 1 ; 2 uses
  %i.fx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fw, <2 x float> %i.fw, <2 x float> %i.fu)
  %i.fy = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.fx)
  %i.fz = fdiv <2 x float> splat (float -1.000000e+00), %i.fy ; 2 uses
  %i.ga = shufflevector <2 x float> %i.fz, <2 x float> poison, <4 x i32> zeroinitializer
  %i.gb = fmul <4 x float> %i.fq, %i.ga
  store <4 x float> %i.gb, ptr %i.fj, align 4, !tbaa !13
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !49
  %i.ge = insertelement <4 x float> poison, float %i.bb, i64 0
  %i.gf = insertelement <4 x float> %i.ge, float %i.be, i64 1
  %i.gg = insertelement <4 x float> %i.gf, float %i.bh, i64 2
  %i.gh = insertelement <4 x float> %i.gg, float %i.gd, i64 3
  %i.gi = shufflevector <2 x float> %i.fz, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.gj = fmul <4 x float> %i.gh, %i.gi
  store <4 x float> %i.gj, ptr %i.fr, align 4, !tbaa !13
  tail call void @_ZN5scene12SViewFrustum22recalculateBoundingBoxEv(ptr noundef nonnull align 4 dereferenceable(280) %0)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN5scene16CCameraSceneNode21bindTargetAndRotationEb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(646) initializes((645, 646)) %0, i1 noundef zeroext %1) unnamed_addr #5 align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 645
  store i8 %i.a, ptr %i.b, align 1, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK5scene16CCameraSceneNode27getTargetAndRotationBindingEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(646) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 645
  %i.b = load i8, ptr %i.a, align 1, !tbaa !51, !range !72, !noundef !73
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZN5scene16CCameraSceneNode5cloneEPNS_10ISceneNodeEPNS_13ISceneManagerE(ptr noundef nonnull align 8 dereferenceable(646) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, null
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8
  %.0 = select i1 %.not, ptr %i.b, ptr %1         ; 2 uses
  %.not27 = icmp eq ptr %2, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %.024 = select i1 %.not27, ptr %i.d, ptr %2     ; 4 uses
  %i.e = tail call noalias noundef nonnull dereferenceable(664) ptr @_Znwm(i64 noundef 664) #29 ; 24 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !67
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 260 ; 2 uses
  invoke void @_ZN5scene16CCameraSceneNodeC1EPNS_10ISceneNodeEPNS_13ISceneManagerEiRKN4core8vector3dIfEES9_(ptr noundef nonnull align 8 dereferenceable(646) %i.e, ptr noundef %.0, ptr noundef %.024, i32 noundef %i.g, ptr noundef nonnull align 4 dereferenceable(12) %i.h, ptr noundef nonnull align 4 dereferenceable(12) %i.i)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  tail call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_copy_assignERKS6_(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull align 8 dereferenceable(40) %i.j)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.m, ptr noundef nonnull align 8 dereferenceable(64) %i.l, i64 64, i1 false), !tbaa.struct !81
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.n, ptr noundef nonnull align 8 dereferenceable(12) %i.h, i64 12, i1 false), !tbaa.struct !18
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 124
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.p, ptr noundef nonnull align 4 dereferenceable(12) %i.o, i64 12, i1 false), !tbaa.struct !18
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.r, ptr noundef nonnull align 8 dereferenceable(12) %i.q, i64 12, i1 false), !tbaa.struct !18
  %i.s = load i32, ptr %i.f, align 8, !tbaa !67
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 208
  store i32 %i.s, ptr %i.t, align 8, !tbaa !67
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 212
  %i.w = load <2 x i16>, ptr %i.u, align 4, !tbaa !100
  store <2 x i16> %i.w, ptr %i.v, align 4, !tbaa !100
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.y = load i8, ptr %i.x, align 8, !tbaa !69, !range !72, !noundef !73
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 216
  store i8 %i.y, ptr %i.z, align 8, !tbaa !69
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 217
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !70, !range !72, !noundef !73
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 217
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !70
  %.not.i = icmp eq ptr %.024, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ad = load ptr, ptr %i.c, align 8, !tbaa !66
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink.i = phi ptr [ %i.ad, %bb.c ], [ %.024, %bb.b ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  store ptr %.sink.i, ptr %i.ae, align 8, !tbaa !66
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %.sroa.017.021.i = load ptr, ptr %i.af, align 8, !tbaa !62 ; 2 uses
  %.not2022.i = icmp eq ptr %.sroa.017.021.i, %i.af
  br i1 %.not2022.i, label %_ZN5scene10ISceneNode12cloneMembersEPS0_PNS_13ISceneManagerE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.sroa.017.023.i = phi ptr [ %.sroa.017.0.i, %.lr.ph.i ], [ %.sroa.017.021.i, %bb.d ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.017.023.i, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !84 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !17
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 272
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = tail call noundef ptr %i.ak(ptr noundef nonnull align 8 dereferenceable(218) %i.ah, ptr noundef nonnull align 8 dereferenceable(218) %i.e, ptr noundef %.024), !inline_history !98 ; 0 uses
  %.sroa.017.0.i = load ptr, ptr %.sroa.017.023.i, align 8, !tbaa !62 ; 2 uses
  %.not20.i = icmp eq ptr %.sroa.017.0.i, %i.af
  br i1 %.not20.i, label %_ZN5scene10ISceneNode12cloneMembersEPS0_PNS_13ISceneManagerE.exit, label %.lr.ph.i, !llvm.loop !99

_ZN5scene10ISceneNode12cloneMembersEPS0_PNS_13ISceneManagerE.exit: ; preds = %.lr.ph.i, %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.an = load i8, ptr %i.am, align 8, !tbaa !59, !range !72, !noundef !73
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 232
  store i8 %i.an, ptr %i.ao, align 8, !tbaa !59
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 260
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ap, ptr noundef nonnull align 4 dereferenceable(12) %i.i, i64 12, i1 false), !tbaa.struct !18
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 272
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ar, ptr noundef nonnull align 8 dereferenceable(12) %i.aq, i64 12, i1 false), !tbaa.struct !18
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 284
  %i.au = load <4 x float>, ptr %i.as, align 4, !tbaa !13
  store <4 x float> %i.au, ptr %i.at, align 4, !tbaa !13
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 300
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(280) %i.aw, ptr noundef nonnull align 4 dereferenceable(280) %i.av, i64 280, i1 false), !tbaa.struct !101
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 580
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 580
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.ay, ptr noundef nonnull align 4 dereferenceable(64) %i.ax, i64 64, i1 false), !tbaa.struct !81
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 644
  %i.ba = load i8, ptr %i.az, align 4, !tbaa !50, !range !72, !noundef !73
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 644
  store i8 %i.ba, ptr %i.bb, align 4, !tbaa !50
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 645
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !51, !range !72, !noundef !73
  %i.be = getelementptr inbounds nuw i8, ptr %i.e, i64 645
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !51
  %.not28 = icmp eq ptr %.0, null
  br i1 %.not28, label %_ZNK17IReferenceCounted4dropEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5scene10ISceneNode12cloneMembersEPS0_PNS_13ISceneManagerE.exit
  %i.bf = load ptr, ptr %i.e, align 8, !tbaa !17
  %i.bg = getelementptr i8, ptr %i.bf, i64 -24
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds i8, ptr %i.e, i64 %i.bh ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !80 ; 2 uses
  %i.bl = icmp sgt i32 %i.bk, 0
  br i1 %i.bl, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 119, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK17IReferenceCounted4dropEv) #27
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.bm = add nsw i32 %i.bk, -1                   ; 2 uses
  store i32 %i.bm, ptr %i.bj, align 8, !tbaa !80
  %.not.i29 = icmp eq i32 %i.bm, 0
  br i1 %.not.i29, label %bb.h, label %_ZNK17IReferenceCounted4dropEv.exit

bb.h:                                             ; preds = %bb.g
  %i.bn = load ptr, ptr %i.bi, align 8, !tbaa !17
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8
  tail call void %i.bp(ptr noundef nonnull align 8 dereferenceable(12) %i.bi) #26, !inline_history !2
  br label %_ZNK17IReferenceCounted4dropEv.exit

bb.i:                                             ; preds = %bb.a
  %i.bq = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 664) #28
  resume { ptr, i32 } %i.bq

_ZNK17IReferenceCounted4dropEv.exit:              ; preds = %bb.h, %bb.g, %_ZN5scene10ISceneNode12cloneMembersEPS0_PNS_13ISceneManagerE.exit
  ret ptr %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZN5scene10ISceneNode5cloneEPS0_PNS_13ISceneManagerE(ptr noundef nonnull align 8 dereferenceable(218) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5scene16ICameraSceneNodeD1Ev(ptr noundef nonnull align 8 dereferenceable(233) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #27
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5scene16ICameraSceneNodeD0Ev(ptr noundef nonnull align 8 dereferenceable(233) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #27
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5scene10ISceneNode9OnAnimateEj(ptr noundef nonnull align 8 dereferenceable(218) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load i8, ptr %i.a, align 8, !tbaa !69, !range !72, !noundef !73
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp ne ptr %i.e, %i.d
  %or.cond.not = select i1 %i.c, i1 true, i1 %i.f
  br i1 %or.cond.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(218) %0)
  %.sroa.04.010 = load ptr, ptr %i.d, align 8, !tbaa !62 ; 2 uses
  %.not11 = icmp eq ptr %.sroa.04.010, %i.d
  br i1 %.not11, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.sroa.04.012 = phi ptr [ %.sroa.04.0, %.lr.ph ], [ %.sroa.04.010, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.04.012, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !84   ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(218) %i.k, i32 noundef %1)
  %.sroa.04.0 = load ptr, ptr %.sroa.04.012, align 8, !tbaa !62 ; 2 uses
  %.not = icmp eq ptr %.sroa.04.0, %i.d
  br i1 %.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  ret void
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(40) ptr @_ZNK5scene10ISceneNode7getNameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5scene10ISceneNode7setNameERKSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr noundef nonnull align 8 dereferenceable(218) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_copy_assignERKS6_(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5scene10ISceneNode25getTransformedBoundingBoxEv(ptr dead_on_unwind noalias writable sret(%"class.core::aabbox3d") align 4 %0, ptr noundef nonnull align 8 dereferenceable(218) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 4 dereferenceable(24) ptr %i.c(ptr noundef nonnull align 8 dereferenceable(218) %1)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(24) %i.d, i64 24, i1 false), !tbaa.struct !102
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.j = load <6 x float>, ptr %0, align 4, !tbaa !13 ; 12 uses
  %i.k = load <3 x float>, ptr %i.g, align 8, !tbaa !13 ; 2 uses
  %i.l = shufflevector <3 x float> %i.k, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 2>
  %i.m = load <3 x float>, ptr %i.e, align 8, !tbaa !13
  %i.n = shufflevector <3 x float> %i.m, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 2> ; 3 uses
  %i.o = shufflevector <6 x float> %i.j, <6 x float> poison, <4 x i32> zeroinitializer
  %i.p = fmul <4 x float> %i.o, %i.n              ; 2 uses
  %i.q = shufflevector <6 x float> %i.j, <6 x float> poison, <4 x i32> <i32 0, i32 0, i32 3, i32 0>
  %i.r = shufflevector <6 x float> %i.j, <6 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.s = fmul <4 x float> %i.r, %i.n              ; 2 uses
  %i.t = shufflevector <6 x float> %i.j, <6 x float> poison, <4 x i32> <i32 3, i32 3, i32 0, i32 3>
  %i.u = fcmp olt <4 x float> %i.p, %i.s          ; 2 uses
  %i.v = load <3 x float>, ptr %i.h, align 8, !tbaa !13
  %i.w = shufflevector <3 x float> %i.v, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 2> ; 3 uses
  %i.x = shufflevector <6 x float> %i.j, <6 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.y = fmul <4 x float> %i.x, %i.w              ; 2 uses
  %i.z = shufflevector <6 x float> %i.j, <6 x float> poison, <4 x i32> <i32 1, i32 1, i32 4, i32 1>
  %i.aa = shufflevector <6 x float> %i.j, <6 x float> poison, <4 x i32> <i32 4, i32 4, i32 4, i32 4>
  %i.ab = fmul <4 x float> %i.aa, %i.w            ; 2 uses
  %i.ac = shufflevector <6 x float> %i.j, <6 x float> poison, <4 x i32> <i32 4, i32 4, i32 1, i32 4>
  %i.ad = fcmp olt <4 x float> %i.y, %i.ab        ; 2 uses
  %i.ae = load <3 x float>, ptr %i.i, align 8, !tbaa !13
  %i.af = shufflevector <3 x float> %i.ae, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 2> ; 3 uses
  %i.ag = shufflevector <6 x float> %i.j, <6 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ah = fmul <4 x float> %i.ag, %i.af           ; 2 uses
  %i.ai = shufflevector <6 x float> %i.j, <6 x float> poison, <4 x i32> <i32 2, i32 2, i32 5, i32 2>
  %i.aj = shufflevector <6 x float> %i.j, <6 x float> poison, <4 x i32> <i32 5, i32 5, i32 5, i32 5>
  %i.ak = fmul <4 x float> %i.aj, %i.af           ; 2 uses
  %i.al = shufflevector <6 x float> %i.j, <6 x float> poison, <4 x i32> <i32 5, i32 5, i32 2, i32 5>
  %i.am = fcmp olt <4 x float> %i.ah, %i.ak       ; 2 uses
  %.v = select <4 x i1> %i.u, <4 x float> %i.q, <4 x float> %i.t
  %i.an = fmul <4 x float> %.v, %i.n
  %.v1 = select <4 x i1> %i.ad, <4 x float> %i.z, <4 x float> %i.ac
  %i.ao = fmul <4 x float> %.v1, %i.w
  %.v2 = select <4 x i1> %i.am, <4 x float> %i.ai, <4 x float> %i.al
  %i.ap = fmul <4 x float> %.v2, %i.af
  %i.aq = fadd <4 x float> %i.l, %i.an
  %i.ar = fadd <4 x float> %i.ao, %i.aq
  %i.as = fadd <4 x float> %i.ap, %i.ar
  %i.at = shufflevector <4 x float> %i.as, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 3, i32 2>
  store <4 x float> %i.at, ptr %0, align 4, !tbaa !13
  %i.au = shufflevector <4 x i1> %i.u, <4 x i1> poison, <2 x i32> <i32 1, i32 3>
  %i.av = shufflevector <4 x float> %i.s, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.aw = shufflevector <4 x float> %i.p, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.ax = select <2 x i1> %i.au, <2 x float> %i.av, <2 x float> %i.aw
  %i.ay = shufflevector <4 x i1> %i.ad, <4 x i1> poison, <2 x i32> <i32 1, i32 3>
  %i.az = shufflevector <4 x float> %i.ab, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.ba = shufflevector <4 x float> %i.y, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.bb = select <2 x i1> %i.ay, <2 x float> %i.az, <2 x float> %i.ba
  %i.bc = shufflevector <4 x i1> %i.am, <4 x i1> poison, <2 x i32> <i32 1, i32 3>
  %i.bd = shufflevector <4 x float> %i.ak, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.be = shufflevector <4 x float> %i.ah, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.bf = select <2 x i1> %i.bc, <2 x float> %i.bd, <2 x float> %i.be
  %i.bg = shufflevector <3 x float> %i.k, <3 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.bh = fadd <2 x float> %i.bg, %i.ax
  %i.bi = fadd <2 x float> %i.bb, %i.bh
  %i.bj = fadd <2 x float> %i.bf, %i.bi
  store <2 x float> %i.bj, ptr %i.f, align 4, !tbaa !13
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5scene10ISceneNode30getTransformedBoundingBoxEdgesERN4core5arrayINS1_8vector3dIfEEEE(ptr noundef nonnull align 8 dereferenceable(218) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !88     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 12                  ; 2 uses
  %i.h = icmp ult i64 %i.g, 8
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw nsw i64 8, %i.g
  tail call void @_ZNSt6vectorIN4core8vector3dIfEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(25) %1, i64 noundef %i.i)
  br label %_ZN4core5arrayINS_8vector3dIfEEE8set_usedEj.exit

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.f, 96
  br i1 %.not, label %_ZN4core5arrayINS_8vector3dIfEEE8set_usedEj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, %i.j
  br i1 %.not.i.i.i, label %_ZN4core5arrayINS_8vector3dIfEEE8set_usedEj.exit, label %_ZSt8_DestroyIPN4core8vector3dIfEES2_EvT_S4_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN4core8vector3dIfEES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %bb.d
  store ptr %i.j, ptr %i.a, align 8, !tbaa !87
  br label %_ZN4core5arrayINS_8vector3dIfEEE8set_usedEj.exit

_ZN4core5arrayINS_8vector3dIfEEE8set_usedEj.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPN4core8vector3dIfEES2_EvT_S4_RSaIT0_E.exit.i.i.i
  %i.k = load ptr, ptr %0, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef nonnull align 4 dereferenceable(24) ptr %i.m(ptr noundef nonnull align 8 dereferenceable(218) %0) ; 2 uses
  %i.o = load ptr, ptr %1, align 8, !tbaa !104    ; 10 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.q = load <3 x float>, ptr %i.n, align 4, !tbaa !13
  %i.r = shufflevector <3 x float> %i.q, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.s = load <3 x float>, ptr %i.p, align 4, !tbaa !13
  %i.t = shufflevector <3 x float> %i.s, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1> ; 2 uses
  %i.u = fadd <4 x float> %i.r, %i.t
  %i.v = fmul <4 x float> %i.u, splat (float 5.000000e-01) ; 5 uses
  %i.w = fsub <4 x float> %i.v, %i.t              ; 4 uses
  %i.x = fadd <4 x float> %i.v, %i.w              ; 2 uses
  %i.y = fsub <4 x float> %i.v, %i.w              ; 2 uses
  %i.z = shufflevector <4 x float> %i.x, <4 x float> %i.y, <8 x i32> <i32 0, i32 1, i32 2, i32 0, i32 7, i32 2, i32 0, i32 1> ; 2 uses
  %foldExtExtBinop = fsub <4 x float> %i.v, %i.w
  %i.aa = extractelement <4 x float> %foldExtExtBinop, i64 2 ; 4 uses
  store <8 x float> %i.z, ptr %i.o, align 4, !tbaa !13
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store float %i.aa, ptr %i.ab, align 4, !tbaa !15
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 36
  %i.ad = extractelement <4 x float> %i.x, i64 0
  store float %i.ad, ptr %i.ac, align 4, !tbaa !82
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.af = extractelement <4 x float> %i.y, i64 3  ; 2 uses
  store float %i.af, ptr %i.ae, align 4, !tbaa !83
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 44
  store float %i.aa, ptr %i.ag, align 4, !tbaa !15
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %foldExtExtBinop10 = fsub <4 x float> %i.v, %i.w ; 2 uses
  %i.ai = extractelement <4 x float> %foldExtExtBinop10, i64 0
  %i.aj = shufflevector <4 x float> %foldExtExtBinop10, <4 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ak = shufflevector <8 x float> %i.aj, <8 x float> %i.z, <8 x i32> <i32 0, i32 9, i32 10, i32 0, i32 12, i32 10, i32 0, i32 9>
  store <8 x float> %i.ak, ptr %i.ah, align 4, !tbaa !13
  %i.al = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  store float %i.aa, ptr %i.al, align 4, !tbaa !15
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 84
  store float %i.ai, ptr %i.am, align 4, !tbaa !82
  %i.an = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  store float %i.af, ptr %i.an, align 4, !tbaa !83
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 92
  store float %i.aa, ptr %i.ao, align 4, !tbaa !15
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.f

bb.e:                                             ; preds = %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit
  ret void

bb.f:                                             ; preds = %_ZN4core5arrayINS_8vector3dIfEEE8set_usedEj.exit, %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit
  %indvars.iv = phi i64 [ 0, %_ZN4core5arrayINS_8vector3dIfEEE8set_usedEj.exit ], [ %indvars.iv.next, %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit ] ; 3 uses
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !87
  %i.ay = load ptr, ptr %1, align 8, !tbaa !88    ; 2 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = sdiv exact i64 %i.bb, 12
  %i.bd = icmp ugt i64 %i.bc, %indvars.iv
  br i1 %i.bd, label %_ZN4core5arrayINS_8vector3dIfEEEixEj.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayINS_8vector3dIfEEEixEj) #27
  unreachable

_ZN4core5arrayINS_8vector3dIfEEEixEj.exit:        ; preds = %bb.f
  %i.be = getelementptr inbounds nuw [12 x i8], ptr %i.ay, i64 %indvars.iv ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load <3 x float>, ptr %i.be, align 4, !tbaa !13 ; 5 uses
  %i.bh = load float, ptr %i.be, align 4, !tbaa !82
  %i.bi = load <2 x float>, ptr %i.ap, align 8, !tbaa !13
  %i.bj = load <2 x float>, ptr %i.aq, align 8, !tbaa !13
  %i.bk = shufflevector <3 x float> %i.bg, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bl = fmul <2 x float> %i.bk, %i.bj
  %i.bm = shufflevector <3 x float> %i.bg, <3 x float> poison, <2 x i32> zeroinitializer
  %i.bn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bm, <2 x float> %i.bi, <2 x float> %i.bl)
  %i.bo = load <2 x float>, ptr %i.ar, align 8, !tbaa !13
  %i.bp = shufflevector <3 x float> %i.bg, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.bq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bp, <2 x float> %i.bo, <2 x float> %i.bn)
  %i.br = load <2 x float>, ptr %i.as, align 8, !tbaa !13
  %i.bs = fadd <2 x float> %i.bq, %i.br
  %i.bt = load float, ptr %i.at, align 8, !tbaa !13
  %i.bu = load float, ptr %i.au, align 8, !tbaa !13
  %i.bv = extractelement <3 x float> %i.bg, i64 1
  %i.bw = fmul float %i.bv, %i.bu
  %i.bx = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.bt, float %i.bw)
  %i.by = load float, ptr %i.av, align 8, !tbaa !13
  %i.bz = extractelement <3 x float> %i.bg, i64 2
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.bz, float %i.by, float %i.bx)
  %i.cb = load float, ptr %i.aw, align 8, !tbaa !13
  %i.cc = fadd float %i.cb, %i.ca
  store <2 x float> %i.bs, ptr %i.be, align 4
  store float %i.cc, ptr %i.bf, align 4, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %bb.e, label %bb.f, !llvm.loop !103
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 4 dereferenceable(64) ptr @_ZNK5scene10ISceneNode25getAbsoluteTransformationEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5scene10ISceneNode25getRelativeTransformationEv(ptr dead_on_unwind noalias writable sret(%"class.core::CMatrix4") align 4 %0, ptr noundef nonnull align 8 dereferenceable(218) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.b, i8 0, i64 36, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float 1.000000e+00, ptr %i.c, align 4, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.f = load float, ptr %i.e, align 4, !tbaa !82
  %i.g = fmul float %i.f, f0x3C8EFA35
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.i = fpext float %i.g to double               ; 2 uses
  %i.j = tail call double @cos(double noundef %i.i) #26 ; 3 uses
  %i.k = tail call double @sin(double noundef %i.i) #26 ; 3 uses
  %i.l = load <2 x float>, ptr %i.h, align 8, !tbaa !13
  %i.m = fmul <2 x float> %i.l, splat (float f0x3C8EFA35)
  %i.n = fpext <2 x float> %i.m to <2 x double>   ; 2 uses
  %i.o = extractelement <2 x double> %i.n, i64 0  ; 2 uses
  %i.p = tail call double @cos(double noundef %i.o) #26 ; 4 uses
  %i.q = tail call double @sin(double noundef %i.o) #26 ; 3 uses
  %i.r = extractelement <2 x double> %i.n, i64 1  ; 2 uses
  %i.s = tail call double @cos(double noundef %i.r) #26 ; 5 uses
  %i.t = tail call double @sin(double noundef %i.r) #26 ; 5 uses
  %i.u = fmul double %i.p, %i.s
  %i.v = fptrunc double %i.u to float             ; 3 uses
  store float %i.v, ptr %0, align 4, !tbaa !13
  %i.w = fmul double %i.p, %i.t
  %i.x = fptrunc double %i.w to float             ; 3 uses
  store float %i.x, ptr %i.a, align 4, !tbaa !13
  %i.y = fptrunc double %i.q to float
  %i.z = fneg float %i.y                          ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.z, ptr %i.aa, align 4, !tbaa !13
  %i.ab = fmul double %i.k, %i.q
  %i.ac = fmul double %i.j, %i.q
  %i.ad = fneg double %i.t
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.af = insertelement <2 x double> poison, double %i.j, i64 0
  %i.ag = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ah = insertelement <2 x double> poison, double %i.ad, i64 0
  %i.ai = insertelement <2 x double> %i.ah, double %i.s, i64 1
  %i.aj = fmul <2 x double> %i.ag, %i.ai
  %i.ak = insertelement <2 x double> poison, double %i.ab, i64 0
  %i.al = shufflevector <2 x double> %i.ak, <2 x double> poison, <2 x i32> zeroinitializer
  %i.am = insertelement <2 x double> poison, double %i.s, i64 0
  %i.an = insertelement <2 x double> %i.am, double %i.t, i64 1
  %i.ao = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.al, <2 x double> %i.an, <2 x double> %i.aj)
  %i.ap = fptrunc <2 x double> %i.ao to <2 x float> ; 2 uses
  store <2 x float> %i.ap, ptr %i.ae, align 4, !tbaa !13
  %i.aq = fmul double %i.k, %i.p
  %i.ar = fptrunc double %i.aq to float           ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.ar, ptr %i.as, align 4, !tbaa !13
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.au = fneg double %i.s
  %i.av = insertelement <2 x double> poison, double %i.k, i64 0
  %i.aw = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ax = insertelement <2 x double> poison, double %i.t, i64 0
  %i.ay = insertelement <2 x double> %i.ax, double %i.au, i64 1
  %i.az = fmul <2 x double> %i.aw, %i.ay
  %i.ba = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.bb = shufflevector <2 x double> %i.ba, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bc = insertelement <2 x double> poison, double %i.s, i64 0
  %i.bd = insertelement <2 x double> %i.bc, double %i.t, i64 1
  %i.be = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bb, <2 x double> %i.bd, <2 x double> %i.az)
  %i.bf = fptrunc <2 x double> %i.be to <2 x float> ; 2 uses
  store <2 x float> %i.bf, ptr %i.at, align 4, !tbaa !13
  %i.bg = fmul double %i.j, %i.p
  %i.bh = fptrunc double %i.bg to float           ; 4 uses
  store float %i.bh, ptr %i.d, align 4, !tbaa !13
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.bl = load <2 x float>, ptr %i.bi, align 8, !tbaa !13 ; 3 uses
  %i.bm = extractelement <2 x float> %i.bl, i64 0
  store float %i.bm, ptr %i.bj, align 4, !tbaa !13
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bp = load <2 x float>, ptr %i.bk, align 4, !tbaa !13 ; 3 uses
  %i.bq = load float, ptr %i.bo, align 8, !tbaa !15 ; 3 uses
  %i.br = extractelement <2 x float> %i.bp, i64 0
  store float %i.br, ptr %i.bn, align 4, !tbaa !13
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float %i.bq, ptr %i.bs, align 4, !tbaa !13
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bu = load float, ptr %i.bt, align 8, !tbaa !82 ; 3 uses
  %i.bv = fcmp oeq float %i.bu, 1.000000e+00
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !83 ; 2 uses
  %i.by = fcmp oeq float %i.bx, 1.000000e+00
  %or.cond = select i1 %i.bv, i1 %i.by, i1 false
  br i1 %or.cond, label %_ZNK4core8vector3dIfEneERKS1_.exit, label %_ZNK4core8vector3dIfEneERKS1_.exit.thread

_ZNK4core8vector3dIfEneERKS1_.exit:               ; preds = %bb.a
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ca = load float, ptr %i.bz, align 8, !tbaa !15
  %i.cb = fcmp une float %i.ca, 1.000000e+00
  br i1 %i.cb, label %_ZNK4core8vector3dIfEneERKS1_.exit.thread, label %bb.b

_ZNK4core8vector3dIfEneERKS1_.exit.thread:        ; preds = %bb.a, %_ZNK4core8vector3dIfEneERKS1_.exit
  %i.cc = phi float [ 1.000000e+00, %_ZNK4core8vector3dIfEneERKS1_.exit ], [ %i.bx, %bb.a ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ce = load float, ptr %i.cd, align 8, !tbaa !15
  %i.cf = shufflevector <2 x float> %i.ap, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cg = insertelement <4 x float> %i.cf, float 1.000000e+00, i64 3
  %i.ch = insertelement <4 x float> %i.cg, float %i.ar, i64 2 ; 2 uses
  %i.ci = fmul <4 x float> %i.ch, zeroinitializer ; 2 uses
  %i.cj = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.v, i64 0
  %i.ck = insertelement <4 x float> %i.cj, float %i.x, i64 1
  %i.cl = insertelement <4 x float> %i.ck, float %i.z, i64 2
  %i.cm = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.bu, i64 0
  %i.cn = shufflevector <4 x float> %i.cm, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.co = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cl, <4 x float> %i.cn, <4 x float> %i.ci)
  %i.cp = shufflevector <2 x float> %i.bf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.cq = insertelement <4 x float> %i.cp, float %i.bh, i64 2 ; 2 uses
  %i.cr = insertelement <4 x float> %i.cq, float %i.bu, i64 3
  %i.cs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cr, <4 x float> zeroinitializer, <4 x float> %i.co)
  %i.ct = shufflevector <2 x float> %i.bl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cu = insertelement <4 x float> %i.ct, float 0.000000e+00, i64 3
  %i.cv = shufflevector <2 x float> %i.bp, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cw = shufflevector <4 x float> %i.cu, <4 x float> %i.cv, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.cx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cw, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.cs)
  store <4 x float> %i.cx, ptr %0, align 4, !tbaa !13
  %i.cy = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.cc, i64 0
  %i.cz = shufflevector <4 x float> %i.cy, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.da = fmul <4 x float> %i.cz, %i.ch
  %i.db = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.v, i64 0
  %i.dc = insertelement <4 x float> %i.db, float %i.x, i64 1
  %i.dd = insertelement <4 x float> %i.dc, float %i.z, i64 2 ; 2 uses
  %i.de = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dd, <4 x float> zeroinitializer, <4 x float> %i.da)
  %i.df = insertelement <4 x float> %i.cq, float %i.cc, i64 3
  %i.dg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.df, <4 x float> zeroinitializer, <4 x float> %i.de)
  %i.dh = shufflevector <2 x float> %i.bl, <2 x float> %i.bp, <4 x i32> <i32 0, i32 2, i32 3, i32 poison> ; 2 uses
  %i.di = insertelement <4 x float> %i.dh, float 0.000000e+00, i64 3 ; 2 uses
  %i.dj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.di, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.dg)
  store <4 x float> %i.dj, ptr %i.ae, align 4, !tbaa !13
  %i.dk = insertelement <4 x float> %i.ci, float 0.000000e+00, i64 3
  %i.dl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dd, <4 x float> zeroinitializer, <4 x float> %i.dk) ; 2 uses
  %i.dm = insertelement <4 x float> poison, float %i.ce, i64 0
  %i.dn = shufflevector <4 x float> %i.dm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.do = insertelement <4 x float> %i.cp, float 0.000000e+00, i64 3
  %i.dp = insertelement <4 x float> %i.do, float %i.bh, i64 2
  %i.dq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dn, <4 x float> %i.dp, <4 x float> %i.dl)
  %i.dr = insertelement <4 x float> %i.di, float %i.bq, i64 2
  %i.ds = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dr, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.dq)
  store <4 x float> %i.ds, ptr %i.at, align 4, !tbaa !13
  %i.dt = insertelement <4 x float> %i.cp, float -0.000000e+00, i64 3
  %i.du = insertelement <4 x float> %i.dt, float %i.bh, i64 2
  %i.dv = insertelement <4 x float> %i.dl, float 1.000000e+00, i64 3
  %i.dw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.du, <4 x float> zeroinitializer, <4 x float> %i.dv)
  %i.dx = insertelement <4 x float> %i.dh, float -0.000000e+00, i64 3
  %i.dy = insertelement <4 x float> %i.dx, float %i.bq, i64 2
  %i.dz = fadd <4 x float> %i.dw, %i.dy
  store <4 x float> %i.dz, ptr %i.bj, align 4, !tbaa !13
  br label %bb.b

bb.b:                                             ; preds = %_ZNK4core8vector3dIfEneERKS1_.exit.thread, %_ZNK4core8vector3dIfEneERKS1_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5scene10ISceneNode9isVisibleEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load i8, ptr %i.a, align 8, !tbaa !69, !range !72, !noundef !73
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5scene10ISceneNode14isTrulyVisibleEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load i8, ptr %i.a, align 8, !tbaa !69, !range !72, !noundef !73
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !65   ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(218) %i.e)
  br label %bb.d
end_hunk_1
begin_hunk_2_@_ZN5scene10ISceneNode9removeAllEv:bb.a
  br i1 %i.q, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 119, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK17IReferenceCounted4dropEv) #27
  unreachable

bb.c:                                             ; preds = %.lr.ph
  %i.r = add nsw i32 %i.p, -1                     ; 2 uses
  store i32 %i.r, ptr %i.o, align 8, !tbaa !80
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %bb.d, label %_ZNK17IReferenceCounted4dropEv.exit

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !17
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(12) %i.n) #26, !inline_history !2
  br label %_ZNK17IReferenceCounted4dropEv.exit

_ZNK17IReferenceCounted4dropEv.exit:              ; preds = %bb.c, %bb.d
  %.sroa.06.0 = load ptr, ptr %.sroa.06.011, align 8, !tbaa !62 ; 2 uses
  %.not = icmp eq ptr %.sroa.06.0, %i.a
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5scene10ISceneNode6removeEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(218) %i.b, ptr noundef nonnull %0) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(127) ptr @_ZN5scene10ISceneNode11getMaterialEj(ptr noundef nonnull align 8 dereferenceable(218) %0, i32 noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  ret ptr @_ZN5video16IdentityMaterialE
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK5scene10ISceneNode16getMaterialCountEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 4 dereferenceable(12) ptr @_ZNK5scene10ISceneNode8getScaleEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5scene10ISceneNode8setScaleERKN4core8vector3dIfEE(ptr noundef nonnull align 8 dereferenceable(218) %0, ptr noundef nonnull align 4 dereferenceable(12) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false), !tbaa.struct !18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { <2 x float>, float } @_ZNK5scene10ISceneNode11getRotationEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 124
  %.sroa.01.0.copyload = load <2 x float>, ptr %i.a, align 4
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 132
  %.sroa.22.0.copyload = load float, ptr %.sroa.22.0..sroa_idx, align 4, !tbaa !13
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.01.0.copyload, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %.sroa.22.0.copyload, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 4 dereferenceable(12) ptr @_ZNK5scene10ISceneNode11getPositionEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5scene10ISceneNode11setPositionERKN4core8vector3dIfEE(ptr noundef nonnull align 8 dereferenceable(218) %0, ptr noundef nonnull align 4 dereferenceable(12) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false), !tbaa.struct !18
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { <2 x float>, float } @_ZNK5scene10ISceneNode19getAbsolutePositionEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load <4 x float>, ptr %i.a, align 8      ; 2 uses
  %i.c = extractelement <4 x float> %i.b, i64 2
  %.sroa.0.4.vec.insert.i = shufflevector <4 x float> %i.b, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.fca.0.insert.i = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.0.4.vec.insert.i, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, float } %.fca.0.insert.i, float %i.c, 1
  ret { <2 x float>, float } %.fca.1.insert.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5scene10ISceneNode19setDebugDataVisibleEt(ptr noundef nonnull align 8 dereferenceable(218) %0, i16 noundef zeroext %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 214
  store i16 %1, ptr %i.a, align 2, !tbaa !68
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5scene10ISceneNode9setParentEPS0_(ptr noundef nonnull align 8 dereferenceable(218) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !80
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8, !tbaa !80
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(218) %0)
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %1, align 8, !tbaa !17
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(218) %1, ptr noundef nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = load ptr, ptr %0, align 8, !tbaa !17
  %i.n = getelementptr i8, ptr %i.m, i64 -24
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds i8, ptr %0, i64 %i.o ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !80   ; 2 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 119, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK17IReferenceCounted4dropEv) #27
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.t = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.t, ptr %i.q, align 8, !tbaa !80
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %bb.f, label %_ZNK17IReferenceCounted4dropEv.exit

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %i.p, align 8, !tbaa !17
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(12) %i.p) #26, !inline_history !2
  br label %_ZNK17IReferenceCounted4dropEv.exit

_ZNK17IReferenceCounted4dropEv.exit:              ; preds = %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5scene10ISceneNode22updateAbsolutePositionEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.core::CMatrix4", align 16   ; 7 uses
  %2 = alloca %"class.core::CMatrix4", align 4    ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef nonnull align 4 dereferenceable(64) ptr %i.e(ptr noundef nonnull align 8 dereferenceable(218) %i.b) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.g = load ptr, ptr %0, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.i = load ptr, ptr %i.h, align 8
  call void %i.i(ptr dead_on_unwind nonnull writable sret(%"class.core::CMatrix4") align 4 %1, ptr noundef nonnull align 8 dereferenceable(218) %0)
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load <4 x float>, ptr %1, align 16, !tbaa !13, !noalias !107 ; 4 uses
  %i.r = load <4 x float>, ptr %i.f, align 4, !tbaa !13, !noalias !107 ; 4 uses
  %i.s = load <4 x float>, ptr %i.j, align 4, !tbaa !13, !noalias !107 ; 4 uses
  %i.t = shufflevector <4 x float> %i.q, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.u = fmul <4 x float> %i.t, %i.s
  %i.v = shufflevector <4 x float> %i.q, <4 x float> poison, <4 x i32> zeroinitializer
  %i.w = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.r, <4 x float> %i.v, <4 x float> %i.u)
  %i.x = load <4 x float>, ptr %i.k, align 4, !tbaa !13, !noalias !107 ; 4 uses
  %i.y = shufflevector <4 x float> %i.q, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.z = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.x, <4 x float> %i.y, <4 x float> %i.w)
  %i.aa = load <4 x float>, ptr %i.l, align 4, !tbaa !13, !noalias !107 ; 4 uses
  %i.ab = shufflevector <4 x float> %i.q, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ac = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aa, <4 x float> %i.ab, <4 x float> %i.z)
  store <4 x float> %i.ac, ptr %i.p, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ad = load <4 x float>, ptr %i.m, align 16, !tbaa !13, !noalias !107 ; 4 uses
  %i.ae = shufflevector <4 x float> %i.ad, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.af = fmul <4 x float> %i.s, %i.ae
  %i.ag = shufflevector <4 x float> %i.ad, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ah = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.r, <4 x float> %i.ag, <4 x float> %i.af)
  %i.ai = shufflevector <4 x float> %i.ad, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.aj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.x, <4 x float> %i.ai, <4 x float> %i.ah)
  %i.ak = shufflevector <4 x float> %i.ad, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.al = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aa, <4 x float> %i.ak, <4 x float> %i.aj)
  store <4 x float> %i.al, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.am = load <4 x float>, ptr %i.n, align 16, !tbaa !13, !noalias !107 ; 4 uses
  %i.an = shufflevector <4 x float> %i.am, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ao = fmul <4 x float> %i.s, %i.an
  %i.ap = shufflevector <4 x float> %i.am, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.r, <4 x float> %i.ap, <4 x float> %i.ao)
  %i.ar = shufflevector <4 x float> %i.am, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.as = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.x, <4 x float> %i.ar, <4 x float> %i.aq)
  %i.at = shufflevector <4 x float> %i.am, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.au = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aa, <4 x float> %i.at, <4 x float> %i.as)
  store <4 x float> %i.au, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.av = load <4 x float>, ptr %i.o, align 16, !tbaa !13, !noalias !107 ; 4 uses
  %i.aw = shufflevector <4 x float> %i.av, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ax = fmul <4 x float> %i.s, %i.aw
  %i.ay = shufflevector <4 x float> %i.av, <4 x float> poison, <4 x i32> zeroinitializer
  %i.az = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.r, <4 x float> %i.ay, <4 x float> %i.ax)
  %i.ba = shufflevector <4 x float> %i.av, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.bb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.x, <4 x float> %i.ba, <4 x float> %i.az)
  %i.bc = shufflevector <4 x float> %i.av, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.bd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aa, <4 x float> %i.bc, <4 x float> %i.bb)
  store <4 x float> %i.bd, ptr %.sroa.15.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.be = load ptr, ptr %0, align 8, !tbaa !17
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 88
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr dead_on_unwind nonnull writable sret(%"class.core::CMatrix4") align 4 %2, ptr noundef nonnull align 8 dereferenceable(218) %0)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bh, ptr noundef nonnull align 4 dereferenceable(64) %2, i64 64, i1 false), !tbaa.struct !81
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK5scene10ISceneNode7getTypeEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret i32 1852534389
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK5scene10ISceneNode15getSceneManagerEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5scene16ICameraSceneNode12isOrthogonalEv(ptr noundef nonnull align 8 dereferenceable(233) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load i8, ptr %i.a, align 8, !tbaa !59, !range !72, !noundef !73
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZTv0_n24_N5scene16ICameraSceneNodeD1Ev(ptr noundef %0) unnamed_addr #13 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #27
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZTv0_n24_N5scene16ICameraSceneNodeD0Ev(ptr noundef %0) unnamed_addr #13 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #27
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5scene10ISceneNodeD1Ev(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #27
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5scene10ISceneNodeD0Ev(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #27
  unreachable
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZTv0_n24_N5scene10ISceneNodeD1Ev(ptr noundef %0) unnamed_addr #14 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #27
  unreachable
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZTv0_n24_N5scene10ISceneNodeD0Ev(ptr noundef %0) unnamed_addr #14 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #27
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5scene16CCameraSceneNodeD1Ev(ptr noundef nonnull align 8 dereferenceable(646) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-24, 288) (i8, ptr @_ZTCN5scene16CCameraSceneNodeE0_NS_10ISceneNodeE, i64 24), ptr %0, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 648
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN5scene16CCameraSceneNodeE0_NS_10ISceneNodeE, i64 336), ptr %i.a, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 9 uses
  %.sroa.06.09.i = load ptr, ptr %i.b, align 8, !tbaa !62 ; 3 uses
  %.not10.i = icmp eq ptr %.sroa.06.09.i, %i.b
  br i1 %.not10.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %_ZNK17IReferenceCounted4dropEv.exit.i
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !62
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.a
  %i.c = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %.sroa.06.09.i, %bb.a ] ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not8.i.i.i, label %_ZNSt7__cxx1110_List_baseIPN5scene10ISceneNodeESaIS3_EED2Ev.exit.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge.i, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i ], [ %i.c, %._crit_edge.i ] ; 2 uses
  %i.d = load ptr, ptr %.09.i.i.i, align 8, !tbaa !62 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i, i64 noundef 24) #28
  %.not.i.i.i = icmp eq ptr %i.d, %i.b
  br i1 %.not.i.i.i, label %_ZNSt7__cxx1110_List_baseIPN5scene10ISceneNodeESaIS3_EED2Ev.exit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !0

.lr.ph.i:                                         ; preds = %bb.a, %_ZNK17IReferenceCounted4dropEv.exit.i
  %.sroa.06.011.i = phi ptr [ %.sroa.06.0.i, %_ZNK17IReferenceCounted4dropEv.exit.i ], [ %.sroa.06.09.i, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.06.011.i, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !84
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 192
  store ptr null, ptr %i.g, align 8, !tbaa !65
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !84   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 184
  store i8 0, ptr %i.i, align 8, !tbaa !64
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.k = getelementptr i8, ptr %i.j, i64 -24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds i8, ptr %i.h, i64 %i.l ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !80   ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 119, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK17IReferenceCounted4dropEv) #27
  unreachable

bb.c:                                             ; preds = %.lr.ph.i
  %i.q = add nsw i32 %i.o, -1                     ; 2 uses
  store i32 %i.q, ptr %i.n, align 8, !tbaa !80
  %.not.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i, label %bb.d, label %_ZNK17IReferenceCounted4dropEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !17
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(12) %i.m) #26, !inline_history !108
  br label %_ZNK17IReferenceCounted4dropEv.exit.i

_ZNK17IReferenceCounted4dropEv.exit.i:            ; preds = %bb.d, %bb.c
  %.sroa.06.0.i = load ptr, ptr %.sroa.06.011.i, align 8, !tbaa !62 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.06.0.i, %i.b
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i

_ZNSt7__cxx1110_List_baseIPN5scene10ISceneNodeESaIS3_EED2Ev.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %._crit_edge.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %i.b, ptr %i.u, align 8, !tbaa !61
  store ptr %i.b, ptr %i.b, align 8, !tbaa !62
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 0, ptr %i.v, align 8, !tbaa !63
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.x = load i8, ptr %i.w, align 8, !tbaa !60, !range !72, !noundef !73
  %i.y = trunc nuw i8 %i.x to i1
  store i8 0, ptr %i.w, align 8, !tbaa !60
  br i1 %i.y, label %bb.e, label %_ZN5scene16CCameraSceneNodeD2Ev.exit

bb.e:                                             ; preds = %_ZNSt7__cxx1110_List_baseIPN5scene10ISceneNodeESaIS3_EED2Ev.exit.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !77  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZN5scene16CCameraSceneNodeD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !78
  %i.ae = add i64 %i.ad, 1
  tail call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #28
  br label %_ZN5scene16CCameraSceneNodeD2Ev.exit

_ZN5scene16CCameraSceneNodeD2Ev.exit:             ; preds = %bb.e, %_ZNSt7__cxx1110_List_baseIPN5scene10ISceneNodeESaIS3_EED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5scene16CCameraSceneNodeD0Ev(ptr noundef nonnull align 8 dereferenceable(646) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-24, 288) (i8, ptr @_ZTCN5scene16CCameraSceneNodeE0_NS_10ISceneNodeE, i64 24), ptr %0, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 648
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN5scene16CCameraSceneNodeE0_NS_10ISceneNodeE, i64 336), ptr %i.a, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 9 uses
  %.sroa.06.09.i.i = load ptr, ptr %i.b, align 8, !tbaa !62 ; 3 uses
  %.not10.i.i = icmp eq ptr %.sroa.06.09.i.i, %i.b
  br i1 %.not10.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %_ZNK17IReferenceCounted4dropEv.exit.i.i
  %.pre.i.i = load ptr, ptr %i.b, align 8, !tbaa !62
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.a
  %i.c = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %.sroa.06.09.i.i, %bb.a ] ; 2 uses
  %.not8.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not8.i.i.i.i, label %_ZNSt7__cxx1110_List_baseIPN5scene10ISceneNodeESaIS3_EED2Ev.exit.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge.i.i, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i ], [ %i.c, %._crit_edge.i.i ] ; 2 uses
  %i.d = load ptr, ptr %.09.i.i.i.i, align 8, !tbaa !62 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i, i64 noundef 24) #28, !inline_history !91
  %.not.i.i.i.i = icmp eq ptr %i.d, %i.b
  br i1 %.not.i.i.i.i, label %_ZNSt7__cxx1110_List_baseIPN5scene10ISceneNodeESaIS3_EED2Ev.exit.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZNK17IReferenceCounted4dropEv.exit.i.i
  %.sroa.06.011.i.i = phi ptr [ %.sroa.06.0.i.i, %_ZNK17IReferenceCounted4dropEv.exit.i.i ], [ %.sroa.06.09.i.i, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.06.011.i.i, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !84
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 192
  store ptr null, ptr %i.g, align 8, !tbaa !65
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !84   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 184
  store i8 0, ptr %i.i, align 8, !tbaa !64
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.k = getelementptr i8, ptr %i.j, i64 -24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds i8, ptr %i.h, i64 %i.l ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !80   ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 119, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK17IReferenceCounted4dropEv) #27, !inline_history !91
  unreachable

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.q = add nsw i32 %i.o, -1                     ; 2 uses
  store i32 %i.q, ptr %i.n, align 8, !tbaa !80
  %.not.i.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.i, label %bb.d, label %_ZNK17IReferenceCounted4dropEv.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !17
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(12) %i.m) #26, !inline_history !3
  br label %_ZNK17IReferenceCounted4dropEv.exit.i.i

_ZNK17IReferenceCounted4dropEv.exit.i.i:          ; preds = %bb.d, %bb.c
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.011.i.i, align 8, !tbaa !62 ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.i.i, %i.b
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

_ZNSt7__cxx1110_List_baseIPN5scene10ISceneNodeESaIS3_EED2Ev.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %._crit_edge.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %i.b, ptr %i.u, align 8, !tbaa !61
  store ptr %i.b, ptr %i.b, align 8, !tbaa !62
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 0, ptr %i.v, align 8, !tbaa !63
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.x = load i8, ptr %i.w, align 8, !tbaa !60, !range !72, !noundef !73
  %i.y = trunc nuw i8 %i.x to i1
  store i8 0, ptr %i.w, align 8, !tbaa !60
  br i1 %i.y, label %bb.e, label %_ZN5scene16CCameraSceneNodeD1Ev.exit

bb.e:                                             ; preds = %_ZNSt7__cxx1110_List_baseIPN5scene10ISceneNodeESaIS3_EED2Ev.exit.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !77  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZN5scene16CCameraSceneNodeD1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !78
  %i.ae = add i64 %i.ad, 1
  tail call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #28, !inline_history !91
  br label %_ZN5scene16CCameraSceneNodeD1Ev.exit

_ZN5scene16CCameraSceneNodeD1Ev.exit:             ; preds = %bb.e, %_ZNSt7__cxx1110_List_baseIPN5scene10ISceneNodeESaIS3_EED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 664) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK5scene16CCameraSceneNode7getTypeEv(ptr noundef nonnull align 8 dereferenceable(646) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret i32 1601003875
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZThn224_N5scene16CCameraSceneNodeD1Ev(ptr noundef %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -224
  store ptr getelementptr inbounds nuw inrange(-24, 288) (i8, ptr @_ZTCN5scene16CCameraSceneNodeE0_NS_10ISceneNodeE, i64 24), ptr %i.a, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 424
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN5scene16CCameraSceneNodeE0_NS_10ISceneNodeE, i64 336), ptr %i.b, align 8, !tbaa !17
  %i.c = getelementptr inbounds i8, ptr %0, i64 -72 ; 9 uses
  %.sroa.06.09.i.i = load ptr, ptr %i.c, align 8, !tbaa !62 ; 3 uses
  %.not10.i.i = icmp eq ptr %.sroa.06.09.i.i, %i.c
  br i1 %.not10.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %_ZNK17IReferenceCounted4dropEv.exit.i.i
  %.pre.i.i = load ptr, ptr %i.c, align 8, !tbaa !62
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.a
  %i.d = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %.sroa.06.09.i.i, %bb.a ] ; 2 uses
  %.not8.i.i.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not8.i.i.i.i, label %_ZNSt7__cxx1110_List_baseIPN5scene10ISceneNodeESaIS3_EED2Ev.exit.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge.i.i, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i.i ], [ %i.d, %._crit_edge.i.i ] ; 2 uses
  %i.e = load ptr, ptr %.09.i.i.i.i, align 8, !tbaa !62 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i, i64 noundef 24) #28, !inline_history !91
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.c
  br i1 %.not.i.i.i.i, label %_ZNSt7__cxx1110_List_baseIPN5scene10ISceneNodeESaIS3_EED2Ev.exit.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZNK17IReferenceCounted4dropEv.exit.i.i
  %.sroa.06.011.i.i = phi ptr [ %.sroa.06.0.i.i, %_ZNK17IReferenceCounted4dropEv.exit.i.i ], [ %.sroa.06.09.i.i, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.06.011.i.i, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !84
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 192
  store ptr null, ptr %i.h, align 8, !tbaa !65
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !84   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 184
  store i8 0, ptr %i.j, align 8, !tbaa !64
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !17
  %i.l = getelementptr i8, ptr %i.k, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %i.i, i64 %i.m ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !80   ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 119, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK17IReferenceCounted4dropEv) #27, !inline_history !91
  unreachable

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.r = add nsw i32 %i.p, -1                     ; 2 uses
  store i32 %i.r, ptr %i.o, align 8, !tbaa !80
  %.not.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.i, label %bb.d, label %_ZNK17IReferenceCounted4dropEv.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !17
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(12) %i.n) #26, !inline_history !3
end_hunk_2
begin_hunk_3_@_ZTv0_n24_N5scene16CCameraSceneNodeD1Ev:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.011.i.i, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !84
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 192
  store ptr null, ptr %i.k, align 8, !tbaa !65
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !84   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 184
  store i8 0, ptr %i.m, align 8, !tbaa !64
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !17
  %i.o = getelementptr i8, ptr %i.n, i64 -24
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds i8, ptr %i.l, i64 %i.p ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !80   ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 119, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK17IReferenceCounted4dropEv) #27, !inline_history !91
  unreachable

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.u = add nsw i32 %i.s, -1                     ; 2 uses
  store i32 %i.u, ptr %i.r, align 8, !tbaa !80
  %.not.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i, label %bb.d, label %_ZNK17IReferenceCounted4dropEv.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !17
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(12) %i.q) #26, !inline_history !3
  br label %_ZNK17IReferenceCounted4dropEv.exit.i.i

_ZNK17IReferenceCounted4dropEv.exit.i.i:          ; preds = %bb.d, %bb.c
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.011.i.i, align 8, !tbaa !62 ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.i.i, %i.f
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

_ZNSt7__cxx1110_List_baseIPN5scene10ISceneNodeESaIS3_EED2Ev.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %._crit_edge.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  store ptr %i.f, ptr %i.y, align 8, !tbaa !61
  store ptr %i.f, ptr %i.f, align 8, !tbaa !62
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  store i64 0, ptr %i.z, align 8, !tbaa !63
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !60, !range !72, !noundef !73
  %i.ac = trunc nuw i8 %i.ab to i1
  store i8 0, ptr %i.aa, align 8, !tbaa !60
  br i1 %i.ac, label %bb.e, label %_ZN5scene16CCameraSceneNodeD1Ev.exit

bb.e:                                             ; preds = %_ZNSt7__cxx1110_List_baseIPN5scene10ISceneNodeESaIS3_EED2Ev.exit.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !77 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZN5scene16CCameraSceneNodeD1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !78
  %i.ai = add i64 %i.ah, 1
  tail call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #28, !inline_history !91
  br label %_ZN5scene16CCameraSceneNodeD1Ev.exit

_ZN5scene16CCameraSceneNodeD1Ev.exit:             ; preds = %bb.e, %_ZNSt7__cxx1110_List_baseIPN5scene10ISceneNodeESaIS3_EED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZTv0_n24_N5scene16CCameraSceneNodeD0Ev(ptr noundef %0) unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  tail call void @_ZN5scene16CCameraSceneNodeD0Ev(ptr noundef nonnull align 8 dereferenceable(646) %i.d) #26
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZThn224_N5scene16ICameraSceneNodeD1Ev(ptr noundef %0) unnamed_addr #13 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #27
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZThn224_N5scene16ICameraSceneNodeD0Ev(ptr noundef %0) unnamed_addr #13 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #27
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !60, !range !72, !noundef !73
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !60
  br i1 %i.c, label %bb.b, label %_ZNSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !77     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !78
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #28
  br label %_ZNSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EED2Ev.exit

_ZNSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EED2Ev.exit: ; preds = %bb.b, %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #15 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #26 ; 0 uses
  tail call void @_ZSt9terminatev() #27
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #16

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN14IEventReceiverD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN14IEventReceiverD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #27
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #17

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN17IReferenceCountedD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN17IReferenceCountedD0Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #28
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5scene12SViewFrustum22recalculateBoundingBoxEv(ptr noundef nonnull align 4 dereferenceable(280) %0) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %1 = alloca %"class.core::vector3d", align 8    ; 6 uses
  %2 = alloca %"class.core::vector3d", align 8    ; 6 uses
  %3 = alloca %"class.core::vector3d", align 8    ; 6 uses
  %4 = alloca %"class.core::vector3d", align 8    ; 6 uses
  %5 = alloca %"class.core::vector3d", align 8    ; 6 uses
  %6 = alloca %"class.core::vector3d", align 8    ; 6 uses
  %7 = alloca %"class.core::vector3d", align 8    ; 6 uses
  %8 = alloca %"class.core::vector3d", align 8    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store <2 x float> zeroinitializer, ptr %8, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.b, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  %i.f = call noundef zeroext i1 @_ZNK4core7plane3dIfE25getIntersectionWithPlanesERKS1_S3_RNS_8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %i.d, ptr noundef nonnull align 4 dereferenceable(16) %i.e, ptr noundef nonnull align 4 dereferenceable(12) %8) ; 0 uses
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %8, align 8 ; 2 uses
  %.sroa.2.0.copyload.i = load float, ptr %i.b, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 15 uses
  store <2 x float> %.sroa.0.0.copyload.i, ptr %i.g, align 4
  %.sroa.577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 15 uses
  store float %.sroa.2.0.copyload.i, ptr %.sroa.577.0..sroa_idx, align 4, !tbaa !13
  store <2 x float> %.sroa.0.0.copyload.i, ptr %i.a, align 4
  %.sroa.577.0..sroa_idx78 = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 15 uses
  store float %.sroa.2.0.copyload.i, ptr %.sroa.577.0..sroa_idx78, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store <2 x float> zeroinitializer, ptr %7, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.h, align 8, !tbaa !15
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 4 uses
  %i.j = call noundef zeroext i1 @_ZNK4core7plane3dIfE25getIntersectionWithPlanesERKS1_S3_RNS_8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %i.d, ptr noundef nonnull align 4 dereferenceable(16) %i.i, ptr noundef nonnull align 4 dereferenceable(12) %7) ; 0 uses
  %.sroa.0.0.copyload.i29 = load <2 x float>, ptr %7, align 8 ; 2 uses
  %.sroa.2.0.copyload.i30 = load float, ptr %i.h, align 8 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %.sroa.073.0.vec.extract = extractelement <2 x float> %.sroa.0.0.copyload.i29, i64 0 ; 4 uses
  %.sroa.073.4.vec.extract = extractelement <2 x float> %.sroa.0.0.copyload.i29, i64 1 ; 4 uses
  %i.k = load float, ptr %i.g, align 4, !tbaa !109
  %i.l = fcmp ogt float %.sroa.073.0.vec.extract, %i.k
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store float %.sroa.073.0.vec.extract, ptr %i.g, align 4, !tbaa !109
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 14 uses
  %i.n = load float, ptr %i.m, align 4, !tbaa !110
  %i.o = fcmp ogt float %.sroa.073.4.vec.extract, %i.n
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store float %.sroa.073.4.vec.extract, ptr %i.m, align 4, !tbaa !110
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = load float, ptr %.sroa.577.0..sroa_idx, align 4, !tbaa !111
  %i.q = fcmp ogt float %.sroa.2.0.copyload.i30, %i.p
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store float %.sroa.2.0.copyload.i30, ptr %.sroa.577.0..sroa_idx, align 4, !tbaa !111
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.r = load float, ptr %i.a, align 4, !tbaa !112
  %i.s = fcmp olt float %.sroa.073.0.vec.extract, %i.r
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store float %.sroa.073.0.vec.extract, ptr %i.a, align 4, !tbaa !112
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 14 uses
  %i.u = load float, ptr %i.t, align 4, !tbaa !113
  %i.v = fcmp olt float %.sroa.073.4.vec.extract, %i.u
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store float %.sroa.073.4.vec.extract, ptr %i.t, align 4, !tbaa !113
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.w = load float, ptr %.sroa.577.0..sroa_idx78, align 4, !tbaa !114
  %i.x = fcmp olt float %.sroa.2.0.copyload.i30, %i.w
  br i1 %i.x, label %bb.l, label %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit

bb.l:                                             ; preds = %bb.k
  store float %.sroa.2.0.copyload.i30, ptr %.sroa.577.0..sroa_idx78, align 4, !tbaa !114
  br label %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit

_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store <2 x float> zeroinitializer, ptr %6, align 8, !tbaa !13
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.y, align 8, !tbaa !15
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 4 uses
  %i.aa = call noundef zeroext i1 @_ZNK4core7plane3dIfE25getIntersectionWithPlanesERKS1_S3_RNS_8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %i.z, ptr noundef nonnull align 4 dereferenceable(16) %i.e, ptr noundef nonnull align 4 dereferenceable(12) %6) ; 0 uses
  %.sroa.0.0.copyload.i33 = load <2 x float>, ptr %6, align 8 ; 2 uses
  %.sroa.2.0.copyload.i34 = load float, ptr %i.y, align 8 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %.sroa.071.0.vec.extract = extractelement <2 x float> %.sroa.0.0.copyload.i33, i64 0 ; 4 uses
  %.sroa.071.4.vec.extract = extractelement <2 x float> %.sroa.0.0.copyload.i33, i64 1 ; 4 uses
  %i.ab = load float, ptr %i.g, align 4, !tbaa !109
  %i.ac = fcmp ogt float %.sroa.071.0.vec.extract, %i.ab
  br i1 %i.ac, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit
  store float %.sroa.071.0.vec.extract, ptr %i.g, align 4, !tbaa !109
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit
  %i.ad = load float, ptr %i.m, align 4, !tbaa !110
  %i.ae = fcmp ogt float %.sroa.071.4.vec.extract, %i.ad
  br i1 %i.ae, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store float %.sroa.071.4.vec.extract, ptr %i.m, align 4, !tbaa !110
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.af = load float, ptr %.sroa.577.0..sroa_idx, align 4, !tbaa !111
  %i.ag = fcmp ogt float %.sroa.2.0.copyload.i34, %i.af
  br i1 %i.ag, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store float %.sroa.2.0.copyload.i34, ptr %.sroa.577.0..sroa_idx, align 4, !tbaa !111
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ah = load float, ptr %i.a, align 4, !tbaa !112
  %i.ai = fcmp olt float %.sroa.071.0.vec.extract, %i.ah
  br i1 %i.ai, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store float %.sroa.071.0.vec.extract, ptr %i.a, align 4, !tbaa !112
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.aj = load float, ptr %i.t, align 4, !tbaa !113
  %i.ak = fcmp olt float %.sroa.071.4.vec.extract, %i.aj
  br i1 %i.ak, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store float %.sroa.071.4.vec.extract, ptr %i.t, align 4, !tbaa !113
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.al = load float, ptr %.sroa.577.0..sroa_idx78, align 4, !tbaa !114
  %i.am = fcmp olt float %.sroa.2.0.copyload.i34, %i.al
  br i1 %i.am, label %bb.w, label %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit37

bb.w:                                             ; preds = %bb.v
  store float %.sroa.2.0.copyload.i34, ptr %.sroa.577.0..sroa_idx78, align 4, !tbaa !114
  br label %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit37

_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit37: ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store <2 x float> zeroinitializer, ptr %5, align 8, !tbaa !13
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.an, align 8, !tbaa !15
  %i.ao = call noundef zeroext i1 @_ZNK4core7plane3dIfE25getIntersectionWithPlanesERKS1_S3_RNS_8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %i.z, ptr noundef nonnull align 4 dereferenceable(16) %i.i, ptr noundef nonnull align 4 dereferenceable(12) %5) ; 0 uses
  %.sroa.0.0.copyload.i38 = load <2 x float>, ptr %5, align 8 ; 2 uses
  %.sroa.2.0.copyload.i39 = load float, ptr %i.an, align 8 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %.sroa.069.0.vec.extract = extractelement <2 x float> %.sroa.0.0.copyload.i38, i64 0 ; 4 uses
  %.sroa.069.4.vec.extract = extractelement <2 x float> %.sroa.0.0.copyload.i38, i64 1 ; 4 uses
  %i.ap = load float, ptr %i.g, align 4, !tbaa !109
  %i.aq = fcmp ogt float %.sroa.069.0.vec.extract, %i.ap
  br i1 %i.aq, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit37
  store float %.sroa.069.0.vec.extract, ptr %i.g, align 4, !tbaa !109
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit37
  %i.ar = load float, ptr %i.m, align 4, !tbaa !110
  %i.as = fcmp ogt float %.sroa.069.4.vec.extract, %i.ar
  br i1 %i.as, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store float %.sroa.069.4.vec.extract, ptr %i.m, align 4, !tbaa !110
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.at = load float, ptr %.sroa.577.0..sroa_idx, align 4, !tbaa !111
  %i.au = fcmp ogt float %.sroa.2.0.copyload.i39, %i.at
  br i1 %i.au, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store float %.sroa.2.0.copyload.i39, ptr %.sroa.577.0..sroa_idx, align 4, !tbaa !111
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.av = load float, ptr %i.a, align 4, !tbaa !112
  %i.aw = fcmp olt float %.sroa.069.0.vec.extract, %i.av
  br i1 %i.aw, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store float %.sroa.069.0.vec.extract, ptr %i.a, align 4, !tbaa !112
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.ax = load float, ptr %i.t, align 4, !tbaa !113
  %i.ay = fcmp olt float %.sroa.069.4.vec.extract, %i.ax
  br i1 %i.ay, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store float %.sroa.069.4.vec.extract, ptr %i.t, align 4, !tbaa !113
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.az = load float, ptr %.sroa.577.0..sroa_idx78, align 4, !tbaa !114
  %i.ba = fcmp olt float %.sroa.2.0.copyload.i39, %i.az
  br i1 %i.ba, label %bb.ah, label %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit42

bb.ah:                                            ; preds = %bb.ag
  store float %.sroa.2.0.copyload.i39, ptr %.sroa.577.0..sroa_idx78, align 4, !tbaa !114
  br label %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit42

_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit42: ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store <2 x float> zeroinitializer, ptr %4, align 8, !tbaa !13
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.bb, align 8, !tbaa !15
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.bd = call noundef zeroext i1 @_ZNK4core7plane3dIfE25getIntersectionWithPlanesERKS1_S3_RNS_8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(16) %i.bc, ptr noundef nonnull align 4 dereferenceable(16) %i.d, ptr noundef nonnull align 4 dereferenceable(16) %i.i, ptr noundef nonnull align 4 dereferenceable(12) %4) ; 0 uses
  %.sroa.0.0.copyload.i43 = load <2 x float>, ptr %4, align 8 ; 2 uses
  %.sroa.2.0.copyload.i44 = load float, ptr %i.bb, align 8 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.sroa.067.0.vec.extract = extractelement <2 x float> %.sroa.0.0.copyload.i43, i64 0 ; 4 uses
  %.sroa.067.4.vec.extract = extractelement <2 x float> %.sroa.0.0.copyload.i43, i64 1 ; 4 uses
  %i.be = load float, ptr %i.g, align 4, !tbaa !109
  %i.bf = fcmp ogt float %.sroa.067.0.vec.extract, %i.be
  br i1 %i.bf, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit42
  store float %.sroa.067.0.vec.extract, ptr %i.g, align 4, !tbaa !109
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit42
  %i.bg = load float, ptr %i.m, align 4, !tbaa !110
  %i.bh = fcmp ogt float %.sroa.067.4.vec.extract, %i.bg
  br i1 %i.bh, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store float %.sroa.067.4.vec.extract, ptr %i.m, align 4, !tbaa !110
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.bi = load float, ptr %.sroa.577.0..sroa_idx, align 4, !tbaa !111
  %i.bj = fcmp ogt float %.sroa.2.0.copyload.i44, %i.bi
  br i1 %i.bj, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store float %.sroa.2.0.copyload.i44, ptr %.sroa.577.0..sroa_idx, align 4, !tbaa !111
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.bk = load float, ptr %i.a, align 4, !tbaa !112
  %i.bl = fcmp olt float %.sroa.067.0.vec.extract, %i.bk
  br i1 %i.bl, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store float %.sroa.067.0.vec.extract, ptr %i.a, align 4, !tbaa !112
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.bm = load float, ptr %i.t, align 4, !tbaa !113
  %i.bn = fcmp olt float %.sroa.067.4.vec.extract, %i.bm
  br i1 %i.bn, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store float %.sroa.067.4.vec.extract, ptr %i.t, align 4, !tbaa !113
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.bo = load float, ptr %.sroa.577.0..sroa_idx78, align 4, !tbaa !114
  %i.bp = fcmp olt float %.sroa.2.0.copyload.i44, %i.bo
  br i1 %i.bp, label %bb.as, label %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit47

bb.as:                                            ; preds = %bb.ar
  store float %.sroa.2.0.copyload.i44, ptr %.sroa.577.0..sroa_idx78, align 4, !tbaa !114
  br label %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit47

_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit47: ; preds = %bb.ar, %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store <2 x float> zeroinitializer, ptr %3, align 8, !tbaa !13
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.bq, align 8, !tbaa !15
  %i.br = call noundef zeroext i1 @_ZNK4core7plane3dIfE25getIntersectionWithPlanesERKS1_S3_RNS_8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(16) %i.bc, ptr noundef nonnull align 4 dereferenceable(16) %i.z, ptr noundef nonnull align 4 dereferenceable(16) %i.e, ptr noundef nonnull align 4 dereferenceable(12) %3) ; 0 uses
  %.sroa.0.0.copyload.i48 = load <2 x float>, ptr %3, align 8 ; 2 uses
  %.sroa.2.0.copyload.i49 = load float, ptr %i.bq, align 8 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.sroa.065.0.vec.extract = extractelement <2 x float> %.sroa.0.0.copyload.i48, i64 0 ; 4 uses
  %.sroa.065.4.vec.extract = extractelement <2 x float> %.sroa.0.0.copyload.i48, i64 1 ; 4 uses
  %i.bs = load float, ptr %i.g, align 4, !tbaa !109
  %i.bt = fcmp ogt float %.sroa.065.0.vec.extract, %i.bs
  br i1 %i.bt, label %bb.at, label %bb.au

bb.at:                                            ; preds = %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit47
  store float %.sroa.065.0.vec.extract, ptr %i.g, align 4, !tbaa !109
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit47
  %i.bu = load float, ptr %i.m, align 4, !tbaa !110
  %i.bv = fcmp ogt float %.sroa.065.4.vec.extract, %i.bu
  br i1 %i.bv, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store float %.sroa.065.4.vec.extract, ptr %i.m, align 4, !tbaa !110
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.bw = load float, ptr %.sroa.577.0..sroa_idx, align 4, !tbaa !111
  %i.bx = fcmp ogt float %.sroa.2.0.copyload.i49, %i.bw
  br i1 %i.bx, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  store float %.sroa.2.0.copyload.i49, ptr %.sroa.577.0..sroa_idx, align 4, !tbaa !111
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.by = load float, ptr %i.a, align 4, !tbaa !112
  %i.bz = fcmp olt float %.sroa.065.0.vec.extract, %i.by
  br i1 %i.bz, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  store float %.sroa.065.0.vec.extract, ptr %i.a, align 4, !tbaa !112
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.ca = load float, ptr %i.t, align 4, !tbaa !113
  %i.cb = fcmp olt float %.sroa.065.4.vec.extract, %i.ca
  br i1 %i.cb, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store float %.sroa.065.4.vec.extract, ptr %i.t, align 4, !tbaa !113
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.cc = load float, ptr %.sroa.577.0..sroa_idx78, align 4, !tbaa !114
  %i.cd = fcmp olt float %.sroa.2.0.copyload.i49, %i.cc
  br i1 %i.cd, label %bb.bd, label %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit52

bb.bd:                                            ; preds = %bb.bc
  store float %.sroa.2.0.copyload.i49, ptr %.sroa.577.0..sroa_idx78, align 4, !tbaa !114
  br label %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit52

_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit52: ; preds = %bb.bc, %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store <2 x float> zeroinitializer, ptr %2, align 8, !tbaa !13
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.ce, align 8, !tbaa !15
  %i.cf = call noundef zeroext i1 @_ZNK4core7plane3dIfE25getIntersectionWithPlanesERKS1_S3_RNS_8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(16) %i.bc, ptr noundef nonnull align 4 dereferenceable(16) %i.z, ptr noundef nonnull align 4 dereferenceable(16) %i.i, ptr noundef nonnull align 4 dereferenceable(12) %2) ; 0 uses
  %.sroa.0.0.copyload.i53 = load <2 x float>, ptr %2, align 8 ; 2 uses
  %.sroa.2.0.copyload.i54 = load float, ptr %i.ce, align 8 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %.sroa.063.0.vec.extract = extractelement <2 x float> %.sroa.0.0.copyload.i53, i64 0 ; 4 uses
  %.sroa.063.4.vec.extract = extractelement <2 x float> %.sroa.0.0.copyload.i53, i64 1 ; 4 uses
  %i.cg = load float, ptr %i.g, align 4, !tbaa !109
  %i.ch = fcmp ogt float %.sroa.063.0.vec.extract, %i.cg
  br i1 %i.ch, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit52
  store float %.sroa.063.0.vec.extract, ptr %i.g, align 4, !tbaa !109
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit52
  %i.ci = load float, ptr %i.m, align 4, !tbaa !110
  %i.cj = fcmp ogt float %.sroa.063.4.vec.extract, %i.ci
  br i1 %i.cj, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store float %.sroa.063.4.vec.extract, ptr %i.m, align 4, !tbaa !110
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.ck = load float, ptr %.sroa.577.0..sroa_idx, align 4, !tbaa !111
  %i.cl = fcmp ogt float %.sroa.2.0.copyload.i54, %i.ck
  br i1 %i.cl, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store float %.sroa.2.0.copyload.i54, ptr %.sroa.577.0..sroa_idx, align 4, !tbaa !111
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.cm = load float, ptr %i.a, align 4, !tbaa !112
  %i.cn = fcmp olt float %.sroa.063.0.vec.extract, %i.cm
  br i1 %i.cn, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  store float %.sroa.063.0.vec.extract, ptr %i.a, align 4, !tbaa !112
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.co = load float, ptr %i.t, align 4, !tbaa !113
  %i.cp = fcmp olt float %.sroa.063.4.vec.extract, %i.co
  br i1 %i.cp, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  store float %.sroa.063.4.vec.extract, ptr %i.t, align 4, !tbaa !113
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.cq = load float, ptr %.sroa.577.0..sroa_idx78, align 4, !tbaa !114
  %i.cr = fcmp olt float %.sroa.2.0.copyload.i54, %i.cq
  br i1 %i.cr, label %bb.bo, label %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit57

bb.bo:                                            ; preds = %bb.bn
  store float %.sroa.2.0.copyload.i54, ptr %.sroa.577.0..sroa_idx78, align 4, !tbaa !114
  br label %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit57

_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit57: ; preds = %bb.bn, %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store <2 x float> zeroinitializer, ptr %1, align 8, !tbaa !13
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.cs, align 8, !tbaa !15
  %i.ct = call noundef zeroext i1 @_ZNK4core7plane3dIfE25getIntersectionWithPlanesERKS1_S3_RNS_8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(16) %i.bc, ptr noundef nonnull align 4 dereferenceable(16) %i.d, ptr noundef nonnull align 4 dereferenceable(16) %i.e, ptr noundef nonnull align 4 dereferenceable(12) %1) ; 0 uses
  %.sroa.0.0.copyload.i58 = load <2 x float>, ptr %1, align 8 ; 2 uses
  %.sroa.2.0.copyload.i59 = load float, ptr %i.cs, align 8 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %.sroa.0.0.vec.extract = extractelement <2 x float> %.sroa.0.0.copyload.i58, i64 0 ; 4 uses
  %.sroa.0.4.vec.extract = extractelement <2 x float> %.sroa.0.0.copyload.i58, i64 1 ; 4 uses
  %i.cu = load float, ptr %i.g, align 4, !tbaa !109
  %i.cv = fcmp ogt float %.sroa.0.0.vec.extract, %i.cu
  br i1 %i.cv, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit57
  store float %.sroa.0.0.vec.extract, ptr %i.g, align 4, !tbaa !109
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit57
  %i.cw = load float, ptr %i.m, align 4, !tbaa !110
  %i.cx = fcmp ogt float %.sroa.0.4.vec.extract, %i.cw
  br i1 %i.cx, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  store float %.sroa.0.4.vec.extract, ptr %i.m, align 4, !tbaa !110
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.cy = load float, ptr %.sroa.577.0..sroa_idx, align 4, !tbaa !111
  %i.cz = fcmp ogt float %.sroa.2.0.copyload.i59, %i.cy
  br i1 %i.cz, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  store float %.sroa.2.0.copyload.i59, ptr %.sroa.577.0..sroa_idx, align 4, !tbaa !111
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.da = load float, ptr %i.a, align 4, !tbaa !112
  %i.db = fcmp olt float %.sroa.0.0.vec.extract, %i.da
  br i1 %i.db, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  store float %.sroa.0.0.vec.extract, ptr %i.a, align 4, !tbaa !112
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.dc = load float, ptr %i.t, align 4, !tbaa !113
  %i.dd = fcmp olt float %.sroa.0.4.vec.extract, %i.dc
  br i1 %i.dd, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  store float %.sroa.0.4.vec.extract, ptr %i.t, align 4, !tbaa !113
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.de = load float, ptr %.sroa.577.0..sroa_idx78, align 4, !tbaa !114
  %i.df = fcmp olt float %.sroa.2.0.copyload.i59, %i.de
  br i1 %i.df, label %bb.bz, label %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit62

bb.bz:                                            ; preds = %bb.by
  store float %.sroa.2.0.copyload.i59, ptr %.sroa.577.0..sroa_idx78, align 4, !tbaa !114
  br label %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit62

_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit62: ; preds = %bb.by, %bb.bz
  call void @_ZN5scene12SViewFrustum25recalculateBoundingSphereEv(ptr noundef nonnull align 4 dereferenceable(280) %0)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #19

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5scene12SViewFrustum25recalculateBoundingSphereEv(ptr noundef nonnull align 4 dereferenceable(280) %0) local_unnamed_addr #9 comdat align 2 {
.preheader.preheader:
  %1 = alloca %"class.core::vector3d", align 8    ; 6 uses
  %2 = alloca %"class.core::vector3d", align 8    ; 6 uses
  %3 = alloca %"class.core::vector3d", align 8    ; 6 uses
  %4 = alloca %"class.core::vector3d", align 8    ; 6 uses
  %5 = alloca %"class.core::vector3d", align 8    ; 6 uses
  %6 = alloca %"class.core::vector3d", align 8    ; 6 uses
  %7 = alloca %"class.core::vector3d", align 8    ; 6 uses
  %8 = alloca %"class.core::vector3d", align 8    ; 6 uses
  %9 = alloca %"class.core::vector3d", align 8    ; 6 uses
  %10 = alloca %"class.core::vector3d", align 8   ; 6 uses
  %11 = alloca %"class.core::vector3d", align 8   ; 6 uses
  %12 = alloca %"class.core::vector3d", align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  store <2 x float> zeroinitializer, ptr %12, align 8, !tbaa !13
  %i.a = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.a, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 6 uses
  %i.e = call noundef zeroext i1 @_ZNK4core7plane3dIfE25getIntersectionWithPlanesERKS1_S3_RNS_8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %i.d, ptr noundef nonnull align 4 dereferenceable(12) %12) ; 0 uses
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %12, align 8 ; 2 uses
  %.sroa.2.0.copyload.i = load float, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store <2 x float> zeroinitializer, ptr %11, align 8, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.f, align 8, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 6 uses
  %i.h = call noundef zeroext i1 @_ZNK4core7plane3dIfE25getIntersectionWithPlanesERKS1_S3_RNS_8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(12) %11) ; 0 uses
  %.sroa.0.0.copyload.i136 = load <2 x float>, ptr %11, align 8 ; 2 uses
  %.sroa.2.0.copyload.i137 = load float, ptr %i.f, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store <2 x float> zeroinitializer, ptr %10, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.i, align 8, !tbaa !15
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 6 uses
  %i.k = call noundef zeroext i1 @_ZNK4core7plane3dIfE25getIntersectionWithPlanesERKS1_S3_RNS_8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(16) %i.j, ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %i.d, ptr noundef nonnull align 4 dereferenceable(12) %10) ; 0 uses
  %.sroa.0.0.copyload.i142 = load <2 x float>, ptr %10, align 8 ; 2 uses
  %.sroa.2.0.copyload.i143 = load float, ptr %i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store <2 x float> zeroinitializer, ptr %9, align 8, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.l, align 8, !tbaa !15
  %i.m = call noundef zeroext i1 @_ZNK4core7plane3dIfE25getIntersectionWithPlanesERKS1_S3_RNS_8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(16) %i.j, ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(12) %9) ; 0 uses
  %.sroa.0.0.copyload.i146 = load <2 x float>, ptr %9, align 8 ; 2 uses
  %.sroa.2.0.copyload.i147 = load float, ptr %i.l, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.o = load float, ptr %i.n, align 4, !tbaa !57 ; 3 uses
  %i.p = shufflevector <2 x float> %.sroa.0.0.copyload.i, <2 x float> %.sroa.0.0.copyload.i142, <2 x i32> <i32 0, i32 2>
  %i.q = shufflevector <2 x float> %.sroa.0.0.copyload.i136, <2 x float> %.sroa.0.0.copyload.i146, <2 x i32> <i32 0, i32 2>
  %i.r = fsub <2 x float> %i.p, %i.q              ; 2 uses
  %i.s = shufflevector <2 x float> %.sroa.0.0.copyload.i, <2 x float> %.sroa.0.0.copyload.i142, <2 x i32> <i32 1, i32 3>
  %i.t = shufflevector <2 x float> %.sroa.0.0.copyload.i136, <2 x float> %.sroa.0.0.copyload.i146, <2 x i32> <i32 1, i32 3>
  %i.u = fsub <2 x float> %i.s, %i.t              ; 2 uses
  %i.v = insertelement <2 x float> poison, float %.sroa.2.0.copyload.i, i64 0
  %i.w = insertelement <2 x float> %i.v, float %.sroa.2.0.copyload.i143, i64 1
  %i.x = insertelement <2 x float> poison, float %.sroa.2.0.copyload.i137, i64 0
  %i.y = insertelement <2 x float> %i.x, float %.sroa.2.0.copyload.i147, i64 1
  %i.z = fsub <2 x float> %i.w, %i.y              ; 2 uses
  %i.aa = fmul <2 x float> %i.u, %i.u
  %i.ab = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.r, <2 x float> %i.r, <2 x float> %i.aa)
  %i.ac = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.z, <2 x float> %i.z, <2 x float> %i.ab)
  %i.ad = call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.ac) ; 2 uses
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.af = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ag = fsub <2 x float> %i.ae, %i.af
  %i.ah = fadd <2 x float> %i.ae, %i.af
  %shift = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %i.ag, %shift
  %i.ai = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.aj = fmul float %i.o, 4.000000e+00
  %i.ak = fdiv float %i.ai, %i.aj
  %i.al = fadd float %i.o, %i.ak
  %i.am = fmul float %i.al, 5.000000e-01
  %i.an = fsub float %i.o, %i.am                  ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !15
  %i.aq = load <2 x float>, ptr %i.b, align 4, !tbaa !13
  %i.ar = load <2 x float>, ptr %0, align 4, !tbaa !13
  %i.as = insertelement <2 x float> poison, float %i.an, i64 0
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> zeroinitializer
  %i.au = fmul <2 x float> %i.aq, %i.at
  %i.av = fsub <2 x float> %i.ar, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !15
  %i.ay = fmul float %i.ap, %i.an
  %i.az = fsub float %i.ax, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 9 uses
  store <2 x float> %i.av, ptr %i.ba, align 4
  %.sroa.497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 9 uses
  store float %i.az, ptr %.sroa.497.0..sroa_idx, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store <2 x float> zeroinitializer, ptr %8, align 8, !tbaa !13
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.bb, align 8, !tbaa !15
  %i.bc = call noundef zeroext i1 @_ZNK4core7plane3dIfE25getIntersectionWithPlanesERKS1_S3_RNS_8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(16) %i.j, ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %i.d, ptr noundef nonnull align 4 dereferenceable(12) %8) ; 0 uses
  %.sroa.0.0.copyload.i167 = load <2 x float>, ptr %8, align 8 ; 2 uses
  %.sroa.2.0.copyload.i168 = load float, ptr %i.bb, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 7 uses
  %i.be = load float, ptr %.sroa.497.0..sroa_idx, align 4, !tbaa !15
  %i.bf = fsub float %.sroa.2.0.copyload.i168, %i.be ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store <2 x float> zeroinitializer, ptr %7, align 8, !tbaa !13
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.bg, align 8, !tbaa !15
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bo = load <2 x float>, ptr %i.ba, align 4, !tbaa !13 ; 2 uses
  %i.bp = call noundef zeroext i1 @_ZNK4core7plane3dIfE25getIntersectionWithPlanesERKS1_S3_RNS_8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(16) %i.j, ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(12) %7) ; 0 uses
  %.sroa.0.0.copyload.i175 = load <2 x float>, ptr %7, align 8 ; 2 uses
  %.sroa.2.0.copyload.i176 = load float, ptr %i.bg, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.bq = load float, ptr %i.ba, align 4, !tbaa !82
  %i.br = load float, ptr %i.bd, align 4, !tbaa !83
  %i.bs = load float, ptr %.sroa.497.0..sroa_idx, align 4, !tbaa !15
  %i.bt = fsub float %.sroa.2.0.copyload.i176, %i.bs ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store <2 x float> zeroinitializer, ptr %6, align 8, !tbaa !13
  store float 0.000000e+00, ptr %i.bh, align 8, !tbaa !15
  %i.bu = call noundef zeroext i1 @_ZNK4core7plane3dIfE25getIntersectionWithPlanesERKS1_S3_RNS_8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(16) %i.j, ptr noundef nonnull align 4 dereferenceable(16) %i.bi, ptr noundef nonnull align 4 dereferenceable(16) %i.d, ptr noundef nonnull align 4 dereferenceable(12) %6) ; 0 uses
  %.sroa.0.0.copyload.i183 = load <2 x float>, ptr %6, align 8
  %.sroa.2.0.copyload.i184 = load float, ptr %i.bh, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.bv = load float, ptr %i.ba, align 4, !tbaa !82
  %i.bw = load float, ptr %i.bd, align 4, !tbaa !83
  %i.bx = load float, ptr %.sroa.497.0..sroa_idx, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store <2 x float> zeroinitializer, ptr %5, align 8, !tbaa !13
  store float 0.000000e+00, ptr %i.bj, align 8, !tbaa !15
  %i.by = call noundef zeroext i1 @_ZNK4core7plane3dIfE25getIntersectionWithPlanesERKS1_S3_RNS_8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(16) %i.j, ptr noundef nonnull align 4 dereferenceable(16) %i.bi, ptr noundef nonnull align 4 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(12) %5) ; 0 uses
  %.sroa.0.0.copyload.i191 = load <2 x float>, ptr %5, align 8
  %.sroa.2.0.copyload.i192 = load float, ptr %i.bj, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.bz = load float, ptr %i.ba, align 4, !tbaa !82
  %i.ca = shufflevector <2 x float> %.sroa.0.0.copyload.i167, <2 x float> %.sroa.0.0.copyload.i175, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.cb = shufflevector <2 x float> %.sroa.0.0.copyload.i183, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.cc = shufflevector <4 x float> %i.ca, <4 x float> %i.cb, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.cd = shufflevector <2 x float> %.sroa.0.0.copyload.i191, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ce = shufflevector <4 x float> %i.cc, <4 x float> %i.cd, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.cf = shufflevector <2 x float> %i.bo, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.cg = insertelement <4 x float> %i.cf, float %i.bq, i64 1
  %i.ch = insertelement <4 x float> %i.cg, float %i.bv, i64 2
  %i.ci = insertelement <4 x float> %i.ch, float %i.bz, i64 3
  %i.cj = fsub <4 x float> %i.ce, %i.ci           ; 2 uses
  %i.ck = load float, ptr %i.bd, align 4, !tbaa !83
  %i.cl = shufflevector <2 x float> %.sroa.0.0.copyload.i167, <2 x float> %.sroa.0.0.copyload.i175, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.cm = shufflevector <4 x float> %i.cl, <4 x float> %i.cb, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.cn = shufflevector <4 x float> %i.cm, <4 x float> %i.cd, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.co = shufflevector <2 x float> %i.bo, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.cp = insertelement <4 x float> %i.co, float %i.br, i64 1
  %i.cq = insertelement <4 x float> %i.cp, float %i.bw, i64 2
  %i.cr = insertelement <4 x float> %i.cq, float %i.ck, i64 3
  %i.cs = fsub <4 x float> %i.cn, %i.cr           ; 2 uses
  %i.ct = load float, ptr %.sroa.497.0..sroa_idx, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store <2 x float> zeroinitializer, ptr %4, align 8, !tbaa !13
  store float 0.000000e+00, ptr %i.bk, align 8, !tbaa !15
  %i.cu = call noundef zeroext i1 @_ZNK4core7plane3dIfE25getIntersectionWithPlanesERKS1_S3_RNS_8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %i.bi, ptr noundef nonnull align 4 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(12) %4) ; 0 uses
  %.sroa.0.0.copyload.i199 = load <2 x float>, ptr %4, align 8
  %.sroa.2.0.copyload.i200 = load float, ptr %i.bk, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.cv = load float, ptr %i.ba, align 4, !tbaa !82
  %i.cw = load float, ptr %i.bd, align 4, !tbaa !83
  %i.cx = load float, ptr %.sroa.497.0..sroa_idx, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store <2 x float> zeroinitializer, ptr %3, align 8, !tbaa !13
  store float 0.000000e+00, ptr %i.bl, align 8, !tbaa !15
  %i.cy = call noundef zeroext i1 @_ZNK4core7plane3dIfE25getIntersectionWithPlanesERKS1_S3_RNS_8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %i.bi, ptr noundef nonnull align 4 dereferenceable(16) %i.d, ptr noundef nonnull align 4 dereferenceable(12) %3) ; 0 uses
  %.sroa.0.0.copyload.i207 = load <2 x float>, ptr %3, align 8
  %.sroa.2.0.copyload.i208 = load float, ptr %i.bl, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.cz = load float, ptr %i.ba, align 4, !tbaa !82
  %i.da = load float, ptr %i.bd, align 4, !tbaa !83
  %i.db = load float, ptr %.sroa.497.0..sroa_idx, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store <2 x float> zeroinitializer, ptr %2, align 8, !tbaa !13
  store float 0.000000e+00, ptr %i.bm, align 8, !tbaa !15
  %i.dc = call noundef zeroext i1 @_ZNK4core7plane3dIfE25getIntersectionWithPlanesERKS1_S3_RNS_8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(12) %2) ; 0 uses
  %.sroa.0.0.copyload.i215 = load <2 x float>, ptr %2, align 8 ; 2 uses
  %.sroa.2.0.copyload.i216 = load float, ptr %i.bm, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.dd = load float, ptr %i.ba, align 4, !tbaa !82
  %i.de = load float, ptr %i.bd, align 4, !tbaa !83
  %i.df = load float, ptr %.sroa.497.0..sroa_idx, align 4, !tbaa !15
  %i.dg = fsub float %.sroa.2.0.copyload.i216, %i.df ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store <2 x float> zeroinitializer, ptr %1, align 8, !tbaa !13
  store float 0.000000e+00, ptr %i.bn, align 8, !tbaa !15
  %i.dh = call noundef zeroext i1 @_ZNK4core7plane3dIfE25getIntersectionWithPlanesERKS1_S3_RNS_8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %i.d, ptr noundef nonnull align 4 dereferenceable(12) %1) ; 0 uses
  %.sroa.0.0.copyload.i223 = load <2 x float>, ptr %1, align 8 ; 2 uses
  %.sroa.2.0.copyload.i224 = load float, ptr %i.bn, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.di = load float, ptr %i.ba, align 4, !tbaa !82
  %i.dj = load float, ptr %i.bd, align 4, !tbaa !83
  %i.dk = load float, ptr %.sroa.497.0..sroa_idx, align 4, !tbaa !15
  %i.dl = fsub float %.sroa.2.0.copyload.i224, %i.dk ; 2 uses
  %i.dm = fmul <4 x float> %i.cs, %i.cs
  %i.dn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cj, <4 x float> %i.cj, <4 x float> %i.dm) ; 3 uses
  %i.do = extractelement <4 x float> %i.dn, i64 0
  %i.dp = call noundef float @llvm.fmuladd.f32(float %i.bf, float %i.bf, float %i.do) ; 2 uses
  %i.dq = extractelement <4 x float> %i.dn, i64 1
  %i.dr = call noundef float @llvm.fmuladd.f32(float %i.bt, float %i.bt, float %i.dq) ; 2 uses
  %i.ds = shufflevector <2 x float> %.sroa.0.0.copyload.i199, <2 x float> %.sroa.0.0.copyload.i207, <4 x i32> <i32 1, i32 3, i32 0, i32 2> ; 2 uses
  %i.dt = insertelement <4 x float> %i.ds, float %.sroa.2.0.copyload.i184, i64 0
  %i.du = insertelement <4 x float> %i.dt, float %.sroa.2.0.copyload.i192, i64 1
  %i.dv = insertelement <4 x float> poison, float %i.bx, i64 0
  %i.dw = insertelement <4 x float> %i.dv, float %i.ct, i64 1
  %i.dx = insertelement <4 x float> %i.dw, float %i.cv, i64 2
  %i.dy = insertelement <4 x float> %i.dx, float %i.cz, i64 3
  %i.dz = fsub <4 x float> %i.du, %i.dy           ; 2 uses
  %i.ea = shufflevector <2 x float> %.sroa.0.0.copyload.i215, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.eb = shufflevector <4 x float> %i.ds, <4 x float> %i.ea, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.ec = shufflevector <2 x float> %.sroa.0.0.copyload.i223, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ed = shufflevector <4 x float> %i.eb, <4 x float> %i.ec, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.ee = insertelement <4 x float> poison, float %i.cw, i64 0
  %i.ef = insertelement <4 x float> %i.ee, float %i.da, i64 1
  %i.eg = insertelement <4 x float> %i.ef, float %i.de, i64 2
  %i.eh = insertelement <4 x float> %i.eg, float %i.dj, i64 3
  %i.ei = fsub <4 x float> %i.ed, %i.eh           ; 2 uses
  %i.ej = fmul <4 x float> %i.ei, %i.ei           ; 2 uses
  %i.ek = shufflevector <4 x float> %i.dn, <4 x float> %i.ej, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.el = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dz, <4 x float> %i.dz, <4 x float> %i.ek) ; 3 uses
  %i.em = shufflevector <2 x float> %.sroa.0.0.copyload.i215, <2 x float> %.sroa.0.0.copyload.i223, <4 x i32> <i32 poison, i32 poison, i32 0, i32 2>
  %i.en = insertelement <4 x float> %i.em, float %.sroa.2.0.copyload.i200, i64 0
  %i.eo = insertelement <4 x float> %i.en, float %.sroa.2.0.copyload.i208, i64 1
  %i.ep = insertelement <4 x float> poison, float %i.cx, i64 0
  %i.eq = insertelement <4 x float> %i.ep, float %i.db, i64 1
  %i.er = insertelement <4 x float> %i.eq, float %i.dd, i64 2
  %i.es = insertelement <4 x float> %i.er, float %i.di, i64 3
  %i.et = fsub <4 x float> %i.eo, %i.es           ; 2 uses
  %i.eu = shufflevector <4 x float> %i.el, <4 x float> %i.ej, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.ev = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.et, <4 x float> %i.et, <4 x float> %i.eu) ; 4 uses
  %i.ew = extractelement <4 x float> %i.ev, i64 2
  %i.ex = call noundef float @llvm.fmuladd.f32(float %i.dg, float %i.dg, float %i.ew) ; 2 uses
  %i.ey = extractelement <4 x float> %i.ev, i64 3
  %i.ez = call noundef float @llvm.fmuladd.f32(float %i.dl, float %i.dl, float %i.ey) ; 2 uses
  %i.fa = fcmp ogt float %i.dp, 0.000000e+00
  %.1 = select i1 %i.fa, float %i.dp, float 0.000000e+00 ; 2 uses
  %i.fb = fcmp ogt float %i.dr, %.1
  %.1.1 = select i1 %i.fb, float %i.dr, float %.1 ; 2 uses
  %i.fc = extractelement <4 x float> %i.el, i64 0 ; 2 uses
  %i.fd = fcmp ogt float %i.fc, %.1.1
  %.1.2 = select i1 %i.fd, float %i.fc, float %.1.1 ; 2 uses
  %i.fe = extractelement <4 x float> %i.el, i64 1 ; 2 uses
  %i.ff = fcmp ogt float %i.fe, %.1.2
  %.1.3 = select i1 %i.ff, float %i.fe, float %.1.2 ; 2 uses
  %i.fg = extractelement <4 x float> %i.ev, i64 0 ; 2 uses
  %i.fh = fcmp ogt float %i.fg, %.1.3
  %.1.4 = select i1 %i.fh, float %i.fg, float %.1.3 ; 2 uses
  %i.fi = extractelement <4 x float> %i.ev, i64 1 ; 2 uses
  %i.fj = fcmp ogt float %i.fi, %.1.4
  %.1.5 = select i1 %i.fj, float %i.fi, float %.1.4 ; 2 uses
  %i.fk = fcmp ogt float %i.ex, %.1.5
  %.1.6 = select i1 %i.fk, float %i.ex, float %.1.5 ; 2 uses
  %i.fl = fcmp ogt float %i.ez, %.1.6
  %.1.7 = select i1 %i.fl, float %i.ez, float %.1.6
  %i.fm = call float @sqrtf(float noundef %.1.7) #26
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 260
  store float %i.fm, ptr %i.fn, align 4, !tbaa !115
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK4core7plane3dIfE25getIntersectionWithPlanesERKS1_S3_RNS_8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(12) %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load <2 x float>, ptr %0, align 4, !tbaa !13 ; 6 uses
  %i.d = load <2 x float>, ptr %i.a, align 4, !tbaa !13 ; 5 uses
  %i.e = load <2 x float>, ptr %1, align 4, !tbaa !13 ; 6 uses
  %i.f = load <2 x float>, ptr %i.b, align 4, !tbaa !13 ; 5 uses
  %i.g = extractelement <2 x float> %i.e, i64 1   ; 2 uses
  %i.h = extractelement <2 x float> %i.c, i64 1   ; 2 uses
  %i.i = fmul float %i.h, %i.g
  %i.j = extractelement <2 x float> %i.e, i64 0   ; 2 uses
  %i.k = extractelement <2 x float> %i.c, i64 0   ; 2 uses
  %i.l = tail call float @llvm.fmuladd.f32(float %i.k, float %i.j, float %i.i)
  %i.m = extractelement <2 x float> %i.d, i64 1
  %i.n = extractelement <2 x float> %i.f, i64 1
  %i.o = tail call noundef float @llvm.fmuladd.f32(float %i.m, float %i.n, float %i.l) ; 3 uses
  %i.p = shufflevector <2 x float> %i.c, <2 x float> %i.e, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.q = fmul <2 x float> %i.p, %i.p
  %i.r = shufflevector <2 x float> %i.c, <2 x float> %i.e, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.s = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.r, <2 x float> %i.r, <2 x float> %i.q)
  %i.t = shufflevector <2 x float> %i.d, <2 x float> %i.f, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.u = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.t, <2 x float> %i.t, <2 x float> %i.s)
  %i.v = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.u) ; 3 uses
  %i.w = fneg float %i.o
  %i.x = fmul float %i.o, %i.w
  %i.y = extractelement <2 x float> %i.v, i64 0
  %i.z = extractelement <2 x float> %i.v, i64 1
  %i.aa = tail call float @llvm.fmuladd.f32(float %i.y, float %i.z, float %i.x)
  %i.ab = fpext float %i.aa to double             ; 2 uses
  %i.ac = tail call double @llvm.fabs.f64(double %i.ab)
  %i.ad = fcmp uge double %i.ac, 1.000000e-08
  br i1 %i.ad, label %bb.b, label %_ZNK4core7plane3dIfE24getIntersectionWithPlaneERKS1_RNS_8vector3dIfEES6_.exit

bb.b:                                             ; preds = %bb.a
  %i.ae = fneg <2 x float> %i.f
  %i.af = shufflevector <2 x float> %i.d, <2 x float> %i.c, <2 x i32> <i32 1, i32 2>
  %i.ag = fmul <2 x float> %i.af, %i.ae
  %i.ah = shufflevector <2 x float> %i.f, <2 x float> %i.e, <2 x i32> <i32 1, i32 2>
  %i.ai = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.d, <2 x float> %i.ah, <2 x float> %i.ag) ; 3 uses
  %i.aj = fneg float %i.j
  %i.ak = fmul float %i.h, %i.aj
  %i.al = tail call float @llvm.fmuladd.f32(float %i.k, float %i.g, float %i.ak) ; 2 uses
  %i.am = load float, ptr %2, align 4, !tbaa !82  ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ao = load float, ptr %i.an, align 4, !tbaa !83 ; 2 uses
  %i.ap = extractelement <2 x float> %i.ai, i64 1
  %i.aq = fmul float %i.ap, %i.ao
  %i.ar = extractelement <2 x float> %i.ai, i64 0
  %i.as = tail call float @llvm.fmuladd.f32(float %i.am, float %i.ar, float %i.aq)
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load float, ptr %i.at, align 4, !tbaa !15 ; 2 uses
  %i.av = tail call noundef float @llvm.fmuladd.f32(float %i.au, float %i.al, float %i.as) ; 2 uses
  %i.aw = fcmp une float %i.av, 0.000000e+00
  br i1 %i.aw, label %bb.c, label %_ZNK4core7plane3dIfE24getIntersectionWithPlaneERKS1_RNS_8vector3dIfEES6_.exit

bb.c:                                             ; preds = %bb.b
  %i.ax = fdiv double 1.000000e+00, %i.ab
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.az = load float, ptr %i.ay, align 4, !tbaa !49
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !49
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !49
  %i.be = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.bf = insertelement <2 x float> %i.be, float %i.az, i64 1 ; 2 uses
  %i.bg = fneg <2 x float> %i.bf
  %i.bh = insertelement <2 x float> poison, float %i.o, i64 0
  %i.bi = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bj = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bk = fmul <2 x float> %i.bi, %i.bj
  %i.bl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.v, <2 x float> %i.bg, <2 x float> %i.bk)
  %i.bm = fpext <2 x float> %i.bl to <2 x double>
  %i.bn = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.bo = shufflevector <2 x double> %i.bn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bp = fmul <2 x double> %i.bo, %i.bm
  %i.bq = fptrunc <2 x double> %i.bp to <2 x float> ; 3 uses
  %i.br = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bs = fmul <2 x float> %i.c, %i.br
  %i.bt = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bu = fmul <2 x float> %i.e, %i.bt
  %i.bv = fadd <2 x float> %i.bu, %i.bs           ; 3 uses
  %i.bw = shufflevector <2 x float> %i.f, <2 x float> %i.d, <2 x i32> <i32 1, i32 3>
  %i.bx = fmul <2 x float> %i.bw, %i.bq           ; 2 uses
  %shift = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.bx, %shift
  %i.by = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.bz = extractelement <2 x float> %i.bv, i64 1
  %i.ca = fmul float %i.ao, %i.bz
  %i.cb = extractelement <2 x float> %i.bv, i64 0
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.am, float %i.cb, float %i.ca)
  %i.cd = tail call noundef float @llvm.fmuladd.f32(float %i.au, float %i.by, float %i.cc)
  %i.ce = fadd float %i.bd, %i.cd
  %i.cf = fneg float %i.ce
  %i.cg = fdiv float %i.cf, %i.av                 ; 2 uses
  %i.ch = insertelement <2 x float> poison, float %i.cg, i64 0
  %i.ci = shufflevector <2 x float> %i.ch, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cj = fmul <2 x float> %i.ai, %i.ci
  %i.ck = fmul float %i.al, %i.cg
  %i.cl = fadd <2 x float> %i.bv, %i.cj
  %i.cm = fadd float %i.by, %i.ck
  store <2 x float> %i.cl, ptr %3, align 4
  %.sroa.4.0..sroa_idx.i5 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %i.cm, ptr %.sroa.4.0..sroa_idx.i5, align 4, !tbaa !13
  br label %_ZNK4core7plane3dIfE24getIntersectionWithPlaneERKS1_RNS_8vector3dIfEES6_.exit

_ZNK4core7plane3dIfE24getIntersectionWithPlaneERKS1_RNS_8vector3dIfEES6_.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #20

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_copy_assignERKS6_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(33) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !60, !range !72, !noundef !73
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i8, ptr %i.e, align 8, !range !72
  %i.g = trunc nuw i8 %i.f to i1                  ; 2 uses
  %or.cond = select i1 %i.d, i1 %i.g, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

bb.c:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !116
  %i.i = load ptr, ptr %1, align 8, !tbaa !77     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !117  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.k, ptr %i.a, align 8, !tbaa !118
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.d
  %i.m = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !77
  %i.n = load i64, ptr %i.a, align 8, !tbaa !118
  store i64 %i.n, ptr %i.h, align 8, !tbaa !78
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.d
  %i.o = phi ptr [ %i.m, %.noexc.i.i.i ], [ %i.h, %bb.d ] ; 2 uses
  switch i64 %i.k, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.p = load i8, ptr %i.i, align 1, !tbaa !78
  store i8 %i.p, ptr %i.o, align 1, !tbaa !78
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.i, i64 %i.k, i1 false)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.e, %bb.f
  %i.q = load i64, ptr %i.a, align 8, !tbaa !118  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !117
  %i.s = load ptr, ptr %0, align 8, !tbaa !77
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !78
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  store i8 1, ptr %i.b, align 8, !tbaa !60
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

bb.g:                                             ; preds = %bb.c
  store i8 0, ptr %i.b, align 8, !tbaa !60
  br i1 %i.d, label %bb.h, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

bb.h:                                             ; preds = %bb.g
  %i.u = load ptr, ptr %0, align 8, !tbaa !77     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.h
  %i.x = load i64, ptr %i.v, align 8, !tbaa !78
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #28
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.g, %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit, %bb.b
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #21

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #21

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #22

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN4core8vector3dIfEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !88     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 12                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !123
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 12                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 768614336404564651
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 768614336404564650, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN4core8vector3dIfEEmS2_ET_S4_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPN4core8vector3dIfEEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = mul nuw nsw i64 %1, 12                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.b, i8 0, i64 %i.p, i1 false), !tbaa !13
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !87
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIN4core8vector3dIfEESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #30
  unreachable

_ZNKSt6vectorIN4core8vector3dIfEESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 768614336404564650) ; 2 uses
  %i.t = mul nuw nsw i64 %i.s, 12
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #29 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = mul nuw nsw i64 %1, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.v, i8 0, i64 %i.w, i1 false), !tbaa !13
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4core8vector3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN4core8vector3dIfEESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorIN4core8vector3dIfEESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN4core8vector3dIfEESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i, i64 12, i1 false), !tbaa.struct !18, !alias.scope !124
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 12 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 12
  %.not.i.i.i = icmp eq ptr %i.x, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4core8vector3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !122

_ZNSt6vectorIN4core8vector3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN4core8vector3dIfEESaIS2_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseIN4core8vector3dIfEESaIS2_EE13_M_deallocateEPS2_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4core8vector3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !123
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ab) #28
  br label %_ZNSt12_Vector_baseIN4core8vector3dIfEESaIS2_EE13_M_deallocateEPS2_m.exit37

_ZNSt12_Vector_baseIN4core8vector3dIfEESaIS2_EE13_M_deallocateEPS2_m.exit37: ; preds = %_ZNSt6vectorIN4core8vector3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !88
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr %i.v, i64 %1
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !87
  %i.ad = getelementptr inbounds nuw [12 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ad, ptr %i.h, align 8, !tbaa !123
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN4core8vector3dIfEEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN4core8vector3dIfEESaIS2_EE13_M_deallocateEPS2_m.exit37, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #23

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #19

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5scene10ISceneNode15setSceneManagerEPNS_13ISceneManagerE(ptr noundef nonnull align 8 dereferenceable(218) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %1, ptr %i.a, align 8, !tbaa !66
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %.sroa.03.06 = load ptr, ptr %i.b, align 8, !tbaa !62 ; 2 uses
  %.not7 = icmp eq ptr %.sroa.03.06, %i.b
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.03.08 = phi ptr [ %.sroa.03.0, %.lr.ph ], [ %.sroa.03.06, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.03.08, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !84
  tail call void @_ZN5scene10ISceneNode15setSceneManagerEPNS_13ISceneManagerE(ptr noundef nonnull align 8 dereferenceable(218) %i.d, ptr noundef %1)
  %.sroa.03.0 = load ptr, ptr %.sroa.03.08, align 8, !tbaa !62 ; 2 uses
  %.not = icmp eq ptr %.sroa.03.0, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !125

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #24

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #19

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @tan(double noundef) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.sqrt.v4f32(<4 x float>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #19

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nofree noreturn }
attributes #17 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #21 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { nounwind }
attributes #27 = { noreturn nounwind }
attributes #28 = { builtin nounwind }
attributes #29 = { builtin allocsize(0) }
attributes #30 = { noreturn }

!llvm.module.flags = !{!4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !71}
!1 = distinct !{!1, !71}
!2 = distinct !{null}
!3 = distinct !{ptr @_ZN5scene16CCameraSceneNodeD1Ev, ptr @_ZN5scene10ISceneNode9removeAllEv, null}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"float", !8, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"_ZTSN4core8vector3dIfEE", !12, i64 0, !12, i64 4, !12, i64 8}
!15 = !{!14, !12, i64 8}
!16 = !{!"vtable pointer", !7, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{i64 0, i64 4, !13, i64 4, i64 4, !13, i64 8, i64 4, !13}
!19 = !{!"bool", !8, i64 0}
!20 = !{!"_ZTSSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !8, i64 0, !19, i64 32}
!21 = !{!"_ZTSSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb0ELb0EE", !20, i64 0}
!22 = !{!"_ZTSSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EE", !21, i64 0}
!23 = !{!"_ZTSSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EE", !22, i64 0}
!24 = !{!"_ZTSSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !23, i64 0}
!25 = !{!"_ZTSN4core8CMatrix4IfEE", !8, i64 0}
!26 = !{!"any pointer", !8, i64 0}
!27 = !{!"p1 _ZTSNSt8__detail15_List_node_baseE", !26, i64 0}
!28 = !{!"_ZTSNSt8__detail15_List_node_baseE", !27, i64 0, !27, i64 8}
!29 = !{!"long", !8, i64 0}
!30 = !{!"_ZTSNSt8__detail17_List_node_headerE", !28, i64 0, !29, i64 16}
!31 = !{!"_ZTSNSt7__cxx1110_List_baseIPN5scene10ISceneNodeESaIS3_EE10_List_implE", !30, i64 0}
!32 = !{!"_ZTSNSt7__cxx1110_List_baseIPN5scene10ISceneNodeESaIS3_EEE", !31, i64 0}
!33 = !{!"_ZTSNSt7__cxx114listIPN5scene10ISceneNodeESaIS3_EEE", !32, i64 0}
!34 = !{!"_ZTSSt22_Optional_payload_baseISt14_List_iteratorIPN5scene10ISceneNodeEEE", !8, i64 0, !19, i64 8}
!35 = !{!"_ZTSSt17_Optional_payloadISt14_List_iteratorIPN5scene10ISceneNodeEELb1ELb1ELb1EE", !34, i64 0}
!36 = !{!"_ZTSSt14_Optional_baseISt14_List_iteratorIPN5scene10ISceneNodeEELb1ELb1EE", !35, i64 0}
!37 = !{!"_ZTSSt8optionalISt14_List_iteratorIPN5scene10ISceneNodeEEE", !36, i64 0}
!38 = !{!"p1 _ZTSN5scene10ISceneNodeE", !26, i64 0}
!39 = !{!"p1 _ZTSN5scene13ISceneManagerE", !26, i64 0}
!40 = !{!"short", !8, i64 0}
!41 = !{!"_ZTSN5scene10ISceneNodeE", !24, i64 8, !25, i64 48, !14, i64 112, !14, i64 124, !14, i64 136, !33, i64 152, !37, i64 176, !38, i64 192, !39, i64 200, !9, i64 208, !40, i64 212, !40, i64 214, !19, i64 216, !19, i64 217}
!42 = !{!"_ZTS14IEventReceiver"}
!43 = !{!"_ZTSN5scene16ICameraSceneNodeE", !41, i64 0, !42, i64 224, !19, i64 232}
!44 = !{!"_ZTSN4core8aabbox3dIfEE", !14, i64 0, !14, i64 12}
!45 = !{!"_ZTSN5scene12SViewFrustumE", !14, i64 0, !8, i64 12, !44, i64 108, !8, i64 132, !12, i64 260, !12, i64 264, !14, i64 268}
!46 = !{!"_ZTSN5scene16CCameraSceneNodeE", !43, i64 0, !44, i64 236, !14, i64 260, !14, i64 272, !12, i64 284, !12, i64 288, !12, i64 292, !12, i64 296, !45, i64 300, !25, i64 580, !19, i64 644, !19, i64 645}
!47 = !{!46, !12, i64 296}
!48 = !{!"_ZTSN4core7plane3dIfEE", !14, i64 0, !12, i64 12}
!49 = !{!48, !12, i64 12}
!50 = !{!46, !19, i64 644}
!51 = !{!46, !19, i64 645}
!52 = !{!"_ZTSN4core11dimension2dIjEE", !9, i64 0, !9, i64 4}
!53 = !{!52, !9, i64 4}
!54 = !{!52, !9, i64 0}
!55 = !{!46, !12, i64 288}
!56 = !{!46, !12, i64 292}
!57 = !{!45, !12, i64 264}
!58 = !{!46, !12, i64 284}
!59 = !{!43, !19, i64 232}
!60 = !{!20, !19, i64 32}
!61 = !{!28, !27, i64 8}
!62 = !{!28, !27, i64 0}
!63 = !{!30, !29, i64 16}
!64 = !{!34, !19, i64 8}
!65 = !{!41, !38, i64 192}
!66 = !{!41, !39, i64 200}
!67 = !{!41, !9, i64 208}
!68 = !{!41, !40, i64 214}
!69 = !{!41, !19, i64 216}
!70 = !{!41, !19, i64 217}
!71 = !{!"llvm.loop.mustprogress"}
!72 = !{i8 0, i8 2}
!73 = !{}
!74 = !{!"p1 omnipotent char", !26, i64 0}
!75 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !74, i64 0}
!76 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !75, i64 0, !29, i64 8, !8, i64 16}
!77 = !{!76, !74, i64 0}
!78 = !{!8, !8, i64 0}
!79 = !{!"_ZTS17IReferenceCounted", !9, i64 8}
!80 = !{!79, !9, i64 8}
!81 = !{i64 0, i64 64, !78}
!82 = !{!14, !12, i64 0}
!83 = !{!14, !12, i64 4}
!84 = !{!38, !38, i64 0}
!85 = !{!"p1 _ZTSN4core8vector3dIfEE", !26, i64 0}
!86 = !{!"_ZTSNSt12_Vector_baseIN4core8vector3dIfEESaIS2_EE17_Vector_impl_dataE", !85, i64 0, !85, i64 8, !85, i64 16}
!87 = !{!86, !85, i64 8}
!88 = !{!86, !85, i64 0}
!89 = !{!32, !29, i64 16}
!90 = !{!27, !27, i64 0}
!91 = !{ptr @_ZN5scene16CCameraSceneNodeD1Ev}
!92 = !{!41, !40, i64 212}
!93 = !{ptr @_ZN5scene10ISceneNode19OnRegisterSceneNodeEv}
!94 = !{!"branch_weights", i32 1, i32 1048575}
!95 = !{!48, !12, i64 0}
!96 = !{!48, !12, i64 4}
!97 = !{!48, !12, i64 8}
!98 = distinct !{null}
!99 = distinct !{!99, !71}
!100 = !{!40, !40, i64 0}
!101 = !{i64 0, i64 4, !13, i64 4, i64 4, !13, i64 8, i64 4, !13, i64 12, i64 96, !78, i64 108, i64 4, !13, i64 112, i64 4, !13, i64 116, i64 4, !13, i64 120, i64 4, !13, i64 124, i64 4, !13, i64 128, i64 4, !13, i64 132, i64 128, !78, i64 260, i64 4, !13, i64 264, i64 4, !13, i64 268, i64 4, !13, i64 272, i64 4, !13, i64 276, i64 4, !13}
!102 = !{i64 0, i64 4, !13, i64 4, i64 4, !13, i64 8, i64 4, !13, i64 12, i64 4, !13, i64 16, i64 4, !13, i64 20, i64 4, !13}
!103 = distinct !{!103, !71}
!104 = !{!85, !85, i64 0}
!105 = distinct !{!105, !"_ZNK4core8CMatrix4IfEmlERKS1_"}
!106 = distinct !{!106, !105, !"_ZNK4core8CMatrix4IfEmlERKS1_: argument 0"}
!107 = !{!106}
!108 = distinct !{ptr @_ZN5scene10ISceneNode9removeAllEv, null}
!109 = !{!44, !12, i64 12}
!110 = !{!44, !12, i64 16}
!111 = !{!44, !12, i64 20}
!112 = !{!44, !12, i64 0}
!113 = !{!44, !12, i64 4}
!114 = !{!44, !12, i64 8}
!115 = !{!45, !12, i64 260}
!116 = !{!75, !74, i64 0}
!117 = !{!76, !29, i64 8}
!118 = !{!29, !29, i64 0}
!119 = distinct !{!119, !"_ZSt19__relocate_object_aIN4core8vector3dIfEES2_SaIS2_EEvPT_PT0_RT1_"}
!120 = distinct !{!120, !119, !"_ZSt19__relocate_object_aIN4core8vector3dIfEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!121 = distinct !{!121, !119, !"_ZSt19__relocate_object_aIN4core8vector3dIfEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!122 = distinct !{!122, !71}
!123 = !{!86, !85, i64 16}
!124 = !{!121, !120}
!125 = distinct !{!125, !71}
end_hunk_3
