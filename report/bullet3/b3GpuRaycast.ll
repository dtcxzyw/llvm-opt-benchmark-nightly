inline.NumInlined: 267
inline.NumDeleted: 115
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN12b3GpuRaycastD0Ev
define dso_local void @_ZN12b3GpuRaycastD0Ev(ptr noundef nonnull align 8 dereferenceable(16) initializes((0, 8)) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN12b3GpuRaycastD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define dso_local noundef zeroext i1 @_Z16sphere_intersectRK9b3Vector3fS1_S1_Rf(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %0, float noundef %1, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %3, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %4) local_unnamed_addr #8 {
bb.a:
  %i.a = load float, ptr %2, align 16, !tbaa !67  ; 2 uses
  %i.b = load float, ptr %0, align 16, !tbaa !67
  %i.c = fsub float %i.a, %i.b                    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.e = load float, ptr %i.d, align 4, !tbaa !67 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load float, ptr %i.f, align 4, !tbaa !67
  %i.h = fsub float %i.e, %i.g                    ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load float, ptr %i.i, align 8, !tbaa !67 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load float, ptr %i.k, align 8, !tbaa !67
  %i.m = fsub float %i.j, %i.l                    ; 3 uses
  %i.n = load float, ptr %3, align 16, !tbaa !67
  %i.o = fsub float %i.n, %i.a                    ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.q = load float, ptr %i.p, align 4, !tbaa !67
  %i.r = fsub float %i.q, %i.e                    ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = load float, ptr %i.s, align 8, !tbaa !67
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
  store float %i.an, ptr %4, align 4, !tbaa !68
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
  %i.b = load i32, ptr %i.a, align 8, !tbaa !70   ; 2 uses
  %.not71 = icmp sgt i32 %i.b, 0
  br i1 %.not71, label %.lr.ph, label %.thread63

.lr.ph:                                           ; preds = %bb.a
  %i.c = load float, ptr %4, align 4, !tbaa !68
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.e = load i32, ptr %i.d, align 4, !tbaa !73
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !74
  %i.h = load float, ptr %0, align 16, !tbaa !67
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = load float, ptr %i.i, align 4, !tbaa !67
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load float, ptr %i.k, align 8, !tbaa !67
  %i.m = load float, ptr %1, align 16, !tbaa !67
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.o = load float, ptr %i.n, align 4, !tbaa !67
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load float, ptr %i.p, align 8, !tbaa !67
  %i.r = sext i32 %i.e to i64
  %wide.trip.count = zext nneg i32 %i.b to i64
  %invariant.gep = getelementptr [32 x i8], ptr %i.g, i64 %i.r
  br label %bb.c

bb.b:                                             ; preds = %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !78

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.04176 = phi float [ %i.c, %.lr.ph ], [ %.243, %bb.b ] ; 5 uses
  %.04575 = phi float [ -1.000000e-01, %.lr.ph ], [ %.247, %bb.b ] ; 4 uses
  %.sroa.5.074 = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.5.2, %bb.b ] ; 3 uses
  %.sroa.0.073 = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.0.2, %bb.b ] ; 3 uses
  %gep = getelementptr [32 x i8], ptr %invariant.gep, i64 %indvars.iv ; 5 uses
  %i.s = load float, ptr %gep, align 16, !tbaa !67 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %gep, i64 4
  %i.u = load float, ptr %i.t, align 4, !tbaa !67 ; 2 uses
  %i.v = fmul float %i.j, %i.u
  %i.w = tail call float @llvm.fmuladd.f32(float %i.h, float %i.s, float %i.v)
  %i.x = getelementptr inbounds nuw i8, ptr %gep, i64 8 ; 2 uses
  %i.y = load float, ptr %i.x, align 8, !tbaa !67 ; 2 uses
  %i.z = tail call noundef float @llvm.fmuladd.f32(float %i.l, float %i.y, float %i.w)
  %i.aa = getelementptr inbounds nuw i8, ptr %gep, i64 12
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !67 ; 2 uses
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
  %i.al = fcmp ogt float %.04176, %i.ak
  %.142 = select i1 %i.al, float %i.ak, float %.04176
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.am = fcmp olt float %i.ag, 0.000000e+00
  br i1 %i.am, label %bb.g, label %.thread63

bb.g:                                             ; preds = %bb.f
  %i.an = fsub float %i.ac, %i.ag
  %i.ao = fdiv float %i.ac, %i.an                 ; 2 uses
  %i.ap = fcmp ugt float %.04575, %i.ao
  br i1 %i.ap, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.copyload = load <2 x float>, ptr %gep, align 16
  %.sroa.5.0.copyload = load <2 x float>, ptr %i.x, align 8, !tbaa !67
  %.sroa.5.12.vec.insert = insertelement <2 x float> %.sroa.5.0.copyload, float 0.000000e+00, i64 1
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.d, %bb.h, %bb.g
  %.sroa.0.2 = phi <2 x float> [ %.sroa.0.073, %bb.e ], [ %.sroa.0.073, %bb.d ], [ %.sroa.0.0.copyload, %bb.h ], [ %.sroa.0.073, %bb.g ] ; 2 uses
  %.sroa.5.2 = phi <2 x float> [ %.sroa.5.074, %bb.e ], [ %.sroa.5.074, %bb.d ], [ %.sroa.5.12.vec.insert, %bb.h ], [ %.sroa.5.074, %bb.g ] ; 2 uses
  %.247 = phi float [ %.04575, %bb.e ], [ %.04575, %bb.d ], [ %i.ao, %bb.h ], [ %.04575, %bb.g ] ; 4 uses
  %.243 = phi float [ %.142, %bb.e ], [ %.04176, %bb.d ], [ %.04176, %bb.h ], [ %.04176, %bb.g ] ; 2 uses
  %i.aq = fcmp ugt float %.243, %.247
  br i1 %i.aq, label %bb.b, label %.thread63

