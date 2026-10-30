Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box2d/original/math_functions?download=true
inline.NumInlined: 19
inline.NumDeleted: 10
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @b2IsValidFloat(float noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call float @llvm.fabs.f32(float %0) #3
  %.0 = fcmp one float %i.a, +inf
  ret i1 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext i1 @b2IsValidVec2(<2 x float> %0) local_unnamed_addr #2 {
bb.a:
  %.sroa.0.0.vec.extract = extractelement <2 x float> %0, i64 0
  %i.a = fcmp uno float %.sroa.0.0.vec.extract, 0.000000e+00
  %.sroa.0.4.vec.extract = extractelement <2 x float> %0, i64 1
  %i.b = fcmp uno float %.sroa.0.4.vec.extract, 0.000000e+00
  %or.cond = select i1 %i.a, i1 true, i1 %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %0)
  %i.d = fcmp oeq <2 x float> %i.c, splat (float +inf)
  %i.e = bitcast <2 x i1> %i.d to i2
  %i.f = icmp eq i2 %i.e, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i1 [ %i.f, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext i1 @b2IsValidRotation(<2 x float> %0) local_unnamed_addr #2 {
bb.a:
  %.sroa.0.4.vec.extract = extractelement <2 x float> %0, i64 1
  %i.a = fcmp uno float %.sroa.0.4.vec.extract, 0.000000e+00
  %.sroa.0.0.vec.extract = extractelement <2 x float> %0, i64 0
  %i.b = fcmp uno float %.sroa.0.0.vec.extract, 0.000000e+00
  %or.cond = select i1 %i.a, i1 true, i1 %i.b
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %0)
  %i.d = fcmp oeq <2 x float> %i.c, splat (float +inf)
  %i.e = bitcast <2 x i1> %i.d to i2
  %.not = icmp eq i2 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = fmul nnan <2 x float> %0, %0
  %i.g = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.f) ; 2 uses
  %i.h = fcmp ogt float %i.g, 9.994000e-01
  %i.i = fcmp olt float %i.g, 1.000600e+00
  %i.j = and i1 %i.h, %i.i
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i1 [ %i.j, %bb.c ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext i1 @b2IsValidTransform(<2 x float> %0, <2 x float> %1) local_unnamed_addr #2 {
bb.a:
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %0, i64 0
  %i.a = fcmp uno float %.sroa.0.0.vec.extract.i, 0.000000e+00
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %0, i64 1
  %i.b = fcmp uno float %.sroa.0.4.vec.extract.i, 0.000000e+00
  %or.cond = select i1 %i.a, i1 true, i1 %i.b
  br i1 %or.cond, label %b2IsValidRotation.exit, label %b2IsValidVec2.exit

b2IsValidVec2.exit:                               ; preds = %bb.a
  %i.c = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %0)
  %i.d = fcmp oeq <2 x float> %i.c, splat (float +inf)
  %i.e = bitcast <2 x i1> %i.d to i2
  %i.f = icmp ne i2 %i.e, 0
  %.sroa.0.4.vec.extract.i1 = extractelement <2 x float> %1, i64 1
  %i.g = fcmp uno float %.sroa.0.4.vec.extract.i1, 0.000000e+00
  %or.cond5 = select i1 %i.f, i1 true, i1 %i.g
  %.sroa.0.0.vec.extract.i2 = extractelement <2 x float> %1, i64 0
  %i.h = fcmp uno float %.sroa.0.0.vec.extract.i2, 0.000000e+00
  %or.cond6 = select i1 %or.cond5, i1 true, i1 %i.h
  br i1 %or.cond6, label %b2IsValidRotation.exit, label %bb.b

bb.b:                                             ; preds = %b2IsValidVec2.exit
  %i.i = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %1)
  %i.j = fcmp oeq <2 x float> %i.i, splat (float +inf)
  %i.k = bitcast <2 x i1> %i.j to i2
  %.not = icmp eq i2 %i.k, 0
  br i1 %.not, label %bb.c, label %b2IsValidRotation.exit

bb.c:                                             ; preds = %bb.b
  %i.l = fmul nnan <2 x float> %1, %1
  %i.m = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.l) ; 2 uses
  %i.n = fcmp ogt float %i.m, 9.994000e-01
  %i.o = fcmp olt float %i.m, 1.000600e+00
  %i.p = and i1 %i.n, %i.o
  br label %b2IsValidRotation.exit

