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
  %sqrt.i = tail call float @sqrtf(float noundef %i.m) #10 ; 2 uses
  %i.o = fdiv float 1.000000e+00, %sqrt.i
  %i.p = insertelement <2 x float> poison, float %i.o, i64 0
  %i.q = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> zeroinitializer
  %i.r = fmul <2 x float> %i.k, %i.q
  br label %b2GetLengthAndNormalize.exit

b2GetLengthAndNormalize.exit:                     ; preds = %bb.a, %bb.b
  %.sink.i = phi float [ %sqrt.i, %bb.b ], [ 0.000000e+00, %bb.a ]
  %.sroa.015.0.i = phi <2 x float> [ %i.r, %bb.b ], [ zeroinitializer, %bb.a ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load float, ptr %i.s, align 4, !tbaa !12 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load float, ptr %i.u, align 4, !tbaa !12 ; 2 uses
  %i.w = fsub float %.sink.i, %i.t
  %i.x = fsub float %i.w, %i.v                    ; 2 uses
  %i.y = tail call float @b2GetLengthUnitsPerMeter() #10
  %i.z = fmul float %i.y, 5.000000e-03
  %i.aa = fmul float %i.z, 4.000000e+00
  %i.ab = fcmp ogt float %i.x, %i.aa
  br i1 %i.ab, label %bb.d, label %bb.c

bb.c:                                             ; preds = %b2GetLengthAndNormalize.exit
  store <2 x float> %.sroa.015.0.i, ptr %0, align 4, !tbaa !9
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = insertelement <2 x float> poison, float %i.t, i64 0
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> zeroinitializer
  %i.af = fmul <2 x float> %i.ae, %.sroa.015.0.i
  %i.ag = fadd <2 x float> %.sroa.016.0.copyload, %i.af
  %i.ah = insertelement <2 x float> poison, float %i.v, i64 0
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aj = fmul <2 x float> %.sroa.015.0.i, %i.ai
  %i.ak = fsub <2 x float> %i.j, %i.aj
  %i.al = fmul <2 x float> %i.ag, splat (float 5.000000e-01)
  %i.am = fmul <2 x float> %i.ak, splat (float 5.000000e-01)
  %i.an = fadd <2 x float> %i.al, %i.am
  store <2 x float> %i.an, ptr %i.ac, align 4, !tbaa !9
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.x, ptr %i.ao, align 4, !tbaa !15
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 0, ptr %i.ap, align 4, !tbaa !16
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 1, ptr %i.aq, align 4, !tbaa !18
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
  %sqrt.i = tail call float @sqrtf(float noundef %i.ae) #10 ; 2 uses
  %i.ag = fdiv float 1.000000e+00, %sqrt.i
  %i.ah = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aj = fmul <2 x float> %i.ac, %i.ai
  br label %b2GetLengthAndNormalize.exit

b2GetLengthAndNormalize.exit:                     ; preds = %bb.d, %bb.e
  %.sink.i = phi float [ %sqrt.i, %bb.e ], [ 0.000000e+00, %bb.d ]
  %.sroa.015.0.i = phi <2 x float> [ %i.aj, %bb.e ], [ zeroinitializer, %bb.d ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.al = load float, ptr %i.ak, align 4, !tbaa !20 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.an = load float, ptr %i.am, align 4, !tbaa !12 ; 2 uses
  %i.ao = fsub float %.sink.i, %i.al
  %i.ap = fsub float %i.ao, %i.an                 ; 2 uses
  %i.aq = tail call float @b2GetLengthUnitsPerMeter() #10
  %i.ar = fmul float %i.aq, 5.000000e-03
  %i.as = fmul float %i.ar, 4.000000e+00
  %i.at = fcmp ogt float %i.ap, %i.as
  br i1 %i.at, label %bb.g, label %bb.f

bb.f:                                             ; preds = %b2GetLengthAndNormalize.exit
  store <2 x float> %.sroa.015.0.i, ptr %0, align 4, !tbaa !9
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.av = insertelement <2 x float> poison, float %i.al, i64 0
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ax = fmul <2 x float> %i.aw, %.sroa.015.0.i
  %i.ay = fadd <2 x float> %i.ab, %i.ax
  %i.az = insertelement <2 x float> poison, float %i.an, i64 0
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bb = fmul <2 x float> %.sroa.015.0.i, %i.ba
  %i.bc = fsub <2 x float> %i.k, %i.bb
  %i.bd = fmul <2 x float> %i.ay, splat (float 5.000000e-01)
  %i.be = fmul <2 x float> %i.bc, splat (float 5.000000e-01)
  %i.bf = fadd <2 x float> %i.bd, %i.be
  store <2 x float> %i.bf, ptr %i.au, align 4, !tbaa !9
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.ap, ptr %i.bg, align 4, !tbaa !15
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 0, ptr %i.bh, align 4, !tbaa !16
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 1, ptr %i.bi, align 4, !tbaa !18
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
  %.0287.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %.1.1, %._crit_edge.loopexit.unr-lcssa ]
  %.0126286.epil.init = phi float [ f0xFF7FFFFF, %.lr.ph.preheader ], [ %.1127.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod296 = trunc i32 %i.t to i1
  tail call void @llvm.assume(i1 %lcmp.mod296)
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.epil.init
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.epil.init
  %i.z = load <2 x float>, ptr %i.y, align 4
  %i.aa = load <2 x float>, ptr %i.x, align 4
  %i.ab = fsub <2 x float> %i.m, %i.z
  %i.ac = fmul <2 x float> %i.aa, %i.ab
  %i.ad = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ac) ; 2 uses
  %i.ae = fcmp ogt float %i.ad, %.0126286.epil.init ; 2 uses
  %.1127.epil = select i1 %i.ae, float %i.ad, float %.0126286.epil.init
  %i.af = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %.1.epil = select i1 %i.ae, i32 %i.af, i32 %.0287.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.0126.lcssa = phi float [ f0xFF7FFFFF, %bb.a ], [ %.1127.1, %._crit_edge.loopexit.unr-lcssa ], [ %.1127.epil, %.lr.ph.epil.preheader ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.1.1, %._crit_edge.loopexit.unr-lcssa ], [ %.1.epil, %.lr.ph.epil.preheader ] ; 2 uses
  %i.ag = fadd float %i.c, %i.r                   ; 3 uses
  %i.ah = fcmp ogt float %.0126.lcssa, %i.ag
  br i1 %i.ah, label %.critedge, label %bb.b

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 5 uses
  %.0287 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %.1.1, %.lr.ph ]
  %.0126286 = phi float [ f0xFF7FFFFF, %.lr.ph.preheader.new ], [ %.1127.1, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.ak = load <2 x float>, ptr %i.aj, align 4
  %i.al = load <2 x float>, ptr %i.ai, align 4
  %i.am = fsub <2 x float> %i.m, %i.ak
  %i.an = fmul <2 x float> %i.al, %i.am
  %i.ao = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.an) ; 2 uses
  %i.ap = fcmp ogt float %i.ao, %.0126286         ; 2 uses
  %.1127 = select i1 %i.ap, float %i.ao, float %.0126286 ; 2 uses
  %i.aq = trunc nuw nsw i64 %indvars.iv to i32
  %.1 = select i1 %i.ap, i32 %i.aq, i32 %.0287
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
  %sqrt.i = tail call float @sqrtf(float noundef %i.bp) #10
  %i.br = fdiv float 1.000000e+00, %sqrt.i
  %i.bs = insertelement <2 x float> poison, float %i.br, i64 0
  %i.bt = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bu = fmul <2 x float> %i.bh, %i.bt
  br label %b2Normalize.exit

b2Normalize.exit:                                 ; preds = %bb.c, %bb.d
  %.sroa.012.0.i = phi <2 x float> [ %i.bu, %bb.d ], [ zeroinitializer, %bb.c ] ; 5 uses
  %i.bv = fmul <2 x float> %i.bh, %.sroa.012.0.i
  %i.bw = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.bv)
  %i.bx = fcmp ule float %i.bw, %i.ag
  br i1 %i.bx, label %bb.e, label %.critedge

bb.e:                                             ; preds = %b2Normalize.exit
  %i.by = insertelement <2 x float> poison, float %i.o, i64 0
  %i.bz = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ca = fmul <2 x float> %i.bz, %.sroa.012.0.i
  %i.cb = insertelement <2 x float> poison, float %i.q, i64 0
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cd = fmul <2 x float> %i.cc, %.sroa.012.0.i
  store <2 x float> %.sroa.012.0.i, ptr %0, align 4, !tbaa !9
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cf = fadd <2 x float> %.sroa.056.0.copyload, %i.ca ; 2 uses
  %i.cg = fsub <2 x float> %i.m, %i.cd            ; 2 uses
  %i.ch = fmul <2 x float> %i.cf, splat (float 5.000000e-01)
  %i.ci = fmul <2 x float> %i.cg, splat (float 5.000000e-01)
  %i.cj = fadd <2 x float> %i.ci, %i.ch
  store <2 x float> %i.cj, ptr %i.ce, align 4, !tbaa !9
  %i.ck = fsub <2 x float> %i.cg, %i.cf
  %i.cl = fmul <2 x float> %.sroa.012.0.i, %i.ck
  %i.cm = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.cl)
  br label %.critedge.sink.split

bb.f:                                             ; preds = %bb.b
  %i.cn = fsub <2 x float> %.sroa.056.0.copyload, %.sroa.050.0.copyload
  %i.co = fmul <2 x float> %i.bl, %i.cn
  %i.cp = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.co)
  %i.cq = fcmp olt float %i.cp, 0.000000e+00
  %or.cond4 = and i1 %i.cq, %i.bn
  br i1 %or.cond4, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.cr = fmul <2 x float> %i.bl, %i.bl
  %i.cs = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.cr) ; 2 uses
  %i.ct = fcmp ogt float %i.cs, f0x057A0000
  br i1 %i.ct, label %bb.h, label %b2Normalize.exit222

