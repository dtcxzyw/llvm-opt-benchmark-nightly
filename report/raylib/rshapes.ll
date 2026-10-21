Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rshapes?download=true
inline.NumInlined: 39
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Texture = type { i32, i32, i32, i32, i32 }
%struct.Rectangle = type { float, float, float, float }
%struct.Vector2 = type { float, float }
%struct.Matrix = type { float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }

@texShapes = internal unnamed_addr global %struct.Texture { i32 1, i32 1, i32 1, i32 1, i32 7 }, align 16
@texShapesRec = internal unnamed_addr global %struct.Rectangle { float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00 }, align 16
@__const.DrawRectangleRoundedLinesEx.angles = private unnamed_addr constant [4 x float] [float 1.800000e+02, float 2.700000e+02, float 0.000000e+00, float 9.000000e+01], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @SetShapesTexture(ptr nofree noundef readonly byval(%struct.Texture) align 8 captures(none) %0, <2 x float> %1, <2 x float> %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  %i.b = icmp eq i32 %i.a, 0
  %.sroa.211.8.vec.extract = extractelement <2 x float> %2, i64 0
  %i.c = fcmp oeq float %.sroa.211.8.vec.extract, 0.000000e+00
  %or.cond = select i1 %i.b, i1 true, i1 %i.c
  %.sroa.211.12.vec.extract = extractelement <2 x float> %2, i64 1
  %i.d = fcmp oeq float %.sroa.211.12.vec.extract, 0.000000e+00
  %or.cond5 = select i1 %or.cond, i1 true, i1 %i.d
  br i1 %or.cond5, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store <4 x i32> splat (i32 1), ptr @texShapes, align 16
  store i32 7, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 16), align 16
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr @texShapesRec, align 16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) @texShapes, ptr noundef nonnull align 8 dereferenceable(20) %0, i64 20, i1 false)
  store <2 x float> %1, ptr @texShapesRec, align 16
  store <2 x float> %2, ptr getelementptr inbounds nuw (i8, ptr @texShapesRec, i64 8), align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @GetShapesTexture(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.Texture) align 4 captures(none) initializes((0, 20)) %0) local_unnamed_addr #2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, ptr noundef nonnull align 16 dereferenceable(20) @texShapes, i64 20, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define { <2 x float>, <2 x float> } @GetShapesTextureRectangle() local_unnamed_addr #3 {
bb.a:
  %.sroa.0.0.copyload = load <2 x float>, ptr @texShapesRec, align 16
  %.sroa.2.0.copyload = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @texShapesRec, i64 8), align 8
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.2.0.copyload, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define void @DrawPixel(i32 noundef %0, i32 noundef %1, i32 %2) local_unnamed_addr #4 {
bb.a:
  %i.a = insertelement <2 x i32> poison, i32 %0, i64 0
  %i.b = insertelement <2 x i32> %i.a, i32 %1, i64 1
  %i.c = sitofp <2 x i32> %i.b to <2 x float>
  tail call void @DrawPixelV(<2 x float> %i.c, i32 %2)
  ret void
}

