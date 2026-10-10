Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box2d/original/geometry?download=true
inline.NumInlined: 139
inline.NumDeleted: 27
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.b2Transform = type { %struct.b2Vec2, %struct.b2Rot }
%struct.b2Vec2 = type { float, float }
%struct.b2Rot = type { float, float }
%struct.b2Polygon = type { [8 x %struct.b2Vec2], [8 x %struct.b2Vec2], %struct.b2Vec2, float, i32 }
%struct.b2MassData = type { float, %struct.b2Vec2, float }
%struct.b2DistanceInput = type { %struct.b2ShapeProxy, %struct.b2ShapeProxy, %struct.b2Transform, i8 }
%struct.b2ShapeProxy = type { [8 x %struct.b2Vec2], i32, float }
%struct.b2SimplexCache = type { i16, [3 x i8], [3 x i8] }
%struct.b2DistanceOutput = type { %struct.b2Vec2, %struct.b2Vec2, %struct.b2Vec2, float, i32, i32 }
%struct.b2CastOutput = type { %struct.b2Vec2, %struct.b2Vec2, float, i32, i8 }
%struct.b2Circle = type { %struct.b2Vec2, float }
%struct.b2ShapeCastPairInput = type { %struct.b2ShapeProxy, %struct.b2ShapeProxy, %struct.b2Transform, %struct.b2Vec2, float, i8 }
%struct.b2PlaneResult = type { %struct.b2Plane, %struct.b2Vec2, i8 }
%struct.b2Plane = type { %struct.b2Vec2, float }

@b2Transform_identity = internal unnamed_addr constant %struct.b2Transform { %struct.b2Vec2 zeroinitializer, %struct.b2Rot { float 1.000000e+00, float 0.000000e+00 } }, align 4

; Function Attrs: nounwind uwtable
define zeroext i1 @b2IsValidRay(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load <2 x float>, ptr %0, align 4
  %i.b = tail call zeroext i1 @b2IsValidVec2(<2 x float> %i.a) #19
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load <2 x float>, ptr %i.c, align 4
  %i.e = tail call zeroext i1 @b2IsValidVec2(<2 x float> %i.d) #19
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load float, ptr %i.f, align 4, !tbaa !15
  %i.h = tail call zeroext i1 @b2IsValidFloat(float noundef %i.g) #19
  br i1 %i.h, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = load float, ptr %i.f, align 4, !tbaa !15 ; 2 uses
  %i.j = fcmp ult float %i.i, 0.000000e+00
  br i1 %i.j, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call float @b2GetLengthUnitsPerMeter() #19
  %i.l = fmul float %i.k, 1.000000e+05
  %i.m = fcmp olt float %i.i, %i.l
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.n = phi i1 [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ], [ %i.m, %bb.e ]
  ret i1 %i.n
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare zeroext i1 @b2IsValidVec2(<2 x float>) local_unnamed_addr #2

declare zeroext i1 @b2IsValidFloat(float noundef) local_unnamed_addr #2

declare float @b2GetLengthUnitsPerMeter() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @b2MakePolygon(ptr dead_on_unwind noalias nofree writable sret(%struct.b2Polygon) align 4 captures(none) initializes((0, 144)) %0, ptr nofree noundef readonly captures(none) %1, float noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load i32, ptr %i.a, align 4, !tbaa !17   ; 5 uses
  %i.c = icmp slt i32 %i.b, 3
  br i1 %i.c, label %bb.b, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(96) %i.d, i8 0, i64 96, i1 false), !alias.scope !58
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 4, ptr %i.e, align 4, !tbaa !19, !alias.scope !58
  store <4 x float> <float -5.000000e-01, float -5.000000e-01, float 5.000000e-01, float -5.000000e-01>, ptr %0, align 4, !tbaa !20, !alias.scope !58
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> <float 5.000000e-01, float 5.000000e-01, float -5.000000e-01, float 5.000000e-01>, ptr %i.f, align 4, !tbaa !20, !alias.scope !58
  %.sroa.26.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 68
  store <2 x float> <float -1.000000e+00, float 1.000000e+00>, ptr %.sroa.26.0..sroa_idx.i.i, align 4, !tbaa !20, !alias.scope !58
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 84
  store <2 x float> <float 1.000000e+00, float -1.000000e+00>, ptr %.sroa.22.0..sroa_idx.i.i, align 4, !tbaa !20, !alias.scope !58
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  store float 0.000000e+00, ptr %i.g, align 4, !tbaa !21, !alias.scope !58
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 0, ptr %i.h, align 4, !tbaa !20, !alias.scope !58
  br label %bb.f

.lr.ph:                                           ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(144) %0, i8 0, i64 136, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 %i.b, ptr %i.i, align 4, !tbaa !19
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  store float %2, ptr %i.j, align 4, !tbaa !21
  %i.k = zext nneg i32 %i.b to i64                ; 2 uses
  %i.l = shl nuw nsw i64 %i.k, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %0, ptr nonnull align 4 %1, i64 %i.l, i1 false), !tbaa !20
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = zext nneg i32 %i.b to i64
  br label %bb.d

