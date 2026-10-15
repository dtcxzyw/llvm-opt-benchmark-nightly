Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box2d/original/distance?download=true
inline.NumInlined: 184
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 12
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.b2SegmentDistanceResult = type { %struct.b2Vec2, %struct.b2Vec2, float, float, float }
%struct.b2Vec2 = type { float, float }
%struct.b2ShapeProxy = type { [8 x %struct.b2Vec2], i32, float }
%struct.b2DistanceOutput = type { %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, float, i32, i32 }
%struct.b2SimplexCache = type { i16, [3 x i8], [3 x i8] }
%struct.b2Simplex = type { %struct.b2SimplexVertex, %struct.b2SimplexVertex, %struct.b2SimplexVertex, i32 }
%struct.b2SimplexVertex = type { %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, float, i32, i32 }
%struct.b2CastOutput = type { %struct.b2Vec2, %struct.b2Vec2, float, i32, i8 }
%struct.b2DistanceInput = type { %struct.b2ShapeProxy, %struct.b2ShapeProxy, %struct.b2Transform, i8 }
%struct.b2Transform = type { %struct.b2Vec2, %struct.b2Rot }
%struct.b2Rot = type { float, float }
%struct.b2TOIOutput = type { i32, %struct.b2Vec2, %struct.b2Vec2, float }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define { <2 x float>, <2 x float> } @b2GetSweepTransform(ptr nofree noundef readonly captures(none) %0, float noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = fsub float 1.000000e+00, %1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load <2 x float>, ptr %i.b, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load <2 x float>, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = insertelement <2 x float> poison, float %i.a, i64 0
  %i.i = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.j = fmul <2 x float> %i.i, %i.c
  %i.k = insertelement <2 x float> poison, float %1, i64 0
  %i.l = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.m = fmul <2 x float> %i.l, %i.e
  %i.n = fadd <2 x float> %i.j, %i.m
  %i.o = load <2 x float>, ptr %i.f, align 4, !tbaa !10
  %i.p = fmul <2 x float> %i.i, %i.o
  %i.q = load <2 x float>, ptr %i.g, align 4, !tbaa !10
  %i.r = fmul <2 x float> %i.l, %i.q
  %i.s = fadd <2 x float> %i.p, %i.r              ; 3 uses
  %i.t = fmul <2 x float> %i.s, %i.s
  %i.u = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.t)
  %i.v = tail call float @sqrtf(float noundef %i.u) #13 ; 2 uses
  %i.w = fcmp ogt float %i.v, 0.000000e+00
  %i.x = fdiv float 1.000000e+00, %i.v
  %i.y = select i1 %i.w, float %i.x, float 0.000000e+00
  %i.z = insertelement <2 x float> poison, float %i.y, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ab = fmul <2 x float> %i.s, %i.aa            ; 3 uses
  %i.ac = load <2 x float>, ptr %0, align 4       ; 2 uses
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ae = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.af = fmul <2 x float> %i.ad, %i.ae           ; 2 uses
  %i.ag = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ah = fmul <2 x float> %i.ac, %i.ag           ; 2 uses
  %i.ai = fsub <2 x float> %i.ah, %i.af
  %i.aj = fadd <2 x float> %i.ah, %i.af
  %i.ak = shufflevector <2 x float> %i.ai, <2 x float> %i.aj, <2 x i32> <i32 0, i32 3>
  %i.al = fsub <2 x float> %i.n, %i.ak
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.al, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %i.ab, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @b2SegmentDistance(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b2SegmentDistanceResult) align 4 captures(none) initializes((0, 28)) %0, <2 x float> %1, <2 x float> %2, <2 x float> %3, <2 x float> %4) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.a, align 4
  %i.b = fsub <2 x float> %2, %1                  ; 5 uses
  %i.c = fsub <2 x float> %4, %3                  ; 6 uses
  %i.d = fmul <2 x float> %i.b, %i.b
  %i.e = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.d) ; 6 uses
  %i.f = fmul <2 x float> %i.c, %i.c
  %i.g = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.f) ; 6 uses
  %i.h = fsub <2 x float> %1, %3                  ; 3 uses
  %i.i = fmul <2 x float> %i.b, %i.h              ; 2 uses
  %shift = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.i, %shift
  %i.j = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 4 uses
  %foldExtExtBinop110 = fmul <2 x float> %i.h, %i.c
  %foldExtExtBinop112 = fmul <2 x float> %i.h, %i.c
  %shift114 = shufflevector <2 x float> %foldExtExtBinop112, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop115 = fadd <2 x float> %foldExtExtBinop110, %shift114
  %i.k = extractelement <2 x float> %foldExtExtBinop115, i64 0 ; 3 uses
  %i.l = fcmp olt float %i.e, f0x28800000
  %i.m = fcmp olt float %i.g, f0x28800000
  %or.cond = select i1 %i.l, i1 true, i1 %i.m
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.n = fcmp ult float %i.e, f0x28800000
  br i1 %i.n, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = fneg float %i.j
  %i.p = fdiv float %i.o, %i.e                    ; 3 uses
  %i.q = fcmp olt float %i.p, 0.000000e+00
  %i.r = fcmp ogt float %i.p, 1.000000e+00
  %i.s = select i1 %i.r, float 1.000000e+00, float %i.p
  %i.t = select i1 %i.q, float 0.000000e+00, float %i.s ; 2 uses
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.u = fcmp ult float %i.g, f0x28800000
  br i1 %i.u, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = fdiv float %i.k, %i.g                    ; 3 uses
  %i.w = fcmp olt float %i.v, 0.000000e+00
  %i.x = fcmp ogt float %i.v, 1.000000e+00
  %i.y = select i1 %i.x, float 1.000000e+00, float %i.v
  %i.z = select i1 %i.w, float 0.000000e+00, float %i.y ; 2 uses
  br label %.sink.split

bb.f:                                             ; preds = %bb.a
  %i.aa = fmul <2 x float> %i.b, %i.c
  %i.ab = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.aa) ; 5 uses
  %i.ac = fmul float %i.e, %i.g
  %i.ad = fmul float %i.ab, %i.ab
  %i.ae = fsub float %i.ac, %i.ad                 ; 2 uses
  %i.af = fcmp une float %i.ae, 0.000000e+00
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ag = fmul float %i.ab, %i.k
  %i.ah = fmul float %i.j, %i.g
  %i.ai = fsub float %i.ag, %i.ah
  %i.aj = fdiv float %i.ai, %i.ae                 ; 3 uses
  %i.ak = fcmp olt float %i.aj, 0.000000e+00
  %i.al = fcmp ogt float %i.aj, 1.000000e+00
  %i.am = select i1 %i.al, float 1.000000e+00, float %i.aj
  %i.an = select i1 %i.ak, float 0.000000e+00, float %i.am
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.053 = phi float [ %i.an, %bb.g ], [ 0.000000e+00, %bb.f ] ; 2 uses
  %i.ao = fmul float %i.ab, %.053
  %i.ap = fadd float %i.k, %i.ao
  %i.aq = fdiv float %i.ap, %i.g                  ; 3 uses
  %i.ar = fcmp olt float %i.aq, 0.000000e+00
  br i1 %i.ar, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.as = fneg float %i.j
  %i.at = fdiv float %i.as, %i.e                  ; 3 uses
  %i.au = fcmp olt float %i.at, 0.000000e+00
  %i.av = fcmp ogt float %i.at, 1.000000e+00
  %i.aw = select i1 %i.av, float 1.000000e+00, float %i.at
  %i.ax = select i1 %i.au, float 0.000000e+00, float %i.aw
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ay = fcmp ogt float %i.aq, 1.000000e+00
  br i1 %i.ay, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.az = fsub float %i.ab, %i.j
  %i.ba = fdiv float %i.az, %i.e                  ; 3 uses
  %i.bb = fcmp olt float %i.ba, 0.000000e+00
  %i.bc = fcmp ogt float %i.ba, 1.000000e+00
  %i.bd = select i1 %i.bc, float 1.000000e+00, float %i.ba
  %i.be = select i1 %i.bb, float 0.000000e+00, float %i.bd
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.i
  %.1 = phi float [ %i.ax, %bb.i ], [ %i.be, %bb.k ], [ %.053, %bb.j ] ; 2 uses
  %.0 = phi float [ 0.000000e+00, %bb.i ], [ 1.000000e+00, %bb.k ], [ %i.aq, %bb.j ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %.1, ptr %i.bf, align 4, !tbaa !27
  br label %.sink.split

.sink.split:                                      ; preds = %bb.l, %bb.e, %bb.c
  %.sink108 = phi i64 [ 16, %bb.c ], [ 20, %bb.e ], [ 20, %bb.l ]
  %.sink = phi float [ %i.t, %bb.c ], [ %i.z, %bb.e ], [ %.0, %bb.l ]
  %.ph = phi float [ 0.000000e+00, %bb.c ], [ %i.z, %bb.e ], [ %.0, %bb.l ]
  %.ph106 = phi float [ %i.t, %bb.c ], [ 0.000000e+00, %bb.e ], [ %.1, %bb.l ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 %.sink108
  store float %.sink, ptr %i.bg, align 4, !tbaa !10
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.d
  %i.bh = phi float [ 0.000000e+00, %bb.d ], [ %.ph, %.sink.split ]
  %i.bi = phi float [ 0.000000e+00, %bb.d ], [ %.ph106, %.sink.split ]
  %i.bj = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.bk = shufflevector <2 x float> %i.bj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bl = fmul <2 x float> %i.b, %i.bk
  %i.bm = fadd <2 x float> %1, %i.bl              ; 2 uses
  %i.bn = insertelement <2 x float> poison, float %i.bh, i64 0
  %i.bo = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bp = fmul <2 x float> %i.c, %i.bo
  %i.bq = fadd <2 x float> %3, %i.bp              ; 2 uses
  %5 = shufflevector <2 x float> %i.bm, <2 x float> %i.bq, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %5, ptr %0, align 4, !tbaa !10
  %i.br = fsub <2 x float> %i.bq, %i.bm           ; 2 uses
  %i.bs = fmul <2 x float> %i.br, %i.br
  %i.bt = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.bs)
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.bt, ptr %i.bu, align 4, !tbaa !28
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @b2MakeProxy(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b2ShapeProxy) align 4 captures(none) initializes((64, 72)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, float noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call noundef range(i32 -2147483648, 9) i32 @llvm.smin.i32(i32 %2, i32 8) ; 2 uses
  %i.b = icmp sgt i32 %2, 0
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = add nsw i32 %i.a, -1
  %i.d = zext i32 %i.c to i64
  %i.e = shl nuw nsw i64 %i.d, 3
  %i.f = add nuw nsw i64 %i.e, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(1) %1, i64 %i.f, i1 false), !tbaa !10
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.a, ptr %i.g, align 4, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 68
  store float %3, ptr %i.h, align 4, !tbaa !14
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @b2MakeOffsetProxy(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b2ShapeProxy) align 4 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, float noundef %3, <2 x float> %4, <2 x float> %5) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.a
  %i.b = tail call noundef range(i32 -2147483648, 9) i32 @llvm.smin.i32(i32 %2, i32 8)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.b, ptr %i.c, align 4, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 68
  store float %3, ptr %i.d, align 4, !tbaa !14
  ret void

