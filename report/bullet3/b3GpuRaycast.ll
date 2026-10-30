Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3GpuRaycast?download=true
inline.NumInlined: 267
inline.NumDeleted: 115
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@llvm.fmuladd.f32

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
  br i1 %i.c, label %.lr.ph169, label %._crit_edge170

.lr.ph169:                                        ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.f = icmp sgt i32 %3, 0
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 264
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %bb.c

._crit_edge170:                                   ; preds = %._crit_edge.thread, %bb.a
  invoke void @b3LeaveProfileZone()
          to label %_ZN13b3ProfileZoneD2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %._crit_edge170
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #21
  unreachable

_ZN13b3ProfileZoneD2Ev.exit:                      ; preds = %._crit_edge170
  ret void

bb.c:                                             ; preds = %.lr.ph169, %._crit_edge.thread
  %indvars.iv172 = phi i64 [ 0, %.lr.ph169 ], [ %indvars.iv.next173, %._crit_edge.thread ] ; 8 uses
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !78
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv172 ; 6 uses
  %.sroa.6135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.sroa.6135.0.copyload = load float, ptr %.sroa.6135.0..sroa_idx, align 4 ; 2 uses
  %.sroa.8137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.8137.0.copyload = load float, ptr %.sroa.8137.0..sroa_idx, align 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.0128.0.copyload = load float, ptr %i.m, align 16 ; 4 uses
  %.sroa.6130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %.sroa.6130.0.copyload = load float, ptr %.sroa.6130.0..sroa_idx, align 4 ; 4 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.8.0.copyload = load float, ptr %.sroa.8.0..sroa_idx, align 8 ; 4 uses
  br i1 %i.f, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.c
  %i.n = load <2 x float>, ptr %i.l, align 16     ; 3 uses
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !82
  %i.p = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %indvars.iv172
  %i.q = load float, ptr %i.p, align 16, !tbaa !106
  %i.r = extractelement <2 x float> %i.n, i64 0   ; 2 uses
  %i.s = fsub float %.sroa.0128.0.copyload, %i.r  ; 3 uses
  %i.t = fsub float %.sroa.6130.0.copyload, %.sroa.6135.0.copyload ; 3 uses
  %i.u = fsub float %.sroa.8.0.copyload, %.sroa.8137.0.copyload ; 3 uses
  %i.v = fmul float %i.t, %i.t
  %i.w = tail call float @llvm.fmuladd.f32(float %i.s, float %i.s, float %i.v)
  %i.x = tail call float @llvm.fmuladd.f32(float %i.u, float %i.u, float %i.w) ; 2 uses
  %i.y = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.z = shufflevector <2 x float> %i.n, <2 x float> <float 1.000000e+00, float poison>, <4 x i32> <i32 2, i32 1, i32 1, i32 1>
  %i.aa = insertelement <4 x float> poison, float %.sroa.8137.0.copyload, i64 0
  %i.ab = insertelement <4 x float> %i.aa, float %.sroa.0128.0.copyload, i64 1
  %i.ac = shufflevector <4 x float> %i.ab, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  br label %bb.d

._crit_edge:                                      ; preds = %_Z9rayConvexRK9b3Vector3S1_RK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayI9b3GpuFaceERfRS_.exit
  %i.ad = icmp sgt i32 %.4, -1
  br i1 %i.ad, label %bb.u, label %._crit_edge.thread

bb.d:                                             ; preds = %.lr.ph, %_Z9rayConvexRK9b3Vector3S1_RK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayI9b3GpuFaceERfRS_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_Z9rayConvexRK9b3Vector3S1_RK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayI9b3GpuFaceERfRS_.exit ] ; 4 uses
  %.056160 = phi i32 [ -1, %.lr.ph ], [ %.4, %_Z9rayConvexRK9b3Vector3S1_RK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayI9b3GpuFaceERfRS_.exit ] ; 5 uses
  %.sroa.0122.0159 = phi <2 x float> [ undef, %.lr.ph ], [ %.sroa.0122.2, %_Z9rayConvexRK9b3Vector3S1_RK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayI9b3GpuFaceERfRS_.exit ] ; 5 uses
  %.sroa.6123.0158 = phi <2 x float> [ undef, %.lr.ph ], [ %.sroa.6123.2, %_Z9rayConvexRK9b3Vector3S1_RK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayI9b3GpuFaceERfRS_.exit ] ; 5 uses
  %.0141157 = phi float [ %i.q, %.lr.ph ], [ %.2142, %_Z9rayConvexRK9b3Vector3S1_RK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayI9b3GpuFaceERfRS_.exit ] ; 6 uses
  %i.ae = getelementptr inbounds nuw [80 x i8], ptr %4, i64 %indvars.iv ; 12 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %i.ag = load i32, ptr %i.af, align 16, !tbaa !110
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [16 x i8], ptr %6, i64 %i.ah ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !112
  switch i32 %i.ak, label %bb.q [
    i32 7, label %bb.e
    i32 3, label %_Z16sphere_intersectRK9b3Vector3fS1_S1_Rf.exit.thread
  ]