.lr.ph.i:                                         ; preds = %b2Normalize.exit
  %.sroa.013.0.copyload.i = load <2 x float>, ptr %0, align 4, !tbaa !20 ; 3 uses
  %i.o = add nsw i32 %i.b, -1
  %wide.trip.count.i = zext nneg i32 %i.o to i64
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i = load <2 x float>, ptr %.phi.trans.insert.i, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %i.p = phi <2 x float> [ %.pre.i, %.lr.ph.i ], [ %i.r, %bb.c ]
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ]
  %.sroa.022.053.i = phi <2 x float> [ zeroinitializer, %.lr.ph.i ], [ %i.ad, %bb.c ]
  %.052.i = phi float [ 0.000000e+00, %.lr.ph.i ], [ %i.ae, %bb.c ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.i
  %i.r = load <2 x float>, ptr %i.q, align 4      ; 2 uses
  %i.s = fsub <2 x float> %i.p, %.sroa.013.0.copyload.i ; 2 uses
  %i.t = fsub <2 x float> %i.r, %.sroa.013.0.copyload.i ; 2 uses
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.v = fmul <2 x float> %i.s, %i.u              ; 2 uses
  %shift = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %i.v, %shift
  %i.w = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.x = fmul float %i.w, 5.000000e-01            ; 2 uses
  %i.y = fmul float %i.x, f0x3EAAAAAB
  %i.z = fadd <2 x float> %i.s, %i.t
  %i.aa = insertelement <2 x float> poison, float %i.y, i64 0
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ac = fmul <2 x float> %i.z, %i.ab
  %i.ad = fadd <2 x float> %.sroa.022.053.i, %i.ac ; 2 uses
  %i.ae = fadd float %.052.i, %i.x                ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %b2ComputePolygonCentroid.exit, label %bb.c, !llvm.loop !0

b2ComputePolygonCentroid.exit:                    ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ag = fdiv float 1.000000e+00, %i.ae
  %i.ah = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aj = fmul <2 x float> %i.ai, %i.ad
  %i.ak = fadd <2 x float> %.sroa.013.0.copyload.i, %i.aj
  store <2 x float> %i.ak, ptr %i.af, align 4, !tbaa !20
  br label %bb.f

bb.d:                                             ; preds = %.lr.ph, %b2Normalize.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %b2Normalize.exit ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.al = icmp samesign ult i64 %indvars.iv.next, %i.n
  %i.am = select i1 %i.al, i64 %indvars.iv.next, i64 0
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.am
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.ap = load <2 x float>, ptr %i.an, align 4
  %i.aq = load <2 x float>, ptr %i.ao, align 4
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.as = fsub <2 x float> %i.ap, %i.aq           ; 4 uses
  %i.at = fmul <2 x float> %i.as, %i.as
  %i.au = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.at) ; 2 uses
  %i.av = fcmp ogt float %i.au, f0x057A0000
  br i1 %i.av, label %bb.e, label %b2Normalize.exit

bb.e:                                             ; preds = %bb.d
  %3 = extractelement <2 x float> %i.as, i64 0
  %4 = fneg float %3
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.au)
  %i.aw = fdiv float 1.000000e+00, %sqrt.i        ; 2 uses
  %5 = extractelement <2 x float> %i.as, i64 1
  %6 = fmul float %5, %i.aw
  %.sroa.012.0.vec.insert.i = insertelement <2 x float> poison, float %6, i64 0
  %7 = fmul float %i.aw, %4
  %.sroa.012.4.vec.insert.i = insertelement <2 x float> %.sroa.012.0.vec.insert.i, float %7, i64 1
  br label %b2Normalize.exit

b2Normalize.exit:                                 ; preds = %bb.d, %bb.e
  %.sroa.012.0.i = phi <2 x float> [ %.sroa.012.4.vec.insert.i, %bb.e ], [ zeroinitializer, %bb.d ]
  store <2 x float> %.sroa.012.0.i, ptr %i.ar, align 4, !tbaa !20
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.k
  br i1 %exitcond.not, label %.lr.ph.i, label %bb.d, !llvm.loop !57