.lr.ph:                                           ; preds = %bb.a
  %i.e = load <2 x float>, ptr %1, align 4        ; 2 uses
  %i.f = shufflevector <2 x float> %i.e, <2 x float> poison, <2 x i32> zeroinitializer
  %i.g = fmul <2 x float> %5, %i.f                ; 2 uses
  %i.h = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.i = shufflevector <2 x float> %i.e, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.j = fmul <2 x float> %i.h, %i.i              ; 2 uses
  %i.k = fsub <2 x float> %i.g, %i.j
  %i.l = fadd <2 x float> %i.g, %i.j
  %i.m = shufflevector <2 x float> %i.k, <2 x float> %i.l, <2 x i32> <i32 0, i32 3>
  %i.n = fadd <2 x float> %4, %i.m
  store <2 x float> %i.n, ptr %0, align 4, !tbaa !10
  %exitcond.not = icmp eq i32 %2, 1
  br i1 %exitcond.not, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load <2 x float>, ptr %i.p, align 4      ; 2 uses
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> zeroinitializer
  %i.s = fmul <2 x float> %5, %i.r                ; 2 uses
  %i.t = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.u = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.v = fmul <2 x float> %i.t, %i.u              ; 2 uses
  %i.w = fsub <2 x float> %i.s, %i.v
  %i.x = fadd <2 x float> %i.s, %i.v
  %i.y = shufflevector <2 x float> %i.w, <2 x float> %i.x, <2 x i32> <i32 0, i32 3>
  %i.z = fadd <2 x float> %4, %i.y
  store <2 x float> %i.z, ptr %i.o, align 4, !tbaa !10
  %exitcond.not.1 = icmp eq i32 %2, 2
  br i1 %exitcond.not.1, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ac = load <2 x float>, ptr %i.ab, align 4    ; 2 uses
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ae = fmul <2 x float> %5, %i.ad              ; 2 uses
  %i.af = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ag = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ah = fmul <2 x float> %i.af, %i.ag           ; 2 uses
  %i.ai = fsub <2 x float> %i.ae, %i.ah
  %i.aj = fadd <2 x float> %i.ae, %i.ah
  %i.ak = shufflevector <2 x float> %i.ai, <2 x float> %i.aj, <2 x i32> <i32 0, i32 3>
  %i.al = fadd <2 x float> %4, %i.ak
  store <2 x float> %i.al, ptr %i.aa, align 4, !tbaa !10
  %exitcond.not.2 = icmp eq i32 %2, 3
  br i1 %exitcond.not.2, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ao = load <2 x float>, ptr %i.an, align 4    ; 2 uses
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aq = fmul <2 x float> %5, %i.ap              ; 2 uses
  %i.ar = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.as = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.at = fmul <2 x float> %i.ar, %i.as           ; 2 uses
  %i.au = fsub <2 x float> %i.aq, %i.at
  %i.av = fadd <2 x float> %i.aq, %i.at
  %i.aw = shufflevector <2 x float> %i.au, <2 x float> %i.av, <2 x i32> <i32 0, i32 3>
  %i.ax = fadd <2 x float> %4, %i.aw
  store <2 x float> %i.ax, ptr %i.am, align 4, !tbaa !10
  %exitcond.not.3 = icmp eq i32 %2, 4
  br i1 %exitcond.not.3, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ba = load <2 x float>, ptr %i.az, align 4    ; 2 uses
  %i.bb = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bc = fmul <2 x float> %5, %i.bb              ; 2 uses
  %i.bd = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.be = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bf = fmul <2 x float> %i.bd, %i.be           ; 2 uses
  %i.bg = fsub <2 x float> %i.bc, %i.bf
  %i.bh = fadd <2 x float> %i.bc, %i.bf
  %i.bi = shufflevector <2 x float> %i.bg, <2 x float> %i.bh, <2 x i32> <i32 0, i32 3>
  %i.bj = fadd <2 x float> %4, %i.bi
  store <2 x float> %i.bj, ptr %i.ay, align 4, !tbaa !10
  %exitcond.not.4 = icmp eq i32 %2, 5
  br i1 %exitcond.not.4, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bm = load <2 x float>, ptr %i.bl, align 4    ; 2 uses
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bo = fmul <2 x float> %5, %i.bn              ; 2 uses
  %i.bp = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bq = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.br = fmul <2 x float> %i.bp, %i.bq           ; 2 uses
  %i.bs = fsub <2 x float> %i.bo, %i.br
  %i.bt = fadd <2 x float> %i.bo, %i.br
  %i.bu = shufflevector <2 x float> %i.bs, <2 x float> %i.bt, <2 x i32> <i32 0, i32 3>
  %i.bv = fadd <2 x float> %4, %i.bu
  store <2 x float> %i.bv, ptr %i.bk, align 4, !tbaa !10
  %exitcond.not.5 = icmp eq i32 %2, 6
  br i1 %exitcond.not.5, label %._crit_edge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.by = load <2 x float>, ptr %i.bx, align 4    ; 2 uses
  %i.bz = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ca = fmul <2 x float> %5, %i.bz              ; 2 uses
  %i.cb = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cc = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cd = fmul <2 x float> %i.cb, %i.cc           ; 2 uses
  %i.ce = fsub <2 x float> %i.ca, %i.cd
  %i.cf = fadd <2 x float> %i.ca, %i.cd
  %i.cg = shufflevector <2 x float> %i.ce, <2 x float> %i.cf, <2 x i32> <i32 0, i32 3>
  %i.ch = fadd <2 x float> %4, %i.cg
  store <2 x float> %i.ch, ptr %i.bw, align 4, !tbaa !10
  %exitcond.not.6 = icmp eq i32 %2, 7
  br i1 %exitcond.not.6, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ck = load <2 x float>, ptr %i.cj, align 4    ; 2 uses
  %i.cl = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cm = fmul <2 x float> %5, %i.cl              ; 2 uses
  %i.cn = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.co = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cp = fmul <2 x float> %i.cn, %i.co           ; 2 uses
  %i.cq = fsub <2 x float> %i.cm, %i.cp
  %i.cr = fadd <2 x float> %i.cm, %i.cp
  %i.cs = shufflevector <2 x float> %i.cq, <2 x float> %i.cr, <2 x i32> <i32 0, i32 3>
  %i.ct = fadd <2 x float> %4, %i.cs
  store <2 x float> %i.ct, ptr %i.ci, align 4, !tbaa !10
  br label %._crit_edge
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define void @b2ShapeDistance(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b2DistanceOutput) align 4 captures(none) initializes((0, 36)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef writeonly captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #6 {
bb.a:
  %5 = alloca %struct.b2SimplexCache, align 8     ; 7 uses
  %i.a = alloca [3 x ptr], align 16               ; 8 uses
  %6 = alloca %struct.b2SimplexCache, align 8     ; 7 uses
  %i.b = alloca [3 x ptr], align 16               ; 8 uses
  %7 = alloca %struct.b2SimplexCache, align 8     ; 5 uses
  %i.c = alloca [3 x ptr], align 16               ; 6 uses
  %8 = alloca %struct.b2ShapeProxy, align 8       ; 14 uses
  %9 = alloca %struct.b2Simplex, align 8          ; 45 uses
  %i.d = alloca [3 x ptr], align 16               ; 9 uses
  %i.e = alloca [3 x i32], align 4                ; 6 uses
  %i.f = alloca [3 x i32], align 4                ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %0, i8 0, i64 36, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 136
end_hunk_0
begin_hunk_1_@b2ShapeDistance:bb.a
  %i.fx = fneg float %i.ft
  %i.fy = fsub <2 x float> %.sroa.084.0.copyload.i, %.sroa.093.0.copyload.i ; 3 uses
  %i.fz = shufflevector <2 x float> %i.fy, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ga = extractelement <2 x float> %i.fy, i64 0 ; 2 uses
  %i.gb = fmul float %.sroa.01.0.vec.extract.i.i89, %i.ga
  %i.gc = extractelement <2 x float> %i.fy, i64 1 ; 2 uses
  %i.gd = fmul float %.sroa.01.4.vec.extract.i.i91, %i.gc
  %i.ge = fadd float %i.gb, %i.gd                 ; 4 uses
  %i.gf = fmul float %.sroa.01.0.vec.extract.i155.i, %i.ga
  %i.gg = fmul float %.sroa.01.4.vec.extract.i158.i, %i.gc
  %i.gh = fadd float %i.gf, %i.gg                 ; 4 uses
  %i.gi = fneg float %i.ge
  %i.gj = fmul <2 x float> %i.fg, %i.fq           ; 2 uses
  %shift345 = shufflevector <2 x float> %i.gj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop346 = fsub <2 x float> %i.gj, %shift345
  %i.gk = shufflevector <2 x float> %.sroa.093.0.copyload.i, <2 x float> %.sroa.0102.0.copyload.i, <3 x i32> <i32 0, i32 3, i32 2>
  %i.gl = shufflevector <2 x float> %.sroa.084.0.copyload.i, <2 x float> %.sroa.093.0.copyload.i, <3 x i32> <i32 1, i32 0, i32 3>
  %i.gm = fmul <3 x float> %i.gk, %i.gl
  %i.gn = shufflevector <2 x float> %.sroa.093.0.copyload.i, <2 x float> %.sroa.0102.0.copyload.i, <3 x i32> <i32 1, i32 2, i32 3>
  %i.go = shufflevector <2 x float> %.sroa.084.0.copyload.i, <2 x float> %.sroa.093.0.copyload.i, <3 x i32> <i32 0, i32 1, i32 2>
  %i.gp = fmul <3 x float> %i.gn, %i.go
  %i.gq = fsub <3 x float> %i.gm, %i.gp
  %i.gr = shufflevector <2 x float> %foldExtExtBinop346, <2 x float> poison, <3 x i32> zeroinitializer
  %i.gs = fmul <3 x float> %i.gq, %i.gr           ; 4 uses
  %i.gt = fcmp oge float %i.fk, 0.000000e+00
  %i.gu = fcmp oge float %i.ft, 0.000000e+00
  %or.cond.i = select i1 %i.gt, i1 %i.gu, i1 false
  br i1 %or.cond.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store float 1.000000e+00, ptr %i.da, align 8, !tbaa !50
  store i32 1, ptr %i.ak, align 4, !tbaa !42
  %i.gv = fneg <2 x float> %.sroa.0102.0.copyload.i
  br label %b2SolveSimplex2.exit.thread

bb.p:                                             ; preds = %bb.n
  %i.gw = fcmp ogt float %i.fn, 0.000000e+00
  %i.gx = fcmp olt float %i.fk, 0.000000e+00
  %or.cond3.i = select i1 %i.gw, i1 %i.gx, i1 false
  %i.gy = extractelement <3 x float> %i.gs, i64 2 ; 2 uses
  %i.gz = fcmp ole float %i.gy, 0.000000e+00
  %or.cond5.i = select i1 %or.cond3.i, i1 %i.gz, i1 false
  br i1 %or.cond5.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ha = fsub float %i.fn, %i.fk
  %i.hb = fdiv float 1.000000e+00, %i.ha          ; 2 uses
  %i.hc = fmul float %i.fn, %i.hb
  store float %i.hc, ptr %i.da, align 8, !tbaa !50
  %i.hd = fmul float %i.hb, %i.fo
  store float %i.hd, ptr %i.cy, align 4, !tbaa !51
  store i32 2, ptr %i.ak, align 4, !tbaa !42
  %i.he = fadd <2 x float> %.sroa.0102.0.copyload.i, %.sroa.093.0.copyload.i
  %i.hf = fmul <2 x float> %i.he, %i.fh           ; 2 uses
  %shift348 = shufflevector <2 x float> %i.hf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop349 = fsub <2 x float> %i.hf, %shift348 ; 2 uses
  %i.hg = extractelement <2 x float> %foldExtExtBinop349, i64 0
  %i.hh = fneg float %i.hg
  %i.hi = insertelement <2 x float> poison, float %i.hh, i64 0
  %i.hj = shufflevector <2 x float> %i.hi, <2 x float> %foldExtExtBinop349, <2 x i32> <i32 0, i32 2>
  %i.hk = fmul <2 x float> %i.fh, %i.hj
  br label %b2SolveSimplex2.exit.thread

bb.r:                                             ; preds = %bb.p
  %i.hl = fcmp ogt float %i.fw, 0.000000e+00
  %i.hm = fcmp olt float %i.ft, 0.000000e+00
  %or.cond7.i = select i1 %i.hl, i1 %i.hm, i1 false
  %i.hn = extractelement <3 x float> %i.gs, i64 1 ; 2 uses
  %i.ho = fcmp ole float %i.hn, 0.000000e+00
  %or.cond9.i = select i1 %or.cond7.i, i1 %i.ho, i1 false
  br i1 %or.cond9.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.hp = fsub float %i.fw, %i.ft
  %i.hq = fdiv float 1.000000e+00, %i.hp          ; 2 uses
  %i.hr = fmul float %i.fw, %i.hq
  store float %i.hr, ptr %i.da, align 8, !tbaa !50
  %i.hs = fmul float %i.hq, %i.fx
  store float %i.hs, ptr %i.cz, align 8, !tbaa !53
  store i32 2, ptr %i.ak, align 4, !tbaa !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.am, ptr noundef nonnull align 8 dereferenceable(36) %i.ao, i64 36, i1 false), !tbaa.struct !52
  %i.ht = fadd <2 x float> %.sroa.0102.0.copyload.i, %.sroa.084.0.copyload.i
  %i.hu = fmul <2 x float> %i.ht, %i.fq           ; 2 uses
  %shift351 = shufflevector <2 x float> %i.hu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop352 = fsub <2 x float> %i.hu, %shift351 ; 2 uses
  %i.hv = extractelement <2 x float> %foldExtExtBinop352, i64 0
  %i.hw = fneg float %i.hv
  %i.hx = insertelement <2 x float> poison, float %i.hw, i64 0
  %i.hy = shufflevector <2 x float> %i.hx, <2 x float> %foldExtExtBinop352, <2 x i32> <i32 0, i32 2>
  %i.hz = fmul <2 x float> %i.fq, %i.hy
  br label %b2SolveSimplex2.exit.thread

bb.t:                                             ; preds = %bb.r
  %i.ia = fcmp ole float %i.fn, 0.000000e+00
  %i.ib = fcmp oge float %i.ge, 0.000000e+00
  %or.cond11.i = select i1 %i.ia, i1 %i.ib, i1 false
  br i1 %or.cond11.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store float 1.000000e+00, ptr %i.cy, align 4, !tbaa !51
  store i32 1, ptr %i.ak, align 4, !tbaa !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef nonnull align 4 dereferenceable(36) %i.am, i64 36, i1 false), !tbaa.struct !52
  %i.ic = fneg <2 x float> %.sroa.093.0.copyload.i
  br label %b2SolveSimplex2.exit.thread

bb.v:                                             ; preds = %bb.t
  %i.id = fcmp ole float %i.fw, 0.000000e+00
  %i.ie = fcmp ole float %i.gh, 0.000000e+00
  %or.cond13.i = select i1 %i.id, i1 %i.ie, i1 false
  br i1 %or.cond13.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store float 1.000000e+00, ptr %i.cz, align 8, !tbaa !53
  store i32 1, ptr %i.ak, align 4, !tbaa !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef nonnull align 8 dereferenceable(36) %i.ao, i64 36, i1 false), !tbaa.struct !52
  %i.if = fneg <2 x float> %.sroa.084.0.copyload.i
  br label %b2SolveSimplex2.exit.thread

bb.x:                                             ; preds = %bb.v
  %i.ig = fcmp ogt float %i.gh, 0.000000e+00
  %i.ih = fcmp olt float %i.ge, 0.000000e+00
  %or.cond15.i = select i1 %i.ig, i1 %i.ih, i1 false
  %i.ii = extractelement <3 x float> %i.gs, i64 0 ; 2 uses
  %i.ij = fcmp ole float %i.ii, 0.000000e+00
  %or.cond17.i = select i1 %or.cond15.i, i1 %i.ij, i1 false
  br i1 %or.cond17.i, label %bb.y, label %.lr.ph.i95

bb.y:                                             ; preds = %bb.x
  %i.ik = fsub float %i.gh, %i.ge
  %i.il = fdiv float 1.000000e+00, %i.ik          ; 2 uses
  %i.im = fmul float %i.gh, %i.il
  store float %i.im, ptr %i.cy, align 4, !tbaa !51
  %i.in = fmul float %i.il, %i.gi
  store float %i.in, ptr %i.cz, align 8, !tbaa !53
  store i32 2, ptr %i.ak, align 4, !tbaa !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef nonnull align 8 dereferenceable(36) %i.ao, i64 36, i1 false), !tbaa.struct !52
  %i.io = fadd <2 x float> %.sroa.093.0.copyload.i, %.sroa.084.0.copyload.i
  %i.ip = fmul <2 x float> %i.io, %i.fz           ; 2 uses
  %shift354 = shufflevector <2 x float> %i.ip, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop355 = fsub <2 x float> %i.ip, %shift354 ; 2 uses
  %i.iq = extractelement <2 x float> %foldExtExtBinop355, i64 0
  %i.ir = fneg float %i.iq
  %i.is = insertelement <2 x float> poison, float %i.ir, i64 0
  %i.it = shufflevector <2 x float> %i.is, <2 x float> %foldExtExtBinop355, <2 x i32> <i32 0, i32 2>
  %i.iu = fmul <2 x float> %i.fz, %i.it
  br label %b2SolveSimplex2.exit.thread

.lr.ph.i95:                                       ; preds = %bb.x
  %i.iv = fadd float %i.ii, %i.hn
  %i.iw = fadd float %i.gy, %i.iv
  %i.ix = fdiv float 1.000000e+00, %i.iw
  %i.iy = getelementptr inbounds nuw i8, ptr %9, i64 28
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !46
  %i.ja = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.jb = load i32, ptr %i.ja, align 8, !tbaa !47
  %i.jc = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.jd = load i32, ptr %i.jc, align 8, !tbaa !46
  %i.je = getelementptr inbounds nuw i8, ptr %9, i64 68
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !47
  %i.jg = getelementptr inbounds nuw i8, ptr %9, i64 100
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !46
  %i.ji = getelementptr inbounds nuw i8, ptr %9, i64 104
  %i.jj = load i32, ptr %i.ji, align 8, !tbaa !47
  %i.jk = and i32 %i.jj, 255
  %.sroa.10.0.insert.ext = zext nneg i32 %i.jk to i64
  %.sroa.10.0.insert.shift = shl nuw i64 %.sroa.10.0.insert.ext, 56
  %i.jl = and i32 %i.jf, 255
  %.sroa.9.0.insert.ext = zext nneg i32 %i.jl to i64
  %.sroa.9.0.insert.shift = shl nuw nsw i64 %.sroa.9.0.insert.ext, 48
  %.sroa.9.0.insert.insert = or disjoint i64 %.sroa.10.0.insert.shift, %.sroa.9.0.insert.shift
  %i.jm = and i32 %i.jb, 255
  %.sroa.8.0.insert.ext = zext nneg i32 %i.jm to i64
  %.sroa.8.0.insert.shift = shl nuw nsw i64 %.sroa.8.0.insert.ext, 40
  %.sroa.8.0.insert.insert = or disjoint i64 %.sroa.9.0.insert.insert, %.sroa.8.0.insert.shift
  %i.jn = and i32 %i.jh, 255
  %.sroa.7.0.insert.ext = zext nneg i32 %i.jn to i64
  %.sroa.7.0.insert.shift = shl nuw nsw i64 %.sroa.7.0.insert.ext, 32
  %.sroa.7.0.insert.insert = or disjoint i64 %.sroa.8.0.insert.insert, %.sroa.7.0.insert.shift
  %i.jo = shl i32 %i.jd, 24
  %.sroa.6284.0.insert.shift = zext i32 %i.jo to i64
  %.sroa.6284.0.insert.insert = or disjoint i64 %.sroa.7.0.insert.insert, %.sroa.6284.0.insert.shift
  %i.jp = shl i32 %i.iz, 16
  %i.jq = and i32 %i.jp, 16711680
  %.sroa.5.0.insert.shift.masked = zext nneg i32 %i.jq to i64
  %.sroa.0283.0.insert.mask = or disjoint i64 %.sroa.6284.0.insert.insert, %.sroa.5.0.insert.shift.masked
  %.sroa.0283.0.insert.insert = or i64 %.sroa.0283.0.insert.mask, 3
  store i64 %.sroa.0283.0.insert.insert, ptr %2, align 2
  %i.jr = load <2 x float>, ptr %9, align 8
  %i.js = load <2 x float>, ptr %i.am, align 4
  %i.jt = load <2 x float>, ptr %i.ao, align 8
  %i.ju = insertelement <3 x float> poison, float %i.ix, i64 0
  %i.jv = shufflevector <3 x float> %i.ju, <3 x float> poison, <3 x i32> zeroinitializer
  %i.jw = fmul <3 x float> %i.gs, %i.jv           ; 3 uses
  %i.jx = shufflevector <3 x float> %i.jw, <3 x float> poison, <2 x i32> zeroinitializer
  %i.jy = fmul <2 x float> %i.jx, %i.jr
  %i.jz = shufflevector <3 x float> %i.jw, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ka = fmul <2 x float> %i.jz, %i.js
  %i.kb = fadd <2 x float> %i.jy, %i.ka
  %i.kc = shufflevector <3 x float> %i.jw, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.kd = fmul <2 x float> %i.kc, %i.jt
  %i.ke = fadd <2 x float> %i.kb, %i.kd
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float 0.000000e+00, ptr %i.kf, align 4, !tbaa !22
  %10 = shufflevector <2 x float> %i.ke, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  store <4 x float> %10, ptr %0, align 4, !tbaa !10
  br label %.thread

b2SolveSimplex2.exit.thread:                      ; preds = %bb.h, %._crit_edge255, %bb.l, %bb.m, %bb.q, %bb.s, %bb.u, %bb.w, %bb.y, %bb.j, %bb.o
  %.sroa.031.0226 = phi <2 x float> [ %i.eq, %bb.j ], [ %i.gv, %bb.o ], [ %i.iu, %bb.y ], [ %i.if, %bb.w ], [ %i.ic, %bb.u ], [ %i.hz, %bb.s ], [ %i.hk, %bb.q ], [ %i.eu, %bb.l ], [ %i.ff, %bb.m ], [ %i.ej, %bb.h ], [ zeroinitializer, %._crit_edge255 ] ; 10 uses
  %i.kg = phi i32 [ 1, %bb.j ], [ 1, %bb.o ], [ 2, %bb.y ], [ 1, %bb.w ], [ 1, %bb.u ], [ 2, %bb.s ], [ 2, %bb.q ], [ 1, %bb.l ], [ 2, %bb.m ], [ 1, %bb.h ], [ %i.dh, %._crit_edge255 ] ; 9 uses
  %.sroa.01.4.vec.extract.i = extractelement <2 x float> %.sroa.031.0226, i64 1
  %i.kh = fmul <2 x float> %.sroa.031.0226, %.sroa.031.0226
  %i.ki = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.kh) ; 3 uses
  %i.kj = fcmp olt float %i.ki, f0x057A0000
  br i1 %i.kj, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %b2SolveSimplex2.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 0, ptr %6, align 8
  %i.kk = trunc i32 %i.kg to i16
  store i16 %i.kk, ptr %6, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store ptr %9, ptr %i.b, align 16, !tbaa !45
  %i.kl = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.am, ptr %i.kl, align 8, !tbaa !45
  %i.km = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.ao, ptr %i.km, align 16, !tbaa !45
  %i.kn = icmp sgt i32 %i.kg, 0
  br i1 %i.kn, label %.lr.ph.i104, label %b2MakeSimplexCache.exit109

.lr.ph.i104:                                      ; preds = %bb.z
  %i.ko = getelementptr inbounds nuw i8, ptr %6, i64 2 ; 3 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %6, i64 5 ; 3 uses
  %wide.trip.count.i105 = zext nneg i32 %i.kg to i64 ; 2 uses
  %xtraiter406 = and i64 %wide.trip.count.i105, 1
  %i.kq = icmp eq i32 %i.kg, 1
  br i1 %i.kq, label %.epil.preheader405, label %.lr.ph.i104.new

