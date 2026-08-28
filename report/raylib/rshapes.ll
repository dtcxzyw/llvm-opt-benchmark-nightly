Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rshapes?download=true
inline.NumInlined: 39
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@GetShapesTexture:bb.a
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
  %i.d = tail call float @llvm.fmuladd.f32(float %i.c, float %i.c, float %i.b) ; 2 uses
  %i.e = fcmp ogt float %i.d, 0.000000e+00
  %i.f = fcmp ogt float %2, 0.000000e+00
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = shufflevector <2 x float> %0, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.h = shufflevector <2 x float> %1, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %sqrt = tail call nnan float @llvm.sqrt.f32(float %i.d)
  %i.i = fmul nnan float %sqrt, 2.000000e+00
  %i.j = fdiv float %2, %i.i                      ; 2 uses
  %i.k = fneg float %i.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.l = insertelement <2 x float> poison, float %i.j, i64 0
  %i.m = insertelement <2 x float> %i.l, float %i.k, i64 1
  %i.n = fmul <2 x float> %i.a, %i.m
  %i.o = shufflevector <2 x float> %i.n, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 4 uses
  %i.p = fsub <4 x float> %i.g, %i.o
  %i.q = fadd <4 x float> %i.g, %i.o
  %i.r = shufflevector <4 x float> %i.p, <4 x float> %i.q, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.r, ptr %4, align 16
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.t = fsub <4 x float> %i.h, %i.o
  %i.u = fadd <4 x float> %i.h, %i.o
  %i.v = shufflevector <4 x float> %i.t, <4 x float> %i.u, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.v, ptr %i.s, align 16
  call void @DrawTriangleStrip(ptr noundef nonnull %4, i32 noundef 4, i32 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

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
  %.sroa.2.0.extract.trunc = trunc i32 %.sroa.2.0.extract.shift to i8
  %.sroa.0.0.extract.trunc = trunc i32 %2 to i8
  tail call void @rlBegin(i32 noundef 4) #14
  tail call void @rlColor4ub(i8 noundef zeroext %.sroa.0.0.extract.trunc, i8 noundef zeroext %.sroa.2.0.extract.trunc, i8 noundef zeroext %.sroa.3.0.extract.trunc, i8 noundef zeroext %.sroa.4.0.extract.trunc) #14
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  tail call void @rlEnd() #14
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.d
  %indvars.iv = phi i64 [ 2, %bb.b ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %3 = trunc i64 %indvars.iv to i1                ; 4 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv ; 6 uses
  %i.c = load float, ptr %i.b, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.e = load float, ptr %i.d, align 4
  tail call void @rlVertex2f(float noundef %i.c, float noundef %i.e) #14
  %. = select i1 %3, i64 -8, i64 -16
  %.41 = select i1 %3, i64 -4, i64 -12
  %.42 = select i1 %3, i64 -16, i64 -8
  %.43 = select i1 %3, i64 -12, i64 -4
  %i.f = getelementptr i8, ptr %i.b, i64 %.
  %i.g = load float, ptr %i.f, align 4
  %i.h = getelementptr i8, ptr %i.b, i64 %.41
  %i.i = load float, ptr %i.h, align 4
  tail call void @rlVertex2f(float noundef %i.g, float noundef %i.i) #14
  %i.j = getelementptr i8, ptr %i.b, i64 %.42
  %i.k = load float, ptr %i.j, align 4
  %i.l = getelementptr i8, ptr %i.b, i64 %.43
  %i.m = load float, ptr %i.l, align 4
  tail call void @rlVertex2f(float noundef %i.k, float noundef %i.m) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.c, label %bb.d

bb.e:                                             ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @DrawLineV(<2 x float> %0, <2 x float> %1, i32 %2) local_unnamed_addr #4 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i32 %2 to i8
  %.sroa.2.0.extract.shift = lshr i32 %2, 8
  %.sroa.2.0.extract.trunc = trunc i32 %.sroa.2.0.extract.shift to i8
  %.sroa.3.0.extract.shift = lshr i32 %2, 16
  %.sroa.3.0.extract.trunc = trunc i32 %.sroa.3.0.extract.shift to i8
  %.sroa.4.0.extract.shift = lshr i32 %2, 24
  %.sroa.4.0.extract.trunc = trunc nuw i32 %.sroa.4.0.extract.shift to i8
  tail call void @rlBegin(i32 noundef 1) #14
  tail call void @rlColor4ub(i8 noundef zeroext %.sroa.0.0.extract.trunc, i8 noundef zeroext %.sroa.2.0.extract.trunc, i8 noundef zeroext %.sroa.3.0.extract.trunc, i8 noundef zeroext %.sroa.4.0.extract.trunc) #14
  %.sroa.02.0.vec.extract = extractelement <2 x float> %0, i64 0
  %.sroa.02.4.vec.extract = extractelement <2 x float> %0, i64 1
  tail call void @rlVertex2f(float noundef %.sroa.02.0.vec.extract, float noundef %.sroa.02.4.vec.extract) #14
  %.sroa.01.0.vec.extract = extractelement <2 x float> %1, i64 0
  %.sroa.01.4.vec.extract = extractelement <2 x float> %1, i64 1
  tail call void @rlVertex2f(float noundef %.sroa.01.0.vec.extract, float noundef %.sroa.01.4.vec.extract) #14
  tail call void @rlEnd() #14
  ret void
}

; Function Attrs: nounwind uwtable
define void @DrawLineStrip(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 %2) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp slt i32 %1, 2
  br i1 %i.a, label %bb.b, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.sroa.4.0.extract.shift = lshr i32 %2, 24
  %.sroa.4.0.extract.trunc = trunc nuw i32 %.sroa.4.0.extract.shift to i8
  %.sroa.3.0.extract.shift = lshr i32 %2, 16
  %.sroa.3.0.extract.trunc = trunc i32 %.sroa.3.0.extract.shift to i8
  %.sroa.2.0.extract.shift = lshr i32 %2, 8
  %.sroa.2.0.extract.trunc = trunc i32 %.sroa.2.0.extract.shift to i8
  %.sroa.0.0.extract.trunc = trunc i32 %2 to i8
  tail call void @rlBegin(i32 noundef 1) #14
  tail call void @rlColor4ub(i8 noundef zeroext %.sroa.0.0.extract.trunc, i8 noundef zeroext %.sroa.2.0.extract.trunc, i8 noundef zeroext %.sroa.3.0.extract.trunc, i8 noundef zeroext %.sroa.4.0.extract.trunc) #14
  %i.b = add nsw i32 %1, -1
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  tail call void @rlEnd() #14
  br label %bb.b

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.d = load float, ptr %i.c, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.f = load float, ptr %i.e, align 4
  tail call void @rlVertex2f(float noundef %i.d, float noundef %i.f) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next ; 2 uses
  %i.h = load float, ptr %i.g, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.j = load float, ptr %i.i, align 4
  tail call void @rlVertex2f(float noundef %i.h, float noundef %i.j) #14
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define void @DrawLineBezier(<2 x float> %0, <2 x float> %1, float noundef %2, i32 %3) local_unnamed_addr #4 {
.peel.next:
  %4 = alloca [50 x %struct.Vector2], align 16    ; 7 uses
  %.sroa.041.0.vec.extract43 = extractelement <2 x float> %0, i64 0 ; 2 uses
  %.sroa.041.4.vec.extract47 = extractelement <2 x float> %0, i64 1 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(368) %i.a, i8 0, i64 368, i1 false)
  %i.b = fsub <2 x float> %1, %0                  ; 2 uses
  %i.c = extractelement <2 x float> %i.b, i64 0
  %i.d = fdiv float %i.c, 2.400000e+01            ; 2 uses
  %i.e = fmul float %2, 5.000000e-01              ; 2 uses
  %i.f = extractelement <2 x float> %i.b, i64 1
  %i.g = fmul float %i.f, 5.000000e-01            ; 3 uses
  %i.h = fmul float %i.g, f0x3DAAAAAB
  %i.i = fmul float %i.h, f0x3DAAAAAB
  %i.j = tail call float @llvm.fmuladd.f32(float %i.i, float f0x3DAAAAAB, float %.sroa.041.4.vec.extract47) ; 3 uses
  %i.k = fadd float %i.d, %.sroa.041.0.vec.extract43 ; 3 uses
  %i.l = fsub float %i.j, %.sroa.041.4.vec.extract47 ; 4 uses
  %i.m = fsub float %i.k, %.sroa.041.0.vec.extract43 ; 4 uses
  %i.n = fmul float %i.l, %i.l
  %i.o = tail call float @llvm.fmuladd.f32(float %i.m, float %i.m, float %i.n)
  %sqrt.peel = tail call float @llvm.sqrt.f32(float %i.o)
  %i.p = fneg float %i.m
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.r = fneg float %i.l
  %i.s = fdiv float %i.e, %sqrt.peel
  %i.t = insertelement <4 x float> poison, float %i.l, i64 0
  %i.u = insertelement <4 x float> %i.t, float %i.p, i64 1
  %i.v = insertelement <4 x float> %i.u, float %i.s, i64 2 ; 2 uses
  %i.w = insertelement <4 x float> %i.v, float %i.m, i64 3 ; 2 uses
  %i.x = shufflevector <4 x float> %i.v, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.y = insertelement <2 x float> %i.x, float %i.r, i64 1
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0> ; 2 uses
  %i.aa = insertelement <4 x float> poison, float %i.k, i64 0
  %i.ab = insertelement <4 x float> %i.aa, float %i.j, i64 1
  %i.ac = shufflevector <4 x float> %i.ab, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ad = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.w, <4 x float> %i.z, <4 x float> %i.ac)
  store <4 x float> %i.ad, ptr %i.q, align 16
  br label %bb.a

