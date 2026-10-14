Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rshapes?download=true
inline.NumInlined: 39
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@DrawRectanglePro:bb.a
  %i.u = shufflevector <2 x float> %2, <2 x float> %foldExtExtBinop114, <4 x i32> <i32 3, i32 1, i32 poison, i32 poison>
  %i.v = shufflevector <2 x float> %i.t, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.w = shufflevector <4 x float> %i.u, <4 x float> %i.v, <8 x i32> <i32 0, i32 4, i32 0, i32 1, i32 4, i32 5, i32 5, i32 1>
  %i.x = shufflevector <4 x float> %i.o, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1>
  %i.y = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.w, <8 x float> %i.x, <8 x float> %i.r)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.z = phi <8 x float> [ %i.d, %bb.b ], [ %i.y, %bb.c ] ; 8 uses
  %.sroa.4.0.extract.shift = lshr i32 %4, 24
  %.sroa.4.0.extract.trunc = trunc nuw i32 %.sroa.4.0.extract.shift to i8
  %.sroa.3.0.extract.shift = lshr i32 %4, 16
  %.sroa.3.0.extract.trunc = trunc i32 %.sroa.3.0.extract.shift to i8
  %.sroa.282.0.extract.shift = lshr i32 %4, 8
  %.sroa.282.0.extract.trunc = trunc i32 %.sroa.282.0.extract.shift to i8
  %.sroa.081.0.extract.trunc = trunc i32 %4 to i8
  %.sroa.0.0.copyload = load i32, ptr @texShapes, align 16
  tail call void @rlSetTexture(i32 noundef %.sroa.0.0.copyload) #14
  %.sroa.0.0.copyload.i = load <2 x float>, ptr @texShapesRec, align 16 ; 4 uses
  %.sroa.2.0.copyload.i = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @texShapesRec, i64 8), align 8 ; 2 uses
  tail call void @rlBegin(i32 noundef 7) #14
  tail call void @rlNormal3f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00) #14
  tail call void @rlColor4ub(i8 noundef zeroext %.sroa.081.0.extract.trunc, i8 noundef zeroext %.sroa.282.0.extract.trunc, i8 noundef zeroext %.sroa.3.0.extract.trunc, i8 noundef zeroext %.sroa.4.0.extract.trunc) #14
  %.sroa.0.0.vec.extract = extractelement <2 x float> %.sroa.0.0.copyload.i, i64 0 ; 2 uses
  %i.aa = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.ab = sitofp i32 %i.aa to float
  %i.ac = fdiv float %.sroa.0.0.vec.extract, %i.ab
  %.sroa.0.4.vec.extract = extractelement <2 x float> %.sroa.0.0.copyload.i, i64 1 ; 2 uses
  %i.ad = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.ae = sitofp i32 %i.ad to float
  %i.af = fdiv float %.sroa.0.4.vec.extract, %i.ae
  tail call void @rlTexCoord2f(float noundef %i.ac, float noundef %i.af) #14
  %i.ag = extractelement <8 x float> %i.z, i64 6
  %i.ah = extractelement <8 x float> %i.z, i64 7
  tail call void @rlVertex2f(float noundef %i.ah, float noundef %i.ag) #14
  %i.ai = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.aj = sitofp i32 %i.ai to float
  %i.ak = fdiv float %.sroa.0.0.vec.extract, %i.aj
  %foldExtExtBinop116 = fadd <2 x float> %.sroa.0.0.copyload.i, %.sroa.2.0.copyload.i
  %i.al = extractelement <2 x float> %foldExtExtBinop116, i64 1 ; 2 uses
  %i.am = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.an = sitofp i32 %i.am to float
  %i.ao = fdiv float %i.al, %i.an
  tail call void @rlTexCoord2f(float noundef %i.ak, float noundef %i.ao) #14
  %i.ap = extractelement <8 x float> %i.z, i64 2
  %i.aq = extractelement <8 x float> %i.z, i64 4
  tail call void @rlVertex2f(float noundef %i.aq, float noundef %i.ap) #14
  %foldExtExtBinop118 = fadd <2 x float> %.sroa.0.0.copyload.i, %.sroa.2.0.copyload.i
  %i.ar = extractelement <2 x float> %foldExtExtBinop118, i64 0 ; 2 uses
  %i.as = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.at = sitofp i32 %i.as to float
  %i.au = fdiv float %i.ar, %i.at
  %i.av = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.aw = sitofp i32 %i.av to float
  %i.ax = fdiv float %i.al, %i.aw
  tail call void @rlTexCoord2f(float noundef %i.au, float noundef %i.ax) #14
  %i.ay = extractelement <8 x float> %i.z, i64 0
  %i.az = extractelement <8 x float> %i.z, i64 1
  tail call void @rlVertex2f(float noundef %i.az, float noundef %i.ay) #14
  %i.ba = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.bb = sitofp i32 %i.ba to float
  %i.bc = fdiv float %i.ar, %i.bb
  %i.bd = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.be = sitofp i32 %i.bd to float
  %i.bf = fdiv float %.sroa.0.4.vec.extract, %i.be
  tail call void @rlTexCoord2f(float noundef %i.bc, float noundef %i.bf) #14
  %i.bg = extractelement <8 x float> %i.z, i64 3
  %i.bh = extractelement <8 x float> %i.z, i64 5
  tail call void @rlVertex2f(float noundef %i.bg, float noundef %i.bh) #14
  tail call void @rlEnd() #14
  tail call void @rlSetTexture(i32 noundef 0) #14
  ret void
}