.lr.ph.i104.new:                                  ; preds = %.lr.ph.i104
  %unroll_iter409 = and i64 %wide.trip.count.i105, 2147483646
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.lr.ph.i104.new
  %indvars.iv.i106 = phi i64 [ 0, %.lr.ph.i104.new ], [ %indvars.iv.next.i107.1, %bb.aa ] ; 5 uses
  %niter410 = phi i64 [ 0, %.lr.ph.i104.new ], [ %niter410.next.1, %bb.aa ]
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i106
  %i.ks = load ptr, ptr %i.kr, align 16, !tbaa !45 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 28
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !46
  %i.kv = trunc i32 %i.ku to i8
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ko, i64 %indvars.iv.i106
  store i8 %i.kv, ptr %i.kw, align 2, !tbaa !18
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ks, i64 32
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !47
  %i.kz = trunc i32 %i.ky to i8
  %i.la = getelementptr inbounds nuw i8, ptr %i.kp, i64 %indvars.iv.i106
  store i8 %i.kz, ptr %i.la, align 1, !tbaa !18
  %indvars.iv.next.i107 = or disjoint i64 %indvars.iv.i106, 1 ; 3 uses
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next.i107
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !45 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 28
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !46
  %i.lf = trunc i32 %i.le to i8
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ko, i64 %indvars.iv.next.i107
  store i8 %i.lf, ptr %i.lg, align 1, !tbaa !18
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lc, i64 32
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !47
  %i.lj = trunc i32 %i.li to i8
  %i.lk = getelementptr inbounds nuw i8, ptr %i.kp, i64 %indvars.iv.next.i107
  store i8 %i.lj, ptr %i.lk, align 2, !tbaa !18
  %indvars.iv.next.i107.1 = add nuw nsw i64 %indvars.iv.i106, 2 ; 2 uses
  %niter410.next.1 = add i64 %niter410, 2         ; 2 uses
  %niter410.ncmp.1 = icmp eq i64 %niter410.next.1, %unroll_iter409
  br i1 %niter410.ncmp.1, label %b2MakeSimplexCache.exit109.loopexit.unr-lcssa, label %bb.aa, !llvm.loop !34

b2MakeSimplexCache.exit109.loopexit.unr-lcssa:    ; preds = %bb.aa
  %lcmp.mod407.not = icmp eq i64 %xtraiter406, 0
  br i1 %lcmp.mod407.not, label %b2MakeSimplexCache.exit109, label %.epil.preheader405

.epil.preheader405:                               ; preds = %b2MakeSimplexCache.exit109.loopexit.unr-lcssa, %.lr.ph.i104
  %indvars.iv.i106.epil.init = phi i64 [ 0, %.lr.ph.i104 ], [ %indvars.iv.next.i107.1, %b2MakeSimplexCache.exit109.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod408 = trunc i32 %i.kg to i1
  call void @llvm.assume(i1 %lcmp.mod408)
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i106.epil.init
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !45 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 28
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !46
  %i.lp = trunc i32 %i.lo to i8
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ko, i64 %indvars.iv.i106.epil.init
  store i8 %i.lp, ptr %i.lq, align 1, !tbaa !18
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lm, i64 32
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !47
  %i.lt = trunc i32 %i.ls to i8
  %i.lu = getelementptr inbounds nuw i8, ptr %i.kp, i64 %indvars.iv.i106.epil.init
  store i8 %i.lt, ptr %i.lu, align 1, !tbaa !18
  br label %b2MakeSimplexCache.exit109

b2MakeSimplexCache.exit109:                       ; preds = %.epil.preheader405, %b2MakeSimplexCache.exit109.loopexit.unr-lcssa, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %i.lv = load i64, ptr %6, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  store i64 %i.lv, ptr %2, align 2
  switch i32 %i.kg, label %b2ComputeWitnessPoints.exit130 [
    i32 1, label %bb.ab
    i32 2, label %bb.ac
    i32 3, label %bb.ad
  ]

bb.ab:                                            ; preds = %b2MakeSimplexCache.exit109
  %i.lw = load <2 x float>, ptr %9, align 8, !tbaa !10
  %i.lx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ly = load <2 x float>, ptr %i.lx, align 8, !tbaa !10
  br label %b2ComputeWitnessPoints.exit130

bb.ac:                                            ; preds = %b2MakeSimplexCache.exit109
  %i.lz = load <1 x float>, ptr %i.da, align 8
  %i.ma = load <1 x float>, ptr %i.cy, align 4
  %i.mb = load <2 x float>, ptr %9, align 8
  %i.mc = load <2 x float>, ptr %i.am, align 4
  %i.md = shufflevector <1 x float> %i.lz, <1 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.me = fmul <2 x float> %i.md, %i.mb
  %i.mf = shufflevector <1 x float> %i.ma, <1 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.mg = fmul <2 x float> %i.mf, %i.mc
  %i.mh = fadd <2 x float> %i.me, %i.mg
  %i.mi = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.mj = getelementptr inbounds nuw i8, ptr %9, i64 44
  %i.mk = load <2 x float>, ptr %i.mi, align 8
  %i.ml = load <2 x float>, ptr %i.mj, align 4
  %i.mm = fmul <2 x float> %i.md, %i.mk
  %i.mn = fmul <2 x float> %i.mf, %i.ml
  %i.mo = fadd <2 x float> %i.mm, %i.mn
  br label %b2ComputeWitnessPoints.exit130

bb.ad:                                            ; preds = %b2MakeSimplexCache.exit109
  %i.mp = load <1 x float>, ptr %i.da, align 8
  %i.mq = load <1 x float>, ptr %i.cy, align 4
  %i.mr = load <1 x float>, ptr %i.cz, align 8
  %i.ms = load <2 x float>, ptr %9, align 8
  %i.mt = load <2 x float>, ptr %i.am, align 4
  %i.mu = load <2 x float>, ptr %i.ao, align 8
  %i.mv = shufflevector <1 x float> %i.mp, <1 x float> poison, <2 x i32> zeroinitializer
  %i.mw = fmul <2 x float> %i.mv, %i.ms
  %i.mx = shufflevector <1 x float> %i.mq, <1 x float> poison, <2 x i32> zeroinitializer
  %i.my = fmul <2 x float> %i.mx, %i.mt
  %i.mz = fadd <2 x float> %i.mw, %i.my
  %i.na = shufflevector <1 x float> %i.mr, <1 x float> poison, <2 x i32> zeroinitializer
  %i.nb = fmul <2 x float> %i.na, %i.mu
  %i.nc = fadd <2 x float> %i.mz, %i.nb           ; 2 uses
  br label %b2ComputeWitnessPoints.exit130

b2ComputeWitnessPoints.exit130:                   ; preds = %b2MakeSimplexCache.exit109, %bb.ab, %bb.ac, %bb.ad
  %.sroa.0215.0 = phi <2 x float> [ %i.nc, %bb.ad ], [ %i.lw, %bb.ab ], [ %i.mh, %bb.ac ], [ zeroinitializer, %b2MakeSimplexCache.exit109 ]
  %.sroa.0212.0 = phi <2 x float> [ %i.nc, %bb.ad ], [ %i.ly, %bb.ab ], [ %i.mo, %bb.ac ], [ zeroinitializer, %b2MakeSimplexCache.exit109 ]
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float 0.000000e+00, ptr %i.nd, align 4, !tbaa !22
  %11 = shufflevector <2 x float> %.sroa.0215.0, <2 x float> %.sroa.0212.0, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %11, ptr %0, align 4, !tbaa !10
  br label %.thread

bb.ae:                                            ; preds = %b2SolveSimplex2.exit.thread
  %i.ne = sext i32 %i.kg to i64
  %i.nf = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.ne
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !45 ; 5 uses
  %i.nh = load i32, ptr %i.db, align 4, !tbaa !13 ; 3 uses
  %i.ni = icmp sgt i32 %i.nh, 1
  br i1 %i.ni, label %.lr.ph.preheader.i, label %b2FindSupport.exit

.lr.ph.preheader.i:                               ; preds = %bb.ae
  %i.nj = load <2 x float>, ptr %1, align 4
  %i.nk = fmul <2 x float> %.sroa.031.0226, %i.nj ; 2 uses
  %shift357 = shufflevector <2 x float> %i.nk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop358 = fadd <2 x float> %i.nk, %shift357
  %i.nl = extractelement <2 x float> %foldExtExtBinop358, i64 0 ; 2 uses
  %wide.trip.count.i135 = zext nneg i32 %i.nh to i64
  %i.nm = add nsw i64 %wide.trip.count.i135, -1   ; 3 uses
  %xtraiter387 = and i64 %i.nm, 1
  %i.nn = icmp eq i32 %i.nh, 2
  br i1 %i.nn, label %.lr.ph.i136.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter391 = and i64 %i.nm, -2
  br label %.lr.ph.i136

.lr.ph.i136:                                      ; preds = %.lr.ph.i136, %.lr.ph.preheader.i.new
  %indvars.iv.i137 = phi i64 [ 1, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i138.1, %.lr.ph.i136 ] ; 4 uses
  %.01322.i = phi float [ %i.nl, %.lr.ph.preheader.i.new ], [ %.1.i.1, %.lr.ph.i136 ] ; 2 uses
  %.01421.i = phi i32 [ 0, %.lr.ph.preheader.i.new ], [ %.115.i.1, %.lr.ph.i136 ]
  %niter392 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter392.next.1, %.lr.ph.i136 ]
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i137
  %i.np = load <2 x float>, ptr %i.no, align 4
  %i.nq = fmul <2 x float> %.sroa.031.0226, %i.np
  %i.nr = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.nq) ; 2 uses
  %i.ns = fcmp ogt float %i.nr, %.01322.i         ; 2 uses
  %i.nt = trunc nuw nsw i64 %indvars.iv.i137 to i32
  %.115.i = select i1 %i.ns, i32 %i.nt, i32 %.01421.i
  %.1.i = select i1 %i.ns, float %i.nr, float %.01322.i ; 2 uses
  %indvars.iv.next.i138 = add nuw nsw i64 %indvars.iv.i137, 1 ; 2 uses
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.i138
  %i.nv = load <2 x float>, ptr %i.nu, align 4
  %i.nw = fmul <2 x float> %.sroa.031.0226, %i.nv
  %i.nx = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.nw) ; 2 uses
  %i.ny = fcmp ogt float %i.nx, %.1.i             ; 2 uses
  %i.nz = trunc nuw nsw i64 %indvars.iv.next.i138 to i32
  %.115.i.1 = select i1 %i.ny, i32 %i.nz, i32 %.115.i ; 3 uses
  %.1.i.1 = select i1 %i.ny, float %i.nx, float %.1.i ; 2 uses
  %indvars.iv.next.i138.1 = add nuw nsw i64 %indvars.iv.i137, 2 ; 2 uses
  %niter392.next.1 = add nuw i64 %niter392, 2     ; 2 uses
  %niter392.ncmp.1 = icmp eq i64 %niter392.next.1, %unroll_iter391
  br i1 %niter392.ncmp.1, label %b2FindSupport.exit.loopexit.unr-lcssa, label %.lr.ph.i136, !llvm.loop !0

b2FindSupport.exit.loopexit.unr-lcssa:            ; preds = %.lr.ph.i136
  %lcmp.mod388.not = icmp eq i64 %xtraiter387, 0
  br i1 %lcmp.mod388.not, label %b2FindSupport.exit, label %.lr.ph.i136.epil.preheader

.lr.ph.i136.epil.preheader:                       ; preds = %b2FindSupport.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i137.epil.init = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i138.1, %b2FindSupport.exit.loopexit.unr-lcssa ] ; 2 uses
  %.01322.i.epil.init = phi float [ %i.nl, %.lr.ph.preheader.i ], [ %.1.i.1, %b2FindSupport.exit.loopexit.unr-lcssa ]
  %.01421.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i ], [ %.115.i.1, %b2FindSupport.exit.loopexit.unr-lcssa ]
  %lcmp.mod390 = trunc i64 %i.nm to i1
  call void @llvm.assume(i1 %lcmp.mod390)
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i137.epil.init
  %i.ob = load <2 x float>, ptr %i.oa, align 4
  %i.oc = fmul <2 x float> %.sroa.031.0226, %i.ob
  %i.od = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.oc)
  %i.oe = fcmp ogt float %i.od, %.01322.i.epil.init
  %i.of = trunc nuw nsw i64 %indvars.iv.i137.epil.init to i32
  %.115.i.epil = select i1 %i.oe, i32 %i.of, i32 %.01421.i.epil.init
  br label %b2FindSupport.exit

b2FindSupport.exit:                               ; preds = %.lr.ph.i136.epil.preheader, %b2FindSupport.exit.loopexit.unr-lcssa, %bb.ae
  %.014.lcssa.i = phi i32 [ 0, %bb.ae ], [ %.115.i.1, %b2FindSupport.exit.loopexit.unr-lcssa ], [ %.115.i.epil, %.lr.ph.i136.epil.preheader ] ; 3 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.ng, i64 28
  store i32 %.014.lcssa.i, ptr %i.og, align 4, !tbaa !46
  %i.oh = sext i32 %.014.lcssa.i to i64
  %i.oi = getelementptr inbounds [8 x i8], ptr %1, i64 %i.oh
  %i.oj = load i64, ptr %i.oi, align 4, !tbaa !10 ; 2 uses
  store i64 %i.oj, ptr %i.ng, align 4, !tbaa !10
  %i.ok = bitcast i64 %i.oj to <2 x float>
  br i1 %i.dd, label %.lr.ph.preheader.i147, label %b2FindSupport.exit161

.lr.ph.preheader.i147:                            ; preds = %b2FindSupport.exit
  %i.ol = fneg float %.sroa.01.4.vec.extract.i    ; 2 uses
  %i.om = fmul float %.sroa.01.4.vec.extract.i.i149, %i.ol
  %foldExtExtBinop360 = fmul <2 x float> %.sroa.031.0226, %i.de
  %i.on = extractelement <2 x float> %foldExtExtBinop360, i64 0
  %i.oo = fsub float %i.om, %i.on                 ; 2 uses
  %i.op = insertelement <2 x float> %.sroa.031.0226, float %i.ol, i64 1 ; 3 uses
  br i1 %i.dg, label %.lr.ph.i151.epil.preheader, label %.lr.ph.i151

.lr.ph.i151:                                      ; preds = %.lr.ph.preheader.i147, %.lr.ph.i151
  %indvars.iv.i152 = phi i64 [ %indvars.iv.next.i159.1, %.lr.ph.i151 ], [ 1, %.lr.ph.preheader.i147 ] ; 4 uses
  %.01322.i153 = phi float [ %.1.i158.1, %.lr.ph.i151 ], [ %i.oo, %.lr.ph.preheader.i147 ] ; 2 uses
  %.01421.i154 = phi i32 [ %.115.i157.1, %.lr.ph.i151 ], [ 0, %.lr.ph.preheader.i147 ]
  %niter398 = phi i64 [ %niter398.next.1, %.lr.ph.i151 ], [ 0, %.lr.ph.preheader.i147 ]
  %i.oq = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %indvars.iv.i152
  %i.or = load <2 x float>, ptr %i.oq, align 8
  %i.os = fmul <2 x float> %i.or, %i.op           ; 2 uses
  %shift362 = shufflevector <2 x float> %i.os, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop363 = fsub <2 x float> %shift362, %i.os
  %i.ot = extractelement <2 x float> %foldExtExtBinop363, i64 0 ; 2 uses
  %i.ou = fcmp ogt float %i.ot, %.01322.i153      ; 2 uses
  %i.ov = trunc nuw nsw i64 %indvars.iv.i152 to i32
  %.115.i157 = select i1 %i.ou, i32 %i.ov, i32 %.01421.i154
  %.1.i158 = select i1 %i.ou, float %i.ot, float %.01322.i153 ; 2 uses
  %indvars.iv.next.i159 = add nuw nsw i64 %indvars.iv.i152, 1 ; 2 uses
  %i.ow = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %indvars.iv.next.i159
  %i.ox = load <2 x float>, ptr %i.ow, align 8
  %i.oy = fmul <2 x float> %i.ox, %i.op           ; 2 uses
  %shift362.1 = shufflevector <2 x float> %i.oy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop363.1 = fsub <2 x float> %shift362.1, %i.oy
  %i.oz = extractelement <2 x float> %foldExtExtBinop363.1, i64 0 ; 2 uses
  %i.pa = fcmp ogt float %i.oz, %.1.i158          ; 2 uses
  %i.pb = trunc nuw nsw i64 %indvars.iv.next.i159 to i32
  %.115.i157.1 = select i1 %i.pa, i32 %i.pb, i32 %.115.i157 ; 3 uses
  %.1.i158.1 = select i1 %i.pa, float %i.oz, float %.1.i158 ; 2 uses
  %indvars.iv.next.i159.1 = add nuw nsw i64 %indvars.iv.i152, 2 ; 2 uses
  %niter398.next.1 = add nuw i64 %niter398, 2     ; 2 uses
  %niter398.ncmp.1 = icmp eq i64 %niter398.next.1, %unroll_iter397
  br i1 %niter398.ncmp.1, label %b2FindSupport.exit161.loopexit.unr-lcssa, label %.lr.ph.i151, !llvm.loop !0

b2FindSupport.exit161.loopexit.unr-lcssa:         ; preds = %.lr.ph.i151
  br i1 %lcmp.mod394.not, label %b2FindSupport.exit161, label %.lr.ph.i151.epil.preheader

.lr.ph.i151.epil.preheader:                       ; preds = %b2FindSupport.exit161.loopexit.unr-lcssa, %.lr.ph.preheader.i147
  %indvars.iv.i152.epil.init = phi i64 [ 1, %.lr.ph.preheader.i147 ], [ %indvars.iv.next.i159.1, %b2FindSupport.exit161.loopexit.unr-lcssa ] ; 2 uses
  %.01322.i153.epil.init = phi float [ %i.oo, %.lr.ph.preheader.i147 ], [ %.1.i158.1, %b2FindSupport.exit161.loopexit.unr-lcssa ]
  %.01421.i154.epil.init = phi i32 [ 0, %.lr.ph.preheader.i147 ], [ %.115.i157.1, %b2FindSupport.exit161.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod396)
  %i.pc = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %indvars.iv.i152.epil.init
  %i.pd = load <2 x float>, ptr %i.pc, align 8
  %i.pe = fmul <2 x float> %i.pd, %i.op           ; 2 uses
  %shift362.epil = shufflevector <2 x float> %i.pe, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop363.epil = fsub <2 x float> %shift362.epil, %i.pe
  %i.pf = extractelement <2 x float> %foldExtExtBinop363.epil, i64 0
  %i.pg = fcmp ogt float %i.pf, %.01322.i153.epil.init
  %i.ph = trunc nuw nsw i64 %indvars.iv.i152.epil.init to i32
  %.115.i157.epil = select i1 %i.pg, i32 %i.ph, i32 %.01421.i154.epil.init
  br label %b2FindSupport.exit161