.loopexit:                                        ; preds = %bb.d
  %i.ae = shufflevector <2 x float> %0, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.af = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.w, <4 x float> %i.z, <4 x float> %i.ae)
  store <4 x float> %i.af, ptr %4, align 16
  call void @DrawTriangleStrip(ptr noundef nonnull %4, i32 noundef 50, i32 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  ret void

bb.a:                                             ; preds = %.peel.next, %bb.d
  %indvars.iv = phi i64 [ 2, %.peel.next ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %.sroa.031.049 = phi float [ %i.k, %.peel.next ], [ %i.ar, %bb.d ] ; 2 uses
  %.sroa.835.048 = phi float [ %i.j, %.peel.next ], [ %.0.i, %bb.d ]
  %i.ag = trunc nuw nsw i64 %indvars.iv to i32
  %i.ah = uitofp nneg i32 %i.ag to float
  %i.ai = fdiv float %i.ah, 1.200000e+01          ; 5 uses
  %i.aj = fcmp olt float %i.ai, 1.000000e+00
  br i1 %i.aj, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ak = fmul float %i.g, %i.ai
  %i.al = fmul float %i.ai, %i.ak
  %i.am = tail call float @llvm.fmuladd.f32(float %i.al, float %i.ai, float %.sroa.041.4.vec.extract47)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.an = fadd float %i.ai, -2.000000e+00         ; 3 uses
  %i.ao = fmul float %i.an, %i.an
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.ao, float %i.an, float 2.000000e+00)
  %i.aq = tail call float @llvm.fmuladd.f32(float %i.g, float %i.ap, float %.sroa.041.4.vec.extract47)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0.i = phi float [ %i.am, %bb.b ], [ %i.aq, %bb.c ] ; 3 uses
  %i.ar = fadd float %i.d, %.sroa.031.049         ; 3 uses
  %i.as = fsub float %.0.i, %.sroa.835.048        ; 4 uses
  %i.at = fsub float %i.ar, %.sroa.031.049        ; 4 uses
  %i.au = fmul float %i.as, %i.as
  %i.av = tail call float @llvm.fmuladd.f32(float %i.at, float %i.at, float %i.au)
  %sqrt = tail call float @llvm.sqrt.f32(float %i.av)
  %.pre66 = fneg float %i.at
  %.idx = shl nuw nsw i64 %indvars.iv, 4
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 %.idx
  %.pre64 = fneg float %i.as
  %i.ax = fdiv float %i.e, %sqrt
  %i.ay = insertelement <4 x float> poison, float %i.as, i64 0
  %i.az = insertelement <4 x float> %i.ay, float %.pre66, i64 1
  %i.ba = insertelement <4 x float> %i.az, float %i.ax, i64 2 ; 2 uses
  %i.bb = insertelement <4 x float> %i.ba, float %i.at, i64 3
  %i.bc = shufflevector <4 x float> %i.ba, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.bd = insertelement <2 x float> %i.bc, float %.pre64, i64 1
  %i.be = shufflevector <2 x float> %i.bd, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.bf = insertelement <4 x float> poison, float %i.ar, i64 0
  %i.bg = insertelement <4 x float> %i.bf, float %.0.i, i64 1
  %i.bh = shufflevector <4 x float> %i.bg, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bb, <4 x float> %i.be, <4 x float> %i.bh)
  store <4 x float> %i.bi, ptr %i.aw, align 16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 25
  br i1 %exitcond.not, label %.loopexit, label %bb.a, !llvm.loop !3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nounwind uwtable
define void @DrawLineDashed(<2 x float> %0, <2 x float> %1, i32 noundef %2, i32 noundef %3, i32 %4) local_unnamed_addr #4 {
bb.a:
  %i.a = fsub <2 x float> %1, %0                  ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.a, %i.a
  %i.b = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.c = extractelement <2 x float> %i.a, i64 0   ; 2 uses
  %i.d = tail call float @llvm.fmuladd.f32(float %i.c, float %i.c, float %i.b) ; 2 uses
  %sqrt = tail call float @llvm.sqrt.f32(float %i.d) ; 5 uses
  %i.e = add nsw i32 %3, %2
  %i.f = sitofp i32 %i.e to float
  %i.g = fcmp olt float %sqrt, %i.f
  %i.h = icmp slt i32 %2, 1
  %or.cond = or i1 %i.h, %i.g
  %.sroa.0.0.extract.trunc.i = trunc i32 %4 to i8 ; 2 uses
  %.sroa.2.0.extract.shift.i = lshr i32 %4, 8
  %.sroa.2.0.extract.trunc.i = trunc i32 %.sroa.2.0.extract.shift.i to i8 ; 2 uses
  %.sroa.3.0.extract.shift.i = lshr i32 %4, 16
  %.sroa.3.0.extract.trunc.i = trunc i32 %.sroa.3.0.extract.shift.i to i8 ; 2 uses
  %.sroa.4.0.extract.shift.i = lshr i32 %4, 24
  %.sroa.4.0.extract.trunc.i = trunc nuw i32 %.sroa.4.0.extract.shift.i to i8 ; 2 uses
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.037.4.vec.extract = extractelement <2 x float> %0, i64 1
  %.sroa.035.4.vec.extract = extractelement <2 x float> %1, i64 1
  %.sroa.037.0.vec.extract = extractelement <2 x float> %0, i64 0
  %.sroa.035.0.vec.extract = extractelement <2 x float> %1, i64 0
  tail call void @rlBegin(i32 noundef 1) #14
  tail call void @rlColor4ub(i8 noundef zeroext %.sroa.0.0.extract.trunc.i, i8 noundef zeroext %.sroa.2.0.extract.trunc.i, i8 noundef zeroext %.sroa.3.0.extract.trunc.i, i8 noundef zeroext %.sroa.4.0.extract.trunc.i) #14
  tail call void @rlVertex2f(float noundef %.sroa.037.0.vec.extract, float noundef %.sroa.037.4.vec.extract) #14
  tail call void @rlVertex2f(float noundef %.sroa.035.0.vec.extract, float noundef %.sroa.035.4.vec.extract) #14
  br label %._crit_edge

bb.c:                                             ; preds = %bb.a
  %i.i = fdiv float 1.000000e+00, %sqrt
  %i.j = insertelement <2 x float> poison, float %i.i, i64 0
  %i.k = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> zeroinitializer
  %i.l = fmul <2 x float> %i.a, %i.k              ; 2 uses
  tail call void @rlBegin(i32 noundef 1) #14
  tail call void @rlColor4ub(i8 noundef zeroext %.sroa.0.0.extract.trunc.i, i8 noundef zeroext %.sroa.2.0.extract.trunc.i, i8 noundef zeroext %.sroa.3.0.extract.trunc.i, i8 noundef zeroext %.sroa.4.0.extract.trunc.i) #14
  %i.m = fcmp ogt float %i.d, 0.000000e+00
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.n = uitofp nneg i32 %2 to float
  %i.o = sitofp i32 %3 to float
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.05157 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.z, %bb.d ]
  %i.p = phi <2 x float> [ %0, %.lr.ph ], [ %i.ac, %bb.d ] ; 2 uses
  %i.q = fadd float %.05157, %i.n                 ; 2 uses
  %i.r = fcmp ogt float %i.q, %sqrt
  %.0 = select i1 %i.r, float %sqrt, float %i.q   ; 2 uses
  %i.s = insertelement <2 x float> poison, float %.0, i64 0
  %i.t = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> zeroinitializer
  %i.u = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.t, <2 x float> %i.l, <2 x float> %0) ; 2 uses
  %i.v = extractelement <2 x float> %i.p, i64 0
  %i.w = extractelement <2 x float> %i.p, i64 1
  tail call void @rlVertex2f(float noundef %i.v, float noundef %i.w) #14
  %i.x = extractelement <2 x float> %i.u, i64 0
  %i.y = extractelement <2 x float> %i.u, i64 1
  tail call void @rlVertex2f(float noundef %i.x, float noundef %i.y) #14
  %i.z = fadd float %.0, %i.o                     ; 3 uses
  %i.aa = insertelement <2 x float> poison, float %i.z, i64 0
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ac = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ab, <2 x float> %i.l, <2 x float> %0)
  %i.ad = fcmp olt float %i.z, %sqrt
  br i1 %i.ad, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %bb.c, %bb.b
  tail call void @rlEnd() #14
  ret void
}

; Function Attrs: nounwind uwtable
define void @DrawCircle(i32 noundef %0, i32 noundef %1, float noundef %2, i32 %3) local_unnamed_addr #4 {
bb.a:
  %i.a = insertelement <2 x i32> poison, i32 %0, i64 0
  %i.b = insertelement <2 x i32> %i.a, i32 %1, i64 1
  %i.c = sitofp <2 x i32> %i.b to <2 x float>
  tail call void @DrawCircleSector(<2 x float> %i.c, float noundef %2, float noundef 0.000000e+00, float noundef 3.600000e+02, i32 noundef 36, i32 %3)
  ret void
}

; Function Attrs: nounwind uwtable
define void @DrawCircleV(<2 x float> %0, float noundef %1, i32 %2) local_unnamed_addr #4 {
bb.a:
  tail call void @DrawCircleSector(<2 x float> %0, float noundef %1, float noundef 0.000000e+00, float noundef 3.600000e+02, i32 noundef 36, i32 %2)
  ret void
}

