Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box2d/original/manifold?download=true
inline.NumInlined: 279
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 14
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.b2Transform = type { %struct.b2Vec2, %struct.b2Rot }
%struct.b2Vec2 = type { float, float }
%struct.b2Rot = type { float, float }
%struct.b2LocalManifold = type { %struct.b2Vec2, [2 x %struct.b2LocalManifoldPoint], i32 }
%struct.b2LocalManifoldPoint = type { %struct.b2Vec2, float, i16 }
%struct.b2Capsule = type { %struct.b2Vec2, %struct.b2Vec2, float }
%struct.b2Polygon = type { [8 x %struct.b2Vec2], [8 x %struct.b2Vec2], %struct.b2Vec2, float, i32 }
%struct.b2SegmentDistanceResult = type { %struct.b2Vec2, %struct.b2Vec2, float, float, float }
%struct.b2DistanceInput = type { %struct.b2ShapeProxy, %struct.b2ShapeProxy, %struct.b2Transform, i8 }
%struct.b2ShapeProxy = type { [8 x %struct.b2Vec2], i32, float }
%struct.b2DistanceOutput = type { %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, float, i32, i32 }

@b2Transform_identity = internal unnamed_addr constant %struct.b2Transform { %struct.b2Vec2 zeroinitializer, %struct.b2Rot { float 1.000000e+00, float 0.000000e+00 } }, align 4

; Function Attrs: nounwind uwtable
define void @b2CollideCircles(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b2LocalManifold) align 4 captures(none) initializes((0, 44)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, <2 x float> %3, <2 x float> %4) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %0, i8 0, i64 44, i1 false)
  %.sroa.016.0.copyload = load <2 x float>, ptr %1, align 4, !tbaa !9 ; 2 uses
  %i.a = load <2 x float>, ptr %2, align 4        ; 2 uses
  %i.b = shufflevector <2 x float> %i.a, <2 x float> poison, <2 x i32> zeroinitializer
  %i.c = fmul <2 x float> %4, %i.b                ; 2 uses
  %i.d = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.e = shufflevector <2 x float> %i.a, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.f = fmul <2 x float> %i.d, %i.e              ; 2 uses
  %i.g = fsub <2 x float> %i.c, %i.f
  %i.h = fadd <2 x float> %i.c, %i.f
  %i.i = shufflevector <2 x float> %i.g, <2 x float> %i.h, <2 x i32> <i32 0, i32 3>
  %i.j = fadd <2 x float> %3, %i.i                ; 2 uses
  %i.k = fsub <2 x float> %i.j, %.sroa.016.0.copyload ; 3 uses
  %i.l = fmul <2 x float> %i.k, %i.k
  %i.m = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.l) ; 2 uses
  %i.n = fcmp ogt float %i.m, f0x057A0000
  br i1 %i.n, label %bb.b, label %b2GetLengthAndNormalize.exit

bb.b:                                             ; preds = %bb.a
  %i.o = tail call float @llvm.sqrt.f32(float %i.m) ; 2 uses
  %i.p = fdiv nnan float 1.000000e+00, %i.o
  %i.q = insertelement <2 x float> poison, float %i.p, i64 0
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> zeroinitializer
  %i.s = fmul <2 x float> %i.k, %i.r
  br label %b2GetLengthAndNormalize.exit

b2GetLengthAndNormalize.exit:                     ; preds = %bb.a, %bb.b
  %.sink.i = phi float [ %i.o, %bb.b ], [ 0.000000e+00, %bb.a ]
  %.sroa.015.0.i = phi <2 x float> [ %i.s, %bb.b ], [ zeroinitializer, %bb.a ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load float, ptr %i.t, align 4, !tbaa !12 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load float, ptr %i.v, align 4, !tbaa !12 ; 2 uses
  %i.x = fsub float %.sink.i, %i.u
  %i.y = fsub float %i.x, %i.w                    ; 2 uses
  %i.z = tail call float @b2GetLengthUnitsPerMeter() #10
  %i.aa = fmul float %i.z, 5.000000e-03
  %i.ab = fmul float %i.aa, 4.000000e+00
  %i.ac = fcmp ogt float %i.y, %i.ab
  br i1 %i.ac, label %bb.d, label %bb.c

bb.c:                                             ; preds = %b2GetLengthAndNormalize.exit
  store <2 x float> %.sroa.015.0.i, ptr %0, align 4, !tbaa !9
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = insertelement <2 x float> poison, float %i.u, i64 0
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ag = fmul <2 x float> %i.af, %.sroa.015.0.i
  %i.ah = fadd <2 x float> %.sroa.016.0.copyload, %i.ag
  %i.ai = insertelement <2 x float> poison, float %i.w, i64 0
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ak = fmul <2 x float> %.sroa.015.0.i, %i.aj
  %i.al = fsub <2 x float> %i.j, %i.ak
  %i.am = fmul <2 x float> %i.ah, splat (float 5.000000e-01)
  %i.an = fmul <2 x float> %i.al, splat (float 5.000000e-01)
  %i.ao = fadd <2 x float> %i.am, %i.an
  store <2 x float> %i.ao, ptr %i.ad, align 4, !tbaa !9
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.y, ptr %i.ap, align 4, !tbaa !15
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 0, ptr %i.aq, align 4, !tbaa !16
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 1, ptr %i.ar, align 4, !tbaa !18
  br label %bb.d

bb.d:                                             ; preds = %b2GetLengthAndNormalize.exit, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare float @b2GetLengthUnitsPerMeter() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define void @b2CollideCapsuleAndCircle(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b2LocalManifold) align 4 captures(none) initializes((0, 44)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, <2 x float> %3, <2 x float> %4) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %0, i8 0, i64 44, i1 false)
  %i.a = load <2 x float>, ptr %2, align 4        ; 2 uses
  %.sroa.032.0.copyload = load <2 x float>, ptr %1, align 4, !tbaa !9 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.029.0.copyload = load <2 x float>, ptr %i.b, align 4, !tbaa !9 ; 3 uses
  %i.c = shufflevector <2 x float> %i.a, <2 x float> poison, <2 x i32> zeroinitializer
  %i.d = fmul <2 x float> %4, %i.c                ; 2 uses
  %i.e = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.f = shufflevector <2 x float> %i.a, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.g = fmul <2 x float> %i.e, %i.f              ; 2 uses
  %i.h = fsub <2 x float> %i.d, %i.g
  %i.i = fadd <2 x float> %i.d, %i.g
  %i.j = shufflevector <2 x float> %i.h, <2 x float> %i.i, <2 x i32> <i32 0, i32 3>
  %i.k = fadd <2 x float> %3, %i.j                ; 4 uses
  %i.l = fsub <2 x float> %.sroa.029.0.copyload, %.sroa.032.0.copyload ; 5 uses
  %i.m = fsub <2 x float> %i.k, %.sroa.032.0.copyload
  %i.n = fmul <2 x float> %i.l, %i.m
  %i.o = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.n) ; 2 uses
  %i.p = fcmp olt float %i.o, 0.000000e+00
  br i1 %i.p, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = fsub <2 x float> %.sroa.029.0.copyload, %i.k
  %i.r = fmul <2 x float> %i.l, %i.q
  %i.s = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.r)
  %i.t = fcmp olt float %i.s, 0.000000e+00
  br i1 %i.t, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = fmul <2 x float> %i.l, %i.l
  %i.v = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.u)
  %i.w = fdiv float %i.o, %i.v
  %i.x = insertelement <2 x float> poison, float %i.w, i64 0
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer
  %i.z = fmul <2 x float> %i.l, %i.y
  %i.aa = fadd <2 x float> %.sroa.032.0.copyload, %i.z
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %i.ab = phi <2 x float> [ %.sroa.029.0.copyload, %bb.b ], [ %.sroa.032.0.copyload, %bb.a ], [ %i.aa, %bb.c ] ; 2 uses
  %i.ac = fsub <2 x float> %i.k, %i.ab            ; 3 uses
  %i.ad = fmul <2 x float> %i.ac, %i.ac
  %i.ae = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ad) ; 2 uses
  %i.af = fcmp ogt float %i.ae, f0x057A0000
  br i1 %i.af, label %bb.e, label %b2GetLengthAndNormalize.exit

bb.e:                                             ; preds = %bb.d
  %i.ag = tail call float @llvm.sqrt.f32(float %i.ae) ; 2 uses
  %i.ah = fdiv nnan float 1.000000e+00, %i.ag
  %i.ai = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ak = fmul <2 x float> %i.ac, %i.aj
  br label %b2GetLengthAndNormalize.exit

b2GetLengthAndNormalize.exit:                     ; preds = %bb.d, %bb.e
  %.sink.i = phi float [ %i.ag, %bb.e ], [ 0.000000e+00, %bb.d ]
  %.sroa.015.0.i = phi <2 x float> [ %i.ak, %bb.e ], [ zeroinitializer, %bb.d ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.am = load float, ptr %i.al, align 4, !tbaa !20 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ao = load float, ptr %i.an, align 4, !tbaa !12 ; 2 uses
  %i.ap = fsub float %.sink.i, %i.am
  %i.aq = fsub float %i.ap, %i.ao                 ; 2 uses
  %i.ar = tail call float @b2GetLengthUnitsPerMeter() #10
  %i.as = fmul float %i.ar, 5.000000e-03
  %i.at = fmul float %i.as, 4.000000e+00
  %i.au = fcmp ogt float %i.aq, %i.at
  br i1 %i.au, label %bb.g, label %bb.f

bb.f:                                             ; preds = %b2GetLengthAndNormalize.exit
  store <2 x float> %.sroa.015.0.i, ptr %0, align 4, !tbaa !9
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aw = insertelement <2 x float> poison, float %i.am, i64 0
  %i.ax = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ay = fmul <2 x float> %i.ax, %.sroa.015.0.i
  %i.az = fadd <2 x float> %i.ab, %i.ay
  %i.ba = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.bb = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bc = fmul <2 x float> %.sroa.015.0.i, %i.bb
  %i.bd = fsub <2 x float> %i.k, %i.bc
  %i.be = fmul <2 x float> %i.az, splat (float 5.000000e-01)
  %i.bf = fmul <2 x float> %i.bd, splat (float 5.000000e-01)
  %i.bg = fadd <2 x float> %i.be, %i.bf
  store <2 x float> %i.bg, ptr %i.av, align 4, !tbaa !9
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.aq, ptr %i.bh, align 4, !tbaa !15
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 0, ptr %i.bi, align 4, !tbaa !16
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 1, ptr %i.bj, align 4, !tbaa !18
  br label %bb.g

bb.g:                                             ; preds = %b2GetLengthAndNormalize.exit, %bb.f
  ret void
}

; Function Attrs: nounwind uwtable
define void @b2CollidePolygonAndCircle(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b2LocalManifold) align 4 captures(none) initializes((0, 44)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, <2 x float> %3, <2 x float> %4) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %0, i8 0, i64 44, i1 false)
  %i.a = tail call float @b2GetLengthUnitsPerMeter() #10
  %i.b = fmul float %i.a, 5.000000e-03
  %i.c = fmul float %i.b, 4.000000e+00
  %i.d = load <2 x float>, ptr %2, align 4        ; 2 uses
  %i.e = shufflevector <2 x float> %i.d, <2 x float> poison, <2 x i32> zeroinitializer
  %i.f = fmul <2 x float> %4, %i.e                ; 2 uses
  %i.g = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.h = shufflevector <2 x float> %i.d, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.i = fmul <2 x float> %i.g, %i.h              ; 2 uses
  %i.j = fsub <2 x float> %i.f, %i.i
  %i.k = fadd <2 x float> %i.f, %i.i
  %i.l = shufflevector <2 x float> %i.j, <2 x float> %i.k, <2 x i32> <i32 0, i32 3>
  %i.m = fadd <2 x float> %3, %i.l                ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.o = load float, ptr %i.n, align 4, !tbaa !22 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load float, ptr %i.p, align 4, !tbaa !12 ; 4 uses
  %i.r = fadd float %i.o, %i.q                    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.t = load i32, ptr %i.s, align 4, !tbaa !23   ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.v = icmp sgt i32 %i.t, 0
  br i1 %i.v, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.t to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.w = icmp eq i32 %i.t, 1
  br i1 %i.w, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %.0286.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %.1.1, %._crit_edge.loopexit.unr-lcssa ]
  %.0126285.epil.init = phi float [ f0xFF7FFFFF, %.lr.ph.preheader ], [ %.1127.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod295 = trunc i32 %i.t to i1
  tail call void @llvm.assume(i1 %lcmp.mod295)
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.epil.init
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.epil.init
  %i.z = load <2 x float>, ptr %i.y, align 4
  %i.aa = load <2 x float>, ptr %i.x, align 4
  %i.ab = fsub <2 x float> %i.m, %i.z
  %i.ac = fmul <2 x float> %i.aa, %i.ab
  %i.ad = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ac) ; 2 uses
  %i.ae = fcmp ogt float %i.ad, %.0126285.epil.init ; 2 uses
  %.1127.epil = select i1 %i.ae, float %i.ad, float %.0126285.epil.init
  %i.af = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %.1.epil = select i1 %i.ae, i32 %i.af, i32 %.0286.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.0126.lcssa = phi float [ f0xFF7FFFFF, %bb.a ], [ %.1127.1, %._crit_edge.loopexit.unr-lcssa ], [ %.1127.epil, %.lr.ph.epil.preheader ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.1.1, %._crit_edge.loopexit.unr-lcssa ], [ %.1.epil, %.lr.ph.epil.preheader ] ; 2 uses
  %i.ag = fadd float %i.c, %i.r                   ; 3 uses
  %i.ah = fcmp ogt float %.0126.lcssa, %i.ag
  br i1 %i.ah, label %.critedge, label %bb.b

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 5 uses
  %.0286 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %.1.1, %.lr.ph ]
  %.0126285 = phi float [ f0xFF7FFFFF, %.lr.ph.preheader.new ], [ %.1127.1, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.ak = load <2 x float>, ptr %i.aj, align 4
  %i.al = load <2 x float>, ptr %i.ai, align 4
  %i.am = fsub <2 x float> %i.m, %i.ak
  %i.an = fmul <2 x float> %i.al, %i.am
  %i.ao = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.an) ; 2 uses
  %i.ap = fcmp ogt float %i.ao, %.0126285         ; 2 uses
  %.1127 = select i1 %i.ap, float %i.ao, float %.0126285 ; 2 uses
  %i.aq = trunc nuw nsw i64 %indvars.iv to i32
  %.1 = select i1 %i.ap, i32 %i.aq, i32 %.0286
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.at = load <2 x float>, ptr %i.as, align 4
  %i.au = load <2 x float>, ptr %i.ar, align 4
  %i.av = fsub <2 x float> %i.m, %i.at
  %i.aw = fmul <2 x float> %i.au, %i.av
  %i.ax = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.aw) ; 2 uses
  %i.ay = fcmp ogt float %i.ax, %.1127            ; 2 uses
  %.1127.1 = select i1 %i.ay, float %i.ax, float %.1127 ; 3 uses
  %i.az = trunc nuw nsw i64 %indvars.iv.next to i32
  %.1.1 = select i1 %i.ay, i32 %i.az, i32 %.1     ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !25

bb.b:                                             ; preds = %._crit_edge
  %i.ba = add nuw nsw i32 %.0.lcssa, 1            ; 2 uses
  %i.bb = icmp slt i32 %i.ba, %i.t
  %i.bc = select i1 %i.bb, i32 %i.ba, i32 0
  %i.bd = zext nneg i32 %.0.lcssa to i64          ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bd
  %.sroa.056.0.copyload = load <2 x float>, ptr %i.be, align 4, !tbaa !9 ; 4 uses
  %i.bf = zext nneg i32 %i.bc to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bf
  %.sroa.050.0.copyload = load <2 x float>, ptr %i.bg, align 4, !tbaa !9 ; 4 uses
  %i.bh = fsub <2 x float> %i.m, %.sroa.056.0.copyload ; 6 uses
  %i.bi = fsub <2 x float> %.sroa.050.0.copyload, %.sroa.056.0.copyload
  %i.bj = fmul <2 x float> %i.bh, %i.bi
  %i.bk = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.bj)
  %i.bl = fsub <2 x float> %i.m, %.sroa.050.0.copyload ; 5 uses
  %i.bm = fcmp olt float %i.bk, 0.000000e+00
  %i.bn = fcmp ogt float %.0126.lcssa, f0x34000000 ; 2 uses
  %or.cond = and i1 %i.bm, %i.bn
  br i1 %or.cond, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.bo = fmul <2 x float> %i.bh, %i.bh
  %i.bp = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.bo) ; 2 uses
  %i.bq = fcmp ogt float %i.bp, f0x057A0000
  br i1 %i.bq, label %bb.d, label %b2Normalize.exit

bb.d:                                             ; preds = %bb.c
  %i.br = tail call nnan float @llvm.sqrt.f32(float %i.bp)
  %i.bs = fdiv nnan float 1.000000e+00, %i.br
  %i.bt = insertelement <2 x float> poison, float %i.bs, i64 0
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bv = fmul <2 x float> %i.bh, %i.bu
  br label %b2Normalize.exit