bb.h:                                             ; preds = %bb.g
  %sqrt.i219 = tail call float @sqrtf(float noundef %i.cs) #10
  %i.cu = fdiv float 1.000000e+00, %sqrt.i219
  %i.cv = insertelement <2 x float> poison, float %i.cu, i64 0
  %i.cw = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cx = fmul <2 x float> %i.bl, %i.cw
  br label %b2Normalize.exit222

b2Normalize.exit222:                              ; preds = %bb.g, %bb.h
  %.sroa.012.0.i218 = phi <2 x float> [ %i.cx, %bb.h ], [ zeroinitializer, %bb.g ] ; 5 uses
  %i.cy = fmul <2 x float> %i.bl, %.sroa.012.0.i218
  %i.cz = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.cy)
  %i.da = fcmp ule float %i.cz, %i.ag
  br i1 %i.da, label %bb.i, label %.critedge

bb.i:                                             ; preds = %b2Normalize.exit222
  %i.db = insertelement <2 x float> poison, float %i.o, i64 0
  %i.dc = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dd = fmul <2 x float> %i.dc, %.sroa.012.0.i218
  %i.de = insertelement <2 x float> poison, float %i.q, i64 0
  %i.df = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dg = fmul <2 x float> %i.df, %.sroa.012.0.i218
  store <2 x float> %.sroa.012.0.i218, ptr %0, align 4, !tbaa !9
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.di = fadd <2 x float> %.sroa.050.0.copyload, %i.dd ; 2 uses
  %i.dj = fsub <2 x float> %i.m, %i.dg            ; 2 uses
  %i.dk = fmul <2 x float> %i.di, splat (float 5.000000e-01)
  %i.dl = fmul <2 x float> %i.dj, splat (float 5.000000e-01)
  %i.dm = fadd <2 x float> %i.dl, %i.dk
  store <2 x float> %i.dm, ptr %i.dh, align 4, !tbaa !9
  %i.dn = fsub <2 x float> %i.dj, %i.di
  %i.do = fmul <2 x float> %.sroa.012.0.i218, %i.dn
  %i.dp = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.do)
  br label %.critedge.sink.split

bb.j:                                             ; preds = %bb.f
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.bd
  %.sroa.010.0.copyload = load <2 x float>, ptr %i.dq, align 4, !tbaa !9 ; 4 uses
  store <2 x float> %.sroa.010.0.copyload, ptr %0, align 4, !tbaa !9
  %i.dr = fmul <2 x float> %i.bh, %.sroa.010.0.copyload
  %i.ds = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.dr)
  %i.dt = fsub float %i.o, %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dv = insertelement <2 x float> poison, float %i.dt, i64 0
  %i.dw = shufflevector <2 x float> %i.dv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dx = fmul <2 x float> %.sroa.010.0.copyload, %i.dw
  %i.dy = fadd <2 x float> %i.m, %i.dx
  %i.dz = insertelement <2 x float> poison, float %i.q, i64 0
  %i.ea = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eb = fmul <2 x float> %i.ea, %.sroa.010.0.copyload
  %i.ec = fsub <2 x float> %i.m, %i.eb
  %i.ed = fmul <2 x float> %i.dy, splat (float 5.000000e-01)
  %i.ee = fmul <2 x float> %i.ec, splat (float 5.000000e-01)
  %i.ef = fadd <2 x float> %i.ee, %i.ed
  store <2 x float> %i.ef, ptr %i.du, align 4, !tbaa !9
  %i.eg = fsub float %.0126.lcssa, %i.r
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %bb.j, %bb.e, %bb.i
  %.sink = phi float [ %i.dp, %bb.i ], [ %i.cm, %bb.e ], [ %i.eg, %bb.j ]
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %.sink, ptr %i.eh, align 4, !tbaa !15
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 0, ptr %i.ei, align 4, !tbaa !16
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 1, ptr %i.ej, align 4, !tbaa !18
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %b2Normalize.exit, %b2Normalize.exit222, %._crit_edge
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
  %foldExtExtBinop675.a = fsub <2 x float> %i.as, %shift
  %i.at = extractelement <2 x float> %foldExtExtBinop675.a, i64 0
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
  %shift677.a = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop678.a = fsub <2 x float> %i.al, %shift677.a
  %i.bm = extractelement <2 x float> %foldExtExtBinop678.a, i64 0
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
  %i.cc = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.cb) ; 5 uses
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
  %sqrt = tail call float @sqrtf(float noundef %i.cc) #10 ; 4 uses
  %i.co = fcmp ogt float %i.aa, f0x057A0000
  br i1 %i.co, label %bb.i, label %b2GetLengthAndNormalize.exit

bb.i:                                             ; preds = %bb.h
  %sqrt.i = tail call float @sqrtf(float noundef %i.aa) #10 ; 2 uses
  %i.cp = fdiv float 1.000000e+00, %sqrt.i
  %i.cq = insertelement <2 x float> poison, float %i.cp, i64 0
  %i.cr = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cs = fmul <2 x float> %i.g, %i.cr
  br label %b2GetLengthAndNormalize.exit

b2GetLengthAndNormalize.exit:                     ; preds = %bb.h, %bb.i
  %.sink.i = phi float [ %sqrt.i, %bb.i ], [ 0.000000e+00, %bb.h ] ; 8 uses
  %.sroa.015.0.i = phi <2 x float> [ %i.cs, %bb.i ], [ zeroinitializer, %bb.h ] ; 9 uses
  %i.ct = fcmp ogt float %i.am, f0x057A0000
  br i1 %i.ct, label %bb.j, label %b2GetLengthAndNormalize.exit420

bb.j:                                             ; preds = %b2GetLengthAndNormalize.exit
  %sqrt.i417 = tail call float @sqrtf(float noundef %i.am) #10 ; 2 uses
  %i.cu = fdiv float 1.000000e+00, %sqrt.i417
  %i.cv = insertelement <2 x float> poison, float %i.cu, i64 0
  %i.cw = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cx = fmul <2 x float> %i.y, %i.cw
  br label %b2GetLengthAndNormalize.exit420

b2GetLengthAndNormalize.exit420:                  ; preds = %b2GetLengthAndNormalize.exit, %bb.j
  %.sink.i415 = phi float [ %sqrt.i417, %bb.j ], [ 0.000000e+00, %b2GetLengthAndNormalize.exit ] ; 8 uses
  %.sroa.015.0.i416 = phi <2 x float> [ %i.cx, %bb.j ], [ zeroinitializer, %b2GetLengthAndNormalize.exit ] ; 8 uses
  %.sroa.0.4.vec.extract.i428 = extractelement <2 x float> %.sroa.015.0.i, i64 1 ; 2 uses
  %i.cy = fmul <2 x float> %i.p, %.sroa.015.0.i
  %i.cz = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.cy) ; 12 uses
  %i.da = fmul <2 x float> %i.x, %.sroa.015.0.i
  %i.db = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.da) ; 12 uses
  %i.dc = fcmp ole float %i.cz, 0.000000e+00
  %i.dd = fcmp ole float %i.db, 0.000000e+00
  %or.cond.not.not638 = select i1 %i.dc, i1 %i.dd, i1 false
  %i.de = fcmp oge float %i.cz, %.sink.i
  %i.df = fcmp oge float %i.db, %.sink.i
  %.not348.not640 = select i1 %i.de, i1 %i.df, i1 false
  %.not636 = select i1 %or.cond.not.not638, i1 true, i1 %.not348.not640
  %i.dg = fmul <2 x float> %i.ab, %.sroa.015.0.i416
  %i.dh = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.dg) ; 12 uses
  %i.di = fsub <2 x float> %i.g, %i.p             ; 2 uses
  %i.dj = fmul <2 x float> %i.di, %.sroa.015.0.i416
  %i.dk = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.dj) ; 12 uses
  %i.dl = fcmp ole float %i.dh, 0.000000e+00
  %i.dm = fcmp ole float %i.dk, 0.000000e+00
  %or.cond3.not.not643 = select i1 %i.dl, i1 %i.dm, i1 false
  %i.dn = fcmp oge float %i.dh, %.sink.i415
  %i.do = fcmp oge float %i.dk, %.sink.i415
  %.not350.not646 = select i1 %i.dn, i1 %i.do, i1 false
  %i.dp = select i1 %.not636, i1 true, i1 %or.cond3.not.not643
  %brmerge = select i1 %i.dp, i1 true, i1 %.not350.not646
  br i1 %brmerge, label %bb.ah, label %bb.k