._crit_edge:                                      ; preds = %bb.b
  %i.ar = fcmp olt float %.247, 0.000000e+00
  br i1 %i.ar, label %.thread63, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  store float %.247, ptr %4, align 4, !tbaa !68
  store <2 x float> %.sroa.0.2, ptr %5, align 16
  %.sroa.5.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x float> %.sroa.5.2, ptr %.sroa.5.0..sroa_idx24, align 8, !tbaa !67
  br label %.thread63

.thread63:                                        ; preds = %bb.f, %bb.i, %bb.a, %._crit_edge, %bb.j
  %.3 = phi i1 [ false, %._crit_edge ], [ true, %bb.j ], [ false, %bb.a ], [ false, %bb.i ], [ false, %bb.f ]
  ret i1 %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN12b3GpuRaycast12castRaysHostERK20b3AlignedObjectArrayI9b3RayInfoERS0_I8b3RayHitEiPK15b3RigidBodyDataiPK12b3CollidablePK28b3GpuNarrowPhaseInternalData(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7) local_unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @b3EnterProfileZone(ptr noundef nonnull @.str.5)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !80
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph163, label %._crit_edge164

.lr.ph163:                                        ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.f = icmp sgt i32 %3, 0
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 264
  %wide.trip.count = zext nneg i32 %3 to i64
  br i1 %i.f, label %bb.c, label %._crit_edge164

._crit_edge164:                                   ; preds = %._crit_edge.thread, %.lr.ph163, %bb.a
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
  %indvars.iv166 = phi i64 [ %indvars.iv.next167, %._crit_edge.thread ], [ 0, %.lr.ph163 ] ; 8 uses
  %.sroa.6117.0160 = phi <2 x float> [ %.sroa.6117.3, %._crit_edge.thread ], [ undef, %.lr.ph163 ]
  %.sroa.0116.0159 = phi <2 x float> [ %.sroa.0116.3, %._crit_edge.thread ], [ undef, %.lr.ph163 ]
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !84
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv166 ; 6 uses
  %.sroa.6129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %8 = load <2 x float>, ptr %i.l, align 16       ; 3 uses
  %.sroa.6129.0.copyload = load float, ptr %.sroa.6129.0..sroa_idx, align 4 ; 2 uses
  %.sroa.8131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.8131.0.copyload = load float, ptr %.sroa.8131.0..sroa_idx, align 8 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.0122.0.copyload = load float, ptr %i.m, align 16 ; 4 uses
  %.sroa.6124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %.sroa.6124.0.copyload = load float, ptr %.sroa.6124.0..sroa_idx, align 4 ; 4 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.8.0.copyload = load float, ptr %.sroa.8.0..sroa_idx, align 8 ; 4 uses
  %9 = load ptr, ptr %i.e, align 8, !tbaa !85
  %10 = getelementptr inbounds nuw [48 x i8], ptr %9, i64 %indvars.iv166
  %.sroa.8.0.copyload.a = load float, ptr %10, align 16, !tbaa !89
  %11 = extractelement <2 x float> %8, i64 0      ; 2 uses
  %12 = fsub float %.sroa.0122.0.copyload, %11    ; 3 uses
  %13 = fsub float %.sroa.6124.0.copyload, %.sroa.6129.0.copyload ; 3 uses
  %14 = fsub float %.sroa.8.0.copyload, %.sroa.8131.0.copyload ; 3 uses
  %15 = fmul float %13, %13
  %16 = tail call float @llvm.fmuladd.f32(float %12, float %12, float %15)
  %17 = tail call float @llvm.fmuladd.f32(float %14, float %14, float %16) ; 2 uses
  %18 = shufflevector <2 x float> %8, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %19 = shufflevector <2 x float> %8, <2 x float> <float 1.000000e+00, float poison>, <4 x i32> <i32 2, i32 1, i32 1, i32 1>
  br label %bb.d

._crit_edge:                                      ; preds = %_Z9rayConvexRK9b3Vector3S1_RK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayI9b3GpuFaceERfRS_.exit
  %i.n = icmp sgt i32 %.468, -1
  br i1 %i.n, label %bb.u, label %._crit_edge.thread

bb.d:                                             ; preds = %bb.c, %_Z9rayConvexRK9b3Vector3S1_RK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayI9b3GpuFaceERfRS_.exit
  %indvars.iv = phi i64 [ 0, %bb.c ], [ %indvars.iv.next, %_Z9rayConvexRK9b3Vector3S1_RK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayI9b3GpuFaceERfRS_.exit ] ; 4 uses
  %.064152 = phi i32 [ -1, %bb.c ], [ %.468, %_Z9rayConvexRK9b3Vector3S1_RK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayI9b3GpuFaceERfRS_.exit ] ; 5 uses
  %.0135151 = phi float [ %.sroa.8.0.copyload.a, %bb.c ], [ %.2, %_Z9rayConvexRK9b3Vector3S1_RK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayI9b3GpuFaceERfRS_.exit ] ; 6 uses
  %.sroa.6117.1150 = phi <2 x float> [ %.sroa.6117.0160, %bb.c ], [ %.sroa.6117.3, %_Z9rayConvexRK9b3Vector3S1_RK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayI9b3GpuFaceERfRS_.exit ] ; 5 uses
  %.sroa.0116.1149 = phi <2 x float> [ %.sroa.0116.0159, %bb.c ], [ %.sroa.0116.3, %_Z9rayConvexRK9b3Vector3S1_RK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayI9b3GpuFaceERfRS_.exit ] ; 5 uses
  %i.o = getelementptr inbounds nuw [80 x i8], ptr %4, i64 %indvars.iv ; 12 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.q = load i32, ptr %i.p, align 16, !tbaa !91
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [16 x i8], ptr %6, i64 %i.r ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i32, ptr %i.t, align 4, !tbaa !95
  switch i32 %i.u, label %bb.p [
    i32 7, label %bb.e
    i32 3, label %._Z16sphere_intersectRK9b3Vector3fS1_S1_Rf.exit.thread_crit_edge
  ]