bb.e:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.am = load float, ptr %i.al, align 4, !tbaa !62 ; 2 uses
  %i.an = load float, ptr %i.ae, align 16, !tbaa !62
  %i.ao = fsub float %i.r, %i.an                  ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !62
  %i.ar = fsub float %.sroa.6135.0.copyload, %i.aq ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.at = load float, ptr %i.as, align 8, !tbaa !62
  %i.au = fsub float %.sroa.8137.0.copyload, %i.at ; 3 uses
  %i.av = fmul float %i.t, %i.ar
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.ao, float %i.s, float %i.av)
  %i.ax = tail call noundef float @llvm.fmuladd.f32(float %i.au, float %i.u, float %i.aw) ; 3 uses
  %i.ay = fmul float %i.ar, %i.ar
  %i.az = tail call float @llvm.fmuladd.f32(float %i.ao, float %i.ao, float %i.ay)
  %i.ba = tail call noundef float @llvm.fmuladd.f32(float %i.au, float %i.au, float %i.az)
  %i.bb = fneg float %i.am
  %i.bc = tail call float @llvm.fmuladd.f32(float %i.bb, float %i.am, float %i.ba)
  %i.bd = fneg float %i.bc
  %i.be = fmul float %i.x, %i.bd
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.ax, float %i.ax, float %i.be) ; 2 uses
  %i.bg = fcmp ogt float %i.bf, 0.000000e+00
  br i1 %i.bg, label %bb.f, label %_Z16sphere_intersectRK9b3Vector3fS1_S1_Rf.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.bh = fneg float %i.ax
  %i.bi = tail call noundef float @sqrtf(float noundef %i.bf) #19
  %i.bj = fsub float %i.bh, %i.bi
  %i.bk = fdiv float %i.bj, %i.x                  ; 6 uses
  %i.bl = fcmp oge float %i.bk, 0.000000e+00
  %i.bm = fcmp olt float %i.bk, %.0141157
  %or.cond = select i1 %i.bl, i1 %i.bm, i1 false
  br i1 %or.cond, label %bb.g, label %_Z16sphere_intersectRK9b3Vector3fS1_S1_Rf.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.bn = load ptr, ptr %i.d, align 8, !tbaa !78
  %i.bo = getelementptr inbounds nuw [32 x i8], ptr %i.bn, i64 %indvars.iv172 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.br = load float, ptr %i.bq, align 8, !tbaa !62
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bt = load float, ptr %i.bs, align 8, !tbaa !62
  %i.bu = fmul float %i.bk, %i.bt
  %i.bv = load float, ptr %i.as, align 8, !tbaa !62
  %i.bw = fsub float 1.000000e+00, %i.bk          ; 2 uses
  %i.bx = load <2 x float>, ptr %i.bo, align 16, !tbaa !62
  %i.by = load <2 x float>, ptr %i.bp, align 16, !tbaa !62
  %i.bz = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cb = fmul <2 x float> %i.ca, %i.by
  %i.cc = insertelement <2 x float> poison, float %i.bw, i64 0
  %i.cd = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ce = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cd, <2 x float> %i.bx, <2 x float> %i.cb)
  %i.cf = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.br, float %i.bu)
  %8 = load <2 x float>, ptr %i.ae, align 16, !tbaa !62
  %i.cg = fsub <2 x float> %i.ce, %8              ; 4 uses
  %i.ch = fsub float %i.cf, %i.bv                 ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.cg, %i.cg
  %i.ci = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.cj = extractelement <2 x float> %i.cg, i64 0 ; 2 uses
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.cj, float %i.cj, float %i.ci)
  %i.cl = tail call noundef float @llvm.fmuladd.f32(float %i.ch, float %i.ch, float %i.ck)
  %i.cm = tail call noundef float @sqrtf(float noundef %i.cl) #19
  %i.cn = fdiv float 1.000000e+00, %i.cm          ; 2 uses
  %i.co = insertelement <2 x float> poison, float %i.cn, i64 0
  %i.cp = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cq = fmul <2 x float> %i.cg, %i.cp
  %i.cr = fmul float %i.ch, %i.cn
  %.sroa.11116.8.vec.insert = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cr, i64 0
  %i.cs = trunc nuw nsw i64 %indvars.iv to i32
  br label %_Z16sphere_intersectRK9b3Vector3fS1_S1_Rf.exit.thread

bb.h:                                             ; preds = %bb.r, %bb.s
  %i.ct = landingpad { ptr, i32 }
          cleanup
  invoke void @b3LeaveProfileZone()
          to label %_ZN13b3ProfileZoneD2Ev.exit82 unwind label %bb.t