bb.k:                                             ; preds = %b2GetLengthAndNormalize.exit420
  %i.dq = shufflevector <2 x float> %.sroa.015.0.i416, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dr = fneg float %.sroa.0.4.vec.extract.i428
  %.sroa.01.0.vec.insert.i = insertelement <2 x float> poison, float %i.dr, i64 0
  %.sroa.01.4.vec.insert.i = shufflevector <2 x float> %.sroa.01.0.vec.insert.i, <2 x float> %.sroa.015.0.i, <2 x i32> <i32 0, i32 2>
  %i.ds = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dt = fmul <2 x float> %i.ds, %.sroa.015.0.i  ; 2 uses
  %shift680.a = shufflevector <2 x float> %i.dt, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop681.a = fsub <2 x float> %i.dt, %shift680.a
  %i.du = extractelement <2 x float> %foldExtExtBinop681.a, i64 0 ; 4 uses
  %i.dv = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dw = fmul <2 x float> %i.dv, %.sroa.015.0.i  ; 2 uses
  %shift683.a = shufflevector <2 x float> %i.dw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop684.a = fsub <2 x float> %i.dw, %shift683.a
  %i.dx = extractelement <2 x float> %foldExtExtBinop684.a, i64 0 ; 4 uses
  %i.dy = fcmp olt float %i.du, %i.dx
  %i.dz = select i1 %i.dy, float %i.du, float %i.dx ; 2 uses
  %i.ea = fcmp ogt float %i.du, %i.dx
  %.v = select i1 %i.ea, float %i.du, float %i.dx
  %i.eb = fneg float %.v                          ; 2 uses
  %i.ec = fcmp ogt float %i.dz, %i.eb             ; 2 uses
  %i.ed = fneg <2 x float> %.sroa.015.0.i
  %.sroa.01.4.vec.insert.i475 = shufflevector <2 x float> %.sroa.015.0.i, <2 x float> %i.ed, <2 x i32> <i32 1, i32 2>
  %.sroa.0117.0 = select i1 %i.ec, <2 x float> %.sroa.01.4.vec.insert.i, <2 x float> %.sroa.01.4.vec.insert.i475 ; 6 uses
  %.0321 = select i1 %i.ec, float %i.dz, float %i.eb
  %shift686.a = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop687.a = fmul <2 x float> %shift686.a, %.sroa.015.0.i416
  %shift689 = shufflevector <2 x float> %.sroa.015.0.i416, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop690 = fmul <2 x float> %i.ab, %shift689
  %foldExtExtBinop692.a = fsub <2 x float> %foldExtExtBinop687.a, %foldExtExtBinop690
  %i.ee = extractelement <2 x float> %foldExtExtBinop692.a, i64 0 ; 4 uses
  %i.ef = fmul <2 x float> %i.di, %i.dq           ; 2 uses
  %shift694 = shufflevector <2 x float> %i.ef, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop695 = fsub <2 x float> %shift694, %i.ef
  %i.eg = extractelement <2 x float> %foldExtExtBinop695, i64 0 ; 4 uses
  %i.eh = fcmp olt float %i.ee, %i.eg
  %i.ei = select i1 %i.eh, float %i.ee, float %i.eg ; 2 uses
  %i.ej = fcmp ogt float %i.ee, %i.eg
  %.v351 = select i1 %i.ej, float %i.ee, float %i.eg
  %i.ek = fneg float %.v351                       ; 2 uses
  %i.el = fcmp ogt float %i.ei, %i.ek             ; 2 uses
  %.0320 = select i1 %i.el, float %i.ei, float %i.ek
  %i.em = tail call float @b2GetLengthUnitsPerMeter() #10
  %i.en = fmul float %i.em, 5.000000e-03
  %i.eo = fmul float %i.en, 1.000000e-01
  %i.ep = fadd float %.0321, %i.eo
  %i.eq = fcmp ult float %i.ep, %.0320
  br i1 %i.eq, label %bb.w, label %bb.l

bb.l:                                             ; preds = %bb.k
  store <2 x float> %.sroa.0117.0, ptr %0, align 4, !tbaa !9
  %i.er = fcmp olt float %i.cz, 0.000000e+00
  %i.es = fcmp ogt float %i.db, 0.000000e+00
  %or.cond5 = select i1 %i.er, i1 %i.es, i1 false
  br i1 %or.cond5, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.et = fsub float 0.000000e+00, %i.cz
  %i.eu = fsub float %i.db, %i.cz
  %i.ev = fdiv float %i.et, %i.eu                 ; 2 uses
  %i.ew = fsub float 1.000000e+00, %i.ev
  %i.ex = insertelement <2 x float> poison, float %i.ew, i64 0
  %i.ey = shufflevector <2 x float> %i.ex, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ez = fmul <2 x float> %i.p, %i.ey
  %i.fa = insertelement <2 x float> poison, float %i.ev, i64 0
  %i.fb = shufflevector <2 x float> %i.fa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fc = fmul <2 x float> %i.x, %i.fb
  %i.fd = fadd <2 x float> %i.fc, %i.ez
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.fe = fcmp olt float %i.db, 0.000000e+00
  %i.ff = fcmp ogt float %i.cz, 0.000000e+00
  %or.cond7 = and i1 %i.fe, %i.ff
  br i1 %or.cond7, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.fg = fsub float 0.000000e+00, %i.db
  %i.fh = fsub float %i.cz, %i.db
  %i.fi = fdiv float %i.fg, %i.fh                 ; 2 uses
  %i.fj = fsub float 1.000000e+00, %i.fi
  %i.fk = insertelement <2 x float> poison, float %i.fj, i64 0
  %i.fl = shufflevector <2 x float> %i.fk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fm = fmul <2 x float> %i.x, %i.fl
  %i.fn = insertelement <2 x float> poison, float %i.fi, i64 0
  %i.fo = shufflevector <2 x float> %i.fn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fp = fmul <2 x float> %i.p, %i.fo
  %i.fq = fadd <2 x float> %i.fp, %i.fm
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.m
  %.sroa.073.0 = phi <2 x float> [ %i.fd, %bb.m ], [ %i.p, %bb.o ], [ %i.p, %bb.n ] ; 2 uses
  %.sroa.071.0 = phi <2 x float> [ %i.x, %bb.m ], [ %i.fq, %bb.o ], [ %i.x, %bb.n ] ; 2 uses
  %i.fr = fcmp ogt float %i.cz, %.sink.i
  %i.fs = fcmp olt float %i.db, %.sink.i
  %or.cond353 = select i1 %i.fr, i1 %i.fs, i1 false
  br i1 %or.cond353, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ft = fsub float %i.cz, %.sink.i
  %i.fu = fsub float %i.cz, %i.db
  %i.fv = fdiv float %i.ft, %i.fu                 ; 2 uses
  %i.fw = fsub float 1.000000e+00, %i.fv
  %i.fx = insertelement <2 x float> poison, float %i.fw, i64 0
  %i.fy = shufflevector <2 x float> %i.fx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fz = fmul <2 x float> %i.p, %i.fy
  %i.ga = insertelement <2 x float> poison, float %i.fv, i64 0
  %i.gb = shufflevector <2 x float> %i.ga, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gc = fmul <2 x float> %i.x, %i.gb
  %i.gd = fadd <2 x float> %i.gc, %i.fz
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.ge = fcmp ogt float %i.db, %.sink.i
  %i.gf = fcmp olt float %i.cz, %.sink.i
  %or.cond354 = and i1 %i.ge, %i.gf
  br i1 %or.cond354, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.gg = fsub float %i.db, %.sink.i
  %i.gh = fsub float %i.db, %i.cz
  %i.gi = fdiv float %i.gg, %i.gh                 ; 2 uses
  %i.gj = fsub float 1.000000e+00, %i.gi
  %i.gk = insertelement <2 x float> poison, float %i.gj, i64 0
  %i.gl = shufflevector <2 x float> %i.gk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gm = fmul <2 x float> %i.x, %i.gl
  %i.gn = insertelement <2 x float> poison, float %i.gi, i64 0
  %i.go = shufflevector <2 x float> %i.gn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gp = fmul <2 x float> %i.p, %i.go
  %i.gq = fadd <2 x float> %i.gp, %i.gm
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.q
  %.sroa.073.1 = phi <2 x float> [ %i.gd, %bb.q ], [ %.sroa.073.0, %bb.s ], [ %.sroa.073.0, %bb.r ] ; 2 uses
  %.sroa.071.1 = phi <2 x float> [ %.sroa.071.0, %bb.q ], [ %i.gq, %bb.s ], [ %.sroa.071.0, %bb.r ] ; 3 uses
  %i.gr = fmul <2 x float> %.sroa.0117.0, %.sroa.073.1
  %i.gs = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.gr) ; 3 uses
  %foldExtExtBinop697 = fmul <2 x float> %.sroa.0117.0, %.sroa.071.1
  %foldExtExtBinop699.a = fmul <2 x float> %.sroa.0117.0, %.sroa.071.1
  %shift701 = shufflevector <2 x float> %foldExtExtBinop699.a, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop702 = fadd <2 x float> %foldExtExtBinop697, %shift701
  %i.gt = extractelement <2 x float> %foldExtExtBinop702, i64 0 ; 3 uses
  %i.gu = tail call float @b2GetLengthUnitsPerMeter() #10
  %i.gv = fmul float %i.gu, 5.000000e-03
  %i.gw = fadd float %sqrt, %i.gv
  %i.gx = fcmp ugt float %i.gs, %i.gw
  br i1 %i.gx, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.gy = tail call float @b2GetLengthUnitsPerMeter() #10
  %i.gz = fmul float %i.gy, 5.000000e-03
  %i.ha = fadd float %sqrt, %i.gz
  %i.hb = fcmp ugt float %i.gt, %i.ha
  br i1 %i.hb, label %bb.ah, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hd = fsub float %i.ce, %i.cg                 ; 2 uses
  %i.he = fsub float %i.hd, %i.gs
  %i.hf = fmul float %i.he, 5.000000e-01
  %i.hg = insertelement <2 x float> poison, float %i.hf, i64 0
  %i.hh = shufflevector <2 x float> %i.hg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hi = fmul <2 x float> %.sroa.0117.0, %i.hh
  %i.hj = fadd <2 x float> %.sroa.073.1, %i.hi
  store <2 x float> %i.hj, ptr %i.hc, align 4, !tbaa !9
  %i.hk = fsub float %i.gs, %i.ch
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.hk, ptr %i.hl, align 4, !tbaa !15
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 0, ptr %i.hm, align 4, !tbaa !16
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ho = fsub float %i.hd, %i.gt
  %i.hp = fmul float %i.ho, 5.000000e-01
  %i.hq = insertelement <2 x float> poison, float %i.hp, i64 0
  %i.hr = shufflevector <2 x float> %i.hq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hs = fmul <2 x float> %.sroa.0117.0, %i.hr
  %i.ht = fadd <2 x float> %.sroa.071.1, %i.hs
  store <2 x float> %i.ht, ptr %i.hn, align 4, !tbaa !9
  br label %.lr.ph