b2IsValidRotation.exit:                           ; preds = %bb.a, %bb.c, %bb.b, %b2IsValidVec2.exit
  %.0 = phi i1 [ false, %bb.b ], [ false, %b2IsValidVec2.exit ], [ %i.p, %bb.c ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext i1 @b2IsValidPlane(<2 x float> %0, float %1) local_unnamed_addr #2 {
bb.a:
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %0, i64 0
  %i.a = fcmp uno float %.sroa.0.0.vec.extract.i, 0.000000e+00
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %0, i64 1
  %i.b = fcmp uno float %.sroa.0.4.vec.extract.i, 0.000000e+00
  %or.cond = select i1 %i.a, i1 true, i1 %i.b
  br i1 %or.cond, label %b2IsValidVec2.exit.thread, label %b2IsValidVec2.exit

b2IsValidVec2.exit:                               ; preds = %bb.a
  %i.c = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %0)
  %i.d = fcmp oeq <2 x float> %i.c, splat (float +inf)
  %i.e = bitcast <2 x i1> %i.d to i2
  %i.f = icmp eq i2 %i.e, 0
  br i1 %i.f, label %bb.b, label %b2IsValidVec2.exit.thread

bb.b:                                             ; preds = %b2IsValidVec2.exit
  %i.g = fmul nnan <2 x float> %0, %0
  %i.h = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.g)
  %i.i = fsub float 1.000000e+00, %i.h
  %i.j = tail call float @llvm.fabs.f32(float %i.i)
  %i.k = fcmp olt float %i.j, f0x37480000
  br i1 %i.k, label %bb.c, label %b2IsValidVec2.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.l = tail call float @llvm.fabs.f32(float %1) #3
  %.0.i3 = fcmp one float %i.l, +inf
  br label %b2IsValidVec2.exit.thread

b2IsValidVec2.exit.thread:                        ; preds = %bb.a, %bb.c, %bb.b, %b2IsValidVec2.exit
  %i.m = phi i1 [ false, %bb.b ], [ false, %b2IsValidVec2.exit ], [ %.0.i3, %bb.c ], [ false, %bb.a ]
  ret i1 %i.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext i1 @b2IsValidPosition(<2 x float> %0) local_unnamed_addr #2 {
bb.a:
  %.sroa.0.0.vec.extract = extractelement <2 x float> %0, i64 0
  %i.a = fcmp uno float %.sroa.0.0.vec.extract, 0.000000e+00
  %.sroa.0.4.vec.extract = extractelement <2 x float> %0, i64 1
  %i.b = fcmp uno float %.sroa.0.4.vec.extract, 0.000000e+00
  %or.cond = select i1 %i.a, i1 true, i1 %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %0)
  %i.d = fcmp oeq <2 x float> %i.c, splat (float +inf)
  %i.e = bitcast <2 x i1> %i.d to i2
  %i.f = icmp eq i2 %i.e, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i1 [ %i.f, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext i1 @b2IsValidWorldTransform(<2 x float> %0, <2 x float> %1) local_unnamed_addr #2 {
bb.a:
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %0, i64 0
  %i.a = fcmp uno float %.sroa.0.0.vec.extract.i, 0.000000e+00
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %0, i64 1
  %i.b = fcmp uno float %.sroa.0.4.vec.extract.i, 0.000000e+00
  %or.cond = select i1 %i.a, i1 true, i1 %i.b
  br i1 %or.cond, label %b2IsValidRotation.exit, label %b2IsValidPosition.exit

b2IsValidPosition.exit:                           ; preds = %bb.a
  %i.c = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %0)
  %i.d = fcmp oeq <2 x float> %i.c, splat (float +inf)
  %i.e = bitcast <2 x i1> %i.d to i2
  %i.f = icmp ne i2 %i.e, 0
  %.sroa.0.4.vec.extract.i1 = extractelement <2 x float> %1, i64 1
  %i.g = fcmp uno float %.sroa.0.4.vec.extract.i1, 0.000000e+00
  %or.cond5 = select i1 %i.f, i1 true, i1 %i.g
  %.sroa.0.0.vec.extract.i2 = extractelement <2 x float> %1, i64 0
  %i.h = fcmp uno float %.sroa.0.0.vec.extract.i2, 0.000000e+00
  %or.cond6 = select i1 %or.cond5, i1 true, i1 %i.h
  br i1 %or.cond6, label %b2IsValidRotation.exit, label %bb.b