b2FindSupport.exit161:                            ; preds = %.lr.ph.i151.epil.preheader, %b2FindSupport.exit161.loopexit.unr-lcssa, %b2FindSupport.exit
  %.014.lcssa.i146 = phi i32 [ 0, %b2FindSupport.exit ], [ %.115.i157.1, %b2FindSupport.exit161.loopexit.unr-lcssa ], [ %.115.i157.epil, %.lr.ph.i151.epil.preheader ] ; 3 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ng, i64 32
  store i32 %.014.lcssa.i146, ptr %i.pi, align 4, !tbaa !47
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ng, i64 8
  %i.pk = sext i32 %.014.lcssa.i146 to i64
  %i.pl = getelementptr inbounds [8 x i8], ptr %8, i64 %i.pk
  %i.pm = load i64, ptr %i.pl, align 8, !tbaa !10 ; 2 uses
  store i64 %i.pm, ptr %i.pj, align 4, !tbaa !10
  %i.pn = getelementptr inbounds nuw i8, ptr %i.ng, i64 16
  %.cast = bitcast i64 %i.pm to <2 x float>
  %i.po = fsub <2 x float> %i.ok, %.cast
  store <2 x float> %i.po, ptr %i.pn, align 4, !tbaa !10
  %i.pp = add nuw nsw i32 %.077259, 1             ; 3 uses
  br i1 %i.di, label %.lr.ph257.preheader, label %._crit_edge258

.lr.ph257.preheader:                              ; preds = %b2FindSupport.exit161
  %wide.trip.count280 = zext nneg i32 %i.dh to i64
  br label %.lr.ph257

.lr.ph257:                                        ; preds = %.lr.ph257.preheader, %bb.ag
  %indvars.iv277 = phi i64 [ 0, %.lr.ph257.preheader ], [ %indvars.iv.next278, %bb.ag ] ; 3 uses
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv277
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !20
  %i.ps = icmp eq i32 %.014.lcssa.i, %i.pr
  br i1 %i.ps, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.lr.ph257
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv277
  %i.pu = load i32, ptr %i.pt, align 4, !tbaa !20
  %i.pv = icmp eq i32 %.014.lcssa.i146, %i.pu
  br i1 %i.pv, label %.thread232, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph257, %bb.af
  %indvars.iv.next278 = add nuw nsw i64 %indvars.iv277, 1 ; 2 uses
  %exitcond281.not = icmp eq i64 %indvars.iv.next278, %wide.trip.count280
  br i1 %exitcond281.not, label %._crit_edge258, label %.lr.ph257, !llvm.loop !35

._crit_edge258:                                   ; preds = %bb.ag, %b2FindSupport.exit161
  %i.pw = add nsw i32 %i.kg, 1                    ; 3 uses
  store i32 %i.pw, ptr %i.ak, align 4, !tbaa !42
  %exitcond282.not = icmp eq i32 %i.pp, 20
  br i1 %exitcond282.not, label %.thread232, label %bb.g

.thread232:                                       ; preds = %._crit_edge258, %bb.af
  %i.px = phi i32 [ %i.kg, %bb.af ], [ %i.pw, %._crit_edge258 ] ; 6 uses
  %i.py = phi i32 [ %i.pp, %bb.af ], [ 20, %._crit_edge258 ]
  %i.pz = fcmp ogt float %i.ki, f0x057A0000
  br i1 %i.pz, label %bb.ah, label %b2Normalize.exit

bb.ah:                                            ; preds = %.thread232
  %i.qa = call float @sqrtf(float noundef %i.ki) #13
  %i.qb = fdiv float 1.000000e+00, %i.qa
  %i.qc = insertelement <2 x float> poison, float %i.qb, i64 0
  %i.qd = shufflevector <2 x float> %i.qc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qe = fmul <2 x float> %.sroa.031.0226, %i.qd
  br label %b2Normalize.exit

b2Normalize.exit:                                 ; preds = %.thread232, %bb.ah
  %.sroa.012.0.i = phi <2 x float> [ %i.qe, %bb.ah ], [ zeroinitializer, %.thread232 ] ; 3 uses
  switch i32 %i.px, label %b2ComputeWitnessPoints.exit188 [
    i32 1, label %bb.ai
    i32 2, label %bb.aj
    i32 3, label %bb.ak
  ]

bb.ai:                                            ; preds = %b2Normalize.exit
  %i.qf = load <2 x float>, ptr %9, align 8, !tbaa !10
  %i.qg = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.qh = load <2 x float>, ptr %i.qg, align 8, !tbaa !10
  br label %b2ComputeWitnessPoints.exit188

bb.aj:                                            ; preds = %b2Normalize.exit
  %i.qi = load <1 x float>, ptr %i.da, align 8
  %i.qj = load <1 x float>, ptr %i.cy, align 4
  %i.qk = load <2 x float>, ptr %9, align 8
  %i.ql = load <2 x float>, ptr %i.am, align 4
  %i.qm = shufflevector <1 x float> %i.qi, <1 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.qn = fmul <2 x float> %i.qm, %i.qk
  %i.qo = shufflevector <1 x float> %i.qj, <1 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.qp = fmul <2 x float> %i.qo, %i.ql
  %i.qq = fadd <2 x float> %i.qn, %i.qp
  %i.qr = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.qs = getelementptr inbounds nuw i8, ptr %9, i64 44
  %i.qt = load <2 x float>, ptr %i.qr, align 8
  %i.qu = load <2 x float>, ptr %i.qs, align 4
  %i.qv = fmul <2 x float> %i.qm, %i.qt
  %i.qw = fmul <2 x float> %i.qo, %i.qu
  %i.qx = fadd <2 x float> %i.qv, %i.qw
  br label %b2ComputeWitnessPoints.exit188

bb.ak:                                            ; preds = %b2Normalize.exit
  %i.qy = load <1 x float>, ptr %i.da, align 8
  %i.qz = load <1 x float>, ptr %i.cy, align 4
  %i.ra = load <1 x float>, ptr %i.cz, align 8
  %i.rb = load <2 x float>, ptr %9, align 8
  %i.rc = load <2 x float>, ptr %i.am, align 4
  %i.rd = load <2 x float>, ptr %i.ao, align 8
  %i.re = shufflevector <1 x float> %i.qy, <1 x float> poison, <2 x i32> zeroinitializer
  %i.rf = fmul <2 x float> %i.re, %i.rb
  %i.rg = shufflevector <1 x float> %i.qz, <1 x float> poison, <2 x i32> zeroinitializer
  %i.rh = fmul <2 x float> %i.rg, %i.rc
  %i.ri = fadd <2 x float> %i.rf, %i.rh
  %i.rj = shufflevector <1 x float> %i.ra, <1 x float> poison, <2 x i32> zeroinitializer
  %i.rk = fmul <2 x float> %i.rj, %i.rd
  %i.rl = fadd <2 x float> %i.ri, %i.rk           ; 2 uses
  br label %b2ComputeWitnessPoints.exit188

b2ComputeWitnessPoints.exit188:                   ; preds = %b2Normalize.exit, %bb.ai, %bb.aj, %bb.ak
  %i.rm = phi <2 x float> [ %i.rl, %bb.ak ], [ %i.qf, %bb.ai ], [ %i.qq, %bb.aj ], [ zeroinitializer, %b2Normalize.exit ] ; 3 uses
  %i.rn = phi <2 x float> [ %i.rl, %bb.ak ], [ %i.qh, %bb.ai ], [ %i.qx, %bb.aj ], [ zeroinitializer, %b2Normalize.exit ] ; 3 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> %.sroa.012.0.i, ptr %i.ro, align 4, !tbaa !10
  %i.rp = fsub <2 x float> %i.rn, %i.rm           ; 2 uses
  %i.rq = fmul <2 x float> %i.rp, %i.rp
  %i.rr = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.rq)
  %i.rs = call float @sqrtf(float noundef %i.rr) #13 ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store float %i.rs, ptr %i.rt, align 4, !tbaa !22
  %12 = shufflevector <2 x float> %i.rm, <2 x float> %i.rn, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %12, ptr %0, align 4, !tbaa !10
  %i.ru = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.py, ptr %i.ru, align 4, !tbaa !57
  %i.rv = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.074, ptr %i.rv, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i64 0, ptr %5, align 8
  %i.rw = trunc i32 %i.px to i16
  store i16 %i.rw, ptr %5, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr %9, ptr %i.a, align 16, !tbaa !45
  %i.rx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.am, ptr %i.rx, align 8, !tbaa !45
  %i.ry = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.ao, ptr %i.ry, align 16, !tbaa !45
  %i.rz = icmp sgt i32 %i.px, 0
  br i1 %i.rz, label %.lr.ph.i191, label %b2MakeSimplexCache.exit196

.lr.ph.i191:                                      ; preds = %b2ComputeWitnessPoints.exit188
  %i.sa = getelementptr inbounds nuw i8, ptr %5, i64 2 ; 3 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %5, i64 5 ; 3 uses
  %wide.trip.count.i192 = zext nneg i32 %i.px to i64 ; 2 uses
  %xtraiter400 = and i64 %wide.trip.count.i192, 1
  %i.sc = icmp eq i32 %i.px, 1
  br i1 %i.sc, label %.epil.preheader399, label %.lr.ph.i191.new

.lr.ph.i191.new:                                  ; preds = %.lr.ph.i191
  %unroll_iter403 = and i64 %wide.trip.count.i192, 2147483646
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.lr.ph.i191.new
  %indvars.iv.i193 = phi i64 [ 0, %.lr.ph.i191.new ], [ %indvars.iv.next.i194.1, %bb.al ] ; 5 uses
  %niter404 = phi i64 [ 0, %.lr.ph.i191.new ], [ %niter404.next.1, %bb.al ]
  %i.sd = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i193
  %i.se = load ptr, ptr %i.sd, align 16, !tbaa !45 ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 28
  %i.sg = load i32, ptr %i.sf, align 4, !tbaa !46
  %i.sh = trunc i32 %i.sg to i8
  %i.si = getelementptr inbounds nuw i8, ptr %i.sa, i64 %indvars.iv.i193
  store i8 %i.sh, ptr %i.si, align 2, !tbaa !18
  %i.sj = getelementptr inbounds nuw i8, ptr %i.se, i64 32
  %i.sk = load i32, ptr %i.sj, align 4, !tbaa !47
  %i.sl = trunc i32 %i.sk to i8
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sb, i64 %indvars.iv.i193
  store i8 %i.sl, ptr %i.sm, align 1, !tbaa !18
  %indvars.iv.next.i194 = or disjoint i64 %indvars.iv.i193, 1 ; 3 uses
  %i.sn = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i194
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !45 ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 28
  %i.sq = load i32, ptr %i.sp, align 4, !tbaa !46
  %i.sr = trunc i32 %i.sq to i8
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sa, i64 %indvars.iv.next.i194
  store i8 %i.sr, ptr %i.ss, align 1, !tbaa !18
  %i.st = getelementptr inbounds nuw i8, ptr %i.so, i64 32
  %i.su = load i32, ptr %i.st, align 4, !tbaa !47
  %i.sv = trunc i32 %i.su to i8
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sb, i64 %indvars.iv.next.i194
  store i8 %i.sv, ptr %i.sw, align 2, !tbaa !18
  %indvars.iv.next.i194.1 = add nuw nsw i64 %indvars.iv.i193, 2 ; 2 uses
  %niter404.next.1 = add i64 %niter404, 2         ; 2 uses
  %niter404.ncmp.1 = icmp eq i64 %niter404.next.1, %unroll_iter403
  br i1 %niter404.ncmp.1, label %b2MakeSimplexCache.exit196.loopexit.unr-lcssa, label %bb.al, !llvm.loop !34

b2MakeSimplexCache.exit196.loopexit.unr-lcssa:    ; preds = %bb.al
  %lcmp.mod401.not = icmp eq i64 %xtraiter400, 0
  br i1 %lcmp.mod401.not, label %b2MakeSimplexCache.exit196, label %.epil.preheader399

.epil.preheader399:                               ; preds = %b2MakeSimplexCache.exit196.loopexit.unr-lcssa, %.lr.ph.i191
  %indvars.iv.i193.epil.init = phi i64 [ 0, %.lr.ph.i191 ], [ %indvars.iv.next.i194.1, %b2MakeSimplexCache.exit196.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod402 = trunc i32 %i.px to i1
  call void @llvm.assume(i1 %lcmp.mod402)
  %i.sx = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i193.epil.init
  %i.sy = load ptr, ptr %i.sx, align 8, !tbaa !45 ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 28
  %i.ta = load i32, ptr %i.sz, align 4, !tbaa !46
  %i.tb = trunc i32 %i.ta to i8
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sa, i64 %indvars.iv.i193.epil.init
  store i8 %i.tb, ptr %i.tc, align 1, !tbaa !18
  %i.td = getelementptr inbounds nuw i8, ptr %i.sy, i64 32
  %i.te = load i32, ptr %i.td, align 4, !tbaa !47
  %i.tf = trunc i32 %i.te to i8
  %i.tg = getelementptr inbounds nuw i8, ptr %i.sb, i64 %indvars.iv.i193.epil.init
  store i8 %i.tf, ptr %i.tg, align 1, !tbaa !18
  br label %b2MakeSimplexCache.exit196

b2MakeSimplexCache.exit196:                       ; preds = %.epil.preheader399, %b2MakeSimplexCache.exit196.loopexit.unr-lcssa, %b2ComputeWitnessPoints.exit188
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.th = load i64, ptr %5, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  store i64 %i.th, ptr %2, align 2
  %i.ti = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.tj = load i8, ptr %i.ti, align 4, !tbaa !59, !range !23, !noundef !24
  %i.tk = trunc nuw i8 %i.tj to i1
  br i1 %i.tk, label %bb.am, label %.thread

bb.am:                                            ; preds = %b2MakeSimplexCache.exit196
  %i.tl = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.tm = load float, ptr %i.tl, align 4, !tbaa !60 ; 2 uses
  %i.tn = load float, ptr %i.k, align 4, !tbaa !38 ; 2 uses
  %i.to = fsub float %i.rs, %i.tm
  %i.tp = fsub float %i.to, %i.tn                 ; 2 uses
  %i.tq = fcmp olt float %i.tp, 0.000000e+00
  %i.tr = select i1 %i.tq, float 0.000000e+00, float %i.tp
  store float %i.tr, ptr %i.rt, align 4, !tbaa !22
  %i.ts = insertelement <2 x float> poison, float %i.tm, i64 0
  %i.tt = shufflevector <2 x float> %i.ts, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tu = fmul <2 x float> %.sroa.012.0.i, %i.tt
  %i.tv = fadd <2 x float> %i.tu, %i.rm
  %i.tw = insertelement <2 x float> poison, float %i.tn, i64 0
  %i.tx = shufflevector <2 x float> %i.tw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ty = fmul <2 x float> %.sroa.012.0.i, %i.tx
  %i.tz = fsub <2 x float> %i.rn, %i.ty
  %13 = shufflevector <2 x float> %i.tv, <2 x float> %i.tz, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %13, ptr %0, align 4, !tbaa !10
  br label %.thread

.thread:                                          ; preds = %b2ComputeWitnessPoints.exit130, %.lr.ph.i95, %b2MakeSimplexCache.exit196, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  ret void
}

; Function Attrs: nounwind uwtable
define void @b2ShapeCast(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b2CastOutput) align 4 captures(none) initializes((0, 28)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #7 {
.peel.begin:
  %2 = alloca %struct.b2SimplexCache, align 8     ; 5 uses
  %3 = alloca %struct.b2DistanceInput, align 4    ; 8 uses
  %4 = alloca %struct.b2DistanceOutput, align 8   ; 12 uses
  %i.a = tail call float @b2GetLengthUnitsPerMeter() #13
  %i.b = fmul float %i.a, 5.000000e-03            ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 3 uses
  %i.d = load float, ptr %i.c, align 4, !tbaa !63
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 140 ; 2 uses
  %i.g = load float, ptr %i.f, align 4, !tbaa !64
  %i.h = fadd float %i.d, %i.g
  %i.i = fsub float %i.h, %i.b                    ; 2 uses
  %i.j = fcmp ogt float %i.b, %i.i
  %i.k = select i1 %i.j, float %i.b, float %i.i   ; 2 uses
  %i.l = fmul float %i.b, 2.500000e-01            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  store i64 0, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %3, ptr noundef nonnull align 4 dereferenceable(72) %1, i64 72, i1 false), !tbaa.struct !25
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 160
  store i32 0, ptr %i.n, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %i.m, ptr noundef nonnull align 4 dereferenceable(72) %i.e, i64 72, i1 false), !tbaa.struct !25
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.o, ptr noundef nonnull align 4 dereferenceable(16) %i.p, i64 16, i1 false), !tbaa.struct !65
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.sroa.09.0.copyload = load <2 x float>, ptr %i.q, align 4, !tbaa !10 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %0, i8 0, i64 28, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @b2ShapeDistance(ptr dead_on_unwind nonnull writable sret(%struct.b2DistanceOutput) align 4 %4, ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef null, i32 noundef 0)
  %i.v = load float, ptr %i.s, align 8, !tbaa !22 ; 4 uses
  %i.w = fadd float %i.l, %i.k
  %i.x = fcmp olt float %i.v, %i.w
  br i1 %i.x, label %bb.a, label %bb.c

bb.a:                                             ; preds = %.peel.begin
  %i.y = fmul float %i.b, 2.000000e+00
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 172
  %i.aa = load i8, ptr %i.z, align 4, !tbaa !66, !range !23, !noundef !24
  %i.ab = trunc nuw i8 %i.aa to i1
  %i.ac = fcmp ogt float %i.v, %i.y
  %or.cond.peel = and i1 %i.ac, %i.ab
  br i1 %or.cond.peel, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.ad = fsub float %i.v, %i.b
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.peel.begin
  %.137.peel = phi float [ %i.ad, %bb.b ], [ %i.k, %.peel.begin ] ; 3 uses
  %i.ae = load <2 x float>, ptr %i.t, align 8
  %i.af = fmul <2 x float> %.sroa.09.0.copyload, %i.ae
  %i.ag = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.af) ; 2 uses
  %i.ah = fcmp ult float %i.ag, 0.000000e+00
  br i1 %i.ah, label %bb.d, label %.critedge.loopexit

