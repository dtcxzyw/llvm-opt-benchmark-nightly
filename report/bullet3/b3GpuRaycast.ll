Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3GpuRaycast?download=true
inline.NumInlined: 267
inline.NumDeleted: 115
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_Z16sphere_intersectRK9b3Vector3fS1_S1_Rf:bb.a
  %i.n = load float, ptr %3, align 16, !tbaa !62
  %i.o = fsub float %i.n, %i.a                    ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.q = load float, ptr %i.p, align 4, !tbaa !62
  %i.r = fsub float %i.q, %i.e                    ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = load float, ptr %i.s, align 8, !tbaa !62
  %i.u = fsub float %i.t, %i.j                    ; 3 uses
  %i.v = fmul float %i.r, %i.r
  %i.w = tail call float @llvm.fmuladd.f32(float %i.o, float %i.o, float %i.v)
  %i.x = tail call noundef float @llvm.fmuladd.f32(float %i.u, float %i.u, float %i.w) ; 2 uses
  %i.y = fmul float %i.h, %i.r
  %i.z = tail call float @llvm.fmuladd.f32(float %i.c, float %i.o, float %i.y)
  %i.aa = tail call noundef float @llvm.fmuladd.f32(float %i.m, float %i.u, float %i.z) ; 3 uses
  %i.ab = fmul float %i.h, %i.h
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.c, float %i.c, float %i.ab)
  %i.ad = tail call noundef float @llvm.fmuladd.f32(float %i.m, float %i.m, float %i.ac)
  %i.ae = fneg float %1
  %i.af = tail call float @llvm.fmuladd.f32(float %i.ae, float %1, float %i.ad)
  %i.ag = fneg float %i.af
  %i.ah = fmul float %i.x, %i.ag
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.aa, float %i.aa, float %i.ah) ; 2 uses
  %i.aj = fcmp ogt float %i.ai, 0.000000e+00
  br i1 %i.aj, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ak = fneg float %i.aa
  %i.al = tail call noundef float @sqrtf(float noundef %i.ai) #19
  %i.am = fsub float %i.ak, %i.al
  %i.an = fdiv float %i.am, %i.x                  ; 3 uses
  %i.ao = fcmp oge float %i.an, 0.000000e+00
  %i.ap = load float, ptr %4, align 4
  %i.aq = fcmp olt float %i.an, %i.ap
  %or.cond = select i1 %i.ao, i1 %i.aq, i1 false
  br i1 %or.cond, label %.critedge, label %bb.c

.critedge:                                        ; preds = %bb.b
  store float %i.an, ptr %4, align 4, !tbaa !64
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b, %.critedge
  %.1 = phi i1 [ true, %.critedge ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %.1
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_Z9rayConvexRK9b3Vector3S1_RK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayI9b3GpuFaceERfRS_(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(96) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %3, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull writeonly align 16 captures(none) dereferenceable(16) %5) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.b = load i32, ptr %i.a, align 8, !tbaa !67   ; 2 uses
  %.not71 = icmp sgt i32 %i.b, 0
  br i1 %.not71, label %.lr.ph, label %.thread63

.lr.ph:                                           ; preds = %bb.a
  %i.c = load float, ptr %4, align 4, !tbaa !64
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.e = load i32, ptr %i.d, align 4, !tbaa !68
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !72
  %i.h = load float, ptr %0, align 16, !tbaa !62
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = load float, ptr %i.i, align 4, !tbaa !62
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load float, ptr %i.k, align 8, !tbaa !62
  %i.m = load float, ptr %1, align 16, !tbaa !62
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.o = load float, ptr %i.n, align 4, !tbaa !62
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load float, ptr %i.p, align 8, !tbaa !62
  %i.r = sext i32 %i.e to i64
  %wide.trip.count = zext nneg i32 %i.b to i64
  %invariant.gep = getelementptr [32 x i8], ptr %i.g, i64 %i.r
  br label %bb.c

bb.b:                                             ; preds = %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !0

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.sroa.0.075 = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0.2, %bb.b ] ; 3 uses
  %.sroa.5.074 = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.5.2, %bb.b ] ; 3 uses
  %.04273 = phi float [ -1.000000e-01, %.lr.ph ], [ %.2, %bb.b ] ; 4 uses
  %.04472 = phi float [ %i.c, %.lr.ph ], [ %.246, %bb.b ] ; 5 uses
  %gep = getelementptr [32 x i8], ptr %invariant.gep, i64 %indvars.iv ; 5 uses
  %i.s = load float, ptr %gep, align 16, !tbaa !62 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %gep, i64 4
  %i.u = load float, ptr %i.t, align 4, !tbaa !62 ; 2 uses
  %i.v = fmul float %i.j, %i.u
  %i.w = tail call float @llvm.fmuladd.f32(float %i.h, float %i.s, float %i.v)
  %i.x = getelementptr inbounds nuw i8, ptr %gep, i64 8 ; 2 uses
  %i.y = load float, ptr %i.x, align 8, !tbaa !62 ; 2 uses
  %i.z = tail call noundef float @llvm.fmuladd.f32(float %i.l, float %i.y, float %i.w)
  %i.aa = getelementptr inbounds nuw i8, ptr %gep, i64 12
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !62 ; 2 uses
  %i.ac = fadd float %i.z, %i.ab                  ; 5 uses
  %i.ad = fmul float %i.u, %i.o
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.m, float %i.s, float %i.ad)
  %i.af = tail call noundef float @llvm.fmuladd.f32(float %i.q, float %i.y, float %i.ae)
  %i.ag = fadd float %i.ab, %i.af                 ; 4 uses
  %i.ah = fcmp olt float %i.ac, 0.000000e+00
  br i1 %i.ah, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ai = fcmp ult float %i.ag, 0.000000e+00
  br i1 %i.ai, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = fsub float %i.ac, %i.ag
  %i.ak = fdiv float %i.ac, %i.aj                 ; 2 uses
  %i.al = fcmp ogt float %.04472, %i.ak
  %.145 = select i1 %i.al, float %i.ak, float %.04472
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.am = fcmp olt float %i.ag, 0.000000e+00
  br i1 %i.am, label %bb.g, label %.thread63