b2Normalize.exit:                                 ; preds = %bb.c, %bb.d
  %.sroa.012.0.i = phi <2 x float> [ %i.bv, %bb.d ], [ zeroinitializer, %bb.c ] ; 5 uses
  %i.bw = fmul <2 x float> %i.bh, %.sroa.012.0.i
  %i.bx = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.bw)
  %i.by = fcmp ule float %i.bx, %i.ag
  br i1 %i.by, label %bb.e, label %.critedge

bb.e:                                             ; preds = %b2Normalize.exit
  %i.bz = insertelement <2 x float> poison, float %i.o, i64 0
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cb = fmul <2 x float> %i.ca, %.sroa.012.0.i
  %i.cc = insertelement <2 x float> poison, float %i.q, i64 0
  %i.cd = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ce = fmul <2 x float> %i.cd, %.sroa.012.0.i
  store <2 x float> %.sroa.012.0.i, ptr %0, align 4, !tbaa !9
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cg = fadd <2 x float> %.sroa.056.0.copyload, %i.cb ; 2 uses
  %i.ch = fsub <2 x float> %i.m, %i.ce            ; 2 uses
  %i.ci = fmul <2 x float> %i.cg, splat (float 5.000000e-01)
  %i.cj = fmul <2 x float> %i.ch, splat (float 5.000000e-01)
  %i.ck = fadd <2 x float> %i.cj, %i.ci
  store <2 x float> %i.ck, ptr %i.cf, align 4, !tbaa !9
  %i.cl = fsub <2 x float> %i.ch, %i.cg
  %i.cm = fmul <2 x float> %.sroa.012.0.i, %i.cl
  %i.cn = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.cm)
  br label %.critedge.sink.split

bb.f:                                             ; preds = %bb.b
  %i.co = fsub <2 x float> %.sroa.056.0.copyload, %.sroa.050.0.copyload
  %i.cp = fmul <2 x float> %i.bl, %i.co
  %i.cq = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.cp)
  %i.cr = fcmp olt float %i.cq, 0.000000e+00
  %or.cond4 = and i1 %i.cr, %i.bn
  br i1 %or.cond4, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.cs = fmul <2 x float> %i.bl, %i.bl
  %i.ct = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.cs) ; 2 uses
  %i.cu = fcmp ogt float %i.ct, f0x057A0000
  br i1 %i.cu, label %bb.h, label %b2Normalize.exit221

bb.h:                                             ; preds = %bb.g
  %i.cv = tail call nnan float @llvm.sqrt.f32(float %i.ct)
  %i.cw = fdiv nnan float 1.000000e+00, %i.cv
  %i.cx = insertelement <2 x float> poison, float %i.cw, i64 0
  %i.cy = shufflevector <2 x float> %i.cx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cz = fmul <2 x float> %i.bl, %i.cy
  br label %b2Normalize.exit221

b2Normalize.exit221:                              ; preds = %bb.g, %bb.h
  %.sroa.012.0.i218 = phi <2 x float> [ %i.cz, %bb.h ], [ zeroinitializer, %bb.g ] ; 5 uses
  %i.da = fmul <2 x float> %i.bl, %.sroa.012.0.i218
  %i.db = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.da)
  %i.dc = fcmp ule float %i.db, %i.ag
  br i1 %i.dc, label %bb.i, label %.critedge

bb.i:                                             ; preds = %b2Normalize.exit221
  %i.dd = insertelement <2 x float> poison, float %i.o, i64 0
  %i.de = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.df = fmul <2 x float> %i.de, %.sroa.012.0.i218
  %i.dg = insertelement <2 x float> poison, float %i.q, i64 0
  %i.dh = shufflevector <2 x float> %i.dg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.di = fmul <2 x float> %i.dh, %.sroa.012.0.i218
  store <2 x float> %.sroa.012.0.i218, ptr %0, align 4, !tbaa !9
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dk = fadd <2 x float> %.sroa.050.0.copyload, %i.df ; 2 uses
  %i.dl = fsub <2 x float> %i.m, %i.di            ; 2 uses
  %i.dm = fmul <2 x float> %i.dk, splat (float 5.000000e-01)
  %i.dn = fmul <2 x float> %i.dl, splat (float 5.000000e-01)
  %i.do = fadd <2 x float> %i.dn, %i.dm
  store <2 x float> %i.do, ptr %i.dj, align 4, !tbaa !9
  %i.dp = fsub <2 x float> %i.dl, %i.dk
  %i.dq = fmul <2 x float> %.sroa.012.0.i218, %i.dp
  %i.dr = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.dq)
  br label %.critedge.sink.split

bb.j:                                             ; preds = %bb.f
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.bd
  %.sroa.010.0.copyload = load <2 x float>, ptr %i.ds, align 4, !tbaa !9 ; 4 uses
  store <2 x float> %.sroa.010.0.copyload, ptr %0, align 4, !tbaa !9
  %i.dt = fmul <2 x float> %i.bh, %.sroa.010.0.copyload
  %i.du = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.dt)
  %i.dv = fsub float %i.o, %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dx = insertelement <2 x float> poison, float %i.dv, i64 0
  %i.dy = shufflevector <2 x float> %i.dx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dz = fmul <2 x float> %.sroa.010.0.copyload, %i.dy
  %i.ea = fadd <2 x float> %i.m, %i.dz
  %i.eb = insertelement <2 x float> poison, float %i.q, i64 0
  %i.ec = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ed = fmul <2 x float> %i.ec, %.sroa.010.0.copyload
  %i.ee = fsub <2 x float> %i.m, %i.ed
  %i.ef = fmul <2 x float> %i.ea, splat (float 5.000000e-01)
  %i.eg = fmul <2 x float> %i.ee, splat (float 5.000000e-01)
  %i.eh = fadd <2 x float> %i.eg, %i.ef
  store <2 x float> %i.eh, ptr %i.dw, align 4, !tbaa !9
  %i.ei = fsub float %.0126.lcssa, %i.r
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %bb.j, %bb.e, %bb.i
  %.sink = phi float [ %i.dr, %bb.i ], [ %i.cn, %bb.e ], [ %i.ei, %bb.j ]
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %.sink, ptr %i.ej, align 4, !tbaa !15
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 0, ptr %i.ek, align 4, !tbaa !16
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 1, ptr %i.el, align 4, !tbaa !18
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %b2Normalize.exit, %b2Normalize.exit221, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define void @b2CollideCapsules(ptr dead_on_unwind noalias nofree writable sret(%struct.b2LocalManifold) align 4 captures(none) initializes((0, 44)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, <2 x float> %3, <2 x float> %4) local_unnamed_addr #0 {
bb.a:
  %.sroa.0308.0.copyload = load <2 x float>, ptr %1, align 4, !tbaa !9 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load <2 x float>, ptr %i.a, align 4
  %i.c = load <2 x float>, ptr %2, align 4        ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load <2 x float>, ptr %i.d, align 4      ; 2 uses
  %i.f = fsub <2 x float> %3, %.sroa.0308.0.copyload ; 2 uses
  %i.g = fsub <2 x float> %i.b, %.sroa.0308.0.copyload ; 13 uses
  %i.h = shufflevector <2 x float> %i.c, <2 x float> poison, <2 x i32> zeroinitializer
  %i.i = fmul <2 x float> %4, %i.h                ; 2 uses
  %i.j = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.k = shufflevector <2 x float> %i.c, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.l = fmul <2 x float> %i.j, %i.k              ; 2 uses
  %i.m = fsub <2 x float> %i.i, %i.l
  %i.n = fadd <2 x float> %i.i, %i.l
  %i.o = shufflevector <2 x float> %i.m, <2 x float> %i.n, <2 x i32> <i32 0, i32 3>
  %i.p = fadd <2 x float> %i.f, %i.o              ; 14 uses
  %i.q = shufflevector <2 x float> %i.e, <2 x float> poison, <2 x i32> zeroinitializer
  %i.r = fmul <2 x float> %4, %i.q                ; 2 uses
  %i.s = shufflevector <2 x float> %i.e, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.t = fmul <2 x float> %i.j, %i.s              ; 2 uses
  %i.u = fsub <2 x float> %i.r, %i.t
  %i.v = fadd <2 x float> %i.r, %i.t
  %i.w = shufflevector <2 x float> %i.u, <2 x float> %i.v, <2 x i32> <i32 0, i32 3>
  %i.x = fadd <2 x float> %i.f, %i.w              ; 9 uses
  %i.y = fsub <2 x float> %i.x, %i.p              ; 6 uses
  %i.z = fmul <2 x float> %i.g, %i.g
  %i.aa = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.z) ; 5 uses
  %i.ab = fsub <2 x float> zeroinitializer, %i.p  ; 5 uses
  %i.ac = shufflevector <2 x float> %i.ab, <2 x float> %i.y, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ad = fmul <2 x float> %i.y, %i.ac
  %i.ae = shufflevector <2 x float> %i.y, <2 x float> %i.ab, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.af = fmul <2 x float> %i.y, %i.ae
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ah = fadd <2 x float> %i.ag, %i.ad           ; 3 uses
  %i.ai = fmul <2 x float> %i.g, %i.ae
  %i.aj = fmul <2 x float> %i.g, %i.ac
  %i.ak = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.al = fadd <2 x float> %i.ak, %i.ai           ; 7 uses
  %i.am = extractelement <2 x float> %i.ah, i64 1 ; 4 uses
  %i.an = fmul float %i.aa, %i.am
  %i.ao = extractelement <2 x float> %i.al, i64 0
  %foldExtExtBinop = fmul <2 x float> %i.al, %i.al
  %i.ap = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.aq = fsub float %i.an, %i.ap                 ; 2 uses
  %i.ar = fcmp une float %i.aq, 0.000000e+00
  br i1 %i.ar, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.as = fmul <2 x float> %i.al, %i.ah           ; 2 uses
  %shift = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop672 = fsub <2 x float> %i.as, %shift
  %i.at = extractelement <2 x float> %foldExtExtBinop672, i64 0
  %i.au = fdiv float %i.at, %i.aq                 ; 3 uses
  %i.av = fcmp olt float %i.au, 0.000000e+00
  %i.aw = fcmp ogt float %i.au, 1.000000e+00
  %i.ax = select i1 %i.aw, float 1.000000e+00, float %i.au
  %i.ay = select i1 %i.av, float 0.000000e+00, float %i.ax
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0318 = phi float [ %i.ay, %bb.b ], [ 0.000000e+00, %bb.a ] ; 2 uses
  %i.az = fmul float %i.ao, %.0318
  %i.ba = extractelement <2 x float> %i.ah, i64 0
  %i.bb = fadd float %i.ba, %i.az
  %i.bc = fdiv float %i.bb, %i.am                 ; 3 uses
  %i.bd = fcmp olt float %i.bc, 0.000000e+00
  br i1 %i.bd, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.be = extractelement <2 x float> %i.al, i64 1
  %i.bf = fneg float %i.be
  %i.bg = fdiv float %i.bf, %i.aa                 ; 3 uses
  %i.bh = fcmp olt float %i.bg, 0.000000e+00
  %i.bi = fcmp ogt float %i.bg, 1.000000e+00
  %i.bj = select i1 %i.bi, float 1.000000e+00, float %i.bg
  %i.bk = select i1 %i.bh, float 0.000000e+00, float %i.bj
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.bl = fcmp ogt float %i.bc, 1.000000e+00
  br i1 %i.bl, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %shift674 = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop675 = fsub <2 x float> %i.al, %shift674
  %i.bm = extractelement <2 x float> %foldExtExtBinop675, i64 0
  %i.bn = fdiv float %i.bm, %i.aa                 ; 3 uses
  %i.bo = fcmp olt float %i.bn, 0.000000e+00
  %i.bp = fcmp ogt float %i.bn, 1.000000e+00
  %i.bq = select i1 %i.bp, float 1.000000e+00, float %i.bn
  %i.br = select i1 %i.bo, float 0.000000e+00, float %i.bq
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %.0319 = phi float [ 0.000000e+00, %bb.d ], [ 1.000000e+00, %bb.f ], [ %i.bc, %bb.e ] ; 2 uses
  %.1 = phi float [ %i.bk, %bb.d ], [ %i.br, %bb.f ], [ %.0318, %bb.e ] ; 2 uses
  %i.bs = insertelement <2 x float> poison, float %.1, i64 0
  %i.bt = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bu = fmul <2 x float> %i.g, %i.bt
  %i.bv = insertelement <2 x float> poison, float %.0319, i64 0
  %i.bw = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bx = fmul <2 x float> %i.y, %i.bw
  %i.by = fadd <2 x float> %i.bu, zeroinitializer ; 2 uses
  %i.bz = fadd <2 x float> %i.p, %i.bx            ; 2 uses
  %i.ca = fsub <2 x float> %i.bz, %i.by           ; 3 uses
  %i.cb = fmul <2 x float> %i.ca, %i.ca
  %i.cc = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.cb) ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %0, i8 0, i64 44, i1 false)
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !20 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !20 ; 4 uses
  %i.ch = fadd float %i.ce, %i.cg                 ; 5 uses
  %i.ci = tail call float @b2GetLengthUnitsPerMeter() #10
  %i.cj = fmul float %i.ci, 5.000000e-03
  %i.ck = fmul float %i.cj, 4.000000e+00
  %i.cl = fadd float %i.ch, %i.ck                 ; 2 uses
  %i.cm = fmul float %i.cl, %i.cl
  %i.cn = fcmp ogt float %i.cc, %i.cm
  br i1 %i.cn, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.co = tail call float @llvm.sqrt.f32(float %i.cc) ; 6 uses
  %i.cp = fcmp ogt float %i.aa, f0x057A0000
  br i1 %i.cp, label %bb.i, label %b2GetLengthAndNormalize.exit

bb.i:                                             ; preds = %bb.h
  %i.cq = tail call float @llvm.sqrt.f32(float %i.aa) ; 2 uses
  %i.cr = fdiv nnan float 1.000000e+00, %i.cq
  %i.cs = insertelement <2 x float> poison, float %i.cr, i64 0
  %i.ct = shufflevector <2 x float> %i.cs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cu = fmul <2 x float> %i.g, %i.ct
  br label %b2GetLengthAndNormalize.exit

b2GetLengthAndNormalize.exit:                     ; preds = %bb.h, %bb.i
  %.sink.i = phi float [ %i.cq, %bb.i ], [ 0.000000e+00, %bb.h ] ; 8 uses
  %.sroa.015.0.i = phi <2 x float> [ %i.cu, %bb.i ], [ zeroinitializer, %bb.h ] ; 9 uses
  %i.cv = fcmp ogt float %i.am, f0x057A0000
  br i1 %i.cv, label %bb.j, label %b2GetLengthAndNormalize.exit419

bb.j:                                             ; preds = %b2GetLengthAndNormalize.exit
  %i.cw = tail call float @llvm.sqrt.f32(float %i.am) ; 2 uses
  %i.cx = fdiv nnan float 1.000000e+00, %i.cw
  %i.cy = insertelement <2 x float> poison, float %i.cx, i64 0
  %i.cz = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.da = fmul <2 x float> %i.y, %i.cz
  br label %b2GetLengthAndNormalize.exit419

b2GetLengthAndNormalize.exit419:                  ; preds = %b2GetLengthAndNormalize.exit, %bb.j
  %.sink.i415 = phi float [ %i.cw, %bb.j ], [ 0.000000e+00, %b2GetLengthAndNormalize.exit ] ; 8 uses
  %.sroa.015.0.i416 = phi <2 x float> [ %i.da, %bb.j ], [ zeroinitializer, %b2GetLengthAndNormalize.exit ] ; 8 uses
  %.sroa.0.4.vec.extract.i427 = extractelement <2 x float> %.sroa.015.0.i, i64 1 ; 2 uses
  %i.db = fmul <2 x float> %i.p, %.sroa.015.0.i
  %i.dc = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.db) ; 12 uses
  %i.dd = fmul <2 x float> %i.x, %.sroa.015.0.i
  %i.de = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.dd) ; 12 uses
  %i.df = fcmp ole float %i.dc, 0.000000e+00
  %i.dg = fcmp ole float %i.de, 0.000000e+00
  %or.cond.not.not636 = select i1 %i.df, i1 %i.dg, i1 false
  %i.dh = fcmp oge float %i.dc, %.sink.i
  %i.di = fcmp oge float %i.de, %.sink.i
  %.not348.not638 = select i1 %i.dh, i1 %i.di, i1 false
  %.not634 = select i1 %or.cond.not.not636, i1 true, i1 %.not348.not638
  %i.dj = fmul <2 x float> %i.ab, %.sroa.015.0.i416
  %i.dk = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.dj) ; 12 uses
  %i.dl = fsub <2 x float> %i.g, %i.p             ; 2 uses
  %i.dm = fmul <2 x float> %i.dl, %.sroa.015.0.i416
  %i.dn = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.dm) ; 12 uses
  %i.do = fcmp ole float %i.dk, 0.000000e+00
  %i.dp = fcmp ole float %i.dn, 0.000000e+00
  %or.cond3.not.not641 = select i1 %i.do, i1 %i.dp, i1 false
  %i.dq = fcmp oge float %i.dk, %.sink.i415
  %i.dr = fcmp oge float %i.dn, %.sink.i415
  %.not350.not644 = select i1 %i.dq, i1 %i.dr, i1 false
  %i.ds = select i1 %.not634, i1 true, i1 %or.cond3.not.not641
  %brmerge = select i1 %i.ds, i1 true, i1 %.not350.not644
  br i1 %brmerge, label %bb.ah, label %bb.k