bb.w:                                             ; preds = %bb.k
  %i.hu = fneg <2 x float> %.sroa.015.0.i416      ; 2 uses
  %.sroa.01.4.vec.insert.i478 = shufflevector <2 x float> %i.hu, <2 x float> %.sroa.015.0.i416, <2 x i32> <i32 1, i32 2>
  %i.hv = shufflevector <2 x float> %.sroa.015.0.i416, <2 x float> %i.hu, <2 x i32> <i32 1, i32 2>
  %.sroa.092.0 = select i1 %i.el, <2 x float> %.sroa.01.4.vec.insert.i478, <2 x float> %i.hv ; 6 uses
  %i.hw = fneg <2 x float> %.sroa.092.0
  store <2 x float> %i.hw, ptr %0, align 4, !tbaa !9
  %i.hx = fcmp olt float %i.dh, 0.000000e+00
  %i.hy = fcmp ogt float %i.dk, 0.000000e+00
  %or.cond9 = select i1 %i.hx, i1 %i.hy, i1 false
  br i1 %or.cond9, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.hz = fsub float 0.000000e+00, %i.dh
  %i.ia = fsub float %i.dk, %i.dh
  %i.ib = fdiv float %i.hz, %i.ia                 ; 2 uses
  %i.ic = fsub float 1.000000e+00, %i.ib
  %i.id = fmul float %i.ic, 0.000000e+00
  %i.ie = insertelement <2 x float> poison, float %i.ib, i64 0
  %i.if = shufflevector <2 x float> %i.ie, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ig = fmul <2 x float> %i.g, %i.if
  %i.ih = insertelement <2 x float> poison, float %i.id, i64 0
  %i.ii = shufflevector <2 x float> %i.ih, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ij = fadd <2 x float> %i.ig, %i.ii
  br label %bb.aa

bb.y:                                             ; preds = %bb.w
  %i.ik = fcmp olt float %i.dk, 0.000000e+00
  %i.il = fcmp ogt float %i.dh, 0.000000e+00
  %or.cond11 = select i1 %i.ik, i1 %i.il, i1 false
  br i1 %or.cond11, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.im = fsub float 0.000000e+00, %i.dk
  %i.in = fsub float %i.dh, %i.dk
  %i.io = fdiv float %i.im, %i.in                 ; 2 uses
  %i.ip = fsub float 1.000000e+00, %i.io
  %i.iq = fmul float %i.io, 0.000000e+00
  %i.ir = insertelement <2 x float> poison, float %i.ip, i64 0
  %i.is = shufflevector <2 x float> %i.ir, <2 x float> poison, <2 x i32> zeroinitializer
  %i.it = fmul <2 x float> %i.g, %i.is
  %i.iu = insertelement <2 x float> poison, float %i.iq, i64 0
  %i.iv = shufflevector <2 x float> %i.iu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iw = fadd <2 x float> %i.iv, %i.it
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z, %bb.x
  %.sroa.048.0 = phi <2 x float> [ %i.ij, %bb.x ], [ zeroinitializer, %bb.z ], [ zeroinitializer, %bb.y ] ; 2 uses
  %.sroa.046.0 = phi <2 x float> [ %i.g, %bb.x ], [ %i.iw, %bb.z ], [ %i.g, %bb.y ] ; 2 uses
  %i.ix = fcmp ogt float %i.dh, %.sink.i415
  %i.iy = fcmp olt float %i.dk, %.sink.i415
  %or.cond355 = select i1 %i.ix, i1 %i.iy, i1 false
  br i1 %or.cond355, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.iz = fsub float %i.dh, %.sink.i415
  %i.ja = fsub float %i.dh, %i.dk
  %i.jb = fdiv float %i.iz, %i.ja                 ; 2 uses
  %i.jc = fsub float 1.000000e+00, %i.jb
  %i.jd = fmul float %i.jc, 0.000000e+00
  %i.je = insertelement <2 x float> poison, float %i.jb, i64 0
  %i.jf = shufflevector <2 x float> %i.je, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jg = fmul <2 x float> %i.g, %i.jf
  %i.jh = insertelement <2 x float> poison, float %i.jd, i64 0
  %i.ji = shufflevector <2 x float> %i.jh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jj = fadd <2 x float> %i.jg, %i.ji
  br label %bb.ae

bb.ac:                                            ; preds = %bb.aa
  %i.jk = fcmp ogt float %i.dk, %.sink.i415
  %i.jl = fcmp olt float %i.dh, %.sink.i415
  %or.cond356 = select i1 %i.jk, i1 %i.jl, i1 false
  br i1 %or.cond356, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.jm = fsub float %i.dk, %.sink.i415
  %i.jn = fsub float %i.dk, %i.dh
  %i.jo = fdiv float %i.jm, %i.jn                 ; 2 uses
  %i.jp = fsub float 1.000000e+00, %i.jo
  %i.jq = fmul float %i.jo, 0.000000e+00
  %i.jr = insertelement <2 x float> poison, float %i.jp, i64 0
  %i.js = shufflevector <2 x float> %i.jr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jt = fmul <2 x float> %i.g, %i.js
  %i.ju = insertelement <2 x float> poison, float %i.jq, i64 0
  %i.jv = shufflevector <2 x float> %i.ju, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jw = fadd <2 x float> %i.jv, %i.jt
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad, %bb.ab
  %.sroa.048.1 = phi <2 x float> [ %i.jj, %bb.ab ], [ %.sroa.048.0, %bb.ad ], [ %.sroa.048.0, %bb.ac ] ; 2 uses
  %.sroa.046.1 = phi <2 x float> [ %.sroa.046.0, %bb.ab ], [ %i.jw, %bb.ad ], [ %.sroa.046.0, %bb.ac ] ; 2 uses
  %i.jx = fsub <2 x float> %.sroa.048.1, %i.p
  %i.jy = fmul <2 x float> %.sroa.092.0, %i.jx
  %i.jz = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.jy) ; 3 uses
  %i.ka = fsub <2 x float> %.sroa.046.1, %i.p     ; 2 uses
  %foldExtExtBinop704 = fmul <2 x float> %.sroa.092.0, %i.ka
  %foldExtExtBinop706.a = fmul <2 x float> %.sroa.092.0, %i.ka
  %shift708 = shufflevector <2 x float> %foldExtExtBinop706.a, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop709 = fadd <2 x float> %foldExtExtBinop704, %shift708
  %i.kb = extractelement <2 x float> %foldExtExtBinop709, i64 0 ; 3 uses
  %i.kc = tail call float @b2GetLengthUnitsPerMeter() #10
  %i.kd = fmul float %i.kc, 5.000000e-03
  %i.ke = fadd float %sqrt, %i.kd
  %i.kf = fcmp ugt float %i.jz, %i.ke
  br i1 %i.kf, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.kg = tail call float @b2GetLengthUnitsPerMeter() #10
  %i.kh = fmul float %i.kg, 5.000000e-03
  %i.ki = fadd float %sqrt, %i.kh
  %i.kj = fcmp ugt float %i.kb, %i.ki
  br i1 %i.kj, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.kl = fsub float %i.cg, %i.ce                 ; 2 uses
  %i.km = fsub float %i.kl, %i.jz
  %i.kn = fmul float %i.km, 5.000000e-01
  %i.ko = insertelement <2 x float> poison, float %i.kn, i64 0
  %i.kp = shufflevector <2 x float> %i.ko, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kq = fmul <2 x float> %.sroa.092.0, %i.kp
  %i.kr = fadd <2 x float> %.sroa.048.1, %i.kq
  store <2 x float> %i.kr, ptr %i.kk, align 4, !tbaa !9
  %i.ks = fsub float %i.jz, %i.ch
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.ks, ptr %i.kt, align 4, !tbaa !15
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 0, ptr %i.ku, align 4, !tbaa !16
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.kw = fsub float %i.kl, %i.kb
  %i.kx = fmul float %i.kw, 5.000000e-01
  %i.ky = insertelement <2 x float> poison, float %i.kx, i64 0
  %i.kz = shufflevector <2 x float> %i.ky, <2 x float> poison, <2 x i32> zeroinitializer
  %i.la = fmul <2 x float> %.sroa.092.0, %i.kz
  %i.lb = fadd <2 x float> %.sroa.046.1, %i.la
  store <2 x float> %i.lb, ptr %i.kv, align 4, !tbaa !9
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.v, %bb.ag
  %.sink673 = phi float [ %i.gt, %bb.v ], [ %i.kb, %bb.ag ]
  %.sink = phi i16 [ 1, %bb.v ], [ 256, %bb.ag ]
  %i.lc = fsub float %.sink673, %i.ch
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.lc, ptr %i.ld, align 4, !tbaa !15
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i16 %.sink, ptr %i.le, align 4, !tbaa !16
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 2, ptr %i.lf, align 4, !tbaa !18
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.lh = load <2 x float>, ptr %i.lg, align 4
  %i.li = fadd <2 x float> %.sroa.0308.0.copyload, %i.lh
  store <2 x float> %i.li, ptr %i.lg, align 4, !tbaa !9
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.lk = load <2 x float>, ptr %i.lj, align 4
  %i.ll = fadd <2 x float> %.sroa.0308.0.copyload, %i.lk
  store <2 x float> %i.ll, ptr %i.lj, align 4, !tbaa !9
  br label %.loopexit

bb.ah:                                            ; preds = %bb.u, %bb.af, %b2GetLengthAndNormalize.exit420
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ln = fcmp ogt float %i.cc, f0x28800000
  br i1 %i.ln, label %b2Normalize.exit, label %bb.ai

b2Normalize.exit:                                 ; preds = %bb.ah
  %5 = tail call float @sqrtf(float noundef %i.cc) #10
  %i.lo = fdiv float 1.000000e+00, %5
  %i.lp = insertelement <2 x float> poison, float %i.lo, i64 0
  %i.lq = shufflevector <2 x float> %i.lp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lr = fmul <2 x float> %i.ca, %i.lq
  br label %.loopexit.loopexit.critedge

bb.ai:                                            ; preds = %bb.ah
  %i.ls = fneg float %.sroa.0.4.vec.extract.i428
  %.sroa.01.0.vec.insert.i603 = insertelement <2 x float> poison, float %i.ls, i64 0
  %.sroa.01.4.vec.insert.i604 = shufflevector <2 x float> %.sroa.01.0.vec.insert.i603, <2 x float> %.sroa.015.0.i, <2 x i32> <i32 0, i32 2>
  br label %.loopexit.loopexit.critedge