bb.g:                                             ; preds = %bb.f
  %i.an = fsub float %i.ac, %i.ag
  %i.ao = fdiv float %i.ac, %i.an                 ; 2 uses
  %i.ap = fcmp ugt float %.04273, %i.ao
  br i1 %i.ap, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.copyload = load <2 x float>, ptr %gep, align 16
  %.sroa.5.0.copyload = load <2 x float>, ptr %i.x, align 8, !tbaa !62
  %.sroa.5.12.vec.insert = insertelement <2 x float> %.sroa.5.0.copyload, float 0.000000e+00, i64 1
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.d, %bb.h, %bb.g
  %.246 = phi float [ %.145, %bb.e ], [ %.04472, %bb.d ], [ %.04472, %bb.h ], [ %.04472, %bb.g ] ; 2 uses
  %.2 = phi float [ %.04273, %bb.e ], [ %.04273, %bb.d ], [ %i.ao, %bb.h ], [ %.04273, %bb.g ] ; 4 uses
  %.sroa.5.2 = phi <2 x float> [ %.sroa.5.074, %bb.e ], [ %.sroa.5.074, %bb.d ], [ %.sroa.5.12.vec.insert, %bb.h ], [ %.sroa.5.074, %bb.g ] ; 2 uses
  %.sroa.0.2 = phi <2 x float> [ %.sroa.0.075, %bb.e ], [ %.sroa.0.075, %bb.d ], [ %.sroa.0.0.copyload, %bb.h ], [ %.sroa.0.075, %bb.g ] ; 2 uses
  %i.aq = fcmp ugt float %.246, %.2
  br i1 %i.aq, label %bb.b, label %.thread63

._crit_edge:                                      ; preds = %bb.b
  %i.ar = fcmp olt float %.2, 0.000000e+00
  br i1 %i.ar, label %.thread63, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  store float %.2, ptr %4, align 4, !tbaa !64
  store <2 x float> %.sroa.0.2, ptr %5, align 16
  %.sroa.5.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x float> %.sroa.5.2, ptr %.sroa.5.0..sroa_idx24, align 8, !tbaa !62
  br label %.thread63

.thread63:                                        ; preds = %bb.f, %bb.i, %bb.a, %._crit_edge, %bb.j
  %.351 = phi i1 [ false, %._crit_edge ], [ true, %bb.j ], [ false, %bb.a ], [ false, %bb.i ], [ false, %bb.f ]
  ret i1 %.351
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN12b3GpuRaycast12castRaysHostERK20b3AlignedObjectArrayI9b3RayInfoERS0_I8b3RayHitEiPK15b3RigidBodyDataiPK12b3CollidablePK28b3GpuNarrowPhaseInternalData(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7) local_unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @b3EnterProfileZone(ptr noundef nonnull @.str.5)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !77
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph163, label %._crit_edge164

.lr.ph163:                                        ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.f = icmp sgt i32 %3, 0
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 264
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %bb.c

._crit_edge164:                                   ; preds = %._crit_edge.thread, %bb.a
  invoke void @b3LeaveProfileZone()
          to label %_ZN13b3ProfileZoneD2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %._crit_edge164
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #21
  unreachable

_ZN13b3ProfileZoneD2Ev.exit:                      ; preds = %._crit_edge164
  ret void

bb.c:                                             ; preds = %.lr.ph163, %._crit_edge.thread
  %indvars.iv166 = phi i64 [ 0, %.lr.ph163 ], [ %indvars.iv.next167, %._crit_edge.thread ] ; 8 uses
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !78
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv166 ; 6 uses
  %.sroa.6129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.sroa.6129.0.copyload = load float, ptr %.sroa.6129.0..sroa_idx, align 4 ; 2 uses
  %.sroa.8131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.8131.0.copyload = load float, ptr %.sroa.8131.0..sroa_idx, align 8 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.0122.0.copyload = load float, ptr %i.m, align 16 ; 4 uses
  %.sroa.6124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %.sroa.6124.0.copyload = load float, ptr %.sroa.6124.0..sroa_idx, align 4 ; 4 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.8.0.copyload = load float, ptr %.sroa.8.0..sroa_idx, align 8 ; 4 uses
  br i1 %i.f, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.c
  %i.n = load <2 x float>, ptr %i.l, align 16     ; 3 uses
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !82
  %i.p = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %indvars.iv166
  %i.q = load float, ptr %i.p, align 16, !tbaa !106
  %i.r = extractelement <2 x float> %i.n, i64 0   ; 2 uses
  %i.s = fsub float %.sroa.0122.0.copyload, %i.r  ; 3 uses
  %i.t = fsub float %.sroa.6124.0.copyload, %.sroa.6129.0.copyload ; 3 uses
  %i.u = fsub float %.sroa.8.0.copyload, %.sroa.8131.0.copyload ; 3 uses
  %i.v = fmul float %i.t, %i.t
  %i.w = tail call float @llvm.fmuladd.f32(float %i.s, float %i.s, float %i.v)
  %i.x = tail call float @llvm.fmuladd.f32(float %i.u, float %i.u, float %i.w) ; 2 uses
  %i.y = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.z = shufflevector <2 x float> %i.n, <2 x float> <float 1.000000e+00, float poison>, <4 x i32> <i32 2, i32 1, i32 1, i32 1>
  br label %bb.d

