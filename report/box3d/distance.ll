Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/distance?download=true
inline.NumInlined: 318
inline.NumDeleted: 39
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.b3DistanceOutput = type { %struct.b3Vec3, %struct.b3Vec3, %struct.b3Vec3, float, i32, i32 }
%struct.b3Vec3 = type { float, float, float }
%struct.b3Simplex = type { [4 x %struct.b3SimplexVertex], i32 }
%struct.b3SimplexVertex = type { %struct.b3Vec3, %struct.b3Vec3, %struct.b3Vec3, float, i32, i32 }
%struct.b3CastOutput = type { %struct.b3Vec3, %struct.b3Vec3, float, i32, i32, i32, i32, i8 }
%struct.b3SimplexCache = type { float, i16, [4 x i8], [4 x i8] }
%struct.b3DistanceInput = type { %struct.b3ShapeProxy, %struct.b3ShapeProxy, %struct.b3Transform, i8 }
%struct.b3ShapeProxy = type { ptr, i32, float }
%struct.b3Transform = type { %struct.b3Vec3, %struct.b3Quat }
%struct.b3Quat = type { %struct.b3Vec3, float }
%struct.b3TOIOutput = type { i32, %struct.b3Vec3, %struct.b3Vec3, float, float, i32, i32, i32, i8 }
%struct.b3SeparationFunction = type { ptr, ptr, %struct.b3Sweep, %struct.b3Sweep, %struct.b3Vec3, %struct.b3Vec3, i32 }
%struct.b3Sweep = type { %struct.b3Vec3, %struct.b3Vec3, %struct.b3Vec3, %struct.b3Quat, %struct.b3Quat }