bb.k:                                             ; preds = %b2GetLengthAndNormalize.exit419
  %i.dt = shufflevector <2 x float> %.sroa.015.0.i416, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.du = fneg float %.sroa.0.4.vec.extract.i427
  %.sroa.01.0.vec.insert.i = insertelement <2 x float> poison, float %i.du, i64 0
  %.sroa.01.4.vec.insert.i = shufflevector <2 x float> %.sroa.01.0.vec.insert.i, <2 x float> %.sroa.015.0.i, <2 x i32> <i32 0, i32 2>
  %i.dv = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dw = fmul <2 x float> %i.dv, %.sroa.015.0.i  ; 2 uses
  %shift677 = shufflevector <2 x float> %i.dw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop678 = fsub <2 x float> %i.dw, %shift677
  %i.dx = extractelement <2 x float> %foldExtExtBinop678, i64 0 ; 4 uses
  %i.dy = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dz = fmul <2 x float> %i.dy, %.sroa.015.0.i  ; 2 uses
  %shift680 = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop681 = fsub <2 x float> %i.dz, %shift680
  %i.ea = extractelement <2 x float> %foldExtExtBinop681, i64 0 ; 4 uses
  %i.eb = fcmp olt float %i.dx, %i.ea
  %i.ec = select i1 %i.eb, float %i.dx, float %i.ea ; 2 uses
  %i.ed = fcmp ogt float %i.dx, %i.ea
  %.v = select i1 %i.ed, float %i.dx, float %i.ea
  %i.ee = fneg float %.v                          ; 2 uses
  %i.ef = fcmp ogt float %i.ec, %i.ee             ; 2 uses
  %i.eg = fneg <2 x float> %.sroa.015.0.i
  %.sroa.01.4.vec.insert.i474 = shufflevector <2 x float> %.sroa.015.0.i, <2 x float> %i.eg, <2 x i32> <i32 1, i32 2>
  %.sroa.0117.0 = select i1 %i.ef, <2 x float> %.sroa.01.4.vec.insert.i, <2 x float> %.sroa.01.4.vec.insert.i474 ; 6 uses
  %.0321 = select i1 %i.ef, float %i.ec, float %i.ee
  %shift683 = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop684 = fmul <2 x float> %shift683, %.sroa.015.0.i416
  %shift686 = shufflevector <2 x float> %.sroa.015.0.i416, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop687 = fmul <2 x float> %i.ab, %shift686
  %foldExtExtBinop689 = fsub <2 x float> %foldExtExtBinop684, %foldExtExtBinop687
  %i.eh = extractelement <2 x float> %foldExtExtBinop689, i64 0 ; 4 uses
  %i.ei = fmul <2 x float> %i.dl, %i.dt           ; 2 uses
  %shift691 = shufflevector <2 x float> %i.ei, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop692 = fsub <2 x float> %shift691, %i.ei
  %i.ej = extractelement <2 x float> %foldExtExtBinop692, i64 0 ; 4 uses
  %i.ek = fcmp olt float %i.eh, %i.ej
  %i.el = select i1 %i.ek, float %i.eh, float %i.ej ; 2 uses
  %i.em = fcmp ogt float %i.eh, %i.ej
  %.v351 = select i1 %i.em, float %i.eh, float %i.ej
  %i.en = fneg float %.v351                       ; 2 uses
  %i.eo = fcmp ogt float %i.el, %i.en             ; 2 uses
  %.0320 = select i1 %i.eo, float %i.el, float %i.en
  %i.ep = tail call float @b2GetLengthUnitsPerMeter() #10
  %i.eq = fmul float %i.ep, 5.000000e-03
  %i.er = fmul float %i.eq, 1.000000e-01
  %i.es = fadd float %.0321, %i.er
  %i.et = fcmp ult float %i.es, %.0320
  br i1 %i.et, label %bb.w, label %bb.l

bb.l:                                             ; preds = %bb.k
  store <2 x float> %.sroa.0117.0, ptr %0, align 4, !tbaa !9
  %i.eu = fcmp olt float %i.dc, 0.000000e+00
  %i.ev = fcmp ogt float %i.de, 0.000000e+00
  %or.cond5 = select i1 %i.eu, i1 %i.ev, i1 false
  br i1 %or.cond5, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ew = fsub float 0.000000e+00, %i.dc
  %i.ex = fsub float %i.de, %i.dc
  %i.ey = fdiv float %i.ew, %i.ex                 ; 2 uses
  %i.ez = fsub float 1.000000e+00, %i.ey
  %i.fa = insertelement <2 x float> poison, float %i.ez, i64 0
  %i.fb = shufflevector <2 x float> %i.fa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fc = fmul <2 x float> %i.p, %i.fb
  %i.fd = insertelement <2 x float> poison, float %i.ey, i64 0
  %i.fe = shufflevector <2 x float> %i.fd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ff = fmul <2 x float> %i.x, %i.fe
  %i.fg = fadd <2 x float> %i.ff, %i.fc
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.fh = fcmp olt float %i.de, 0.000000e+00
  %i.fi = fcmp ogt float %i.dc, 0.000000e+00
  %or.cond7 = and i1 %i.fh, %i.fi
  br i1 %or.cond7, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.fj = fsub float 0.000000e+00, %i.de
  %i.fk = fsub float %i.dc, %i.de
  %i.fl = fdiv float %i.fj, %i.fk                 ; 2 uses
  %i.fm = fsub float 1.000000e+00, %i.fl
  %i.fn = insertelement <2 x float> poison, float %i.fm, i64 0
  %i.fo = shufflevector <2 x float> %i.fn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fp = fmul <2 x float> %i.x, %i.fo
  %i.fq = insertelement <2 x float> poison, float %i.fl, i64 0
  %i.fr = shufflevector <2 x float> %i.fq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fs = fmul <2 x float> %i.p, %i.fr
  %i.ft = fadd <2 x float> %i.fs, %i.fp
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.m
  %.sroa.073.0 = phi <2 x float> [ %i.fg, %bb.m ], [ %i.p, %bb.o ], [ %i.p, %bb.n ] ; 2 uses
  %.sroa.071.0 = phi <2 x float> [ %i.x, %bb.m ], [ %i.ft, %bb.o ], [ %i.x, %bb.n ] ; 2 uses
  %i.fu = fcmp ogt float %i.dc, %.sink.i
  %i.fv = fcmp olt float %i.de, %.sink.i
  %or.cond353 = select i1 %i.fu, i1 %i.fv, i1 false
  br i1 %or.cond353, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.fw = fsub float %i.dc, %.sink.i
  %i.fx = fsub float %i.dc, %i.de
  %i.fy = fdiv float %i.fw, %i.fx                 ; 2 uses
  %i.fz = fsub float 1.000000e+00, %i.fy
  %i.ga = insertelement <2 x float> poison, float %i.fz, i64 0
  %i.gb = shufflevector <2 x float> %i.ga, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gc = fmul <2 x float> %i.p, %i.gb
  %i.gd = insertelement <2 x float> poison, float %i.fy, i64 0
  %i.ge = shufflevector <2 x float> %i.gd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gf = fmul <2 x float> %i.x, %i.ge
  %i.gg = fadd <2 x float> %i.gf, %i.gc
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.gh = fcmp ogt float %i.de, %.sink.i
  %i.gi = fcmp olt float %i.dc, %.sink.i
  %or.cond354 = and i1 %i.gh, %i.gi
  br i1 %or.cond354, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.gj = fsub float %i.de, %.sink.i
  %i.gk = fsub float %i.de, %i.dc
  %i.gl = fdiv float %i.gj, %i.gk                 ; 2 uses
  %i.gm = fsub float 1.000000e+00, %i.gl
  %i.gn = insertelement <2 x float> poison, float %i.gm, i64 0
  %i.go = shufflevector <2 x float> %i.gn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gp = fmul <2 x float> %i.x, %i.go
  %i.gq = insertelement <2 x float> poison, float %i.gl, i64 0
  %i.gr = shufflevector <2 x float> %i.gq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gs = fmul <2 x float> %i.p, %i.gr
  %i.gt = fadd <2 x float> %i.gs, %i.gp
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.q
  %.sroa.073.1 = phi <2 x float> [ %i.gg, %bb.q ], [ %.sroa.073.0, %bb.s ], [ %.sroa.073.0, %bb.r ] ; 2 uses
  %.sroa.071.1 = phi <2 x float> [ %.sroa.071.0, %bb.q ], [ %i.gt, %bb.s ], [ %.sroa.071.0, %bb.r ] ; 3 uses
  %i.gu = fmul <2 x float> %.sroa.0117.0, %.sroa.073.1
  %i.gv = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.gu) ; 3 uses
  %foldExtExtBinop694 = fmul <2 x float> %.sroa.0117.0, %.sroa.071.1
  %foldExtExtBinop696 = fmul <2 x float> %.sroa.0117.0, %.sroa.071.1
  %shift698 = shufflevector <2 x float> %foldExtExtBinop696, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop699 = fadd <2 x float> %foldExtExtBinop694, %shift698
  %i.gw = extractelement <2 x float> %foldExtExtBinop699, i64 0 ; 3 uses
  %i.gx = tail call float @b2GetLengthUnitsPerMeter() #10
  %i.gy = fmul float %i.gx, 5.000000e-03
  %i.gz = fadd float %i.co, %i.gy
  %i.ha = fcmp ugt float %i.gv, %i.gz
  br i1 %i.ha, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.hb = tail call float @b2GetLengthUnitsPerMeter() #10
  %i.hc = fmul float %i.hb, 5.000000e-03
  %i.hd = fadd float %i.co, %i.hc
  %i.he = fcmp ugt float %i.gw, %i.hd
  br i1 %i.he, label %bb.ah, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hg = fsub float %i.ce, %i.cg                 ; 2 uses
  %i.hh = fsub float %i.hg, %i.gv
  %i.hi = fmul float %i.hh, 5.000000e-01
  %i.hj = insertelement <2 x float> poison, float %i.hi, i64 0
  %i.hk = shufflevector <2 x float> %i.hj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hl = fmul <2 x float> %.sroa.0117.0, %i.hk
  %i.hm = fadd <2 x float> %.sroa.073.1, %i.hl
  store <2 x float> %i.hm, ptr %i.hf, align 4, !tbaa !9
  %i.hn = fsub float %i.gv, %i.ch
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.hn, ptr %i.ho, align 4, !tbaa !15
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 0, ptr %i.hp, align 4, !tbaa !16
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.hr = fsub float %i.hg, %i.gw
  %i.hs = fmul float %i.hr, 5.000000e-01
  %i.ht = insertelement <2 x float> poison, float %i.hs, i64 0
  %i.hu = shufflevector <2 x float> %i.ht, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hv = fmul <2 x float> %.sroa.0117.0, %i.hu
  %i.hw = fadd <2 x float> %.sroa.071.1, %i.hv
  store <2 x float> %i.hw, ptr %i.hq, align 4, !tbaa !9
  br label %.lr.ph

bb.w:                                             ; preds = %bb.k
  %i.hx = fneg <2 x float> %.sroa.015.0.i416      ; 2 uses
  %.sroa.01.4.vec.insert.i477 = shufflevector <2 x float> %i.hx, <2 x float> %.sroa.015.0.i416, <2 x i32> <i32 1, i32 2>
  %i.hy = shufflevector <2 x float> %.sroa.015.0.i416, <2 x float> %i.hx, <2 x i32> <i32 1, i32 2>
  %.sroa.092.0 = select i1 %i.eo, <2 x float> %.sroa.01.4.vec.insert.i477, <2 x float> %i.hy ; 6 uses
  %i.hz = fneg <2 x float> %.sroa.092.0
  store <2 x float> %i.hz, ptr %0, align 4, !tbaa !9
  %i.ia = fcmp olt float %i.dk, 0.000000e+00
  %i.ib = fcmp ogt float %i.dn, 0.000000e+00
  %or.cond9 = select i1 %i.ia, i1 %i.ib, i1 false
  br i1 %or.cond9, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ic = fsub float 0.000000e+00, %i.dk
  %i.id = fsub float %i.dn, %i.dk
  %i.ie = fdiv float %i.ic, %i.id                 ; 2 uses
  %i.if = fsub float 1.000000e+00, %i.ie
  %i.ig = fmul float %i.if, 0.000000e+00
  %i.ih = insertelement <2 x float> poison, float %i.ie, i64 0
  %i.ii = shufflevector <2 x float> %i.ih, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ij = fmul <2 x float> %i.g, %i.ii
  %i.ik = insertelement <2 x float> poison, float %i.ig, i64 0
  %i.il = shufflevector <2 x float> %i.ik, <2 x float> poison, <2 x i32> zeroinitializer
  %i.im = fadd <2 x float> %i.ij, %i.il
  br label %bb.aa

bb.y:                                             ; preds = %bb.w
  %i.in = fcmp olt float %i.dn, 0.000000e+00
  %i.io = fcmp ogt float %i.dk, 0.000000e+00
  %or.cond11 = select i1 %i.in, i1 %i.io, i1 false
  br i1 %or.cond11, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ip = fsub float 0.000000e+00, %i.dn
  %i.iq = fsub float %i.dk, %i.dn
  %i.ir = fdiv float %i.ip, %i.iq                 ; 2 uses
  %i.is = fsub float 1.000000e+00, %i.ir
  %i.it = fmul float %i.ir, 0.000000e+00
  %i.iu = insertelement <2 x float> poison, float %i.is, i64 0
  %i.iv = shufflevector <2 x float> %i.iu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iw = fmul <2 x float> %i.g, %i.iv
  %i.ix = insertelement <2 x float> poison, float %i.it, i64 0
  %i.iy = shufflevector <2 x float> %i.ix, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iz = fadd <2 x float> %i.iy, %i.iw
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z, %bb.x
  %.sroa.048.0 = phi <2 x float> [ %i.im, %bb.x ], [ zeroinitializer, %bb.z ], [ zeroinitializer, %bb.y ] ; 2 uses
  %.sroa.046.0 = phi <2 x float> [ %i.g, %bb.x ], [ %i.iz, %bb.z ], [ %i.g, %bb.y ] ; 2 uses
  %i.ja = fcmp ogt float %i.dk, %.sink.i415
  %i.jb = fcmp olt float %i.dn, %.sink.i415
  %or.cond355 = select i1 %i.ja, i1 %i.jb, i1 false
  br i1 %or.cond355, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.jc = fsub float %i.dk, %.sink.i415
  %i.jd = fsub float %i.dk, %i.dn
  %i.je = fdiv float %i.jc, %i.jd                 ; 2 uses
  %i.jf = fsub float 1.000000e+00, %i.je
  %i.jg = fmul float %i.jf, 0.000000e+00
  %i.jh = insertelement <2 x float> poison, float %i.je, i64 0
  %i.ji = shufflevector <2 x float> %i.jh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jj = fmul <2 x float> %i.g, %i.ji
  %i.jk = insertelement <2 x float> poison, float %i.jg, i64 0
  %i.jl = shufflevector <2 x float> %i.jk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jm = fadd <2 x float> %i.jj, %i.jl
  br label %bb.ae