bb.f:                                             ; preds = %b2ComputePolygonCentroid.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @b2MakeSquare(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b2Polygon) align 4 captures(none) initializes((0, 144)) %0, float noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(96) %i.a, i8 0, i64 96, i1 false), !alias.scope !61
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 4, ptr %i.b, align 4, !tbaa !19, !alias.scope !61
  %i.c = fneg float %1                            ; 4 uses
  store float %i.c, ptr %0, align 4, !tbaa !20, !alias.scope !61
  %.sroa.214.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.c, ptr %.sroa.214.0..sroa_idx.i, align 4, !tbaa !20, !alias.scope !61
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %1, ptr %i.d, align 4, !tbaa !20, !alias.scope !61
  %.sroa.212.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.c, ptr %.sroa.212.0..sroa_idx.i, align 4, !tbaa !20, !alias.scope !61
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %1, ptr %i.e, align 4, !tbaa !20, !alias.scope !61
  %.sroa.210.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %1, ptr %.sroa.210.0..sroa_idx.i, align 4, !tbaa !20, !alias.scope !61
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.c, ptr %i.f, align 4, !tbaa !20, !alias.scope !61
  %.sroa.28.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %1, ptr %.sroa.28.0..sroa_idx.i, align 4, !tbaa !20, !alias.scope !61
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 68
  store <2 x float> <float -1.000000e+00, float 1.000000e+00>, ptr %.sroa.26.0..sroa_idx.i, align 4, !tbaa !20, !alias.scope !61
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 84
  store <2 x float> <float 1.000000e+00, float -1.000000e+00>, ptr %.sroa.22.0..sroa_idx.i, align 4, !tbaa !20, !alias.scope !61
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  store float 0.000000e+00, ptr %i.g, align 4, !tbaa !21, !alias.scope !61
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 0, ptr %i.h, align 4, !tbaa !20, !alias.scope !61
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @b2MakeOffsetPolygon(ptr dead_on_unwind noalias nofree writable sret(%struct.b2Polygon) align 4 captures(none) initializes((0, 144)) %0, ptr nofree noundef readonly captures(none) %1, <2 x float> %2, <2 x float> %3) local_unnamed_addr #6 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load i32, ptr %i.a, align 4, !tbaa !17, !noalias !68 ; 5 uses
  %i.c = icmp slt i32 %i.b, 3
  br i1 %i.c, label %bb.b, label %.new

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(96) %i.d, i8 0, i64 96, i1 false), !alias.scope !69
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 4, ptr %i.e, align 4, !tbaa !19, !alias.scope !69
  store <4 x float> <float -5.000000e-01, float -5.000000e-01, float 5.000000e-01, float -5.000000e-01>, ptr %0, align 4, !tbaa !20, !alias.scope !69
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> <float 5.000000e-01, float 5.000000e-01, float -5.000000e-01, float 5.000000e-01>, ptr %i.f, align 4, !tbaa !20, !alias.scope !69
  %.sroa.26.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 68
  store <2 x float> <float -1.000000e+00, float 1.000000e+00>, ptr %.sroa.26.0..sroa_idx.i.i.i, align 4, !tbaa !20, !alias.scope !69
  %.sroa.22.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 84
  store <2 x float> <float 1.000000e+00, float -1.000000e+00>, ptr %.sroa.22.0..sroa_idx.i.i.i, align 4, !tbaa !20, !alias.scope !69
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  store float 0.000000e+00, ptr %i.g, align 4, !tbaa !21, !alias.scope !69
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 0, ptr %i.h, align 4, !tbaa !20, !alias.scope !69
  br label %b2MakeOffsetRoundedPolygon.exit

.new:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(144) %0, i8 0, i64 136, i1 false), !alias.scope !68
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 %i.b, ptr %i.i, align 4, !tbaa !19, !alias.scope !68
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  store float 0.000000e+00, ptr %i.j, align 4, !tbaa !21, !alias.scope !68
  %wide.trip.count.i = zext nneg i32 %i.b to i64  ; 4 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %i.k = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.l = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %bb.c

.lr.ph.i.unr-lcssa:                               ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph.i.unr-lcssa
  %lcmp.mod13 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod13)
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.i.1
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.i.1
  %i.o = load <2 x float>, ptr %i.n, align 4, !noalias !68 ; 2 uses
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> zeroinitializer
  %i.q = fmul <2 x float> %3, %i.p                ; 2 uses
  %i.r = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.s = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.t = fmul <2 x float> %i.r, %i.s              ; 2 uses
  %i.u = fsub <2 x float> %i.q, %i.t
  %i.v = fadd <2 x float> %i.q, %i.t
  %i.w = shufflevector <2 x float> %i.u, <2 x float> %i.v, <2 x i32> <i32 0, i32 3>
  %i.x = fadd <2 x float> %2, %i.w
  store <2 x float> %i.x, ptr %i.m, align 4, !tbaa !20, !alias.scope !68
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.unr-lcssa, %.epil.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.e

bb.c:                                             ; preds = %bb.c, %.new
  %indvars.iv.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.1, %bb.c ] ; 4 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i
  %i.ab = load <2 x float>, ptr %i.aa, align 4, !noalias !68 ; 2 uses
  %i.ac = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ad = fmul <2 x float> %3, %i.ac              ; 2 uses
  %i.ae = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.af = fmul <2 x float> %i.k, %i.ae            ; 2 uses
  %i.ag = fsub <2 x float> %i.ad, %i.af
  %i.ah = fadd <2 x float> %i.ad, %i.af
  %i.ai = shufflevector <2 x float> %i.ag, <2 x float> %i.ah, <2 x i32> <i32 0, i32 3>
  %i.aj = fadd <2 x float> %2, %i.ai
  store <2 x float> %i.aj, ptr %i.z, align 4, !tbaa !20, !alias.scope !68
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.i
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.i
  %i.am = load <2 x float>, ptr %i.al, align 4, !noalias !68 ; 2 uses
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ao = fmul <2 x float> %3, %i.an              ; 2 uses
  %i.ap = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aq = fmul <2 x float> %i.l, %i.ap            ; 2 uses
  %i.ar = fsub <2 x float> %i.ao, %i.aq
  %i.as = fadd <2 x float> %i.ao, %i.aq
  %i.at = shufflevector <2 x float> %i.ar, <2 x float> %i.as, <2 x i32> <i32 0, i32 3>
  %i.au = fadd <2 x float> %2, %i.at
  store <2 x float> %i.au, ptr %i.ak, align 4, !tbaa !20, !alias.scope !68
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 3 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.i.unr-lcssa, label %bb.c, !llvm.loop !1