bb.d:                                             ; preds = %bb.c
  %i.ai = fsub float %.137.peel, %i.v
  %i.aj = fdiv float %i.ai, %i.ag                 ; 2 uses
  %i.ak = load float, ptr %i.u, align 4, !tbaa !67
  %i.al = fcmp ult float %i.aj, %i.ak
  br i1 %i.al, label %.peel.next, label %.critedge.loopexit

.peel.next:                                       ; preds = %bb.d
  %i.am = fadd float %i.aj, 0.000000e+00          ; 2 uses
  %i.an = load <2 x float>, ptr %i.p, align 4
  %i.ao = insertelement <2 x float> poison, float %i.am, i64 0
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aq = fmul <2 x float> %.sroa.09.0.copyload, %i.ap
  %i.ar = fadd <2 x float> %i.aq, %i.an
  store <2 x float> %i.ar, ptr %i.o, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.as = fadd float %i.l, %.137.peel
  br label %bb.e

bb.e:                                             ; preds = %.peel.next, %bb.i
  %.03876 = phi float [ %i.am, %.peel.next ], [ %i.cf, %bb.i ] ; 2 uses
  %.04175 = phi i32 [ 1, %.peel.next ], [ %i.at, %bb.i ]
  %i.at = add nuw nsw i32 %.04175, 1              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @b2ShapeDistance(ptr dead_on_unwind nonnull writable sret(%struct.b2DistanceOutput) align 4 %4, ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef null, i32 noundef 0)
  %i.au = load float, ptr %i.s, align 8, !tbaa !22 ; 2 uses
  %i.av = fcmp olt float %i.au, %i.as
  br i1 %i.av, label %.loopexit85, label %bb.g

bb.f:                                             ; preds = %bb.a
  store i32 1, ptr %i.r, align 4, !tbaa !69
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.aw, align 4, !tbaa !70
  %i.ax = load float, ptr %i.c, align 4, !tbaa !63
  %i.ay = load <2 x float>, ptr %4, align 8
  %i.az = load <2 x float>, ptr %i.t, align 8     ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bb = load float, ptr %i.f, align 4, !tbaa !64
  %i.bc = load <2 x float>, ptr %i.ba, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.be = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bg = fmul <2 x float> %i.bf, %i.az
  %i.bh = fadd <2 x float> %i.ay, %i.bg
  %i.bi = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.bj = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bk = fmul <2 x float> %i.bj, %i.az
  %i.bl = fsub <2 x float> %i.bc, %i.bk
  %i.bm = fmul <2 x float> %i.bh, splat (float 5.000000e-01)
  %i.bn = fmul <2 x float> %i.bl, splat (float 5.000000e-01)
  %i.bo = fadd <2 x float> %i.bm, %i.bn
  store <2 x float> %i.bo, ptr %i.bd, align 4, !tbaa !10
  br label %.critedge

.loopexit85:                                      ; preds = %bb.e
  store i32 %i.at, ptr %i.r, align 4, !tbaa !69
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %.03876, ptr %i.bp, align 4, !tbaa !71
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.br = load float, ptr %i.c, align 4, !tbaa !63
  %i.bs = load <2 x float>, ptr %4, align 8
  %i.bt = load <2 x float>, ptr %i.t, align 8     ; 2 uses
  %i.bu = insertelement <2 x float> poison, float %i.br, i64 0
  %i.bv = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bw = fmul <2 x float> %i.bv, %i.bt
  %i.bx = fadd <2 x float> %i.bs, %i.bw
  store <2 x float> %i.bx, ptr %i.bq, align 4, !tbaa !10
  store <2 x float> %i.bt, ptr %0, align 4, !tbaa !10
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.by, align 4, !tbaa !70
  br label %.critedge

bb.g:                                             ; preds = %bb.e
  %i.bz = load <2 x float>, ptr %i.t, align 8
  %i.ca = fmul <2 x float> %.sroa.09.0.copyload, %i.bz
  %i.cb = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ca) ; 2 uses
  %i.cc = fcmp ult float %i.cb, 0.000000e+00
  br i1 %i.cc, label %bb.h, label %.critedge.loopexit

bb.h:                                             ; preds = %bb.g
  %i.cd = fsub float %.137.peel, %i.au
  %i.ce = fdiv float %i.cd, %i.cb
  %i.cf = fadd float %.03876, %i.ce               ; 3 uses
  %i.cg = load float, ptr %i.u, align 4, !tbaa !67
  %i.ch = fcmp ult float %i.cf, %i.cg
  br i1 %i.ch, label %bb.i, label %.critedge.loopexit

bb.i:                                             ; preds = %bb.h
  %i.ci = load <2 x float>, ptr %i.p, align 4
  %i.cj = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.ck = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cl = fmul <2 x float> %.sroa.09.0.copyload, %i.ck
  %i.cm = fadd <2 x float> %i.cl, %i.ci
  store <2 x float> %i.cm, ptr %i.o, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %exitcond.not = icmp eq i32 %i.at, 20
  br i1 %exitcond.not, label %.loopexit, label %bb.e, !llvm.loop !61

.critedge.loopexit:                               ; preds = %bb.g, %bb.h, %bb.d, %bb.c
  %.lcssa79 = phi i32 [ 1, %bb.c ], [ 1, %bb.d ], [ %i.at, %bb.h ], [ %i.at, %bb.g ]
  store i32 %.lcssa79, ptr %i.r, align 4, !tbaa !69
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.f, %.loopexit85
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %bb.j

.loopexit:                                        ; preds = %bb.i
  store i32 20, ptr %i.r, align 4, !tbaa !69
  br label %bb.j

bb.j:                                             ; preds = %.loopexit, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret void
}

declare float @b2GetLengthUnitsPerMeter() local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define void @b2TimeOfImpact(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b2TOIOutput) align 4 captures(none) initializes((0, 24)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %2 = alloca %struct.b2SimplexCache, align 8     ; 5 uses
  %3 = alloca %struct.b2DistanceInput, align 4    ; 7 uses
  %4 = alloca %struct.b2DistanceOutput, align 8   ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  %i.b = load float, ptr %i.a, align 4, !tbaa !77 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  store float %i.b, ptr %i.c, align 4, !tbaa !79
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.sroa.0342.0.copyload = load <2 x float>, ptr %i.d, align 4, !tbaa !10 ; 10 uses
  %.sroa.6345.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 152
  %.sroa.6345.0.copyload = load <2 x float>, ptr %.sroa.6345.0..sroa_idx, align 4, !tbaa !10 ; 3 uses
  %.sroa.9348.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.sroa.9348.0.copyload = load <2 x float>, ptr %.sroa.9348.0..sroa_idx, align 4, !tbaa !10 ; 3 uses
  %.sroa.12351.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 168
  %.sroa.15353.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 172
  %.sroa.18355.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 184
  %.sroa.0330.0.copyload = load <2 x float>, ptr %i.e, align 4, !tbaa !10 ; 10 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 192
  %.sroa.6.0.copyload = load <2 x float>, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !10 ; 3 uses
  %.sroa.9335.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.sroa.9335.0.copyload = load <2 x float>, ptr %.sroa.9335.0..sroa_idx, align 4, !tbaa !10 ; 3 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 212
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.f = load <4 x float>, ptr %.sroa.12351.0..sroa_idx, align 4, !tbaa !10 ; 3 uses
  %i.g = load <4 x float>, ptr %.sroa.12.0..sroa_idx, align 4, !tbaa !10 ; 3 uses
  %i.h = load <2 x float>, ptr %.sroa.15353.0..sroa_idx, align 4, !tbaa !10
  %i.i = load <2 x float>, ptr %.sroa.15.0..sroa_idx, align 4, !tbaa !10 ; 2 uses
  %i.j = load <2 x float>, ptr %.sroa.18355.0..sroa_idx, align 4, !tbaa !10
  %i.k = load <2 x float>, ptr %.sroa.18.0..sroa_idx, align 4, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 18 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 4 uses
  %i.n = load float, ptr %i.m, align 4, !tbaa !14
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 140 ; 4 uses
  %i.p = load float, ptr %i.o, align 4, !tbaa !14
  %i.q = fadd float %i.n, %i.p
  %i.r = tail call float @b2GetLengthUnitsPerMeter() #13
  %i.s = fmul float %i.r, 5.000000e-03            ; 2 uses
  %i.t = tail call float @b2GetLengthUnitsPerMeter() #13
  %i.u = fmul float %i.t, 5.000000e-03
  %i.v = fsub float %i.q, %i.u                    ; 2 uses
  %i.w = fcmp ogt float %i.s, %i.v
  %i.x = select i1 %i.w, float %i.s, float %i.v   ; 5 uses
  %i.y = tail call float @b2GetLengthUnitsPerMeter() #13
  %i.z = fmul float %i.y, 5.000000e-03
  %i.aa = fmul float %i.z, 2.500000e-01           ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  store i64 0, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %3, ptr noundef nonnull align 4 dereferenceable(72) %1, i64 72, i1 false), !tbaa.struct !25
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 160
  store i32 0, ptr %i.ac, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %i.ab, ptr noundef nonnull align 4 dereferenceable(72) %i.l, i64 72, i1 false), !tbaa.struct !25
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ag = fadd float %i.aa, %i.x                  ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.aj = fsub float %i.x, %i.aa                  ; 2 uses
  %i.ak = shufflevector <4 x float> %i.f, <4 x float> %i.g, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.al = shufflevector <2 x float> %i.h, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.am = shufflevector <2 x float> %i.i, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.an = shufflevector <4 x float> %i.ak, <4 x float> %i.al, <4 x i32> <i32 0, i32 4, i32 2, i32 poison>
  %i.ao = shufflevector <4 x float> %i.an, <4 x float> %i.am, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ap = shufflevector <2 x float> %i.j, <2 x float> %i.k, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.aq = shufflevector <4 x float> %i.ap, <4 x float> %i.al, <4 x i32> <i32 5, i32 1, i32 poison, i32 3>
  %i.ar = shufflevector <4 x float> %i.aq, <4 x float> %i.am, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.as = shufflevector <2 x float> %.sroa.0330.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.at = extractelement <2 x float> %i.i, i64 0
  %i.au = shufflevector <4 x float> %i.f, <4 x float> %i.al, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.av = shufflevector <4 x float> %i.au, <4 x float> %i.g, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.aw = insertelement <4 x float> %i.av, float %i.at, i64 3
  %i.ax = shufflevector <4 x float> %i.f, <4 x float> %i.g, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  br label %bb.b

bb.b:                                             ; preds = %bb.al, %bb.a
  %.0132 = phi i32 [ 0, %bb.a ], [ %i.dn, %bb.al ]
  %.0128 = phi float [ 0.000000e+00, %bb.a ], [ %.2130.ph, %bb.al ] ; 7 uses
  %i.ay = fsub float 1.000000e+00, %.0128
  %i.az = insertelement <2 x float> poison, float %.0128, i64 0 ; 2 uses
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bb = fmul <2 x float> %.sroa.9348.0.copyload, %i.ba
  %i.bc = shufflevector <2 x float> %i.az, <2 x float> poison, <4 x i32> zeroinitializer
  %i.bd = fmul <4 x float> %i.ar, %i.bc
  %i.be = fmul <2 x float> %.sroa.9335.0.copyload, %i.ba
  %i.bf = insertelement <2 x float> poison, float %i.ay, i64 0 ; 2 uses
  %i.bg = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bh = fmul <2 x float> %.sroa.6345.0.copyload, %i.bg
  %i.bi = fadd <2 x float> %i.bb, %i.bh           ; 3 uses
  %i.bj = shufflevector <2 x float> %i.bf, <2 x float> poison, <4 x i32> zeroinitializer
  %i.bk = fmul <4 x float> %i.ao, %i.bj
  %i.bl = fadd <4 x float> %i.bd, %i.bk           ; 5 uses
  %i.bm = shufflevector <4 x float> %i.bl, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.bn = fmul <2 x float> %i.bm, %i.bm
  %i.bo = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.bn) ; 3 uses
  %i.bp = tail call float @sqrtf(float noundef %i.bo) #13
  %i.bq = fmul <2 x float> %.sroa.6.0.copyload, %i.bg
  %i.br = fadd <2 x float> %i.be, %i.bq           ; 3 uses
  %i.bs = shufflevector <4 x float> %i.bl, <4 x float> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.bt = fmul <2 x float> %i.bs, %i.bs
  %i.bu = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.bt) ; 3 uses
  %i.bv = tail call float @sqrtf(float noundef %i.bu) #13
  %i.bw = insertelement <2 x float> poison, float %i.bp, i64 0
  %i.bx = insertelement <2 x float> %i.bw, float %i.bv, i64 1 ; 2 uses
  %i.by = fcmp ogt <2 x float> %i.bx, zeroinitializer
  %i.bz = fdiv <2 x float> splat (float 1.000000e+00), %i.bx
  %i.ca = select <2 x i1> %i.by, <2 x float> %i.bz, <2 x float> zeroinitializer
  %i.cb = shufflevector <2 x float> %i.ca, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.cc = fmul <4 x float> %i.bl, %i.cb           ; 7 uses
  %i.cd = shufflevector <4 x float> %i.cc, <4 x float> poison, <2 x i32> <i32 1, i32 1> ; 8 uses
  %i.ce = shufflevector <4 x float> %i.cc, <4 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.cf = fmul <2 x float> %.sroa.0342.0.copyload, %i.ce
  %i.cg = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ch = shufflevector <4 x float> %i.cc, <4 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.ci = fmul <2 x float> %.sroa.0342.0.copyload, %i.ch ; 2 uses
  %i.cj = fsub <2 x float> %i.ci, %i.cg
  %i.ck = fadd <2 x float> %i.ci, %i.cg
  %i.cl = shufflevector <2 x float> %i.cj, <2 x float> %i.ck, <2 x i32> <i32 0, i32 3>
  %i.cm = fsub <2 x float> %i.bi, %i.cl           ; 7 uses
  %i.cn = shufflevector <4 x float> %i.cc, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.co = fmul <2 x float> %i.as, %i.cn           ; 2 uses
  %i.cp = shufflevector <4 x float> %i.cc, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.cq = fmul <2 x float> %.sroa.0330.0.copyload, %i.cp ; 2 uses
  %i.cr = fsub <2 x float> %i.cq, %i.co
  %i.cs = fadd <2 x float> %i.cq, %i.co
  %i.ct = shufflevector <2 x float> %i.cr, <2 x float> %i.cs, <2 x i32> <i32 0, i32 3>
  %i.cu = fsub <2 x float> %i.br, %i.ct
  %i.cv = shufflevector <4 x float> %i.cc, <4 x float> poison, <2 x i32> zeroinitializer ; 8 uses
  %i.cw = shufflevector <4 x float> %i.cc, <4 x float> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.cx = fmul <2 x float> %i.cv, %i.cw           ; 2 uses
  %i.cy = fmul <2 x float> %i.cd, %i.cw
  %i.cz = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.da = fadd <2 x float> %i.cx, %i.cz
  %i.db = fsub <2 x float> %i.cx, %i.cz
  %i.dc = shufflevector <2 x float> %i.da, <2 x float> %i.db, <2 x i32> <i32 0, i32 3>
  %i.dd = fsub <2 x float> %i.cu, %i.cm           ; 2 uses
  %i.de = fmul <2 x float> %i.cv, %i.dd           ; 2 uses
  %i.df = fmul <2 x float> %i.cd, %i.dd
  %i.dg = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dh = fadd <2 x float> %i.de, %i.dg
  %i.di = fsub <2 x float> %i.de, %i.dg
  %i.dj = shufflevector <2 x float> %i.dh, <2 x float> %i.di, <2 x i32> <i32 0, i32 3>
  %5 = shufflevector <2 x float> %i.dj, <2 x float> %i.dc, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %5, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @b2ShapeDistance(ptr dead_on_unwind nonnull writable sret(%struct.b2DistanceOutput) align 4 %4, ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef null, i32 noundef 0)
  %i.dk = load <2 x float>, ptr %i.ad, align 8    ; 6 uses
  %i.dl = load <2 x float>, ptr %4, align 8       ; 6 uses
  %i.dm = load <2 x float>, ptr %i.ae, align 8    ; 6 uses
  %i.dn = add nuw nsw i32 %.0132, 1               ; 2 uses
  %i.do = load float, ptr %i.af, align 8, !tbaa !22 ; 2 uses
  %i.dp = fcmp ugt float %i.do, 0.000000e+00
  br i1 %i.dp, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 2, ptr %0, align 4, !tbaa !80
  br label %.thread379