; Function Attrs: nounwind uwtable
define void @DrawRectangleRec(<2 x float> %0, <2 x float> %1, i32 %2) local_unnamed_addr #4 {
bb.a:
  tail call void @DrawRectanglePro(<2 x float> %0, <2 x float> %1, <2 x float> zeroinitializer, float noundef 0.000000e+00, i32 %2)
  ret void
}

; Function Attrs: nounwind uwtable
define void @DrawRectangleGradientV(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 %4, i32 %5) local_unnamed_addr #4 {
bb.a:
  %i.a = insertelement <2 x i32> poison, i32 %0, i64 0
  %i.b = insertelement <2 x i32> %i.a, i32 %1, i64 1
  %i.c = sitofp <2 x i32> %i.b to <2 x float>
  %i.d = insertelement <2 x i32> poison, i32 %2, i64 0
  %i.e = insertelement <2 x i32> %i.d, i32 %3, i64 1
  %i.f = sitofp <2 x i32> %i.e to <2 x float>
  tail call void @DrawRectangleGradientEx(<2 x float> %i.c, <2 x float> %i.f, i32 %4, i32 %5, i32 %5, i32 %4)
  ret void
}

; Function Attrs: nounwind uwtable
define void @DrawRectangleGradientEx(<2 x float> %0, <2 x float> %1, i32 %2, i32 %3, i32 %4, i32 %5) local_unnamed_addr #4 {
bb.a:
  %.sroa.026.0.extract.trunc = trunc i32 %2 to i8
  %.sroa.227.0.extract.shift = lshr i32 %2, 8
  %.sroa.227.0.extract.trunc = trunc i32 %.sroa.227.0.extract.shift to i8
  %.sroa.328.0.extract.shift = lshr i32 %2, 16
  %.sroa.328.0.extract.trunc = trunc i32 %.sroa.328.0.extract.shift to i8
  %.sroa.429.0.extract.shift = lshr i32 %2, 24
  %.sroa.429.0.extract.trunc = trunc nuw i32 %.sroa.429.0.extract.shift to i8
  %.sroa.022.0.extract.trunc = trunc i32 %3 to i8
  %.sroa.223.0.extract.shift = lshr i32 %3, 8
  %.sroa.223.0.extract.trunc = trunc i32 %.sroa.223.0.extract.shift to i8
  %.sroa.324.0.extract.shift = lshr i32 %3, 16
  %.sroa.324.0.extract.trunc = trunc i32 %.sroa.324.0.extract.shift to i8
  %.sroa.425.0.extract.shift = lshr i32 %3, 24
  %.sroa.425.0.extract.trunc = trunc nuw i32 %.sroa.425.0.extract.shift to i8
  %.sroa.018.0.extract.trunc = trunc i32 %4 to i8
  %.sroa.219.0.extract.shift = lshr i32 %4, 8
  %.sroa.219.0.extract.trunc = trunc i32 %.sroa.219.0.extract.shift to i8
  %.sroa.320.0.extract.shift = lshr i32 %4, 16
  %.sroa.320.0.extract.trunc = trunc i32 %.sroa.320.0.extract.shift to i8
  %.sroa.421.0.extract.shift = lshr i32 %4, 24
  %.sroa.421.0.extract.trunc = trunc nuw i32 %.sroa.421.0.extract.shift to i8
  %.sroa.017.0.extract.trunc = trunc i32 %5 to i8
  %.sroa.2.0.extract.shift = lshr i32 %5, 8
  %.sroa.2.0.extract.trunc = trunc i32 %.sroa.2.0.extract.shift to i8
  %.sroa.3.0.extract.shift = lshr i32 %5, 16
  %.sroa.3.0.extract.trunc = trunc i32 %.sroa.3.0.extract.shift to i8
  %.sroa.4.0.extract.shift = lshr i32 %5, 24
  %.sroa.4.0.extract.trunc = trunc nuw i32 %.sroa.4.0.extract.shift to i8
  %.sroa.0.0.copyload = load i32, ptr @texShapes, align 16
  tail call void @rlSetTexture(i32 noundef %.sroa.0.0.copyload) #14
  %.sroa.0.0.copyload.i = load <2 x float>, ptr @texShapesRec, align 16 ; 4 uses
  %.sroa.2.0.copyload.i = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @texShapesRec, i64 8), align 8 ; 2 uses
  tail call void @rlBegin(i32 noundef 7) #14
  tail call void @rlNormal3f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00) #14
  tail call void @rlColor4ub(i8 noundef zeroext %.sroa.026.0.extract.trunc, i8 noundef zeroext %.sroa.227.0.extract.trunc, i8 noundef zeroext %.sroa.328.0.extract.trunc, i8 noundef zeroext %.sroa.429.0.extract.trunc) #14
  %.sroa.0.0.vec.extract = extractelement <2 x float> %.sroa.0.0.copyload.i, i64 0 ; 2 uses
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.b = sitofp i32 %i.a to float
  %i.c = fdiv float %.sroa.0.0.vec.extract, %i.b
  %.sroa.0.4.vec.extract = extractelement <2 x float> %.sroa.0.0.copyload.i, i64 1 ; 2 uses
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.e = sitofp i32 %i.d to float
  %i.f = fdiv float %.sroa.0.4.vec.extract, %i.e
  tail call void @rlTexCoord2f(float noundef %i.c, float noundef %i.f) #14
  %.sroa.030.0.vec.extract = extractelement <2 x float> %0, i64 0 ; 2 uses
  %.sroa.030.4.vec.extract = extractelement <2 x float> %0, i64 1 ; 2 uses
  tail call void @rlVertex2f(float noundef %.sroa.030.0.vec.extract, float noundef %.sroa.030.4.vec.extract) #14
  tail call void @rlColor4ub(i8 noundef zeroext %.sroa.022.0.extract.trunc, i8 noundef zeroext %.sroa.223.0.extract.trunc, i8 noundef zeroext %.sroa.324.0.extract.trunc, i8 noundef zeroext %.sroa.425.0.extract.trunc) #14
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.h = sitofp i32 %i.g to float
  %i.i = fdiv float %.sroa.0.0.vec.extract, %i.h
  %foldExtExtBinop = fadd <2 x float> %.sroa.0.0.copyload.i, %.sroa.2.0.copyload.i
  %i.j = extractelement <2 x float> %foldExtExtBinop, i64 1 ; 2 uses
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.l = sitofp i32 %i.k to float
  %i.m = fdiv float %i.j, %i.l
  tail call void @rlTexCoord2f(float noundef %i.i, float noundef %i.m) #14
  %foldExtExtBinop48 = fadd <2 x float> %0, %1
  %i.n = extractelement <2 x float> %foldExtExtBinop48, i64 1 ; 2 uses
  tail call void @rlVertex2f(float noundef %.sroa.030.0.vec.extract, float noundef %i.n) #14
  tail call void @rlColor4ub(i8 noundef zeroext %.sroa.018.0.extract.trunc, i8 noundef zeroext %.sroa.219.0.extract.trunc, i8 noundef zeroext %.sroa.320.0.extract.trunc, i8 noundef zeroext %.sroa.421.0.extract.trunc) #14
  %foldExtExtBinop50 = fadd <2 x float> %.sroa.0.0.copyload.i, %.sroa.2.0.copyload.i
  %i.o = extractelement <2 x float> %foldExtExtBinop50, i64 0 ; 2 uses
  %i.p = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.q = sitofp i32 %i.p to float
  %i.r = fdiv float %i.o, %i.q
  %i.s = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.t = sitofp i32 %i.s to float
  %i.u = fdiv float %i.j, %i.t
  tail call void @rlTexCoord2f(float noundef %i.r, float noundef %i.u) #14
  %foldExtExtBinop52 = fadd <2 x float> %0, %1
  %i.v = extractelement <2 x float> %foldExtExtBinop52, i64 0 ; 2 uses
  tail call void @rlVertex2f(float noundef %i.v, float noundef %i.n) #14
  tail call void @rlColor4ub(i8 noundef zeroext %.sroa.017.0.extract.trunc, i8 noundef zeroext %.sroa.2.0.extract.trunc, i8 noundef zeroext %.sroa.3.0.extract.trunc, i8 noundef zeroext %.sroa.4.0.extract.trunc) #14
  %i.w = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.x = sitofp i32 %i.w to float
  %i.y = fdiv float %i.o, %i.x
  %i.z = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.aa = sitofp i32 %i.z to float
  %i.ab = fdiv float %.sroa.0.4.vec.extract, %i.aa
  tail call void @rlTexCoord2f(float noundef %i.y, float noundef %i.ab) #14
  tail call void @rlVertex2f(float noundef %i.v, float noundef %.sroa.030.4.vec.extract) #14
  tail call void @rlEnd() #14
  tail call void @rlSetTexture(i32 noundef 0) #14
  ret void
}

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
  %6 = load <4 x float>, ptr %5, align 16
  %7 = shufflevector <4 x float> %6, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.b = load float, ptr %i.a, align 4
  %i.c = insertelement <2 x float> %7, float %i.b, i64 1
  %i.d = fdiv <2 x float> splat (float 5.000000e-01), %i.c ; 2 uses
  call void @rlBegin(i32 noundef 1) #14
  call void @rlColor4ub(i8 noundef zeroext %.sroa.0.0.extract.trunc, i8 noundef zeroext %.sroa.2.0.extract.trunc, i8 noundef zeroext %.sroa.3.0.extract.trunc, i8 noundef zeroext %.sroa.4.0.extract.trunc) #14
  %i.e = sitofp i32 %0 to float                   ; 2 uses
  %i.f = extractelement <2 x float> %i.d, i64 0   ; 2 uses
  %i.g = fadd float %i.f, %i.e                    ; 4 uses
  %i.h = sitofp i32 %1 to float                   ; 2 uses
  %i.i = extractelement <2 x float> %i.d, i64 1   ; 2 uses
  %i.j = fadd float %i.i, %i.h                    ; 4 uses
  call void @rlVertex2f(float noundef %i.g, float noundef %i.j) #14
  %i.k = sitofp i32 %2 to float
  %i.l = fadd float %i.e, %i.k
  %i.m = fsub float %i.l, %i.f                    ; 4 uses
  call void @rlVertex2f(float noundef %i.m, float noundef %i.j) #14
  call void @rlVertex2f(float noundef %i.m, float noundef %i.j) #14
  %i.n = sitofp i32 %3 to float
  %i.o = fadd float %i.h, %i.n
  %i.p = fsub float %i.o, %i.i                    ; 4 uses
  call void @rlVertex2f(float noundef %i.m, float noundef %i.p) #14
  call void @rlVertex2f(float noundef %i.m, float noundef %i.p) #14
  call void @rlVertex2f(float noundef %i.g, float noundef %i.p) #14
  call void @rlVertex2f(float noundef %i.g, float noundef %i.p) #14
  call void @rlVertex2f(float noundef %i.g, float noundef %i.j) #14
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
  %i.af = and i32 %.0359, 1
  %.not = icmp eq i32 %i.af, 0
  %i.ag = insertelement <2 x float> poison, float %i.d, i64 0
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.h