; Function Attrs: nounwind uwtable
define void @DrawCircleSector(<2 x float> %0, float noundef %1, float noundef %2, float noundef %3, i32 noundef %4, i32 %5) local_unnamed_addr #4 {
bb.a:
  %.sroa.093.0.extract.trunc = trunc i32 %5 to i8 ; 2 uses
  %.sroa.3.0.extract.shift = lshr i32 %5, 8
  %.sroa.3.0.extract.trunc = trunc i32 %.sroa.3.0.extract.shift to i8 ; 2 uses
  %.sroa.5.0.extract.shift = lshr i32 %5, 16
  %.sroa.5.0.extract.trunc = trunc i32 %.sroa.5.0.extract.shift to i8 ; 2 uses
  %.sroa.7.0.extract.shift = lshr i32 %5, 24
  %.sroa.7.0.extract.trunc = trunc nuw i32 %.sroa.7.0.extract.shift to i8 ; 2 uses
  %i.a = fcmp oeq float %2, %3
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp ole float %1, 0.000000e+00
  %spec.store.select = select i1 %i.b, float 1.000000e-01, float %1 ; 10 uses
  %i.c = fcmp olt float %3, %2                    ; 2 uses
  %.0130 = select i1 %i.c, float %3, float %2     ; 3 uses
  %.0129 = select i1 %i.c, float %2, float %3
  %i.d = fsub float %.0129, %.0130                ; 3 uses
  %i.e = fdiv float %i.d, 9.000000e+01
  %i.f = tail call float @llvm.ceil.f32(float %i.e)
  %i.g = fptosi float %i.f to i32                 ; 2 uses
  %i.h = icmp slt i32 %4, %i.g
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = fdiv float 5.000000e-01, %spec.store.select
  %i.j = fsub float 1.000000e+00, %i.i
  %i.k = tail call float @powf(float noundef %i.j, float noundef 2.000000e+00) #14
  %i.l = tail call float @llvm.fmuladd.f32(float %i.k, float 2.000000e+00, float -1.000000e+00)
  %i.m = tail call float @acosf(float noundef %i.l) #14
  %i.n = fdiv float f0x40C90FDB, %i.m
  %i.o = tail call float @llvm.ceil.f32(float %i.n)
  %i.p = fmul float %i.d, %i.o
  %i.q = fdiv float %i.p, 3.600000e+02
  %i.r = fptosi float %i.q to i32                 ; 2 uses
  %i.s = icmp slt i32 %i.r, 1
  %spec.select = select i1 %i.s, i32 %i.g, i32 %i.r
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1 = phi i32 [ %spec.select, %bb.c ], [ %4, %bb.b ] ; 4 uses
  %i.t = sitofp i32 %.1 to float
  %i.u = fdiv float %i.d, %i.t                    ; 3 uses
  %.sroa.0.0.copyload = load i32, ptr @texShapes, align 16
  tail call void @rlSetTexture(i32 noundef %.sroa.0.0.copyload) #14
  %.sroa.0.0.copyload.i = load <2 x float>, ptr @texShapesRec, align 16 ; 8 uses
  %.sroa.2.0.copyload.i = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @texShapesRec, i64 8), align 8 ; 4 uses
  tail call void @rlBegin(i32 noundef 7) #14
  %i.v = lshr i32 %.1, 1
  %i.w = icmp sgt i32 %.1, 1
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %.sroa.0.0.vec.extract = extractelement <2 x float> %.sroa.0.0.copyload.i, i64 0 ; 2 uses
  %.sroa.0.4.vec.extract = extractelement <2 x float> %.sroa.0.0.copyload.i, i64 1 ; 2 uses
  %.sroa.098.0.vec.extract = extractelement <2 x float> %0, i64 0 ; 3 uses
  %.sroa.098.4.vec.extract = extractelement <2 x float> %0, i64 1 ; 3 uses
  %foldExtExtBinop = fadd <2 x float> %.sroa.0.0.copyload.i, %.sroa.2.0.copyload.i
  %i.x = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop142 = fadd <2 x float> %.sroa.0.0.copyload.i, %.sroa.2.0.copyload.i
  %i.y = extractelement <2 x float> %foldExtExtBinop142, i64 1 ; 2 uses
  %i.z = insertelement <2 x float> poison, float %spec.store.select, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.e

._crit_edge:                                      ; preds = %bb.e, %bb.d
  %.0127.lcssa = phi float [ %.0130, %bb.d ], [ %i.an, %bb.e ] ; 2 uses
  %6 = trunc i32 %.1 to i1
  br i1 %6, label %bb.f, label %bb.g

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %.0137 = phi i32 [ 0, %.lr.ph ], [ %i.bt, %bb.e ]
  %.0127136 = phi float [ %.0130, %.lr.ph ], [ %i.an, %bb.e ] ; 3 uses
  tail call void @rlColor4ub(i8 noundef zeroext %.sroa.093.0.extract.trunc, i8 noundef zeroext %.sroa.3.0.extract.trunc, i8 noundef zeroext %.sroa.5.0.extract.trunc, i8 noundef zeroext %.sroa.7.0.extract.trunc) #14
  %i.ab = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.ac = sitofp i32 %i.ab to float
  %i.ad = fdiv float %.sroa.0.0.vec.extract, %i.ac
  %i.ae = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.af = sitofp i32 %i.ae to float
  %i.ag = fdiv float %.sroa.0.4.vec.extract, %i.af
  tail call void @rlTexCoord2f(float noundef %i.ad, float noundef %i.ag) #14
  tail call void @rlVertex2f(float noundef %.sroa.098.0.vec.extract, float noundef %.sroa.098.4.vec.extract) #14
  %i.ah = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.ai = sitofp i32 %i.ah to float
  %i.aj = fdiv float %i.x, %i.ai
  %i.ak = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.al = sitofp i32 %i.ak to float
  %i.am = fdiv float %.sroa.0.4.vec.extract, %i.al
  tail call void @rlTexCoord2f(float noundef %i.aj, float noundef %i.am) #14
  %i.an = tail call float @llvm.fmuladd.f32(float %i.u, float 2.000000e+00, float %.0127136) ; 3 uses
  %i.ao = fmul float %i.an, f0x3C8EFA35           ; 2 uses
  %i.ap = tail call float @cosf(float noundef %i.ao) #14
  %i.aq = tail call float @llvm.fmuladd.f32(float %i.ap, float %spec.store.select, float %.sroa.098.0.vec.extract)
  %i.ar = tail call float @sinf(float noundef %i.ao) #14
  %i.as = tail call float @llvm.fmuladd.f32(float %i.ar, float %spec.store.select, float %.sroa.098.4.vec.extract)
  tail call void @rlVertex2f(float noundef %i.aq, float noundef %i.as) #14
  %i.at = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.au = sitofp i32 %i.at to float
  %i.av = fdiv float %i.x, %i.au
  %i.aw = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.ax = sitofp i32 %i.aw to float
  %i.ay = fdiv float %i.y, %i.ax
  tail call void @rlTexCoord2f(float noundef %i.av, float noundef %i.ay) #14
  %i.az = fadd float %i.u, %.0127136
  %i.ba = fmul float %i.az, f0x3C8EFA35           ; 2 uses
  %i.bb = tail call float @cosf(float noundef %i.ba) #14
  %i.bc = tail call float @llvm.fmuladd.f32(float %i.bb, float %spec.store.select, float %.sroa.098.0.vec.extract)
  %i.bd = tail call float @sinf(float noundef %i.ba) #14
  %i.be = tail call float @llvm.fmuladd.f32(float %i.bd, float %spec.store.select, float %.sroa.098.4.vec.extract)
  tail call void @rlVertex2f(float noundef %i.bc, float noundef %i.be) #14
  %i.bf = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.bg = sitofp i32 %i.bf to float
  %i.bh = fdiv float %.sroa.0.0.vec.extract, %i.bg
  %i.bi = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.bj = sitofp i32 %i.bi to float
  %i.bk = fdiv float %i.y, %i.bj
  tail call void @rlTexCoord2f(float noundef %i.bh, float noundef %i.bk) #14
  %i.bl = fmul float %.0127136, f0x3C8EFA35       ; 2 uses
  %i.bm = tail call float @cosf(float noundef %i.bl) #14
  %i.bn = tail call float @sinf(float noundef %i.bl) #14
  %i.bo = insertelement <2 x float> poison, float %i.bm, i64 0
  %i.bp = insertelement <2 x float> %i.bo, float %i.bn, i64 1
  %i.bq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bp, <2 x float> %i.aa, <2 x float> %0) ; 2 uses
  %i.br = extractelement <2 x float> %i.bq, i64 0
  %i.bs = extractelement <2 x float> %i.bq, i64 1
  tail call void @rlVertex2f(float noundef %i.br, float noundef %i.bs) #14
  %i.bt = add nuw nsw i32 %.0137, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.bt, %i.v
  br i1 %exitcond.not, label %._crit_edge, label %bb.e