bb.d:                                             ; preds = %bb.b
  %i.dq = fcmp ugt float %i.do, %i.ag
  br i1 %i.dq, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 3, ptr %0, align 4, !tbaa !80
  %i.dr = load float, ptr %i.m, align 4, !tbaa !14
  %i.ds = load float, ptr %i.o, align 4, !tbaa !14
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.du = fmul <2 x float> %i.ce, %i.dk
  %i.dv = shufflevector <2 x float> %i.du, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dw = fmul <2 x float> %i.ch, %i.dk           ; 2 uses
  %i.dx = fsub <2 x float> %i.dw, %i.dv
  %i.dy = fadd <2 x float> %i.dw, %i.dv
  %i.dz = shufflevector <2 x float> %i.dx, <2 x float> %i.dy, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.ea = fmul <2 x float> %i.ce, %i.dl
  %i.eb = shufflevector <2 x float> %i.ea, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ec = fmul <2 x float> %i.ch, %i.dl           ; 2 uses
  %i.ed = fsub <2 x float> %i.ec, %i.eb
  %i.ee = fadd <2 x float> %i.ec, %i.eb
  %i.ef = shufflevector <2 x float> %i.ed, <2 x float> %i.ee, <2 x i32> <i32 0, i32 3>
  %i.eg = fadd <2 x float> %i.cm, %i.ef
  %i.eh = fmul <2 x float> %i.ce, %i.dm
  %i.ei = shufflevector <2 x float> %i.eh, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ej = fmul <2 x float> %i.ch, %i.dm           ; 2 uses
  %i.ek = fsub <2 x float> %i.ej, %i.ei
  %i.el = fadd <2 x float> %i.ej, %i.ei
  %i.em = shufflevector <2 x float> %i.ek, <2 x float> %i.el, <2 x i32> <i32 0, i32 3>
  %i.en = fadd <2 x float> %i.cm, %i.em
  %i.eo = insertelement <2 x float> poison, float %i.dr, i64 0
  %i.ep = shufflevector <2 x float> %i.eo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eq = fmul <2 x float> %i.dz, %i.ep
  %i.er = fadd <2 x float> %i.eg, %i.eq
  %i.es = insertelement <2 x float> poison, float %i.ds, i64 0
  %i.et = shufflevector <2 x float> %i.es, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eu = fmul <2 x float> %i.dz, %i.et
  %i.ev = fsub <2 x float> %i.en, %i.eu
  %i.ew = fmul <2 x float> %i.er, splat (float 5.000000e-01)
  %i.ex = fmul <2 x float> %i.ev, splat (float 5.000000e-01)
  %i.ey = fadd <2 x float> %i.ew, %i.ex
  %6 = shufflevector <2 x float> %i.ey, <2 x float> %i.dz, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %6, ptr %i.dt, align 4, !tbaa !10
  br label %.thread379

bb.f:                                             ; preds = %bb.d
  %i.ez = load i64, ptr %2, align 8               ; 5 uses
  %.sroa.266.0.extract.shift.i = lshr i64 %i.ez, 16 ; 4 uses
  %.sroa.670.0.extract.shift.i = lshr i64 %i.ez, 24 ; 2 uses
  %.sroa.872.0.extract.shift.i = lshr i64 %i.ez, 40 ; 3 uses
  %.sroa.11.0.extract.shift.i = lshr i64 %i.ez, 48
  %i.fa = tail call float @sqrtf(float noundef %i.bo) #13, !noalias !81
  %i.fb = tail call float @sqrtf(float noundef %i.bu) #13, !noalias !81
  %i.fc = insertelement <2 x float> poison, float %i.fb, i64 0
  %i.fd = insertelement <2 x float> %i.fc, float %i.fa, i64 1 ; 2 uses
  %i.fe = fcmp ogt <2 x float> %i.fd, zeroinitializer
  %i.ff = fdiv <2 x float> splat (float 1.000000e+00), %i.fd
  %i.fg = select <2 x i1> %i.fe, <2 x float> %i.ff, <2 x float> zeroinitializer
  %i.fh = shufflevector <2 x float> %i.fg, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 0>
  %i.fi = fmul <4 x float> %i.bl, %i.fh           ; 11 uses
  %i.fj = shufflevector <4 x float> %i.fi, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.fk = shufflevector <4 x float> %i.fi, <4 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.fl = fmul <2 x float> %.sroa.0342.0.copyload, %i.fk
  %i.fm = shufflevector <2 x float> %i.fl, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fn = shufflevector <4 x float> %i.fi, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fo = fmul <2 x float> %.sroa.0342.0.copyload, %i.fn ; 2 uses
  %i.fp = fsub <2 x float> %i.fo, %i.fm
  %i.fq = fadd <2 x float> %i.fo, %i.fm
  %i.fr = shufflevector <2 x float> %i.fp, <2 x float> %i.fq, <2 x i32> <i32 0, i32 3>
  %i.fs = fsub <2 x float> %i.bi, %i.fr           ; 3 uses
  %i.ft = shufflevector <4 x float> %i.fi, <4 x float> poison, <2 x i32> <i32 3, i32 3> ; 2 uses
  %i.fu = fmul <2 x float> %.sroa.0330.0.copyload, %i.ft
  %i.fv = shufflevector <2 x float> %i.fu, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fw = shufflevector <4 x float> %i.fi, <4 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.fx = fmul <2 x float> %.sroa.0330.0.copyload, %i.fw ; 2 uses
  %i.fy = fsub <2 x float> %i.fx, %i.fv
  %i.fz = fadd <2 x float> %i.fx, %i.fv
  %i.ga = shufflevector <2 x float> %i.fy, <2 x float> %i.fz, <2 x i32> <i32 0, i32 3>
  %i.gb = fsub <2 x float> %i.br, %i.ga           ; 3 uses
  %i.gc = and i64 %i.ez, 65535
  %i.gd = icmp eq i64 %i.gc, 1
  br i1 %i.gd, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ge = and i64 %.sroa.266.0.extract.shift.i, 255
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ge
  %.sroa.035.0.copyload.i = load <2 x float>, ptr %i.gf, align 4, !tbaa !10, !noalias !81 ; 2 uses
  %i.gg = and i64 %.sroa.872.0.extract.shift.i, 255
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.gg
  %.sroa.034.0.copyload.i = load <2 x float>, ptr %i.gh, align 4, !tbaa !10, !noalias !81 ; 2 uses
  %i.gi = fmul <2 x float> %i.fk, %.sroa.035.0.copyload.i
  %i.gj = shufflevector <2 x float> %i.gi, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.gk = fmul <2 x float> %i.fn, %.sroa.035.0.copyload.i ; 2 uses
  %i.gl = fsub <2 x float> %i.gk, %i.gj
  %i.gm = fadd <2 x float> %i.gk, %i.gj
  %i.gn = shufflevector <2 x float> %i.gl, <2 x float> %i.gm, <2 x i32> <i32 0, i32 3>
  %i.go = fadd <2 x float> %i.fs, %i.gn
  %i.gp = fmul <2 x float> %i.ft, %.sroa.034.0.copyload.i
  %i.gq = shufflevector <2 x float> %i.gp, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.gr = fmul <2 x float> %i.fw, %.sroa.034.0.copyload.i ; 2 uses
  %i.gs = fsub <2 x float> %i.gr, %i.gq
  %i.gt = fadd <2 x float> %i.gr, %i.gq
  %i.gu = shufflevector <2 x float> %i.gs, <2 x float> %i.gt, <2 x i32> <i32 0, i32 3>
  %i.gv = fadd <2 x float> %i.gb, %i.gu
  %i.gw = fsub <2 x float> %i.gv, %i.go           ; 3 uses
  %i.gx = fmul <2 x float> %i.gw, %i.gw
  %i.gy = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.gx) ; 2 uses
  %i.gz = fcmp ogt float %i.gy, f0x057A0000
  br i1 %i.gz, label %bb.h, label %b2MakeSeparationFunction.exit

bb.h:                                             ; preds = %bb.g
  %i.ha = tail call float @sqrtf(float noundef %i.gy) #13, !noalias !81
  %i.hb = fdiv float 1.000000e+00, %i.ha
  %i.hc = insertelement <2 x float> poison, float %i.hb, i64 0
  %i.hd = shufflevector <2 x float> %i.hc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.he = fmul <2 x float> %i.gw, %i.hd
  br label %b2MakeSeparationFunction.exit

bb.i:                                             ; preds = %bb.f
  %i.hf = xor i64 %.sroa.266.0.extract.shift.i, %.sroa.670.0.extract.shift.i
  %i.hg = and i64 %i.hf, 255
  %i.hh = icmp eq i64 %i.hg, 0
  br i1 %i.hh, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.hi = and i64 %.sroa.872.0.extract.shift.i, 255
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.hi
  %.sroa.028.0.copyload.i = load <2 x float>, ptr %i.hj, align 4, !tbaa !10, !noalias !81 ; 2 uses
  %i.hk = and i64 %.sroa.11.0.extract.shift.i, 255
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.hk
  %.sroa.026.0.copyload.i = load <2 x float>, ptr %i.hl, align 4, !tbaa !10, !noalias !81 ; 2 uses
  %i.hm = fsub <2 x float> %.sroa.026.0.copyload.i, %.sroa.028.0.copyload.i ; 4 uses
  %i.hn = fmul <2 x float> %i.hm, %i.hm
  %i.ho = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.hn) ; 2 uses
  %i.hp = fcmp ogt float %i.ho, f0x057A0000
  br i1 %i.hp, label %bb.k, label %b2Normalize.exit112.i

bb.k:                                             ; preds = %bb.j
  %i.hq = tail call float @sqrtf(float noundef %i.ho) #13, !noalias !81
  %i.hr = fdiv float 1.000000e+00, %i.hq
  %i.hs = fneg <2 x float> %i.hm
  %i.ht = shufflevector <2 x float> %i.hm, <2 x float> %i.hs, <2 x i32> <i32 1, i32 2>
  %i.hu = insertelement <2 x float> poison, float %i.hr, i64 0
  %i.hv = shufflevector <2 x float> %i.hu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hw = fmul <2 x float> %i.ht, %i.hv
  br label %b2Normalize.exit112.i

b2Normalize.exit112.i:                            ; preds = %bb.k, %bb.j
  %.sroa.012.0.i109.i = phi <2 x float> [ %i.hw, %bb.k ], [ zeroinitializer, %bb.j ] ; 4 uses
  %i.hx = fadd <2 x float> %.sroa.028.0.copyload.i, %.sroa.026.0.copyload.i
  %i.hy = fmul <2 x float> %i.hx, splat (float 5.000000e-01) ; 4 uses
  %i.hz = and i64 %.sroa.266.0.extract.shift.i, 255
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.hz
  %.sroa.018.0.copyload.i = load <2 x float>, ptr %i.ia, align 4, !tbaa !10, !noalias !81 ; 2 uses
  %i.ib = shufflevector <4 x float> %i.fj, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.ic = shufflevector <2 x float> %.sroa.012.0.i109.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.id = fmul <2 x float> %i.ib, %i.ic           ; 2 uses
  %i.ie = shufflevector <4 x float> %i.fi, <4 x float> poison, <2 x i32> <i32 3, i32 2> ; 2 uses
  %i.if = shufflevector <2 x float> %.sroa.012.0.i109.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ig = fmul <2 x float> %i.ie, %i.if           ; 2 uses
  %i.ih = fsub <2 x float> %i.id, %i.ig
  %i.ii = fadd <2 x float> %i.id, %i.ig
  %i.ij = shufflevector <2 x float> %i.ih, <2 x float> %i.ii, <2 x i32> <i32 0, i32 3>
  %i.ik = shufflevector <2 x float> %i.hy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.il = fmul <2 x float> %i.ib, %i.ik           ; 2 uses
  %i.im = shufflevector <2 x float> %i.hy, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.in = fmul <2 x float> %i.ie, %i.im           ; 2 uses
  %i.io = fsub <2 x float> %i.il, %i.in
  %i.ip = fadd <2 x float> %i.il, %i.in
  %i.iq = shufflevector <2 x float> %i.io, <2 x float> %i.ip, <2 x i32> <i32 0, i32 3>
  %i.ir = fadd <2 x float> %i.gb, %i.iq
  %i.is = shufflevector <4 x float> %i.fi, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.it = shufflevector <2 x float> %.sroa.018.0.copyload.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iu = fmul <2 x float> %i.is, %i.it           ; 2 uses
  %i.iv = shufflevector <4 x float> %i.fi, <4 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.iw = shufflevector <2 x float> %.sroa.018.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ix = fmul <2 x float> %i.iv, %i.iw           ; 2 uses
  %i.iy = fsub <2 x float> %i.iu, %i.ix
  %i.iz = fadd <2 x float> %i.iu, %i.ix
  %i.ja = shufflevector <2 x float> %i.iy, <2 x float> %i.iz, <2 x i32> <i32 0, i32 3>
  %i.jb = fadd <2 x float> %i.fs, %i.ja
  %i.jc = fsub <2 x float> %i.jb, %i.ir
  %i.jd = fmul <2 x float> %i.ij, %i.jc
  %i.je = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.jd)
  %i.jf = fcmp olt float %i.je, 0.000000e+00
  br i1 %i.jf, label %bb.l, label %b2MakeSeparationFunction.exit

bb.l:                                             ; preds = %b2Normalize.exit112.i
  %i.jg = fneg <2 x float> %.sroa.012.0.i109.i
  br label %b2MakeSeparationFunction.exit

bb.m:                                             ; preds = %bb.i
  %i.jh = and i64 %.sroa.266.0.extract.shift.i, 255
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.jh
  %.sroa.012.0.copyload.i = load <2 x float>, ptr %i.ji, align 4, !tbaa !10, !noalias !81 ; 2 uses
  %i.jj = and i64 %.sroa.670.0.extract.shift.i, 255
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.jj
  %.sroa.010.0.copyload.i = load <2 x float>, ptr %i.jk, align 4, !tbaa !10, !noalias !81 ; 2 uses
  %i.jl = fsub <2 x float> %.sroa.010.0.copyload.i, %.sroa.012.0.copyload.i ; 4 uses
  %i.jm = fmul <2 x float> %i.jl, %i.jl
  %i.jn = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.jm) ; 2 uses
  %i.jo = fcmp ogt float %i.jn, f0x057A0000
  br i1 %i.jo, label %bb.n, label %b2Normalize.exit158.i

bb.n:                                             ; preds = %bb.m
  %i.jp = tail call float @sqrtf(float noundef %i.jn) #13, !noalias !81
  %i.jq = fdiv float 1.000000e+00, %i.jp
  %i.jr = fneg <2 x float> %i.jl
  %i.js = shufflevector <2 x float> %i.jl, <2 x float> %i.jr, <2 x i32> <i32 1, i32 2>
  %i.jt = insertelement <2 x float> poison, float %i.jq, i64 0
  %i.ju = shufflevector <2 x float> %i.jt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jv = fmul <2 x float> %i.js, %i.ju
  br label %b2Normalize.exit158.i

b2Normalize.exit158.i:                            ; preds = %bb.n, %bb.m
  %.sroa.012.0.i155.i = phi <2 x float> [ %i.jv, %bb.n ], [ zeroinitializer, %bb.m ] ; 4 uses
  %i.jw = fadd <2 x float> %.sroa.012.0.copyload.i, %.sroa.010.0.copyload.i
  %i.jx = fmul <2 x float> %i.jw, splat (float 5.000000e-01) ; 4 uses
  %i.jy = and i64 %.sroa.872.0.extract.shift.i, 255
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.jy
  %.sroa.03.0.copyload.i = load <2 x float>, ptr %i.jz, align 4, !tbaa !10, !noalias !81 ; 2 uses
  %i.ka = shufflevector <4 x float> %i.fi, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.kb = shufflevector <2 x float> %.sroa.012.0.i155.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kc = fmul <2 x float> %i.ka, %i.kb           ; 2 uses
  %i.kd = shufflevector <4 x float> %i.fi, <4 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ke = shufflevector <2 x float> %.sroa.012.0.i155.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.kf = fmul <2 x float> %i.kd, %i.ke           ; 2 uses
  %i.kg = fsub <2 x float> %i.kc, %i.kf
  %i.kh = fadd <2 x float> %i.kc, %i.kf
  %i.ki = shufflevector <2 x float> %i.kg, <2 x float> %i.kh, <2 x i32> <i32 0, i32 3>
  %i.kj = shufflevector <2 x float> %i.jx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kk = fmul <2 x float> %i.ka, %i.kj           ; 2 uses
  %i.kl = shufflevector <2 x float> %i.jx, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.km = fmul <2 x float> %i.kd, %i.kl           ; 2 uses
  %i.kn = fsub <2 x float> %i.kk, %i.km
  %i.ko = fadd <2 x float> %i.kk, %i.km
  %i.kp = shufflevector <2 x float> %i.kn, <2 x float> %i.ko, <2 x i32> <i32 0, i32 3>
  %i.kq = fadd <2 x float> %i.fs, %i.kp
  %i.kr = shufflevector <4 x float> %i.fj, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ks = shufflevector <2 x float> %.sroa.03.0.copyload.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kt = fmul <2 x float> %i.kr, %i.ks           ; 2 uses
  %i.ku = shufflevector <4 x float> %i.fi, <4 x float> poison, <2 x i32> <i32 3, i32 2>
  %i.kv = shufflevector <2 x float> %.sroa.03.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
end_hunk_1
begin_hunk_2_@b2TimeOfImpact:bb.a
  unreachable

b2FindMinSeparation.exit:                         ; preds = %b2FindSupport.exit115.i, %b2FindSupport.exit171.i, %b2FindSupport.exit227.i
  %.sroa.021.0.copyload.i.sink789.in = phi ptr [ %i.ps, %b2FindSupport.exit115.i ], [ %i.rt, %b2FindSupport.exit171.i ], [ %i.tn, %b2FindSupport.exit227.i ]
  %.0360 = phi i32 [ %.014.lcssa.i.i, %b2FindSupport.exit115.i ], [ -1, %b2FindSupport.exit171.i ], [ %.014.lcssa.i212.i, %b2FindSupport.exit227.i ] ; 3 uses
  %.0359 = phi i32 [ %.014.lcssa.i100.i, %b2FindSupport.exit115.i ], [ %.014.lcssa.i156.i, %b2FindSupport.exit171.i ], [ -1, %b2FindSupport.exit227.i ] ; 3 uses
  %i.tp = phi <2 x float> [ %i.pz, %b2FindSupport.exit115.i ], [ %i.qn, %b2FindSupport.exit171.i ], [ %i.sh, %b2FindSupport.exit227.i ]
  %i.tq = phi <2 x float> [ %i.qa, %b2FindSupport.exit115.i ], [ %i.ru, %b2FindSupport.exit171.i ], [ %i.to, %b2FindSupport.exit227.i ] ; 2 uses
  %i.tr = phi <2 x float> [ %.sroa.73.0, %b2FindSupport.exit115.i ], [ %i.qh, %b2FindSupport.exit171.i ], [ %i.sb, %b2FindSupport.exit227.i ]
  %i.ts = phi <2 x float> [ %i.nh, %b2FindSupport.exit115.i ], [ %i.nh, %b2FindSupport.exit171.i ], [ %i.mw, %b2FindSupport.exit227.i ]
  %.sroa.021.0.copyload.i.sink789 = load <2 x float>, ptr %.sroa.021.0.copyload.i.sink789.in, align 4, !tbaa !10 ; 2 uses
  %i.tt = shufflevector <2 x float> %i.tq, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.tu = shufflevector <2 x float> %.sroa.021.0.copyload.i.sink789, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.tv = fmul <2 x float> %i.tt, %i.tu           ; 2 uses
  %i.tw = shufflevector <2 x float> %i.tq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tx = fmul <2 x float> %i.tw, %.sroa.021.0.copyload.i.sink789 ; 2 uses
  %i.ty = fsub <2 x float> %i.tx, %i.tv
  %i.tz = fadd <2 x float> %i.tx, %i.tv
  %i.ua = shufflevector <2 x float> %i.ty, <2 x float> %i.tz, <2 x i32> <i32 0, i32 3>
  %i.ub = fadd <2 x float> %i.ts, %i.ua
  %i.uc = fsub <2 x float> %i.ub, %i.tp
  %i.ud = fmul <2 x float> %i.tr, %i.uc
  %i.ue = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ud) ; 3 uses
  %i.uf = fcmp ogt float %i.ue, %i.ag
  br i1 %i.uf, label %bb.t, label %bb.u