.loopexit.loopexit.critedge:                      ; preds = %bb.ai, %b2Normalize.exit
  %.sroa.022.0 = phi <2 x float> [ %i.lr, %b2Normalize.exit ], [ %.sroa.01.4.vec.insert.i604, %bb.ai ] ; 3 uses
  %i.lt = fcmp une float %.1, 0.000000e+00
  %i.lu = fcmp une float %.0319, 0.000000e+00
  store <2 x float> %.sroa.022.0, ptr %0, align 4, !tbaa !9
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.lw = insertelement <2 x float> poison, float %i.ce, i64 0
  %i.lx = shufflevector <2 x float> %i.lw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ly = fmul <2 x float> %i.lx, %.sroa.022.0
  %i.lz = fadd <2 x float> %i.by, %i.ly
  %i.ma = insertelement <2 x float> poison, float %i.cg, i64 0
  %i.mb = shufflevector <2 x float> %i.ma, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mc = fmul <2 x float> %i.mb, %.sroa.022.0
  %i.md = fsub <2 x float> %i.bz, %i.mc
  %i.me = fmul <2 x float> %i.lz, splat (float 5.000000e-01)
  %i.mf = fmul <2 x float> %i.md, splat (float 5.000000e-01)
  %i.mg = fadd <2 x float> %i.mf, %i.me
  store <2 x float> %i.mg, ptr %i.lv, align 4, !tbaa !9
  %6 = tail call float @sqrtf(float noundef %i.cc) #10
  %i.mh = fsub float %6, %i.ch
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.mh, ptr %i.mi, align 4, !tbaa !15
  %i.mj = select i1 %i.lt, i16 256, i16 0
  %i.mk = zext i1 %i.lu to i16
  %i.ml = or disjoint i16 %i.mj, %i.mk
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 %i.ml, ptr %i.mm, align 4, !tbaa !16
  store i32 1, ptr %i.lm, align 4, !tbaa !18
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.mo = load <2 x float>, ptr %i.mn, align 4
  %i.mp = fadd <2 x float> %.sroa.0308.0.copyload, %i.mo
  store <2 x float> %i.mp, ptr %i.mn, align 4, !tbaa !9
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28)
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
  %sqrt.i.i = tail call float @sqrtf(float noundef %i.n) #10, !noalias !28
  %i.p = fdiv float 1.000000e+00, %sqrt.i.i
  %i.q = insertelement <2 x float> poison, float %i.p, i64 0
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> zeroinitializer
  %i.s = fmul <2 x float> %i.l, %i.r
  br label %b2MakeCapsule.exit