bb.f:                                             ; preds = %._crit_edge
  tail call void @rlColor4ub(i8 noundef zeroext %.sroa.093.0.extract.trunc, i8 noundef zeroext %.sroa.3.0.extract.trunc, i8 noundef zeroext %.sroa.5.0.extract.trunc, i8 noundef zeroext %.sroa.7.0.extract.trunc) #14
  %.sroa.0.0.vec.extract9 = extractelement <2 x float> %.sroa.0.0.copyload.i, i64 0 ; 2 uses
  %i.bu = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.bv = sitofp i32 %i.bu to float
  %i.bw = fdiv float %.sroa.0.0.vec.extract9, %i.bv
  %.sroa.0.4.vec.extract23 = extractelement <2 x float> %.sroa.0.0.copyload.i, i64 1 ; 2 uses
  %i.bx = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.by = sitofp i32 %i.bx to float
  %i.bz = fdiv float %.sroa.0.4.vec.extract23, %i.by
  tail call void @rlTexCoord2f(float noundef %i.bw, float noundef %i.bz) #14
  %.sroa.098.0.vec.extract106 = extractelement <2 x float> %0, i64 0 ; 4 uses
  %.sroa.098.4.vec.extract120 = extractelement <2 x float> %0, i64 1 ; 4 uses
  tail call void @rlVertex2f(float noundef %.sroa.098.0.vec.extract106, float noundef %.sroa.098.4.vec.extract120) #14
  %foldExtExtBinop144 = fadd <2 x float> %.sroa.0.0.copyload.i, %.sroa.2.0.copyload.i
  %i.ca = extractelement <2 x float> %foldExtExtBinop144, i64 0 ; 2 uses
  %i.cb = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.cc = sitofp i32 %i.cb to float
  %i.cd = fdiv float %i.ca, %i.cc
  %foldExtExtBinop146 = fadd <2 x float> %.sroa.0.0.copyload.i, %.sroa.2.0.copyload.i
  %i.ce = extractelement <2 x float> %foldExtExtBinop146, i64 1 ; 2 uses
  %i.cf = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.cg = sitofp i32 %i.cf to float
  %i.ch = fdiv float %i.ce, %i.cg
  tail call void @rlTexCoord2f(float noundef %i.cd, float noundef %i.ch) #14
  %i.ci = fadd float %i.u, %.0127.lcssa
  %i.cj = fmul float %i.ci, f0x3C8EFA35           ; 2 uses
  %i.ck = tail call float @cosf(float noundef %i.cj) #14
  %i.cl = tail call float @llvm.fmuladd.f32(float %i.ck, float %spec.store.select, float %.sroa.098.0.vec.extract106)
  %i.cm = tail call float @sinf(float noundef %i.cj) #14
  %i.cn = tail call float @llvm.fmuladd.f32(float %i.cm, float %spec.store.select, float %.sroa.098.4.vec.extract120)
  tail call void @rlVertex2f(float noundef %i.cl, float noundef %i.cn) #14
  %i.co = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.cp = sitofp i32 %i.co to float
  %i.cq = fdiv float %.sroa.0.0.vec.extract9, %i.cp
  %i.cr = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.cs = sitofp i32 %i.cr to float
  %i.ct = fdiv float %i.ce, %i.cs
  tail call void @rlTexCoord2f(float noundef %i.cq, float noundef %i.ct) #14
  %i.cu = fmul float %.0127.lcssa, f0x3C8EFA35    ; 2 uses
  %i.cv = tail call float @cosf(float noundef %i.cu) #14
  %i.cw = tail call float @llvm.fmuladd.f32(float %i.cv, float %spec.store.select, float %.sroa.098.0.vec.extract106)
  %i.cx = tail call float @sinf(float noundef %i.cu) #14
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.cx, float %spec.store.select, float %.sroa.098.4.vec.extract120)
  tail call void @rlVertex2f(float noundef %i.cw, float noundef %i.cy) #14
  %i.cz = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.da = sitofp i32 %i.cz to float
  %i.db = fdiv float %i.ca, %i.da
  %i.dc = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.dd = sitofp i32 %i.dc to float
  %i.de = fdiv float %.sroa.0.4.vec.extract23, %i.dd
  tail call void @rlTexCoord2f(float noundef %i.db, float noundef %i.de) #14
  tail call void @rlVertex2f(float noundef %.sroa.098.0.vec.extract106, float noundef %.sroa.098.4.vec.extract120) #14
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  tail call void @rlEnd() #14
  tail call void @rlSetTexture(i32 noundef 0) #14
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define void @DrawCircleGradient(<2 x float> %0, float noundef %1, i32 %2, i32 %3) local_unnamed_addr #4 {
bb.a:
  %.sroa.013.0.extract.trunc = trunc i32 %2 to i8
  %.sroa.2.0.extract.shift = lshr i32 %2, 8
  %.sroa.2.0.extract.trunc = trunc i32 %.sroa.2.0.extract.shift to i8
  %.sroa.314.0.extract.shift = lshr i32 %2, 16
  %.sroa.314.0.extract.trunc = trunc i32 %.sroa.314.0.extract.shift to i8
  %.sroa.4.0.extract.shift = lshr i32 %2, 24
  %.sroa.4.0.extract.trunc = trunc nuw i32 %.sroa.4.0.extract.shift to i8
  %.sroa.0.0.extract.trunc = trunc i32 %3 to i8   ; 2 uses
  %.sroa.3.0.extract.shift = lshr i32 %3, 8
  %.sroa.3.0.extract.trunc = trunc i32 %.sroa.3.0.extract.shift to i8 ; 2 uses
  %.sroa.5.0.extract.shift = lshr i32 %3, 16
  %.sroa.5.0.extract.trunc = trunc i32 %.sroa.5.0.extract.shift to i8 ; 2 uses
  %.sroa.7.0.extract.shift = lshr i32 %3, 24
  %.sroa.7.0.extract.trunc = trunc nuw i32 %.sroa.7.0.extract.shift to i8 ; 2 uses
  tail call void @rlBegin(i32 noundef 4) #14
  %.sroa.015.0.vec.extract = extractelement <2 x float> %0, i64 0 ; 3 uses
  %.sroa.015.4.vec.extract = extractelement <2 x float> %0, i64 1 ; 3 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  tail call void @rlEnd() #14
  ret void

bb.c:                                             ; preds = %bb.a, %bb.c
  %.024 = phi i32 [ 0, %bb.a ], [ %i.a, %bb.c ]   ; 3 uses
  tail call void @rlColor4ub(i8 noundef zeroext %.sroa.013.0.extract.trunc, i8 noundef zeroext %.sroa.2.0.extract.trunc, i8 noundef zeroext %.sroa.314.0.extract.trunc, i8 noundef zeroext %.sroa.4.0.extract.trunc) #14
  tail call void @rlVertex2f(float noundef %.sroa.015.0.vec.extract, float noundef %.sroa.015.4.vec.extract) #14
  tail call void @rlColor4ub(i8 noundef zeroext %.sroa.0.0.extract.trunc, i8 noundef zeroext %.sroa.3.0.extract.trunc, i8 noundef zeroext %.sroa.5.0.extract.trunc, i8 noundef zeroext %.sroa.7.0.extract.trunc) #14
  %i.a = add nuw nsw i32 %.024, 10                ; 2 uses
  %i.b = uitofp nneg i32 %i.a to float
  %i.c = fmul nnan float %i.b, f0x3C8EFA35        ; 2 uses
  %i.d = tail call float @cosf(float noundef %i.c) #14
  %i.e = tail call float @llvm.fmuladd.f32(float %i.d, float %1, float %.sroa.015.0.vec.extract)
  %i.f = tail call float @sinf(float noundef %i.c) #14
  %i.g = tail call float @llvm.fmuladd.f32(float %i.f, float %1, float %.sroa.015.4.vec.extract)
  tail call void @rlVertex2f(float noundef %i.e, float noundef %i.g) #14
  tail call void @rlColor4ub(i8 noundef zeroext %.sroa.0.0.extract.trunc, i8 noundef zeroext %.sroa.3.0.extract.trunc, i8 noundef zeroext %.sroa.5.0.extract.trunc, i8 noundef zeroext %.sroa.7.0.extract.trunc) #14
  %i.h = uitofp nneg i32 %.024 to float
  %i.i = fmul nnan float %i.h, f0x3C8EFA35        ; 2 uses
  %i.j = tail call float @cosf(float noundef %i.i) #14
  %i.k = tail call float @llvm.fmuladd.f32(float %i.j, float %1, float %.sroa.015.0.vec.extract)
  %i.l = tail call float @sinf(float noundef %i.i) #14
  %i.m = tail call float @llvm.fmuladd.f32(float %i.l, float %1, float %.sroa.015.4.vec.extract)
  tail call void @rlVertex2f(float noundef %i.k, float noundef %i.m) #14
  %i.n = icmp samesign ult i32 %.024, 350
  br i1 %i.n, label %bb.c, label %bb.b
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @acosf(float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define void @DrawCircleSectorLines(<2 x float> %0, float noundef %1, float noundef %2, float noundef %3, i32 noundef %4, i32 %5) local_unnamed_addr #4 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i32 %5 to i8   ; 3 uses
  %.sroa.4.0.extract.shift = lshr i32 %5, 8
  %.sroa.4.0.extract.trunc = trunc i32 %.sroa.4.0.extract.shift to i8 ; 3 uses
  %.sroa.7.0.extract.shift = lshr i32 %5, 16
  %.sroa.7.0.extract.trunc = trunc i32 %.sroa.7.0.extract.shift to i8 ; 3 uses
  %.sroa.10.0.extract.shift = lshr i32 %5, 24
end_hunk_0
begin_hunk_1_@DrawRectangleGradientEx:bb.a

; Function Attrs: nounwind uwtable
define void @DrawRectangleGradientH(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 %4, i32 %5) local_unnamed_addr #4 {
bb.a:
  %i.a = insertelement <2 x i32> poison, i32 %0, i64 0
  %i.b = insertelement <2 x i32> %i.a, i32 %1, i64 1
  %i.c = sitofp <2 x i32> %i.b to <2 x float>
  %i.d = insertelement <2 x i32> poison, i32 %2, i64 0
  %i.e = insertelement <2 x i32> %i.d, i32 %3, i64 1
  %i.f = sitofp <2 x i32> %i.e to <2 x float>
  tail call void @DrawRectangleGradientEx(<2 x float> %i.c, <2 x float> %i.f, i32 %4, i32 %4, i32 %5, i32 %5)
  ret void
}