bb.ac:                                            ; preds = %bb.aa
  %i.jn = fcmp ogt float %i.dn, %.sink.i415
  %i.jo = fcmp olt float %i.dk, %.sink.i415
  %or.cond356 = select i1 %i.jn, i1 %i.jo, i1 false
  br i1 %or.cond356, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.jp = fsub float %i.dn, %.sink.i415
  %i.jq = fsub float %i.dn, %i.dk
  %i.jr = fdiv float %i.jp, %i.jq                 ; 2 uses
  %i.js = fsub float 1.000000e+00, %i.jr
  %i.jt = fmul float %i.jr, 0.000000e+00
  %i.ju = insertelement <2 x float> poison, float %i.js, i64 0
  %i.jv = shufflevector <2 x float> %i.ju, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jw = fmul <2 x float> %i.g, %i.jv
  %i.jx = insertelement <2 x float> poison, float %i.jt, i64 0
  %i.jy = shufflevector <2 x float> %i.jx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jz = fadd <2 x float> %i.jy, %i.jw
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad, %bb.ab
  %.sroa.048.1 = phi <2 x float> [ %i.jm, %bb.ab ], [ %.sroa.048.0, %bb.ad ], [ %.sroa.048.0, %bb.ac ] ; 2 uses
  %.sroa.046.1 = phi <2 x float> [ %.sroa.046.0, %bb.ab ], [ %i.jz, %bb.ad ], [ %.sroa.046.0, %bb.ac ] ; 2 uses
  %i.ka = fsub <2 x float> %.sroa.048.1, %i.p
  %i.kb = fmul <2 x float> %.sroa.092.0, %i.ka
  %i.kc = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.kb) ; 3 uses
  %i.kd = fsub <2 x float> %.sroa.046.1, %i.p     ; 2 uses
  %foldExtExtBinop701 = fmul <2 x float> %.sroa.092.0, %i.kd
  %foldExtExtBinop703 = fmul <2 x float> %.sroa.092.0, %i.kd
  %shift705 = shufflevector <2 x float> %foldExtExtBinop703, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop706 = fadd <2 x float> %foldExtExtBinop701, %shift705
  %i.ke = extractelement <2 x float> %foldExtExtBinop706, i64 0 ; 3 uses
  %i.kf = tail call float @b2GetLengthUnitsPerMeter() #10
  %i.kg = fmul float %i.kf, 5.000000e-03
  %i.kh = fadd float %i.co, %i.kg
  %i.ki = fcmp ugt float %i.kc, %i.kh
  br i1 %i.ki, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.kj = tail call float @b2GetLengthUnitsPerMeter() #10
  %i.kk = fmul float %i.kj, 5.000000e-03
  %i.kl = fadd float %i.co, %i.kk
  %i.km = fcmp ugt float %i.ke, %i.kl
  br i1 %i.km, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ko = fsub float %i.cg, %i.ce                 ; 2 uses
  %i.kp = fsub float %i.ko, %i.kc
  %i.kq = fmul float %i.kp, 5.000000e-01
  %i.kr = insertelement <2 x float> poison, float %i.kq, i64 0
  %i.ks = shufflevector <2 x float> %i.kr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kt = fmul <2 x float> %.sroa.092.0, %i.ks
  %i.ku = fadd <2 x float> %.sroa.048.1, %i.kt
  store <2 x float> %i.ku, ptr %i.kn, align 4, !tbaa !9
  %i.kv = fsub float %i.kc, %i.ch
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.kv, ptr %i.kw, align 4, !tbaa !15
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 0, ptr %i.kx, align 4, !tbaa !16
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.kz = fsub float %i.ko, %i.ke
  %i.la = fmul float %i.kz, 5.000000e-01
  %i.lb = insertelement <2 x float> poison, float %i.la, i64 0
  %i.lc = shufflevector <2 x float> %i.lb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ld = fmul <2 x float> %.sroa.092.0, %i.lc
  %i.le = fadd <2 x float> %.sroa.046.1, %i.ld
  store <2 x float> %i.le, ptr %i.ky, align 4, !tbaa !9
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.v, %bb.ag
  %.sink670 = phi float [ %i.gw, %bb.v ], [ %i.ke, %bb.ag ]
  %.sink = phi i16 [ 1, %bb.v ], [ 256, %bb.ag ]
  %i.lf = fsub float %.sink670, %i.ch
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.lf, ptr %i.lg, align 4, !tbaa !15
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i16 %.sink, ptr %i.lh, align 4, !tbaa !16
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 2, ptr %i.li, align 4, !tbaa !18
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.lk = load <2 x float>, ptr %i.lj, align 4
  %i.ll = fadd <2 x float> %.sroa.0308.0.copyload, %i.lk
  store <2 x float> %i.ll, ptr %i.lj, align 4, !tbaa !9
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ln = load <2 x float>, ptr %i.lm, align 4
  %i.lo = fadd <2 x float> %.sroa.0308.0.copyload, %i.ln
  store <2 x float> %i.lo, ptr %i.lm, align 4, !tbaa !9
  br label %.loopexit

bb.ah:                                            ; preds = %bb.u, %bb.af, %b2GetLengthAndNormalize.exit419
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.lq = fcmp ogt float %i.cc, f0x28800000
  br i1 %i.lq, label %b2Normalize.exit, label %bb.ai

b2Normalize.exit:                                 ; preds = %bb.ah
  %i.lr = fdiv nnan float 1.000000e+00, %i.co
  %i.ls = insertelement <2 x float> poison, float %i.lr, i64 0
  %i.lt = shufflevector <2 x float> %i.ls, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lu = fmul <2 x float> %i.ca, %i.lt
  br label %.loopexit.loopexit.critedge

bb.ai:                                            ; preds = %bb.ah
  %i.lv = fneg float %.sroa.0.4.vec.extract.i427
  %.sroa.01.0.vec.insert.i601 = insertelement <2 x float> poison, float %i.lv, i64 0
  %.sroa.01.4.vec.insert.i602 = shufflevector <2 x float> %.sroa.01.0.vec.insert.i601, <2 x float> %.sroa.015.0.i, <2 x i32> <i32 0, i32 2>
  br label %.loopexit.loopexit.critedge

.loopexit.loopexit.critedge:                      ; preds = %bb.ai, %b2Normalize.exit
  %.sroa.022.0 = phi <2 x float> [ %i.lu, %b2Normalize.exit ], [ %.sroa.01.4.vec.insert.i602, %bb.ai ] ; 3 uses
  %i.lw = fcmp une float %.1, 0.000000e+00
  %i.lx = fcmp une float %.0319, 0.000000e+00
  store <2 x float> %.sroa.022.0, ptr %0, align 4, !tbaa !9
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.lz = insertelement <2 x float> poison, float %i.ce, i64 0
  %i.ma = shufflevector <2 x float> %i.lz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mb = fmul <2 x float> %i.ma, %.sroa.022.0
  %i.mc = fadd <2 x float> %i.by, %i.mb
  %i.md = insertelement <2 x float> poison, float %i.cg, i64 0
  %i.me = shufflevector <2 x float> %i.md, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mf = fmul <2 x float> %i.me, %.sroa.022.0
  %i.mg = fsub <2 x float> %i.bz, %i.mf
  %i.mh = fmul <2 x float> %i.mc, splat (float 5.000000e-01)
  %i.mi = fmul <2 x float> %i.mg, splat (float 5.000000e-01)
  %i.mj = fadd <2 x float> %i.mi, %i.mh
  store <2 x float> %i.mj, ptr %i.ly, align 4, !tbaa !9
  %i.mk = fsub float %i.co, %i.ch
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.mk, ptr %i.ml, align 4, !tbaa !15
  %i.mm = select i1 %i.lw, i16 256, i16 0
  %i.mn = zext i1 %i.lx to i16
  %i.mo = or disjoint i16 %i.mm, %i.mn
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 %i.mo, ptr %i.mp, align 4, !tbaa !16
  store i32 1, ptr %i.lp, align 4, !tbaa !18
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.mr = load <2 x float>, ptr %i.mq, align 4
  %i.ms = fadd <2 x float> %.sroa.0308.0.copyload, %i.mr
  store <2 x float> %i.ms, ptr %i.mq, align 4, !tbaa !9
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.loopexit.loopexit.critedge, %bb.g
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @b2CollideSegmentAndCapsule(ptr dead_on_unwind noalias nofree writable sret(%struct.b2LocalManifold) align 4 captures(none) initializes((0, 44)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, <2 x float> %3, <2 x float> %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.b2Capsule, align 16         ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.a = load <2 x i64>, ptr %1, align 4, !tbaa !9
  store <2 x i64> %i.a, ptr %5, align 16, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16
  store float 0.000000e+00, ptr %i.b, align 16, !tbaa !20
  call void @b2CollideCapsules(ptr dead_on_unwind writable sret(%struct.b2LocalManifold) align 4 %0, ptr noundef nonnull %5, ptr noundef %2, <2 x float> %3, <2 x float> %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  ret void
}

; Function Attrs: nounwind uwtable
define void @b2CollidePolygonAndCapsule(ptr dead_on_unwind noalias nofree writable sret(%struct.b2LocalManifold) align 4 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, <2 x float> %3, <2 x float> %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.b2Polygon, align 8          ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load float, ptr %i.b, align 4, !tbaa !20
  %i.d = load <2 x float>, ptr %2, align 4        ; 3 uses
  %i.e = load <2 x float>, ptr %i.a, align 4      ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.f, i8 0, i64 112, i1 false), !alias.scope !28
  store <2 x float> %i.d, ptr %5, align 8, !tbaa !9, !alias.scope !28
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x float> %i.e, ptr %i.g, align 8, !tbaa !9, !alias.scope !28
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.i = fmul <2 x float> %i.d, splat (float 5.000000e-01)
  %i.j = fmul <2 x float> %i.e, splat (float 5.000000e-01)
  %i.k = fadd <2 x float> %i.i, %i.j
  store <2 x float> %i.k, ptr %i.h, align 8, !tbaa !9, !alias.scope !28
  %i.l = fsub <2 x float> %i.e, %i.d              ; 3 uses
  %i.m = fmul <2 x float> %i.l, %i.l
  %i.n = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.m) ; 2 uses
  %i.o = fcmp ogt float %i.n, f0x057A0000
  br i1 %i.o, label %bb.b, label %b2MakeCapsule.exit

bb.b:                                             ; preds = %bb.a
  %i.p = tail call nnan float @llvm.sqrt.f32(float %i.n)
  %i.q = fdiv nnan float 1.000000e+00, %i.p
  %i.r = insertelement <2 x float> poison, float %i.q, i64 0
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer
  %i.t = fmul <2 x float> %i.l, %i.s
  br label %b2MakeCapsule.exit

b2MakeCapsule.exit:                               ; preds = %bb.a, %bb.b
  %.sroa.012.0.i.i = phi <2 x float> [ %i.t, %bb.b ], [ zeroinitializer, %bb.a ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.w = fneg <2 x float> %.sroa.012.0.i.i        ; 2 uses
  %i.x = shufflevector <2 x float> %i.w, <2 x float> %.sroa.012.0.i.i, <2 x i32> <i32 3, i32 0>
  store <2 x float> %i.x, ptr %i.u, align 8, !tbaa !9, !alias.scope !28
  %.sroa.01.4.vec.insert.i18.i = shufflevector <2 x float> %i.w, <2 x float> %.sroa.012.0.i.i, <2 x i32> <i32 1, i32 2>
  store <2 x float> %.sroa.01.4.vec.insert.i18.i, ptr %i.v, align 8, !tbaa !9, !alias.scope !28
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 140
  store i32 2, ptr %i.y, align 4, !tbaa !23, !alias.scope !28
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 136
  store float %i.c, ptr %i.z, align 8, !tbaa !22, !alias.scope !28
  call void @b2CollidePolygons(ptr dead_on_unwind writable sret(%struct.b2LocalManifold) align 4 %0, ptr noundef %1, ptr noundef nonnull %5, <2 x float> %3, <2 x float> %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  ret void
}

; Function Attrs: nounwind uwtable
define void @b2CollidePolygons(ptr dead_on_unwind noalias nofree writable sret(%struct.b2LocalManifold) align 4 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, <2 x float> %3, <2 x float> %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.b2Polygon, align 8          ; 17 uses
  %6 = alloca %struct.b2Polygon, align 4          ; 17 uses
  %7 = alloca %struct.b2SegmentDistanceResult, align 4 ; 7 uses
  %.sroa.0162.0.copyload = load <2 x float>, ptr %1, align 4, !tbaa !9 ; 9 uses
  %i.a = tail call float @b2GetLengthUnitsPerMeter() #10
  %i.b = fmul float %i.a, 5.000000e-03
  %i.c = tail call float @b2GetLengthUnitsPerMeter() #10
  %i.d = fmul float %i.c, 5.000000e-03
  %i.e = fmul float %i.d, 4.000000e+00            ; 2 uses
  %i.f = fsub <2 x float> %3, %.sroa.0162.0.copyload
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.h = load i32, ptr %i.g, align 4, !tbaa !23   ; 17 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 140
  store i32 %i.h, ptr %i.i, align 4, !tbaa !23
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.k = load float, ptr %i.j, align 4, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 136 ; 2 uses
  store float %i.k, ptr %i.l, align 8, !tbaa !22
  store i64 0, ptr %5, align 8, !tbaa !9
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.o = load i64, ptr %i.n, align 4, !tbaa !9
  store i64 %i.o, ptr %i.m, align 8, !tbaa !9
  %i.p = icmp sgt i32 %i.h, 1
  br i1 %i.p, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.h to i64
  %i.q = add nsw i64 %wide.trip.count, -1         ; 3 uses
  %xtraiter = and i64 %i.q, 1
  %i.r = icmp eq i32 %i.h, 2
  br i1 %i.r, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.q, -2
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod434 = trunc i64 %i.q to i1
  tail call void @llvm.assume(i1 %lcmp.mod434)
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.epil.init
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.epil.init
  %i.u = load <2 x float>, ptr %i.t, align 4
  %i.v = fsub <2 x float> %i.u, %.sroa.0162.0.copyload
  store <2 x float> %i.v, ptr %i.s, align 8, !tbaa !9
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.epil.init
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.epil.init
  %i.y = load i64, ptr %i.x, align 4, !tbaa !9
  store i64 %i.y, ptr %i.w, align 8, !tbaa !9
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 140
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !23  ; 13 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 140
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !23
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !22
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 136 ; 2 uses
  store float %i.ad, ptr %i.ae, align 4, !tbaa !22
  %i.af = icmp sgt i32 %i.aa, 0                   ; 2 uses
  br i1 %i.af, label %.lr.ph361, label %._crit_edge362.thread

.lr.ph361:                                        ; preds = %._crit_edge
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 64
  %wide.trip.count390 = zext nneg i32 %i.aa to i64 ; 3 uses
  %i.ai = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.aj = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %bb.b

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.am = load <2 x float>, ptr %i.al, align 4
  %i.an = fsub <2 x float> %i.am, %.sroa.0162.0.copyload
  store <2 x float> %i.an, ptr %i.ak, align 8, !tbaa !9
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.aq = load i64, ptr %i.ap, align 4, !tbaa !9
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.at = load <2 x float>, ptr %i.as, align 4
  %i.au = fsub <2 x float> %i.at, %.sroa.0162.0.copyload
  store <2 x float> %i.au, ptr %i.ar, align 8, !tbaa !9
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next
  %i.ax = load i64, ptr %i.aw, align 4, !tbaa !9
  store i64 %i.ax, ptr %i.av, align 8, !tbaa !9
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !29

._crit_edge362:                                   ; preds = %bb.b
  %i.ay = icmp sgt i32 %i.h, 0                    ; 2 uses
  br i1 %i.ay, label %.lr.ph.us.preheader.i, label %b2FindMaxSeparation.exit

._crit_edge362.thread:                            ; preds = %._crit_edge
  %i.az = icmp sgt i32 %i.h, 0
  br i1 %i.az, label %.lr.ph45.split.i.preheader, label %b2FindMaxSeparation.exit237

.lr.ph45.split.i.preheader:                       ; preds = %._crit_edge362.thread
  %xtraiter435 = and i32 %i.h, 3                  ; 3 uses
  %i.ba = icmp ult i32 %i.h, 4
  br i1 %i.ba, label %.lr.ph45.split.i.epil.preheader, label %.lr.ph45.split.i.preheader.new

.lr.ph45.split.i.preheader.new:                   ; preds = %.lr.ph45.split.i.preheader
  %unroll_iter440 = and i32 %i.h, 2147483644
  br label %.lr.ph45.split.i

.lr.ph.us.preheader.i:                            ; preds = %._crit_edge362
  %wide.trip.count56.i = zext nneg i32 %i.h to i64
  %xtraiter442 = and i64 %wide.trip.count390, 1
  %i.bb = icmp eq i32 %i.aa, 1
  %unroll_iter447 = and i64 %wide.trip.count390, 2147483646
  %lcmp.mod444.not = icmp eq i64 %xtraiter442, 0
  %lcmp.mod446 = trunc i32 %i.aa to i1
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %._crit_edge.us.i, %.lr.ph.us.preheader.i
  %indvars.iv53.i = phi i64 [ 0, %.lr.ph.us.preheader.i ], [ %indvars.iv.next54.i, %._crit_edge.us.i ] ; 4 uses
  %.03042.us.i = phi float [ f0xFF7FFFFF, %.lr.ph.us.preheader.i ], [ %.131.us.i, %._crit_edge.us.i ] ; 2 uses
  %.03241.us.i = phi i32 [ 0, %.lr.ph.us.preheader.i ], [ %.133.us.i, %._crit_edge.us.i ]
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv53.i
  %.sroa.08.0.copyload.us.i = load <2 x float>, ptr %i.bc, align 8, !tbaa !9 ; 3 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv53.i
  %.sroa.07.0.copyload.us.i = load <2 x float>, ptr %i.bd, align 8, !tbaa !9 ; 3 uses
  br i1 %i.bb, label %.epil.preheader, label %.lr.ph.us.i.new

.lr.ph.us.i.new:                                  ; preds = %.lr.ph.us.i, %.lr.ph.us.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.us.i.new ], [ 0, %.lr.ph.us.i ] ; 3 uses
  %.02839.us.i = phi float [ %.1.us.i.1, %.lr.ph.us.i.new ], [ f0x7F7FFFFF, %.lr.ph.us.i ] ; 2 uses
  %niter448 = phi i64 [ %niter448.next.1, %.lr.ph.us.i.new ], [ 0, %.lr.ph.us.i ]
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv.i
  %i.bf = load <2 x float>, ptr %i.be, align 4
  %i.bg = fsub <2 x float> %i.bf, %.sroa.07.0.copyload.us.i
  %i.bh = fmul <2 x float> %.sroa.08.0.copyload.us.i, %i.bg
  %i.bi = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.bh) ; 2 uses
  %i.bj = fcmp olt float %i.bi, %.02839.us.i
  %.1.us.i = select i1 %i.bj, float %i.bi, float %.02839.us.i ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load <2 x float>, ptr %i.bl, align 4
  %i.bn = fsub <2 x float> %i.bm, %.sroa.07.0.copyload.us.i
  %i.bo = fmul <2 x float> %.sroa.08.0.copyload.us.i, %i.bn
  %i.bp = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.bo) ; 2 uses
  %i.bq = fcmp olt float %i.bp, %.1.us.i
  %.1.us.i.1 = select i1 %i.bq, float %i.bp, float %.1.us.i ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter448.next.1 = add i64 %niter448, 2         ; 2 uses
  %niter448.ncmp.1 = icmp eq i64 %niter448.next.1, %unroll_iter447
  br i1 %niter448.ncmp.1, label %._crit_edge.us.i.unr-lcssa, label %.lr.ph.us.i.new, !llvm.loop !30