bb.g:                                             ; preds = %bb.j
  tail call void @rlColor4ub(i8 noundef zeroext %.sroa.0254.0.extract.trunc, i8 noundef zeroext %.sroa.9.0.extract.trunc, i8 noundef zeroext %.sroa.16268.0.extract.trunc, i8 noundef zeroext %.sroa.23.0.extract.trunc) #14
  %i.ai = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.aj = sitofp i32 %i.ai to float
  %i.ak = fdiv float %.sroa.031.0.vec.extract, %i.aj
  %i.al = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.am = sitofp i32 %i.al to float
  %i.an = fdiv float %.sroa.031.4.vec.extract, %i.am
  tail call void @rlTexCoord2f(float noundef %i.ak, float noundef %i.an) #14
  tail call void @rlVertex2f(float noundef %i.s, float noundef %.sroa.0281.4.vec.extract) #14
  %i.ao = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.ap = sitofp i32 %i.ao to float
  %i.aq = fdiv float %.sroa.031.0.vec.extract, %i.ap
  %i.ar = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.as = sitofp i32 %i.ar to float
  %i.at = fdiv float %i.ae, %i.as
  tail call void @rlTexCoord2f(float noundef %i.aq, float noundef %i.at) #14
  tail call void @rlVertex2f(float noundef %i.s, float noundef %i.v) #14
  %i.au = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 4), align 4
  %i.av = sitofp i32 %i.au to float
  %i.aw = fdiv float %i.ad, %i.av
  %i.ax = load i32, ptr getelementptr inbounds nuw (i8, ptr @texShapes, i64 8), align 8
  %i.ay = sitofp i32 %i.ax to float
  %i.az = fdiv float %i.ae, %i.ay
  tail call void @rlTexCoord2f(float noundef %i.aw, float noundef %i.az) #14
  tail call void @rlVertex2f(float noundef %i.u, float noundef %i.v) #14
end_hunk_0
