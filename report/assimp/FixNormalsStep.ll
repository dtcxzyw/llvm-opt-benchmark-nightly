inline.NumInlined: 127
inline.NumDeleted: 73
begin_hunk_0_@_ZN6Assimp25FixInfacingNormalsProcess11ProcessMeshEP6aiMeshj:bb.a
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %shift = shufflevector <4 x float> %22, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fsub <4 x float> %shift, %22
  %i.j = extractelement <4 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.k = fsub <2 x float> %i.aa, %i.z             ; 3 uses
  %3 = fsub <2 x float> %28, %27                  ; 4 uses
  %shift178 = shufflevector <4 x float> %22, <4 x float> poison, <4 x i32> <i32 poison, i32 3, i32 poison, i32 poison>
  %foldExtExtBinop179 = fsub <4 x float> %22, %shift178
  %i.l = extractelement <4 x float> %foldExtExtBinop179, i64 1 ; 4 uses
  %i.m = fcmp ogt float %i.j, 0.000000e+00
  %i.n = extractelement <2 x float> %i.k, i64 1   ; 4 uses
  %i.o = fcmp ule float %i.n, 0.000000e+00
  %.not = xor i1 %i.o, %i.m
end_hunk_0
begin_hunk_1_@_ZN6Assimp25FixInfacingNormalsProcess11ProcessMeshEP6aiMeshj:bb.a

bb.c:                                             ; preds = %.preheader140, %bb.c
  %indvars.iv = phi i64 [ 0, %.preheader140 ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %4 = phi <2 x float> [ splat (float -1.000000e+10), %.preheader140 ], [ %i.aa, %bb.c ] ; 2 uses
  %5 = phi <2 x float> [ splat (float 1.000000e+10), %.preheader140 ], [ %i.z, %bb.c ] ; 2 uses
  %i.p = phi <2 x float> [ splat (float -1.000000e+10), %.preheader140 ], [ %28, %bb.c ] ; 2 uses
  %i.q = phi <2 x float> [ splat (float 1.000000e+10), %.preheader140 ], [ %27, %bb.c ] ; 2 uses
  %6 = phi <4 x float> [ <float 1.000000e+10, float -1.000000e+10, float -1.000000e+10, float 1.000000e+10>, %.preheader140 ], [ %22, %bb.c ] ; 3 uses
  %i.r = getelementptr inbounds nuw [12 x i8], ptr %i.i, i64 %indvars.iv ; 3 uses
  %7 = load float, ptr %i.r, align 4              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load float, ptr %i.s, align 4            ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %9 = load float, ptr %8, align 4                ; 2 uses
  %10 = getelementptr inbounds nuw [12 x i8], ptr %i.c, i64 %indvars.iv ; 3 uses
  %i.u = load float, ptr %10, align 4
  %i.v = fadd float %7, %i.u
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 4
  %12 = load float, ptr %11, align 4
  %13 = fadd float %i.t, %12
  %14 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %15 = load float, ptr %14, align 4
  %16 = fadd float %9, %15
  %17 = insertelement <4 x float> %6, float %i.v, i64 0
  %18 = insertelement <4 x float> %17, float %9, i64 3 ; 3 uses
  %19 = shufflevector <4 x float> %6, <4 x float> %18, <4 x i32> <i32 0, i32 7, i32 4, i32 3>
  %20 = fcmp olt <4 x float> %18, %19
  %21 = shufflevector <4 x float> %18, <4 x float> poison, <4 x i32> <i32 0, i32 3, i32 0, i32 3>
  %22 = select <4 x i1> %20, <4 x float> %21, <4 x float> %6 ; 5 uses
  %23 = insertelement <2 x float> poison, float %13, i64 0
  %24 = insertelement <2 x float> %23, float %i.t, i64 1 ; 4 uses
  %25 = fcmp olt <2 x float> %24, %i.q
  %26 = fcmp olt <2 x float> %i.p, %24
  %27 = select <2 x i1> %25, <2 x float> %24, <2 x float> %i.q ; 2 uses
  %28 = select <2 x i1> %26, <2 x float> %24, <2 x float> %i.p ; 2 uses
  %i.w = insertelement <2 x float> poison, float %16, i64 0
  %29 = insertelement <2 x float> %i.w, float %7, i64 1 ; 4 uses
  %i.x = fcmp olt <2 x float> %29, %5
  %i.y = fcmp olt <2 x float> %4, %29
  %i.z = select <2 x i1> %i.x, <2 x float> %29, <2 x float> %5 ; 2 uses
  %i.aa = select <2 x i1> %i.y, <2 x float> %29, <2 x float> %4 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !5

bb.d:                                             ; preds = %bb.b
  %30 = extractelement <2 x float> %3, i64 0
  %i.ab = fcmp ogt float %30, 0.000000e+00
  %31 = extractelement <2 x float> %3, i64 1
  %i.ac = fcmp ule float %31, 0.000000e+00
  %.not65 = xor i1 %i.ab, %i.ac
  %i.ad = extractelement <2 x float> %i.k, i64 0
  %i.ae = fcmp ogt float %i.ad, 0.000000e+00
  %i.af = fcmp ule float %i.l, 0.000000e+00
  %.not66 = xor i1 %i.ae, %i.af
  %or.cond = select i1 %.not65, i1 %.not66, i1 false
  br i1 %or.cond, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %32 = extractelement <2 x float> %3, i64 1      ; 3 uses
  %i.ag = fmul float %32, %i.l                    ; 2 uses
  %i.ah = tail call noundef float @sqrtf(float noundef %i.ag) #13
  %i.ai = fmul float %i.ah, 0x3FA99999A0000000
  %i.aj = fcmp olt float %i.n, %i.ai
  br i1 %i.aj, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = fmul float %i.n, %i.l
  %i.al = tail call noundef float @sqrtf(float noundef %i.ak) #13
  %i.am = fmul float %i.al, 0x3FA99999A0000000
  %i.an = fcmp olt float %32, %i.am
  br i1 %i.an, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = fmul float %i.n, %32
  %i.ap = tail call noundef float @sqrtf(float noundef %i.ao) #13
  %i.aq = fmul float %i.ap, 0x3FA99999A0000000
  %i.ar = fcmp olt float %i.l, %i.aq
  br i1 %i.ar, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %33 = extractelement <2 x float> %3, i64 0
  %i.as = fmul float %33, %i.j
  %i.at = insertelement <2 x float> poison, float %i.as, i64 0
  %i.au = insertelement <2 x float> %i.at, float %i.ag, i64 1
  %i.av = fmul <2 x float> %i.k, %i.au
end_hunk_1