._crit_edge.us.i.unr-lcssa:                       ; preds = %.lr.ph.us.i.new
  br i1 %lcmp.mod444.not, label %._crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.lr.ph.us.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.us.i ], [ %indvars.iv.next.i.1, %._crit_edge.us.i.unr-lcssa ]
  %.02839.us.i.epil.init = phi float [ f0x7F7FFFFF, %.lr.ph.us.i ], [ %.1.us.i.1, %._crit_edge.us.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod446)
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv.i.epil.init
  %i.bs = load <2 x float>, ptr %i.br, align 4
end_hunk_0
begin_hunk_1_@b2ClipPolygons:bb.a
  %i.ad = fmul <2 x float> %i.u, %i.ac            ; 2 uses
  %shift234 = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop235 = fsub <2 x float> %shift234, %i.ad ; 4 uses
  %i.ae = extractelement <2 x float> %foldExtExtBinop235, i64 0 ; 3 uses
  %i.af = fcmp olt float %i.ab, 0.000000e+00
  %i.ag = fcmp olt float %i.x, %i.ae
  %or.cond = select i1 %i.af, i1 true, i1 %i.ag
  br i1 %or.cond, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ah = fcmp olt float %i.ae, 0.000000e+00
  br i1 %i.ah, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %foldExtExtBinop237 = fsub <2 x float> %foldExtExtBinop232, %foldExtExtBinop235
  %i.ai = extractelement <2 x float> %foldExtExtBinop237, i64 0 ; 2 uses
  %i.aj = fcmp ogt float %i.ai, f0x34000000
  br i1 %i.aj, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ak = fsub float 0.000000e+00, %i.ae
  %i.al = fdiv float %i.ak, %i.ai                 ; 2 uses
  %i.am = fsub float 1.000000e+00, %i.al
  %i.an = insertelement <2 x float> poison, float %i.am, i64 0
  %i.ao = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ap = fmul <2 x float> %.sroa.070.0.copyload, %i.ao
  %i.aq = insertelement <2 x float> poison, float %i.al, i64 0
  %i.ar = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.as = fmul <2 x float> %.sroa.074.0.copyload, %i.ar
  %i.at = fadd <2 x float> %i.as, %i.ap
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.040.0 = phi <2 x float> [ %i.at, %bb.d ], [ %.sroa.070.0.copyload, %bb.c ], [ %.sroa.070.0.copyload, %bb.b ] ; 2 uses
  %i.au = fcmp ogt float %i.ab, %i.x
  br i1 %i.au, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %foldExtExtBinop239 = fsub <2 x float> %foldExtExtBinop232, %foldExtExtBinop235
  %i.av = extractelement <2 x float> %foldExtExtBinop239, i64 0 ; 2 uses
  %i.aw = fcmp ogt float %i.av, f0x34000000
  br i1 %i.aw, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %foldExtExtBinop241 = fsub <2 x float> %foldExtExtBinop, %foldExtExtBinop235
  %i.ax = extractelement <2 x float> %foldExtExtBinop241, i64 0
  %i.ay = fdiv float %i.ax, %i.av                 ; 2 uses
  %i.az = fsub float 1.000000e+00, %i.ay
  %i.ba = insertelement <2 x float> poison, float %i.az, i64 0
  %i.bb = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bc = fmul <2 x float> %.sroa.070.0.copyload, %i.bb
  %i.bd = insertelement <2 x float> poison, float %i.ay, i64 0
  %i.be = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bf = fmul <2 x float> %.sroa.074.0.copyload, %i.be
  %i.bg = fadd <2 x float> %i.bf, %i.bc           ; 2 uses
  %i.bh = fsub <2 x float> %i.bg, %.sroa.079.0.copyload
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %i.bi = phi <2 x float> [ %.sroa.074.0.copyload, %bb.e ], [ %.sroa.074.0.copyload, %bb.f ], [ %i.bg, %bb.g ]
  %i.bj = phi <2 x float> [ %i.y, %bb.e ], [ %i.y, %bb.f ], [ %i.bh, %bb.g ]
  %i.bk = fsub <2 x float> %.sroa.040.0, %.sroa.079.0.copyload
  %i.bl = fmul <2 x float> %.sroa.084.0.copyload, %i.bk
  %i.bm = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.bl) ; 3 uses
  %i.bn = fmul <2 x float> %.sroa.084.0.copyload, %i.bj
  %i.bo = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.bn) ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.227, i64 136
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !22 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.229, i64 136
  %i.bs = load float, ptr %i.br, align 4, !tbaa !22 ; 2 uses
  %i.bt = fsub float %i.bq, %i.bs                 ; 2 uses
  %i.bu = fsub float %i.bt, %i.bm
  %i.bv = fmul float %i.bu, 5.000000e-01
  %i.bw = insertelement <2 x float> poison, float %i.bv, i64 0
  %i.bx = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.by = fmul <2 x float> %.sroa.084.0.copyload, %i.bx
  %i.bz = fadd <2 x float> %.sroa.040.0, %i.by    ; 2 uses
  %i.ca = fsub float %i.bt, %i.bo
  %i.cb = fmul float %i.ca, 5.000000e-01
  %i.cc = insertelement <2 x float> poison, float %i.cb, i64 0
  %i.cd = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ce = fmul <2 x float> %.sroa.084.0.copyload, %i.cd
  %i.cf = fadd <2 x float> %i.bi, %i.ce           ; 2 uses
  %i.cg = fadd float %i.bq, %i.bs                 ; 4 uses
  br i1 %5, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store <2 x float> %.sroa.084.0.copyload, ptr %0, align 4, !tbaa !9
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %i.bz, ptr %i.ch, align 4, !tbaa !9
  %i.ci = fsub float %i.bm, %i.cg
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.ci, ptr %i.cj, align 4, !tbaa !15
  %i.ck = shl i32 %., 8
  %i.cl = and i32 %i.j, 255
  %i.cm = or disjoint i32 %i.ck, %i.cl
  %i.cn = trunc i32 %i.cm to i16
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 %i.cn, ptr %i.co, align 4, !tbaa !16
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x float> %i.cf, ptr %i.cq, align 4, !tbaa !9
  %i.cr = fsub float %i.bo, %i.cg
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.cr, ptr %i.cs, align 4, !tbaa !15
  %i.ct = shl i32 %i.e, 8
  %i.cu = and i32 %.228, 255
  %i.cv = or disjoint i32 %i.ct, %i.cu
  %i.cw = trunc i32 %i.cv to i16
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i16 %i.cw, ptr %i.cx, align 4, !tbaa !16
  store i32 2, ptr %i.cp, align 4, !tbaa !18
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.cy = fneg float %.sroa.0.4.vec.extract.i148
  %i.cz = fneg <2 x float> %.sroa.084.0.copyload
  %.sroa.01.4.vec.insert.i = insertelement <2 x float> %i.cz, float %i.cy, i64 0
  store <2 x float> %.sroa.01.4.vec.insert.i, ptr %0, align 4, !tbaa !9
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %i.cf, ptr %i.da, align 4, !tbaa !9
  %i.db = fsub float %i.bo, %i.cg
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.db, ptr %i.dc, align 4, !tbaa !15
  %i.dd = shl i32 %.228, 8
  %i.de = and i32 %i.e, 255
  %i.df = or disjoint i32 %i.de, %i.dd
  %i.dg = trunc i32 %i.df to i16
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 %i.dg, ptr %i.dh, align 4, !tbaa !16
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x float> %i.bz, ptr %i.dj, align 4, !tbaa !9
  %i.dk = fsub float %i.bm, %i.cg
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.dk, ptr %i.dl, align 4, !tbaa !15
  %i.dm = shl i32 %i.j, 8
  %i.dn = and i32 %., 255
  %i.do = or disjoint i32 %i.dn, %i.dm
  %i.dp = trunc i32 %i.do to i16
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i16 %i.dp, ptr %i.dq, align 4, !tbaa !16
  store i32 2, ptr %i.di, align 4, !tbaa !18
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @b2CollideSegmentAndCircle(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b2LocalManifold) align 4 captures(none) initializes((0, 44)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, <2 x float> %3, <2 x float> %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load <2 x float>, ptr %1, align 4, !tbaa !9 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load <2 x float>, ptr %i.b, align 4, !tbaa !9 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %0, i8 0, i64 44, i1 false), !alias.scope !46
  %i.d = load <2 x float>, ptr %2, align 4, !noalias !46 ; 2 uses
  %i.e = shufflevector <2 x float> %i.d, <2 x float> poison, <2 x i32> zeroinitializer
  %i.f = fmul <2 x float> %4, %i.e                ; 2 uses
  %i.g = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.h = shufflevector <2 x float> %i.d, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.i = fmul <2 x float> %i.g, %i.h              ; 2 uses
  %i.j = fsub <2 x float> %i.f, %i.i
  %i.k = fadd <2 x float> %i.f, %i.i
  %i.l = shufflevector <2 x float> %i.j, <2 x float> %i.k, <2 x i32> <i32 0, i32 3>
  %i.m = fadd <2 x float> %3, %i.l                ; 4 uses
  %i.n = fsub <2 x float> %i.c, %i.a              ; 5 uses
  %i.o = fsub <2 x float> %i.m, %i.a
  %i.p = fmul <2 x float> %i.n, %i.o
  %i.q = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.p) ; 2 uses
  %i.r = fcmp olt float %i.q, 0.000000e+00
  br i1 %i.r, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = fsub <2 x float> %i.c, %i.m
  %i.t = fmul <2 x float> %i.n, %i.s
  %i.u = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.t)
  %i.v = fcmp olt float %i.u, 0.000000e+00
  br i1 %i.v, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = fmul <2 x float> %i.n, %i.n
  %i.x = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.w)
  %i.y = fdiv float %i.q, %i.x
  %i.z = insertelement <2 x float> poison, float %i.y, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ab = fmul <2 x float> %i.n, %i.aa
  %i.ac = fadd <2 x float> %i.a, %i.ab
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.ad = phi <2 x float> [ %i.c, %bb.b ], [ %i.a, %bb.a ], [ %i.ac, %bb.c ] ; 2 uses
  %i.ae = fsub <2 x float> %i.m, %i.ad            ; 3 uses
  %i.af = fmul <2 x float> %i.ae, %i.ae
  %i.ag = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.af) ; 2 uses
  %i.ah = fcmp ogt float %i.ag, f0x057A0000
  br i1 %i.ah, label %bb.e, label %b2GetLengthAndNormalize.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ai = tail call float @llvm.sqrt.f32(float %i.ag) ; 2 uses
  %i.aj = fdiv nnan float 1.000000e+00, %i.ai
  %i.ak = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.al = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> zeroinitializer
  %i.am = fmul <2 x float> %i.ae, %i.al
  br label %b2GetLengthAndNormalize.exit.i

b2GetLengthAndNormalize.exit.i:                   ; preds = %bb.e, %bb.d
  %.sink.i.i = phi float [ %i.ai, %bb.e ], [ 0.000000e+00, %bb.d ]
  %.sroa.015.0.i.i = phi <2 x float> [ %i.am, %bb.e ], [ zeroinitializer, %bb.d ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ao = load float, ptr %i.an, align 4, !tbaa !12, !noalias !46 ; 2 uses
  %i.ap = fsub float %.sink.i.i, %i.ao            ; 2 uses
  %i.aq = tail call float @b2GetLengthUnitsPerMeter() #10, !noalias !46
  %i.ar = fmul float %i.aq, 5.000000e-03
  %i.as = fmul float %i.ar, 4.000000e+00
  %i.at = fcmp ogt float %i.ap, %i.as
  br i1 %i.at, label %b2CollideCapsuleAndCircle.exit, label %bb.f

bb.f:                                             ; preds = %b2GetLengthAndNormalize.exit.i
  store <2 x float> %.sroa.015.0.i.i, ptr %0, align 4, !tbaa !9, !alias.scope !46
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.av = fmul <2 x float> %.sroa.015.0.i.i, zeroinitializer
  %i.aw = fadd <2 x float> %i.ad, %i.av
  %i.ax = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.ay = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> zeroinitializer
  %i.az = fmul <2 x float> %.sroa.015.0.i.i, %i.ay
  %i.ba = fsub <2 x float> %i.m, %i.az
  %i.bb = fmul <2 x float> %i.aw, splat (float 5.000000e-01)
  %i.bc = fmul <2 x float> %i.ba, splat (float 5.000000e-01)
  %i.bd = fadd <2 x float> %i.bb, %i.bc
  store <2 x float> %i.bd, ptr %i.au, align 4, !tbaa !9, !alias.scope !46
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.ap, ptr %i.be, align 4, !tbaa !15, !alias.scope !46
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 0, ptr %i.bf, align 4, !tbaa !16, !alias.scope !46
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 1, ptr %i.bg, align 4, !tbaa !18, !alias.scope !46
  br label %b2CollideCapsuleAndCircle.exit

b2CollideCapsuleAndCircle.exit:                   ; preds = %b2GetLengthAndNormalize.exit.i, %bb.f
  ret void
}

; Function Attrs: nounwind uwtable
define void @b2CollideSegmentAndPolygon(ptr dead_on_unwind noalias nofree writable sret(%struct.b2LocalManifold) align 4 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, <2 x float> %3, <2 x float> %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.b2Polygon, align 8          ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load <2 x float>, ptr %1, align 4        ; 3 uses
  %i.c = load <2 x float>, ptr %i.a, align 4      ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.d, i8 0, i64 112, i1 false), !alias.scope !49
  store <2 x float> %i.b, ptr %5, align 8, !tbaa !9, !alias.scope !49
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x float> %i.c, ptr %i.e, align 8, !tbaa !9, !alias.scope !49
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.g = fmul <2 x float> %i.b, splat (float 5.000000e-01)
  %i.h = fmul <2 x float> %i.c, splat (float 5.000000e-01)
  %i.i = fadd <2 x float> %i.g, %i.h
  store <2 x float> %i.i, ptr %i.f, align 8, !tbaa !9, !alias.scope !49
  %i.j = fsub <2 x float> %i.c, %i.b              ; 3 uses
  %i.k = fmul <2 x float> %i.j, %i.j
  %i.l = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.k) ; 2 uses
  %i.m = fcmp ogt float %i.l, f0x057A0000
  br i1 %i.m, label %bb.b, label %b2MakeCapsule.exit

bb.b:                                             ; preds = %bb.a
  %i.n = tail call nnan float @llvm.sqrt.f32(float %i.l)
  %i.o = fdiv nnan float 1.000000e+00, %i.n
  %i.p = insertelement <2 x float> poison, float %i.o, i64 0
  %i.q = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> zeroinitializer
  %i.r = fmul <2 x float> %i.j, %i.q
  br label %b2MakeCapsule.exit