.lr.ph.i.i:                                       ; preds = %b2Normalize.exit.i
  %.sroa.013.0.copyload.i.i = load <2 x float>, ptr %0, align 4, !tbaa !20, !alias.scope !68 ; 3 uses
  %i.av = add nsw i32 %i.b, -1
  %wide.trip.count.i.i = zext nneg i32 %i.av to i64
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i.i = load <2 x float>, ptr %.phi.trans.insert.i.i, align 4, !alias.scope !68
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i
  %i.aw = phi <2 x float> [ %.pre.i.i, %.lr.ph.i.i ], [ %i.ay, %bb.d ]
  %indvars.iv.i.i = phi i64 [ 1, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.d ]
  %.sroa.022.053.i.i = phi <2 x float> [ zeroinitializer, %.lr.ph.i.i ], [ %i.bk, %bb.d ]
  %.052.i.i = phi float [ 0.000000e+00, %.lr.ph.i.i ], [ %i.bl, %bb.d ]
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.i.i
  %i.ay = load <2 x float>, ptr %i.ax, align 4, !alias.scope !68 ; 2 uses
  %i.az = fsub <2 x float> %i.aw, %.sroa.013.0.copyload.i.i ; 2 uses
  %i.ba = fsub <2 x float> %i.ay, %.sroa.013.0.copyload.i.i ; 2 uses
  %i.bb = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bc = fmul <2 x float> %i.az, %i.bb           ; 2 uses
  %shift = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %i.bc, %shift
  %i.bd = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.be = fmul float %i.bd, 5.000000e-01          ; 2 uses
  %i.bf = fmul float %i.be, f0x3EAAAAAB
  %i.bg = fadd <2 x float> %i.az, %i.ba
  %i.bh = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.bi = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bj = fmul <2 x float> %i.bg, %i.bi
  %i.bk = fadd <2 x float> %.sroa.022.053.i.i, %i.bj ; 2 uses
  %i.bl = fadd float %.052.i.i, %i.be             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %b2ComputePolygonCentroid.exit.i, label %bb.d, !llvm.loop !0

b2ComputePolygonCentroid.exit.i:                  ; preds = %bb.d
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bn = fdiv float 1.000000e+00, %i.bl
  %i.bo = insertelement <2 x float> poison, float %i.bn, i64 0
  %i.bp = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bq = fmul <2 x float> %i.bp, %i.bk
  %i.br = fadd <2 x float> %.sroa.013.0.copyload.i.i, %i.bq
  store <2 x float> %i.br, ptr %i.bm, align 4, !tbaa !20, !alias.scope !68
  br label %b2MakeOffsetRoundedPolygon.exit

bb.e:                                             ; preds = %b2Normalize.exit.i, %.lr.ph.i
  %indvars.iv37.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next38.i, %b2Normalize.exit.i ] ; 3 uses
  %indvars.iv.next38.i = add nuw nsw i64 %indvars.iv37.i, 1 ; 4 uses
  %i.bs = icmp samesign ult i64 %indvars.iv.next38.i, %wide.trip.count.i
  %i.bt = select i1 %i.bs, i64 %indvars.iv.next38.i, i64 0
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bt
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv37.i
  %i.bw = load <2 x float>, ptr %i.bu, align 4, !alias.scope !68
  %i.bx = load <2 x float>, ptr %i.bv, align 4, !alias.scope !68
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv37.i
  %i.bz = fsub <2 x float> %i.bw, %i.bx           ; 4 uses
  %i.ca = fmul <2 x float> %i.bz, %i.bz
  %i.cb = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ca) ; 2 uses
  %i.cc = fcmp ogt float %i.cb, f0x057A0000
  br i1 %i.cc, label %bb.f, label %b2Normalize.exit.i

bb.f:                                             ; preds = %bb.e
  %4 = extractelement <2 x float> %i.bz, i64 0
  %5 = fneg float %4
  %sqrt.i.i = tail call float @llvm.sqrt.f32(float %i.cb)
  %i.cd = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %6 = extractelement <2 x float> %i.bz, i64 1
  %7 = fmul float %6, %i.cd
  %.sroa.012.0.vec.insert.i.i = insertelement <2 x float> poison, float %7, i64 0
  %8 = fmul float %i.cd, %5
  %.sroa.012.4.vec.insert.i.i = insertelement <2 x float> %.sroa.012.0.vec.insert.i.i, float %8, i64 1
  br label %b2Normalize.exit.i

b2Normalize.exit.i:                               ; preds = %bb.f, %bb.e
  %.sroa.012.0.i.i = phi <2 x float> [ %.sroa.012.4.vec.insert.i.i, %bb.f ], [ zeroinitializer, %bb.e ]
  store <2 x float> %.sroa.012.0.i.i, ptr %i.by, align 4, !tbaa !20, !alias.scope !68
  %exitcond41.not.i = icmp eq i64 %indvars.iv.next38.i, %wide.trip.count.i
  br i1 %exitcond41.not.i, label %.lr.ph.i.i, label %bb.e, !llvm.loop !2