._crit_edge:                                      ; preds = %_Z9rayConvexRK9b3Vector3S1_RK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayI9b3GpuFaceERfRS_.exit
  %i.aa = icmp sgt i32 %.4, -1
  br i1 %i.aa, label %bb.u, label %._crit_edge.thread

bb.d:                                             ; preds = %.lr.ph, %_Z9rayConvexRK9b3Vector3S1_RK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayI9b3GpuFaceERfRS_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_Z9rayConvexRK9b3Vector3S1_RK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayI9b3GpuFaceERfRS_.exit ] ; 4 uses
  %.056154 = phi i32 [ -1, %.lr.ph ], [ %.4, %_Z9rayConvexRK9b3Vector3S1_RK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayI9b3GpuFaceERfRS_.exit ] ; 5 uses
  %.sroa.0116.0153 = phi <2 x float> [ undef, %.lr.ph ], [ %.sroa.0116.2, %_Z9rayConvexRK9b3Vector3S1_RK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayI9b3GpuFaceERfRS_.exit ] ; 5 uses
  %.sroa.6117.0152 = phi <2 x float> [ undef, %.lr.ph ], [ %.sroa.6117.2, %_Z9rayConvexRK9b3Vector3S1_RK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayI9b3GpuFaceERfRS_.exit ] ; 5 uses
  %.0135151 = phi float [ %i.q, %.lr.ph ], [ %.2136, %_Z9rayConvexRK9b3Vector3S1_RK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayI9b3GpuFaceERfRS_.exit ] ; 6 uses
  %i.ab = getelementptr inbounds nuw [80 x i8], ptr %4, i64 %indvars.iv ; 12 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %i.ad = load i32, ptr %i.ac, align 16, !tbaa !110
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [16 x i8], ptr %6, i64 %i.ae ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !112
  switch i32 %i.ah, label %bb.p [
    i32 7, label %bb.e
    i32 3, label %._Z16sphere_intersectRK9b3Vector3fS1_S1_Rf.exit.thread_crit_edge
  ]

._Z16sphere_intersectRK9b3Vector3fS1_S1_Rf.exit.thread_crit_edge: ; preds = %bb.d
  %.sroa.30.48.copyload.pre = load float, ptr %i.ab, align 16
  br label %_Z16sphere_intersectRK9b3Vector3fS1_S1_Rf.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !62 ; 2 uses
  %i.ak = load float, ptr %i.ab, align 16, !tbaa !62 ; 2 uses
  %i.al = fsub float %i.r, %i.ak                  ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 4 ; 2 uses
  %i.an = load float, ptr %i.am, align 4, !tbaa !62
  %i.ao = fsub float %.sroa.6129.0.copyload, %i.an ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.aq = load float, ptr %i.ap, align 8, !tbaa !62
  %i.ar = fsub float %.sroa.8131.0.copyload, %i.aq ; 3 uses
  %i.as = fmul float %i.t, %i.ao
  %i.at = tail call float @llvm.fmuladd.f32(float %i.al, float %i.s, float %i.as)
  %i.au = tail call noundef float @llvm.fmuladd.f32(float %i.ar, float %i.u, float %i.at) ; 3 uses
  %i.av = fmul float %i.ao, %i.ao
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.al, float %i.al, float %i.av)
  %i.ax = tail call noundef float @llvm.fmuladd.f32(float %i.ar, float %i.ar, float %i.aw)
  %i.ay = fneg float %i.aj
  %i.az = tail call float @llvm.fmuladd.f32(float %i.ay, float %i.aj, float %i.ax)
  %i.ba = fneg float %i.az
  %i.bb = fmul float %i.x, %i.ba
  %i.bc = tail call float @llvm.fmuladd.f32(float %i.au, float %i.au, float %i.bb) ; 2 uses
  %i.bd = fcmp ogt float %i.bc, 0.000000e+00
  br i1 %i.bd, label %bb.f, label %_Z16sphere_intersectRK9b3Vector3fS1_S1_Rf.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.be = fneg float %i.au
  %i.bf = tail call noundef float @sqrtf(float noundef %i.bc) #19
  %i.bg = fsub float %i.be, %i.bf
  %i.bh = fdiv float %i.bg, %i.x                  ; 6 uses
  %i.bi = fcmp oge float %i.bh, 0.000000e+00
  %i.bj = fcmp olt float %i.bh, %.0135151
  %or.cond = select i1 %i.bi, i1 %i.bj, i1 false
  %.sroa.30.48.copyload.pre169 = load float, ptr %i.ab, align 16 ; 3 uses
  br i1 %or.cond, label %bb.g, label %_Z16sphere_intersectRK9b3Vector3fS1_S1_Rf.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.bk = load ptr, ptr %i.d, align 8, !tbaa !78
  %i.bl = getelementptr inbounds nuw [32 x i8], ptr %i.bk, i64 %indvars.iv166 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bo = load float, ptr %i.bn, align 8, !tbaa !62
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bq = load float, ptr %i.bp, align 8, !tbaa !62
  %i.br = fmul float %i.bh, %i.bq
  %i.bs = load float, ptr %i.am, align 4, !tbaa !62
  %i.bt = load float, ptr %i.ap, align 8, !tbaa !62
  %i.bu = fsub float 1.000000e+00, %i.bh          ; 2 uses
  %i.bv = load <2 x float>, ptr %i.bl, align 16, !tbaa !62
  %i.bw = load <2 x float>, ptr %i.bm, align 16, !tbaa !62
  %i.bx = insertelement <2 x float> poison, float %i.bh, i64 0
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bz = fmul <2 x float> %i.by, %i.bw
  %i.ca = insertelement <2 x float> poison, float %i.bu, i64 0
  %i.cb = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cb, <2 x float> %i.bv, <2 x float> %i.bz)
  %i.cd = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.bo, float %i.br)
  %i.ce = insertelement <2 x float> poison, float %.sroa.30.48.copyload.pre169, i64 0
  %i.cf = insertelement <2 x float> %i.ce, float %i.bs, i64 1
  %i.cg = fsub <2 x float> %i.cc, %i.cf           ; 4 uses
  %i.ch = fsub float %i.cd, %i.bt                 ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.cg, %i.cg
  %i.ci = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.cj = extractelement <2 x float> %i.cg, i64 0 ; 2 uses
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.cj, float %i.cj, float %i.ci)
  %i.cl = tail call noundef float @llvm.fmuladd.f32(float %i.ch, float %i.ch, float %i.ck)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.cl)
  %i.cm = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.cn = insertelement <2 x float> poison, float %i.cm, i64 0
  %i.co = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cp = fmul <2 x float> %i.cg, %i.co
  %i.cq = fmul float %i.ch, %i.cm
  %.sroa.9112.8.vec.insert = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cq, i64 0
  %i.cr = trunc nuw nsw i64 %indvars.iv to i32
  br label %_Z16sphere_intersectRK9b3Vector3fS1_S1_Rf.exit.thread