b2MakeCapsule.exit:                               ; preds = %bb.a, %bb.b
  %.sroa.012.0.i.i = phi <2 x float> [ %i.r, %bb.b ], [ zeroinitializer, %bb.a ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.u = fneg <2 x float> %.sroa.012.0.i.i        ; 2 uses
  %i.v = shufflevector <2 x float> %i.u, <2 x float> %.sroa.012.0.i.i, <2 x i32> <i32 3, i32 0>
  store <2 x float> %i.v, ptr %i.s, align 8, !tbaa !9, !alias.scope !49
  %.sroa.01.4.vec.insert.i18.i = shufflevector <2 x float> %i.u, <2 x float> %.sroa.012.0.i.i, <2 x i32> <i32 1, i32 2>
  store <2 x float> %.sroa.01.4.vec.insert.i18.i, ptr %i.t, align 8, !tbaa !9, !alias.scope !49
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 140
  store i32 2, ptr %i.w, align 4, !tbaa !23, !alias.scope !49
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 136
  store float 0.000000e+00, ptr %i.x, align 8, !tbaa !22, !alias.scope !49
  call void @b2CollidePolygons(ptr dead_on_unwind writable sret(%struct.b2LocalManifold) align 4 %0, ptr noundef nonnull %5, ptr noundef %2, <2 x float> %3, <2 x float> %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  ret void
}

; Function Attrs: nounwind uwtable
define void @b2CollideChainSegmentAndCircle(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b2LocalManifold) align 4 captures(none) initializes((0, 44)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, <2 x float> %3, <2 x float> %4) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %0, i8 0, i64 44, i1 false)
  %i.a = load <2 x float>, ptr %2, align 4        ; 2 uses
  %i.b = shufflevector <2 x float> %i.a, <2 x float> poison, <2 x i32> zeroinitializer
  %i.c = fmul <2 x float> %4, %i.b                ; 2 uses
  %i.d = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.e = shufflevector <2 x float> %i.a, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.f = fmul <2 x float> %i.d, %i.e              ; 2 uses
  %i.g = fsub <2 x float> %i.c, %i.f
  %i.h = fadd <2 x float> %i.c, %i.f
  %i.i = shufflevector <2 x float> %i.g, <2 x float> %i.h, <2 x i32> <i32 0, i32 3>
  %i.j = fadd <2 x float> %3, %i.i                ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.051.0.copyload = load <2 x float>, ptr %i.k, align 4, !tbaa !9 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.045.0.copyload = load <2 x float>, ptr %i.l, align 4, !tbaa !9 ; 6 uses
  %i.m = fsub <2 x float> %.sroa.045.0.copyload, %.sroa.051.0.copyload ; 5 uses
  %i.n = fsub <2 x float> %i.j, %.sroa.051.0.copyload ; 6 uses
  %i.o = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.p = fmul <2 x float> %i.o, %i.n              ; 2 uses
  %i.q = extractelement <2 x float> %i.p, i64 0
  %i.r = extractelement <2 x float> %i.p, i64 1
  %i.s = fcmp olt float %i.q, %i.r
  br i1 %i.s, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = fsub <2 x float> %.sroa.045.0.copyload, %i.j ; 2 uses
  %i.u = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> zeroinitializer
  %i.v = shufflevector <2 x float> %i.t, <2 x float> %i.n, <2 x i32> <i32 0, i32 2>
  %i.w = fmul <2 x float> %i.u, %i.v
  %i.x = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.y = shufflevector <2 x float> %i.t, <2 x float> %i.n, <2 x i32> <i32 1, i32 3>
  %i.z = fmul <2 x float> %i.x, %i.y
  %i.aa = fadd <2 x float> %i.w, %i.z             ; 4 uses
  %i.ab = extractelement <2 x float> %i.aa, i64 1
  %i.ac = fcmp ugt float %i.ab, 0.000000e+00
  br i1 %i.ac, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = load <2 x float>, ptr %1, align 4
  %i.ae = fsub <2 x float> %.sroa.051.0.copyload, %i.ad
  %i.af = fmul <2 x float> %i.n, %i.ae
  %i.ag = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.af)
  %i.ah = fcmp ugt float %i.ag, 0.000000e+00
  br i1 %i.ah, label %bb.h, label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.ai = extractelement <2 x float> %i.aa, i64 0
  %i.aj = fcmp ugt float %i.ai, 0.000000e+00
  br i1 %i.aj, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.al = load <2 x float>, ptr %i.ak, align 4
  %i.am = fsub <2 x float> %i.j, %.sroa.045.0.copyload ; 2 uses
  %i.an = fsub <2 x float> %i.al, %.sroa.045.0.copyload
  %i.ao = fmul <2 x float> %i.am, %i.an
  %i.ap = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ao)
  %i.aq = fcmp ule float %i.ap, 0.000000e+00
  br i1 %i.aq, label %bb.h, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.ar = fmul <2 x float> %i.m, %i.m
  %i.as = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ar) ; 2 uses
  %i.at = fcmp ogt float %i.as, 0.000000e+00
  br i1 %i.at, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.au = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.av = fmul <2 x float> %.sroa.051.0.copyload, %i.au
  %i.aw = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ax = fmul <2 x float> %.sroa.045.0.copyload, %i.aw
  %i.ay = fdiv nnan float 1.000000e+00, %i.as
  %i.az = fadd <2 x float> %i.av, %i.ax
  %i.ba = insertelement <2 x float> poison, float %i.ay, i64 0
  %i.bb = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bc = fmul <2 x float> %i.bb, %i.az           ; 2 uses
  %i.bd = fsub <2 x float> %i.j, %i.bc
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.c
  %i.be = phi <2 x float> [ %i.bc, %bb.g ], [ %.sroa.051.0.copyload, %bb.f ], [ %.sroa.045.0.copyload, %bb.e ], [ %.sroa.051.0.copyload, %bb.c ]
  %i.bf = phi <2 x float> [ %i.bd, %bb.g ], [ %i.n, %bb.f ], [ %i.am, %bb.e ], [ %i.n, %bb.c ] ; 3 uses
  %i.bg = fmul <2 x float> %i.bf, %i.bf
  %i.bh = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.bg) ; 2 uses
  %i.bi = fcmp ogt float %i.bh, f0x057A0000
  br i1 %i.bi, label %bb.i, label %b2GetLengthAndNormalize.exit

bb.i:                                             ; preds = %bb.h
  %i.bj = tail call float @llvm.sqrt.f32(float %i.bh) ; 2 uses
  %i.bk = fdiv nnan float 1.000000e+00, %i.bj
  %i.bl = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.bm = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bn = fmul <2 x float> %i.bf, %i.bm
  br label %b2GetLengthAndNormalize.exit

b2GetLengthAndNormalize.exit:                     ; preds = %bb.h, %bb.i
  %.sink.i = phi float [ %i.bj, %bb.i ], [ 0.000000e+00, %bb.h ]
  %.sroa.015.0.i = phi <2 x float> [ %i.bn, %bb.i ], [ zeroinitializer, %bb.h ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !12 ; 2 uses
  %i.bq = fsub float %.sink.i, %i.bp              ; 2 uses
  %i.br = tail call float @b2GetLengthUnitsPerMeter() #10
  %i.bs = fmul float %i.br, 5.000000e-03
  %i.bt = fmul float %i.bs, 4.000000e+00
  %i.bu = fcmp ogt float %i.bq, %i.bt
  br i1 %i.bu, label %bb.k, label %bb.j

bb.j:                                             ; preds = %b2GetLengthAndNormalize.exit
  store <2 x float> %.sroa.015.0.i, ptr %0, align 4, !tbaa !9
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bw = fmul <2 x float> %i.be, splat (float 5.000000e-01)
  %i.bx = insertelement <2 x float> poison, float %i.bp, i64 0
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bz = fmul <2 x float> %i.by, %.sroa.015.0.i
  %i.ca = fsub <2 x float> %i.j, %i.bz
  %i.cb = fmul <2 x float> %i.ca, splat (float 5.000000e-01)
  %i.cc = fadd <2 x float> %i.bw, %i.cb
  store <2 x float> %i.cc, ptr %i.bv, align 4, !tbaa !9
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.bq, ptr %i.cd, align 4, !tbaa !15
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 0, ptr %i.ce, align 4, !tbaa !16
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 1, ptr %i.cf, align 4, !tbaa !18
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %b2GetLengthAndNormalize.exit, %bb.e, %bb.c, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @b2CollideChainSegmentAndCapsule(ptr dead_on_unwind noalias nofree writable sret(%struct.b2LocalManifold) align 4 captures(none) initializes((0, 44)) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, <2 x float> %3, <2 x float> %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.b2Polygon, align 8          ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load float, ptr %i.b, align 4, !tbaa !20
  %i.d = load <2 x float>, ptr %2, align 4        ; 3 uses
  %i.e = load <2 x float>, ptr %i.a, align 4      ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.f, i8 0, i64 112, i1 false), !alias.scope !52
  store <2 x float> %i.d, ptr %6, align 8, !tbaa !9, !alias.scope !52
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  store <2 x float> %i.e, ptr %i.g, align 8, !tbaa !9, !alias.scope !52
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 128
  %i.i = fmul <2 x float> %i.d, splat (float 5.000000e-01)
  %i.j = fmul <2 x float> %i.e, splat (float 5.000000e-01)
  %i.k = fadd <2 x float> %i.i, %i.j
  store <2 x float> %i.k, ptr %i.h, align 8, !tbaa !9, !alias.scope !52
  %i.l = fsub <2 x float> %i.e, %i.d              ; 3 uses
  %i.m = fmul <2 x float> %i.l, %i.l
  %i.n = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.m) ; 2 uses
  %i.o = fcmp ogt float %i.n, f0x057A0000
  br i1 %i.o, label %bb.b, label %b2MakeCapsule.exit

bb.b:                                             ; preds = %bb.a
  %i.p = tail call nnan float @llvm.sqrt.f32(float %i.n)
  %i.q = fdiv nnan float 1.000000e+00, %i.p
  %i.r = insertelement <2 x float> poison, float %i.q, i64 0
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer
  %i.t = fmul <2 x float> %i.l, %i.s
  br label %b2MakeCapsule.exit

b2MakeCapsule.exit:                               ; preds = %bb.a, %bb.b
  %.sroa.012.0.i.i = phi <2 x float> [ %i.t, %bb.b ], [ zeroinitializer, %bb.a ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.w = fneg <2 x float> %.sroa.012.0.i.i        ; 2 uses
  %i.x = shufflevector <2 x float> %i.w, <2 x float> %.sroa.012.0.i.i, <2 x i32> <i32 3, i32 0>
  store <2 x float> %i.x, ptr %i.u, align 8, !tbaa !9, !alias.scope !52
  %.sroa.01.4.vec.insert.i18.i = shufflevector <2 x float> %i.w, <2 x float> %.sroa.012.0.i.i, <2 x i32> <i32 1, i32 2>
  store <2 x float> %.sroa.01.4.vec.insert.i18.i, ptr %i.v, align 8, !tbaa !9, !alias.scope !52
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 140
  store i32 2, ptr %i.y, align 4, !tbaa !23, !alias.scope !52
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 136
  store float %i.c, ptr %i.z, align 8, !tbaa !22, !alias.scope !52
  call void @b2CollideChainSegmentAndPolygon(ptr dead_on_unwind writable sret(%struct.b2LocalManifold) align 4 %0, ptr noundef %1, ptr noundef nonnull %6, <2 x float> %3, <2 x float> %4, ptr noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  ret void
}

; Function Attrs: nounwind uwtable
define void @b2CollideChainSegmentAndPolygon(ptr dead_on_unwind noalias nofree writable sret(%struct.b2LocalManifold) align 4 captures(none) initializes((0, 44)) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, <2 x float> %3, <2 x float> %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca [8 x %struct.b2Vec2], align 16      ; 22 uses
  %7 = alloca [8 x %struct.b2Vec2], align 16      ; 10 uses
  %8 = alloca %struct.b2DistanceInput, align 4    ; 7 uses
  %9 = alloca %struct.b2ShapeProxy, align 4       ; 4 uses
  %10 = alloca %struct.b2ShapeProxy, align 4      ; 4 uses
  %11 = alloca %struct.b2DistanceOutput, align 8  ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %0, i8 0, i64 44, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.b = load <2 x float>, ptr %i.a, align 4      ; 2 uses
  %i.c = shufflevector <2 x float> %i.b, <2 x float> poison, <2 x i32> zeroinitializer
  %i.d = fmul <2 x float> %4, %i.c                ; 2 uses
  %i.e = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.f = shufflevector <2 x float> %i.b, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.g = fmul <2 x float> %i.e, %i.f              ; 2 uses
  %i.h = fsub <2 x float> %i.d, %i.g
  %i.i = fadd <2 x float> %i.d, %i.g
  %i.j = shufflevector <2 x float> %i.h, <2 x float> %i.i, <2 x i32> <i32 0, i32 3>
  %i.k = fadd <2 x float> %3, %i.j                ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.m = load float, ptr %i.l, align 4, !tbaa !22 ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.0237.0.copyload = load <2 x float>, ptr %i.n, align 4, !tbaa !9 ; 22 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0226.0.copyload = load <2 x float>, ptr %i.o, align 4, !tbaa !9 ; 15 uses
  %i.p = fsub <2 x float> %.sroa.0226.0.copyload, %.sroa.0237.0.copyload ; 4 uses
  %i.q = fmul <2 x float> %i.p, %i.p
  %i.r = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.q) ; 2 uses
  %i.s = fcmp ogt float %i.r, f0x057A0000
  br i1 %i.s, label %bb.b, label %b2Normalize.exit

bb.b:                                             ; preds = %bb.a
  %i.t = tail call nnan float @llvm.sqrt.f32(float %i.r)
  %i.u = fdiv nnan float 1.000000e+00, %i.t
  %i.v = insertelement <2 x float> poison, float %i.u, i64 0
  %i.w = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> zeroinitializer
  %i.x = fmul <2 x float> %i.p, %i.w
  br label %b2Normalize.exit

b2Normalize.exit:                                 ; preds = %bb.a, %bb.b
  %.sroa.012.0.i = phi <2 x float> [ %i.x, %bb.b ], [ zeroinitializer, %bb.a ] ; 13 uses
  %i.y = load <2 x float>, ptr %1, align 4
  %i.z = fsub <2 x float> %.sroa.0237.0.copyload, %i.y ; 3 uses
  %i.aa = fmul <2 x float> %i.z, %i.z
  %i.ab = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.aa) ; 2 uses
  %i.ac = fcmp ogt float %i.ab, f0x057A0000
  br i1 %i.ac, label %bb.c, label %b2Normalize.exit346

bb.c:                                             ; preds = %b2Normalize.exit
  %i.ad = tail call nnan float @llvm.sqrt.f32(float %i.ab)
  %i.ae = fdiv nnan float 1.000000e+00, %i.ad
  %i.af = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ah = fmul <2 x float> %i.z, %i.ag
  br label %b2Normalize.exit346

b2Normalize.exit346:                              ; preds = %b2Normalize.exit, %bb.c
  %.sroa.012.0.i343 = phi <2 x float> [ %i.ah, %bb.c ], [ zeroinitializer, %b2Normalize.exit ] ; 6 uses
  %i.ai = shufflevector <2 x float> %.sroa.012.0.i343, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 5 uses
  %.sroa.0.0.vec.extract.i348 = extractelement <2 x float> %.sroa.012.0.i343, i64 0
  %i.aj = fneg float %.sroa.0.0.vec.extract.i348  ; 2 uses
  %.sroa.01.4.vec.insert.i = insertelement <2 x float> %i.ai, float %i.aj, i64 1
  %i.ak = shufflevector <2 x float> %.sroa.012.0.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 13 uses
  %i.al = fmul <2 x float> %i.ak, %.sroa.012.0.i343 ; 2 uses
  %shift = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %i.al, %shift
  %i.am = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.an = fcmp ult float %i.am, f0x3C23D70A       ; 7 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ap = load <2 x float>, ptr %i.ao, align 4
  %i.aq = fsub <2 x float> %i.ap, %.sroa.0226.0.copyload ; 3 uses
  %i.ar = fmul <2 x float> %i.aq, %i.aq
  %i.as = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ar) ; 2 uses
  %i.at = fcmp ogt float %i.as, f0x057A0000
  br i1 %i.at, label %bb.d, label %b2Normalize.exit364

bb.d:                                             ; preds = %b2Normalize.exit346
  %i.au = tail call nnan float @llvm.sqrt.f32(float %i.as)
  %i.av = fdiv nnan float 1.000000e+00, %i.au
  %i.aw = insertelement <2 x float> poison, float %i.av, i64 0
  %i.ax = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ay = fmul <2 x float> %i.aq, %i.ax
  br label %b2Normalize.exit364