bb.t:                                             ; preds = %b2FindMinSeparation.exit
  store i32 4, ptr %0, align 4, !tbaa !80
  br label %.thread379

bb.u:                                             ; preds = %b2FindMinSeparation.exit
  %i.ug = fcmp ogt float %i.ue, %i.aj
  br i1 %i.ug, label %select.unfold368, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.uh = tail call float @sqrtf(float noundef %i.bo) #13
  %i.ui = tail call float @sqrtf(float noundef %i.bu) #13
  %i.uj = insertelement <2 x float> poison, float %i.uh, i64 0
  %i.uk = insertelement <2 x float> %i.uj, float %i.ui, i64 1 ; 2 uses
  %i.ul = fcmp ogt <2 x float> %i.uk, zeroinitializer
  %i.um = fdiv <2 x float> splat (float 1.000000e+00), %i.uk
  %i.un = select <2 x i1> %i.ul, <2 x float> %i.um, <2 x float> zeroinitializer
  %i.uo = shufflevector <2 x float> %i.un, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.up = fmul <4 x float> %i.bl, %i.uo           ; 11 uses
  %i.uq = shufflevector <4 x float> %i.up, <4 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.ur = fmul <2 x float> %.sroa.0342.0.copyload, %i.uq
  %i.us = shufflevector <2 x float> %i.ur, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ut = shufflevector <4 x float> %i.up, <4 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.uu = fmul <2 x float> %.sroa.0342.0.copyload, %i.ut ; 2 uses
  %i.uv = fsub <2 x float> %i.uu, %i.us
  %i.uw = fadd <2 x float> %i.uu, %i.us
  %i.ux = shufflevector <2 x float> %i.uv, <2 x float> %i.uw, <2 x i32> <i32 0, i32 3>
  %i.uy = fsub <2 x float> %i.bi, %i.ux           ; 3 uses
  %i.uz = shufflevector <4 x float> %i.up, <4 x float> poison, <2 x i32> <i32 3, i32 3> ; 2 uses
  %i.va = fmul <2 x float> %.sroa.0330.0.copyload, %i.uz
  %i.vb = shufflevector <2 x float> %i.va, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.vc = shufflevector <4 x float> %i.up, <4 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.vd = fmul <2 x float> %.sroa.0330.0.copyload, %i.vc ; 2 uses
  %i.ve = fsub <2 x float> %i.vd, %i.vb
  %i.vf = fadd <2 x float> %i.vd, %i.vb
  %i.vg = shufflevector <2 x float> %i.ve, <2 x float> %i.vf, <2 x i32> <i32 0, i32 3>
  %i.vh = fsub <2 x float> %i.br, %i.vg           ; 3 uses
  switch i32 %.sroa.88.0, label %default.unreachable [
    i32 0, label %bb.w
    i32 1, label %bb.x
    i32 2, label %bb.y
  ]

bb.w:                                             ; preds = %bb.v
  %i.vi = sext i32 %.0360 to i64
  %i.vj = getelementptr inbounds [8 x i8], ptr %1, i64 %i.vi
  %.sroa.016.0.copyload.i = load <2 x float>, ptr %i.vj, align 4, !tbaa !10 ; 2 uses
  %i.vk = sext i32 %.0359 to i64
  %i.vl = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.vk
  %i.vm = fmul <2 x float> %i.uq, %.sroa.016.0.copyload.i
  %i.vn = shufflevector <2 x float> %i.vm, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.vo = fmul <2 x float> %i.ut, %.sroa.016.0.copyload.i ; 2 uses
  %i.vp = fsub <2 x float> %i.vo, %i.vn
  %i.vq = fadd <2 x float> %i.vo, %i.vn
  %i.vr = shufflevector <2 x float> %i.vp, <2 x float> %i.vq, <2 x i32> <i32 0, i32 3>
  %i.vs = fadd <2 x float> %i.uy, %i.vr
  %i.vt = shufflevector <4 x float> %i.up, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  br label %b2EvaluateSeparation.exit

bb.x:                                             ; preds = %bb.v
  %i.vu = shufflevector <4 x float> %i.up, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.vv = fmul <2 x float> %.sroa.73.0, %i.vu     ; 2 uses
  %shift922 = shufflevector <2 x float> %i.vv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop923 = fsub <2 x float> %i.vv, %shift922
  %i.vw = extractelement <2 x float> %foldExtExtBinop923, i64 0
  %i.vx = shufflevector <4 x float> %i.up, <4 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.vy = fmul <2 x float> %.sroa.73.0, %i.vx
  %i.vz = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.vy)
  %i.wa = fmul <2 x float> %.sroa.60.0, %i.ut     ; 2 uses
  %i.wb = fmul <2 x float> %i.lh, %i.uq           ; 2 uses
  %i.wc = fsub <2 x float> %i.wa, %i.wb
  %i.wd = fadd <2 x float> %i.wa, %i.wb
  %i.we = shufflevector <2 x float> %i.wc, <2 x float> %i.wd, <2 x i32> <i32 0, i32 3>
  %i.wf = fadd <2 x float> %i.we, %i.uy
  %i.wg = sext i32 %.0359 to i64
  %i.wh = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.wg
  %i.wi = shufflevector <4 x float> %i.up, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  br label %b2EvaluateSeparation.exit

bb.y:                                             ; preds = %bb.v
  %i.wj = shufflevector <4 x float> %i.up, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.wk = fmul <2 x float> %.sroa.73.0, %i.wj     ; 2 uses
  %shift925 = shufflevector <2 x float> %i.wk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop926 = fsub <2 x float> %i.wk, %shift925
  %i.wl = extractelement <2 x float> %foldExtExtBinop926, i64 0
  %i.wm = shufflevector <4 x float> %i.up, <4 x float> poison, <2 x i32> <i32 3, i32 2>
  %i.wn = fmul <2 x float> %.sroa.73.0, %i.wm
  %i.wo = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.wn)
  %i.wp = fmul <2 x float> %.sroa.60.0, %i.vc     ; 2 uses
  %i.wq = fmul <2 x float> %i.lh, %i.uz           ; 2 uses
  %i.wr = fsub <2 x float> %i.wp, %i.wq
  %i.ws = fadd <2 x float> %i.wp, %i.wq
  %i.wt = shufflevector <2 x float> %i.wr, <2 x float> %i.ws, <2 x i32> <i32 0, i32 3>
  %i.wu = fadd <2 x float> %i.wt, %i.vh
  %i.wv = sext i32 %.0360 to i64
  %i.ww = getelementptr inbounds [8 x i8], ptr %1, i64 %i.wv
  %i.wx = shufflevector <4 x float> %i.up, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  br label %b2EvaluateSeparation.exit

b2EvaluateSeparation.exit:                        ; preds = %bb.w, %bb.x, %bb.y
  %.sroa.015.0.copyload.i.sink814.in = phi ptr [ %i.vl, %bb.w ], [ %i.wh, %bb.x ], [ %i.ww, %bb.y ]
  %.sroa.0.0.vec.extract.i187.i.sink794 = phi float [ %.sroa.0.0.vec.extract.i187.i, %bb.w ], [ %i.vw, %bb.x ], [ %i.wl, %bb.y ]
  %.sroa.0.4.vec.extract.i189.i.sink792 = phi float [ %.sroa.0.4.vec.extract.i189.i, %bb.w ], [ %i.vz, %bb.x ], [ %i.wo, %bb.y ]
  %i.wy = phi <2 x float> [ %i.vs, %bb.w ], [ %i.wf, %bb.x ], [ %i.wu, %bb.y ]
  %i.wz = phi <2 x float> [ %i.vt, %bb.w ], [ %i.wi, %bb.x ], [ %i.wx, %bb.y ] ; 2 uses
  %i.xa = phi <2 x float> [ %i.vh, %bb.w ], [ %i.vh, %bb.x ], [ %i.uy, %bb.y ]
  %.sroa.015.0.copyload.i.sink814 = load <2 x float>, ptr %.sroa.015.0.copyload.i.sink814.in, align 4, !tbaa !10 ; 2 uses
  %i.xb = shufflevector <2 x float> %i.wz, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.xc = shufflevector <2 x float> %.sroa.015.0.copyload.i.sink814, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.xd = fmul <2 x float> %i.xb, %i.xc           ; 2 uses
  %i.xe = shufflevector <2 x float> %i.wz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xf = fmul <2 x float> %i.xe, %.sroa.015.0.copyload.i.sink814 ; 2 uses
  %i.xg = fsub <2 x float> %i.xf, %i.xd
  %i.xh = fadd <2 x float> %i.xf, %i.xd
  %i.xi = shufflevector <2 x float> %i.xg, <2 x float> %i.xh, <2 x i32> <i32 0, i32 3>
  %i.xj = fadd <2 x float> %i.xa, %i.xi
  %i.xk = fsub <2 x float> %i.xj, %i.wy
  %i.xl = insertelement <2 x float> poison, float %.sroa.0.0.vec.extract.i187.i.sink794, i64 0
  %i.xm = insertelement <2 x float> %i.xl, float %.sroa.0.4.vec.extract.i189.i.sink792, i64 1
  %i.xn = fmul <2 x float> %i.xm, %i.xk
  %i.xo = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.xn) ; 3 uses
  %i.xp = fcmp olt float %i.xo, %i.aj
  br i1 %i.xp, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %b2EvaluateSeparation.exit
  store i32 1, ptr %0, align 4, !tbaa !80
  br label %.thread379

bb.aa:                                            ; preds = %b2EvaluateSeparation.exit
  %i.xq = fcmp ugt float %i.xo, %i.ag
  br i1 %i.xq, label %.preheader, label %bb.ab

.preheader:                                       ; preds = %bb.aa
  %i.xr = sext i32 %.0360 to i64
  %i.xs = getelementptr inbounds [8 x i8], ptr %1, i64 %i.xr ; 2 uses
  %i.xt = sext i32 %.0359 to i64
  %i.xu = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.xt ; 2 uses
  br label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 3, ptr %0, align 4, !tbaa !80
  %i.xv = load float, ptr %i.m, align 4, !tbaa !14
  %i.xw = load float, ptr %i.o, align 4, !tbaa !14
  %i.xx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.xy = fmul <2 x float> %i.cd, %i.dk
  %i.xz = shufflevector <2 x float> %i.xy, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ya = fmul <2 x float> %i.cv, %i.dk           ; 2 uses
  %i.yb = fsub <2 x float> %i.ya, %i.xz
  %i.yc = fadd <2 x float> %i.ya, %i.xz
  %i.yd = shufflevector <2 x float> %i.yb, <2 x float> %i.yc, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.ye = fmul <2 x float> %i.cd, %i.dl
  %i.yf = shufflevector <2 x float> %i.ye, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.yg = fmul <2 x float> %i.cv, %i.dl           ; 2 uses
  %i.yh = fsub <2 x float> %i.yg, %i.yf
  %i.yi = fadd <2 x float> %i.yg, %i.yf
  %i.yj = shufflevector <2 x float> %i.yh, <2 x float> %i.yi, <2 x i32> <i32 0, i32 3>
  %i.yk = fadd <2 x float> %i.cm, %i.yj
  %i.yl = fmul <2 x float> %i.cd, %i.dm
  %i.ym = shufflevector <2 x float> %i.yl, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.yn = fmul <2 x float> %i.cv, %i.dm           ; 2 uses
  %i.yo = fsub <2 x float> %i.yn, %i.ym
  %i.yp = fadd <2 x float> %i.yn, %i.ym
  %i.yq = shufflevector <2 x float> %i.yo, <2 x float> %i.yp, <2 x i32> <i32 0, i32 3>
  %i.yr = fadd <2 x float> %i.cm, %i.yq
  %i.ys = insertelement <2 x float> poison, float %i.xv, i64 0
  %i.yt = shufflevector <2 x float> %i.ys, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yu = fmul <2 x float> %i.yd, %i.yt
  %i.yv = fadd <2 x float> %i.yk, %i.yu
  %i.yw = insertelement <2 x float> poison, float %i.xw, i64 0
  %i.yx = shufflevector <2 x float> %i.yw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yy = fmul <2 x float> %i.yd, %i.yx
  %i.yz = fsub <2 x float> %i.yr, %i.yy
  %i.za = fmul <2 x float> %i.yv, splat (float 5.000000e-01)
  %i.zb = fmul <2 x float> %i.yz, splat (float 5.000000e-01)
  %i.zc = fadd <2 x float> %i.za, %i.zb
  %7 = shufflevector <2 x float> %i.zc, <2 x float> %i.yd, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %7, ptr %i.xx, align 4, !tbaa !10
  br label %.thread379

bb.ac:                                            ; preds = %.preheader, %bb.aj
  %.0116 = phi float [ %.0116., %bb.aj ], [ %i.ue, %.preheader ] ; 2 uses
  %.0113 = phi float [ %..0113, %bb.aj ], [ %i.xo, %.preheader ] ; 3 uses
  %.0112 = phi i32 [ %i.zm, %bb.aj ], [ 0, %.preheader ] ; 2 uses
  %.0109 = phi float [ %.0..0109, %bb.aj ], [ %.0128, %.preheader ] ; 4 uses
  %.0108 = phi float [ %.0108..0, %bb.aj ], [ %.0122, %.preheader ] ; 3 uses
  %i.zd = and i32 %.0112, 1
  %.not = icmp eq i32 %i.zd, 0
  br i1 %.not, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ze = fsub float %i.x, %.0113
  %i.zf = fsub float %.0108, %.0109
  %i.zg = fmul float %i.ze, %i.zf
  %i.zh = fsub float %.0116, %.0113
  %i.zi = fdiv float %i.zg, %i.zh
  %i.zj = fadd float %.0109, %i.zi
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.zk = fadd float %.0109, %.0108
  %i.zl = fmul float %i.zk, 5.000000e-01
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.0 = phi float [ %i.zj, %bb.ad ], [ %i.zl, %bb.ae ] ; 5 uses
  %i.zm = add nuw nsw i32 %.0112, 1               ; 2 uses
  %i.zn = fsub float 1.000000e+00, %.0
  %i.zo = insertelement <2 x float> poison, float %.0, i64 0 ; 2 uses
  %i.zp = shufflevector <2 x float> %i.zo, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.zq = fmul <2 x float> %.sroa.9348.0.copyload, %i.zp
  %i.zr = shufflevector <2 x float> %i.zo, <2 x float> poison, <4 x i32> zeroinitializer
  %i.zs = fmul <4 x float> %i.ax, %i.zr
  %i.zt = fmul <2 x float> %.sroa.9335.0.copyload, %i.zp
  %i.zu = insertelement <2 x float> poison, float %i.zn, i64 0 ; 2 uses
  %i.zv = shufflevector <2 x float> %i.zu, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.zw = fmul <2 x float> %.sroa.6345.0.copyload, %i.zv
  %i.zx = fadd <2 x float> %i.zq, %i.zw
  %i.zy = shufflevector <2 x float> %i.zu, <2 x float> poison, <4 x i32> zeroinitializer
  %i.zz = fmul <4 x float> %i.ak, %i.zy
  %i.aaa = fadd <4 x float> %i.zs, %i.zz          ; 3 uses
  %i.aab = shufflevector <4 x float> %i.aaa, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.aac = fmul <2 x float> %i.aab, %i.aab
  %i.aad = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.aac)
  %i.aae = tail call float @sqrtf(float noundef %i.aad) #13
  %i.aaf = shufflevector <4 x float> %i.aaa, <4 x float> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.aag = fmul <2 x float> %i.aaf, %i.aaf
  %i.aah = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.aag)
  %i.aai = tail call float @sqrtf(float noundef %i.aah) #13
  %i.aaj = insertelement <2 x float> poison, float %i.aae, i64 0
  %i.aak = insertelement <2 x float> %i.aaj, float %i.aai, i64 1 ; 2 uses
  %i.aal = fcmp ogt <2 x float> %i.aak, zeroinitializer
  %i.aam = fdiv <2 x float> splat (float 1.000000e+00), %i.aak
  %i.aan = select <2 x i1> %i.aal, <2 x float> %i.aam, <2 x float> zeroinitializer
  %i.aao = shufflevector <2 x float> %i.aan, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.aap = fmul <4 x float> %i.aaa, %i.aao        ; 11 uses
  %i.aaq = shufflevector <4 x float> %i.aap, <4 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.aar = fmul <2 x float> %.sroa.0342.0.copyload, %i.aaq
  %i.aas = shufflevector <2 x float> %i.aar, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.aat = shufflevector <4 x float> %i.aap, <4 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.aau = fmul <2 x float> %.sroa.0342.0.copyload, %i.aat ; 2 uses
  %i.aav = fsub <2 x float> %i.aau, %i.aas
  %i.aaw = fadd <2 x float> %i.aau, %i.aas
  %i.aax = shufflevector <2 x float> %i.aav, <2 x float> %i.aaw, <2 x i32> <i32 0, i32 3>
  %i.aay = fsub <2 x float> %i.zx, %i.aax         ; 3 uses
  %i.aaz = fmul <2 x float> %.sroa.6.0.copyload, %i.zv
  %i.aba = fadd <2 x float> %i.zt, %i.aaz
  %i.abb = shufflevector <4 x float> %i.aap, <4 x float> poison, <2 x i32> <i32 3, i32 3> ; 2 uses
  %i.abc = fmul <2 x float> %.sroa.0330.0.copyload, %i.abb
  %i.abd = shufflevector <2 x float> %i.abc, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.abe = shufflevector <4 x float> %i.aap, <4 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.abf = fmul <2 x float> %.sroa.0330.0.copyload, %i.abe ; 2 uses
  %i.abg = fsub <2 x float> %i.abf, %i.abd
  %i.abh = fadd <2 x float> %i.abf, %i.abd
  %i.abi = shufflevector <2 x float> %i.abg, <2 x float> %i.abh, <2 x i32> <i32 0, i32 3>
  %i.abj = fsub <2 x float> %i.aba, %i.abi        ; 3 uses
  switch i32 %.sroa.88.0, label %default.unreachable [
    i32 0, label %bb.ag
    i32 1, label %bb.ah
    i32 2, label %bb.ai
  ]