b2MakeOffsetRoundedPolygon.exit:                  ; preds = %bb.b, %b2ComputePolygonCentroid.exit.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @b2MakeOffsetRoundedPolygon(ptr dead_on_unwind noalias nofree writable sret(%struct.b2Polygon) align 4 captures(none) initializes((0, 144)) %0, ptr nofree noundef readonly captures(none) %1, <2 x float> %2, <2 x float> %3, float noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load i32, ptr %i.a, align 4, !tbaa !17   ; 6 uses
  %i.c = icmp slt i32 %i.b, 3
  br i1 %i.c, label %bb.b, label %.new

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(96) %i.d, i8 0, i64 96, i1 false), !alias.scope !74
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 4, ptr %i.e, align 4, !tbaa !19, !alias.scope !74
  store <4 x float> <float -5.000000e-01, float -5.000000e-01, float 5.000000e-01, float -5.000000e-01>, ptr %0, align 4, !tbaa !20, !alias.scope !74
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> <float 5.000000e-01, float 5.000000e-01, float -5.000000e-01, float 5.000000e-01>, ptr %i.f, align 4, !tbaa !20, !alias.scope !74
  %.sroa.26.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 68
  store <2 x float> <float -1.000000e+00, float 1.000000e+00>, ptr %.sroa.26.0..sroa_idx.i.i, align 4, !tbaa !20, !alias.scope !74
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 84
  store <2 x float> <float 1.000000e+00, float -1.000000e+00>, ptr %.sroa.22.0..sroa_idx.i.i, align 4, !tbaa !20, !alias.scope !74
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  store float 0.000000e+00, ptr %i.g, align 4, !tbaa !21, !alias.scope !74
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 0, ptr %i.h, align 4, !tbaa !20, !alias.scope !74
  br label %bb.g

.new:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(144) %0, i8 0, i64 136, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 %i.b, ptr %i.i, align 4, !tbaa !19
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  store float %4, ptr %i.j, align 4, !tbaa !21
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %i.k = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.l = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %bb.c

.lr.ph.unr-lcssa:                                 ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph.unr-lcssa
  %lcmp.mod49 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod49)
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.1
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.o = load <2 x float>, ptr %i.n, align 4      ; 2 uses
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> zeroinitializer
  %i.q = fmul <2 x float> %3, %i.p                ; 2 uses
  %i.r = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.s = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.t = fmul <2 x float> %i.r, %i.s              ; 2 uses
  %i.u = fsub <2 x float> %i.q, %i.t
  %i.v = fadd <2 x float> %i.q, %i.t
  %i.w = shufflevector <2 x float> %i.u, <2 x float> %i.v, <2 x i32> <i32 0, i32 3>
  %i.x = fadd <2 x float> %2, %i.w
  store <2 x float> %i.x, ptr %i.m, align 4, !tbaa !20
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.unr-lcssa, %.epil.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.z = zext nneg i32 %i.b to i64
  br label %bb.e

bb.c:                                             ; preds = %bb.c, %.new
  %indvars.iv = phi i64 [ 0, %.new ], [ %indvars.iv.next.1, %bb.c ] ; 4 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.ac = load <2 x float>, ptr %i.ab, align 4    ; 2 uses
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ae = fmul <2 x float> %3, %i.ad              ; 2 uses
  %i.af = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ag = fmul <2 x float> %i.k, %i.af            ; 2 uses
  %i.ah = fsub <2 x float> %i.ae, %i.ag
  %i.ai = fadd <2 x float> %i.ae, %i.ag
  %i.aj = shufflevector <2 x float> %i.ah, <2 x float> %i.ai, <2 x i32> <i32 0, i32 3>
  %i.ak = fadd <2 x float> %2, %i.aj
  store <2 x float> %i.ak, ptr %i.aa, align 4, !tbaa !20
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.an = load <2 x float>, ptr %i.am, align 4    ; 2 uses
  %i.ao = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ap = fmul <2 x float> %3, %i.ao              ; 2 uses
  %i.aq = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ar = fmul <2 x float> %i.l, %i.aq            ; 2 uses
  %i.as = fsub <2 x float> %i.ap, %i.ar
  %i.at = fadd <2 x float> %i.ap, %i.ar
  %i.au = shufflevector <2 x float> %i.as, <2 x float> %i.at, <2 x i32> <i32 0, i32 3>
  %i.av = fadd <2 x float> %2, %i.au
  store <2 x float> %i.av, ptr %i.al, align 4, !tbaa !20
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.unr-lcssa, label %bb.c, !llvm.loop !1