_Z16sphere_intersectRK9b3Vector3fS1_S1_Rf.exit.thread: ; preds = %bb.e, %bb.f, %bb.g, %bb.d
  %.1 = phi float [ %i.bk, %bb.g ], [ %.0141157, %bb.d ], [ %.0141157, %bb.e ], [ %.0141157, %bb.f ] ; 2 uses
  %.sroa.6123.1 = phi <2 x float> [ %.sroa.11116.8.vec.insert, %bb.g ], [ %.sroa.6123.0158, %bb.d ], [ %.sroa.6123.0158, %bb.e ], [ %.sroa.6123.0158, %bb.f ]
  %.sroa.0122.1 = phi <2 x float> [ %i.cq, %bb.g ], [ %.sroa.0122.0159, %bb.d ], [ %.sroa.0122.0159, %bb.e ], [ %.sroa.0122.0159, %bb.f ]
  %.2 = phi i32 [ %i.cs, %bb.g ], [ %.056160, %bb.d ], [ %.056160, %bb.e ], [ %.056160, %bb.f ]
  %.sroa.30.48.copyload = load float, ptr %i.ae, align 16
  %.sroa.32107.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %.sroa.32107.48.copyload = load float, ptr %.sroa.32107.48..sroa_idx, align 4
  %.sroa.33108.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.33108.48.copyload = load float, ptr %.sroa.33108.48..sroa_idx, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.cv = load float, ptr %i.cu, align 16, !tbaa !62 ; 6 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ae, i64 20
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ae, i64 28
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !62 ; 5 uses
  %i.da = fneg float %.sroa.30.48.copyload        ; 3 uses
  %i.db = fneg float %.sroa.32107.48.copyload     ; 3 uses
  %i.dc = fneg float %.sroa.33108.48.copyload     ; 3 uses
  %i.dd = insertelement <2 x float> %i.y, float %i.dc, i64 0
  %i.de = shufflevector <2 x float> %i.dd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.df = load float, ptr %i.cw, align 4, !tbaa !62 ; 5 uses
  %i.dg = fmul float %i.df, %i.df
  %i.dh = tail call float @llvm.fmuladd.f32(float %i.cv, float %i.cv, float %i.dg)
  %i.di = load float, ptr %i.cx, align 8, !tbaa !62 ; 4 uses
  %i.dj = tail call float @llvm.fmuladd.f32(float %i.di, float %i.di, float %i.dh)
  %i.dk = tail call noundef float @llvm.fmuladd.f32(float %i.cz, float %i.cz, float %i.dj)
  %i.dl = fdiv float 2.000000e+00, %i.dk          ; 3 uses
  %i.dm = fmul float %i.cv, %i.dl                 ; 2 uses
  %i.dn = fmul float %i.df, %i.dl                 ; 3 uses
  %i.do = fmul float %i.di, %i.dl                 ; 4 uses
  %i.dp = fmul float %i.cz, %i.dm                 ; 2 uses
  %i.dq = fmul float %i.cv, %i.dm                 ; 2 uses
  %i.dr = fmul float %i.cv, %i.dn                 ; 2 uses
  %i.ds = fmul float %i.cv, %i.do                 ; 2 uses
  %i.dt = fmul float %i.df, %i.dn                 ; 2 uses
  %i.du = fmul float %i.df, %i.do                 ; 2 uses
  %i.dv = fmul float %i.di, %i.do                 ; 2 uses
  %i.dw = fadd float %i.dq, %i.dv
  %i.dx = fsub float 1.000000e+00, %i.dw          ; 3 uses
  %i.dy = fsub float %i.du, %i.dp                 ; 3 uses
  %i.dz = fadd float %i.du, %i.dp                 ; 3 uses
  %i.ea = fmul float %i.dx, %i.db
  %i.eb = fmul float %i.dy, %i.db
  %i.ec = fmul float %i.cz, %i.dn                 ; 2 uses
  %i.ed = fmul float %i.cz, %i.do                 ; 2 uses
  %i.ee = fadd float %i.dt, %i.dv
  %i.ef = fsub float 1.000000e+00, %i.ee          ; 3 uses
  %i.eg = fsub float %i.dr, %i.ed                 ; 3 uses
  %i.eh = fadd float %i.ds, %i.ec                 ; 3 uses
  %i.ei = fadd float %i.dr, %i.ed                 ; 3 uses
  %i.ej = fsub float %i.ds, %i.ec                 ; 3 uses
  %i.ek = fadd float %i.dq, %i.dt
  %i.el = fsub float 1.000000e+00, %i.ek          ; 3 uses
  %i.em = fmul float %i.ei, %i.db
  %i.en = tail call float @llvm.fmuladd.f32(float %i.ef, float %i.da, float %i.em)
  %i.eo = tail call noundef float @llvm.fmuladd.f32(float %i.ej, float %i.dc, float %i.en) ; 2 uses
  %i.ep = tail call float @llvm.fmuladd.f32(float %i.eg, float %i.da, float %i.ea)
  %i.eq = tail call noundef float @llvm.fmuladd.f32(float %i.dz, float %i.dc, float %i.ep) ; 2 uses
  %i.er = tail call float @llvm.fmuladd.f32(float %i.eh, float %i.da, float %i.eb)
  %i.es = insertelement <4 x float> poison, float %i.er, i64 0
  %i.et = insertelement <4 x float> %i.es, float %i.ei, i64 1
  %i.eu = insertelement <4 x float> %i.et, float %i.dx, i64 2
  %i.ev = insertelement <4 x float> %i.eu, float %i.dy, i64 3
  %i.ew = fmul <4 x float> %i.z, %i.ev
  %i.ex = insertelement <4 x float> poison, float %i.el, i64 0
  %i.ey = insertelement <4 x float> %i.ex, float %i.ef, i64 1
  %i.ez = insertelement <4 x float> %i.ey, float %i.eg, i64 2
  %i.fa = insertelement <4 x float> %i.ez, float %i.eh, i64 3
  %i.fb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fa, <4 x float> %i.de, <4 x float> %i.ew) ; 3 uses
  %i.fc = fmul float %.sroa.6130.0.copyload, %i.ei
  %i.fd = insertelement <4 x float> poison, float %i.ef, i64 0
  %i.fe = insertelement <4 x float> %i.fd, float %i.ej, i64 1
  %i.ff = insertelement <4 x float> %i.fe, float %i.dz, i64 2
  %i.fg = insertelement <4 x float> %i.ff, float %i.el, i64 3
  %i.fh = insertelement <4 x float> %i.fb, float %i.fc, i64 0
  %i.fi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ac, <4 x float> %i.fg, <4 x float> %i.fh) ; 4 uses
  %i.fj = extractelement <4 x float> %i.fi, i64 1
  %i.fk = fadd float %i.fj, %i.eo
  %i.fl = extractelement <4 x float> %i.fi, i64 2
  %i.fm = fadd float %i.fl, %i.eq
  %i.fn = extractelement <4 x float> %i.fb, i64 0
  %shift = shufflevector <4 x float> %i.fi, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop188 = fadd <4 x float> %shift, %i.fb
  %i.fo = extractelement <4 x float> %foldExtExtBinop188, i64 0
  %i.fp = extractelement <4 x float> %i.fi, i64 0
  %i.fq = tail call noundef float @llvm.fmuladd.f32(float %.sroa.8.0.copyload, float %i.ej, float %i.fp)
  %i.fr = fmul float %.sroa.6130.0.copyload, %i.dx
  %i.fs = tail call float @llvm.fmuladd.f32(float %.sroa.0128.0.copyload, float %i.eg, float %i.fr)
  %i.ft = tail call noundef float @llvm.fmuladd.f32(float %.sroa.8.0.copyload, float %i.dz, float %i.fs)
  %i.fu = fmul float %.sroa.6130.0.copyload, %i.dy
  %i.fv = tail call float @llvm.fmuladd.f32(float %.sroa.0128.0.copyload, float %i.eh, float %i.fu)
  %i.fw = tail call noundef float @llvm.fmuladd.f32(float %.sroa.8.0.copyload, float %i.el, float %i.fv)
  %i.fx = fadd float %i.fq, %i.eo
  %i.fy = fadd float %i.ft, %i.eq
  %i.fz = fadd float %i.fw, %i.fn
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !62
  %i.gc = load ptr, ptr %i.g, align 8, !tbaa !113
  %i.gd = sext i32 %i.gb to i64
  %i.ge = getelementptr inbounds [96 x i8], ptr %i.gc, i64 %i.gd ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 72
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !67 ; 2 uses
  %.not71.i = icmp sgt i32 %i.gg, 0
  br i1 %.not71.i, label %.lr.ph.i, label %_Z9rayConvexRK9b3Vector3S1_RK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayI9b3GpuFaceERfRS_.exit.thread