._Z16sphere_intersectRK9b3Vector3fS1_S1_Rf.exit.thread_crit_edge: ; preds = %bb.d
  %.sroa.30.48.copyload.pre = load float, ptr %i.o, align 16
  br label %_Z16sphere_intersectRK9b3Vector3fS1_S1_Rf.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.w = load float, ptr %i.v, align 4, !tbaa !67 ; 2 uses
  %i.x = load float, ptr %i.o, align 16, !tbaa !67 ; 2 uses
  %i.y = fsub float %11, %i.x                     ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 2 uses
  %i.aa = load float, ptr %i.z, align 4, !tbaa !67
  %i.ab = fsub float %.sroa.6129.0.copyload, %i.aa ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.ad = load float, ptr %i.ac, align 8, !tbaa !67
  %i.ae = fsub float %.sroa.8131.0.copyload, %i.ad ; 3 uses
  %i.af = fmul float %13, %i.ab
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.y, float %12, float %i.af)
  %i.ah = tail call noundef float @llvm.fmuladd.f32(float %i.ae, float %14, float %i.ag) ; 3 uses
  %i.ai = fmul float %i.ab, %i.ab
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.y, float %i.y, float %i.ai)
  %i.ak = tail call noundef float @llvm.fmuladd.f32(float %i.ae, float %i.ae, float %i.aj)
  %i.al = fneg float %i.w
  %i.am = tail call float @llvm.fmuladd.f32(float %i.al, float %i.w, float %i.ak)
  %i.an = fneg float %i.am
  %i.ao = fmul float %17, %i.an
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.ah, float %i.ao) ; 2 uses
  %i.aq = fcmp ogt float %i.ap, 0.000000e+00
  br i1 %i.aq, label %bb.f, label %_Z16sphere_intersectRK9b3Vector3fS1_S1_Rf.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.ar = fneg float %i.ah
  %i.as = tail call noundef float @sqrtf(float noundef %i.ap) #19
  %i.at = fsub float %i.ar, %i.as
  %i.au = fdiv float %i.at, %17                   ; 6 uses
  %i.av = fcmp oge float %i.au, 0.000000e+00
  %i.aw = fcmp olt float %i.au, %.0135151
  %or.cond = select i1 %i.av, i1 %i.aw, i1 false
  %.sroa.30.48.copyload.pre169 = load float, ptr %i.o, align 16 ; 3 uses
  br i1 %or.cond, label %bb.g, label %_Z16sphere_intersectRK9b3Vector3fS1_S1_Rf.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.ax = load ptr, ptr %i.d, align 8, !tbaa !84
  %i.ay = getelementptr inbounds nuw [32 x i8], ptr %i.ax, i64 %indvars.iv166 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = fsub float 1.000000e+00, %i.au          ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bc = load float, ptr %i.bb, align 8, !tbaa !67
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.be = load float, ptr %i.bd, align 8, !tbaa !67
  %i.bf = fmul float %i.au, %i.be
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.ba, float %i.bc, float %i.bf)
  %i.bh = load float, ptr %i.z, align 4, !tbaa !67
  %i.bi = load float, ptr %i.ac, align 8, !tbaa !67
  %i.bj = fsub float %i.bg, %i.bi                 ; 3 uses
  %i.bk = load <2 x float>, ptr %i.ay, align 16, !tbaa !67
  %i.bl = load <2 x float>, ptr %i.az, align 16, !tbaa !67
  %i.bm = insertelement <2 x float> poison, float %i.au, i64 0
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bo = fmul <2 x float> %i.bn, %i.bl
  %i.bp = insertelement <2 x float> poison, float %i.ba, i64 0
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.br = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bq, <2 x float> %i.bk, <2 x float> %i.bo)
  %i.bs = insertelement <2 x float> poison, float %.sroa.30.48.copyload.pre169, i64 0
  %i.bt = insertelement <2 x float> %i.bs, float %i.bh, i64 1
  %i.bu = fsub <2 x float> %i.br, %i.bt           ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.bu, %i.bu
  %i.bv = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.bw = extractelement <2 x float> %i.bu, i64 0 ; 2 uses
  %i.bx = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.bw, float %i.bv)
  %i.by = tail call noundef float @llvm.fmuladd.f32(float %i.bj, float %i.bj, float %i.bx)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.by)
  %i.bz = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.ca = insertelement <2 x float> poison, float %i.bz, i64 0
  %i.cb = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cc = fmul <2 x float> %i.bu, %i.cb
  %i.cd = fmul float %i.bj, %i.bz
  %.sroa.9112.8.vec.insert = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cd, i64 0
  %i.ce = trunc nuw nsw i64 %indvars.iv to i32
  br label %_Z16sphere_intersectRK9b3Vector3fS1_S1_Rf.exit.thread