; Function Attrs: nounwind uwtable
define void @DrawRectangleLines(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 %4) local_unnamed_addr #6 {
bb.a:
  %5 = alloca %struct.Matrix, align 16            ; 5 uses
  %.sroa.0.0.extract.trunc = trunc i32 %4 to i8
  %.sroa.2.0.extract.shift = lshr i32 %4, 8
  %.sroa.2.0.extract.trunc = trunc i32 %.sroa.2.0.extract.shift to i8
  %.sroa.3.0.extract.shift = lshr i32 %4, 16
  %.sroa.3.0.extract.trunc = trunc i32 %.sroa.3.0.extract.shift to i8
  %.sroa.4.0.extract.shift = lshr i32 %4, 24
  %.sroa.4.0.extract.trunc = trunc nuw i32 %.sroa.4.0.extract.shift to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @rlGetMatrixTransform(ptr dead_on_unwind nonnull writable sret(%struct.Matrix) align 4 %5) #14
  %i.a = load <4 x float>, ptr %5, align 16
  %i.b = shufflevector <4 x float> %i.a, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.d = load float, ptr %i.c, align 4
  %i.e = insertelement <2 x float> %i.b, float %i.d, i64 1
  %i.f = fdiv <2 x float> splat (float 5.000000e-01), %i.e ; 2 uses
  call void @rlBegin(i32 noundef 1) #14
  call void @rlColor4ub(i8 noundef zeroext %.sroa.0.0.extract.trunc, i8 noundef zeroext %.sroa.2.0.extract.trunc, i8 noundef zeroext %.sroa.3.0.extract.trunc, i8 noundef zeroext %.sroa.4.0.extract.trunc) #14
  %i.g = sitofp i32 %0 to float                   ; 2 uses
  %i.h = extractelement <2 x float> %i.f, i64 0   ; 2 uses
  %i.i = fadd float %i.h, %i.g                    ; 4 uses
  %i.j = sitofp i32 %1 to float                   ; 2 uses
  %i.k = extractelement <2 x float> %i.f, i64 1   ; 2 uses
  %i.l = fadd float %i.k, %i.j                    ; 4 uses
  call void @rlVertex2f(float noundef %i.i, float noundef %i.l) #14
  %i.m = sitofp i32 %2 to float
  %i.n = fadd float %i.g, %i.m
  %i.o = fsub float %i.n, %i.h                    ; 4 uses
  call void @rlVertex2f(float noundef %i.o, float noundef %i.l) #14
  call void @rlVertex2f(float noundef %i.o, float noundef %i.l) #14
  %i.p = sitofp i32 %3 to float
  %i.q = fadd float %i.j, %i.p
  %i.r = fsub float %i.q, %i.k                    ; 4 uses
  call void @rlVertex2f(float noundef %i.o, float noundef %i.r) #14
  call void @rlVertex2f(float noundef %i.o, float noundef %i.r) #14
  call void @rlVertex2f(float noundef %i.i, float noundef %i.r) #14
  call void @rlVertex2f(float noundef %i.i, float noundef %i.r) #14
  call void @rlVertex2f(float noundef %i.i, float noundef %i.l) #14
  call void @rlEnd() #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  ret void
}

declare void @rlGetMatrixTransform(ptr dead_on_unwind writable sret(%struct.Matrix) align 4) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @DrawRectangleLinesEx(<2 x float> %0, <2 x float> %1, float noundef %2, i32 %3) local_unnamed_addr #4 {
bb.a:
  %.sroa.9.8.vec.extract = extractelement <2 x float> %1, i64 0 ; 4 uses
  %i.a = fcmp ogt float %2, %.sroa.9.8.vec.extract
  %.sroa.9.12.vec.extract = extractelement <2 x float> %1, i64 1 ; 5 uses
  %i.b = fcmp ogt float %2, %.sroa.9.12.vec.extract
  %or.cond = select i1 %i.a, i1 true, i1 %i.b
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = fcmp ult float %.sroa.9.8.vec.extract, %.sroa.9.12.vec.extract
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = fmul float %.sroa.9.12.vec.extract, 5.000000e-01
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.e = fcmp ugt float %.sroa.9.8.vec.extract, %.sroa.9.12.vec.extract
  br i1 %i.e, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = fmul float %.sroa.9.8.vec.extract, 5.000000e-01
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.c, %bb.e, %bb.d
  %.0 = phi float [ %i.d, %bb.c ], [ %i.f, %bb.e ], [ %2, %bb.d ], [ %2, %bb.a ] ; 4 uses
  %.sroa.030.4.vec.extract = extractelement <2 x float> %0, i64 1
  %.sroa.513.12.vec.insert = insertelement <2 x float> %1, float %.0, i64 1 ; 2 uses
  %i.g = fadd float %.sroa.030.4.vec.extract, %.0 ; 2 uses
  %.sroa.03.4.vec.insert = insertelement <2 x float> %0, float %i.g, i64 1
  %.sroa.55.8.vec.insert = insertelement <2 x float> poison, float %.0, i64 0 ; 2 uses
  %i.h = fneg float %.0
  %i.i = tail call float @llvm.fmuladd.f32(float %i.h, float 2.000000e+00, float %.sroa.9.12.vec.extract)
  %.sroa.55.12.vec.insert = insertelement <2 x float> %.sroa.55.8.vec.insert, float %i.i, i64 1 ; 2 uses
  %i.j = shufflevector <2 x float> %.sroa.55.8.vec.insert, <2 x float> poison, <2 x i32> zeroinitializer
  %i.k = fsub <2 x float> %0, %i.j
  %i.l = fadd <2 x float> %1, %i.k                ; 2 uses
  %i.m = shufflevector <2 x float> %0, <2 x float> %i.l, <2 x i32> <i32 0, i32 3>
  %.sroa.0.4.vec.insert = insertelement <2 x float> %i.l, float %i.g, i64 1
  tail call void @DrawRectanglePro(<2 x float> %0, <2 x float> %.sroa.513.12.vec.insert, <2 x float> zeroinitializer, float noundef 0.000000e+00, i32 %3)
  tail call void @DrawRectanglePro(<2 x float> %i.m, <2 x float> %.sroa.513.12.vec.insert, <2 x float> zeroinitializer, float noundef 0.000000e+00, i32 %3)
  tail call void @DrawRectanglePro(<2 x float> %.sroa.03.4.vec.insert, <2 x float> %.sroa.55.12.vec.insert, <2 x float> zeroinitializer, float noundef 0.000000e+00, i32 %3)
  tail call void @DrawRectanglePro(<2 x float> %.sroa.0.4.vec.insert, <2 x float> %.sroa.55.12.vec.insert, <2 x float> zeroinitializer, float noundef 0.000000e+00, i32 %3)
  ret void
}