b2MakeCapsule.exit:                               ; preds = %bb.a, %bb.b
  %.sroa.012.0.i.i = phi <2 x float> [ %i.s, %bb.b ], [ zeroinitializer, %bb.a ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.v = fneg <2 x float> %.sroa.012.0.i.i        ; 2 uses
  %i.w = shufflevector <2 x float> %i.v, <2 x float> %.sroa.012.0.i.i, <2 x i32> <i32 3, i32 0>
  store <2 x float> %i.w, ptr %i.t, align 8, !tbaa !9, !alias.scope !28
  %.sroa.01.4.vec.insert.i18.i = shufflevector <2 x float> %i.v, <2 x float> %.sroa.012.0.i.i, <2 x i32> <i32 1, i32 2>
  store <2 x float> %.sroa.01.4.vec.insert.i18.i, ptr %i.u, align 8, !tbaa !9, !alias.scope !28
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 140
  store i32 2, ptr %i.x, align 4, !tbaa !23, !alias.scope !28
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 136
  store float %i.c, ptr %i.y, align 8, !tbaa !22, !alias.scope !28
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
  %sqrt.i.i = tail call float @sqrtf(float noundef %i.ag) #10, !noalias !46 ; 2 uses
  %i.ai = fdiv float 1.000000e+00, %sqrt.i.i
  %i.aj = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.ak = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.al = fmul <2 x float> %i.ae, %i.ak
  br label %b2GetLengthAndNormalize.exit.i

b2GetLengthAndNormalize.exit.i:                   ; preds = %bb.e, %bb.d
  %.sink.i.i = phi float [ %sqrt.i.i, %bb.e ], [ 0.000000e+00, %bb.d ]
  %.sroa.015.0.i.i = phi <2 x float> [ %i.al, %bb.e ], [ zeroinitializer, %bb.d ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.an = load float, ptr %i.am, align 4, !tbaa !12, !noalias !46 ; 2 uses
  %i.ao = fsub float %.sink.i.i, %i.an            ; 2 uses
  %i.ap = tail call float @b2GetLengthUnitsPerMeter() #10, !noalias !46
  %i.aq = fmul float %i.ap, 5.000000e-03
  %i.ar = fmul float %i.aq, 4.000000e+00
  %i.as = fcmp ogt float %i.ao, %i.ar
  br i1 %i.as, label %b2CollideCapsuleAndCircle.exit, label %bb.f

bb.f:                                             ; preds = %b2GetLengthAndNormalize.exit.i
  store <2 x float> %.sroa.015.0.i.i, ptr %0, align 4, !tbaa !9, !alias.scope !46
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.au = fmul <2 x float> %.sroa.015.0.i.i, zeroinitializer
  %i.av = fadd <2 x float> %i.ad, %i.au
  %i.aw = insertelement <2 x float> poison, float %i.an, i64 0
  %i.ax = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ay = fmul <2 x float> %.sroa.015.0.i.i, %i.ax
  %i.az = fsub <2 x float> %i.m, %i.ay
  %i.ba = fmul <2 x float> %i.av, splat (float 5.000000e-01)
  %i.bb = fmul <2 x float> %i.az, splat (float 5.000000e-01)
  %i.bc = fadd <2 x float> %i.ba, %i.bb
  store <2 x float> %i.bc, ptr %i.at, align 4, !tbaa !9, !alias.scope !46
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.ao, ptr %i.bd, align 4, !tbaa !15, !alias.scope !46
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 0, ptr %i.be, align 4, !tbaa !16, !alias.scope !46
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 1, ptr %i.bf, align 4, !tbaa !18, !alias.scope !46
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
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
  %sqrt.i.i = tail call float @sqrtf(float noundef %i.l) #10, !noalias !49
  %i.n = fdiv float 1.000000e+00, %sqrt.i.i
  %i.o = insertelement <2 x float> poison, float %i.n, i64 0
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> zeroinitializer
  %i.q = fmul <2 x float> %i.j, %i.p
  br label %b2MakeCapsule.exit

b2MakeCapsule.exit:                               ; preds = %bb.a, %bb.b
  %.sroa.012.0.i.i = phi <2 x float> [ %i.q, %bb.b ], [ zeroinitializer, %bb.a ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.t = fneg <2 x float> %.sroa.012.0.i.i        ; 2 uses
  %i.u = shufflevector <2 x float> %i.t, <2 x float> %.sroa.012.0.i.i, <2 x i32> <i32 3, i32 0>
  store <2 x float> %i.u, ptr %i.r, align 8, !tbaa !9, !alias.scope !49
  %.sroa.01.4.vec.insert.i18.i = shufflevector <2 x float> %i.t, <2 x float> %.sroa.012.0.i.i, <2 x i32> <i32 1, i32 2>
  store <2 x float> %.sroa.01.4.vec.insert.i18.i, ptr %i.s, align 8, !tbaa !9, !alias.scope !49
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 140
  store i32 2, ptr %i.v, align 4, !tbaa !23, !alias.scope !49
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 136
  store float 0.000000e+00, ptr %i.w, align 8, !tbaa !22, !alias.scope !49
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
  %sqrt.i = tail call float @sqrtf(float noundef %i.bh) #10 ; 2 uses
  %i.bj = fdiv float 1.000000e+00, %sqrt.i
  %i.bk = insertelement <2 x float> poison, float %i.bj, i64 0
  %i.bl = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bm = fmul <2 x float> %i.bf, %i.bl
  br label %b2GetLengthAndNormalize.exit

b2GetLengthAndNormalize.exit:                     ; preds = %bb.h, %bb.i
  %.sink.i = phi float [ %sqrt.i, %bb.i ], [ 0.000000e+00, %bb.h ]
  %.sroa.015.0.i = phi <2 x float> [ %i.bm, %bb.i ], [ zeroinitializer, %bb.h ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !12 ; 2 uses
  %i.bp = fsub float %.sink.i, %i.bo              ; 2 uses
  %i.bq = tail call float @b2GetLengthUnitsPerMeter() #10
  %i.br = fmul float %i.bq, 5.000000e-03
  %i.bs = fmul float %i.br, 4.000000e+00
  %i.bt = fcmp ogt float %i.bp, %i.bs
  br i1 %i.bt, label %bb.k, label %bb.j

bb.j:                                             ; preds = %b2GetLengthAndNormalize.exit
  store <2 x float> %.sroa.015.0.i, ptr %0, align 4, !tbaa !9
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bv = fmul <2 x float> %i.be, splat (float 5.000000e-01)
  %i.bw = insertelement <2 x float> poison, float %i.bo, i64 0
  %i.bx = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.by = fmul <2 x float> %i.bx, %.sroa.015.0.i
  %i.bz = fsub <2 x float> %i.j, %i.by
  %i.ca = fmul <2 x float> %i.bz, splat (float 5.000000e-01)
  %i.cb = fadd <2 x float> %i.bv, %i.ca
  store <2 x float> %i.cb, ptr %i.bu, align 4, !tbaa !9
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.bp, ptr %i.cc, align 4, !tbaa !15
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 0, ptr %i.cd, align 4, !tbaa !16
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 1, ptr %i.ce, align 4, !tbaa !18
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52)
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
  %sqrt.i.i = tail call float @sqrtf(float noundef %i.n) #10, !noalias !52
  %i.p = fdiv float 1.000000e+00, %sqrt.i.i
  %i.q = insertelement <2 x float> poison, float %i.p, i64 0
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> zeroinitializer
  %i.s = fmul <2 x float> %i.l, %i.r
  br label %b2MakeCapsule.exit

b2MakeCapsule.exit:                               ; preds = %bb.a, %bb.b
  %.sroa.012.0.i.i = phi <2 x float> [ %i.s, %bb.b ], [ zeroinitializer, %bb.a ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.v = fneg <2 x float> %.sroa.012.0.i.i        ; 2 uses
  %i.w = shufflevector <2 x float> %i.v, <2 x float> %.sroa.012.0.i.i, <2 x i32> <i32 3, i32 0>
  store <2 x float> %i.w, ptr %i.t, align 8, !tbaa !9, !alias.scope !52
  %.sroa.01.4.vec.insert.i18.i = shufflevector <2 x float> %i.v, <2 x float> %.sroa.012.0.i.i, <2 x i32> <i32 1, i32 2>
  store <2 x float> %.sroa.01.4.vec.insert.i18.i, ptr %i.u, align 8, !tbaa !9, !alias.scope !52
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 140
  store i32 2, ptr %i.x, align 4, !tbaa !23, !alias.scope !52
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 136
  store float %i.c, ptr %i.y, align 8, !tbaa !22, !alias.scope !52
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
  %sqrt.i = tail call float @sqrtf(float noundef %i.r) #10
  %i.t = fdiv float 1.000000e+00, %sqrt.i
  %i.u = insertelement <2 x float> poison, float %i.t, i64 0
  %i.v = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> zeroinitializer
  %i.w = fmul <2 x float> %i.p, %i.v
  br label %b2Normalize.exit

b2Normalize.exit:                                 ; preds = %bb.a, %bb.b
  %.sroa.012.0.i = phi <2 x float> [ %i.w, %bb.b ], [ zeroinitializer, %bb.a ] ; 13 uses
  %i.x = load <2 x float>, ptr %1, align 4
  %i.y = fsub <2 x float> %.sroa.0237.0.copyload, %i.x ; 3 uses
  %i.z = fmul <2 x float> %i.y, %i.y
  %i.aa = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.z) ; 2 uses
  %i.ab = fcmp ogt float %i.aa, f0x057A0000
  br i1 %i.ab, label %bb.c, label %b2Normalize.exit347

bb.c:                                             ; preds = %b2Normalize.exit
  %sqrt.i344 = tail call float @sqrtf(float noundef %i.aa) #10
  %i.ac = fdiv float 1.000000e+00, %sqrt.i344
  %i.ad = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> zeroinitializer
  %i.af = fmul <2 x float> %i.y, %i.ae
  br label %b2Normalize.exit347

b2Normalize.exit347:                              ; preds = %b2Normalize.exit, %bb.c
  %.sroa.012.0.i343 = phi <2 x float> [ %i.af, %bb.c ], [ zeroinitializer, %b2Normalize.exit ] ; 6 uses
  %i.ag = shufflevector <2 x float> %.sroa.012.0.i343, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 5 uses
  %.sroa.0.0.vec.extract.i349 = extractelement <2 x float> %.sroa.012.0.i343, i64 0
  %i.ah = fneg float %.sroa.0.0.vec.extract.i349  ; 2 uses
  %.sroa.01.4.vec.insert.i = insertelement <2 x float> %i.ag, float %i.ah, i64 1
  %i.ai = shufflevector <2 x float> %.sroa.012.0.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 13 uses
  %i.aj = fmul <2 x float> %i.ai, %.sroa.012.0.i343 ; 2 uses
  %shift = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %i.aj, %shift
  %i.ak = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.al = fcmp ult float %i.ak, f0x3C23D70A       ; 7 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = load <2 x float>, ptr %i.am, align 4
  %i.ao = fsub <2 x float> %i.an, %.sroa.0226.0.copyload ; 3 uses
  %i.ap = fmul <2 x float> %i.ao, %i.ao
  %i.aq = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ap) ; 2 uses
  %i.ar = fcmp ogt float %i.aq, f0x057A0000
  br i1 %i.ar, label %bb.d, label %b2Normalize.exit366

bb.d:                                             ; preds = %b2Normalize.exit347
  %sqrt.i363 = tail call float @sqrtf(float noundef %i.aq) #10
  %i.as = fdiv float 1.000000e+00, %sqrt.i363
  %i.at = insertelement <2 x float> poison, float %i.as, i64 0
  %i.au = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> zeroinitializer
  %i.av = fmul <2 x float> %i.ao, %i.au
  br label %b2Normalize.exit366

b2Normalize.exit366:                              ; preds = %b2Normalize.exit347, %bb.d
  %.sroa.012.0.i362 = phi <2 x float> [ %i.av, %bb.d ], [ zeroinitializer, %b2Normalize.exit347 ] ; 8 uses
  %i.aw = shufflevector <2 x float> %.sroa.012.0.i362, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 5 uses
  %i.ax = fneg <2 x float> %.sroa.012.0.i362
  %.sroa.01.4.vec.insert.i370 = shufflevector <2 x float> %.sroa.012.0.i362, <2 x float> %i.ax, <2 x i32> <i32 1, i32 2>
  %i.ay = fmul <2 x float> %.sroa.012.0.i, %i.aw  ; 2 uses
  %shift834 = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop835 = fsub <2 x float> %i.ay, %shift834
  %i.az = extractelement <2 x float> %foldExtExtBinop835, i64 0
  %i.ba = fcmp oge float %i.az, f0x3C23D70A       ; 7 uses
  %i.bb = fneg <2 x float> %.sroa.012.0.i
  %.sroa.01.4.vec.insert.i378 = shufflevector <2 x float> %.sroa.012.0.i, <2 x float> %i.bb, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.bc = fsub <2 x float> %i.k, %.sroa.0237.0.copyload ; 2 uses
  %i.bd = fmul <2 x float> %i.bc, %i.ai           ; 2 uses
  %i.be = extractelement <2 x float> %i.bd, i64 0
  %i.bf = extractelement <2 x float> %i.bd, i64 1
  %i.bg = fcmp olt float %i.be, %i.bf             ; 2 uses
  %i.bh = fmul <2 x float> %i.bc, %i.ag           ; 2 uses
  %i.bi = extractelement <2 x float> %i.bh, i64 0
  %i.bj = extractelement <2 x float> %i.bh, i64 1
  %i.bk = fcmp olt float %i.bi, %i.bj
  %.0299 = select i1 %i.al, i1 true, i1 %i.bk
  %i.bl = fsub <2 x float> %i.k, %.sroa.0226.0.copyload
  %i.bm = fmul <2 x float> %i.bl, %i.aw           ; 2 uses
  %i.bn = extractelement <2 x float> %i.bm, i64 0
  %i.bo = extractelement <2 x float> %i.bm, i64 1
  %i.bp = fcmp olt float %i.bn, %i.bo
  %.0300 = select i1 %i.ba, i1 %i.bp, i1 true
  %or.cond = select i1 %i.bg, i1 %.0299, i1 false
  %or.cond6 = select i1 %or.cond, i1 %.0300, i1 false
  br i1 %or.cond6, label %bb.bh, label %bb.e

bb.e:                                             ; preds = %b2Normalize.exit366
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 140
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !23 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %i.bs = icmp sgt i32 %i.br, 0                   ; 4 uses
  br i1 %i.bs, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 64
  %wide.trip.count = zext nneg i32 %i.br to i64
  %i.bu = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bv = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %bb.f

._crit_edge:                                      ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  call void @b2MakeProxy(ptr dead_on_unwind nonnull writable sret(%struct.b2ShapeProxy) align 4 %9, ptr noundef nonnull %i.n, i32 noundef 2, float noundef 0.000000e+00) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %8, ptr noundef nonnull align 4 dereferenceable(72) %9, i64 72, i1 false), !tbaa.struct !60
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  %i.bw = getelementptr inbounds nuw i8, ptr %8, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #10
  call void @b2MakeProxy(ptr dead_on_unwind nonnull writable sret(%struct.b2ShapeProxy) align 4 %10, ptr noundef nonnull %6, i32 noundef %i.br, float noundef 0.000000e+00) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %i.bw, ptr noundef nonnull align 4 dereferenceable(72) %10, i64 72, i1 false), !tbaa.struct !60
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  %i.bx = getelementptr inbounds nuw i8, ptr %8, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bx, ptr noundef nonnull align 4 dereferenceable(16) @b2Transform_identity, i64 16, i1 false), !tbaa.struct !61
  %i.by = getelementptr inbounds nuw i8, ptr %8, i64 160
  store i8 0, ptr %i.by, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #10
  call void @b2ShapeDistance(ptr dead_on_unwind nonnull writable sret(%struct.b2DistanceOutput) align 4 %11, ptr noundef nonnull %8, ptr noundef %5, ptr noundef null, i32 noundef 0) #10
  %i.bz = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 3 uses
  %i.ca = load float, ptr %i.bz, align 8, !tbaa !69
  %i.cb = call float @b2GetLengthUnitsPerMeter() #10
  %i.cc = fmul float %i.cb, 5.000000e-03
  %i.cd = fmul float %i.cc, 4.000000e+00
  %i.ce = fadd float %i.m, %i.cd
  %i.cf = fcmp ogt float %i.ca, %i.ce
  br i1 %i.cf, label %.critedge, label %bb.g

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 5 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.ci = load <2 x float>, ptr %i.ch, align 4    ; 2 uses
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ck = fmul <2 x float> %4, %i.cj              ; 2 uses
  %i.cl = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cm = fmul <2 x float> %i.bu, %i.cl           ; 2 uses
  %i.cn = fsub <2 x float> %i.ck, %i.cm
  %i.co = fadd <2 x float> %i.ck, %i.cm
  %i.cp = shufflevector <2 x float> %i.cn, <2 x float> %i.co, <2 x i32> <i32 0, i32 3>
  %i.cq = fadd <2 x float> %3, %i.cp
  store <2 x float> %i.cq, ptr %i.cg, align 8, !tbaa !9
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv
  %i.ct = load <2 x float>, ptr %i.cs, align 4    ; 2 uses
  %i.cu = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cv = fmul <2 x float> %4, %i.cu              ; 2 uses
  %i.cw = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cx = fmul <2 x float> %i.bv, %i.cw           ; 2 uses
  %i.cy = fsub <2 x float> %i.cv, %i.cx
  %i.cz = fadd <2 x float> %i.cv, %i.cx
  %i.da = shufflevector <2 x float> %i.cy, <2 x float> %i.cz, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.da, ptr %i.cr, align 8, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !53