; Function Attrs: nounwind uwtable
define void @DrawPixelV(<2 x float> %0, i32 %1) local_unnamed_addr #4 {
bb.a:
  %.sroa.017.0.extract.trunc = trunc i32 %1 to i8
  %.sroa.2.0.extract.shift = lshr i32 %1, 8
  %.sroa.2.0.extract.trunc = trunc i32 %.sroa.2.0.extract.shift to i8
  %.sroa.3.0.extract.shift = lshr i32 %1, 16
  %.sroa.3.0.extract.trunc = trunc i32 %.sroa.3.0.extract.shift to i8
  %.sroa.4.0.extract.shift = lshr i32 %1, 24
  %.sroa.4.0.extract.trunc = trunc nuw i32 %.sroa.4.0.extract.shift to i8
  %.sroa.0.0.copyload = load i32, ptr @texShapes, align 16
  tail call void @rlSetTexture(i32 noundef %.sroa.0.0.copyload) #14
  %.sroa.0.0.copyload.i = load <2 x float>, ptr @texShapesRec, align 16 ; 4 uses
  %.sroa.2.0.copyload.i = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @texShapesRec, i64 8), align 8 ; 2 uses
  tail call void @rlBegin(i32 noundef 7) #14
  tail call void @rlNormal3f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00) #14
  tail call void @rlColor4ub(i8 noundef zeroext %.sroa.017.0.extract.trunc, i8 noundef zeroext %.sroa.2.0.extract.trunc, i8 noundef zeroext %.sroa.3.0.extract.trunc, i8 noundef zeroext %.sroa.4.0.extract.trunc) #14
  %.sroa.0.0.vec.extract = extractelement <2 x float> %.sroa.0.0.copyload.i, i64 0 ; 2 uses
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.b = sitofp i32 %i.a to float
  %i.c = fdiv float %.sroa.0.0.vec.extract, %i.b
  %.sroa.0.4.vec.extract = extractelement <2 x float> %.sroa.0.0.copyload.i, i64 1 ; 2 uses
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.e = sitofp i32 %i.d to float
  %i.f = fdiv float %.sroa.0.4.vec.extract, %i.e
  tail call void @rlTexCoord2f(float noundef %i.c, float noundef %i.f) #14
  %.sroa.018.0.vec.extract = extractelement <2 x float> %0, i64 0 ; 3 uses
  %.sroa.018.4.vec.extract = extractelement <2 x float> %0, i64 1 ; 3 uses
  tail call void @rlVertex2f(float noundef %.sroa.018.0.vec.extract, float noundef %.sroa.018.4.vec.extract) #14
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.h = sitofp i32 %i.g to float
  %i.i = fdiv float %.sroa.0.0.vec.extract, %i.h
  %foldExtExtBinop = fadd <2 x float> %.sroa.0.0.copyload.i, %.sroa.2.0.copyload.i
  %i.j = extractelement <2 x float> %foldExtExtBinop, i64 1 ; 2 uses
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.l = sitofp i32 %i.k to float
  %i.m = fdiv float %i.j, %i.l
  tail call void @rlTexCoord2f(float noundef %i.i, float noundef %i.m) #14
  %i.n = fadd float %.sroa.018.4.vec.extract, 1.000000e+00 ; 2 uses
  tail call void @rlVertex2f(float noundef %.sroa.018.0.vec.extract, float noundef %i.n) #14
  %foldExtExtBinop32 = fadd <2 x float> %.sroa.0.0.copyload.i, %.sroa.2.0.copyload.i
  %i.o = extractelement <2 x float> %foldExtExtBinop32, i64 0 ; 2 uses
  %i.p = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.q = sitofp i32 %i.p to float
  %i.r = fdiv float %i.o, %i.q
  %i.s = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.t = sitofp i32 %i.s to float
  %i.u = fdiv float %i.j, %i.t
  tail call void @rlTexCoord2f(float noundef %i.r, float noundef %i.u) #14
  %i.v = fadd float %.sroa.018.0.vec.extract, 1.000000e+00 ; 2 uses
  tail call void @rlVertex2f(float noundef %i.v, float noundef %i.n) #14
  %i.w = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.x = sitofp i32 %i.w to float
  %i.y = fdiv float %i.o, %i.x
  %i.z = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.aa = sitofp i32 %i.z to float
  %i.ab = fdiv float %.sroa.0.4.vec.extract, %i.aa
  tail call void @rlTexCoord2f(float noundef %i.y, float noundef %i.ab) #14
  tail call void @rlVertex2f(float noundef %i.v, float noundef %.sroa.018.4.vec.extract) #14
  tail call void @rlEnd() #14
  tail call void @rlSetTexture(i32 noundef 0) #14
  ret void
}