_Z16sphere_intersectRK9b3Vector3fS1_S1_Rf.exit.thread: ; preds = %._Z16sphere_intersectRK9b3Vector3fS1_S1_Rf.exit.thread_crit_edge, %bb.e, %bb.f, %bb.g
  %.sroa.30.48.copyload = phi float [ %.sroa.30.48.copyload.pre169, %bb.g ], [ %.sroa.30.48.copyload.pre, %._Z16sphere_intersectRK9b3Vector3fS1_S1_Rf.exit.thread_crit_edge ], [ %i.x, %bb.e ], [ %.sroa.30.48.copyload.pre169, %bb.f ]
  %.sroa.0116.2 = phi <2 x float> [ %i.cc, %bb.g ], [ %.sroa.0116.1149, %._Z16sphere_intersectRK9b3Vector3fS1_S1_Rf.exit.thread_crit_edge ], [ %.sroa.0116.1149, %bb.e ], [ %.sroa.0116.1149, %bb.f ]
  %.sroa.6117.2 = phi <2 x float> [ %.sroa.9112.8.vec.insert, %bb.g ], [ %.sroa.6117.1150, %._Z16sphere_intersectRK9b3Vector3fS1_S1_Rf.exit.thread_crit_edge ], [ %.sroa.6117.1150, %bb.e ], [ %.sroa.6117.1150, %bb.f ]
  %.1 = phi float [ %i.au, %bb.g ], [ %.0135151, %._Z16sphere_intersectRK9b3Vector3fS1_S1_Rf.exit.thread_crit_edge ], [ %.0135151, %bb.e ], [ %.0135151, %bb.f ] ; 2 uses
  %.266 = phi i32 [ %i.ce, %bb.g ], [ %.064152, %._Z16sphere_intersectRK9b3Vector3fS1_S1_Rf.exit.thread_crit_edge ], [ %.064152, %bb.e ], [ %.064152, %bb.f ]
  %.sroa.32107.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %.sroa.32107.48.copyload = load float, ptr %.sroa.32107.48..sroa_idx, align 4
  %.sroa.33108.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.33108.48.copyload = load float, ptr %.sroa.33108.48..sroa_idx, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.cg = load float, ptr %i.cf, align 16, !tbaa !67 ; 6 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !67 ; 5 uses
  %i.cj = fmul float %i.ci, %i.ci
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.cg, float %i.cg, float %i.cj)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.cm = load float, ptr %i.cl, align 8, !tbaa !67 ; 4 uses
  %i.cn = tail call float @llvm.fmuladd.f32(float %i.cm, float %i.cm, float %i.ck)
  %i.co = getelementptr inbounds nuw i8, ptr %i.o, i64 28
  %i.cp = load float, ptr %i.co, align 4, !tbaa !67 ; 5 uses
  %i.cq = tail call noundef float @llvm.fmuladd.f32(float %i.cp, float %i.cp, float %i.cn)
  %i.cr = fdiv float 2.000000e+00, %i.cq          ; 3 uses
  %i.cs = fmul float %i.cg, %i.cr                 ; 2 uses
  %i.ct = fmul float %i.ci, %i.cr                 ; 3 uses
  %i.cu = fmul float %i.cm, %i.cr                 ; 4 uses
  %i.cv = fmul float %i.cp, %i.cs                 ; 2 uses
  %i.cw = fmul float %i.cg, %i.cs                 ; 2 uses
  %i.cx = fmul float %i.cg, %i.ct                 ; 2 uses
  %i.cy = fmul float %i.cg, %i.cu                 ; 2 uses
  %i.cz = fmul float %i.ci, %i.ct                 ; 2 uses
  %i.da = fmul float %i.ci, %i.cu                 ; 2 uses
  %i.db = fmul float %i.cm, %i.cu                 ; 2 uses
  %i.dc = fadd float %i.cw, %i.db
  %i.dd = fsub float 1.000000e+00, %i.dc          ; 3 uses
  %i.de = fsub float %i.da, %i.cv                 ; 3 uses
  %i.df = fadd float %i.da, %i.cv                 ; 3 uses
  %i.dg = fneg float %.sroa.30.48.copyload        ; 3 uses
  %i.dh = fneg float %.sroa.32107.48.copyload     ; 3 uses
  %i.di = fneg float %.sroa.33108.48.copyload     ; 3 uses
  %i.dj = fmul float %i.dd, %i.dh
  %i.dk = fmul float %i.de, %i.dh
  %i.dl = fmul float %i.cp, %i.ct                 ; 2 uses
  %i.dm = fmul float %i.cp, %i.cu                 ; 2 uses
  %i.dn = fadd float %i.cz, %i.db
  %i.do = fadd float %i.cw, %i.cz
  %i.dp = fadd float %i.cx, %i.dm                 ; 3 uses
  %i.dq = fsub float %i.cy, %i.dl                 ; 3 uses
  %i.dr = fadd float %i.cy, %i.dl                 ; 3 uses
  %i.ds = fsub float %i.cx, %i.dm                 ; 3 uses
  %i.dt = fsub float 1.000000e+00, %i.dn          ; 3 uses
  %i.du = fsub float 1.000000e+00, %i.do          ; 3 uses
  %i.dv = fmul float %i.dp, %i.dh
  %i.dw = tail call float @llvm.fmuladd.f32(float %i.dt, float %i.dg, float %i.dv)
  %i.dx = tail call noundef float @llvm.fmuladd.f32(float %i.dq, float %i.di, float %i.dw) ; 2 uses
  %i.dy = tail call float @llvm.fmuladd.f32(float %i.ds, float %i.dg, float %i.dj)
  %i.dz = tail call noundef float @llvm.fmuladd.f32(float %i.df, float %i.di, float %i.dy) ; 2 uses
  %i.ea = tail call float @llvm.fmuladd.f32(float %i.dr, float %i.dg, float %i.dk)
  %i.eb = insertelement <4 x float> poison, float %i.ea, i64 0
  %i.ec = insertelement <4 x float> %i.eb, float %i.dp, i64 1
  %i.ed = insertelement <4 x float> %i.ec, float %i.dd, i64 2
  %i.ee = insertelement <4 x float> %i.ed, float %i.de, i64 3
  %i.ef = fmul <4 x float> %19, %i.ee
  %i.eg = insertelement <4 x float> poison, float %i.du, i64 0
  %i.eh = insertelement <4 x float> %i.eg, float %i.dt, i64 1
  %i.ei = insertelement <4 x float> %i.eh, float %i.ds, i64 2
  %i.ej = insertelement <4 x float> %i.ei, float %i.dr, i64 3
  %i.ek = insertelement <2 x float> %18, float %i.di, i64 0
  %i.el = shufflevector <2 x float> %i.ek, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.em = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ej, <4 x float> %i.el, <4 x float> %i.ef) ; 4 uses
  %i.en = extractelement <4 x float> %i.em, i64 1
  %i.eo = tail call noundef float @llvm.fmuladd.f32(float %.sroa.8131.0.copyload, float %i.dq, float %i.en)
  %i.ep = extractelement <4 x float> %i.em, i64 2
  %i.eq = tail call noundef float @llvm.fmuladd.f32(float %.sroa.8131.0.copyload, float %i.df, float %i.ep)
  %i.er = extractelement <4 x float> %i.em, i64 3
  %i.es = tail call noundef float @llvm.fmuladd.f32(float %.sroa.8131.0.copyload, float %i.du, float %i.er)
  %i.et = fadd float %i.eo, %i.dx
  %i.eu = fadd float %i.eq, %i.dz
  %i.ev = extractelement <4 x float> %i.em, i64 0 ; 2 uses
  %i.ew = fadd float %i.es, %i.ev
  %i.ex = fmul float %.sroa.6124.0.copyload, %i.dp
  %i.ey = tail call float @llvm.fmuladd.f32(float %.sroa.0122.0.copyload, float %i.dt, float %i.ex)
  %i.ez = tail call noundef float @llvm.fmuladd.f32(float %.sroa.8.0.copyload, float %i.dq, float %i.ey)
  %i.fa = fmul float %.sroa.6124.0.copyload, %i.dd
  %i.fb = tail call float @llvm.fmuladd.f32(float %.sroa.0122.0.copyload, float %i.ds, float %i.fa)
  %i.fc = tail call noundef float @llvm.fmuladd.f32(float %.sroa.8.0.copyload, float %i.df, float %i.fb)
  %i.fd = fmul float %.sroa.6124.0.copyload, %i.de
  %i.fe = tail call float @llvm.fmuladd.f32(float %.sroa.0122.0.copyload, float %i.dr, float %i.fd)
  %i.ff = tail call noundef float @llvm.fmuladd.f32(float %.sroa.8.0.copyload, float %i.du, float %i.fe)
  %i.fg = fadd float %i.ez, %i.dx
  %i.fh = fadd float %i.fc, %i.dz
  %i.fi = fadd float %i.ff, %i.ev
  %i.fj = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !67
  %i.fl = load ptr, ptr %i.g, align 8, !tbaa !97
  %i.fm = sext i32 %i.fk to i64
  %i.fn = getelementptr inbounds [96 x i8], ptr %i.fl, i64 %i.fm ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 72
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !70 ; 2 uses
  %.not71.i = icmp sgt i32 %i.fp, 0
  br i1 %.not71.i, label %.lr.ph.i, label %_Z9rayConvexRK9b3Vector3S1_RK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayI9b3GpuFaceERfRS_.exit.thread