bb.g:                                             ; preds = %._crit_edge
  %.sroa.0168.0 = select i1 %i.al, <2 x float> %.sroa.01.4.vec.insert.i378, <2 x float> %.sroa.01.4.vec.insert.i ; 2 uses
  %.sroa.0165.0 = select i1 %i.ba, <2 x float> %.sroa.01.4.vec.insert.i370, <2 x float> %.sroa.01.4.vec.insert.i378 ; 2 uses
  br i1 %i.bg, label %bb.ac, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.db = load float, ptr %i.bz, align 8, !tbaa !69
  %i.dc = call float @b2GetLengthUnitsPerMeter() #10
  %i.dd = fmul float %i.dc, 5.000000e-03
  %i.de = fmul float %i.dd, 1.000000e-01
  %i.df = fcmp ogt float %i.db, %i.de
  br i1 %i.df, label %bb.i, label %bb.ac

bb.i:                                             ; preds = %bb.h
  %i.dg = load i16, ptr %5, align 2, !tbaa !71
  %i.dh = icmp eq i16 %i.dg, 1
  br i1 %i.dh, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  %.sroa.0159.0.copyload = load <2 x float>, ptr %11, align 8, !tbaa !9 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.sroa.0158.0.copyload = load <2 x float>, ptr %i.di, align 8, !tbaa !9
  %i.dj = fsub <2 x float> %.sroa.0158.0.copyload, %.sroa.0159.0.copyload ; 3 uses
  %i.dk = fmul <2 x float> %i.dj, %i.dj
  %i.dl = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.dk) ; 2 uses
  %i.dm = fcmp ogt float %i.dl, f0x057A0000
  br i1 %i.dm, label %bb.k, label %b2Normalize.exit431

bb.k:                                             ; preds = %bb.j
  %sqrt.i428 = call float @sqrtf(float noundef %i.dl) #10
  %i.dn = fdiv float 1.000000e+00, %sqrt.i428
  %i.do = insertelement <2 x float> poison, float %i.dn, i64 0
  %i.dp = shufflevector <2 x float> %i.do, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dq = fmul <2 x float> %i.dj, %i.dp
  br label %b2Normalize.exit431

b2Normalize.exit431:                              ; preds = %bb.j, %bb.k
  %.sroa.012.0.i427 = phi <2 x float> [ %i.dq, %bb.k ], [ zeroinitializer, %bb.j ] ; 5 uses
  %.sroa.01.0.vec.extract.i.i = extractelement <2 x float> %.sroa.012.0.i427, i64 0
  %i.dr = fmul <2 x float> %.sroa.012.0.i, %.sroa.012.0.i427
  %i.ds = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.dr)
  %i.dt = fcmp ugt float %i.ds, 0.000000e+00
  br i1 %i.dt, label %bb.n, label %bb.l

bb.l:                                             ; preds = %b2Normalize.exit431
  br i1 %i.al, label %b2ClassifyNormal.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.du = fmul float %.sroa.01.0.vec.extract.i.i, %i.ah
  %foldExtExtBinop837 = fmul <2 x float> %.sroa.012.0.i343, %.sroa.012.0.i427
  %i.dv = extractelement <2 x float> %foldExtExtBinop837, i64 1
  %i.dw = fsub float %i.du, %i.dv
  br label %b2ClassifyNormal.exit

bb.n:                                             ; preds = %b2Normalize.exit431
  br i1 %i.ba, label %bb.o, label %b2ClassifyNormal.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.dx = fmul <2 x float> %.sroa.012.0.i362, %.sroa.012.0.i427
  %i.dy = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.dx)
  br label %b2ClassifyNormal.exit

b2ClassifyNormal.exit:                            ; preds = %bb.m, %bb.o
  %.0.i.in.in = phi float [ %i.dw, %bb.m ], [ %i.dy, %bb.o ]
  %.0.i.in = fcmp ogt float %.0.i.in.in, f0x3C23D70A
  br i1 %.0.i.in, label %.critedge, label %bb.p

bb.p:                                             ; preds = %b2ClassifyNormal.exit
  store <2 x float> %.sroa.012.0.i427, ptr %0, align 4, !tbaa !9
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %.sroa.0159.0.copyload, ptr %i.dz, align 4, !tbaa !9
  %i.ea = load float, ptr %i.bz, align 8, !tbaa !69
  %i.eb = fsub float %i.ea, %i.m
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.eb, ptr %i.ec, align 4, !tbaa !15
  %i.ed = getelementptr inbounds nuw i8, ptr %5, i64 2
  %i.ee = load i8, ptr %i.ed, align 2, !tbaa !58
  %i.ef = zext i8 %i.ee to i16
  %i.eg = shl nuw i16 %i.ef, 8
  %i.eh = getelementptr inbounds nuw i8, ptr %5, i64 5
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !58
  %i.ej = zext i8 %i.ei to i16
  %i.ek = or disjoint i16 %i.eg, %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 %i.ek, ptr %i.el, align 4, !tbaa !16
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 1, ptr %i.em, align 4, !tbaa !18
  br label %.critedge

b2ClassifyNormal.exit.thread:                     ; preds = %bb.n, %bb.l
  %i.en = getelementptr inbounds nuw i8, ptr %5, i64 5
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !58
  %i.ep = zext i8 %i.eo to i32
  br label %bb.ax

bb.q:                                             ; preds = %bb.i
  %i.eq = getelementptr inbounds nuw i8, ptr %5, i64 2
  %i.er = load i8, ptr %i.eq, align 2, !tbaa !58
  %i.es = getelementptr inbounds nuw i8, ptr %5, i64 3
  %i.et = load i8, ptr %i.es, align 1, !tbaa !58
  %i.eu = getelementptr inbounds nuw i8, ptr %5, i64 5
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !58  ; 3 uses
  %i.ew = zext i8 %i.ev to i32                    ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %5, i64 6
  %i.ey = load i8, ptr %i.ex, align 2, !tbaa !58  ; 3 uses
  %i.ez = zext i8 %i.ey to i32                    ; 2 uses
  %i.fa = icmp eq i8 %i.er, %i.et
  br i1 %i.fa, label %bb.r, label %bb.ab

bb.r:                                             ; preds = %bb.q
  %i.fb = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.fc = load <2 x float>, ptr %11, align 8
  %i.fd = load <2 x float>, ptr %i.fb, align 8
  %i.fe = zext i8 %i.ev to i64
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.fe
  %i.fg = load <2 x float>, ptr %i.ff, align 8
  %i.fh = fsub <2 x float> %i.fc, %i.fd           ; 2 uses
  %i.fi = fmul <2 x float> %i.fh, %i.fg
  %i.fj = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.fi)
  %i.fk = zext i8 %i.ey to i64
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.fk
  %i.fm = load <2 x float>, ptr %i.fl, align 8
  %i.fn = fmul <2 x float> %i.fh, %i.fm
  %i.fo = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.fn)
  %i.fp = fcmp ogt float %i.fj, %i.fo
  %i.fq = select i1 %i.fp, i32 %i.ew, i32 %i.ez   ; 7 uses
  %i.fr = zext nneg i32 %i.fq to i64              ; 3 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.fr
  %.sroa.0126.0.copyload = load <2 x float>, ptr %i.fs, align 8, !tbaa !9 ; 11 uses
  %.sroa.0.4.vec.extract.i448 = extractelement <2 x float> %.sroa.0126.0.copyload, i64 1
  %i.ft = fneg float %.sroa.0.4.vec.extract.i448  ; 2 uses
  %i.fu = fneg <2 x float> %.sroa.0126.0.copyload
  %i.fv = extractelement <2 x float> %.sroa.012.0.i, i64 1
  %i.fw = fmul float %i.fv, %i.ft
  %foldExtExtBinop839 = fmul <2 x float> %.sroa.012.0.i, %.sroa.0126.0.copyload
  %i.fx = extractelement <2 x float> %foldExtExtBinop839, i64 0
  %i.fy = fsub float %i.fw, %i.fx
  %i.fz = fcmp ugt float %i.fy, 0.000000e+00
  br i1 %i.fz, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  br i1 %i.al, label %b2ClassifyNormal.exit461.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ga = fmul <2 x float> %.sroa.012.0.i343, %.sroa.0126.0.copyload
  %i.gb = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ga)
  br label %b2ClassifyNormal.exit461

bb.u:                                             ; preds = %bb.r
  br i1 %i.ba, label %bb.v, label %b2ClassifyNormal.exit461.thread

bb.v:                                             ; preds = %bb.u
  %i.gc = extractelement <2 x float> %.sroa.012.0.i362, i64 1
  %i.gd = fmul float %i.gc, %i.ft
  %foldExtExtBinop841.a = fmul <2 x float> %.sroa.012.0.i362, %.sroa.0126.0.copyload
  %i.ge = extractelement <2 x float> %foldExtExtBinop841.a, i64 0
  %i.gf = fsub float %i.gd, %i.ge
  br label %b2ClassifyNormal.exit461

b2ClassifyNormal.exit461:                         ; preds = %bb.t, %bb.v
  %.0.i454.in.in = phi float [ %i.gb, %bb.t ], [ %i.gf, %bb.v ]
  %.0.i454.in = fcmp ogt float %.0.i454.in.in, f0x3C23D70A
  br i1 %.0.i454.in, label %.critedge, label %bb.w

