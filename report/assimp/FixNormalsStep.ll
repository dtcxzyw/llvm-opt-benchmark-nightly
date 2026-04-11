inline.NumInlined: 127
inline.NumDeleted: 73
begin_hunk_0_@_ZN6Assimp25FixInfacingNormalsProcess11ProcessMeshEP6aiMeshj:bb.a
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %3 = extractelement <8 x float> %32, i64 0
  %4 = extractelement <8 x float> %32, i64 2
  %5 = fsub float %4, %3                          ; 2 uses
  %6 = extractelement <8 x float> %32, i64 1
  %i.j = extractelement <8 x float> %32, i64 3
  %7 = fsub float %6, %i.j                        ; 2 uses
  %i.k = fsub <2 x float> %i.aa, %i.z             ; 3 uses
  %8 = extractelement <8 x float> %32, i64 5
  %9 = extractelement <8 x float> %32, i64 7
  %10 = fsub float %8, %9                         ; 4 uses
  %11 = extractelement <8 x float> %32, i64 4
  %i.l = extractelement <8 x float> %32, i64 6
  %12 = fsub float %11, %i.l                      ; 4 uses
  %i.m = fcmp ogt float %5, 0.000000e+00
  %i.n = extractelement <2 x float> %i.k, i64 1   ; 4 uses
  %i.o = fcmp ule float %i.n, 0.000000e+00
  %.not = xor i1 %i.o, %i.m
end_hunk_0
begin_hunk_1_@_ZN6Assimp25FixInfacingNormalsProcess11ProcessMeshEP6aiMeshj:bb.a

bb.c:                                             ; preds = %.preheader140, %bb.c
  %indvars.iv = phi i64 [ 0, %.preheader140 ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.p = phi <2 x float> [ splat (float -1.000000e+10), %.preheader140 ], [ %i.aa, %bb.c ] ; 2 uses
  %i.q = phi <2 x float> [ splat (float 1.000000e+10), %.preheader140 ], [ %i.z, %bb.c ] ; 2 uses
  %13 = phi <8 x float> [ <float 1.000000e+10, float -1.000000e+10, float -1.000000e+10, float 1.000000e+10, float -1.000000e+10, float -1.000000e+10, float 1.000000e+10, float 1.000000e+10>, %.preheader140 ], [ %32, %bb.c ] ; 5 uses
  %i.r = getelementptr inbounds nuw [12 x i8], ptr %i.i, i64 %indvars.iv ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load float, ptr %i.s, align 4            ; 2 uses
  %14 = getelementptr inbounds nuw [12 x i8], ptr %i.c, i64 %indvars.iv ; 2 uses
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.u = load float, ptr %15, align 4
  %i.v = fadd float %i.t, %i.u
  %16 = load <2 x float>, ptr %i.r, align 4       ; 3 uses
  %17 = load <2 x float>, ptr %14, align 4
  %18 = fadd <2 x float> %16, %17
  %19 = shufflevector <2 x float> %16, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %20 = insertelement <4 x float> poison, float %i.t, i64 0
  %21 = shufflevector <4 x float> %20, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 poison>
  %22 = shufflevector <2 x float> %18, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison> ; 3 uses
  %23 = shufflevector <4 x float> %21, <4 x float> %19, <8 x i32> <i32 0, i32 5, i32 2, i32 5, i32 poison, i32 poison, i32 poison, i32 poison> ; 3 uses
  %24 = shufflevector <8 x float> %22, <8 x float> %23, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %25 = shufflevector <8 x float> %22, <8 x float> %13, <8 x i32> <i32 0, i32 9, i32 10, i32 1, i32 poison, i32 poison, i32 poison, i32 poison>
  %26 = shufflevector <8 x float> %13, <8 x float> %23, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 5, i32 8, i32 9>
  %27 = shufflevector <8 x float> %25, <8 x float> %26, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %28 = shufflevector <8 x float> %13, <8 x float> %22, <8 x i32> <i32 0, i32 9, i32 8, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %29 = shufflevector <8 x float> %23, <8 x float> %13, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 14, i32 15>
  %30 = shufflevector <8 x float> %28, <8 x float> %29, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %31 = fcmp olt <8 x float> %27, %30
  %32 = select <8 x i1> %31, <8 x float> %24, <8 x float> %13 ; 9 uses
  %i.w = insertelement <2 x float> poison, float %i.v, i64 0
  %33 = shufflevector <2 x float> %i.w, <2 x float> %16, <2 x i32> <i32 0, i32 2> ; 4 uses
  %i.x = fcmp olt <2 x float> %33, %i.q
  %i.y = fcmp olt <2 x float> %i.p, %33
  %i.z = select <2 x i1> %i.x, <2 x float> %33, <2 x float> %i.q ; 2 uses
  %i.aa = select <2 x i1> %i.y, <2 x float> %33, <2 x float> %i.p ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !5

bb.d:                                             ; preds = %bb.b
  %i.ab = fcmp ogt float %7, 0.000000e+00
  %i.ac = fcmp ule float %10, 0.000000e+00
  %.not65 = xor i1 %i.ab, %i.ac
  %i.ad = extractelement <2 x float> %i.k, i64 0
  %i.ae = fcmp ogt float %i.ad, 0.000000e+00
  %i.af = fcmp ule float %12, 0.000000e+00
  %.not66 = xor i1 %i.ae, %i.af
  %or.cond = select i1 %.not65, i1 %.not66, i1 false
  br i1 %or.cond, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.ag = fmul float %10, %12                     ; 2 uses
  %i.ah = tail call noundef float @sqrtf(float noundef %i.ag) #13
  %i.ai = fmul float %i.ah, 0x3FA99999A0000000
  %i.aj = fcmp olt float %i.n, %i.ai
  br i1 %i.aj, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = fmul float %i.n, %12
  %i.al = tail call noundef float @sqrtf(float noundef %i.ak) #13
  %i.am = fmul float %i.al, 0x3FA99999A0000000
  %i.an = fcmp olt float %10, %i.am
  br i1 %i.an, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = fmul float %i.n, %10
  %i.ap = tail call noundef float @sqrtf(float noundef %i.ao) #13
  %i.aq = fmul float %i.ap, 0x3FA99999A0000000
  %i.ar = fcmp olt float %12, %i.aq
  br i1 %i.ar, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = fmul float %7, %5
  %i.at = insertelement <2 x float> poison, float %i.as, i64 0
  %i.au = insertelement <2 x float> %i.at, float %i.ag, i64 1
  %i.av = fmul <2 x float> %i.k, %i.au
end_hunk_1