; Function Attrs: nounwind uwtable
define void @DrawRectangleRounded(<2 x float> %0, <2 x float> %1, float noundef %2, i32 noundef %3, i32 %4) local_unnamed_addr #4 {
bb.a:
  %5 = alloca [4 x %struct.Vector2], align 16     ; 11 uses
  %.sroa.0254.0.extract.trunc = trunc i32 %4 to i8 ; 7 uses
  %.sroa.9.0.extract.shift = lshr i32 %4, 8
  %.sroa.9.0.extract.trunc = trunc i32 %.sroa.9.0.extract.shift to i8 ; 7 uses
  %.sroa.16268.0.extract.shift = lshr i32 %4, 16
  %.sroa.16268.0.extract.trunc = trunc i32 %.sroa.16268.0.extract.shift to i8 ; 7 uses
  %.sroa.23.0.extract.shift = lshr i32 %4, 24
  %.sroa.23.0.extract.trunc = trunc nuw i32 %.sroa.23.0.extract.shift to i8 ; 7 uses
  %i.a = fcmp ugt float %2, 0.000000e+00
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @DrawRectanglePro(<2 x float> %0, <2 x float> %1, <2 x float> zeroinitializer, float noundef 0.000000e+00, i32 %4)
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.b = fcmp oge float %2, 1.000000e+00
  %spec.store.select = select i1 %i.b, float 1.000000e+00, float %2
  %.sroa.26327.8.vec.extract = extractelement <2 x float> %1, i64 0 ; 2 uses
  %.sroa.26327.12.vec.extract = extractelement <2 x float> %1, i64 1 ; 3 uses
  %i.c = fcmp ogt float %.sroa.26327.8.vec.extract, %.sroa.26327.12.vec.extract
  %.sroa.26327.12.vec.extract..sroa.26327.8.vec.extract = select i1 %i.c, float %.sroa.26327.12.vec.extract, float %.sroa.26327.8.vec.extract
  %.in = fmul float %.sroa.26327.12.vec.extract..sroa.26327.8.vec.extract, %spec.store.select
  %i.d = fmul float %.in, 5.000000e-01            ; 15 uses
  %i.e = fcmp ugt float %i.d, 0.000000e+00
  br i1 %i.e, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.f = icmp slt i32 %3, 4
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = fdiv float 5.000000e-01, %i.d
  %i.h = fsub float 1.000000e+00, %i.g
  %i.i = tail call float @powf(float noundef %i.h, float noundef 2.000000e+00) #14
  %i.j = tail call float @llvm.fmuladd.f32(float %i.i, float 2.000000e+00, float -1.000000e+00)
  %i.k = tail call float @acosf(float noundef %i.j) #14
  %i.l = fdiv float f0x40C90FDB, %i.k
  %i.m = tail call float @llvm.ceil.f32(float %i.l)
  %i.n = fmul float %i.m, 2.500000e-01
  %i.o = fptosi float %i.n to i32                 ; 2 uses
  %i.p = icmp slt i32 %i.o, 1
  %spec.store.select1 = select i1 %i.p, i32 4, i32 %i.o
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0359 = phi i32 [ %spec.store.select1, %bb.e ], [ %3, %bb.d ] ; 4 uses
  %i.q = sitofp i32 %.0359 to float
  %i.r = fdiv float 9.000000e+01, %i.q            ; 3 uses
  %.sroa.0281.0.vec.extract = extractelement <2 x float> %0, i64 0 ; 3 uses
  %i.s = fadd float %.sroa.0281.0.vec.extract, %i.d ; 10 uses
  %.sroa.0281.4.vec.extract = extractelement <2 x float> %0, i64 1 ; 4 uses
  %foldExtExtBinop = fadd <2 x float> %0, %1
  %i.t = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 3 uses
  %i.u = fsub float %i.t, %i.d                    ; 10 uses
  %i.v = fadd float %.sroa.0281.4.vec.extract, %i.d ; 10 uses
  %i.w = fadd float %.sroa.0281.4.vec.extract, %.sroa.26327.12.vec.extract ; 3 uses
  %i.x = fsub float %i.w, %i.d                    ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  store float %i.s, ptr %5, align 16
  %.sroa.39.64..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 4
  store float %i.v, ptr %.sroa.39.64..sroa_idx, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %i.u, ptr %i.y, align 8
  %.sroa.48.72..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 12
  store float %i.v, ptr %.sroa.48.72..sroa_idx, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16
  store float %i.u, ptr %i.z, align 16
  %.sroa.57.80..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 20
  store float %i.x, ptr %.sroa.57.80..sroa_idx, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 24
  store float %i.s, ptr %i.aa, align 8
  %.sroa.66.88..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 28
  store float %i.x, ptr %.sroa.66.88..sroa_idx, align 4
  %.sroa.0.0.copyload363 = load i32, ptr @texShapes, align 16
  tail call void @rlSetTexture(i32 noundef %.sroa.0.0.copyload363) #14
  %.sroa.0.0.copyload.i = load <2 x float>, ptr @texShapesRec, align 16 ; 4 uses
  %.sroa.2.0.copyload.i = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @texShapesRec, i64 8), align 8 ; 2 uses
  tail call void @rlBegin(i32 noundef 7) #14
  %i.ab = lshr i32 %.0359, 1
  %i.ac = icmp sgt i32 %.0359, 1
  %.sroa.031.0.vec.extract = extractelement <2 x float> %.sroa.0.0.copyload.i, i64 0 ; 14 uses
  %.sroa.031.4.vec.extract = extractelement <2 x float> %.sroa.0.0.copyload.i, i64 1 ; 14 uses
  %foldExtExtBinop372 = fadd <2 x float> %.sroa.0.0.copyload.i, %.sroa.2.0.copyload.i
  %i.ad = extractelement <2 x float> %foldExtExtBinop372, i64 0 ; 14 uses
  %foldExtExtBinop374 = fadd <2 x float> %.sroa.0.0.copyload.i, %.sroa.2.0.copyload.i
  %i.ae = extractelement <2 x float> %foldExtExtBinop374, i64 1 ; 14 uses
  %.not = trunc i32 %.0359 to i1
  %i.af = insertelement <2 x float> poison, float %i.d, i64 0
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.h

bb.g:                                             ; preds = %bb.j
  tail call void @rlColor4ub(i8 noundef zeroext %.sroa.0254.0.extract.trunc, i8 noundef zeroext %.sroa.9.0.extract.trunc, i8 noundef zeroext %.sroa.16268.0.extract.trunc, i8 noundef zeroext %.sroa.23.0.extract.trunc) #14
  %i.ah = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.ai = sitofp i32 %i.ah to float
  %i.aj = fdiv float %.sroa.031.0.vec.extract, %i.ai
  %i.ak = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.al = sitofp i32 %i.ak to float
  %i.am = fdiv float %.sroa.031.4.vec.extract, %i.al
  tail call void @rlTexCoord2f(float noundef %i.aj, float noundef %i.am) #14
  tail call void @rlVertex2f(float noundef %i.s, float noundef %.sroa.0281.4.vec.extract) #14
  %i.an = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.ao = sitofp i32 %i.an to float
  %i.ap = fdiv float %.sroa.031.0.vec.extract, %i.ao
  %i.aq = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.ar = sitofp i32 %i.aq to float
  %i.as = fdiv float %i.ae, %i.ar
  tail call void @rlTexCoord2f(float noundef %i.ap, float noundef %i.as) #14
  tail call void @rlVertex2f(float noundef %i.s, float noundef %i.v) #14
  %i.at = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.au = sitofp i32 %i.at to float
  %i.av = fdiv float %i.ad, %i.au
  %i.aw = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.ax = sitofp i32 %i.aw to float
  %i.ay = fdiv float %i.ae, %i.ax
  tail call void @rlTexCoord2f(float noundef %i.av, float noundef %i.ay) #14
  tail call void @rlVertex2f(float noundef %i.u, float noundef %i.v) #14
  %i.az = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.ba = sitofp i32 %i.az to float
  %i.bb = fdiv float %i.ad, %i.ba
  %i.bc = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.bd = sitofp i32 %i.bc to float
  %i.be = fdiv float %.sroa.031.4.vec.extract, %i.bd
  tail call void @rlTexCoord2f(float noundef %i.bb, float noundef %i.be) #14
  tail call void @rlVertex2f(float noundef %i.u, float noundef %.sroa.0281.4.vec.extract) #14
  tail call void @rlColor4ub(i8 noundef zeroext %.sroa.0254.0.extract.trunc, i8 noundef zeroext %.sroa.9.0.extract.trunc, i8 noundef zeroext %.sroa.16268.0.extract.trunc, i8 noundef zeroext %.sroa.23.0.extract.trunc) #14
  %i.bf = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.bg = sitofp i32 %i.bf to float
  %i.bh = fdiv float %.sroa.031.0.vec.extract, %i.bg
  %i.bi = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.bj = sitofp i32 %i.bi to float
  %i.bk = fdiv float %.sroa.031.4.vec.extract, %i.bj
  tail call void @rlTexCoord2f(float noundef %i.bh, float noundef %i.bk) #14
  tail call void @rlVertex2f(float noundef %i.t, float noundef %i.v) #14
  %i.bl = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.bm = sitofp i32 %i.bl to float
  %i.bn = fdiv float %.sroa.031.0.vec.extract, %i.bm
  %i.bo = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.bp = sitofp i32 %i.bo to float
  %i.bq = fdiv float %i.ae, %i.bp
  tail call void @rlTexCoord2f(float noundef %i.bn, float noundef %i.bq) #14
  tail call void @rlVertex2f(float noundef %i.u, float noundef %i.v) #14
  %i.br = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.bs = sitofp i32 %i.br to float
  %i.bt = fdiv float %i.ad, %i.bs
  %i.bu = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.bv = sitofp i32 %i.bu to float
  %i.bw = fdiv float %i.ae, %i.bv
  tail call void @rlTexCoord2f(float noundef %i.bt, float noundef %i.bw) #14
  tail call void @rlVertex2f(float noundef %i.u, float noundef %i.x) #14
  %i.bx = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.by = sitofp i32 %i.bx to float
  %i.bz = fdiv float %i.ad, %i.by
  %i.ca = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.cb = sitofp i32 %i.ca to float
  %i.cc = fdiv float %.sroa.031.4.vec.extract, %i.cb
  tail call void @rlTexCoord2f(float noundef %i.bz, float noundef %i.cc) #14
  tail call void @rlVertex2f(float noundef %i.t, float noundef %i.x) #14
  tail call void @rlColor4ub(i8 noundef zeroext %.sroa.0254.0.extract.trunc, i8 noundef zeroext %.sroa.9.0.extract.trunc, i8 noundef zeroext %.sroa.16268.0.extract.trunc, i8 noundef zeroext %.sroa.23.0.extract.trunc) #14
  %i.cd = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.ce = sitofp i32 %i.cd to float
  %i.cf = fdiv float %.sroa.031.0.vec.extract, %i.ce
  %i.cg = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.ch = sitofp i32 %i.cg to float
  %i.ci = fdiv float %.sroa.031.4.vec.extract, %i.ch
  tail call void @rlTexCoord2f(float noundef %i.cf, float noundef %i.ci) #14
  tail call void @rlVertex2f(float noundef %i.s, float noundef %i.x) #14
  %i.cj = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.ck = sitofp i32 %i.cj to float
  %i.cl = fdiv float %.sroa.031.0.vec.extract, %i.ck
  %i.cm = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.cn = sitofp i32 %i.cm to float
  %i.co = fdiv float %i.ae, %i.cn
  tail call void @rlTexCoord2f(float noundef %i.cl, float noundef %i.co) #14
  tail call void @rlVertex2f(float noundef %i.s, float noundef %i.w) #14
  %i.cp = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.cq = sitofp i32 %i.cp to float
  %i.cr = fdiv float %i.ad, %i.cq
  %i.cs = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.ct = sitofp i32 %i.cs to float
  %i.cu = fdiv float %i.ae, %i.ct
  tail call void @rlTexCoord2f(float noundef %i.cr, float noundef %i.cu) #14
  tail call void @rlVertex2f(float noundef %i.u, float noundef %i.w) #14
  %i.cv = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.cw = sitofp i32 %i.cv to float
  %i.cx = fdiv float %i.ad, %i.cw
  %i.cy = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.cz = sitofp i32 %i.cy to float
  %i.da = fdiv float %.sroa.031.4.vec.extract, %i.cz
  tail call void @rlTexCoord2f(float noundef %i.cx, float noundef %i.da) #14
  tail call void @rlVertex2f(float noundef %i.u, float noundef %i.x) #14
  tail call void @rlColor4ub(i8 noundef zeroext %.sroa.0254.0.extract.trunc, i8 noundef zeroext %.sroa.9.0.extract.trunc, i8 noundef zeroext %.sroa.16268.0.extract.trunc, i8 noundef zeroext %.sroa.23.0.extract.trunc) #14
  %i.db = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.dc = sitofp i32 %i.db to float
  %i.dd = fdiv float %.sroa.031.0.vec.extract, %i.dc
  %i.de = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.df = sitofp i32 %i.de to float
  %i.dg = fdiv float %.sroa.031.4.vec.extract, %i.df
  tail call void @rlTexCoord2f(float noundef %i.dd, float noundef %i.dg) #14
  tail call void @rlVertex2f(float noundef %.sroa.0281.0.vec.extract, float noundef %i.v) #14
  %i.dh = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.di = sitofp i32 %i.dh to float
  %i.dj = fdiv float %.sroa.031.0.vec.extract, %i.di
  %i.dk = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.dl = sitofp i32 %i.dk to float
  %i.dm = fdiv float %i.ae, %i.dl
  tail call void @rlTexCoord2f(float noundef %i.dj, float noundef %i.dm) #14
  tail call void @rlVertex2f(float noundef %.sroa.0281.0.vec.extract, float noundef %i.x) #14
  %i.dn = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.do = sitofp i32 %i.dn to float
  %i.dp = fdiv float %i.ad, %i.do
  %i.dq = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.dr = sitofp i32 %i.dq to float
  %i.ds = fdiv float %i.ae, %i.dr
  tail call void @rlTexCoord2f(float noundef %i.dp, float noundef %i.ds) #14
  tail call void @rlVertex2f(float noundef %i.s, float noundef %i.x) #14
  %i.dt = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.du = sitofp i32 %i.dt to float
  %i.dv = fdiv float %i.ad, %i.du
  %i.dw = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.dx = sitofp i32 %i.dw to float
  %i.dy = fdiv float %.sroa.031.4.vec.extract, %i.dx
  tail call void @rlTexCoord2f(float noundef %i.dv, float noundef %i.dy) #14
  tail call void @rlVertex2f(float noundef %i.s, float noundef %i.v) #14
  tail call void @rlColor4ub(i8 noundef zeroext %.sroa.0254.0.extract.trunc, i8 noundef zeroext %.sroa.9.0.extract.trunc, i8 noundef zeroext %.sroa.16268.0.extract.trunc, i8 noundef zeroext %.sroa.23.0.extract.trunc) #14
  %i.dz = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.ea = sitofp i32 %i.dz to float
  %i.eb = fdiv float %.sroa.031.0.vec.extract, %i.ea
  %i.ec = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.ed = sitofp i32 %i.ec to float
  %i.ee = fdiv float %.sroa.031.4.vec.extract, %i.ed
  tail call void @rlTexCoord2f(float noundef %i.eb, float noundef %i.ee) #14
  tail call void @rlVertex2f(float noundef %i.s, float noundef %i.v) #14
  %i.ef = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.eg = sitofp i32 %i.ef to float
  %i.eh = fdiv float %.sroa.031.0.vec.extract, %i.eg
  %i.ei = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.ej = sitofp i32 %i.ei to float
  %i.ek = fdiv float %i.ae, %i.ej
  tail call void @rlTexCoord2f(float noundef %i.eh, float noundef %i.ek) #14
  tail call void @rlVertex2f(float noundef %i.s, float noundef %i.x) #14
  %i.el = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.em = sitofp i32 %i.el to float
  %i.en = fdiv float %i.ad, %i.em
  %i.eo = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.ep = sitofp i32 %i.eo to float
  %i.eq = fdiv float %i.ae, %i.ep
  tail call void @rlTexCoord2f(float noundef %i.en, float noundef %i.eq) #14
  tail call void @rlVertex2f(float noundef %i.u, float noundef %i.x) #14
  %i.er = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.es = sitofp i32 %i.er to float
  %i.et = fdiv float %i.ad, %i.es
  %i.eu = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.ev = sitofp i32 %i.eu to float
  %i.ew = fdiv float %.sroa.031.4.vec.extract, %i.ev
  tail call void @rlTexCoord2f(float noundef %i.et, float noundef %i.ew) #14
  tail call void @rlVertex2f(float noundef %i.u, float noundef %i.v) #14
  tail call void @rlEnd() #14
  tail call void @rlSetTexture(i32 noundef 0) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %bb.k