bb.ag:                                            ; preds = %bb.af
  %.sroa.016.0.copyload.i243 = load <2 x float>, ptr %i.xs, align 4, !tbaa !10 ; 2 uses
  %i.abk = fmul <2 x float> %i.aaq, %.sroa.016.0.copyload.i243
  %i.abl = shufflevector <2 x float> %i.abk, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.abm = fmul <2 x float> %i.aat, %.sroa.016.0.copyload.i243 ; 2 uses
  %i.abn = fsub <2 x float> %i.abm, %i.abl
  %i.abo = fadd <2 x float> %i.abm, %i.abl
  %i.abp = shufflevector <2 x float> %i.abn, <2 x float> %i.abo, <2 x i32> <i32 0, i32 3>
  %i.abq = fadd <2 x float> %i.aay, %i.abp
  %i.abr = shufflevector <4 x float> %i.aap, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  br label %b2EvaluateSeparation.exit251

bb.ah:                                            ; preds = %bb.af
  %i.abs = shufflevector <4 x float> %i.aap, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.abt = fmul <2 x float> %.sroa.73.0, %i.abs   ; 2 uses
  %shift928 = shufflevector <2 x float> %i.abt, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop929 = fsub <2 x float> %i.abt, %shift928
  %i.abu = extractelement <2 x float> %foldExtExtBinop929, i64 0
  %i.abv = shufflevector <4 x float> %i.aap, <4 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.abw = fmul <2 x float> %.sroa.73.0, %i.abv
  %i.abx = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.abw)
  %i.aby = fmul <2 x float> %.sroa.60.0, %i.aat   ; 2 uses
  %i.abz = fmul <2 x float> %i.lh, %i.aaq         ; 2 uses
  %i.aca = fsub <2 x float> %i.aby, %i.abz
  %i.acb = fadd <2 x float> %i.aby, %i.abz
  %i.acc = shufflevector <2 x float> %i.aca, <2 x float> %i.acb, <2 x i32> <i32 0, i32 3>
  %i.acd = fadd <2 x float> %i.acc, %i.aay
  %i.ace = shufflevector <4 x float> %i.aap, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  br label %b2EvaluateSeparation.exit251

bb.ai:                                            ; preds = %bb.af
  %i.acf = shufflevector <4 x float> %i.aap, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.acg = fmul <2 x float> %.sroa.73.0, %i.acf   ; 2 uses
  %shift931 = shufflevector <2 x float> %i.acg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop932 = fsub <2 x float> %i.acg, %shift931
  %i.ach = extractelement <2 x float> %foldExtExtBinop932, i64 0
  %i.aci = shufflevector <4 x float> %i.aap, <4 x float> poison, <2 x i32> <i32 3, i32 2>
  %i.acj = fmul <2 x float> %.sroa.73.0, %i.aci
  %i.ack = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.acj)
  %i.acl = fmul <2 x float> %.sroa.60.0, %i.abe   ; 2 uses
  %i.acm = fmul <2 x float> %i.lh, %i.abb         ; 2 uses
  %i.acn = fsub <2 x float> %i.acl, %i.acm
  %i.aco = fadd <2 x float> %i.acl, %i.acm
  %i.acp = shufflevector <2 x float> %i.acn, <2 x float> %i.aco, <2 x i32> <i32 0, i32 3>
  %i.acq = fadd <2 x float> %i.acp, %i.abj
  %i.acr = shufflevector <4 x float> %i.aap, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  br label %b2EvaluateSeparation.exit251

b2EvaluateSeparation.exit251:                     ; preds = %bb.ag, %bb.ah, %bb.ai
  %.sroa.015.0.copyload.i244.sink839.in = phi ptr [ %i.xu, %bb.ag ], [ %i.xu, %bb.ah ], [ %i.xs, %bb.ai ]
  %.sroa.0.0.vec.extract.i187.i.sink819 = phi float [ %.sroa.0.0.vec.extract.i187.i, %bb.ag ], [ %i.abu, %bb.ah ], [ %i.ach, %bb.ai ]
  %.sroa.0.4.vec.extract.i189.i.sink817 = phi float [ %.sroa.0.4.vec.extract.i189.i, %bb.ag ], [ %i.abx, %bb.ah ], [ %i.ack, %bb.ai ]
  %i.acs = phi <2 x float> [ %i.abq, %bb.ag ], [ %i.acd, %bb.ah ], [ %i.acq, %bb.ai ]
  %i.act = phi <2 x float> [ %i.abr, %bb.ag ], [ %i.ace, %bb.ah ], [ %i.acr, %bb.ai ] ; 2 uses
  %i.acu = phi <2 x float> [ %i.abj, %bb.ag ], [ %i.abj, %bb.ah ], [ %i.aay, %bb.ai ]
  %.sroa.015.0.copyload.i244.sink839 = load <2 x float>, ptr %.sroa.015.0.copyload.i244.sink839.in, align 4, !tbaa !10 ; 2 uses
  %i.acv = shufflevector <2 x float> %i.act, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.acw = shufflevector <2 x float> %.sroa.015.0.copyload.i244.sink839, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.acx = fmul <2 x float> %i.acv, %i.acw        ; 2 uses
  %i.acy = shufflevector <2 x float> %i.act, <2 x float> poison, <2 x i32> zeroinitializer
  %i.acz = fmul <2 x float> %i.acy, %.sroa.015.0.copyload.i244.sink839 ; 2 uses
  %i.ada = fsub <2 x float> %i.acz, %i.acx
  %i.adb = fadd <2 x float> %i.acz, %i.acx
  %i.adc = shufflevector <2 x float> %i.ada, <2 x float> %i.adb, <2 x i32> <i32 0, i32 3>
  %i.add = fadd <2 x float> %i.acu, %i.adc
  %i.ade = fsub <2 x float> %i.add, %i.acs
  %i.adf = insertelement <2 x float> poison, float %.sroa.0.0.vec.extract.i187.i.sink819, i64 0
  %i.adg = insertelement <2 x float> %i.adf, float %.sroa.0.4.vec.extract.i189.i.sink817, i64 1
  %i.adh = fmul <2 x float> %i.adg, %i.ade
  %i.adi = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.adh) ; 4 uses
  %i.adj = fsub float %i.adi, %i.x
  %i.adk = tail call float @llvm.fabs.f32(float %i.adj)
  %i.adl = fcmp olt float %i.adk, %i.aa
  br i1 %i.adl, label %select.unfold, label %bb.aj

bb.aj:                                            ; preds = %b2EvaluateSeparation.exit251
  %i.adm = fcmp ogt float %i.adi, %i.x            ; 4 uses
  %.0116. = select i1 %i.adm, float %.0116, float %i.adi
  %..0113 = select i1 %i.adm, float %i.adi, float %.0113
  %.0..0109 = select i1 %i.adm, float %.0, float %.0109
  %.0108..0 = select i1 %i.adm, float %.0108, float %.0
  %i.adn = icmp eq i32 %i.zm, 50
  br i1 %i.adn, label %select.unfold, label %bb.ac

select.unfold:                                    ; preds = %bb.aj, %b2EvaluateSeparation.exit251
  %.2124.ph = phi float [ %.0, %b2EvaluateSeparation.exit251 ], [ %.0122, %bb.aj ]
  %i.ado = add nuw nsw i32 %.0119, 1              ; 2 uses
  %i.adp = icmp eq i32 %i.ado, 8
  br i1 %i.adp, label %select.unfold368, label %bb.p

select.unfold368:                                 ; preds = %bb.u, %select.unfold
  %.2130.ph = phi float [ %.0122, %bb.u ], [ %.0128, %select.unfold ] ; 2 uses
  %i.adq = icmp eq i32 %i.dn, 20
  br i1 %i.adq, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %select.unfold368
  store i32 1, ptr %0, align 4, !tbaa !80
  %i.adr = load float, ptr %i.m, align 4, !tbaa !14
  %i.ads = load float, ptr %i.o, align 4, !tbaa !14
  %i.adt = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.adu = fmul <2 x float> %i.cd, %i.dk
  %i.adv = shufflevector <2 x float> %i.adu, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.adw = fmul <2 x float> %i.cv, %i.dk          ; 2 uses
  %i.adx = fsub <2 x float> %i.adw, %i.adv
  %i.ady = fadd <2 x float> %i.adw, %i.adv
  %i.adz = shufflevector <2 x float> %i.adx, <2 x float> %i.ady, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.aea = fmul <2 x float> %i.cd, %i.dl
  %i.aeb = shufflevector <2 x float> %i.aea, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.aec = fmul <2 x float> %i.cv, %i.dl          ; 2 uses
  %i.aed = fsub <2 x float> %i.aec, %i.aeb
  %i.aee = fadd <2 x float> %i.aec, %i.aeb
  %i.aef = shufflevector <2 x float> %i.aed, <2 x float> %i.aee, <2 x i32> <i32 0, i32 3>
  %i.aeg = fadd <2 x float> %i.cm, %i.aef
  %i.aeh = fmul <2 x float> %i.cd, %i.dm
  %i.aei = shufflevector <2 x float> %i.aeh, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.aej = fmul <2 x float> %i.cv, %i.dm          ; 2 uses
  %i.aek = fsub <2 x float> %i.aej, %i.aei
  %i.ael = fadd <2 x float> %i.aej, %i.aei
  %i.aem = shufflevector <2 x float> %i.aek, <2 x float> %i.ael, <2 x i32> <i32 0, i32 3>
  %i.aen = fadd <2 x float> %i.cm, %i.aem
  %i.aeo = insertelement <2 x float> poison, float %i.adr, i64 0
  %i.aep = shufflevector <2 x float> %i.aeo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aeq = fmul <2 x float> %i.adz, %i.aep
  %i.aer = fadd <2 x float> %i.aeg, %i.aeq
  %i.aes = insertelement <2 x float> poison, float %i.ads, i64 0
  %i.aet = shufflevector <2 x float> %i.aes, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aeu = fmul <2 x float> %i.adz, %i.aet
  %i.aev = fsub <2 x float> %i.aen, %i.aeu
  %i.aew = fmul <2 x float> %i.aer, splat (float 5.000000e-01)
  %i.aex = fmul <2 x float> %i.aev, splat (float 5.000000e-01)
  %i.aey = fadd <2 x float> %i.aew, %i.aex
  %8 = shufflevector <2 x float> %i.aey, <2 x float> %i.adz, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %8, ptr %i.adt, align 4, !tbaa !10
  br label %.thread379

bb.al:                                            ; preds = %select.unfold368
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %bb.b

.thread379:                                       ; preds = %bb.t, %bb.z, %bb.ab, %bb.c, %bb.e, %bb.ak
  %.sink840 = phi float [ %i.b, %bb.t ], [ %.0128, %bb.z ], [ %.0128, %bb.ab ], [ 0.000000e+00, %bb.c ], [ %.0128, %bb.e ], [ %.2130.ph, %bb.ak ]
  store float %.sink840, ptr %i.c, align 4, !tbaa !79
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !19}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"float", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"b2Vec2", !9, i64 0, !9, i64 4}
!12 = !{!"b2ShapeProxy", !5, i64 0, !6, i64 64, !9, i64 68}
!13 = !{!12, !6, i64 64}
!14 = !{!12, !9, i64 68}
!15 = !{!"b2Rot", !9, i64 0, !9, i64 4}
!16 = !{!"b2Transform", !11, i64 0, !15, i64 8}
!17 = !{!"_Bool", !5, i64 0}
!18 = !{!5, !5, i64 0}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!6, !6, i64 0}
!21 = !{!"b2DistanceOutput", !11, i64 0, !11, i64 8, !11, i64 16, !9, i64 24, !6, i64 28, !6, i64 32}
!22 = !{!21, !9, i64 24}
!23 = !{i8 0, i8 2}
!24 = !{}
!25 = !{i64 0, i64 64, !18, i64 64, i64 4, !20, i64 68, i64 4, !10}
!26 = !{!"b2SegmentDistanceResult", !11, i64 0, !11, i64 8, !9, i64 16, !9, i64 20, !9, i64 24}
!27 = !{!26, !9, i64 16}
!28 = !{!26, !9, i64 24}
!29 = distinct !{!29, i1 false, !"b2MakeSimplexFromCache"}
!30 = distinct !{!30, !29, !"b2MakeSimplexFromCache: argument 0"}
!31 = distinct !{!31, !19}
!32 = distinct !{!32, !19}
!33 = distinct !{!33, !19}
!34 = distinct !{!34, !19}
!35 = distinct !{!35, !19}
!36 = !{!"b2DistanceInput", !12, i64 0, !12, i64 72, !16, i64 144, !17, i64 160}
!37 = !{!36, !6, i64 136}
!38 = !{!36, !9, i64 140}
!39 = !{!30}
!40 = !{!"b2SimplexVertex", !11, i64 0, !11, i64 8, !11, i64 16, !9, i64 24, !6, i64 28, !6, i64 32}
!41 = !{!"b2Simplex", !40, i64 0, !40, i64 36, !40, i64 72, !6, i64 108}
!42 = !{!41, !6, i64 108}
!43 = !{!"any pointer", !5, i64 0}
!44 = !{!"p1 _ZTS15b2SimplexVertex", !43, i64 0}
!45 = !{!44, !44, i64 0}
!46 = !{!40, !6, i64 28}
!47 = !{!40, !6, i64 32}
!48 = !{!40, !9, i64 24}
!49 = !{i64 0, i64 4, !10, i64 4, i64 4, !10, i64 8, i64 4, !10, i64 12, i64 4, !10, i64 16, i64 4, !10, i64 20, i64 4, !10, i64 24, i64 4, !10, i64 28, i64 4, !20, i64 32, i64 4, !20, i64 36, i64 4, !10, i64 40, i64 4, !10, i64 44, i64 4, !10, i64 48, i64 4, !10, i64 52, i64 4, !10, i64 56, i64 4, !10, i64 60, i64 4, !10, i64 64, i64 4, !20, i64 68, i64 4, !20, i64 72, i64 4, !10, i64 76, i64 4, !10, i64 80, i64 4, !10, i64 84, i64 4, !10, i64 88, i64 4, !10, i64 92, i64 4, !10, i64 96, i64 4, !10, i64 100, i64 4, !20, i64 104, i64 4, !20, i64 108, i64 4, !20}
!50 = !{!41, !9, i64 24}
!51 = !{!41, !9, i64 60}
!52 = !{i64 0, i64 4, !10, i64 4, i64 4, !10, i64 8, i64 4, !10, i64 12, i64 4, !10, i64 16, i64 4, !10, i64 20, i64 4, !10, i64 24, i64 4, !10, i64 28, i64 4, !20, i64 32, i64 4, !20}
!53 = !{!41, !9, i64 96}
!54 = !{!"short", !5, i64 0}
!55 = !{!"b2SimplexCache", !54, i64 0, !5, i64 2, !5, i64 5}
!56 = !{!55, !54, i64 0}
!57 = !{!21, !6, i64 28}
!58 = !{!21, !6, i64 32}
!59 = !{!36, !17, i64 160}
!60 = !{!36, !9, i64 68}
!61 = distinct !{!61, !19, !72}
!62 = !{!"b2ShapeCastPairInput", !12, i64 0, !12, i64 72, !16, i64 144, !11, i64 160, !9, i64 168, !17, i64 172}
!63 = !{!62, !9, i64 68}
!64 = !{!62, !9, i64 140}
!65 = !{i64 0, i64 4, !10, i64 4, i64 4, !10, i64 8, i64 4, !10, i64 12, i64 4, !10}
!66 = !{!62, !17, i64 172}
!67 = !{!62, !9, i64 168}
!68 = !{!"b2CastOutput", !11, i64 0, !11, i64 8, !9, i64 16, !6, i64 20, !17, i64 24}
!69 = !{!68, !6, i64 20}
!70 = !{!68, !17, i64 24}
!71 = !{!68, !9, i64 16}
!72 = !{!"llvm.loop.peeled.count", i32 1}
!73 = distinct !{!73, i1 false, !"b2MakeSeparationFunction"}
!74 = distinct !{!74, !73, !"b2MakeSeparationFunction: argument 0"}
!75 = !{!"b2Sweep", !11, i64 0, !11, i64 8, !11, i64 16, !15, i64 24, !15, i64 32}
!76 = !{!"b2TOIInput", !12, i64 0, !12, i64 72, !75, i64 144, !75, i64 184, !9, i64 224}
!77 = !{!76, !9, i64 224}
!78 = !{!"b2TOIOutput", !6, i64 0, !11, i64 4, !11, i64 12, !9, i64 20}
!79 = !{!78, !9, i64 20}
!80 = !{!78, !6, i64 0}
!81 = !{!74}
end_hunk_2
