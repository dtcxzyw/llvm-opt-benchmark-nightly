Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rshapes?download=true
inline.NumInlined: 39
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@CheckCollisionRecs:bb.a
  %i.d = fcmp ogt float %i.c, %.sroa.0.0.vec.extract
  %or.cond = select i1 %i.b, i1 %i.d, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %foldExtExtBinop17 = fadd <2 x float> %2, %3
  %i.e = fcmp olt <2 x float> %0, %foldExtExtBinop17
  %i.f = extractelement <2 x i1> %i.e, i64 1
  %foldExtExtBinop19 = fadd <2 x float> %0, %1
  %i.g = fcmp ogt <2 x float> %foldExtExtBinop19, %2
  %i.h = extractelement <2 x i1> %i.g, i64 1
  %or.cond13 = select i1 %i.f, i1 %i.h, i1 false
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i1 [ %or.cond13, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext i1 @CheckCollisionCircles(<2 x float> %0, float noundef %1, <2 x float> %2, float noundef %3) local_unnamed_addr #10 {
bb.a:
  %foldExtExtBinop = fsub <2 x float> %2, %0
  %i.a = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop11 = fsub <2 x float> %2, %0    ; 2 uses
  %foldExtExtBinop13 = fmul <2 x float> %foldExtExtBinop11, %foldExtExtBinop11
  %i.b = extractelement <2 x float> %foldExtExtBinop13, i64 1
  %i.c = tail call float @llvm.fmuladd.f32(float %i.a, float %i.a, float %i.b)
  %i.d = fadd float %1, %3                        ; 2 uses
  %i.e = fmul float %i.d, %i.d
  %i.f = fcmp ole float %i.c, %i.e
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext i1 @CheckCollisionCircleRec(<2 x float> %0, float noundef %1, <2 x float> %2, <2 x float> %3) local_unnamed_addr #10 {
bb.a:
  %i.a = fmul <2 x float> %3, splat (float 5.000000e-01) ; 5 uses
  %i.b = fadd <2 x float> %2, %i.a
  %i.c = fsub <2 x float> %0, %i.b
  %i.d = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.c) ; 4 uses
  %i.e = insertelement <2 x float> poison, float %1, i64 0
  %i.f = shufflevector <2 x float> %i.e, <2 x float> poison, <2 x i32> zeroinitializer
  %i.g = fadd <2 x float> %i.f, %i.a
  %i.h = fcmp ugt <2 x float> %i.d, %i.g          ; 2 uses
  %i.i = extractelement <2 x i1> %i.h, i64 0
  %i.j = extractelement <2 x i1> %i.h, i64 1
  %or.cond = select i1 %i.i, i1 true, i1 %i.j
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = fcmp ugt <2 x float> %i.d, %i.a          ; 2 uses
  %i.l = extractelement <2 x i1> %i.k, i64 0
  %i.m = extractelement <2 x i1> %i.k, i64 1
  %or.cond37 = select i1 %i.l, i1 %i.m, i1 false
  br i1 %or.cond37, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %foldExtExtBinop = fsub <2 x float> %i.d, %i.a
  %i.n = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop43 = fsub <2 x float> %i.d, %i.a ; 2 uses
  %foldExtExtBinop45 = fmul <2 x float> %foldExtExtBinop43, %foldExtExtBinop43
  %i.o = extractelement <2 x float> %foldExtExtBinop45, i64 1
  %i.p = tail call float @llvm.fmuladd.f32(float %i.n, float %i.n, float %i.o)
  %i.q = fmul float %1, %1
  %i.r = fcmp ole float %i.p, %i.q
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.r, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef zeroext i1 @CheckCollisionLines(<2 x float> %0, <2 x float> %1, <2 x float> %2, <2 x float> %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #13 {
bb.a:
  %i.a = fsub <2 x float> %1, %0                  ; 5 uses
  %foldExtExtBinop = fsub <2 x float> %3, %2
  %i.b = extractelement <2 x float> %foldExtExtBinop, i64 0
  %foldExtExtBinop47 = fsub <2 x float> %3, %2    ; 2 uses
  %i.c = extractelement <2 x float> %foldExtExtBinop47, i64 1
  %i.d = fneg float %i.b                          ; 2 uses
  %i.e = extractelement <2 x float> %i.a, i64 1
  %i.f = fmul float %i.e, %i.d
  %i.g = extractelement <2 x float> %i.a, i64 0
  %i.h = tail call float @llvm.fmuladd.f32(float %i.g, float %i.c, float %i.f) ; 2 uses
  %i.i = tail call float @llvm.fabs.f32(float %i.h)
  %i.j = fcmp ult float %i.i, f0x34000000
  br i1 %i.j, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = fsub <2 x float> %2, %0                  ; 2 uses
  %i.l = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.m = insertelement <2 x float> poison, float %i.d, i64 0
  %i.n = fneg <2 x float> %i.a
  %i.o = shufflevector <2 x float> %i.m, <2 x float> %i.n, <2 x i32> <i32 0, i32 2>
  %i.p = fmul <2 x float> %i.l, %i.o
  %i.q = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> zeroinitializer
  %i.r = shufflevector <2 x float> %i.a, <2 x float> %foldExtExtBinop47, <2 x i32> <i32 3, i32 1>
  %i.s = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.q, <2 x float> %i.r, <2 x float> %i.p)
  %i.t = insertelement <2 x float> poison, float %i.h, i64 0
  %i.u = shufflevector <2 x float> %i.s, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.v = shufflevector <2 x float> %i.t, <2 x float> poison, <4 x i32> zeroinitializer
  %i.w = fdiv <4 x float> %i.u, %i.v              ; 3 uses
  %i.x = fcmp ole <4 x float> %i.w, <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.y = fcmp oge <4 x float> %i.w, <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.z = shufflevector <4 x i1> %i.x, <4 x i1> %i.y, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.aa = freeze <4 x i1> %i.z
  %i.ab = bitcast <4 x i1> %i.aa to i4
  %i.ac = icmp eq i4 %i.ab, -1
  br i1 %i.ac, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ad = shufflevector <4 x float> %i.w, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ae = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ad, <2 x float> %i.a, <2 x float> %0)
  store <2 x float> %i.ae, ptr %4, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ false, %bb.b ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext i1 @CheckCollisionPointLine(<2 x float> %0, <2 x float> %1, <2 x float> %2, i32 noundef %3) local_unnamed_addr #10 {
