Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3PgsJacobiSolver?download=true
inline.NumInlined: 892
inline.NumDeleted: 188
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN17b3PgsJacobiSolver29solveGroupCacheFriendlyFinishEP15b3RigidBodyDataP13b3InertiaDataiRK19b3ContactSolverInfo:bb.a
  store ptr null, ptr %i.ob, align 8, !tbaa !28
  store i32 0, ptr %i.ny, align 8, !tbaa !30
  br label %bb.av

bb.av:                                            ; preds = %_ZN20b3AlignedObjectArrayI12b3SolverBodyE10deallocateEv.exit.i.i, %bb.ar, %bb.aq
  store i32 0, ptr %i.id, align 4, !tbaa !29
  invoke void @b3LeaveProfileZone()
          to label %_ZN13b3ProfileZoneD2Ev.exit191 unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.oh = landingpad { ptr, i32 }
          catch ptr null
  %i.oi = extractvalue { ptr, i32 } %i.oh, 0
  call void @__clang_call_terminate(ptr %i.oi) #21
  unreachable

_ZN13b3ProfileZoneD2Ev.exit191:                   ; preds = %bb.av
  ret float 0.000000e+00

_ZN13b3ProfileZoneD2Ev.exit:                      ; preds = %bb.k, %bb.u, %bb.d
  %.pn92.pn = phi { ptr, i32 } [ %i.hu, %bb.d ], [ %.pn87.pn, %bb.u ], [ %i.ja, %bb.k ]
  invoke void @b3LeaveProfileZone()
          to label %_ZN13b3ProfileZoneD2Ev.exit192 unwind label %bb.ax

bb.ax:                                            ; preds = %_ZN13b3ProfileZoneD2Ev.exit
  %i.oj = landingpad { ptr, i32 }
          catch ptr null
  %i.ok = extractvalue { ptr, i32 } %i.oj, 0
  call void @__clang_call_terminate(ptr %i.ok) #21
  unreachable

_ZN13b3ProfileZoneD2Ev.exit192:                   ; preds = %_ZN13b3ProfileZoneD2Ev.exit
  resume { ptr, i32 } %.pn92.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN12b3SolverBody29writebackVelocityAndTransformEff(ptr noundef nonnull align 16 dereferenceable(228) %0, float noundef %1, float noundef %2) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %3 = alloca %class.b3Transform, align 16        ; 7 uses
  %4 = alloca %class.b3Vector3, align 16          ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !19
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.e = load <2 x float>, ptr %i.c, align 16, !tbaa !19
  %i.f = load <2 x float>, ptr %i.d, align 16, !tbaa !19
  %i.g = fadd <2 x float> %i.e, %i.f
  store <2 x float> %i.g, ptr %i.d, align 16, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load float, ptr %i.h, align 8, !tbaa !19
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.k = load float, ptr %i.j, align 8, !tbaa !19
  %i.l = fadd float %i.i, %i.k
  store float %i.l, ptr %i.j, align 8, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.o = load <2 x float>, ptr %i.m, align 16, !tbaa !19
  %i.p = load <2 x float>, ptr %i.n, align 16, !tbaa !19
  %i.q = fadd <2 x float> %i.o, %i.p
  store <2 x float> %i.q, ptr %i.n, align 16, !tbaa !19
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.s = load float, ptr %i.r, align 8, !tbaa !19
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.u = load float, ptr %i.t, align 8, !tbaa !19
  %i.v = fadd float %i.s, %i.u
  store float %i.v, ptr %i.t, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.x = load float, ptr %i.w, align 16, !tbaa !17
  %i.y = fcmp une float %i.x, 0.000000e+00
  br i1 %i.y, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.aa = load float, ptr %i.z, align 4, !tbaa !17
  %i.ab = fcmp une float %i.aa, 0.000000e+00
  br i1 %i.ab, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ad = load float, ptr %i.ac, align 8, !tbaa !17
  %i.ae = fcmp une float %i.ad, 0.000000e+00
  br i1 %i.ae, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ag = load float, ptr %i.af, align 16, !tbaa !17
  %i.ah = fcmp une float %i.ag, 0.000000e+00
  br i1 %i.ah, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !17
  %i.ak = fcmp une float %i.aj, 0.000000e+00
  br i1 %i.ak, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.am = load float, ptr %i.al, align 8, !tbaa !17
  %i.an = fcmp une float %i.am, 0.000000e+00
  br i1 %i.an, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ap = load <2 x float>, ptr %i.ao, align 16, !tbaa !19
  %i.aq = insertelement <2 x float> poison, float %2, i64 0
  %i.ar = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.as = fmul <2 x float> %i.ar, %i.ap
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.au = load float, ptr %i.at, align 8, !tbaa !19
  %i.av = fmul float %2, %i.au
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.av, i64 0
  store <2 x float> %i.as, ptr %4, align 16
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %i.aw, align 8
  call void @_ZN15b3TransformUtil18integrateTransformERK11b3TransformRK9b3Vector3S5_fRS0_(ptr noundef nonnull align 16 dereferenceable(64) %0, ptr noundef nonnull align 16 dereferenceable(16) %i.w, ptr noundef nonnull align 16 dereferenceable(16) %4, float noundef %1, ptr noundef nonnull align 16 dereferenceable(64) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %0, ptr noundef nonnull align 16 dereferenceable(64) %3, i64 16, i1 false), !tbaa.struct !79
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ay, ptr noundef nonnull align 16 dereferenceable(16) %i.ax, i64 16, i1 false), !tbaa.struct !79
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ba, ptr noundef nonnull align 16 dereferenceable(16) %i.az, i64 16, i1 false), !tbaa.struct !79
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bc, ptr noundef nonnull align 16 dereferenceable(16) %i.bb, i64 16, i1 false), !tbaa.struct !79
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN17b3PgsJacobiSolver5resetEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(448) initializes((440, 448)) %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 440
  store i64 0, ptr %i.a, align 8, !tbaa !63
  ret void
}