.lr.ph.i:                                         ; preds = %b2Normalize.exit
  %.sroa.013.0.copyload.i = load <2 x float>, ptr %0, align 4, !tbaa !20 ; 3 uses
  %i.aw = add nsw i32 %i.b, -1
  %wide.trip.count.i = zext nneg i32 %i.aw to i64
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i = load <2 x float>, ptr %.phi.trans.insert.i, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %i.ax = phi <2 x float> [ %.pre.i, %.lr.ph.i ], [ %i.az, %bb.d ]
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ]
  %.sroa.022.053.i = phi <2 x float> [ zeroinitializer, %.lr.ph.i ], [ %i.bl, %bb.d ]
  %.052.i = phi float [ 0.000000e+00, %.lr.ph.i ], [ %i.bm, %bb.d ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.i
  %i.az = load <2 x float>, ptr %i.ay, align 4    ; 2 uses
  %i.ba = fsub <2 x float> %i.ax, %.sroa.013.0.copyload.i ; 2 uses
  %i.bb = fsub <2 x float> %i.az, %.sroa.013.0.copyload.i ; 2 uses
  %i.bc = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bd = fmul <2 x float> %i.ba, %i.bc           ; 2 uses
  %shift = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %i.bd, %shift
  %i.be = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bf = fmul float %i.be, 5.000000e-01          ; 2 uses
  %i.bg = fmul float %i.bf, f0x3EAAAAAB
  %i.bh = fadd <2 x float> %i.ba, %i.bb
  %i.bi = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.bj = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bk = fmul <2 x float> %i.bh, %i.bj
  %i.bl = fadd <2 x float> %.sroa.022.053.i, %i.bk ; 2 uses
  %i.bm = fadd float %.052.i, %i.bf               ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %b2ComputePolygonCentroid.exit, label %bb.d, !llvm.loop !0

b2ComputePolygonCentroid.exit:                    ; preds = %bb.d
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bo = fdiv float 1.000000e+00, %i.bm
  %i.bp = insertelement <2 x float> poison, float %i.bo, i64 0
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.br = fmul <2 x float> %i.bq, %i.bl
  %i.bs = fadd <2 x float> %.sroa.013.0.copyload.i, %i.br
  store <2 x float> %i.bs, ptr %i.bn, align 4, !tbaa !20
  br label %bb.g

bb.e:                                             ; preds = %.lr.ph, %b2Normalize.exit
  %indvars.iv37 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next38, %b2Normalize.exit ] ; 3 uses
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1 ; 4 uses
  %i.bt = icmp samesign ult i64 %indvars.iv.next38, %i.z
  %i.bu = select i1 %i.bt, i64 %indvars.iv.next38, i64 0
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bu
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv37
  %i.bx = load <2 x float>, ptr %i.bv, align 4
  %i.by = load <2 x float>, ptr %i.bw, align 4
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv37
  %i.ca = fsub <2 x float> %i.bx, %i.by           ; 4 uses
  %i.cb = fmul <2 x float> %i.ca, %i.ca
  %i.cc = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.cb) ; 2 uses
  %i.cd = fcmp ogt float %i.cc, f0x057A0000
  br i1 %i.cd, label %bb.f, label %b2Normalize.exit

bb.f:                                             ; preds = %bb.e
  %5 = extractelement <2 x float> %i.ca, i64 0
  %6 = fneg float %5
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.cc)
  %i.ce = fdiv float 1.000000e+00, %sqrt.i        ; 2 uses
  %7 = extractelement <2 x float> %i.ca, i64 1
  %8 = fmul float %7, %i.ce
  %.sroa.012.0.vec.insert.i = insertelement <2 x float> poison, float %8, i64 0
  %9 = fmul float %i.ce, %6
  %.sroa.012.4.vec.insert.i = insertelement <2 x float> %.sroa.012.0.vec.insert.i, float %9, i64 1
  br label %b2Normalize.exit

b2Normalize.exit:                                 ; preds = %bb.e, %bb.f
  %.sroa.012.0.i = phi <2 x float> [ %.sroa.012.4.vec.insert.i, %bb.f ], [ zeroinitializer, %bb.e ]
  store <2 x float> %.sroa.012.0.i, ptr %i.bz, align 4, !tbaa !20
  %exitcond41.not = icmp eq i64 %indvars.iv.next38, %wide.trip.count
  br i1 %exitcond41.not, label %.lr.ph.i, label %bb.e, !llvm.loop !2