b2Normalize.exit364:                              ; preds = %b2Normalize.exit346, %bb.d
  %.sroa.012.0.i361 = phi <2 x float> [ %i.ay, %bb.d ], [ zeroinitializer, %b2Normalize.exit346 ] ; 8 uses
  %i.az = shufflevector <2 x float> %.sroa.012.0.i361, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 5 uses
  %i.ba = fneg <2 x float> %.sroa.012.0.i361
  %.sroa.01.4.vec.insert.i368 = shufflevector <2 x float> %.sroa.012.0.i361, <2 x float> %i.ba, <2 x i32> <i32 1, i32 2>
  %i.bb = fmul <2 x float> %.sroa.012.0.i, %i.az  ; 2 uses
  %shift831 = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop832 = fsub <2 x float> %i.bb, %shift831
  %i.bc = extractelement <2 x float> %foldExtExtBinop832, i64 0
  %i.bd = fcmp oge float %i.bc, f0x3C23D70A       ; 7 uses
  %i.be = fneg <2 x float> %.sroa.012.0.i
  %.sroa.01.4.vec.insert.i376 = shufflevector <2 x float> %.sroa.012.0.i, <2 x float> %i.be, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.bf = fsub <2 x float> %i.k, %.sroa.0237.0.copyload ; 2 uses
  %i.bg = fmul <2 x float> %i.bf, %i.ak           ; 2 uses
  %i.bh = extractelement <2 x float> %i.bg, i64 0
  %i.bi = extractelement <2 x float> %i.bg, i64 1
  %i.bj = fcmp olt float %i.bh, %i.bi             ; 2 uses
  %i.bk = fmul <2 x float> %i.bf, %i.ai           ; 2 uses
  %i.bl = extractelement <2 x float> %i.bk, i64 0
  %i.bm = extractelement <2 x float> %i.bk, i64 1
  %i.bn = fcmp olt float %i.bl, %i.bm
  %.0299 = select i1 %i.an, i1 true, i1 %i.bn
  %i.bo = fsub <2 x float> %i.k, %.sroa.0226.0.copyload
  %i.bp = fmul <2 x float> %i.bo, %i.az           ; 2 uses
  %i.bq = extractelement <2 x float> %i.bp, i64 0
  %i.br = extractelement <2 x float> %i.bp, i64 1
  %i.bs = fcmp olt float %i.bq, %i.br
  %.0300 = select i1 %i.bd, i1 %i.bs, i1 true
  %or.cond = select i1 %i.bj, i1 %.0299, i1 false
  %or.cond6 = select i1 %or.cond, i1 %.0300, i1 false
  br i1 %or.cond6, label %bb.bh, label %bb.e

bb.e:                                             ; preds = %b2Normalize.exit364
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 140
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !23 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %i.bv = icmp sgt i32 %i.bu, 0                   ; 4 uses
  br i1 %i.bv, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 64
  %wide.trip.count = zext nneg i32 %i.bu to i64
  %i.bx = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.by = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %bb.f

._crit_edge:                                      ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  call void @b2MakeProxy(ptr dead_on_unwind nonnull writable sret(%struct.b2ShapeProxy) align 4 %9, ptr noundef nonnull %i.n, i32 noundef 2, float noundef 0.000000e+00) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %8, ptr noundef nonnull align 4 dereferenceable(72) %9, i64 72, i1 false), !tbaa.struct !60
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  %i.bz = getelementptr inbounds nuw i8, ptr %8, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #10
  call void @b2MakeProxy(ptr dead_on_unwind nonnull writable sret(%struct.b2ShapeProxy) align 4 %10, ptr noundef nonnull %6, i32 noundef %i.bu, float noundef 0.000000e+00) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %i.bz, ptr noundef nonnull align 4 dereferenceable(72) %10, i64 72, i1 false), !tbaa.struct !60
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  %i.ca = getelementptr inbounds nuw i8, ptr %8, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ca, ptr noundef nonnull align 4 dereferenceable(16) @b2Transform_identity, i64 16, i1 false), !tbaa.struct !61
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 160
  store i8 0, ptr %i.cb, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #10
  call void @b2ShapeDistance(ptr dead_on_unwind nonnull writable sret(%struct.b2DistanceOutput) align 4 %11, ptr noundef nonnull %8, ptr noundef %5, ptr noundef null, i32 noundef 0) #10
  %i.cc = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 3 uses
  %i.cd = load float, ptr %i.cc, align 8, !tbaa !69
  %i.ce = call float @b2GetLengthUnitsPerMeter() #10
  %i.cf = fmul float %i.ce, 5.000000e-03
  %i.cg = fmul float %i.cf, 4.000000e+00
  %i.ch = fadd float %i.m, %i.cg
  %i.ci = fcmp ogt float %i.cd, %i.ch
  br i1 %i.ci, label %.critedge, label %bb.g

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 5 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.cl = load <2 x float>, ptr %i.ck, align 4    ; 2 uses
  %i.cm = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cn = fmul <2 x float> %4, %i.cm              ; 2 uses
  %i.co = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cp = fmul <2 x float> %i.bx, %i.co           ; 2 uses
  %i.cq = fsub <2 x float> %i.cn, %i.cp
  %i.cr = fadd <2 x float> %i.cn, %i.cp
  %i.cs = shufflevector <2 x float> %i.cq, <2 x float> %i.cr, <2 x i32> <i32 0, i32 3>
  %i.ct = fadd <2 x float> %3, %i.cs
  store <2 x float> %i.ct, ptr %i.cj, align 8, !tbaa !9
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv
  %i.cw = load <2 x float>, ptr %i.cv, align 4    ; 2 uses
  %i.cx = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cy = fmul <2 x float> %4, %i.cx              ; 2 uses
  %i.cz = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.da = fmul <2 x float> %i.by, %i.cz           ; 2 uses
  %i.db = fsub <2 x float> %i.cy, %i.da
  %i.dc = fadd <2 x float> %i.cy, %i.da
  %i.dd = shufflevector <2 x float> %i.db, <2 x float> %i.dc, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.dd, ptr %i.cu, align 8, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !53

bb.g:                                             ; preds = %._crit_edge
  %.sroa.0168.0 = select i1 %i.an, <2 x float> %.sroa.01.4.vec.insert.i376, <2 x float> %.sroa.01.4.vec.insert.i ; 2 uses
  %.sroa.0165.0 = select i1 %i.bd, <2 x float> %.sroa.01.4.vec.insert.i368, <2 x float> %.sroa.01.4.vec.insert.i376 ; 2 uses
  br i1 %i.bj, label %bb.ac, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.de = load float, ptr %i.cc, align 8, !tbaa !69
  %i.df = call float @b2GetLengthUnitsPerMeter() #10
  %i.dg = fmul float %i.df, 5.000000e-03
  %i.dh = fmul float %i.dg, 1.000000e-01
  %i.di = fcmp ogt float %i.de, %i.dh
  br i1 %i.di, label %bb.i, label %bb.ac

bb.i:                                             ; preds = %bb.h
  %i.dj = load i16, ptr %5, align 2, !tbaa !71
  %i.dk = icmp eq i16 %i.dj, 1
  br i1 %i.dk, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  %.sroa.0159.0.copyload = load <2 x float>, ptr %11, align 8, !tbaa !9 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.sroa.0158.0.copyload = load <2 x float>, ptr %i.dl, align 8, !tbaa !9
  %i.dm = fsub <2 x float> %.sroa.0158.0.copyload, %.sroa.0159.0.copyload ; 3 uses
  %i.dn = fmul <2 x float> %i.dm, %i.dm
  %i.do = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.dn) ; 2 uses
  %i.dp = fcmp ogt float %i.do, f0x057A0000
  br i1 %i.dp, label %bb.k, label %b2Normalize.exit428

bb.k:                                             ; preds = %bb.j
  %i.dq = call nnan float @llvm.sqrt.f32(float %i.do)
  %i.dr = fdiv nnan float 1.000000e+00, %i.dq
  %i.ds = insertelement <2 x float> poison, float %i.dr, i64 0
  %i.dt = shufflevector <2 x float> %i.ds, <2 x float> poison, <2 x i32> zeroinitializer
  %i.du = fmul <2 x float> %i.dm, %i.dt
  br label %b2Normalize.exit428

b2Normalize.exit428:                              ; preds = %bb.j, %bb.k
  %.sroa.012.0.i425 = phi <2 x float> [ %i.du, %bb.k ], [ zeroinitializer, %bb.j ] ; 5 uses
  %.sroa.01.0.vec.extract.i.i = extractelement <2 x float> %.sroa.012.0.i425, i64 0
  %i.dv = fmul <2 x float> %.sroa.012.0.i, %.sroa.012.0.i425
  %i.dw = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.dv)
  %i.dx = fcmp ugt float %i.dw, 0.000000e+00
  br i1 %i.dx, label %bb.n, label %bb.l

bb.l:                                             ; preds = %b2Normalize.exit428
  br i1 %i.an, label %b2ClassifyNormal.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dy = fmul float %.sroa.01.0.vec.extract.i.i, %i.aj
  %foldExtExtBinop834 = fmul <2 x float> %.sroa.012.0.i343, %.sroa.012.0.i425
  %i.dz = extractelement <2 x float> %foldExtExtBinop834, i64 1
  %i.ea = fsub float %i.dy, %i.dz
  br label %b2ClassifyNormal.exit

bb.n:                                             ; preds = %b2Normalize.exit428
  br i1 %i.bd, label %bb.o, label %b2ClassifyNormal.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.eb = fmul <2 x float> %.sroa.012.0.i361, %.sroa.012.0.i425
  %i.ec = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.eb)
  br label %b2ClassifyNormal.exit

b2ClassifyNormal.exit:                            ; preds = %bb.m, %bb.o
  %.0.i.in.in = phi float [ %i.ea, %bb.m ], [ %i.ec, %bb.o ]
  %.0.i.in = fcmp ogt float %.0.i.in.in, f0x3C23D70A
  br i1 %.0.i.in, label %.critedge, label %bb.p

bb.p:                                             ; preds = %b2ClassifyNormal.exit
  store <2 x float> %.sroa.012.0.i425, ptr %0, align 4, !tbaa !9
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %.sroa.0159.0.copyload, ptr %i.ed, align 4, !tbaa !9
  %i.ee = load float, ptr %i.cc, align 8, !tbaa !69
  %i.ef = fsub float %i.ee, %i.m
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.ef, ptr %i.eg, align 4, !tbaa !15
  %i.eh = getelementptr inbounds nuw i8, ptr %5, i64 2
  %i.ei = load i8, ptr %i.eh, align 2, !tbaa !58
  %i.ej = zext i8 %i.ei to i16
  %i.ek = shl nuw i16 %i.ej, 8
  %i.el = getelementptr inbounds nuw i8, ptr %5, i64 5
  %i.em = load i8, ptr %i.el, align 1, !tbaa !58
  %i.en = zext i8 %i.em to i16
  %i.eo = or disjoint i16 %i.ek, %i.en
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 %i.eo, ptr %i.ep, align 4, !tbaa !16
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 1, ptr %i.eq, align 4, !tbaa !18
  br label %.critedge

b2ClassifyNormal.exit.thread:                     ; preds = %bb.n, %bb.l
  %i.er = getelementptr inbounds nuw i8, ptr %5, i64 5
  %i.es = load i8, ptr %i.er, align 1, !tbaa !58
  %i.et = zext i8 %i.es to i32
  br label %bb.ax

bb.q:                                             ; preds = %bb.i
  %i.eu = getelementptr inbounds nuw i8, ptr %5, i64 2
  %i.ev = load i8, ptr %i.eu, align 2, !tbaa !58
  %i.ew = getelementptr inbounds nuw i8, ptr %5, i64 3
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !58
  %i.ey = getelementptr inbounds nuw i8, ptr %5, i64 5
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !58  ; 3 uses
  %i.fa = zext i8 %i.ez to i32                    ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %5, i64 6
  %i.fc = load i8, ptr %i.fb, align 2, !tbaa !58  ; 3 uses
  %i.fd = zext i8 %i.fc to i32                    ; 2 uses
  %i.fe = icmp eq i8 %i.ev, %i.ex
  br i1 %i.fe, label %bb.r, label %bb.ab

bb.r:                                             ; preds = %bb.q
  %i.ff = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.fg = load <2 x float>, ptr %11, align 8
  %i.fh = load <2 x float>, ptr %i.ff, align 8
  %i.fi = zext i8 %i.ez to i64
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.fi
  %i.fk = load <2 x float>, ptr %i.fj, align 8
  %i.fl = fsub <2 x float> %i.fg, %i.fh           ; 2 uses
  %i.fm = fmul <2 x float> %i.fl, %i.fk
  %i.fn = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.fm)
  %i.fo = zext i8 %i.fc to i64
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.fo
  %i.fq = load <2 x float>, ptr %i.fp, align 8
  %i.fr = fmul <2 x float> %i.fl, %i.fq
  %i.fs = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.fr)
  %i.ft = fcmp ogt float %i.fn, %i.fs
  %i.fu = select i1 %i.ft, i32 %i.fa, i32 %i.fd   ; 7 uses
  %i.fv = zext nneg i32 %i.fu to i64              ; 3 uses
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.fv
  %.sroa.0126.0.copyload = load <2 x float>, ptr %i.fw, align 8, !tbaa !9 ; 11 uses
  %.sroa.0.4.vec.extract.i445 = extractelement <2 x float> %.sroa.0126.0.copyload, i64 1
  %i.fx = fneg float %.sroa.0.4.vec.extract.i445  ; 2 uses
  %i.fy = fneg <2 x float> %.sroa.0126.0.copyload
  %i.fz = extractelement <2 x float> %.sroa.012.0.i, i64 1
  %i.ga = fmul float %i.fz, %i.fx
  %foldExtExtBinop836 = fmul <2 x float> %.sroa.012.0.i, %.sroa.0126.0.copyload
  %i.gb = extractelement <2 x float> %foldExtExtBinop836, i64 0
  %i.gc = fsub float %i.ga, %i.gb
  %i.gd = fcmp ugt float %i.gc, 0.000000e+00
  br i1 %i.gd, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  br i1 %i.an, label %b2ClassifyNormal.exit458.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ge = fmul <2 x float> %.sroa.012.0.i343, %.sroa.0126.0.copyload
  %i.gf = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ge)
  br label %b2ClassifyNormal.exit458

bb.u:                                             ; preds = %bb.r
  br i1 %i.bd, label %bb.v, label %b2ClassifyNormal.exit458.thread

bb.v:                                             ; preds = %bb.u
  %i.gg = extractelement <2 x float> %.sroa.012.0.i361, i64 1
  %i.gh = fmul float %i.gg, %i.fx
  %foldExtExtBinop838 = fmul <2 x float> %.sroa.012.0.i361, %.sroa.0126.0.copyload
  %i.gi = extractelement <2 x float> %foldExtExtBinop838, i64 0
  %i.gj = fsub float %i.gh, %i.gi
  br label %b2ClassifyNormal.exit458

b2ClassifyNormal.exit458:                         ; preds = %bb.t, %bb.v
  %.0.i451.in.in = phi float [ %i.gf, %bb.t ], [ %i.gj, %bb.v ]
  %.0.i451.in = fcmp ogt float %.0.i451.in.in, f0x3C23D70A
  br i1 %.0.i451.in, label %.critedge, label %bb.w

bb.w:                                             ; preds = %b2ClassifyNormal.exit458
  %i.gk = add nsw i32 %i.bu, -1
  %i.gl = icmp slt i32 %i.fu, %i.gk
  %i.gm = add nuw nsw i32 %i.fu, 1
  %i.gn = select i1 %i.gl, i32 %i.gm, i32 0       ; 2 uses
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.fv
  %.sroa.0111.0.copyload = load <2 x float>, ptr %i.go, align 8, !tbaa !9 ; 3 uses
  %i.gp = zext nneg i32 %i.gn to i64
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.gp
  %.sroa.0110.0.copyload = load <2 x float>, ptr %i.gq, align 8, !tbaa !9
  %i.gr = fsub <2 x float> %.sroa.0237.0.copyload, %.sroa.0111.0.copyload
  %i.gs = fmul <2 x float> %.sroa.0126.0.copyload, %i.gr
  %i.gt = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.gs)
  %i.gu = fsub <2 x float> %.sroa.0226.0.copyload, %.sroa.0111.0.copyload
  %i.gv = fmul <2 x float> %.sroa.0126.0.copyload, %i.gu
  %i.gw = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.gv)
  %i.gx = fcmp olt float %i.gt, %i.gw
  %i.gy = fmul <2 x float> %i.ak, %.sroa.0126.0.copyload ; 2 uses
  %shift840 = shufflevector <2 x float> %i.gy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop841 = fsub <2 x float> %i.gy, %shift840
  %i.gz = extractelement <2 x float> %foldExtExtBinop841, i64 0 ; 2 uses
  br i1 %i.gx, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ha = fmul <2 x float> %.sroa.0168.0, %.sroa.0126.0.copyload
  %i.hb = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ha)
  %i.hc = fcmp olt float %i.hb, %i.gz
  br i1 %i.hc, label %.critedge, label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.hd = fmul <2 x float> %.sroa.0165.0, %.sroa.0126.0.copyload
  %i.he = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.hd)
  %i.hf = fcmp olt float %i.he, %i.gz
  br i1 %i.hf, label %.critedge, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.tr325 = trunc nuw nsw i32 %i.fu to i16
  %i.hg = shl nuw nsw i16 %.tr325, 8
  %i.hh = or disjoint i16 %i.hg, 1
  %.tr326 = trunc nuw nsw i32 %i.gn to i16
  %i.hi = shl nuw nsw i16 %.tr326, 8
  call fastcc void @b2ClipSegments(ptr dead_on_unwind noalias writable align 4 %0, <2 x float> %.sroa.0111.0.copyload, <2 x float> %.sroa.0110.0.copyload, <2 x float> %.sroa.0237.0.copyload, <2 x float> %.sroa.0226.0.copyload, <2 x float> %.sroa.0126.0.copyload, float noundef %i.m, float noundef 0.000000e+00, i16 noundef zeroext %i.hh, i16 noundef zeroext %i.hi)
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !18
  %i.hl = icmp eq i32 %i.hk, 2
  br i1 %i.hl, label %bb.aa, label %.critedge