declare void @_Z21b3AlignedFreeInternalPv(ptr noundef) local_unnamed_addr #15

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #16 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #22 ; 0 uses
  tail call void @_ZSt9terminatev() #21
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #17

declare void @b3EnterProfileZone(ptr noundef) local_unnamed_addr #15

declare void @b3LeaveProfileZone() local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN15b3TransformUtil18integrateTransformERK11b3TransformRK9b3Vector3S5_fRS0_(ptr noundef nonnull align 16 dereferenceable(64) %0, ptr noundef nonnull align 16 dereferenceable(16) %1, ptr noundef nonnull align 16 dereferenceable(16) %2, float noundef %3, ptr noundef nonnull align 16 dereferenceable(64) %4) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %5 = alloca %class.b3Quaternion, align 16       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load float, ptr %i.b, align 8, !tbaa !19
  %i.d = fmul float %3, %i.c
  %i.e = load <2 x float>, ptr %1, align 16, !tbaa !19
  %i.f = insertelement <2 x float> poison, float %3, i64 0
  %i.g = shufflevector <2 x float> %i.f, <2 x float> poison, <2 x i32> zeroinitializer
  %i.h = fmul <2 x float> %i.g, %i.e
  %i.i = load <2 x float>, ptr %i.a, align 16, !tbaa !19
  %i.j = fadd <2 x float> %i.h, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load float, ptr %i.k, align 8, !tbaa !19
  %i.m = fadd float %i.d, %i.l
  %.sroa.3.12.vec.insert.i.i19 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.m, i64 0
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 48
  store <2 x float> %i.j, ptr %i.n, align 16
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i.i19, ptr %.sroa.455.0..sroa_idx, align 8, !tbaa !19
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.p = load <2 x float>, ptr %2, align 16, !tbaa !19 ; 5 uses
  %6 = load <2 x float>, ptr %i.o, align 4, !tbaa !19 ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.p, %i.p
  %i.q = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.r = extractelement <2 x float> %i.p, i64 0   ; 2 uses
  %i.s = tail call float @llvm.fmuladd.f32(float %i.r, float %i.r, float %i.q)
  %7 = extractelement <2 x float> %6, i64 1       ; 2 uses
  %i.t = tail call noundef float @llvm.fmuladd.f32(float %7, float %7, float %i.s)
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %i.t) ; 2 uses
  %i.u = fmul float %3, %sqrt.i
  %i.v = fcmp ogt float %i.u, f0x3F490FDB
  %i.w = fdiv float f0x3F490FDB, %3
  %.0 = select i1 %i.v, float %i.w, float %sqrt.i ; 6 uses
  %i.x = fcmp olt float %.0, 1.000000e-03
  br i1 %i.x, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.y = fmul float %3, %3
  %i.z = fmul float %3, %i.y
  %i.aa = fmul float %i.z, f0x3CAAAAAB
  %i.ab = fmul float %i.aa, %.0
  %i.ac = fneg float %.0
  %i.ad = fmul float %i.ab, %i.ac
  %i.ae = tail call float @llvm.fmuladd.f32(float %3, float 5.000000e-01, float %i.ad)
  %i.af = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ah = fmul <2 x float> %i.p, %i.ag
  %8 = shufflevector <2 x float> %6, <2 x float> %i.p, <2 x i32> <i32 1, i32 2>
  %9 = fmul <2 x float> %8, %i.ag
  %i.ai = fmul <2 x float> %6, %i.ag
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.aj = fmul float %.0, 5.000000e-01
  %i.ak = fmul float %3, %i.aj
  %i.al = tail call noundef float @sinf(float noundef %i.ak) #22
  %i.am = fdiv float %i.al, %.0
  %i.an = load <2 x float>, ptr %2, align 16, !tbaa !19 ; 2 uses
  %10 = load <2 x float>, ptr %i.o, align 4, !tbaa !19 ; 2 uses
  %i.ao = insertelement <2 x float> poison, float %i.am, i64 0
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.aq = fmul <2 x float> %i.an, %i.ap
  %11 = shufflevector <2 x float> %10, <2 x float> %i.an, <2 x i32> <i32 1, i32 2>
  %12 = fmul <2 x float> %i.ap, %11
  %i.ar = fmul <2 x float> %i.ap, %10
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.as = phi <2 x float> [ %i.aq, %bb.c ], [ %i.ah, %bb.b ] ; 3 uses
  %13 = phi <2 x float> [ %12, %bb.c ], [ %9, %bb.b ] ; 2 uses
  %i.at = phi <2 x float> [ %i.ar, %bb.c ], [ %i.ai, %bb.b ]
  %i.au = fmul float %3, %.0
  %i.av = fmul float %i.au, 5.000000e-01
  %i.aw = tail call noundef float @cosf(float noundef %i.av) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @_ZNK11b3Matrix3x311getRotationER12b3Quaternion(ptr noundef nonnull align 16 dereferenceable(64) %0, ptr noundef nonnull align 16 dereferenceable(16) %5)
  %.fca.0.load.i = load <2 x float>, ptr %5, align 16 ; 6 uses
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.fca.1.load.i = load <2 x float>, ptr %.fca.1.gep.i, align 8 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ax = extractelement <2 x float> %13, i64 0
  %i.ay = fneg float %i.ax
  %i.az = fneg <2 x float> %i.as                  ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.bb = shufflevector <2 x float> %.fca.1.load.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bc = fmul <2 x float> %i.at, %i.bb
  %i.bd = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.be = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bf = shufflevector <2 x float> %.fca.0.load.i, <2 x float> %.fca.1.load.i, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.bg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.be, <2 x float> %i.bf, <2 x float> %i.bc)
  %i.bh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %13, <2 x float> %.fca.0.load.i, <2 x float> %i.bg)
  %i.bi = shufflevector <2 x float> %.fca.1.load.i, <2 x float> %.fca.0.load.i, <2 x i32> <i32 0, i32 2>
  %i.bj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.az, <2 x float> %i.bi, <2 x float> %i.bh) ; 4 uses
  %i.bk = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bl = fneg <2 x float> %.fca.0.load.i
  %i.bm = shufflevector <2 x float> %.fca.1.load.i, <2 x float> %i.bl, <2 x i32> <i32 1, i32 2>
  %i.bn = fmul <2 x float> %i.bk, %i.bm
  %i.bo = shufflevector <2 x float> %.fca.0.load.i, <2 x float> %.fca.1.load.i, <2 x i32> <i32 0, i32 3>
  %i.bp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.be, <2 x float> %i.bo, <2 x float> %i.bn)
  %i.bq = shufflevector <2 x float> %i.as, <2 x float> %i.az, <2 x i32> <i32 1, i32 3>
  %i.br = shufflevector <2 x float> %.fca.1.load.i, <2 x float> %.fca.0.load.i, <2 x i32> <i32 0, i32 3>
  %i.bs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bq, <2 x float> %i.br, <2 x float> %i.bp)
  %i.bt = insertelement <2 x float> poison, float %i.ay, i64 0
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.bf, <2 x float> %i.bs) ; 3 uses
  %foldExtExtBinop64 = fmul <2 x float> %i.bj, %i.bj
  %i.bw = extractelement <2 x float> %foldExtExtBinop64, i64 0
  %i.bx = extractelement <2 x float> %i.bv, i64 0 ; 2 uses
  %i.by = call float @llvm.fmuladd.f32(float %i.bx, float %i.bx, float %i.bw)
  %i.bz = extractelement <2 x float> %i.bj, i64 1 ; 2 uses
  %i.ca = call float @llvm.fmuladd.f32(float %i.bz, float %i.bz, float %i.by)
  %i.cb = extractelement <2 x float> %i.bv, i64 1 ; 2 uses
  %i.cc = call noundef float @llvm.fmuladd.f32(float %i.cb, float %i.cb, float %i.ca)
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.cc)
  %i.cd = fdiv float 1.000000e+00, %sqrt.i.i
  %i.ce = insertelement <2 x float> poison, float %i.cd, i64 0
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cg = fmul <2 x float> %i.bj, %i.cf           ; 6 uses
  %i.ch = fmul <2 x float> %i.bv, %i.cf           ; 4 uses
  %i.ci = extractelement <2 x float> %i.cg, i64 0
  %foldExtExtBinop66 = fmul <2 x float> %i.cg, %i.cg
  %i.cj = extractelement <2 x float> %foldExtExtBinop66, i64 0
  %i.ck = extractelement <2 x float> %i.ch, i64 0 ; 4 uses
  %i.cl = call float @llvm.fmuladd.f32(float %i.ck, float %i.ck, float %i.cj)
  %i.cm = extractelement <2 x float> %i.cg, i64 1 ; 3 uses
  %i.cn = call float @llvm.fmuladd.f32(float %i.cm, float %i.cm, float %i.cl)
  %i.co = extractelement <2 x float> %i.ch, i64 1 ; 3 uses
  %i.cp = call noundef float @llvm.fmuladd.f32(float %i.co, float %i.co, float %i.cn)
  %i.cq = fdiv float 2.000000e+00, %i.cp          ; 2 uses
  %i.cr = fmul float %i.ck, %i.cq                 ; 2 uses
  %i.cs = insertelement <2 x float> poison, float %i.cq, i64 0
  %i.ct = shufflevector <2 x float> %i.cs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cu = fmul <2 x float> %i.cg, %i.ct           ; 4 uses
  %i.cv = fmul float %i.co, %i.cr                 ; 2 uses
  %i.cw = shufflevector <2 x float> %i.ch, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cx = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cy = fmul <2 x float> %i.cw, %i.cx           ; 4 uses
  %i.cz = fmul float %i.ck, %i.cr                 ; 2 uses
  %i.da = shufflevector <2 x float> %i.ch, <2 x float> poison, <2 x i32> zeroinitializer
  %i.db = fmul <2 x float> %i.da, %i.cu           ; 4 uses
  %foldExtExtBinop68 = fmul <2 x float> %i.cg, %i.cu
  %i.dc = extractelement <2 x float> %foldExtExtBinop68, i64 0 ; 2 uses
  %i.dd = extractelement <2 x float> %i.cu, i64 1 ; 2 uses
  %i.de = fmul float %i.ci, %i.dd                 ; 2 uses
  %i.df = fmul float %i.cm, %i.dd                 ; 2 uses
  %i.dg = fadd float %i.dc, %i.df
  %i.dh = fsub float 1.000000e+00, %i.dg
  %i.di = fsub <2 x float> %i.db, %i.cy
  %i.dj = fadd <2 x float> %i.db, %i.cy
  %i.dk = shufflevector <2 x float> %i.di, <2 x float> %i.dj, <2 x i32> <i32 0, i32 3>
  %foldExtExtBinop70 = fadd <2 x float> %i.db, %i.cy
  %i.dl = extractelement <2 x float> %foldExtExtBinop70, i64 0
  %i.dm = fadd float %i.cz, %i.df
  %i.dn = fsub float 1.000000e+00, %i.dm
  %i.do = fsub float %i.de, %i.cv
  %foldExtExtBinop72 = fsub <2 x float> %i.db, %i.cy
  %i.dp = extractelement <2 x float> %foldExtExtBinop72, i64 1
  %i.dq = fadd float %i.de, %i.cv
  %i.dr = fadd float %i.cz, %i.dc
  %i.ds = fsub float 1.000000e+00, %i.dr
  store float %i.dh, ptr %4, align 16, !tbaa !19
  store <2 x float> %i.dk, ptr %i.ba, align 4, !tbaa !19
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 12
  store float 0.000000e+00, ptr %i.dt, align 4, !tbaa !19
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 16
  store float %i.dl, ptr %i.du, align 16, !tbaa !19
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 20
  store float %i.dn, ptr %i.dv, align 4, !tbaa !19
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 24
  store float %i.do, ptr %i.dw, align 8, !tbaa !19
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 28
  store float 0.000000e+00, ptr %i.dx, align 4, !tbaa !19
  %i.dy = getelementptr inbounds nuw i8, ptr %4, i64 32
  store float %i.dp, ptr %i.dy, align 16, !tbaa !19
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 36
  store float %i.dq, ptr %i.dz, align 4, !tbaa !19
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 40
  store float %i.ds, ptr %i.ea, align 8, !tbaa !19
  %i.eb = getelementptr inbounds nuw i8, ptr %4, i64 44
  store float 0.000000e+00, ptr %i.eb, align 4, !tbaa !19
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #19

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK11b3Matrix3x311getRotationER12b3Quaternion(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(16) %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 7 uses
  %i.b = load float, ptr %0, align 16, !tbaa !17  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load float, ptr %i.c, align 4, !tbaa !17 ; 3 uses
  %i.e = fadd float %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load float, ptr %i.f, align 8, !tbaa !17 ; 3 uses
  %i.h = fadd float %i.e, %i.g                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.i = fcmp ogt float %i.h, 0.000000e+00
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = fadd float %i.h, 1.000000e+00
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = tail call noundef float @sqrtf(float noundef %i.l) #22 ; 2 uses
  %i.r = fdiv float 5.000000e-01, %i.q
  %i.s = load float, ptr %i.n, align 8, !tbaa !17
  %i.t = load float, ptr %i.m, align 4, !tbaa !17
  %i.u = load float, ptr %i.j, align 16, !tbaa !17
  %i.v = load float, ptr %i.k, align 16, !tbaa !17
  %i.w = load float, ptr %i.o, align 8, !tbaa !17
  %i.x = load float, ptr %i.p, align 4, !tbaa !17
  %i.y = fsub float %i.v, %i.x
  %i.z = fsub float %i.w, %i.u
  %i.aa = fsub float %i.t, %i.s
  %i.ab = insertelement <4 x float> poison, float %i.r, i64 0
  %i.ac = insertelement <4 x float> %i.ab, float %i.q, i64 3
  %i.ad = shufflevector <4 x float> %i.ac, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.ae = insertelement <4 x float> <float poison, float poison, float poison, float 5.000000e-01>, float %i.aa, i64 0
  %i.af = insertelement <4 x float> %i.ae, float %i.z, i64 1
  %i.ag = insertelement <4 x float> %i.af, float %i.y, i64 2
  %i.ah = fmul <4 x float> %i.ad, %i.ag
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ai = fcmp olt float %i.b, %i.d
  %i.aj = fcmp olt float %i.d, %i.g
  %i.ak = select i1 %i.aj, i32 2, i32 1
  %i.al = fcmp olt float %i.b, %i.g
  %i.am = select i1 %i.al, i32 2, i32 0
  %i.an = select i1 %i.ai, i32 %i.ak, i32 %i.am
  %.fr = freeze i32 %i.an                         ; 3 uses
  %i.ao = add nuw nsw i32 %.fr, 1                 ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 3
  %i.aq = select i1 %i.ap, i32 0, i32 %i.ao
  %i.ar = add nuw nsw i32 %.fr, 2
  %i.as = urem i32 %i.ar, 3
  %i.at = zext nneg i32 %.fr to i64               ; 5 uses
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.at ; 3 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.at
  %i.aw = load float, ptr %i.av, align 4, !tbaa !17
  %i.ax = sext i32 %i.aq to i64                   ; 5 uses
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ax ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.ax
  %i.ba = load float, ptr %i.az, align 4, !tbaa !17
  %i.bb = fsub float %i.aw, %i.ba
  %i.bc = zext nneg i32 %i.as to i64              ; 5 uses
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bc ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.bc
  %i.bf = load float, ptr %i.be, align 4, !tbaa !17
  %i.bg = fsub float %i.bb, %i.bf
  %i.bh = fadd float %i.bg, 1.000000e+00
  %i.bi = tail call noundef float @sqrtf(float noundef %i.bh) #22 ; 2 uses
  %i.bj = fmul float %i.bi, 5.000000e-01
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.at
  store float %i.bj, ptr %i.bk, align 4, !tbaa !17
  %i.bl = fdiv float 5.000000e-01, %i.bi          ; 3 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.ax
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !17
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.bc
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !17
  %i.bq = fsub float %i.bn, %i.bp
  %i.br = fmul float %i.bl, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store float %i.br, ptr %i.bs, align 4, !tbaa !17
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.at
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !17
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.ax
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !17
  %i.bx = fadd float %i.bu, %i.bw
  %i.by = fmul float %i.bl, %i.bx
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ax
  store float %i.by, ptr %i.bz, align 4, !tbaa !17
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.at
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !17
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.bc
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !17
  %i.ce = fadd float %i.cb, %i.cd
  %i.cf = fmul float %i.bl, %i.ce
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bc
  store float %i.cf, ptr %i.cg, align 4, !tbaa !17
  %i.ch = load <4 x float>, ptr %i.a, align 16, !tbaa !17
  br label %bb.d
end_hunk_0