declare void @rlSetTexture(i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @rlBegin(i32 noundef) local_unnamed_addr #5

declare void @rlNormal3f(float noundef, float noundef, float noundef) local_unnamed_addr #5

declare void @rlColor4ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #5

declare void @rlTexCoord2f(float noundef, float noundef) local_unnamed_addr #5

declare void @rlVertex2f(float noundef, float noundef) local_unnamed_addr #5

declare void @rlEnd() local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @DrawLine(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 %4) local_unnamed_addr #6 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i32 %4 to i8
  %.sroa.2.0.extract.shift = lshr i32 %4, 8
  %.sroa.2.0.extract.trunc = trunc i32 %.sroa.2.0.extract.shift to i8
  %.sroa.3.0.extract.shift = lshr i32 %4, 16
  %.sroa.3.0.extract.trunc = trunc i32 %.sroa.3.0.extract.shift to i8
  %.sroa.4.0.extract.shift = lshr i32 %4, 24
  %.sroa.4.0.extract.trunc = trunc nuw i32 %.sroa.4.0.extract.shift to i8
  tail call void @rlBegin(i32 noundef 1) #14
  tail call void @rlColor4ub(i8 noundef zeroext %.sroa.0.0.extract.trunc, i8 noundef zeroext %.sroa.2.0.extract.trunc, i8 noundef zeroext %.sroa.3.0.extract.trunc, i8 noundef zeroext %.sroa.4.0.extract.trunc) #14
  %i.a = sitofp i32 %0 to float
  %i.b = sitofp i32 %1 to float
  tail call void @rlVertex2f(float noundef %i.a, float noundef %i.b) #14
  %i.c = sitofp i32 %2 to float
  %i.d = sitofp i32 %3 to float
  tail call void @rlVertex2f(float noundef %i.c, float noundef %i.d) #14
  tail call void @rlEnd() #14
  ret void
}

; Function Attrs: nounwind uwtable
define void @DrawLineEx(<2 x float> %0, <2 x float> %1, float noundef %2, i32 %3) local_unnamed_addr #4 {
bb.a:
  %4 = alloca [4 x %struct.Vector2], align 16     ; 5 uses
  %i.a = fsub <2 x float> %1, %0                  ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.a, %i.a
  %i.b = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.c = extractelement <2 x float> %i.a, i64 0   ; 2 uses
  %i.d = tail call float @llvm.fmuladd.f32(float %i.c, float %i.c, float %i.b)
  %i.e = tail call float @sqrtf(float noundef %i.d) #14 ; 2 uses
  %i.f = fcmp ogt float %i.e, 0.000000e+00
  %i.g = fcmp ogt float %2, 0.000000e+00
  %or.cond = and i1 %i.g, %i.f
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = shufflevector <2 x float> %0, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.i = shufflevector <2 x float> %1, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.j = fmul nnan float %i.e, 2.000000e+00
  %i.k = fdiv float %2, %i.j                      ; 2 uses
  %i.l = fneg float %i.k
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.m = insertelement <2 x float> poison, float %i.k, i64 0
  %i.n = insertelement <2 x float> %i.m, float %i.l, i64 1
  %i.o = fmul <2 x float> %i.a, %i.n
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 4 uses
  %i.q = fsub <4 x float> %i.h, %i.p
  %i.r = fadd <4 x float> %i.h, %i.p
  %i.s = shufflevector <4 x float> %i.q, <4 x float> %i.r, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.s, ptr %4, align 16
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = fsub <4 x float> %i.i, %i.p
  %i.v = fadd <4 x float> %i.i, %i.p
  %i.w = shufflevector <4 x float> %i.u, <4 x float> %i.v, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.w, ptr %i.t, align 16
  call void @DrawTriangleStrip(ptr noundef nonnull %4, i32 noundef 4, i32 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: nounwind uwtable
define void @DrawTriangleStrip(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 %2) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp sgt i32 %1, 2
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.sroa.4.0.extract.shift = lshr i32 %2, 24
  %.sroa.4.0.extract.trunc = trunc nuw i32 %.sroa.4.0.extract.shift to i8
  %.sroa.3.0.extract.shift = lshr i32 %2, 16
  %.sroa.3.0.extract.trunc = trunc i32 %.sroa.3.0.extract.shift to i8
  %.sroa.2.0.extract.shift = lshr i32 %2, 8
end_hunk_0