.lr.ph.i:                                         ; preds = %_Z16sphere_intersectRK9b3Vector3fS1_S1_Rf.exit.thread
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 68
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !68
  %i.gj = load ptr, ptr %i.h, align 8, !tbaa !72
  %i.gk = sext i32 %i.gi to i64
  %wide.trip.count.i = zext nneg i32 %i.gg to i64
  %invariant.gep.i = getelementptr [32 x i8], ptr %i.gj, i64 %i.gk
  br label %bb.j

bb.i:                                             ; preds = %bb.p
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.j, !llvm.loop !0

bb.j:                                             ; preds = %bb.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.i ] ; 2 uses
  %.sroa.0.075.i = phi <2 x float> [ zeroinitializer, %.lr.ph.i ], [ %.sroa.0.2.i, %bb.i ] ; 3 uses
  %.sroa.5.074.i = phi <2 x float> [ zeroinitializer, %.lr.ph.i ], [ %.sroa.5.2.i, %bb.i ] ; 3 uses
  %.04273.i = phi float [ -1.000000e-01, %.lr.ph.i ], [ %.2.i, %bb.i ] ; 4 uses
  %.04472.i = phi float [ %.1, %.lr.ph.i ], [ %.246.i, %bb.i ] ; 5 uses
  %gep.i = getelementptr [32 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i ; 5 uses
  %i.gl = load float, ptr %gep.i, align 16, !tbaa !62 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %gep.i, i64 4
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !62 ; 2 uses
  %i.go = fmul float %i.fm, %i.gn
  %i.gp = tail call float @llvm.fmuladd.f32(float %i.fk, float %i.gl, float %i.go)
  %i.gq = getelementptr inbounds nuw i8, ptr %gep.i, i64 8 ; 2 uses
  %i.gr = load float, ptr %i.gq, align 8, !tbaa !62 ; 2 uses
  %i.gs = tail call noundef float @llvm.fmuladd.f32(float %i.fo, float %i.gr, float %i.gp)
  %i.gt = getelementptr inbounds nuw i8, ptr %gep.i, i64 12
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !62 ; 2 uses
  %i.gv = fadd float %i.gu, %i.gs                 ; 5 uses
  %i.gw = fmul float %i.fy, %i.gn
  %i.gx = tail call float @llvm.fmuladd.f32(float %i.fx, float %i.gl, float %i.gw)
  %i.gy = tail call noundef float @llvm.fmuladd.f32(float %i.fz, float %i.gr, float %i.gx)
  %i.gz = fadd float %i.gu, %i.gy                 ; 4 uses
  %i.ha = fcmp olt float %i.gv, 0.000000e+00
  br i1 %i.ha, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.hb = fcmp ult float %i.gz, 0.000000e+00
  br i1 %i.hb, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.hc = fsub float %i.gv, %i.gz
  %i.hd = fdiv float %i.gv, %i.hc                 ; 2 uses
  %i.he = fcmp ogt float %.04472.i, %i.hd
  %.145.i = select i1 %i.he, float %i.hd, float %.04472.i
  br label %bb.p

bb.m:                                             ; preds = %bb.j
  %i.hf = fcmp olt float %i.gz, 0.000000e+00
  br i1 %i.hf, label %bb.n, label %_Z9rayConvexRK9b3Vector3S1_RK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayI9b3GpuFaceERfRS_.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.hg = fsub float %i.gv, %i.gz
  %i.hh = fdiv float %i.gv, %i.hg                 ; 2 uses
  %i.hi = fcmp ugt float %.04273.i, %i.hh
  br i1 %i.hi, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %gep.i, align 16
  %.sroa.5.0.copyload.i = load <2 x float>, ptr %i.gq, align 8, !tbaa !62
  %.sroa.5.12.vec.insert.i = insertelement <2 x float> %.sroa.5.0.copyload.i, float 0.000000e+00, i64 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.l, %bb.k
  %.246.i = phi float [ %.145.i, %bb.l ], [ %.04472.i, %bb.k ], [ %.04472.i, %bb.o ], [ %.04472.i, %bb.n ] ; 2 uses
  %.2.i = phi float [ %.04273.i, %bb.l ], [ %.04273.i, %bb.k ], [ %i.hh, %bb.o ], [ %.04273.i, %bb.n ] ; 4 uses
  %.sroa.5.2.i = phi <2 x float> [ %.sroa.5.074.i, %bb.l ], [ %.sroa.5.074.i, %bb.k ], [ %.sroa.5.12.vec.insert.i, %bb.o ], [ %.sroa.5.074.i, %bb.n ] ; 2 uses
  %.sroa.0.2.i = phi <2 x float> [ %.sroa.0.075.i, %bb.l ], [ %.sroa.0.075.i, %bb.k ], [ %.sroa.0.0.copyload.i, %bb.o ], [ %.sroa.0.075.i, %bb.n ] ; 2 uses
  %i.hj = fcmp ugt float %.246.i, %.2.i
  br i1 %i.hj, label %bb.i, label %_Z9rayConvexRK9b3Vector3S1_RK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayI9b3GpuFaceERfRS_.exit.thread

._crit_edge.i:                                    ; preds = %bb.i
  %i.hk = fcmp olt float %.2.i, 0.000000e+00
  %i.hl = trunc nuw nsw i64 %indvars.iv to i32
  br i1 %i.hk, label %_Z9rayConvexRK9b3Vector3S1_RK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayI9b3GpuFaceERfRS_.exit.thread, label %_Z9rayConvexRK9b3Vector3S1_RK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayI9b3GpuFaceERfRS_.exit

_Z9rayConvexRK9b3Vector3S1_RK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayI9b3GpuFaceERfRS_.exit.thread: ; preds = %bb.p, %bb.m, %._crit_edge.i, %_Z16sphere_intersectRK9b3Vector3fS1_S1_Rf.exit.thread
  br label %_Z9rayConvexRK9b3Vector3S1_RK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayI9b3GpuFaceERfRS_.exit

bb.q:                                             ; preds = %bb.d
  %.b = load i1, ptr @_ZZN12b3GpuRaycast12castRaysHostERK20b3AlignedObjectArrayI9b3RayInfoERS0_I8b3RayHitEiPK15b3RigidBodyDataiPK12b3CollidablePK28b3GpuNarrowPhaseInternalDataE4once, align 1
  br i1 %.b, label %_Z9rayConvexRK9b3Vector3S1_RK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayI9b3GpuFaceERfRS_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i1 true, ptr @_ZZN12b3GpuRaycast12castRaysHostERK20b3AlignedObjectArrayI9b3RayInfoERS0_I8b3RayHitEiPK15b3RigidBodyDataiPK12b3CollidablePK28b3GpuNarrowPhaseInternalDataE4once, align 1
  invoke void (ptr, ...) @b3OutputWarningMessageVarArgsInternal(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 234)
          to label %bb.s unwind label %bb.h

bb.s:                                             ; preds = %bb.r
  invoke void (ptr, ...) @b3OutputWarningMessageVarArgsInternal(ptr noundef nonnull @.str.8)
          to label %_Z9rayConvexRK9b3Vector3S1_RK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayI9b3GpuFaceERfRS_.exit unwind label %bb.h

_Z9rayConvexRK9b3Vector3S1_RK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayI9b3GpuFaceERfRS_.exit: ; preds = %_Z9rayConvexRK9b3Vector3S1_RK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayI9b3GpuFaceERfRS_.exit.thread, %._crit_edge.i, %bb.q, %bb.s
  %.2142 = phi float [ %.0141157, %bb.q ], [ %.0141157, %bb.s ], [ %.1, %_Z9rayConvexRK9b3Vector3S1_RK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayI9b3GpuFaceERfRS_.exit.thread ], [ %.2.i, %._crit_edge.i ] ; 6 uses
  %.sroa.6123.2 = phi <2 x float> [ %.sroa.6123.0158, %bb.q ], [ %.sroa.6123.0158, %bb.s ], [ %.sroa.6123.1, %_Z9rayConvexRK9b3Vector3S1_RK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayI9b3GpuFaceERfRS_.exit.thread ], [ %.sroa.5.2.i, %._crit_edge.i ] ; 2 uses
  %.sroa.0122.2 = phi <2 x float> [ %.sroa.0122.0159, %bb.q ], [ %.sroa.0122.0159, %bb.s ], [ %.sroa.0122.1, %_Z9rayConvexRK9b3Vector3S1_RK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayI9b3GpuFaceERfRS_.exit.thread ], [ %.sroa.0.2.i, %._crit_edge.i ] ; 2 uses
  %.4 = phi i32 [ %.056160, %bb.q ], [ %.056160, %bb.s ], [ %.2, %_Z9rayConvexRK9b3Vector3S1_RK22b3ConvexPolyhedronDataRK20b3AlignedObjectArrayI9b3GpuFaceERfRS_.exit.thread ], [ %i.hl, %._crit_edge.i ] ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN13b3OpenCLArrayI9b3RayInfoED0Ev:bb.a

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #21, !inline_history !228
  unreachable

_ZN13b3OpenCLArrayI9b3RayInfoED2Ev.exit:          ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #20
  ret void
}