bb.w:                                             ; preds = %b2ClassifyNormal.exit461
  %i.gg = add nsw i32 %i.br, -1
  %i.gh = icmp slt i32 %i.fq, %i.gg
  %i.gi = add nuw nsw i32 %i.fq, 1
  %i.gj = select i1 %i.gh, i32 %i.gi, i32 0       ; 2 uses
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.fr
  %.sroa.0111.0.copyload = load <2 x float>, ptr %i.gk, align 8, !tbaa !9 ; 3 uses
  %i.gl = zext nneg i32 %i.gj to i64
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.gl
  %.sroa.0110.0.copyload = load <2 x float>, ptr %i.gm, align 8, !tbaa !9
  %i.gn = fsub <2 x float> %.sroa.0237.0.copyload, %.sroa.0111.0.copyload
  %i.go = fmul <2 x float> %.sroa.0126.0.copyload, %i.gn
  %i.gp = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.go)
  %i.gq = fsub <2 x float> %.sroa.0226.0.copyload, %.sroa.0111.0.copyload
  %i.gr = fmul <2 x float> %.sroa.0126.0.copyload, %i.gq
  %i.gs = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.gr)
  %i.gt = fcmp olt float %i.gp, %i.gs
  %i.gu = fmul <2 x float> %i.ai, %.sroa.0126.0.copyload ; 2 uses
  %shift843.a = shufflevector <2 x float> %i.gu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop844.a = fsub <2 x float> %i.gu, %shift843.a
  %i.gv = extractelement <2 x float> %foldExtExtBinop844.a, i64 0 ; 2 uses
  br i1 %i.gt, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.gw = fmul <2 x float> %.sroa.0168.0, %.sroa.0126.0.copyload
  %i.gx = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.gw)
  %i.gy = fcmp olt float %i.gx, %i.gv
  br i1 %i.gy, label %.critedge, label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.gz = fmul <2 x float> %.sroa.0165.0, %.sroa.0126.0.copyload
  %i.ha = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.gz)
  %i.hb = fcmp olt float %i.ha, %i.gv
  br i1 %i.hb, label %.critedge, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.tr325 = trunc nuw nsw i32 %i.fq to i16
  %i.hc = shl nuw nsw i16 %.tr325, 8
  %i.hd = or disjoint i16 %i.hc, 1
  %.tr326 = trunc nuw nsw i32 %i.gj to i16
  %i.he = shl nuw nsw i16 %.tr326, 8
  call fastcc void @b2ClipSegments(ptr dead_on_unwind noalias writable align 4 %0, <2 x float> %.sroa.0111.0.copyload, <2 x float> %.sroa.0110.0.copyload, <2 x float> %.sroa.0237.0.copyload, <2 x float> %.sroa.0226.0.copyload, <2 x float> %.sroa.0126.0.copyload, float noundef %i.m, float noundef 0.000000e+00, i16 noundef zeroext %i.hd, i16 noundef zeroext %i.he)
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !18
  %i.hh = icmp eq i32 %i.hg, 2
  br i1 %i.hh, label %bb.aa, label %.critedge

bb.aa:                                            ; preds = %bb.z
  store <2 x float> %i.fu, ptr %0, align 4, !tbaa !9
  br label %.critedge

bb.ab:                                            ; preds = %bb.q
  %i.hi = zext i8 %i.ev to i64
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.hi
  %i.hk = load <2 x float>, ptr %i.hj, align 8
  %i.hl = fsub <2 x float> %i.hk, %.sroa.0237.0.copyload
  %i.hm = fmul <2 x float> %i.ai, %i.hl           ; 2 uses
  %shift846.a = shufflevector <2 x float> %i.hm, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop847.a = fsub <2 x float> %i.hm, %shift846.a
  %i.hn = extractelement <2 x float> %foldExtExtBinop847.a, i64 0
  %i.ho = zext i8 %i.ey to i64
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.ho
  %i.hq = load <2 x float>, ptr %i.hp, align 8
  %i.hr = fsub <2 x float> %i.hq, %.sroa.0226.0.copyload
  %i.hs = fmul <2 x float> %i.ai, %i.hr           ; 2 uses
  %shift849.a = shufflevector <2 x float> %i.hs, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop850.a = fsub <2 x float> %i.hs, %shift849.a
end_hunk_1
begin_hunk_2_@b2CollideChainSegmentAndPolygon:bb.a
  %.sroa.01.4.vec.extract.i125.pre-phi.i653 = phi float [ %.sroa.01.4.vec.extract.i87.i647, %bb.bd ], [ %.sroa.01.4.vec.extract.i87.i647, %bb.be ], [ %i.rk, %bb.bf ]
  %.sroa.01.0.vec.extract.i122.pre-phi.i655 = phi float [ %.sroa.01.0.vec.extract.i84.i646, %bb.bd ], [ %.sroa.01.0.vec.extract.i84.i646, %bb.be ], [ %i.rj, %bb.bf ]
  %i.rl = phi <2 x float> [ %i.qa, %bb.bd ], [ %i.qa, %bb.be ], [ %i.ri, %bb.bf ]
  %.sroa.01.4.vec.extract.i115.i657 = extractelement <2 x float> %.sroa.020.0.i651, i64 1
  %i.rm = fsub <2 x float> %.sroa.020.0.i651, %.sroa.0237.0.copyload
  %i.rn = fmul <2 x float> %i.ai, %i.rm           ; 2 uses
  %i.ro = fmul <2 x float> %i.ai, %i.rl           ; 2 uses
  %i.rp = fsub float 0.000000e+00, %i.m
  %i.rq = shufflevector <2 x float> %i.rn, <2 x float> %i.ro, <2 x i32> <i32 0, i32 2>
  %i.rr = shufflevector <2 x float> %i.rn, <2 x float> %i.ro, <2 x i32> <i32 1, i32 3>
  %i.rs = fsub <2 x float> %i.rq, %i.rr           ; 3 uses
  %i.rt = insertelement <2 x float> poison, float %i.rp, i64 0
  %i.ru = shufflevector <2 x float> %i.rt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rv = fsub <2 x float> %i.ru, %i.rs
  %i.rw = fmul <2 x float> %i.rv, splat (float 5.000000e-01)
  %i.rx = shufflevector <2 x float> %i.rw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ry = shufflevector <2 x float> %.sroa.012.0.i, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 0>
  %i.rz = fmul <4 x float> %i.ry, %i.rx           ; 3 uses
  %i.sa = extractelement <4 x float> %i.rz, i64 2
  %i.sb = fsub float %.sroa.01.4.vec.extract.i115.i657, %i.sa
  %i.sc = insertelement <2 x float> %.sroa.020.0.i651, float %.sroa.01.0.vec.extract.i122.pre-phi.i655, i64 1
  %i.sd = shufflevector <4 x float> %i.rz, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.se = fadd <2 x float> %i.sc, %i.sd           ; 2 uses
  %.sroa.03.4.vec.insert.i.i659 = insertelement <2 x float> %i.se, float %i.sb, i64 1
  %i.sf = shufflevector <2 x float> %i.se, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.sg = extractelement <4 x float> %i.rz, i64 3
  %i.sh = fsub float %.sroa.01.4.vec.extract.i125.pre-phi.i653, %i.sg
  %.sroa.03.4.vec.insert.i139.i661 = insertelement <2 x float> %i.sf, float %i.sh, i64 1
  %i.si = fadd float %i.m, 0.000000e+00           ; 2 uses
  %i.sj = extractelement <2 x float> %i.rs, i64 0
  %i.sk = fsub float %i.sj, %i.si
  %i.sl = extractelement <2 x float> %i.rs, i64 1
  %i.sm = fsub float %i.sl, %i.si
  br label %b2ClipSegments.exit666

b2ClipSegments.exit666:                           ; preds = %bb.az, %bb.bg
  %.sroa.6.0 = phi float [ 0.000000e+00, %bb.az ], [ %i.sk, %bb.bg ]
  %.sroa.7.0 = phi i16 [ 0, %bb.az ], [ %i.pu, %bb.bg ]
  %.sroa.9.0 = phi float [ 0.000000e+00, %bb.az ], [ %i.sm, %bb.bg ]
  %.sroa.10.0 = phi i16 [ 0, %bb.az ], [ %i.px, %bb.bg ]
  %.sroa.11668.0 = phi i32 [ 0, %bb.az ], [ 2, %bb.bg ]
  %.sroa.8667.0 = phi <2 x float> [ zeroinitializer, %bb.az ], [ %.sroa.03.4.vec.insert.i139.i661, %bb.bg ]
  %.sroa.5.0 = phi <2 x float> [ zeroinitializer, %bb.az ], [ %.sroa.03.4.vec.insert.i.i659, %bb.bg ]
  %.sroa.0.0 = phi <2 x float> [ zeroinitializer, %bb.az ], [ %.sroa.01.4.vec.insert.i378, %bb.bg ]
  store <2 x float> %.sroa.0.0, ptr %0, align 4, !tbaa !9
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 0, ptr %.sroa.8.0..sroa_idx, align 2
  %.sroa.8667.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x float> %.sroa.8667.0, ptr %.sroa.8667.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i16 %.sroa.10.0, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 38
  store i16 0, ptr %.sroa.11.0..sroa_idx, align 2, !tbaa !58
  %.sroa.11668.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.sroa.11668.0, ptr %.sroa.11668.0..sroa_idx, align 4, !tbaa !59
  br label %.critedge

.critedge:                                        ; preds = %.thread, %b2ClassifyNormal.exit461, %b2ClassifyNormal.exit, %bb.x, %bb.y, %bb.aa, %bb.z, %bb.p, %b2ClipSegments.exit666, %bb.aw, %bb.am, %bb.av, %b2ClipSegments.exit, %bb.al, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %bb.bh

bb.bh:                                            ; preds = %b2Normalize.exit366, %.critedge
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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
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
!26 = distinct !{!26, i1 false, !"b2MakeCapsule"}
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
!44 = distinct !{!44, i1 false, !"b2CollideCapsuleAndCircle"}
!45 = distinct !{!45, !44, !"b2CollideCapsuleAndCircle: argument 0"}
!46 = !{!45}
!47 = distinct !{!47, i1 false, !"b2MakeCapsule"}
!48 = distinct !{!48, !47, !"b2MakeCapsule: argument 0"}
!49 = !{!48}
!50 = distinct !{!50, i1 false, !"b2MakeCapsule"}
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