bb.g:                                             ; preds = %b2ComputePolygonCentroid.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @b2MakeBox(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b2Polygon) align 4 captures(none) initializes((0, 144)) %0, float noundef %1, float noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(96) %i.a, i8 0, i64 96, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 4, ptr %i.b, align 4, !tbaa !19
  %i.c = fneg float %1                            ; 2 uses
  %i.d = fneg float %2                            ; 2 uses
  store float %i.c, ptr %0, align 4, !tbaa !20
  %.sroa.214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.d, ptr %.sroa.214.0..sroa_idx, align 4, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %1, ptr %i.e, align 4, !tbaa !20
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.d, ptr %.sroa.212.0..sroa_idx, align 4, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %1, ptr %i.f, align 4, !tbaa !20
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %2, ptr %.sroa.210.0..sroa_idx, align 4, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.c, ptr %i.g, align 4, !tbaa !20
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %2, ptr %.sroa.28.0..sroa_idx, align 4, !tbaa !20
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 68
  store <2 x float> <float -1.000000e+00, float 1.000000e+00>, ptr %.sroa.26.0..sroa_idx, align 4, !tbaa !20
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.h, align 4, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store float -1.000000e+00, ptr %i.i, align 4, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  store float 0.000000e+00, ptr %i.j, align 4, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 0, ptr %i.k, align 4, !tbaa !20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @b2MakeRoundedBox(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b2Polygon) align 4 captures(none) initializes((0, 144)) %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(96) %i.a, i8 0, i64 96, i1 false), !alias.scope !77
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 4, ptr %i.b, align 4, !tbaa !19, !alias.scope !77
  %i.c = fneg float %1                            ; 2 uses
  %i.d = fneg float %2                            ; 2 uses
  store float %i.c, ptr %0, align 4, !tbaa !20, !alias.scope !77
  %.sroa.214.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.d, ptr %.sroa.214.0..sroa_idx.i, align 4, !tbaa !20, !alias.scope !77
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %1, ptr %i.e, align 4, !tbaa !20, !alias.scope !77
  %.sroa.212.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.d, ptr %.sroa.212.0..sroa_idx.i, align 4, !tbaa !20, !alias.scope !77
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %1, ptr %i.f, align 4, !tbaa !20, !alias.scope !77
  %.sroa.210.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %2, ptr %.sroa.210.0..sroa_idx.i, align 4, !tbaa !20, !alias.scope !77
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.c, ptr %i.g, align 4, !tbaa !20, !alias.scope !77
  %.sroa.28.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %2, ptr %.sroa.28.0..sroa_idx.i, align 4, !tbaa !20, !alias.scope !77
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 68
  store <2 x float> <float -1.000000e+00, float 1.000000e+00>, ptr %.sroa.26.0..sroa_idx.i, align 4, !tbaa !20, !alias.scope !77
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 84
  store <2 x float> <float 1.000000e+00, float -1.000000e+00>, ptr %.sroa.22.0..sroa_idx.i, align 4, !tbaa !20, !alias.scope !77
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 0, ptr %i.i, align 4, !tbaa !20, !alias.scope !77
  store float %3, ptr %i.h, align 4, !tbaa !21
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @b2MakeOffsetBox(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b2Polygon) align 4 captures(none) initializes((0, 144)) %0, float noundef %1, float noundef %2, <2 x float> %3, <2 x float> %4) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(96) %i.a, i8 0, i64 96, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 4, ptr %i.b, align 4, !tbaa !19
  %i.c = fneg float %1                            ; 2 uses
  %i.d = fneg float %2                            ; 2 uses
  %.sroa.3.8.vec.extract.i = extractelement <2 x float> %4, i64 0 ; 4 uses
  %.sroa.06.0.vec.extract.i = extractelement <2 x float> %3, i64 0 ; 4 uses
  %i.e = fmul float %.sroa.3.8.vec.extract.i, %i.d ; 2 uses
  %.sroa.06.4.vec.extract.i = extractelement <2 x float> %3, i64 1 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = fmul float %2, %.sroa.3.8.vec.extract.i  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = fmul float %.sroa.3.8.vec.extract.i, 0.000000e+00 ; 2 uses
  %i.l = fneg float %.sroa.3.8.vec.extract.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.3.12.vec.extract.i = extractelement <2 x float> %4, i64 1 ; 3 uses
  %i.p = fmul float %.sroa.3.12.vec.extract.i, %i.c ; 2 uses
  %i.q = fadd float %i.p, %i.e
  %i.r = fadd float %.sroa.06.4.vec.extract.i, %i.q
  %i.s = fmul float %1, %.sroa.3.12.vec.extract.i ; 2 uses
  %i.t = fadd float %i.s, %i.e
  %i.u = fadd float %.sroa.06.4.vec.extract.i, %i.t
  %i.v = fadd float %i.s, %i.h
  %i.w = fadd float %.sroa.06.4.vec.extract.i, %i.v
  %i.x = insertelement <2 x float> poison, float %i.c, i64 0
  %i.y = insertelement <2 x float> %i.x, float %1, i64 1
  %i.z = shufflevector <2 x float> %4, <2 x float> poison, <4 x i32> zeroinitializer
  %i.aa = shufflevector <2 x float> %i.y, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ab = fmul <4 x float> %i.z, %i.aa
  %i.ac = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ad = insertelement <2 x float> poison, float %i.d, i64 0
  %i.ae = insertelement <2 x float> %i.ad, float %2, i64 1
  %i.af = fmul <2 x float> %i.ac, %i.ae
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ah = fsub <4 x float> %i.ab, %i.ag           ; 4 uses
  %i.ai = extractelement <4 x float> %i.ah, i64 0
  %i.aj = fadd float %.sroa.06.0.vec.extract.i, %i.ai
  %.sroa.011.0.vec.insert.i = insertelement <2 x float> poison, float %i.aj, i64 0
  %.sroa.011.4.vec.insert.i = insertelement <2 x float> %.sroa.011.0.vec.insert.i, float %i.r, i64 1
  store <2 x float> %.sroa.011.4.vec.insert.i, ptr %0, align 4, !tbaa !20
  %i.ak = extractelement <4 x float> %i.ah, i64 1
  %i.al = fadd float %.sroa.06.0.vec.extract.i, %i.ak
  %.sroa.011.0.vec.insert.i49 = insertelement <2 x float> poison, float %i.al, i64 0
  %.sroa.011.4.vec.insert.i50 = insertelement <2 x float> %.sroa.011.0.vec.insert.i49, float %i.u, i64 1
  store <2 x float> %.sroa.011.4.vec.insert.i50, ptr %i.f, align 4, !tbaa !20
  %i.am = extractelement <4 x float> %i.ah, i64 3
  %i.an = fadd float %.sroa.06.0.vec.extract.i, %i.am
  %.sroa.011.0.vec.insert.i55 = insertelement <2 x float> poison, float %i.an, i64 0
  %.sroa.011.4.vec.insert.i56 = insertelement <2 x float> %.sroa.011.0.vec.insert.i55, float %i.w, i64 1
  store <2 x float> %.sroa.011.4.vec.insert.i56, ptr %i.g, align 4, !tbaa !20
  %i.ao = extractelement <4 x float> %i.ah, i64 2
  %i.ap = fadd float %.sroa.06.0.vec.extract.i, %i.ao
  %i.aq = fadd float %i.p, %i.h
  %i.ar = fadd float %.sroa.06.4.vec.extract.i, %i.aq
  %.sroa.011.0.vec.insert.i61 = insertelement <2 x float> poison, float %i.ap, i64 0
  %.sroa.011.4.vec.insert.i62 = insertelement <2 x float> %.sroa.011.0.vec.insert.i61, float %i.ar, i64 1
  store <2 x float> %.sroa.011.4.vec.insert.i62, ptr %i.i, align 4, !tbaa !20
  %i.as = fadd float %.sroa.3.12.vec.extract.i, %i.k ; 2 uses
  %.sroa.010.0.vec.insert.i = insertelement <2 x float> poison, float %i.as, i64 0
  %i.at = fmul <2 x float> %i.ac, <float 0.000000e+00, float 1.000000e+00> ; 4 uses
  %foldExtExtBinop = fsub <2 x float> %i.at, %4
  %.sroa.010.4.vec.insert.i = shufflevector <2 x float> %.sroa.010.0.vec.insert.i, <2 x float> %foldExtExtBinop, <2 x i32> <i32 0, i32 2>
  store <2 x float> %.sroa.010.4.vec.insert.i, ptr %i.j, align 4, !tbaa !20
  %foldExtExtBinop76 = fsub <2 x float> %4, %i.at
  %.sroa.010.4.vec.insert.i66 = insertelement <2 x float> %foldExtExtBinop76, float %i.as, i64 1
  store <2 x float> %.sroa.010.4.vec.insert.i66, ptr %i.m, align 4, !tbaa !20
  %i.au = insertelement <2 x float> poison, float %i.l, i64 0
  %i.av = insertelement <2 x float> %i.au, float %i.k, i64 1
  %i.aw = fsub <2 x float> %i.av, %i.at           ; 2 uses
  %foldExtExtBinop78 = fadd <2 x float> %4, %i.at
  %.sroa.010.4.vec.insert.i70 = shufflevector <2 x float> %i.aw, <2 x float> %foldExtExtBinop78, <2 x i32> <i32 1, i32 2>
  store <2 x float> %.sroa.010.4.vec.insert.i70, ptr %i.n, align 4, !tbaa !20
  store <2 x float> %i.aw, ptr %i.o, align 4, !tbaa !20
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 136
  store float 0.000000e+00, ptr %i.ax, align 4, !tbaa !21
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <2 x float> %3, ptr %i.ay, align 4, !tbaa !20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @b2MakeOffsetRoundedBox(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b2Polygon) align 4 captures(none) initializes((0, 144)) %0, float noundef %1, float noundef %2, <2 x float> %3, <2 x float> %4, float noundef %5) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(96) %i.a, i8 0, i64 96, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 4, ptr %i.b, align 4, !tbaa !19
  %i.c = fneg float %1                            ; 2 uses
  %i.d = fneg float %2                            ; 2 uses
  %.sroa.3.8.vec.extract.i = extractelement <2 x float> %4, i64 0 ; 4 uses
  %.sroa.06.0.vec.extract.i = extractelement <2 x float> %3, i64 0 ; 4 uses
  %i.e = fmul float %.sroa.3.8.vec.extract.i, %i.d ; 2 uses
  %.sroa.06.4.vec.extract.i = extractelement <2 x float> %3, i64 1 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = fmul float %2, %.sroa.3.8.vec.extract.i  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = fmul float %.sroa.3.8.vec.extract.i, 0.000000e+00 ; 2 uses
  %i.l = fneg float %.sroa.3.8.vec.extract.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.3.12.vec.extract.i = extractelement <2 x float> %4, i64 1 ; 3 uses
  %i.p = fmul float %.sroa.3.12.vec.extract.i, %i.c ; 2 uses
  %i.q = fadd float %i.p, %i.e
  %i.r = fadd float %.sroa.06.4.vec.extract.i, %i.q
  %i.s = fmul float %1, %.sroa.3.12.vec.extract.i ; 2 uses
  %i.t = fadd float %i.s, %i.e
  %i.u = fadd float %.sroa.06.4.vec.extract.i, %i.t
  %i.v = fadd float %i.s, %i.h
  %i.w = fadd float %.sroa.06.4.vec.extract.i, %i.v
end_hunk_0