_Z16sphere_intersectRK9b3Vector3fS1_S1_Rf.exit.thread: ; preds = %._Z16sphere_intersectRK9b3Vector3fS1_S1_Rf.exit.thread_crit_edge, %bb.e, %bb.f, %bb.g
  %.sroa.30.48.copyload = phi float [ %.sroa.30.48.copyload.pre169, %bb.g ], [ %.sroa.30.48.copyload.pre, %._Z16sphere_intersectRK9b3Vector3fS1_S1_Rf.exit.thread_crit_edge ], [ %i.ak, %bb.e ], [ %.sroa.30.48.copyload.pre169, %bb.f ]
  %.1 = phi float [ %i.bh, %bb.g ], [ %.0135151, %._Z16sphere_intersectRK9b3Vector3fS1_S1_Rf.exit.thread_crit_edge ], [ %.0135151, %bb.e ], [ %.0135151, %bb.f ] ; 2 uses
  %.sroa.6117.1 = phi <2 x float> [ %.sroa.9112.8.vec.insert, %bb.g ], [ %.sroa.6117.0152, %._Z16sphere_intersectRK9b3Vector3fS1_S1_Rf.exit.thread_crit_edge ], [ %.sroa.6117.0152, %bb.e ], [ %.sroa.6117.0152, %bb.f ]
  %.sroa.0116.1 = phi <2 x float> [ %i.cp, %bb.g ], [ %.sroa.0116.0153, %._Z16sphere_intersectRK9b3Vector3fS1_S1_Rf.exit.thread_crit_edge ], [ %.sroa.0116.0153, %bb.e ], [ %.sroa.0116.0153, %bb.f ]
  %.2 = phi i32 [ %i.cr, %bb.g ], [ %.056154, %._Z16sphere_intersectRK9b3Vector3fS1_S1_Rf.exit.thread_crit_edge ], [ %.056154, %bb.e ], [ %.056154, %bb.f ]
  %.sroa.32107.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %.sroa.32107.48.copyload = load float, ptr %.sroa.32107.48..sroa_idx, align 4
  %.sroa.33108.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.33108.48.copyload = load float, ptr %.sroa.33108.48..sroa_idx, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ct = load float, ptr %i.cs, align 16, !tbaa !62 ; 6 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ab, i64 20
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !62 ; 5 uses
  %8 = fmul float %i.cv, %i.cv
  %9 = tail call float @llvm.fmuladd.f32(float %i.ct, float %i.ct, float %8)
  %10 = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.cw = load float, ptr %10, align 8, !tbaa !62 ; 4 uses
  %i.cx = tail call float @llvm.fmuladd.f32(float %i.cw, float %i.cw, float %9)
  %11 = getelementptr inbounds nuw i8, ptr %i.ab, i64 28
  %12 = load float, ptr %11, align 4, !tbaa !62   ; 5 uses
  %i.cy = tail call noundef float @llvm.fmuladd.f32(float %12, float %12, float %i.cx)
  %i.cz = fdiv float 2.000000e+00, %i.cy          ; 3 uses
  %i.da = fmul float %i.ct, %i.cz                 ; 2 uses
  %i.db = fmul float %i.cv, %i.cz                 ; 3 uses
  %i.dc = fmul float %i.cw, %i.cz                 ; 4 uses
  %i.dd = fmul float %12, %i.da                   ; 2 uses
  %i.de = fmul float %i.ct, %i.da                 ; 2 uses
  %i.df = fmul float %i.ct, %i.db                 ; 2 uses
  %i.dg = fmul float %i.ct, %i.dc                 ; 2 uses
  %i.dh = fmul float %i.cv, %i.db                 ; 2 uses
  %i.di = fmul float %i.cv, %i.dc                 ; 2 uses
  %i.dj = fmul float %i.cw, %i.dc                 ; 2 uses
  %i.dk = fadd float %i.de, %i.dj
  %i.dl = fsub float 1.000000e+00, %i.dk          ; 3 uses
  %i.dm = fsub float %i.di, %i.dd                 ; 3 uses
  %i.dn = fadd float %i.di, %i.dd                 ; 3 uses
  %13 = fneg float %.sroa.30.48.copyload          ; 3 uses
  %14 = fneg float %.sroa.32107.48.copyload       ; 3 uses
  %15 = fneg float %.sroa.33108.48.copyload       ; 3 uses
  %i.do = fmul float %i.dl, %14
  %i.dp = fmul float %i.dm, %14
  %i.dq = fmul float %12, %i.db                   ; 2 uses
  %i.dr = fmul float %12, %i.dc                   ; 2 uses
  %i.ds = fadd float %i.dh, %i.dj
  %i.dt = fsub float 1.000000e+00, %i.ds          ; 3 uses
  %i.du = fsub float %i.df, %i.dr                 ; 3 uses
  %i.dv = fadd float %i.dg, %i.dq                 ; 3 uses
  %i.dw = fadd float %i.df, %i.dr                 ; 3 uses
  %i.dx = fsub float %i.dg, %i.dq                 ; 3 uses
  %i.dy = fadd float %i.de, %i.dh
  %i.dz = fsub float 1.000000e+00, %i.dy          ; 3 uses
  %i.ea = fmul float %i.dw, %14
  %i.eb = tail call float @llvm.fmuladd.f32(float %i.dt, float %13, float %i.ea)
  %i.ec = tail call noundef float @llvm.fmuladd.f32(float %i.dx, float %15, float %i.eb) ; 2 uses
  %i.ed = tail call float @llvm.fmuladd.f32(float %i.du, float %13, float %i.do)
  %i.ee = tail call noundef float @llvm.fmuladd.f32(float %i.dn, float %15, float %i.ed) ; 2 uses
  %i.ef = tail call float @llvm.fmuladd.f32(float %i.dv, float %13, float %i.dp)
  %i.eg = insertelement <4 x float> poison, float %i.ef, i64 0
  %i.eh = insertelement <4 x float> %i.eg, float %i.dw, i64 1
  %i.ei = insertelement <4 x float> %i.eh, float %i.dl, i64 2
  %i.ej = insertelement <4 x float> %i.ei, float %i.dm, i64 3
  %i.ek = fmul <4 x float> %i.z, %i.ej
  %i.el = insertelement <4 x float> poison, float %i.dz, i64 0
  %i.em = insertelement <4 x float> %i.el, float %i.dt, i64 1
  %i.en = insertelement <4 x float> %i.em, float %i.du, i64 2
  %i.eo = insertelement <4 x float> %i.en, float %i.dv, i64 3
  %16 = insertelement <2 x float> %i.y, float %15, i64 0
  %17 = shufflevector <2 x float> %16, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %18 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eo, <4 x float> %17, <4 x float> %i.ek) ; 4 uses
  %19 = extractelement <4 x float> %18, i64 1
  %20 = tail call noundef float @llvm.fmuladd.f32(float %.sroa.8131.0.copyload, float %i.dx, float %19)
  %21 = extractelement <4 x float> %18, i64 2
  %22 = tail call noundef float @llvm.fmuladd.f32(float %.sroa.8131.0.copyload, float %i.dn, float %21)
  %i.ep = extractelement <4 x float> %18, i64 3
  %23 = tail call noundef float @llvm.fmuladd.f32(float %.sroa.8131.0.copyload, float %i.dz, float %i.ep)
  %24 = fadd float %20, %i.ec
  %i.eq = fadd float %22, %i.ee
  %i.er = extractelement <4 x float> %18, i64 0   ; 2 uses
  %25 = fadd float %23, %i.er
  %26 = fmul float %.sroa.6124.0.copyload, %i.dw
  %27 = tail call float @llvm.fmuladd.f32(float %.sroa.0122.0.copyload, float %i.dt, float %26)
  %i.es = tail call noundef float @llvm.fmuladd.f32(float %.sroa.8.0.copyload, float %i.dx, float %27)
  %i.et = fmul float %.sroa.6124.0.copyload, %i.dl
  %i.eu = tail call float @llvm.fmuladd.f32(float %.sroa.0122.0.copyload, float %i.du, float %i.et)
  %i.ev = tail call noundef float @llvm.fmuladd.f32(float %.sroa.8.0.copyload, float %i.dn, float %i.eu)
  %i.ew = fmul float %.sroa.6124.0.copyload, %i.dm
  %i.ex = tail call float @llvm.fmuladd.f32(float %.sroa.0122.0.copyload, float %i.dv, float %i.ew)
  %i.ey = tail call noundef float @llvm.fmuladd.f32(float %.sroa.8.0.copyload, float %i.dz, float %i.ex)
  %i.ez = fadd float %i.es, %i.ec
  %i.fa = fadd float %i.ev, %i.ee
  %i.fb = fadd float %i.ey, %i.er
  %i.fc = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !62
  %i.fe = load ptr, ptr %i.g, align 8, !tbaa !113
  %i.ff = sext i32 %i.fd to i64
  %i.fg = getelementptr inbounds [96 x i8], ptr %i.fe, i64 %i.ff ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 72
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !67 ; 2 uses
  %.not71.i = icmp sgt i32 %i.fi, 0
  br i1 %.not71.i, label %.lr.ph.i, label %_Z9rayConvexRK9b3Vector3S1_RK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayI9b3GpuFaceERfRS_.exit.thread