bb.h:                                             ; preds = %bb.f, %bb.j
  %indvars.iv = phi i64 [ 0, %bb.f ], [ %indvars.iv.next, %bb.j ] ; 3 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr @__const.DrawRectangleRoundedLinesEx.angles, i64 %indvars.iv
  %i.ey = load float, ptr %i.ex, align 4          ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv
  %i.fa = load <2 x float>, ptr %i.ez, align 8    ; 3 uses
  %i.fb = extractelement <2 x float> %i.fa, i64 1 ; 7 uses
  %i.fc = extractelement <2 x float> %i.fa, i64 0 ; 7 uses
  br i1 %i.ac, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.h
  %.0357.lcssa = phi float [ %i.ey, %bb.h ], [ %i.fp, %.lr.ph ] ; 2 uses
  br i1 %.not, label %bb.i, label %bb.j

.lr.ph:                                           ; preds = %bb.h, %.lr.ph
  %.0365 = phi i32 [ %i.gv, %.lr.ph ], [ 0, %bb.h ]
  %.0357364 = phi float [ %i.fp, %.lr.ph ], [ %i.ey, %bb.h ] ; 3 uses
  tail call void @rlColor4ub(i8 noundef zeroext %.sroa.0254.0.extract.trunc, i8 noundef zeroext %.sroa.9.0.extract.trunc, i8 noundef zeroext %.sroa.16268.0.extract.trunc, i8 noundef zeroext %.sroa.23.0.extract.trunc) #14
  %i.fd = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.fe = sitofp i32 %i.fd to float
  %i.ff = fdiv float %.sroa.031.0.vec.extract, %i.fe
  %i.fg = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.fh = sitofp i32 %i.fg to float
  %i.fi = fdiv float %.sroa.031.4.vec.extract, %i.fh
  tail call void @rlTexCoord2f(float noundef %i.ff, float noundef %i.fi) #14
  tail call void @rlVertex2f(float noundef %i.fc, float noundef %i.fb) #14
  %i.fj = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.fk = sitofp i32 %i.fj to float
  %i.fl = fdiv float %i.ad, %i.fk
  %i.fm = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.fn = sitofp i32 %i.fm to float
  %i.fo = fdiv float %.sroa.031.4.vec.extract, %i.fn
  tail call void @rlTexCoord2f(float noundef %i.fl, float noundef %i.fo) #14
  %i.fp = tail call float @llvm.fmuladd.f32(float %i.r, float 2.000000e+00, float %.0357364) ; 3 uses
  %i.fq = fmul float %i.fp, f0x3C8EFA35           ; 2 uses
  %i.fr = tail call float @cosf(float noundef %i.fq) #14
  %i.fs = tail call float @llvm.fmuladd.f32(float %i.fr, float %i.d, float %i.fc)
  %i.ft = tail call float @sinf(float noundef %i.fq) #14
  %i.fu = tail call float @llvm.fmuladd.f32(float %i.ft, float %i.d, float %i.fb)
  tail call void @rlVertex2f(float noundef %i.fs, float noundef %i.fu) #14
  %i.fv = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.fw = sitofp i32 %i.fv to float
  %i.fx = fdiv float %i.ad, %i.fw
  %i.fy = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.fz = sitofp i32 %i.fy to float
  %i.ga = fdiv float %i.ae, %i.fz
  tail call void @rlTexCoord2f(float noundef %i.fx, float noundef %i.ga) #14
  %i.gb = fadd float %i.r, %.0357364
  %i.gc = fmul float %i.gb, f0x3C8EFA35           ; 2 uses
  %i.gd = tail call float @cosf(float noundef %i.gc) #14
  %i.ge = tail call float @llvm.fmuladd.f32(float %i.gd, float %i.d, float %i.fc)
  %i.gf = tail call float @sinf(float noundef %i.gc) #14
  %i.gg = tail call float @llvm.fmuladd.f32(float %i.gf, float %i.d, float %i.fb)
  tail call void @rlVertex2f(float noundef %i.ge, float noundef %i.gg) #14
  %i.gh = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.gi = sitofp i32 %i.gh to float
  %i.gj = fdiv float %.sroa.031.0.vec.extract, %i.gi
  %i.gk = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.gl = sitofp i32 %i.gk to float
  %i.gm = fdiv float %i.ae, %i.gl
  tail call void @rlTexCoord2f(float noundef %i.gj, float noundef %i.gm) #14
  %i.gn = fmul float %.0357364, f0x3C8EFA35       ; 2 uses
  %i.go = tail call float @cosf(float noundef %i.gn) #14
  %i.gp = tail call float @sinf(float noundef %i.gn) #14
  %i.gq = insertelement <2 x float> poison, float %i.go, i64 0
  %i.gr = insertelement <2 x float> %i.gq, float %i.gp, i64 1
  %i.gs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gr, <2 x float> %i.ag, <2 x float> %i.fa) ; 2 uses
  %i.gt = extractelement <2 x float> %i.gs, i64 0
  %i.gu = extractelement <2 x float> %i.gs, i64 1
  tail call void @rlVertex2f(float noundef %i.gt, float noundef %i.gu) #14
  %i.gv = add nuw nsw i32 %.0365, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.gv, %i.ab
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