bb.a:
  %.sroa.033.0.vec.extract = extractelement <2 x float> %0, i64 0 ; 4 uses
  %.sroa.020.0.vec.extract = extractelement <2 x float> %1, i64 0 ; 2 uses
  %foldExtExtBinop = fsub <2 x float> %0, %1
  %i.a = extractelement <2 x float> %foldExtExtBinop, i64 0
  %.sroa.033.4.vec.extract = extractelement <2 x float> %0, i64 1 ; 5 uses
  %.sroa.020.4.vec.extract = extractelement <2 x float> %1, i64 1 ; 4 uses
  %i.b = fsub float %.sroa.033.4.vec.extract, %.sroa.020.4.vec.extract
  %.sroa.0.0.vec.extract = extractelement <2 x float> %2, i64 0 ; 2 uses
  %foldExtExtBinop52 = fsub <2 x float> %2, %1
  %i.c = extractelement <2 x float> %foldExtExtBinop52, i64 0 ; 3 uses
  %.sroa.0.4.vec.extract = extractelement <2 x float> %2, i64 1 ; 3 uses
  %i.d = fsub float %.sroa.0.4.vec.extract, %.sroa.020.4.vec.extract ; 3 uses
  %i.e = fneg float %i.c
  %i.f = fmul float %i.b, %i.e
  %i.g = tail call float @llvm.fmuladd.f32(float %i.a, float %i.d, float %i.f)
  %i.h = tail call float @llvm.fabs.f32(float %i.g)
  %i.i = sitofp i32 %3 to float
  %i.j = tail call float @llvm.fabs.f32(float %i.c) ; 2 uses
  %i.k = tail call float @llvm.fabs.f32(float %i.d) ; 2 uses
  %i.l = tail call nsz float @llvm.maxnum.f32(float %i.j, float %i.k)
  %i.m = fmul float %i.l, %i.i
  %i.n = fcmp olt float %i.h, %i.m
  br i1 %i.n, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.o = fcmp ult float %i.j, %i.k
  br i1 %i.o, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = fcmp ogt float %i.c, 0.000000e+00
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = fcmp ole float %.sroa.020.0.vec.extract, %.sroa.033.0.vec.extract
  %i.r = fcmp ole float %.sroa.033.0.vec.extract, %.sroa.0.0.vec.extract
  %i.s = select i1 %i.q, i1 %i.r, i1 false
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.t = fcmp ole float %.sroa.0.0.vec.extract, %.sroa.033.0.vec.extract
  %i.u = fcmp ole float %.sroa.033.0.vec.extract, %.sroa.020.0.vec.extract
  %i.v = select i1 %i.t, i1 %i.u, i1 false
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  %i.w = fcmp ogt float %i.d, 0.000000e+00
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.x = fcmp ole float %.sroa.020.4.vec.extract, %.sroa.033.4.vec.extract
  %i.y = fcmp ole float %.sroa.033.4.vec.extract, %.sroa.0.4.vec.extract
  %i.z = select i1 %i.x, i1 %i.y, i1 false
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.aa = fcmp ole float %.sroa.0.4.vec.extract, %.sroa.033.4.vec.extract
  %i.ab = fcmp ole float %.sroa.033.4.vec.extract, %.sroa.020.4.vec.extract
  %i.ac = select i1 %i.aa, i1 %i.ab, i1 false
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.d, %bb.e, %bb.a
  %.0.shrunk = phi i1 [ false, %bb.a ], [ %i.v, %bb.e ], [ %i.s, %bb.d ], [ %i.z, %bb.g ], [ %i.ac, %bb.h ]
  ret i1 %.0.shrunk
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext i1 @CheckCollisionCircleLine(<2 x float> %0, float noundef %1, <2 x float> %2, <2 x float> %3) local_unnamed_addr #10 {
bb.a:
  %foldExtExtBinop48.a = fsub <2 x float> %2, %3  ; 6 uses
  %4 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %foldExtExtBinop48.a)
  %5 = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %4)
  %i.a = fcmp ugt float %5, f0x34000000
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %foldExtExtBinop50.a = fsub <2 x float> %0, %2
  %i.b = extractelement <2 x float> %foldExtExtBinop50.a, i64 0 ; 2 uses
  %foldExtExtBinop52 = fsub <2 x float> %0, %2    ; 2 uses
  %foldExtExtBinop54 = fmul <2 x float> %foldExtExtBinop52, %foldExtExtBinop52
  %i.c = extractelement <2 x float> %foldExtExtBinop54, i64 1
  %i.d = tail call float @llvm.fmuladd.f32(float %i.b, float %i.b, float %i.c)
  %i.e = fadd float %1, 0.000000e+00              ; 2 uses
  %i.f = fmul float %i.e, %i.e
  %i.g = fcmp ole float %i.d, %i.f
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.025.4.vec.extract = extractelement <2 x float> %2, i64 1
  %.sroa.025.0.vec.extract = extractelement <2 x float> %2, i64 0
  %.sroa.039.0.vec.extract = extractelement <2 x float> %0, i64 0
  %.sroa.039.4.vec.extract = extractelement <2 x float> %0, i64 1
  %i.h = shufflevector <2 x float> %0, <2 x float> %3, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.i = shufflevector <2 x float> %2, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.j = fsub <4 x float> %i.h, %i.i              ; 4 uses
  %i.k = shufflevector <4 x float> %i.j, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.l = shufflevector <2 x float> %i.k, <2 x float> %foldExtExtBinop48.a, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.m = shufflevector <4 x float> %i.j, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.n = shufflevector <2 x float> %i.m, <2 x float> %i.l, <2 x i32> <i32 0, i32 3>
  %i.o = fmul <2 x float> %i.l, %i.n
  %i.p = shufflevector <4 x float> %i.j, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.q = shufflevector <2 x float> %i.p, <2 x float> %foldExtExtBinop48.a, <2 x i32> <i32 0, i32 2>
  %i.r = shufflevector <2 x float> %foldExtExtBinop48.a, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>
  %i.s = shufflevector <4 x float> %i.r, <4 x float> %i.j, <2 x i32> <i32 5, i32 1>
  %i.t = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.q, <2 x float> %i.s, <2 x float> %i.o) ; 2 uses
  %i.u = extractelement <2 x float> %i.t, i64 0
  %i.v = extractelement <2 x float> %i.t, i64 1
  %i.w = fdiv float %i.u, %i.v                    ; 3 uses
  %i.x = fcmp ogt float %i.w, 1.000000e+00
  %i.y = fcmp olt float %i.w, 0.000000e+00
  %.neg = fneg float %i.w
  %spec.store.select.neg = select i1 %i.y, float -0.000000e+00, float %.neg
  %i.z = select i1 %i.x, float -1.000000e+00, float %spec.store.select.neg ; 2 uses
  %6 = extractelement <2 x float> %foldExtExtBinop48.a, i64 0
  %i.aa = tail call float @llvm.fmuladd.f32(float %i.z, float %6, float %.sroa.025.0.vec.extract)
  %i.ab = fsub float %i.aa, %.sroa.039.0.vec.extract ; 2 uses
  %7 = extractelement <2 x float> %foldExtExtBinop48.a, i64 1
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.z, float %7, float %.sroa.025.4.vec.extract)
  %i.ad = fsub float %i.ac, %.sroa.039.4.vec.extract ; 2 uses
  %i.ae = fmul float %i.ad, %i.ad
  %i.af = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.ab, float %i.ae)
  %i.ag = fmul float %1, %1
  %i.ah = fcmp ole float %i.af, %i.ag
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1 = phi i1 [ %i.g, %bb.b ], [ %i.ah, %bb.c ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { <2 x float>, <2 x float> } @GetCollisionRec(<2 x float> %0, <2 x float> %1, <2 x float> %2, <2 x float> %3) local_unnamed_addr #10 {
bb.a:
  %i.a = fcmp ogt <2 x float> %0, %2
  %i.b = select <2 x i1> %i.a, <2 x float> %0, <2 x float> %2 ; 4 uses
  %i.c = fadd <2 x float> %0, %1                  ; 2 uses
  %i.d = fadd <2 x float> %2, %3                  ; 2 uses
  %i.e = fcmp olt <2 x float> %i.c, %i.d
  %i.f = select <2 x i1> %i.e, <2 x float> %i.c, <2 x float> %i.d ; 3 uses
  %i.g = extractelement <2 x float> %i.f, i64 0
  %i.h = extractelement <2 x float> %i.b, i64 0
  %i.i = fcmp olt float %i.h, %i.g
  %i.j = fcmp olt <2 x float> %i.b, %i.f
  %i.k = extractelement <2 x i1> %i.j, i64 1
  %or.cond = select i1 %i.i, i1 %i.k, i1 false    ; 2 uses
  %i.l = fsub <2 x float> %i.f, %i.b
  %.sroa.036.0 = select i1 %or.cond, <2 x float> %i.b, <2 x float> zeroinitializer
  %.sroa.4.0 = select i1 %or.cond, <2 x float> %i.l, <2 x float> zeroinitializer
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.036.0, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.4.0, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.sqrt.v4f32(<4 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!3 = !{!"llvm.loop.peeled.count", i32 1}
!4 = distinct !{!4, !3}
!5 = distinct !{!5, !3}
!6 = distinct !{!6, !3}
!7 = distinct !{!7, !3}
!8 = distinct !{!8, !3}
end_hunk_0