.lr.ph.i:                                         ; preds = %_Z16sphere_intersectRK9b3Vector3fS1_S1_Rf.exit.thread
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 68
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !68
  %i.fl = load ptr, ptr %i.h, align 8, !tbaa !72
  %i.fm = sext i32 %i.fk to i64
  %wide.trip.count.i = zext nneg i32 %i.fi to i64
  %invariant.gep.i = getelementptr [32 x i8], ptr %i.fl, i64 %i.fm
  br label %bb.i

bb.h:                                             ; preds = %bb.o
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.i, !llvm.loop !0

bb.i:                                             ; preds = %bb.h, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.h ] ; 2 uses
  %.sroa.0.075.i = phi <2 x float> [ zeroinitializer, %.lr.ph.i ], [ %.sroa.0.2.i, %bb.h ] ; 3 uses
  %.sroa.5.074.i = phi <2 x float> [ zeroinitializer, %.lr.ph.i ], [ %.sroa.5.2.i, %bb.h ] ; 3 uses
  %.04273.i = phi float [ -1.000000e-01, %.lr.ph.i ], [ %.2.i, %bb.h ] ; 4 uses
  %.04472.i = phi float [ %.1, %.lr.ph.i ], [ %.246.i, %bb.h ] ; 5 uses
  %gep.i = getelementptr [32 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i ; 5 uses
  %i.fn = load float, ptr %gep.i, align 16, !tbaa !62 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %gep.i, i64 4
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !62 ; 2 uses
  %i.fq = fmul float %i.eq, %i.fp
  %i.fr = tail call float @llvm.fmuladd.f32(float %24, float %i.fn, float %i.fq)
  %i.fs = getelementptr inbounds nuw i8, ptr %gep.i, i64 8 ; 2 uses
  %i.ft = load float, ptr %i.fs, align 8, !tbaa !62 ; 2 uses
  %i.fu = tail call noundef float @llvm.fmuladd.f32(float %25, float %i.ft, float %i.fr)
  %i.fv = getelementptr inbounds nuw i8, ptr %gep.i, i64 12
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !62 ; 2 uses
  %i.fx = fadd float %i.fw, %i.fu                 ; 5 uses
  %i.fy = fmul float %i.fa, %i.fp
  %i.fz = tail call float @llvm.fmuladd.f32(float %i.ez, float %i.fn, float %i.fy)
  %i.ga = tail call noundef float @llvm.fmuladd.f32(float %i.fb, float %i.ft, float %i.fz)
  %i.gb = fadd float %i.fw, %i.ga                 ; 4 uses
  %i.gc = fcmp olt float %i.fx, 0.000000e+00
  br i1 %i.gc, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.gd = fcmp ult float %i.gb, 0.000000e+00
  br i1 %i.gd, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ge = fsub float %i.fx, %i.gb
  %i.gf = fdiv float %i.fx, %i.ge                 ; 2 uses
  %i.gg = fcmp ogt float %.04472.i, %i.gf
  %.145.i = select i1 %i.gg, float %i.gf, float %.04472.i
  br label %bb.o

bb.l:                                             ; preds = %bb.i
  %i.gh = fcmp olt float %i.gb, 0.000000e+00
  br i1 %i.gh, label %bb.m, label %_Z9rayConvexRK9b3Vector3S1_RK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayI9b3GpuFaceERfRS_.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.gi = fsub float %i.fx, %i.gb
  %i.gj = fdiv float %i.fx, %i.gi                 ; 2 uses
  %i.gk = fcmp ugt float %.04273.i, %i.gj
  br i1 %i.gk, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %gep.i, align 16
  %.sroa.5.0.copyload.i = load <2 x float>, ptr %i.fs, align 8, !tbaa !62
  %.sroa.5.12.vec.insert.i = insertelement <2 x float> %.sroa.5.0.copyload.i, float 0.000000e+00, i64 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.k, %bb.j
  %.246.i = phi float [ %.145.i, %bb.k ], [ %.04472.i, %bb.j ], [ %.04472.i, %bb.n ], [ %.04472.i, %bb.m ] ; 2 uses
  %.2.i = phi float [ %.04273.i, %bb.k ], [ %.04273.i, %bb.j ], [ %i.gj, %bb.n ], [ %.04273.i, %bb.m ] ; 4 uses
  %.sroa.5.2.i = phi <2 x float> [ %.sroa.5.074.i, %bb.k ], [ %.sroa.5.074.i, %bb.j ], [ %.sroa.5.12.vec.insert.i, %bb.n ], [ %.sroa.5.074.i, %bb.m ] ; 2 uses
  %.sroa.0.2.i = phi <2 x float> [ %.sroa.0.075.i, %bb.k ], [ %.sroa.0.075.i, %bb.j ], [ %.sroa.0.0.copyload.i, %bb.n ], [ %.sroa.0.075.i, %bb.m ] ; 2 uses
  %i.gl = fcmp ugt float %.246.i, %.2.i
  br i1 %i.gl, label %bb.h, label %_Z9rayConvexRK9b3Vector3S1_RK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayI9b3GpuFaceERfRS_.exit.thread

._crit_edge.i:                                    ; preds = %bb.h
  %i.gm = fcmp olt float %.2.i, 0.000000e+00
  %i.gn = trunc nuw nsw i64 %indvars.iv to i32
  br i1 %i.gm, label %_Z9rayConvexRK9b3Vector3S1_RK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayI9b3GpuFaceERfRS_.exit.thread, label %_Z9rayConvexRK9b3Vector3S1_RK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayI9b3GpuFaceERfRS_.exit

_Z9rayConvexRK9b3Vector3S1_RK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayI9b3GpuFaceERfRS_.exit.thread: ; preds = %bb.o, %bb.l, %._crit_edge.i, %_Z16sphere_intersectRK9b3Vector3fS1_S1_Rf.exit.thread
  br label %_Z9rayConvexRK9b3Vector3S1_RK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayI9b3GpuFaceERfRS_.exit

bb.p:                                             ; preds = %bb.d
  %.b = load i1, ptr @_ZZN12b3GpuRaycast12castRaysHostERK20b3AlignedObjectArrayI9b3RayInfoERS0_I8b3RayHitEiPK15b3RigidBodyDataiPK12b3CollidablePK28b3GpuNarrowPhaseInternalDataE4once, align 1
  br i1 %.b, label %_Z9rayConvexRK9b3Vector3S1_RK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayI9b3GpuFaceERfRS_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i1 true, ptr @_ZZN12b3GpuRaycast12castRaysHostERK20b3AlignedObjectArrayI9b3RayInfoERS0_I8b3RayHitEiPK15b3RigidBodyDataiPK12b3CollidablePK28b3GpuNarrowPhaseInternalDataE4once, align 1
  invoke void (ptr, ...) @b3OutputWarningMessageVarArgsInternal(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 234)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  invoke void (ptr, ...) @b3OutputWarningMessageVarArgsInternal(ptr noundef nonnull @.str.8)
          to label %_Z9rayConvexRK9b3Vector3S1_RK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayI9b3GpuFaceERfRS_.exit unwind label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.go = landingpad { ptr, i32 }
          cleanup
  invoke void @b3LeaveProfileZone()
          to label %_ZN13b3ProfileZoneD2Ev.exit82 unwind label %bb.t

_Z9rayConvexRK9b3Vector3S1_RK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayI9b3GpuFaceERfRS_.exit: ; preds = %_Z9rayConvexRK9b3Vector3S1_RK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayI9b3GpuFaceERfRS_.exit.thread, %._crit_edge.i, %bb.p, %bb.r
  %.2136 = phi float [ %.0135151, %bb.p ], [ %.0135151, %bb.r ], [ %.1, %_Z9rayConvexRK9b3Vector3S1_RK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayI9b3GpuFaceERfRS_.exit.thread ], [ %.2.i, %._crit_edge.i ] ; 6 uses
  %.sroa.6117.2 = phi <2 x float> [ %.sroa.6117.0152, %bb.p ], [ %.sroa.6117.0152, %bb.r ], [ %.sroa.6117.1, %_Z9rayConvexRK9b3Vector3S1_RK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayI9b3GpuFaceERfRS_.exit.thread ], [ %.sroa.5.2.i, %._crit_edge.i ] ; 2 uses
  %.sroa.0116.2 = phi <2 x float> [ %.sroa.0116.0153, %bb.p ], [ %.sroa.0116.0153, %bb.r ], [ %.sroa.0116.1, %_Z9rayConvexRK9b3Vector3S1_RK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayI9b3GpuFaceERfRS_.exit.thread ], [ %.sroa.0.2.i, %._crit_edge.i ] ; 2 uses
  %.4 = phi i32 [ %.056154, %bb.p ], [ %.056154, %bb.r ], [ %.2, %_Z9rayConvexRK9b3Vector3S1_RK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayI9b3GpuFaceERfRS_.exit.thread ], [ %i.gn, %._crit_edge.i ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !103

bb.t:                                             ; preds = %bb.s
  %i.gp = landingpad { ptr, i32 }
          catch ptr null
  %i.gq = extractvalue { ptr, i32 } %i.gp, 0
  tail call void @__clang_call_terminate(ptr %i.gq) #21
  unreachable

_ZN13b3ProfileZoneD2Ev.exit82:                    ; preds = %bb.s
  resume { ptr, i32 } %i.go

bb.u:                                             ; preds = %._crit_edge
  %i.gr = load ptr, ptr %i.e, align 8, !tbaa !82
  %i.gs = getelementptr inbounds nuw [48 x i8], ptr %i.gr, i64 %indvars.iv166 ; 4 uses
  store float %.2136, ptr %i.gs, align 16, !tbaa !106
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %i.gu = load ptr, ptr %i.d, align 8, !tbaa !78
  %i.gv = getelementptr inbounds nuw [32 x i8], ptr %i.gu, i64 %indvars.iv166 ; 6 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %i.gx = fsub float 1.000000e+00, %.2136         ; 3 uses
  %i.gy = load float, ptr %i.gv, align 16, !tbaa !62
  %i.gz = load float, ptr %i.gw, align 16, !tbaa !62
  %i.ha = fmul float %.2136, %i.gz
  %i.hb = tail call float @llvm.fmuladd.f32(float %i.gx, float %i.gy, float %i.ha)
  store float %i.hb, ptr %i.gt, align 16, !tbaa !62
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gv, i64 4
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !62
  %i.he = getelementptr inbounds nuw i8, ptr %i.gv, i64 20
  %i.hf = load float, ptr %i.he, align 4, !tbaa !62
  %i.hg = fmul float %.2136, %i.hf
  %i.hh = tail call float @llvm.fmuladd.f32(float %i.gx, float %i.hd, float %i.hg)
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gs, i64 20
  store float %i.hh, ptr %i.hi, align 4, !tbaa !62
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.hk = load float, ptr %i.hj, align 8, !tbaa !62
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gv, i64 24
  %i.hm = load float, ptr %i.hl, align 8, !tbaa !62
  %i.hn = fmul float %.2136, %i.hm
  %i.ho = tail call float @llvm.fmuladd.f32(float %i.gx, float %i.hk, float %i.hn)
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gs, i64 24
  store float %i.ho, ptr %i.hp, align 8, !tbaa !62
  %i.hq = load ptr, ptr %i.e, align 8, !tbaa !82
  %i.hr = getelementptr inbounds nuw [48 x i8], ptr %i.hq, i64 %indvars.iv166 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 32
  store <2 x float> %.sroa.0116.2, ptr %i.hs, align 16
  %.sroa.6117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hr, i64 40
  store <2 x float> %.sroa.6117.2, ptr %.sroa.6117.0..sroa_idx, align 8, !tbaa !62
  %i.ht = load ptr, ptr %i.e, align 8, !tbaa !82
  %i.hu = getelementptr inbounds nuw [48 x i8], ptr %i.ht, i64 %indvars.iv166
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 4
  store i32 %.4, ptr %i.hv, align 4, !tbaa !114
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.c, %bb.u, %._crit_edge
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 2 uses
  %i.hw = load i32, ptr %i.a, align 4, !tbaa !77
  %i.hx = sext i32 %i.hw to i64
  %i.hy = icmp slt i64 %indvars.iv.next167, %i.hx
  br i1 %i.hy, label %bb.c, label %._crit_edge164, !llvm.loop !104
}

declare void @b3OutputWarningMessageVarArgsInternal(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN12b3GpuRaycast8castRaysERK20b3AlignedObjectArrayI9b3RayInfoERS0_I8b3RayHitEiPK15b3RigidBodyDataiPK12b3CollidablePK28b3GpuNarrowPhaseInternalDataP24b3GpuBroadphaseInterface(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(25) %2, i32 noundef %3, ptr nofree noundef readnone captures(none) %4, i32 noundef %5, ptr nofree noundef readnone captures(none) %6, ptr nofree noundef readonly captures(none) %7, ptr noundef %8) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [3 x i64], align 16               ; 6 uses
  %i.b = alloca [3 x i64], align 16               ; 6 uses
  %i.c = alloca [3 x i64], align 16               ; 6 uses
  %i.d = alloca [3 x i64], align 16               ; 6 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %i.f = alloca i32, align 4                      ; 13 uses
  %9 = alloca [3 x %struct.b3BufferInfoCL], align 16 ; 10 uses
  %10 = alloca %class.b3LauncherCL, align 8       ; 19 uses
  %11 = alloca [9 x %struct.b3BufferInfoCL], align 16 ; 22 uses
  %12 = alloca %class.b3LauncherCL, align 8       ; 19 uses
  tail call void @b3EnterProfileZone(ptr noundef nonnull @.str.9)
  invoke void @b3EnterProfileZone(ptr noundef nonnull @.str.10)
          to label %_ZN13b3ProfileZoneC2EPKc.exit unwind label %bb.q

_ZN13b3ProfileZoneC2EPKc.exit:                    ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 20 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !39
  invoke void @_ZN13b3OpenCLArrayI9b3RayInfoE12copyFromHostERK20b3AlignedObjectArrayIS0_Eb(ptr noundef nonnull align 8 dereferenceable(50) %i.j, ptr noundef nonnull align 8 dereferenceable(25) %1, i1 noundef zeroext true)
          to label %bb.b unwind label %bb.r

bb.b:                                             ; preds = %_ZN13b3ProfileZoneC2EPKc.exit
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !44
  invoke void @_ZN13b3OpenCLArrayI8b3RayHitE12copyFromHostERK20b3AlignedObjectArrayIS0_Eb(ptr noundef nonnull align 8 dereferenceable(50) %i.m, ptr noundef nonnull align 8 dereferenceable(25) %2, i1 noundef zeroext true)
          to label %bb.c unwind label %bb.r

bb.c:                                             ; preds = %bb.b
  invoke void @b3LeaveProfileZone()
          to label %_ZN13b3ProfileZoneD2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #21
  unreachable

_ZN13b3ProfileZoneD2Ev.exit:                      ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !86   ; 6 uses
  store i32 %i.q, ptr %i.e, align 4, !tbaa !57
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 88
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !49
  %i.u = sext i32 %i.q to i64                     ; 2 uses
  %i.v = invoke noundef zeroext i1 @_ZN13b3OpenCLArrayIiE6resizeEmb(ptr noundef nonnull align 8 dereferenceable(50) %i.t, i64 noundef %i.u, i1 noundef zeroext true)
          to label %bb.e unwind label %bb.t       ; 0 uses

bb.e:                                             ; preds = %_ZN13b3ProfileZoneD2Ev.exit
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !15
end_hunk_0