.lr.ph.i:                                         ; preds = %_Z16sphere_intersectRK9b3Vector3fS1_S1_Rf.exit.thread
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 68
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !73
  %i.fs = load ptr, ptr %i.h, align 8, !tbaa !74
  %i.ft = sext i32 %i.fr to i64
  %wide.trip.count.i = zext nneg i32 %i.fp to i64
  %invariant.gep.i = getelementptr [32 x i8], ptr %i.fs, i64 %i.ft
  br label %bb.i

bb.h:                                             ; preds = %bb.o
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.i, !llvm.loop !78

bb.i:                                             ; preds = %bb.h, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.h ] ; 2 uses
  %.04176.i = phi float [ %.1, %.lr.ph.i ], [ %.243.i, %bb.h ] ; 5 uses
  %.04575.i = phi float [ -1.000000e-01, %.lr.ph.i ], [ %.247.i, %bb.h ] ; 4 uses
  %.sroa.5.074.i = phi <2 x float> [ zeroinitializer, %.lr.ph.i ], [ %.sroa.5.2.i, %bb.h ] ; 3 uses
  %.sroa.0.073.i = phi <2 x float> [ zeroinitializer, %.lr.ph.i ], [ %.sroa.0.2.i, %bb.h ] ; 3 uses
  %gep.i = getelementptr [32 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i ; 5 uses
  %i.fu = load float, ptr %gep.i, align 16, !tbaa !67 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %gep.i, i64 4
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !67 ; 2 uses
  %i.fx = fmul float %i.eu, %i.fw
  %i.fy = tail call float @llvm.fmuladd.f32(float %i.et, float %i.fu, float %i.fx)
  %i.fz = getelementptr inbounds nuw i8, ptr %gep.i, i64 8 ; 2 uses
  %i.ga = load float, ptr %i.fz, align 8, !tbaa !67 ; 2 uses
  %i.gb = tail call noundef float @llvm.fmuladd.f32(float %i.ew, float %i.ga, float %i.fy)
  %i.gc = getelementptr inbounds nuw i8, ptr %gep.i, i64 12
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !67 ; 2 uses
  %i.ge = fadd float %i.gd, %i.gb                 ; 5 uses
  %i.gf = fmul float %i.fh, %i.fw
  %i.gg = tail call float @llvm.fmuladd.f32(float %i.fg, float %i.fu, float %i.gf)
  %i.gh = tail call noundef float @llvm.fmuladd.f32(float %i.fi, float %i.ga, float %i.gg)
  %i.gi = fadd float %i.gd, %i.gh                 ; 4 uses
  %i.gj = fcmp olt float %i.ge, 0.000000e+00
  br i1 %i.gj, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.gk = fcmp ult float %i.gi, 0.000000e+00
  br i1 %i.gk, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.gl = fsub float %i.ge, %i.gi
  %i.gm = fdiv float %i.ge, %i.gl                 ; 2 uses
  %i.gn = fcmp ogt float %.04176.i, %i.gm
  %.142.i = select i1 %i.gn, float %i.gm, float %.04176.i
  br label %bb.o

bb.l:                                             ; preds = %bb.i
  %i.go = fcmp olt float %i.gi, 0.000000e+00
  br i1 %i.go, label %bb.m, label %_Z9rayConvexRK9b3Vector3S1_RK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayI9b3GpuFaceERfRS_.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.gp = fsub float %i.ge, %i.gi
  %i.gq = fdiv float %i.ge, %i.gp                 ; 2 uses
  %i.gr = fcmp ugt float %.04575.i, %i.gq
  br i1 %i.gr, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %gep.i, align 16
  %.sroa.5.0.copyload.i = load <2 x float>, ptr %i.fz, align 8, !tbaa !67
  %.sroa.5.12.vec.insert.i = insertelement <2 x float> %.sroa.5.0.copyload.i, float 0.000000e+00, i64 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.k, %bb.j
  %.sroa.0.2.i = phi <2 x float> [ %.sroa.0.073.i, %bb.k ], [ %.sroa.0.073.i, %bb.j ], [ %.sroa.0.0.copyload.i, %bb.n ], [ %.sroa.0.073.i, %bb.m ] ; 2 uses
  %.sroa.5.2.i = phi <2 x float> [ %.sroa.5.074.i, %bb.k ], [ %.sroa.5.074.i, %bb.j ], [ %.sroa.5.12.vec.insert.i, %bb.n ], [ %.sroa.5.074.i, %bb.m ] ; 2 uses
  %.247.i = phi float [ %.04575.i, %bb.k ], [ %.04575.i, %bb.j ], [ %i.gq, %bb.n ], [ %.04575.i, %bb.m ] ; 4 uses
  %.243.i = phi float [ %.142.i, %bb.k ], [ %.04176.i, %bb.j ], [ %.04176.i, %bb.n ], [ %.04176.i, %bb.m ] ; 2 uses
  %i.gs = fcmp ugt float %.243.i, %.247.i
  br i1 %i.gs, label %bb.h, label %_Z9rayConvexRK9b3Vector3S1_RK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayI9b3GpuFaceERfRS_.exit.thread

._crit_edge.i:                                    ; preds = %bb.h
  %i.gt = fcmp olt float %.247.i, 0.000000e+00
  %i.gu = trunc nuw nsw i64 %indvars.iv to i32
  br i1 %i.gt, label %_Z9rayConvexRK9b3Vector3S1_RK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayI9b3GpuFaceERfRS_.exit.thread, label %_Z9rayConvexRK9b3Vector3S1_RK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayI9b3GpuFaceERfRS_.exit

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
  %i.gv = landingpad { ptr, i32 }
          cleanup
  invoke void @b3LeaveProfileZone()
          to label %_ZN13b3ProfileZoneD2Ev.exit82 unwind label %bb.t

_Z9rayConvexRK9b3Vector3S1_RK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayI9b3GpuFaceERfRS_.exit: ; preds = %_Z9rayConvexRK9b3Vector3S1_RK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayI9b3GpuFaceERfRS_.exit.thread, %._crit_edge.i, %bb.p, %bb.r
  %.sroa.0116.3 = phi <2 x float> [ %.sroa.0116.1149, %bb.p ], [ %.sroa.0116.1149, %bb.r ], [ %.sroa.0116.2, %_Z9rayConvexRK9b3Vector3S1_RK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayI9b3GpuFaceERfRS_.exit.thread ], [ %.sroa.0.2.i, %._crit_edge.i ] ; 3 uses
  %.sroa.6117.3 = phi <2 x float> [ %.sroa.6117.1150, %bb.p ], [ %.sroa.6117.1150, %bb.r ], [ %.sroa.6117.2, %_Z9rayConvexRK9b3Vector3S1_RK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayI9b3GpuFaceERfRS_.exit.thread ], [ %.sroa.5.2.i, %._crit_edge.i ] ; 3 uses
  %.2 = phi float [ %.0135151, %bb.p ], [ %.0135151, %bb.r ], [ %.1, %_Z9rayConvexRK9b3Vector3S1_RK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayI9b3GpuFaceERfRS_.exit.thread ], [ %.247.i, %._crit_edge.i ] ; 6 uses
  %.468 = phi i32 [ %.064152, %bb.p ], [ %.064152, %bb.r ], [ %.266, %_Z9rayConvexRK9b3Vector3S1_RK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayI9b3GpuFaceERfRS_.exit.thread ], [ %i.gu, %._crit_edge.i ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !101

bb.t:                                             ; preds = %bb.s
  %i.gw = landingpad { ptr, i32 }
          catch ptr null
  %i.gx = extractvalue { ptr, i32 } %i.gw, 0
  tail call void @__clang_call_terminate(ptr %i.gx) #21
  unreachable

_ZN13b3ProfileZoneD2Ev.exit82:                    ; preds = %bb.s
  resume { ptr, i32 } %i.gv

bb.u:                                             ; preds = %._crit_edge
  %i.gy = load ptr, ptr %i.e, align 8, !tbaa !85
  %i.gz = getelementptr inbounds nuw [48 x i8], ptr %i.gy, i64 %indvars.iv166 ; 4 uses
  store float %.2, ptr %i.gz, align 16, !tbaa !89
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %i.hb = load ptr, ptr %i.d, align 8, !tbaa !84
  %i.hc = getelementptr inbounds nuw [32 x i8], ptr %i.hb, i64 %indvars.iv166 ; 6 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %i.he = fsub float 1.000000e+00, %.2            ; 3 uses
  %i.hf = load float, ptr %i.hc, align 16, !tbaa !67
  %i.hg = load float, ptr %i.hd, align 16, !tbaa !67
  %i.hh = fmul float %.2, %i.hg
  %i.hi = tail call float @llvm.fmuladd.f32(float %i.he, float %i.hf, float %i.hh)
  store float %i.hi, ptr %i.ha, align 16, !tbaa !67
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hc, i64 4
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !67
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hc, i64 20
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !67
  %i.hn = fmul float %.2, %i.hm
  %i.ho = tail call float @llvm.fmuladd.f32(float %i.he, float %i.hk, float %i.hn)
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gz, i64 20
  store float %i.ho, ptr %i.hp, align 4, !tbaa !67
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %i.hr = load float, ptr %i.hq, align 8, !tbaa !67
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hc, i64 24
  %i.ht = load float, ptr %i.hs, align 8, !tbaa !67
  %i.hu = fmul float %.2, %i.ht
  %i.hv = tail call float @llvm.fmuladd.f32(float %i.he, float %i.hr, float %i.hu)
  %i.hw = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  store float %i.hv, ptr %i.hw, align 8, !tbaa !67
  %i.hx = load ptr, ptr %i.e, align 8, !tbaa !85
  %i.hy = getelementptr inbounds nuw [48 x i8], ptr %i.hx, i64 %indvars.iv166 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 32
  store <2 x float> %.sroa.0116.3, ptr %i.hz, align 16
  %.sroa.6117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hy, i64 40
  store <2 x float> %.sroa.6117.3, ptr %.sroa.6117.0..sroa_idx, align 8, !tbaa !67
  %i.ia = load ptr, ptr %i.e, align 8, !tbaa !85
  %i.ib = getelementptr inbounds nuw [48 x i8], ptr %i.ia, i64 %indvars.iv166
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 4
  store i32 %.468, ptr %i.ic, align 4, !tbaa !102
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.u, %._crit_edge
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 2 uses
  %i.id = load i32, ptr %i.a, align 4, !tbaa !80
  %i.ie = sext i32 %i.id to i64
  %i.if = icmp slt i64 %indvars.iv.next167, %i.ie
  br i1 %i.if, label %bb.c, label %._crit_edge164, !llvm.loop !103
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
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !41
  invoke void @_ZN13b3OpenCLArrayI9b3RayInfoE12copyFromHostERK20b3AlignedObjectArrayIS0_Eb(ptr noundef nonnull align 8 dereferenceable(50) %i.j, ptr noundef nonnull align 8 dereferenceable(25) %1, i1 noundef zeroext true)
          to label %bb.b unwind label %bb.r

bb.b:                                             ; preds = %_ZN13b3ProfileZoneC2EPKc.exit
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !47
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
  %i.q = load i32, ptr %i.p, align 4, !tbaa !104  ; 6 uses
  store i32 %i.q, ptr %i.e, align 4, !tbaa !62
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !11
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 88
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !53
  %i.u = sext i32 %i.q to i64                     ; 2 uses
  %i.v = invoke noundef zeroext i1 @_ZN13b3OpenCLArrayIiE6resizeEmb(ptr noundef nonnull align 8 dereferenceable(50) %i.t, i64 noundef %i.u, i1 noundef zeroext true)
          to label %bb.e unwind label %bb.t       ; 0 uses

bb.e:                                             ; preds = %_ZN13b3ProfileZoneD2Ev.exit
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !11
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !54
  %i.z = invoke noundef zeroext i1 @_ZN13b3OpenCLArrayIiE6resizeEmb(ptr noundef nonnull align 8 dereferenceable(50) %i.y, i64 noundef %i.u, i1 noundef zeroext true)
          to label %bb.f unwind label %bb.t       ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !11
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 104
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !55
  %i.ad = invoke noundef zeroext i1 @_ZN13b3OpenCLArrayIiE6resizeEmb(ptr noundef nonnull align 8 dereferenceable(50) %i.ac, i64 noundef 1, i1 noundef zeroext true)
          to label %bb.g unwind label %bb.t       ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.ae = load ptr, ptr %i.g, align 8, !tbaa !11
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 112
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !61
  %i.ah = shl nsw i32 %i.q, 4
  %i.ai = sext i32 %i.ah to i64
  %i.aj = invoke noundef zeroext i1 @_ZN13b3OpenCLArrayI6b3Int2E6resizeEmb(ptr noundef nonnull align 8 dereferenceable(50) %i.ag, i64 noundef %i.ai, i1 noundef zeroext true)
          to label %bb.h unwind label %bb.t       ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.ak = load ptr, ptr %i.g, align 8, !tbaa !11
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !30
  %i.an = load ptr, ptr %8, align 8, !tbaa !9
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 80
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = invoke noundef nonnull align 8 dereferenceable(50) ptr %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.i unwind label %bb.u

bb.i:                                             ; preds = %bb.h
  %i.ar = load ptr, ptr %8, align 8, !tbaa !9
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 104
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = invoke noundef nonnull align 8 dereferenceable(50) ptr %i.at(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.j unwind label %bb.u

bb.j:                                             ; preds = %bb.i
  %i.av = load ptr, ptr %8, align 8, !tbaa !9
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 112
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = invoke noundef nonnull align 8 dereferenceable(50) ptr %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.k unwind label %bb.u

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN22b3GpuParallelLinearBvh5buildERK13b3OpenCLArrayI9b3SapAabbERKS0_IiES7_(ptr noundef nonnull align 8 dereferenceable(1096) %i.am, ptr noundef nonnull align 8 dereferenceable(50) %i.aq, ptr noundef nonnull align 8 dereferenceable(50) %i.au, ptr noundef nonnull align 8 dereferenceable(50) %i.ay)
          to label %bb.l unwind label %bb.u

bb.l:                                             ; preds = %bb.k
  %i.az = load ptr, ptr %i.g, align 8, !tbaa !11  ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !30
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 72
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !41
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 104
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !55
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 112
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !61
  invoke void @_ZN22b3GpuParallelLinearBvh23testRaysAgainstBvhAabbsERK13b3OpenCLArrayI9b3RayInfoERS0_IiERS0_I6b3Int2E(ptr noundef nonnull align 8 dereferenceable(1096) %i.bb, ptr noundef nonnull align 8 dereferenceable(50) %i.bd, ptr noundef nonnull align 8 dereferenceable(50) %i.bf, ptr noundef nonnull align 8 dereferenceable(50) %i.bh)
          to label %bb.m unwind label %bb.u

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  store i32 -1, ptr %i.f, align 4, !tbaa !62
  %i.bi = load ptr, ptr %i.g, align 8, !tbaa !11
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 104
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !55 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !105
  %.not.i = icmp eq i64 %i.bm, 0
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bn = load ptr, ptr @__clewEnqueueReadBuffer, align 8, !tbaa !66
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 40 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !50
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !106
  %i.bs = invoke i32 %i.bn(ptr noundef %i.bp, ptr noundef %i.br, i32 noundef 0, i64 noundef 0, i64 noundef 4, ptr noundef nonnull %i.f, i32 noundef 0, ptr noundef null, ptr noundef null)
          to label %.noexc unwind label %bb.v, !inline_history !107 ; 0 uses

.noexc:                                           ; preds = %bb.n
  %i.bt = load ptr, ptr @__clewFinish, align 8, !tbaa !66
  %i.bu = load ptr, ptr %i.bo, align 8, !tbaa !50
  %i.bv = invoke i32 %i.bt(ptr noundef %i.bu)
          to label %_ZNK13b3OpenCLArrayIiE17copyToHostPointerEPimmb.exit unwind label %bb.v, !inline_history !107 ; 0 uses

bb.o:                                             ; preds = %bb.m
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef 285)
          to label %.noexc45 unwind label %bb.v

.noexc45:                                         ; preds = %bb.o
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.26)
          to label %_ZNK13b3OpenCLArrayIiE17copyToHostPointerEPimmb.exit unwind label %bb.v

_ZNK13b3OpenCLArrayIiE17copyToHostPointerEPimmb.exit: ; preds = %.noexc, %.noexc45
  %i.bw = load i32, ptr %i.f, align 4, !tbaa !62
  %i.bx = sext i32 %i.bw to i64                   ; 2 uses
  %i.by = load ptr, ptr %i.g, align 8, !tbaa !11  ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 112
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !61 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !108 ; 2 uses
  %i.cd = icmp ult i64 %i.cc, %i.bx
  br i1 %i.cd, label %bb.p, label %_ZN13b3OpenCLArrayIiE19copyFromHostPointerEPKimmb.exit

bb.p:                                             ; preds = %_ZNK13b3OpenCLArrayIiE17copyToHostPointerEPimmb.exit
  %i.ce = trunc i64 %i.cc to i32
  store i32 %i.ce, ptr %i.f, align 4, !tbaa !62
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 104
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !55 ; 2 uses
  %i.ch = load ptr, ptr @__clewEnqueueWriteBuffer, align 8, !tbaa !66
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 40 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !50
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !106
  %i.cm = invoke i32 %i.ch(ptr noundef %i.cj, ptr noundef %i.cl, i32 noundef 0, i64 noundef 0, i64 noundef 4, ptr noundef nonnull %i.f, i32 noundef 0, ptr noundef null, ptr noundef null)
          to label %.noexc47 unwind label %bb.v, !inline_history !109 ; 0 uses

.noexc47:                                         ; preds = %bb.p
  %i.cn = load ptr, ptr @__clewFinish, align 8, !tbaa !66
  %i.co = load ptr, ptr %i.ci, align 8, !tbaa !50
  %i.cp = invoke i32 %i.cn(ptr noundef %i.co)
          to label %.noexc47._ZN13b3OpenCLArrayIiE19copyFromHostPointerEPKimmb.exit_crit_edge unwind label %bb.v, !inline_history !109 ; 0 uses

.noexc47._ZN13b3OpenCLArrayIiE19copyFromHostPointerEPKimmb.exit_crit_edge: ; preds = %.noexc47
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !11
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 112
  %.pre128 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !61
  %.pre129 = load i32, ptr %i.f, align 4, !tbaa !62
  %.pre130 = sext i32 %.pre129 to i64
  br label %_ZN13b3OpenCLArrayIiE19copyFromHostPointerEPKimmb.exit

end_hunk_0