bb.aa:                                            ; preds = %bb.z
  store <2 x float> %i.fy, ptr %0, align 4, !tbaa !9
  br label %.critedge

bb.ab:                                            ; preds = %bb.q
  %i.hm = zext i8 %i.ez to i64
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.hm
  %i.ho = load <2 x float>, ptr %i.hn, align 8
  %i.hp = fsub <2 x float> %i.ho, %.sroa.0237.0.copyload
  %i.hq = fmul <2 x float> %i.ak, %i.hp           ; 2 uses
  %shift843 = shufflevector <2 x float> %i.hq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop844 = fsub <2 x float> %i.hq, %shift843
  %i.hr = extractelement <2 x float> %foldExtExtBinop844, i64 0
  %i.hs = zext i8 %i.fc to i64
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.hs
  %i.hu = load <2 x float>, ptr %i.ht, align 8
  %i.hv = fsub <2 x float> %i.hu, %.sroa.0226.0.copyload
  %i.hw = fmul <2 x float> %i.ak, %i.hv           ; 2 uses
  %shift846 = shufflevector <2 x float> %i.hw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop847 = fsub <2 x float> %i.hw, %shift846
end_hunk_1
begin_hunk_2_@b2CollideChainSegmentAndPolygon:bb.a
  %.sroa.01.4.vec.extract.i125.pre-phi.i650 = phi float [ %.sroa.01.4.vec.extract.i87.i644, %bb.bd ], [ %.sroa.01.4.vec.extract.i87.i644, %bb.be ], [ %i.ro, %bb.bf ]
  %.sroa.01.0.vec.extract.i122.pre-phi.i652 = phi float [ %.sroa.01.0.vec.extract.i84.i643, %bb.bd ], [ %.sroa.01.0.vec.extract.i84.i643, %bb.be ], [ %i.rn, %bb.bf ]
  %i.rp = phi <2 x float> [ %i.qe, %bb.bd ], [ %i.qe, %bb.be ], [ %i.rm, %bb.bf ]
  %.sroa.01.4.vec.extract.i115.i654 = extractelement <2 x float> %.sroa.020.0.i648, i64 1
  %i.rq = fsub <2 x float> %.sroa.020.0.i648, %.sroa.0237.0.copyload
  %i.rr = fmul <2 x float> %i.ak, %i.rq           ; 2 uses
  %i.rs = fmul <2 x float> %i.ak, %i.rp           ; 2 uses
  %i.rt = fsub float 0.000000e+00, %i.m
  %i.ru = shufflevector <2 x float> %i.rr, <2 x float> %i.rs, <2 x i32> <i32 0, i32 2>
  %i.rv = shufflevector <2 x float> %i.rr, <2 x float> %i.rs, <2 x i32> <i32 1, i32 3>
  %i.rw = fsub <2 x float> %i.ru, %i.rv           ; 3 uses
  %i.rx = insertelement <2 x float> poison, float %i.rt, i64 0
  %i.ry = shufflevector <2 x float> %i.rx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rz = fsub <2 x float> %i.ry, %i.rw
  %i.sa = fmul <2 x float> %i.rz, splat (float 5.000000e-01)
  %i.sb = shufflevector <2 x float> %i.sa, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.sc = shufflevector <2 x float> %.sroa.012.0.i, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 0>
  %i.sd = fmul <4 x float> %i.sc, %i.sb           ; 3 uses
  %i.se = extractelement <4 x float> %i.sd, i64 2
  %i.sf = fsub float %.sroa.01.4.vec.extract.i115.i654, %i.se
  %i.sg = insertelement <2 x float> %.sroa.020.0.i648, float %.sroa.01.0.vec.extract.i122.pre-phi.i652, i64 1
  %i.sh = shufflevector <4 x float> %i.sd, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.si = fadd <2 x float> %i.sg, %i.sh           ; 2 uses
  %.sroa.03.4.vec.insert.i.i656 = insertelement <2 x float> %i.si, float %i.sf, i64 1
  %i.sj = shufflevector <2 x float> %i.si, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.sk = extractelement <4 x float> %i.sd, i64 3
  %i.sl = fsub float %.sroa.01.4.vec.extract.i125.pre-phi.i650, %i.sk
  %.sroa.03.4.vec.insert.i139.i658 = insertelement <2 x float> %i.sj, float %i.sl, i64 1
  %i.sm = fadd float %i.m, 0.000000e+00           ; 2 uses
  %i.sn = extractelement <2 x float> %i.rw, i64 0
  %i.so = fsub float %i.sn, %i.sm
  %i.sp = extractelement <2 x float> %i.rw, i64 1
  %i.sq = fsub float %i.sp, %i.sm
  br label %b2ClipSegments.exit663

b2ClipSegments.exit663:                           ; preds = %bb.az, %bb.bg
  %.sroa.6.0 = phi float [ 0.000000e+00, %bb.az ], [ %i.so, %bb.bg ]
  %.sroa.7.0 = phi i16 [ 0, %bb.az ], [ %i.py, %bb.bg ]
  %.sroa.9.0 = phi float [ 0.000000e+00, %bb.az ], [ %i.sq, %bb.bg ]
  %.sroa.10.0 = phi i16 [ 0, %bb.az ], [ %i.qb, %bb.bg ]
  %.sroa.11665.0 = phi i32 [ 0, %bb.az ], [ 2, %bb.bg ]
  %.sroa.8664.0 = phi <2 x float> [ zeroinitializer, %bb.az ], [ %.sroa.03.4.vec.insert.i139.i658, %bb.bg ]
  %.sroa.5.0 = phi <2 x float> [ zeroinitializer, %bb.az ], [ %.sroa.03.4.vec.insert.i.i656, %bb.bg ]
  %.sroa.0.0 = phi <2 x float> [ zeroinitializer, %bb.az ], [ %.sroa.01.4.vec.insert.i376, %bb.bg ]
  store <2 x float> %.sroa.0.0, ptr %0, align 4, !tbaa !9
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 0, ptr %.sroa.8.0..sroa_idx, align 2
  %.sroa.8664.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x float> %.sroa.8664.0, ptr %.sroa.8664.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i16 %.sroa.10.0, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 38
  store i16 0, ptr %.sroa.11.0..sroa_idx, align 2, !tbaa !58
  %.sroa.11665.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.sroa.11665.0, ptr %.sroa.11665.0..sroa_idx, align 4, !tbaa !59
  br label %.critedge

.critedge:                                        ; preds = %.thread, %b2ClassifyNormal.exit458, %b2ClassifyNormal.exit, %bb.x, %bb.y, %bb.aa, %bb.z, %bb.p, %b2ClipSegments.exit663, %bb.aw, %bb.am, %bb.av, %b2ClipSegments.exit, %bb.al, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %bb.bh

bb.bh:                                            ; preds = %b2Normalize.exit364, %.critedge
  ret void
}

declare void @b2MakeProxy(ptr dead_on_unwind writable sret(%struct.b2ShapeProxy) align 4, ptr noundef, i32 noundef, float noundef) local_unnamed_addr #3

declare void @b2ShapeDistance(ptr dead_on_unwind writable sret(%struct.b2DistanceOutput) align 4, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal fastcc void @b2ClipSegments(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 4 captures(none) initializes((0, 44)) %0, <2 x float> %1, <2 x float> %2, <2 x float> %3, <2 x float> %4, <2 x float> %5, float noundef %6, float noundef nofpclass(nan inf nzero sub norm) %7, i16 noundef zeroext range(i16 0, -254) %8, i16 noundef zeroext range(i16 0, -255) %9) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %0, i8 0, i64 44, i1 false)
  %i.a = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.b = fsub <2 x float> %2, %1
  %i.c = fmul <2 x float> %i.b, %i.a              ; 2 uses
  %shift = shufflevector <2 x float> %i.c, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %shift, %i.c ; 2 uses
  %i.d = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.e = fsub <2 x float> %3, %1                  ; 3 uses
  %i.f = shufflevector <2 x float> %i.e, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.g = fmul <2 x float> %i.f, %5                ; 2 uses
  %shift149 = shufflevector <2 x float> %i.g, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop150 = fsub <2 x float> %i.g, %shift149 ; 3 uses
  %i.h = extractelement <2 x float> %foldExtExtBinop150, i64 0 ; 2 uses
  %i.i = fsub <2 x float> %4, %1
  %i.j = fmul <2 x float> %i.i, %i.a              ; 2 uses
  %shift152 = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop153 = fsub <2 x float> %shift152, %i.j ; 4 uses
  %i.k = extractelement <2 x float> %foldExtExtBinop153, i64 0 ; 3 uses
  %i.l = fcmp olt float %i.h, 0.000000e+00
  %i.m = fcmp olt float %i.d, %i.k
  %or.cond = select i1 %i.l, i1 true, i1 %i.m
  br i1 %or.cond, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = fcmp olt float %i.k, 0.000000e+00
  br i1 %i.n, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %foldExtExtBinop155 = fsub <2 x float> %foldExtExtBinop150, %foldExtExtBinop153
  %i.o = extractelement <2 x float> %foldExtExtBinop155, i64 0 ; 2 uses
  %i.p = fcmp ogt float %i.o, f0x34000000
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = fsub float 0.000000e+00, %i.k
  %i.r = fdiv float %i.q, %i.o                    ; 2 uses
  %i.s = fsub float 1.000000e+00, %i.r
  %i.t = insertelement <2 x float> poison, float %i.s, i64 0
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> zeroinitializer
  %i.v = fmul <2 x float> %4, %i.u
  %i.w = insertelement <2 x float> poison, float %i.r, i64 0
  %i.x = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> zeroinitializer
  %i.y = fmul <2 x float> %3, %i.x
  %i.z = fadd <2 x float> %i.y, %i.v
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.020.0 = phi <2 x float> [ %i.z, %bb.d ], [ %4, %bb.c ], [ %4, %bb.b ] ; 2 uses
  %i.aa = fcmp ogt float %i.h, %i.d
  br i1 %i.aa, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %foldExtExtBinop157 = fsub <2 x float> %foldExtExtBinop150, %foldExtExtBinop153
  %i.ab = extractelement <2 x float> %foldExtExtBinop157, i64 0 ; 2 uses
  %i.ac = fcmp ogt float %i.ab, f0x34000000
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %foldExtExtBinop159 = fsub <2 x float> %foldExtExtBinop, %foldExtExtBinop153
  %i.ad = extractelement <2 x float> %foldExtExtBinop159, i64 0
  %i.ae = fdiv float %i.ad, %i.ab                 ; 2 uses
  %i.af = fsub float 1.000000e+00, %i.ae
  %i.ag = insertelement <2 x float> poison, float %i.af, i64 0
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ai = fmul <2 x float> %4, %i.ah
  %i.aj = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.ak = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.al = fmul <2 x float> %3, %i.ak
  %i.am = fadd <2 x float> %i.al, %i.ai           ; 2 uses
  %i.an = fsub <2 x float> %i.am, %1
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %i.ao = phi <2 x float> [ %3, %bb.e ], [ %3, %bb.f ], [ %i.am, %bb.g ]
  %i.ap = phi <2 x float> [ %i.e, %bb.e ], [ %i.e, %bb.f ], [ %i.an, %bb.g ]
  %i.aq = fsub <2 x float> %.sroa.020.0, %1
  %i.ar = fmul <2 x float> %5, %i.aq
  %i.as = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ar) ; 2 uses
  %i.at = fmul <2 x float> %5, %i.ap
  %i.au = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.at) ; 2 uses
  %i.av = fsub float %6, %7                       ; 2 uses
  %i.aw = fsub float %i.av, %i.as
  %i.ax = fmul float %i.aw, 5.000000e-01
  %i.ay = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.az = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ba = fmul <2 x float> %5, %i.az
  %i.bb = fadd <2 x float> %.sroa.020.0, %i.ba
  %i.bc = fsub float %i.av, %i.au
  %i.bd = fmul float %i.bc, 5.000000e-01
  %i.be = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bg = fmul <2 x float> %5, %i.bf
  %i.bh = fadd <2 x float> %i.ao, %i.bg
  %i.bi = fadd float %6, %7                       ; 2 uses
  store <2 x float> %5, ptr %0, align 4, !tbaa !9
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %i.bb, ptr %i.bj, align 4, !tbaa !9
  %i.bk = fsub float %i.as, %i.bi
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.bk, ptr %i.bl, align 4, !tbaa !15
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 %8, ptr %i.bm, align 4, !tbaa !16
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x float> %i.bh, ptr %i.bn, align 4, !tbaa !9
  %i.bo = fsub float %i.au, %i.bi
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.bo, ptr %i.bp, align 4, !tbaa !15
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i16 %9, ptr %i.bq, align 4, !tbaa !16
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 2, ptr %i.br, align 4, !tbaa !18
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"float", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"b2Vec2", !8, i64 0, !8, i64 4}
!11 = !{!"b2Circle", !10, i64 0, !8, i64 8}
!12 = !{!11, !8, i64 8}
!13 = !{!"short", !4, i64 0}
!14 = !{!"b2LocalManifoldPoint", !10, i64 0, !8, i64 8, !13, i64 12}
!15 = !{!14, !8, i64 8}
!16 = !{!14, !13, i64 12}
!17 = !{!"b2LocalManifold", !10, i64 0, !4, i64 8, !5, i64 40}
!18 = !{!17, !5, i64 40}
!19 = !{!"b2Capsule", !10, i64 0, !10, i64 8, !8, i64 16}
!20 = !{!19, !8, i64 16}
!21 = !{!"b2Polygon", !4, i64 0, !4, i64 64, !10, i64 128, !8, i64 136, !5, i64 140}
!22 = !{!21, !8, i64 136}
!23 = !{!21, !5, i64 140}
!24 = !{!"llvm.loop.mustprogress"}
!25 = distinct !{!25, !24}
!26 = distinct !{!26, i1 true, !"b2MakeCapsule"}
!27 = distinct !{!27, !26, !"b2MakeCapsule: argument 0"}
!28 = !{!27}
!29 = distinct !{!29, !24}
!30 = distinct !{!30, !24}
!31 = distinct !{!31, !24}
!32 = distinct !{!32, !40}
!33 = distinct !{!33, !40}
!34 = distinct !{!34, !24}
!35 = distinct !{!35, !24}
!36 = distinct !{!36, !24}
!37 = distinct !{!37, !24}
!38 = distinct !{!38, !24}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.unroll.disable"}
!41 = !{!"b2SegmentDistanceResult", !10, i64 0, !10, i64 8, !8, i64 16, !8, i64 20, !8, i64 24}
!42 = !{!41, !8, i64 24}
!43 = !{!41, !8, i64 16}
!44 = distinct !{!44, i1 true, !"b2CollideCapsuleAndCircle"}
!45 = distinct !{!45, !44, !"b2CollideCapsuleAndCircle: argument 0"}
!46 = !{!45}
!47 = distinct !{!47, i1 true, !"b2MakeCapsule"}
!48 = distinct !{!48, !47, !"b2MakeCapsule: argument 0"}
!49 = !{!48}
!50 = distinct !{!50, i1 true, !"b2MakeCapsule"}
!51 = distinct !{!51, !50, !"b2MakeCapsule: argument 0"}
!52 = !{!51}
!53 = distinct !{!53, !24}
!54 = distinct !{!54, !24}
!55 = distinct !{!55, !24}
!56 = distinct !{!56, !24}
!57 = distinct !{!57, !24}
!58 = !{!4, !4, i64 0}
!59 = !{!5, !5, i64 0}
!60 = !{i64 0, i64 64, !58, i64 64, i64 4, !59, i64 68, i64 4, !9}
!61 = !{i64 0, i64 4, !9, i64 4, i64 4, !9, i64 8, i64 4, !9, i64 12, i64 4, !9}
!62 = !{!"b2ShapeProxy", !4, i64 0, !5, i64 64, !8, i64 68}
!63 = !{!"b2Rot", !8, i64 0, !8, i64 4}
!64 = !{!"b2Transform", !10, i64 0, !63, i64 8}
!65 = !{!"_Bool", !4, i64 0}
!66 = !{!"b2DistanceInput", !62, i64 0, !62, i64 72, !64, i64 144, !65, i64 160}
!67 = !{!66, !65, i64 160}
!68 = !{!"b2DistanceOutput", !10, i64 0, !10, i64 8, !10, i64 16, !8, i64 24, !5, i64 28, !5, i64 32}
!69 = !{!68, !8, i64 24}
!70 = !{!"b2SimplexCache", !13, i64 0, !4, i64 2, !4, i64 5}
!71 = !{!70, !13, i64 0}
end_hunk_2