@.str = private unnamed_addr constant [32 x i8] c"pointA[%d] = {%.9f, %.9f, %.9f}\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"radiusA = %.9f\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"pointB[%d] = {%.9f, %.9f, %.9f}\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"radiusB = %.9f\00", align 1
@.str.4 = private unnamed_addr constant [60 x i8] c"transform = {{%.9f, %.9f, %.9f}, {{%.9f, %.9f, %.9f}, %.9f}\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"t = {%.9f, %.9f, %.9f}\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"maxFraction = %.9f, canEncroach = %d\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @b3GetProxySupport(ptr nofree noundef readonly captures(none) %0, <2 x float> %1, float %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !15     ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !16
  %i.d = icmp sgt i32 %i.b, 1
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.017.0.copyload = load <2 x float>, ptr %i.c, align 4
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %bb.b ]
  ret i32 %.0.lcssa

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %.033 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.b ]
  %.02732 = phi float [ 0.000000e+00, %.lr.ph ], [ %.128, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw [12 x i8], ptr %i.c, i64 %indvars.iv ; 2 uses
  %.sroa.07.0.copyload = load <2 x float>, ptr %i.e, align 4
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.28.0.copyload = load float, ptr %.sroa.28.0..sroa_idx, align 4
  %i.f = fsub float %.sroa.28.0.copyload, %.sroa.4.0.copyload
  %i.g = fsub <2 x float> %.sroa.07.0.copyload, %.sroa.017.0.copyload
  %i.h = fmul <2 x float> %1, %i.g                ; 2 uses
  %shift = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.h, %shift
  %i.i = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.j = fmul float %2, %i.f
  %i.k = fadd float %i.j, %i.i                    ; 2 uses
  %i.l = fcmp ogt float %i.k, %.02732             ; 2 uses
  %.128 = select i1 %i.l, float %i.k, float %.02732
  %i.m = trunc nuw nsw i64 %indvars.iv to i32
  %.1 = select i1 %i.l, i32 %i.m, i32 %.033       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define hidden i32 @b3GetPointSupport(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, <2 x float> %2, float %3) local_unnamed_addr #2 {
bb.a:
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !16
  %i.a = icmp sgt i32 %1, 1
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.017.0.copyload = load <2 x float>, ptr %0, align 4
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %bb.b ]
  ret i32 %.0.lcssa

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %.031 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.b ]
  %.02530 = phi float [ 0.000000e+00, %.lr.ph ], [ %.126, %bb.b ] ; 2 uses
  %i.b = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %.sroa.07.0.copyload = load <2 x float>, ptr %i.b, align 4
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.28.0.copyload = load float, ptr %.sroa.28.0..sroa_idx, align 4
  %i.c = fsub float %.sroa.28.0.copyload, %.sroa.4.0.copyload
  %i.d = fsub <2 x float> %.sroa.07.0.copyload, %.sroa.017.0.copyload
  %i.e = fmul <2 x float> %2, %i.d                ; 2 uses
  %shift = shufflevector <2 x float> %i.e, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.e, %shift
  %i.f = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.g = fmul float %3, %i.c
  %i.h = fadd float %i.g, %i.f                    ; 2 uses
  %i.i = fcmp ogt float %i.h, %.02530             ; 2 uses
  %.126 = select i1 %i.i, float %i.h, float %.02530
  %i.j = trunc nuw nsw i64 %indvars.iv to i32
  %.1 = select i1 %i.i, i32 %i.j, i32 %.031       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !1
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @b3ShapeDistance(ptr dead_on_unwind noalias nofree writable sret(%struct.b3DistanceOutput) align 4 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef writeonly captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #3 {
bb.a:
  %.sroa.0293.i = alloca { %struct.b3Vec3, %struct.b3Vec3 }, align 8 ; 7 uses
  %.sroa.24330.i = alloca { float, i32, i32 }, align 8 ; 7 uses
  %i.a = alloca [5 x float], align 16             ; 9 uses
  %.sroa.094.i = alloca { %struct.b3Vec3, %struct.b3Vec3 }, align 8 ; 5 uses
  %.sroa.12111.i = alloca { float, i32, i32 }, align 8 ; 5 uses
  %5 = alloca %struct.b3Simplex, align 8          ; 72 uses
  %6 = alloca %struct.b3Simplex, align 4          ; 5 uses
  %7 = alloca %struct.b3Vec3, align 4             ; 4 uses
  %8 = alloca %struct.b3Vec3, align 4             ; 4 uses
  %9 = alloca %struct.b3Vec3, align 8             ; 6 uses
  %10 = alloca %struct.b3Vec3, align 8            ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0438.0.copyload = load <2 x float>, ptr %i.b, align 8 ; 3 uses
  %.sroa.6441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.6441.0.copyload = load float, ptr %.sroa.6441.0..sroa_idx, align 8, !tbaa !16 ; 3 uses
  %.sroa.9442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.9442.0.copyload = load <2 x float>, ptr %.sroa.9442.0..sroa_idx, align 4 ; 6 uses
  %.sroa.10443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.10443.0.copyload = load <2 x float>, ptr %.sroa.10443.0..sroa_idx, align 4 ; 4 uses
  %i.c = shufflevector <2 x float> %.sroa.9442.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.d = fmul <2 x float> %.sroa.9442.0.copyload, %.sroa.9442.0.copyload ; 2 uses
  %i.e = shufflevector <2 x float> %i.d, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.f = shufflevector <2 x float> %.sroa.10443.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.g = fmul <2 x float> %.sroa.9442.0.copyload, %i.f ; 4 uses
  %i.h = shufflevector <2 x float> %.sroa.10443.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.i = fmul <2 x float> %i.c, %i.h              ; 4 uses
  %11 = shufflevector <2 x float> %.sroa.9442.0.copyload, <2 x float> %.sroa.10443.0.copyload, <3 x i32> <i32 0, i32 3, i32 2>
  %12 = shufflevector <2 x float> %.sroa.9442.0.copyload, <2 x float> %.sroa.10443.0.copyload, <3 x i32> <i32 1, i32 2, i32 2>
  %13 = fmul <3 x float> %11, %12                 ; 3 uses
  %14 = shufflevector <3 x float> %13, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %15 = fadd <2 x float> %i.e, %14
  %i.j = fmul <2 x float> %15, splat (float 2.000000e+00)
  %16 = extractelement <3 x float> %13, i64 0     ; 2 uses
  %17 = extractelement <3 x float> %13, i64 1     ; 2 uses
  %18 = fadd float %16, %17
  %19 = fsub float %16, %17
  %20 = insertelement <2 x float> poison, float %19, i64 0
  %21 = insertelement <2 x float> %20, float %18, i64 1
  %i.k = fmul <2 x float> %21, splat (float 2.000000e+00) ; 5 uses
  %i.l = fsub <2 x float> splat (float 1.000000e+00), %i.j ; 5 uses
  %foldExtExtBinop.a = fadd <2 x float> %i.g, %i.i
  %i.m = extractelement <2 x float> %foldExtExtBinop.a, i64 1
  %i.n = fmul float %i.m, 2.000000e+00            ; 4 uses
  %i.o = fadd <2 x float> %i.g, %i.i
  %i.p = fsub <2 x float> %i.g, %i.i
  %i.q = shufflevector <2 x float> %i.o, <2 x float> %i.p, <2 x i32> <i32 0, i32 3>
  %i.r = fmul <2 x float> %i.q, splat (float 2.000000e+00) ; 5 uses
  %foldExtExtBinop1028.a = fadd <2 x float> %i.d, %i.e
  %i.s = extractelement <2 x float> %foldExtExtBinop1028.a, i64 0
  %foldExtExtBinop1030 = fsub <2 x float> %i.g, %i.i
  %i.t = extractelement <2 x float> %foldExtExtBinop1030, i64 0
  %i.u = fmul float %i.s, 2.000000e+00
  %i.v = fmul float %i.t, 2.000000e+00            ; 4 uses
  %i.w = fsub float 1.000000e+00, %i.u            ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(196) %5, i8 0, i64 192, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.z = load i16, ptr %i.y, align 4, !tbaa !46   ; 3 uses
  %i.aa = zext i16 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 192 ; 30 uses
  store i32 %i.aa, ptr %i.ab, align 8, !tbaa !19
  %.sink59.i.sroa.gep = getelementptr inbounds nuw i8, ptr %5, i64 84 ; 33 uses
  %.sink59.i.sroa.gep733 = getelementptr inbounds nuw i8, ptr %5, i64 36 ; 36 uses
  %.not841 = icmp eq i16 %i.z, 0
  br i1 %.not841, label %thread-pre-split.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.ae = load ptr, ptr %1, align 8, !tbaa !15
  %i.af = load ptr, ptr %i.x, align 8, !tbaa !15
  %wide.trip.count = zext i16 %i.z to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i32, ptr %i.ab, align 8, !tbaa !19 ; 5 uses
  %i.ag = icmp sgt i32 %.pre, 0
  br i1 %i.ag, label %bb.c, label %thread-pre-split

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 %indvars.iv
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !47  ; 2 uses
  %i.aj = zext i8 %i.ai to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 %indvars.iv
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !47  ; 2 uses
  %i.am = zext i8 %i.al to i32
  %i.an = zext i8 %i.ai to i64
  %i.ao = getelementptr inbounds nuw [12 x i8], ptr %i.ae, i64 %i.an ; 2 uses
  %.sroa.0377.0.copyload = load <2 x float>, ptr %i.ao, align 4 ; 2 uses
  %.sroa.5379.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.5379.0.copyload = load float, ptr %.sroa.5379.0..sroa_idx, align 4, !tbaa !16 ; 2 uses
  %i.ap = zext i8 %i.al to i64
  %i.aq = getelementptr inbounds nuw [12 x i8], ptr %i.af, i64 %i.ap ; 2 uses
  %.sroa.0371.0.copyload = load <2 x float>, ptr %i.aq, align 4 ; 4 uses
  %.sroa.2372.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.2372.0.copyload = load float, ptr %.sroa.2372.0..sroa_idx, align 4 ; 2 uses
  %i.ar = shufflevector <2 x float> %.sroa.0371.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.03.0.vec.extract.i = extractelement <2 x float> %.sroa.0371.0.copyload, i64 0
  %i.as = fmul float %i.v, %.sroa.03.0.vec.extract.i
  %i.at = extractelement <2 x float> %.sroa.0371.0.copyload, i64 1
  %i.au = fmul float %i.n, %i.at
  %i.av = fadd float %i.as, %i.au
  %i.aw = fmul float %i.w, %.sroa.2372.0.copyload
  %i.ax = fadd float %i.aw, %i.av
  %i.ay = fmul <2 x float> %i.k, %i.ar
  %i.az = fmul <2 x float> %i.l, %.sroa.0371.0.copyload
  %i.ba = fadd <2 x float> %i.ay, %i.az
  %i.bb = insertelement <2 x float> poison, float %.sroa.2372.0.copyload, i64 0
  %i.bc = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bd = fmul <2 x float> %i.r, %i.bc
  %i.be = fadd <2 x float> %i.bd, %i.ba
  %i.bf = fadd <2 x float> %.sroa.0438.0.copyload, %i.be ; 2 uses
  %i.bg = fadd float %.sroa.6441.0.copyload, %i.ax ; 2 uses
  %i.bh = getelementptr inbounds nuw [48 x i8], ptr %5, i64 %indvars.iv ; 9 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  store i32 %i.aj, ptr %i.bi, align 8, !tbaa !48
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 44
  store i32 %i.am, ptr %i.bj, align 4, !tbaa !49
  store <2 x float> %.sroa.0377.0.copyload, ptr %i.bh, align 8
  %.sroa.5379.0..sroa_idx380 = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store float %.sroa.5379.0.copyload, ptr %.sroa.5379.0..sroa_idx380, align 8, !tbaa !16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  store <2 x float> %i.bf, ptr %i.bk, align 4
  %.sroa.5376.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 20
  store float %i.bg, ptr %.sroa.5376.0..sroa_idx, align 4, !tbaa !16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bm = fsub <2 x float> %i.bf, %.sroa.0377.0.copyload
  %i.bn = fsub float %i.bg, %.sroa.5379.0.copyload
  store <2 x float> %i.bm, ptr %i.bl, align 8
  %.sroa.4358.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  store float %i.bn, ptr %.sroa.4358.0..sroa_idx, align 8, !tbaa !16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 36
  store float 0.000000e+00, ptr %i.bo, align 4, !tbaa !22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !40

bb.c:                                             ; preds = %._crit_edge
  %i.bp = load float, ptr %2, align 4, !tbaa !50  ; 2 uses
  switch i32 %.pre, label %b3GetMetric.exit [
    i32 4, label %bb.f
    i32 2, label %bb.d
    i32 3, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.sroa.085.0.copyload.i = load <2 x float>, ptr %i.bq, align 8
  %.sroa.486.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 32
  %.sroa.486.0.copyload.i = load float, ptr %.sroa.486.0..sroa_idx.i, align 8, !tbaa !16
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 72
  %.sroa.083.0.copyload.i = load <2 x float>, ptr %i.br, align 8
  %.sroa.484.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 80
  %.sroa.484.0.copyload.i = load float, ptr %.sroa.484.0..sroa_idx.i, align 8, !tbaa !16
  %i.bs = fsub float %.sroa.484.0.copyload.i, %.sroa.486.0.copyload.i ; 2 uses
  %i.bt = fsub <2 x float> %.sroa.083.0.copyload.i, %.sroa.085.0.copyload.i ; 2 uses
  %i.bu = fmul <2 x float> %i.bt, %i.bt           ; 2 uses
  %shift1032 = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1033.a = fadd <2 x float> %i.bu, %shift1032
  %i.bv = extractelement <2 x float> %foldExtExtBinop1033.a, i64 0
  %i.bw = fmul float %i.bs, %i.bs
  %i.bx = fadd float %i.bw, %i.bv
  %sqrt.i.i.i = tail call float @llvm.sqrt.f32(float %i.bx)
  br label %b3GetMetric.exit

bb.e:                                             ; preds = %bb.c
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.sroa.077.0.copyload.i = load <2 x float>, ptr %i.by, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 32
  %.sroa.5.0.copyload.i = load float, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !16
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 72
  %.sroa.075.0.copyload.i = load <2 x float>, ptr %i.bz, align 8 ; 2 uses
  %.sroa.476.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 80
  %.sroa.476.0.copyload.i = load float, ptr %.sroa.476.0..sroa_idx.i, align 8, !tbaa !16
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 120
  %.sroa.073.0.copyload.i = load <2 x float>, ptr %i.ca, align 8 ; 2 uses
  %.sroa.474.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 128
  %.sroa.474.0.copyload.i = load float, ptr %.sroa.474.0..sroa_idx.i, align 8, !tbaa !16
  %i.cb = fsub <2 x float> %.sroa.075.0.copyload.i, %.sroa.077.0.copyload.i ; 2 uses
  %i.cc = shufflevector <2 x float> %.sroa.075.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cd = insertelement <2 x float> %i.cc, float %.sroa.476.0.copyload.i, i64 1
  %i.ce = shufflevector <2 x float> %.sroa.077.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cf = insertelement <2 x float> %i.ce, float %.sroa.5.0.copyload.i, i64 1 ; 2 uses
  %i.cg = fsub <2 x float> %i.cd, %i.cf           ; 2 uses
  %i.ch = fsub <2 x float> %.sroa.073.0.copyload.i, %.sroa.077.0.copyload.i ; 2 uses
  %i.ci = shufflevector <2 x float> %.sroa.073.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cj = insertelement <2 x float> %i.ci, float %.sroa.474.0.copyload.i, i64 1
  %i.ck = fsub <2 x float> %i.cj, %i.cf           ; 2 uses
  %shift1035 = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1036 = fmul <2 x float> %shift1035, %i.ch
  %shift1038 = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1039 = fmul <2 x float> %i.cb, %shift1038
  %foldExtExtBinop1041 = fsub <2 x float> %foldExtExtBinop1036, %foldExtExtBinop1039 ; 2 uses
  %i.cl = fmul <2 x float> %i.cb, %i.ck
  %i.cm = fmul <2 x float> %i.cg, %i.ch
  %i.cn = fsub <2 x float> %i.cl, %i.cm           ; 2 uses
  %foldExtExtBinop1043 = fmul <2 x float> %foldExtExtBinop1041, %foldExtExtBinop1041
  %i.co = fmul <2 x float> %i.cn, %i.cn           ; 2 uses
  %shift1045 = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1046 = fadd <2 x float> %shift1045, %foldExtExtBinop1043
  %foldExtExtBinop1048 = fadd <2 x float> %i.co, %foldExtExtBinop1046
  %i.cp = extractelement <2 x float> %foldExtExtBinop1048, i64 0
  %sqrt.i.i = tail call float @llvm.sqrt.f32(float %i.cp)
  %i.cq = fmul float %sqrt.i.i, 5.000000e-01
  br label %b3GetMetric.exit

bb.f:                                             ; preds = %bb.c
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.sroa.038.0.copyload.i = load <2 x float>, ptr %i.cr, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 32
  %.sroa.6.0.copyload.i = load float, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !16 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 72
  %.sroa.036.0.copyload.i = load <2 x float>, ptr %i.cs, align 8 ; 2 uses
  %.sroa.437.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 80
  %.sroa.437.0.copyload.i = load float, ptr %.sroa.437.0..sroa_idx.i, align 8, !tbaa !16
  %i.ct = getelementptr inbounds nuw i8, ptr %5, i64 120
  %.sroa.034.0.copyload.i = load <2 x float>, ptr %i.ct, align 8
  %.sroa.435.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 128
  %.sroa.435.0.copyload.i = load float, ptr %.sroa.435.0..sroa_idx.i, align 8, !tbaa !16
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 168
  %.sroa.033.0.copyload.i = load <2 x float>, ptr %i.cu, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 176
  %.sroa.4.0.copyload.i = load float, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !16
  %foldExtExtBinop1050 = fsub <2 x float> %.sroa.036.0.copyload.i, %.sroa.038.0.copyload.i
  %i.cv = extractelement <2 x float> %foldExtExtBinop1050, i64 1
  %foldExtExtBinop1052 = fsub <2 x float> %.sroa.036.0.copyload.i, %.sroa.038.0.copyload.i
  %i.cw = fsub float %.sroa.437.0.copyload.i, %.sroa.6.0.copyload.i
  %i.cx = fsub <2 x float> %.sroa.034.0.copyload.i, %.sroa.038.0.copyload.i ; 3 uses
  %i.cy = fsub float %.sroa.435.0.copyload.i, %.sroa.6.0.copyload.i ; 2 uses
  %i.cz = fsub <2 x float> %.sroa.033.0.copyload.i, %.sroa.038.0.copyload.i ; 3 uses
  %i.da = fsub float %.sroa.4.0.copyload.i, %.sroa.6.0.copyload.i ; 2 uses
  %i.db = extractelement <2 x float> %i.cz, i64 0
  %i.dc = fmul float %i.cy, %i.db
  %i.dd = extractelement <2 x float> %i.cx, i64 0
  %i.de = fmul float %i.dd, %i.da
  %i.df = fsub float %i.dc, %i.de
  %i.dg = shufflevector <2 x float> %i.cz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dh = insertelement <2 x float> %i.dg, float %i.da, i64 1
end_hunk_0