bb.i:                                             ; preds = %._crit_edge
  tail call void @rlColor4ub(i8 noundef zeroext %.sroa.0254.0.extract.trunc, i8 noundef zeroext %.sroa.9.0.extract.trunc, i8 noundef zeroext %.sroa.16268.0.extract.trunc, i8 noundef zeroext %.sroa.23.0.extract.trunc) #14
  %i.gw = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.gx = sitofp i32 %i.gw to float
  %i.gy = fdiv float %.sroa.031.0.vec.extract, %i.gx
  %i.gz = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.ha = sitofp i32 %i.gz to float
  %i.hb = fdiv float %.sroa.031.4.vec.extract, %i.ha
  tail call void @rlTexCoord2f(float noundef %i.gy, float noundef %i.hb) #14
  tail call void @rlVertex2f(float noundef %i.fc, float noundef %i.fb) #14
  %i.hc = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.hd = sitofp i32 %i.hc to float
  %i.he = fdiv float %i.ad, %i.hd
  %i.hf = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.hg = sitofp i32 %i.hf to float
  %i.hh = fdiv float %i.ae, %i.hg
  tail call void @rlTexCoord2f(float noundef %i.he, float noundef %i.hh) #14
  %i.hi = fadd float %i.r, %.0357.lcssa
  %i.hj = fmul float %i.hi, f0x3C8EFA35           ; 2 uses
  %i.hk = tail call float @cosf(float noundef %i.hj) #14
  %i.hl = tail call float @llvm.fmuladd.f32(float %i.hk, float %i.d, float %i.fc)
  %i.hm = tail call float @sinf(float noundef %i.hj) #14
  %i.hn = tail call float @llvm.fmuladd.f32(float %i.hm, float %i.d, float %i.fb)
  tail call void @rlVertex2f(float noundef %i.hl, float noundef %i.hn) #14
  %i.ho = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.hp = sitofp i32 %i.ho to float
  %i.hq = fdiv float %.sroa.031.0.vec.extract, %i.hp
  %i.hr = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.hs = sitofp i32 %i.hr to float
  %i.ht = fdiv float %i.ae, %i.hs
  tail call void @rlTexCoord2f(float noundef %i.hq, float noundef %i.ht) #14
  %i.hu = fmul float %.0357.lcssa, f0x3C8EFA35    ; 2 uses
  %i.hv = tail call float @cosf(float noundef %i.hu) #14
  %i.hw = tail call float @llvm.fmuladd.f32(float %i.hv, float %i.d, float %i.fc)
  %i.hx = tail call float @sinf(float noundef %i.hu) #14
  %i.hy = tail call float @llvm.fmuladd.f32(float %i.hx, float %i.d, float %i.fb)
  tail call void @rlVertex2f(float noundef %i.hw, float noundef %i.hy) #14
  %i.hz = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.ia = sitofp i32 %i.hz to float
  %i.ib = fdiv float %i.ad, %i.ia
  %i.ic = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.id = sitofp i32 %i.ic to float
  %i.ie = fdiv float %.sroa.031.4.vec.extract, %i.id
  tail call void @rlTexCoord2f(float noundef %i.ib, float noundef %i.ie) #14
  tail call void @rlVertex2f(float noundef %i.fc, float noundef %i.fb) #14
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond368.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond368.not, label %bb.g, label %bb.h

bb.k:                                             ; preds = %bb.g, %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @DrawRectangleRoundedLines(<2 x float> %0, <2 x float> %1, float noundef %2, i32 noundef %3, i32 %4) local_unnamed_addr #4 {
bb.a:
  tail call void @DrawRectangleRoundedLinesEx(<2 x float> %0, <2 x float> %1, float noundef %2, i32 noundef %3, float noundef 1.000000e+00, i32 %4)
  ret void
}

; Function Attrs: nounwind uwtable
define void @DrawRectangleRoundedLinesEx(<2 x float> %0, <2 x float> %1, float noundef %2, i32 noundef %3, float noundef %4, i32 %5) local_unnamed_addr #4 {
bb.a:
  %6 = alloca [4 x %struct.Vector2], align 16     ; 11 uses
  %.sroa.0232.0.extract.trunc = trunc i32 %5 to i8 ; 13 uses
  %.sroa.9.0.extract.shift = lshr i32 %5, 8
  %.sroa.9.0.extract.trunc = trunc i32 %.sroa.9.0.extract.shift to i8 ; 13 uses
  %.sroa.16.0.extract.shift = lshr i32 %5, 16
  %.sroa.16.0.extract.trunc = trunc i32 %.sroa.16.0.extract.shift to i8 ; 13 uses
  %.sroa.23.0.extract.shift = lshr i32 %5, 24
  %.sroa.23.0.extract.trunc = trunc nuw i32 %.sroa.23.0.extract.shift to i8 ; 13 uses
  %i.a = fcmp olt float %4, 0.000000e+00
  %spec.store.select = select i1 %i.a, float 0.000000e+00, float %4 ; 9 uses
  %i.b = fcmp ugt float %2, 0.000000e+00
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = insertelement <2 x float> poison, float %spec.store.select, i64 0
  %i.d = shufflevector <2 x float> %i.c, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.e = fsub <2 x float> %0, %i.d                ; 5 uses
  %i.f = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.d, <2 x float> splat (float 2.000000e+00), <2 x float> %1) ; 6 uses
  %i.g = fcmp ogt <2 x float> %i.d, %i.f          ; 2 uses
  %i.h = extractelement <2 x i1> %i.g, i64 0
  %i.i = extractelement <2 x i1> %i.g, i64 1
  %or.cond.i = select i1 %i.h, i1 true, i1 %i.i
  br i1 %or.cond.i, label %bb.c, label %DrawRectangleLinesEx.exit

bb.c:                                             ; preds = %bb.b
  %i.j = extractelement <2 x float> %i.f, i64 0   ; 3 uses
  %i.k = extractelement <2 x float> %i.f, i64 1   ; 3 uses
  %i.l = fcmp ult float %i.j, %i.k
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = fmul float %i.k, 5.000000e-01
  br label %DrawRectangleLinesEx.exit

bb.e:                                             ; preds = %bb.c
  %i.n = fcmp ugt float %i.j, %i.k
  br i1 %i.n, label %DrawRectangleLinesEx.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = fmul float %i.j, 5.000000e-01
  br label %DrawRectangleLinesEx.exit

DrawRectangleLinesEx.exit:                        ; preds = %bb.b, %bb.d, %bb.e, %bb.f
  %.0.i = phi float [ %i.m, %bb.d ], [ %i.o, %bb.f ], [ %spec.store.select, %bb.e ], [ %spec.store.select, %bb.b ] ; 4 uses
  %.sroa.513.12.vec.insert.i = insertelement <2 x float> %i.f, float %.0.i, i64 1 ; 2 uses
  %i.p = extractelement <2 x float> %i.e, i64 1
  %i.q = extractelement <2 x float> %i.f, i64 1
  %i.r = fadd float %i.p, %.0.i                   ; 2 uses
  %.sroa.03.4.vec.insert.i = insertelement <2 x float> %i.e, float %i.r, i64 1
  %.sroa.55.8.vec.insert.i = insertelement <2 x float> poison, float %.0.i, i64 0 ; 2 uses
  %i.s = fneg float %.0.i
  %i.t = tail call float @llvm.fmuladd.f32(float %i.s, float 2.000000e+00, float %i.q)
  %.sroa.55.12.vec.insert.i = insertelement <2 x float> %.sroa.55.8.vec.insert.i, float %i.t, i64 1 ; 2 uses
  %i.u = shufflevector <2 x float> %.sroa.55.8.vec.insert.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.v = fsub <2 x float> %i.e, %i.u
  %i.w = fadd <2 x float> %i.f, %i.v              ; 2 uses
  %i.x = shufflevector <2 x float> %i.e, <2 x float> %i.w, <2 x i32> <i32 0, i32 3>
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %i.w, float %i.r, i64 1
  tail call void @DrawRectanglePro(<2 x float> %i.e, <2 x float> %.sroa.513.12.vec.insert.i, <2 x float> zeroinitializer, float noundef 0.000000e+00, i32 %5)
  tail call void @DrawRectanglePro(<2 x float> %i.x, <2 x float> %.sroa.513.12.vec.insert.i, <2 x float> zeroinitializer, float noundef 0.000000e+00, i32 %5)
  tail call void @DrawRectanglePro(<2 x float> %.sroa.03.4.vec.insert.i, <2 x float> %.sroa.55.12.vec.insert.i, <2 x float> zeroinitializer, float noundef 0.000000e+00, i32 %5)
  tail call void @DrawRectanglePro(<2 x float> %.sroa.0.4.vec.insert.i, <2 x float> %.sroa.55.12.vec.insert.i, <2 x float> zeroinitializer, float noundef 0.000000e+00, i32 %5)
  br label %bb.o

bb.g:                                             ; preds = %bb.a
  %i.y = fcmp oge float %2, 1.000000e+00
  %spec.store.select1 = select i1 %i.y, float 1.000000e+00, float %2
  %.sroa.43339.8.vec.extract341 = extractelement <2 x float> %1, i64 0 ; 2 uses
  %.sroa.43339.12.vec.extract365 = extractelement <2 x float> %1, i64 1 ; 3 uses
  %i.z = fcmp ogt float %.sroa.43339.8.vec.extract341, %.sroa.43339.12.vec.extract365
  %.sroa.43339.12.vec.extract365..sroa.43339.8.vec.extract341 = select i1 %i.z, float %.sroa.43339.12.vec.extract365, float %.sroa.43339.8.vec.extract341
  %.in = fmul float %.sroa.43339.12.vec.extract365..sroa.43339.8.vec.extract341, %spec.store.select1
  %i.aa = fmul float %.in, 5.000000e-01           ; 11 uses
end_hunk_1