bb.b:                                             ; preds = %b2IsValidPosition.exit
  %i.i = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %1)
  %i.j = fcmp oeq <2 x float> %i.i, splat (float +inf)
  %i.k = bitcast <2 x i1> %i.j to i2
  %.not = icmp eq i2 %i.k, 0
  br i1 %.not, label %bb.c, label %b2IsValidRotation.exit

bb.c:                                             ; preds = %bb.b
  %i.l = fmul nnan <2 x float> %1, %1
  %i.m = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.l) ; 2 uses
  %i.n = fcmp ogt float %i.m, 9.994000e-01
  %i.o = fcmp olt float %i.m, 1.000600e+00
  %i.p = and i1 %i.n, %i.o
  br label %b2IsValidRotation.exit

b2IsValidRotation.exit:                           ; preds = %bb.a, %bb.c, %bb.b, %b2IsValidPosition.exit
  %.0 = phi i1 [ false, %bb.b ], [ false, %b2IsValidPosition.exit ], [ %i.p, %bb.c ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define float @b2Atan2(float noundef %0, float noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = fcmp oeq float %1, 0.000000e+00
  %i.b = fcmp oeq float %0, 0.000000e+00
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = fcmp olt float %1, 0.000000e+00          ; 2 uses
  %i.d = fneg float %1
  %i.e = select i1 %i.c, float %i.d, float %1     ; 4 uses
  %i.f = fcmp olt float %0, 0.000000e+00          ; 2 uses
  %i.g = fneg float %0
  %i.h = select i1 %i.f, float %i.g, float %0     ; 4 uses
  %i.i = fcmp ogt float %i.h, %i.e                ; 2 uses
  %i.j = select i1 %i.i, float %i.h, float %i.e
  %i.k = fcmp olt float %i.h, %i.e
  %i.l = select i1 %i.k, float %i.h, float %i.e
  %i.m = fdiv float %i.l, %i.j                    ; 4 uses
  %i.n = fmul float %i.m, %i.m                    ; 4 uses
  %i.o = fmul float %i.m, %i.n
  %i.p = fmul float %i.n, %i.n                    ; 2 uses
  %i.q = fmul float %i.p, f0x3CCB7DDA
  %i.r = fadd float %i.q, f0x3E3F4C37
  %i.s = fmul float %i.p, f0x3DC0B66D
  %i.t = fsub float f0xBEAA0D0A, %i.s
  %i.u = fmul float %i.n, %i.r
  %i.v = fadd float %i.t, %i.u
  %i.w = fmul float %i.o, %i.v
  %i.x = fadd float %i.m, %i.w                    ; 2 uses
  %i.y = fsub float f0x3FC90FDB, %i.x
  %.0 = select i1 %i.i, float %i.y, float %i.x    ; 2 uses
  %i.z = fsub float f0x40490FDB, %.0
  %.1 = select i1 %i.c, float %i.z, float %.0     ; 2 uses
  %i.aa = fneg float %.1
  %.2 = select i1 %i.f, float %i.aa, float %.1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.034 = phi float [ %.2, %bb.b ], [ 0.000000e+00, %bb.a ]
  ret float %.034
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define <2 x float> @b2ComputeCosSin(float noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = fcmp olt float %0, -1.000000e+06
  %i.b = fcmp ogt float %0, 1.000000e+06
  %i.c = select i1 %i.b, float 1.000000e+06, float %0
  %i.d = select i1 %i.a, float -1.000000e+06, float %i.c
  %i.e = fpext float %i.d to double               ; 2 uses
  %i.f = fdiv double %i.e, f0x401921FB60000000
  %i.g = fadd double %i.f, f0x4338000000000000
  %i.h = fadd double %i.g, f0xC338000000000000
  %i.i = fmul double %i.h, f0x401921FB60000000
  %i.j = fsub double %i.e, %i.i                   ; 4 uses
  %i.k = fptrunc double %i.j to float             ; 7 uses
  %i.l = fcmp olt double %i.j, f0xBFF921FB6FFFFFFF
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = fadd float %i.k, f0x40490FDB             ; 2 uses
  %i.n = fmul float %i.m, %i.m                    ; 2 uses
  %i.o = fmul nnan float %i.n, 4.000000e+00
  %i.p = fsub float f0x411DE9E7, %i.o
  %i.q = fneg float %i.p
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.r = fcmp ogt double %i.j, f0x3FF921FB6FFFFFFF
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = fadd float %i.k, f0xC0490FDB             ; 2 uses
  %i.t = fmul float %i.s, %i.s                    ; 2 uses
  %i.u = fmul nnan float %i.t, 4.000000e+00
  %i.v = fsub float f0x411DE9E7, %i.u
  %i.w = fneg float %i.v
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.x = fmul float %i.k, %i.k                    ; 2 uses
  %i.y = fmul float %i.x, 4.000000e+00
  %i.z = fsub float f0x411DE9E7, %i.y
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.sink50 = phi float [ %i.t, %bb.d ], [ %i.x, %bb.e ], [ %i.n, %bb.b ]
  %.sink = phi float [ %i.w, %bb.d ], [ %i.z, %bb.e ], [ %i.q, %bb.b ]
  %i.aa = fcmp olt double %i.j, f0xB690000000000000 ; 2 uses
  %i.ab = fmul float %i.k, 1.600000e+01
  %i.ac = fadd float %i.k, f0x40490FDB            ; 2 uses
  %i.ad = fmul nnan float %i.ac, -1.600000e+01
  %.sink59 = select i1 %i.aa, float %i.ac, float %i.k ; 2 uses
  %.sink57 = select i1 %i.aa, float %i.ad, float %i.ab
  %i.ae = fsub float f0x40490FDB, %.sink59        ; 2 uses
  %i.af = fmul float %.sink57, %i.ae
  %i.ag = fmul float %.sink59, 4.000000e+00
  %i.ah = fmul float %i.ag, %i.ae
  %i.ai = insertelement <2 x float> <float poison, float f0x42456461>, float %.sink50, i64 0
  %i.aj = insertelement <2 x float> <float f0xC11DE9E7, float poison>, float %i.ah, i64 1
  %i.ak = fsub <2 x float> %i.ai, %i.aj
  %i.al = insertelement <2 x float> poison, float %.sink, i64 0
  %i.am = insertelement <2 x float> %i.al, float %i.af, i64 1
  %i.an = fdiv <2 x float> %i.am, %i.ak           ; 3 uses
  %i.ao = fmul <2 x float> %i.an, %i.an
  %i.ap = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ao) ; 2 uses
  %i.aq = tail call float @llvm.sqrt.f32(float %i.ap)
  %i.ar = fcmp ogt float %i.ap, 0.000000e+00
  %i.as = fdiv float 1.000000e+00, %i.aq
  %i.at = select i1 %i.ar, float %i.as, float 0.000000e+00
  %i.au = insertelement <2 x float> poison, float %i.at, i64 0
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aw = fmul <2 x float> %i.an, %i.av
  ret <2 x float> %i.aw
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define <2 x float> @b2ComputeRotationBetweenUnitVectors(<2 x float> %0, <2 x float> %1) local_unnamed_addr #2 {
bb.a:
  %i.a = shufflevector <2 x float> %0, <2 x float> poison, <2 x i32> zeroinitializer
  %i.b = fmul <2 x float> %i.a, %1                ; 2 uses
  %i.c = shufflevector <2 x float> %0, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.d = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.e = fmul <2 x float> %i.c, %i.d              ; 2 uses
  %i.f = fadd <2 x float> %i.b, %i.e
  %i.g = fsub <2 x float> %i.b, %i.e
  %i.h = shufflevector <2 x float> %i.f, <2 x float> %i.g, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.i = fmul <2 x float> %i.h, %i.h
  %i.j = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.i) ; 2 uses
  %i.k = tail call float @llvm.sqrt.f32(float %i.j)
  %i.l = fcmp ogt float %i.j, 0.000000e+00
  %i.m = fdiv float 1.000000e+00, %i.k
  %i.n = select i1 %i.l, float %i.m, float 0.000000e+00
  %i.o = insertelement <2 x float> poison, float %i.n, i64 0
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> zeroinitializer
  %i.q = fmul <2 x float> %i.h, %i.p
  ret <2 x float> %i.q
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { memory(none) }

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
end_hunk_0