declare void @b3OutputErrorMessageVarArgsInternal(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13b3OpenCLArrayI8b3RayHitED2Ev(ptr noundef nonnull align 8 dead_on_return(50) dereferenceable(50) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV13b3OpenCLArrayI8b3RayHitE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94   ; 2 uses
  %.not.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i8, ptr %i.c, align 8, !range !91
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i = select i1 %.not.i, i1 %i.e, i1 false
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @__clewReleaseMemObject, align 8, !tbaa !61
  %i.g = invoke i32 %i.f(ptr noundef nonnull %i.b)
          to label %bb.c unwind label %bb.d, !inline_history !229 ; 0 uses

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #21
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13b3OpenCLArrayI8b3RayHitED0Ev(ptr noundef nonnull align 8 dereferenceable(50) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV13b3OpenCLArrayI8b3RayHitE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94   ; 2 uses
  %.not.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i8, ptr %i.c, align 8, !range !91
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i.i = select i1 %.not.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i.i, label %bb.b, label %_ZN13b3OpenCLArrayI8b3RayHitED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @__clewReleaseMemObject, align 8, !tbaa !61
  %i.g = invoke i32 %i.f(ptr noundef nonnull %i.b)
          to label %_ZN13b3OpenCLArrayI8b3RayHitED2Ev.exit unwind label %bb.c, !inline_history !230 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #21, !inline_history !231
  unreachable

_ZN13b3OpenCLArrayI8b3RayHitED2Ev.exit:           ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13b3OpenCLArrayIiED2Ev(ptr noundef nonnull align 8 dead_on_return(50) dereferenceable(50) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV13b3OpenCLArrayIiE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88   ; 2 uses
  %.not.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i8, ptr %i.c, align 8, !range !91
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i = select i1 %.not.i, i1 %i.e, i1 false
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @__clewReleaseMemObject, align 8, !tbaa !61
  %i.g = invoke i32 %i.f(ptr noundef nonnull %i.b)
          to label %bb.c unwind label %bb.d, !inline_history !232 ; 0 uses

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #21
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13b3OpenCLArrayIiED0Ev(ptr noundef nonnull align 8 dereferenceable(50) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV13b3OpenCLArrayIiE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88   ; 2 uses
  %.not.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i8, ptr %i.c, align 8, !range !91
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i.i = select i1 %.not.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i.i, label %bb.b, label %_ZN13b3OpenCLArrayIiED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @__clewReleaseMemObject, align 8, !tbaa !61
  %i.g = invoke i32 %i.f(ptr noundef nonnull %i.b)
          to label %_ZN13b3OpenCLArrayIiED2Ev.exit unwind label %bb.c, !inline_history !233 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #21, !inline_history !234
  unreachable

_ZN13b3OpenCLArrayIiED2Ev.exit:                   ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13b3OpenCLArrayI6b3Int2ED2Ev(ptr noundef nonnull align 8 dead_on_return(50) dereferenceable(50) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV13b3OpenCLArrayI6b3Int2E, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !90   ; 2 uses
  %.not.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i8, ptr %i.c, align 8, !range !91
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i = select i1 %.not.i, i1 %i.e, i1 false
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @__clewReleaseMemObject, align 8, !tbaa !61
  %i.g = invoke i32 %i.f(ptr noundef nonnull %i.b)
          to label %bb.c unwind label %bb.d, !inline_history !235 ; 0 uses

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #21
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13b3OpenCLArrayI6b3Int2ED0Ev(ptr noundef nonnull align 8 dereferenceable(50) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV13b3OpenCLArrayI6b3Int2E, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !90   ; 2 uses
  %.not.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i8, ptr %i.c, align 8, !range !91
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i.i = select i1 %.not.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i.i, label %bb.b, label %_ZN13b3OpenCLArrayI6b3Int2ED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @__clewReleaseMemObject, align 8, !tbaa !61
  %i.g = invoke i32 %i.f(ptr noundef nonnull %i.b)
          to label %_ZN13b3OpenCLArrayI6b3Int2ED2Ev.exit unwind label %bb.c, !inline_history !236 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #21, !inline_history !237
  unreachable

_ZN13b3OpenCLArrayI6b3Int2ED2Ev.exit:             ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #20
  ret void
}

declare noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @_Z21b3AlignedFreeInternalPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { builtin allocsize(0) }
attributes #19 = { nounwind }
attributes #20 = { builtin nounwind }
attributes #21 = { noreturn nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !73}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"vtable pointer", !5, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"p1 _ZTS24b3GpuRaycastInternalData", !12, i64 0}
!14 = !{!"_ZTS12b3GpuRaycast", !13, i64 8}
!15 = !{!14, !13, i64 8}
!16 = !{!"p1 _ZTS11_cl_context", !12, i64 0}
!17 = !{!"p1 _ZTS13_cl_device_id", !12, i64 0}
!18 = !{!"p1 _ZTS17_cl_command_queue", !12, i64 0}
!19 = !{!"p1 _ZTS10_cl_kernel", !12, i64 0}
!20 = !{!"p1 _ZTS22b3GpuParallelLinearBvh", !12, i64 0}
!21 = !{!"p1 _ZTS15b3RadixSort32CL", !12, i64 0}
!22 = !{!"p1 _ZTS8b3FillCL", !12, i64 0}
!23 = !{!"p1 _ZTS13b3OpenCLArrayI9b3RayInfoE", !12, i64 0}
!24 = !{!"p1 _ZTS13b3OpenCLArrayI8b3RayHitE", !12, i64 0}
!25 = !{!"p1 _ZTS13b3OpenCLArrayIiE", !12, i64 0}
!26 = !{!"p1 _ZTS13b3OpenCLArrayI6b3Int2E", !12, i64 0}
!27 = !{!"_ZTS24b3GpuRaycastInternalData", !16, i64 0, !17, i64 8, !18, i64 16, !19, i64 24, !19, i64 32, !19, i64 40, !20, i64 48, !21, i64 56, !22, i64 64, !23, i64 72, !24, i64 80, !25, i64 88, !25, i64 96, !25, i64 104, !26, i64 112, !7, i64 120}
!28 = !{!27, !18, i64 16}
!29 = !{!27, !20, i64 48}
!30 = !{!27, !21, i64 56}
!31 = !{!27, !22, i64 64}
!32 = !{!"long", !6, i64 0}
!33 = !{!"p1 _ZTS7_cl_mem", !12, i64 0}
!34 = !{!"bool", !6, i64 0}
!35 = !{!"_ZTS13b3OpenCLArrayI9b3RayInfoE", !32, i64 8, !32, i64 16, !33, i64 24, !16, i64 32, !18, i64 40, !34, i64 48, !34, i64 49}
!36 = !{!35, !16, i64 32}
!37 = !{!35, !18, i64 40}
!38 = !{!35, !34, i64 49}
!39 = !{!27, !23, i64 72}
!40 = !{!"_ZTS13b3OpenCLArrayI8b3RayHitE", !32, i64 8, !32, i64 16, !33, i64 24, !16, i64 32, !18, i64 40, !34, i64 48, !34, i64 49}
!41 = !{!40, !16, i64 32}
!42 = !{!40, !18, i64 40}
!43 = !{!40, !34, i64 49}
!44 = !{!27, !24, i64 80}
!45 = !{!"_ZTS13b3OpenCLArrayIiE", !32, i64 8, !32, i64 16, !33, i64 24, !16, i64 32, !18, i64 40, !34, i64 48, !34, i64 49}
!46 = !{!45, !16, i64 32}
!47 = !{!45, !18, i64 40}
!48 = !{!45, !34, i64 49}
!49 = !{!27, !25, i64 88}
!50 = !{!27, !25, i64 96}
!51 = !{!27, !25, i64 104}
!52 = !{!"_ZTS13b3OpenCLArrayI6b3Int2E", !32, i64 8, !32, i64 16, !33, i64 24, !16, i64 32, !18, i64 40, !34, i64 48, !34, i64 49}
!53 = !{!52, !16, i64 32}
!54 = !{!52, !18, i64 40}
!55 = !{!52, !34, i64 49}
!56 = !{!27, !26, i64 112}
!57 = !{!7, !7, i64 0}
!58 = !{!27, !19, i64 24}
!59 = !{!27, !19, i64 32}
!60 = !{!27, !19, i64 40}
!61 = !{!12, !12, i64 0}
!62 = !{!6, !6, i64 0}
!63 = !{!"float", !6, i64 0}
!64 = !{!63, !63, i64 0}
!65 = !{!"_ZTS9b3Vector3", !6, i64 0}
!66 = !{!"_ZTS22b3ConvexPolyhedronData", !65, i64 0, !65, i64 16, !65, i64 32, !65, i64 48, !63, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92}
!67 = !{!66, !7, i64 72}
!68 = !{!66, !7, i64 68}
!69 = !{!"_ZTS18b3AlignedAllocatorI9b3GpuFaceLj16EE"}
!70 = !{!"p1 _ZTS9b3GpuFace", !12, i64 0}
!71 = !{!"_ZTS20b3AlignedObjectArrayI9b3GpuFaceE", !69, i64 0, !7, i64 4, !7, i64 8, !70, i64 16, !34, i64 24}
!72 = !{!71, !70, i64 16}
!73 = !{!"llvm.loop.mustprogress"}
!74 = !{!"_ZTS18b3AlignedAllocatorI9b3RayInfoLj16EE"}
!75 = !{!"p1 _ZTS9b3RayInfo", !12, i64 0}
!76 = !{!"_ZTS20b3AlignedObjectArrayI9b3RayInfoE", !74, i64 0, !7, i64 4, !7, i64 8, !75, i64 16, !34, i64 24}
!77 = !{!76, !7, i64 4}
!78 = !{!76, !75, i64 16}
!79 = !{!"_ZTS18b3AlignedAllocatorI8b3RayHitLj16EE"}
!80 = !{!"p1 _ZTS8b3RayHit", !12, i64 0}
!81 = !{!"_ZTS20b3AlignedObjectArrayI8b3RayHitE", !79, i64 0, !7, i64 4, !7, i64 8, !80, i64 16, !34, i64 24}
!82 = !{!81, !80, i64 16}
!83 = !{!"_ZTS18b3AlignedAllocatorI22b3ConvexPolyhedronDataLj16EE"}
!84 = !{!"p1 _ZTS22b3ConvexPolyhedronData", !12, i64 0}
!85 = !{!"_ZTS20b3AlignedObjectArrayI22b3ConvexPolyhedronDataE", !83, i64 0, !7, i64 4, !7, i64 8, !84, i64 16, !34, i64 24}
!86 = !{!81, !7, i64 4}
!87 = !{!45, !32, i64 16}
!88 = !{!45, !33, i64 24}
!89 = !{!52, !32, i64 8}
!90 = !{!52, !33, i64 24}
!91 = !{i8 0, i8 2}
!92 = !{}
!93 = !{!35, !33, i64 24}
!94 = !{!40, !33, i64 24}
!95 = !{!40, !32, i64 8}
!96 = !{!40, !32, i64 16}
!97 = !{!27, !16, i64 0}
!98 = !{!27, !17, i64 8}
!99 = !{!35, !34, i64 48}
!100 = !{!40, !34, i64 48}
!101 = !{!45, !34, i64 48}
!102 = !{!52, !34, i64 48}
!103 = distinct !{!103, !73}
!104 = distinct !{!104, !73}
!105 = !{!"_ZTS8b3RayHit", !63, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !65, i64 16, !65, i64 32}
!106 = !{!105, !63, i64 0}
!107 = !{!"_ZTS10b3QuadWord", !6, i64 0}
!108 = !{!"_ZTS12b3Quaternion", !107, i64 0}
!109 = !{!"_ZTS15b3RigidBodyData", !65, i64 0, !108, i64 16, !65, i64 32, !65, i64 48, !7, i64 64, !63, i64 68, !63, i64 72, !63, i64 76}
!110 = !{!109, !7, i64 64}
!111 = !{!"_ZTS12b3Collidable", !6, i64 0, !6, i64 4, !7, i64 8, !6, i64 12}
!112 = !{!111, !7, i64 8}
!113 = !{!85, !84, i64 16}
!114 = !{!105, !7, i64 4}
!115 = distinct !{null}
!116 = distinct !{null}
!117 = distinct !{!117, !73}
!118 = distinct !{null}
!119 = distinct !{null}
!120 = !{!"_ZTS14b3BufferInfoCL", !33, i64 0, !34, i64 8}
!121 = !{!120, !33, i64 0}
!122 = !{!120, !34, i64 8}
!123 = !{!"_ZTS18b3AlignedAllocatorI15b3KernelArgDataLj16EE"}
!124 = !{!"p1 _ZTS15b3KernelArgData", !12, i64 0}
!125 = !{!"_ZTS20b3AlignedObjectArrayI15b3KernelArgDataE", !123, i64 0, !7, i64 4, !7, i64 8, !124, i64 16, !34, i64 24}
!126 = !{!"p1 omnipotent char", !12, i64 0}
!127 = !{!"_ZTS18b3AlignedAllocatorIP13b3OpenCLArrayIhELj16EE"}
!128 = !{!"any p2 pointer", !12, i64 0}
!129 = !{!"p2 _ZTS13b3OpenCLArrayIhE", !128, i64 0}
!130 = !{!"_ZTS20b3AlignedObjectArrayIP13b3OpenCLArrayIhEE", !127, i64 0, !7, i64 4, !7, i64 8, !129, i64 16, !34, i64 24}
!131 = !{!"_ZTS12b3LauncherCL", !18, i64 8, !19, i64 16, !7, i64 24, !125, i64 32, !7, i64 64, !34, i64 68, !126, i64 72, !130, i64 80}
!132 = !{!131, !34, i64 68}
!133 = !{!131, !7, i64 24}
!134 = !{!125, !7, i64 4}
!135 = !{!125, !7, i64 8}
!136 = !{!125, !124, i64 16}
!137 = !{i64 0, i64 4, !57, i64 4, i64 4, !57, i64 8, i64 4, !57, i64 12, i64 4, !57, i64 16, i64 16, !62}
!138 = !{!125, !34, i64 24}
!139 = !{!131, !7, i64 64}
!140 = !{!131, !19, i64 16}
!141 = !{!32, !32, i64 0}
!142 = !{!131, !18, i64 8}
!143 = !{!"p1 _ZTS20b3AlignedObjectArrayIP15b3ConvexUtilityE", !12, i64 0}
!144 = !{!"_ZTS18b3AlignedAllocatorI9b3Vector3Lj16EE"}
!145 = !{!"p1 _ZTS9b3Vector3", !12, i64 0}
!146 = !{!"_ZTS20b3AlignedObjectArrayI9b3Vector3E", !144, i64 0, !7, i64 4, !7, i64 8, !145, i64 16, !34, i64 24}
!147 = !{!"_ZTS18b3AlignedAllocatorIiLj16EE"}
!148 = !{!"p1 int", !12, i64 0}
!149 = !{!"_ZTS20b3AlignedObjectArrayIiE", !147, i64 0, !7, i64 4, !7, i64 8, !148, i64 16, !34, i64 24}
!150 = !{!"p1 _ZTS13b3OpenCLArrayI22b3ConvexPolyhedronDataE", !12, i64 0}
!151 = !{!"p1 _ZTS13b3OpenCLArrayI9b3Vector3E", !12, i64 0}
!152 = !{!"p1 _ZTS13b3OpenCLArrayI6b3Int4E", !12, i64 0}
!153 = !{!"_ZTS18b3AlignedAllocatorI15b3GpuChildShapeLj16EE"}
!154 = !{!"p1 _ZTS15b3GpuChildShape", !12, i64 0}
!155 = !{!"_ZTS20b3AlignedObjectArrayI15b3GpuChildShapeE", !153, i64 0, !7, i64 4, !7, i64 8, !154, i64 16, !34, i64 24}
!156 = !{!"p1 _ZTS13b3OpenCLArrayI15b3GpuChildShapeE", !12, i64 0}
!157 = !{!"p1 _ZTS13b3OpenCLArrayI9b3GpuFaceE", !12, i64 0}
!158 = !{!"p1 _ZTS15GpuSatCollision", !12, i64 0}
!159 = !{!"p1 _ZTS20b3AlignedObjectArrayI10b3Contact4E", !12, i64 0}
!160 = !{!"p1 _ZTS20b3AlignedObjectArrayI15b3RigidBodyDataE", !12, i64 0}
!161 = !{!"p1 _ZTS13b3OpenCLArrayI15b3RigidBodyDataE", !12, i64 0}
end_hunk_1
