Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rcore?download=true
inline.NumInlined: 1934
inline.NumDeleted: 137
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 45
begin_hunk_0_@CameraMoveUp:bb.a

GetCameraUp.exit:                                 ; preds = %bb.a, %bb.b
  %.sroa.617.0.i.i = phi float [ %.sroa.24.0.copyload.i, %bb.a ], [ %i.j, %bb.b ]
  %i.k = phi <2 x float> [ %.sroa.03.0.copyload.i, %bb.a ], [ %i.i, %bb.b ]
  %i.l = insertelement <2 x float> poison, float %1, i64 0
  %i.m = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> zeroinitializer
  %i.n = fmul <2 x float> %i.m, %i.k              ; 2 uses
  %i.o = fmul float %1, %.sroa.617.0.i.i          ; 2 uses
  %.sroa.012.0.copyload = load <2 x float>, ptr %0, align 4
  %.sroa.213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.213.0.copyload = load float, ptr %.sroa.213.0..sroa_idx, align 4
  %i.p = fadd <2 x float> %i.n, %.sroa.012.0.copyload
  %i.q = fadd float %i.o, %.sroa.213.0.copyload
  store <2 x float> %i.p, ptr %0, align 4
  store float %i.q, ptr %.sroa.213.0..sroa_idx, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %.sroa.03.0.copyload = load <2 x float>, ptr %i.r, align 4
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %.sroa.24.0.copyload = load float, ptr %.sroa.24.0..sroa_idx, align 4
  %i.s = fadd <2 x float> %i.n, %.sroa.03.0.copyload
  %i.t = fadd float %i.o, %.sroa.24.0.copyload
  store <2 x float> %i.s, ptr %i.r, align 4
  store float %i.t, ptr %.sroa.24.0..sroa_idx, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @CameraMoveRight(ptr nofree noundef captures(none) %0, float noundef %1, i1 noundef zeroext %2) local_unnamed_addr #27 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %.sroa.011.0.copyload.i.i = load <2 x float>, ptr %i.a, align 4 ; 2 uses
  %.sroa.212.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %.sroa.212.0.copyload.i.i = load float, ptr %.sroa.212.0..sroa_idx.i.i, align 4 ; 2 uses
  %.sroa.09.0.copyload.i.i = load <2 x float>, ptr %0, align 4 ; 2 uses
  %.sroa.210.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.210.0.copyload.i.i = load float, ptr %.sroa.210.0..sroa_idx.i.i, align 4 ; 2 uses
  %i.b = fsub <2 x float> %.sroa.011.0.copyload.i.i, %.sroa.09.0.copyload.i.i ; 5 uses
  %i.c = fsub float %.sroa.212.0.copyload.i.i, %.sroa.210.0.copyload.i.i ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.b, %i.b
  %i.d = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.e = extractelement <2 x float> %i.b, i64 0   ; 2 uses
  %i.f = tail call float @llvm.fmuladd.f32(float %i.e, float %i.e, float %i.d)
  %i.g = tail call float @llvm.fmuladd.f32(float %i.c, float %i.c, float %i.f) ; 2 uses
  %i.h = fcmp une float %i.g, 0.000000e+00
  br i1 %i.h, label %bb.b, label %GetCameraForward.exit.i

bb.b:                                             ; preds = %bb.a
  %sqrt.i.i.i = tail call float @llvm.sqrt.f32(float %i.g)
  %i.i = fdiv float 1.000000e+00, %sqrt.i.i.i     ; 2 uses
  %i.j = insertelement <2 x float> poison, float %i.i, i64 0
  %i.k = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> zeroinitializer
  %i.l = fmul <2 x float> %i.b, %i.k
  %i.m = fmul float %i.c, %i.i
  br label %GetCameraForward.exit.i

GetCameraForward.exit.i:                          ; preds = %bb.b, %bb.a
  %.sroa.013.0.i.i.i = phi <2 x float> [ %i.l, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %.sroa.617.0.i.i.i = phi float [ %i.m, %bb.b ], [ %i.c, %bb.a ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.03.0.copyload.i.i = load <2 x float>, ptr %i.n, align 4 ; 3 uses
  %.sroa.24.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.24.0.copyload.i.i = load float, ptr %.sroa.24.0..sroa_idx.i.i, align 4 ; 5 uses
  %.sroa.07.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.03.0.copyload.i.i, i64 0 ; 4 uses
  %.sroa.07.4.vec.extract.i.i.i = extractelement <2 x float> %.sroa.03.0.copyload.i.i, i64 1 ; 4 uses
  %i.o = fmul float %.sroa.07.4.vec.extract.i.i.i, %.sroa.07.4.vec.extract.i.i.i
  %i.p = tail call float @llvm.fmuladd.f32(float %.sroa.07.0.vec.extract.i.i.i, float %.sroa.07.0.vec.extract.i.i.i, float %i.o)
  %i.q = tail call float @llvm.fmuladd.f32(float %.sroa.24.0.copyload.i.i, float %.sroa.24.0.copyload.i.i, float %i.p) ; 2 uses
  %i.r = fcmp une float %i.q, 0.000000e+00
  %i.s = extractelement <2 x float> %.sroa.03.0.copyload.i.i, i64 0
  br i1 %i.r, label %bb.c, label %GetCameraUp.exit.i

bb.c:                                             ; preds = %GetCameraForward.exit.i
  %sqrt.i.i31.i = tail call float @llvm.sqrt.f32(float %i.q)
  %i.t = fdiv float 1.000000e+00, %sqrt.i.i31.i   ; 3 uses
  %i.u = fmul float %.sroa.07.0.vec.extract.i.i.i, %i.t
  %i.v = fmul float %.sroa.07.4.vec.extract.i.i.i, %i.t
  %i.w = fmul float %.sroa.24.0.copyload.i.i, %i.t
  br label %GetCameraUp.exit.i

GetCameraUp.exit.i:                               ; preds = %bb.c, %GetCameraForward.exit.i
  %.sroa.03.0.vec.extract.i.pre-phi.i = phi float [ %.sroa.07.0.vec.extract.i.i.i, %GetCameraForward.exit.i ], [ %i.u, %bb.c ] ; 2 uses
  %.sroa.03.4.vec.extract.i.pre-phi.i = phi float [ %.sroa.07.4.vec.extract.i.i.i, %GetCameraForward.exit.i ], [ %i.v, %bb.c ] ; 2 uses
  %.sroa.617.0.i.i30.i = phi float [ %.sroa.24.0.copyload.i.i, %GetCameraForward.exit.i ], [ %i.w, %bb.c ] ; 2 uses
  %.sroa.011.4.vec.extract.i.i = extractelement <2 x float> %.sroa.013.0.i.i.i, i64 1 ; 2 uses
  %i.x = fneg float %.sroa.03.4.vec.extract.i.pre-phi.i
  %i.y = fmul float %.sroa.617.0.i.i.i, %i.x
  %i.z = tail call float @llvm.fmuladd.f32(float %.sroa.011.4.vec.extract.i.i, float %.sroa.617.0.i.i30.i, float %i.y) ; 4 uses
  %.sroa.018.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.z, i64 0
  %.sroa.011.0.vec.extract.i.i = extractelement <2 x float> %.sroa.013.0.i.i.i, i64 0 ; 2 uses
  %i.aa = fneg float %.sroa.617.0.i.i30.i
  %i.ab = fmul float %.sroa.011.0.vec.extract.i.i, %i.aa
  %i.ac = tail call float @llvm.fmuladd.f32(float %.sroa.617.0.i.i.i, float %.sroa.03.0.vec.extract.i.pre-phi.i, float %i.ab) ; 4 uses
  %.sroa.018.4.vec.insert.i.i = insertelement <2 x float> %.sroa.018.0.vec.insert.i.i, float %i.ac, i64 1
  %i.ad = fneg float %.sroa.03.0.vec.extract.i.pre-phi.i
  %i.ae = fmul float %.sroa.011.4.vec.extract.i.i, %i.ad
  %i.af = tail call float @llvm.fmuladd.f32(float %.sroa.011.0.vec.extract.i.i, float %.sroa.03.4.vec.extract.i.pre-phi.i, float %i.ae) ; 4 uses
  %i.ag = fmul float %i.ac, %i.ac
  %i.ah = tail call float @llvm.fmuladd.f32(float %i.z, float %i.z, float %i.ag)
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.af, float %i.af, float %i.ah) ; 2 uses
  %i.aj = fcmp une float %i.ai, 0.000000e+00
  br i1 %i.aj, label %bb.d, label %GetCameraRight.exit

bb.d:                                             ; preds = %GetCameraUp.exit.i
  %sqrt.i.i = tail call float @llvm.sqrt.f32(float %i.ai)
  %i.ak = fdiv float 1.000000e+00, %sqrt.i.i      ; 3 uses
  %i.al = fmul float %i.z, %i.ak
  %.sroa.013.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.al, i64 0
  %i.am = fmul float %i.ac, %i.ak
  %.sroa.013.4.vec.insert.i.i = insertelement <2 x float> %.sroa.013.0.vec.insert.i.i, float %i.am, i64 1
  %i.an = fmul float %i.af, %i.ak
  br label %GetCameraRight.exit

GetCameraRight.exit:                              ; preds = %GetCameraUp.exit.i, %bb.d
  %.sroa.013.0.i.i = phi <2 x float> [ %.sroa.013.4.vec.insert.i.i, %bb.d ], [ %.sroa.018.4.vec.insert.i.i, %GetCameraUp.exit.i ] ; 4 uses
  %.sroa.617.0.i.i = phi float [ %i.an, %bb.d ], [ %i.af, %GetCameraUp.exit.i ] ; 3 uses
  br i1 %2, label %bb.e, label %Vector3Normalize.exit

bb.e:                                             ; preds = %GetCameraRight.exit
  %i.ao = tail call float @llvm.fabs.f32(float %.sroa.24.0.copyload.i.i)
  %i.ap = fcmp ogt float %i.ao, f0x3F350481
  br i1 %i.ap, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = tail call float @llvm.fabs.f32(float %i.s)
  %i.ar = fcmp ogt float %i.aq, f0x3F350481
  br i1 %i.ar, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.sroa.036.0.vec.insert = insertelement <2 x float> %.sroa.013.0.i.i, float 0.000000e+00, i64 0
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %.sroa.036.4.vec.insert = insertelement <2 x float> %.sroa.013.0.i.i, float 0.000000e+00, i64 1
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.g, %bb.h
  %.sroa.036.0 = phi <2 x float> [ %.sroa.036.4.vec.insert, %bb.h ], [ %.sroa.036.0.vec.insert, %bb.g ], [ %.sroa.013.0.i.i, %bb.e ] ; 5 uses
  %.sroa.11.0 = phi float [ %.sroa.617.0.i.i, %bb.h ], [ %.sroa.617.0.i.i, %bb.g ], [ 0.000000e+00, %bb.e ] ; 4 uses
  %.sroa.07.0.vec.extract.i = extractelement <2 x float> %.sroa.036.0, i64 0 ; 2 uses
  %foldExtExtBinop65 = fmul <2 x float> %.sroa.036.0, %.sroa.036.0
  %i.as = extractelement <2 x float> %foldExtExtBinop65, i64 1
  %i.at = tail call float @llvm.fmuladd.f32(float %.sroa.07.0.vec.extract.i, float %.sroa.07.0.vec.extract.i, float %i.as)
  %i.au = tail call float @llvm.fmuladd.f32(float %.sroa.11.0, float %.sroa.11.0, float %i.at) ; 2 uses
  %i.av = fcmp une float %i.au, 0.000000e+00
  br i1 %i.av, label %bb.j, label %Vector3Normalize.exit

bb.j:                                             ; preds = %bb.i
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.au)
  %i.aw = fdiv float 1.000000e+00, %sqrt.i        ; 2 uses
  %i.ax = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.ay = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> zeroinitializer
  %i.az = fmul <2 x float> %.sroa.036.0, %i.ay
  %i.ba = fmul float %.sroa.11.0, %i.aw
  br label %Vector3Normalize.exit

Vector3Normalize.exit:                            ; preds = %bb.j, %bb.i, %GetCameraRight.exit
  %.sroa.036.1 = phi <2 x float> [ %.sroa.013.0.i.i, %GetCameraRight.exit ], [ %i.az, %bb.j ], [ %.sroa.036.0, %bb.i ]
  %.sroa.11.1 = phi float [ %.sroa.617.0.i.i, %GetCameraRight.exit ], [ %i.ba, %bb.j ], [ %.sroa.11.0, %bb.i ]
  %i.bb = fmul float %1, %.sroa.11.1              ; 2 uses
  %i.bc = insertelement <2 x float> poison, float %1, i64 0
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.be = fmul <2 x float> %i.bd, %.sroa.036.1    ; 2 uses
  %i.bf = fadd <2 x float> %.sroa.09.0.copyload.i.i, %i.be
  %i.bg = fadd float %.sroa.210.0.copyload.i.i, %i.bb
  store <2 x float> %i.bf, ptr %0, align 4
  store float %i.bg, ptr %.sroa.210.0..sroa_idx.i.i, align 4
  %i.bh = fadd <2 x float> %.sroa.011.0.copyload.i.i, %i.be
  %i.bi = fadd float %.sroa.212.0.copyload.i.i, %i.bb
  store <2 x float> %i.bh, ptr %i.a, align 4
  store float %i.bi, ptr %.sroa.212.0..sroa_idx.i.i, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @CameraMoveToTarget(ptr nofree noundef captures(none) %0, float noundef %1) local_unnamed_addr #27 {
GetCameraForward.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.022.0.copyload = load <2 x float>, ptr %0, align 4
  %.sroa.223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.223.0.copyload = load float, ptr %.sroa.223.0..sroa_idx, align 4
  %.sroa.020.0.copyload = load <2 x float>, ptr %i.a, align 4 ; 2 uses
  %.sroa.221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.221.0.copyload = load float, ptr %.sroa.221.0..sroa_idx, align 4 ; 2 uses
  %i.b = fsub <2 x float> %.sroa.020.0.copyload, %.sroa.022.0.copyload ; 5 uses
  %i.c = fsub float %.sroa.221.0.copyload, %.sroa.223.0.copyload ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.b, %i.b
  %i.d = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.e = extractelement <2 x float> %i.b, i64 0   ; 2 uses
  %i.f = tail call float @llvm.fmuladd.f32(float %i.e, float %i.e, float %i.d)
  %i.g = tail call float @llvm.fmuladd.f32(float %i.c, float %i.c, float %i.f) ; 2 uses
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.g) ; 2 uses
  %i.h = fcmp une float %i.g, 0.000000e+00        ; 2 uses
  %i.i = fdiv float 1.000000e+00, %sqrt.i         ; 2 uses
  %i.j = insertelement <2 x float> poison, float %i.i, i64 0
  %i.k = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> zeroinitializer
  %i.l = fmul <2 x float> %i.b, %i.k
  %i.m = fmul float %i.c, %i.i
  %.sroa.013.0.i.i = select i1 %i.h, <2 x float> %i.l, <2 x float> %i.b
  %.sroa.617.0.i.i = select i1 %i.h, float %i.m, float %i.c
  %i.n = fadd float %1, %sqrt.i                   ; 2 uses
  %2 = fcmp ugt float %i.n, 0.000000e+00
  %.neg = fneg float %i.n
  %i.o = select i1 %2, float %.neg, float -1.000000e-03 ; 2 uses
  %i.p = fmul float %i.o, %.sroa.617.0.i.i
  %i.q = insertelement <2 x float> poison, float %i.o, i64 0
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> zeroinitializer
  %i.s = fmul <2 x float> %i.r, %.sroa.013.0.i.i
  %i.t = fadd <2 x float> %.sroa.020.0.copyload, %i.s
  %i.u = fadd float %.sroa.221.0.copyload, %i.p
  store <2 x float> %i.t, ptr %0, align 4
  store float %i.u, ptr %.sroa.223.0..sroa_idx, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @CameraYaw(ptr nofree noundef captures(none) %0, float noundef %1, i1 noundef zeroext %2) local_unnamed_addr #24 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.03.0.copyload.i = load <2 x float>, ptr %i.a, align 4 ; 4 uses
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.24.0.copyload.i = load float, ptr %.sroa.24.0..sroa_idx.i, align 4 ; 3 uses
  %.sroa.07.0.vec.extract.i.i = extractelement <2 x float> %.sroa.03.0.copyload.i, i64 0 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.03.0.copyload.i, %.sroa.03.0.copyload.i
  %i.b = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.c = tail call float @llvm.fmuladd.f32(float %.sroa.07.0.vec.extract.i.i, float %.sroa.07.0.vec.extract.i.i, float %i.b)
  %i.d = tail call float @llvm.fmuladd.f32(float %.sroa.24.0.copyload.i, float %.sroa.24.0.copyload.i, float %i.c) ; 3 uses
  %i.e = fcmp une float %i.d, 0.000000e+00
  %i.f = shufflevector <2 x float> %.sroa.03.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.g = insertelement <2 x float> %i.f, float %.sroa.24.0.copyload.i, i64 1 ; 2 uses
  br i1 %i.e, label %bb.b, label %GetCameraUp.exit

bb.b:                                             ; preds = %bb.a
  %sqrt.i.i = tail call float @llvm.sqrt.f32(float %i.d)
  %i.h = fdiv float 1.000000e+00, %sqrt.i.i       ; 2 uses
  %i.i = insertelement <2 x float> poison, float %i.h, i64 0
  %i.j = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.k = fmul <2 x float> %i.g, %i.j              ; 4 uses
  %i.l = fmul float %.sroa.07.0.vec.extract.i.i, %i.h ; 3 uses
  %foldExtExtBinop75 = fmul <2 x float> %i.k, %i.k
  %.pre69 = extractelement <2 x float> %foldExtExtBinop75, i64 0
  %.pre70 = tail call float @llvm.fmuladd.f32(float %i.l, float %i.l, float %.pre69)
  %i.m = extractelement <2 x float> %i.k, i64 1   ; 2 uses
  %.pre72 = tail call float @llvm.fmuladd.f32(float %i.m, float %i.m, float %.pre70)
  br label %GetCameraUp.exit

GetCameraUp.exit:                                 ; preds = %bb.a, %bb.b
  %.pre-phi73 = phi float [ %i.d, %bb.a ], [ %.pre72, %bb.b ] ; 2 uses
  %.sroa.044.0.vec.extract.i.pre-phi = phi float [ %.sroa.07.0.vec.extract.i.i, %bb.a ], [ %i.l, %bb.b ]
  %i.n = phi <2 x float> [ %i.g, %bb.a ], [ %i.k, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %.sroa.032.0.copyload = load <2 x float>, ptr %i.o, align 4 ; 2 uses
  %.sroa.233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %.sroa.233.0.copyload = load float, ptr %.sroa.233.0..sroa_idx, align 4
  %.sroa.030.0.copyload = load <2 x float>, ptr %0, align 4 ; 2 uses
  %.sroa.231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.sroa.231.0.copyload = load float, ptr %.sroa.231.0..sroa_idx, align 4
  %sqrt.i = tail call float @llvm.sqrt.f32(float %.pre-phi73)
  %i.p = fcmp oeq float %.pre-phi73, 0.000000e+00
  %i.q = fdiv float 1.000000e+00, %sqrt.i
  %i.r = select i1 %i.p, float 1.000000e+00, float %i.q ; 2 uses
  %i.s = fmul float %1, 5.000000e-01              ; 2 uses
  %i.t = tail call float @sinf(float noundef %i.s) #56 ; 2 uses
  %i.u = tail call float @cosf(float noundef %i.s) #56
  %i.v = fmul float %i.u, 2.000000e+00            ; 2 uses
  %i.w = fsub <2 x float> %.sroa.032.0.copyload, %.sroa.030.0.copyload ; 4 uses
  %i.x = fsub float %.sroa.233.0.copyload, %.sroa.231.0.copyload ; 3 uses
  %i.y = insertelement <2 x float> poison, float %i.r, i64 0
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aa = fmul <2 x float> %i.n, %i.z
  %i.ab = fmul float %.sroa.044.0.vec.extract.i.pre-phi, %i.r
  %i.ac = insertelement <2 x float> poison, float %i.t, i64 0
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ae = fmul <2 x float> %i.ad, %i.aa           ; 4 uses
  %i.af = fmul float %i.t, %i.ab                  ; 4 uses
  %i.ag = extractelement <2 x float> %i.w, i64 1  ; 2 uses
  %i.ah = fneg float %i.ag
  %i.ai = extractelement <2 x float> %i.w, i64 0
  %i.aj = fneg float %i.ai
  %i.ak = fneg float %i.x
  %i.al = extractelement <2 x float> %i.ae, i64 1 ; 2 uses
  %i.am = fmul float %i.al, %i.ah
  %i.an = extractelement <2 x float> %i.ae, i64 0 ; 2 uses
  %i.ao = fmul float %i.an, %i.aj
  %i.ap = fmul float %i.af, %i.ak
  %i.aq = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ar = insertelement <2 x float> %i.aq, float %i.x, i64 0
  %i.as = insertelement <2 x float> poison, float %i.am, i64 0
  %i.at = insertelement <2 x float> %i.as, float %i.ap, i64 1
  %i.au = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ae, <2 x float> %i.ar, <2 x float> %i.at) ; 4 uses
  %i.av = extractelement <2 x float> %i.au, i64 0
  %i.aw = extractelement <2 x float> %i.au, i64 1 ; 2 uses
  %i.ax = tail call float @llvm.fmuladd.f32(float %i.af, float %i.ag, float %i.ao) ; 3 uses
  %i.ay = fneg float %i.ax
  %i.az = fneg float %i.aw
  %i.ba = fmul float %i.af, %i.ay
  %i.bb = fmul float %i.al, %i.az
  %i.bc = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bd = insertelement <2 x float> %i.bc, float %i.ax, i64 0
  %i.be = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.bf = insertelement <2 x float> %i.be, float %i.ba, i64 1
  %i.bg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ae, <2 x float> %i.bd, <2 x float> %i.bf)
  %i.bh = fneg float %i.av
  %i.bi = fmul float %i.an, %i.bh
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.af, float %i.aw, float %i.bi)
  %i.bk = insertelement <2 x float> poison, float %i.v, i64 0
  %i.bl = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bm = fmul <2 x float> %i.bl, %i.au
  %i.bn = fmul float %i.v, %i.ax
  %i.bo = fmul <2 x float> %i.bg, splat (float 2.000000e+00)
  %i.bp = fmul float %i.bj, 2.000000e+00
  %i.bq = fadd <2 x float> %i.w, %i.bm
  %i.br = fadd float %i.x, %i.bn
  %i.bs = fadd <2 x float> %i.bq, %i.bo           ; 2 uses
  %i.bt = fadd float %i.br, %i.bp                 ; 2 uses
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %GetCameraUp.exit
  %.sroa.213.0.copyload = load float, ptr %.sroa.233.0..sroa_idx, align 4
  %i.bu = fsub <2 x float> %.sroa.032.0.copyload, %i.bs
  %i.bv = fsub float %.sroa.213.0.copyload, %i.bt
  store <2 x float> %i.bu, ptr %0, align 4
  store float %i.bv, ptr %.sroa.231.0..sroa_idx, align 4
  br label %bb.e

bb.d:                                             ; preds = %GetCameraUp.exit
  %.sroa.24.0.copyload = load float, ptr %.sroa.231.0..sroa_idx, align 4
  %i.bw = fadd <2 x float> %.sroa.030.0.copyload, %i.bs
  %i.bx = fadd float %i.bt, %.sroa.24.0.copyload
  store <2 x float> %i.bw, ptr %i.o, align 4
  store float %i.bx, ptr %.sroa.233.0..sroa_idx, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @CameraPitch(ptr nofree noundef captures(none) %0, float noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #24 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.03.0.copyload.i = load <2 x float>, ptr %i.a, align 4 ; 4 uses
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %.sroa.24.0.copyload.i = load float, ptr %.sroa.24.0..sroa_idx.i, align 4 ; 4 uses
  %.sroa.07.0.vec.extract.i.i = extractelement <2 x float> %.sroa.03.0.copyload.i, i64 0 ; 7 uses
  %.sroa.07.4.vec.extract.i.i = extractelement <2 x float> %.sroa.03.0.copyload.i, i64 1 ; 7 uses
  %i.b = fmul float %.sroa.07.4.vec.extract.i.i, %.sroa.07.4.vec.extract.i.i
  %i.c = tail call float @llvm.fmuladd.f32(float %.sroa.07.0.vec.extract.i.i, float %.sroa.07.0.vec.extract.i.i, float %i.b) ; 2 uses
  %i.d = tail call float @llvm.fmuladd.f32(float %.sroa.24.0.copyload.i, float %.sroa.24.0.copyload.i, float %i.c) ; 2 uses
  %i.e = fcmp une float %i.d, 0.000000e+00
  br i1 %i.e, label %bb.b, label %GetCameraUp.exit

bb.b:                                             ; preds = %bb.a
  %sqrt.i.i = tail call float @llvm.sqrt.f32(float %i.d)
  %i.f = fdiv float 1.000000e+00, %sqrt.i.i       ; 2 uses
  %i.g = insertelement <2 x float> poison, float %i.f, i64 0
  %i.h = shufflevector <2 x float> %i.g, <2 x float> poison, <2 x i32> zeroinitializer
  %i.i = fmul <2 x float> %.sroa.03.0.copyload.i, %i.h
  %i.j = fmul float %.sroa.24.0.copyload.i, %i.f
  br label %GetCameraUp.exit

GetCameraUp.exit:                                 ; preds = %bb.a, %bb.b
  %.sroa.013.0.i.i = phi <2 x float> [ %i.i, %bb.b ], [ %.sroa.03.0.copyload.i, %bb.a ] ; 5 uses
  %.sroa.617.0.i.i = phi float [ %i.j, %bb.b ], [ %.sroa.24.0.copyload.i, %bb.a ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %.sroa.070.0.copyload = load <2 x float>, ptr %i.k, align 4 ; 3 uses
  %.sroa.271.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %.sroa.271.0.copyload = load float, ptr %.sroa.271.0..sroa_idx, align 4
  %.sroa.068.0.copyload = load <2 x float>, ptr %0, align 4 ; 3 uses
  %.sroa.269.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.sroa.269.0.copyload = load float, ptr %.sroa.269.0..sroa_idx, align 4
  %.sroa.06.0.vec.extract.i = extractelement <2 x float> %.sroa.070.0.copyload, i64 0
  %.sroa.03.0.vec.extract.i = extractelement <2 x float> %.sroa.068.0.copyload, i64 0
  %.sroa.06.4.vec.extract.i = extractelement <2 x float> %.sroa.070.0.copyload, i64 1
  %.sroa.03.4.vec.extract.i = extractelement <2 x float> %.sroa.068.0.copyload, i64 1
  %.sroa.08.4.vec.insert.i = fsub <2 x float> %.sroa.070.0.copyload, %.sroa.068.0.copyload ; 8 uses
  %i.l = extractelement <2 x float> %.sroa.08.4.vec.insert.i, i64 1 ; 8 uses
  %i.m = extractelement <2 x float> %.sroa.08.4.vec.insert.i, i64 0 ; 8 uses
  %i.n = fsub float %.sroa.271.0.copyload, %.sroa.269.0.copyload ; 8 uses
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %GetCameraUp.exit
  %.sroa.020.4.vec.extract.i = extractelement <2 x float> %.sroa.013.0.i.i, i64 1 ; 2 uses
  %i.o = fneg float %i.l
  %.sroa.020.0.vec.extract.i = extractelement <2 x float> %.sroa.013.0.i.i, i64 0 ; 2 uses
  %i.p = fneg float %i.n
  %i.q = fneg float %i.m
  %i.r = fmul float %.sroa.020.4.vec.extract.i, %i.l
  %i.s = tail call float @llvm.fmuladd.f32(float %.sroa.020.0.vec.extract.i, float %i.m, float %i.r)
  %i.t = tail call float @llvm.fmuladd.f32(float %.sroa.617.0.i.i, float %i.n, float %i.s)
  %i.u = fneg float %.sroa.020.0.vec.extract.i    ; 2 uses
  %i.v = fneg float %.sroa.020.4.vec.extract.i    ; 2 uses
  %i.w = fneg float %.sroa.617.0.i.i              ; 2 uses
  %i.x = insertelement <2 x float> poison, float %.sroa.617.0.i.i, i64 0
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.z = insertelement <2 x float> %.sroa.08.4.vec.insert.i, float %i.o, i64 0
  %i.aa = fmul <2 x float> %i.y, %i.z
  %i.ab = shufflevector <2 x float> %.sroa.013.0.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ac = insertelement <2 x float> %i.ab, float %i.v, i64 1
  %i.ad = insertelement <2 x float> poison, float %i.n, i64 0
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.af = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> %i.ae, <2 x float> %i.aa) ; 2 uses
  %i.ag = shufflevector <2 x float> %.sroa.013.0.i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ah = insertelement <2 x float> %i.ae, float %i.p, i64 0
end_hunk_0
begin_hunk_1_@UpdateCamera:bb.a
  br i1 %i.h, label %bb.du, label %CameraMoveRight.exit781

bb.du:                                            ; preds = %GetCameraRight.exit.i754
  %i.aps = tail call float @llvm.fabs.f32(float %.sroa.24.0.copyload.i.i.i743)
  %i.apt = fcmp ogt float %i.aps, f0x3F350481
  br i1 %i.apt, label %bb.dy, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.apu = tail call float @llvm.fabs.f32(float %.sroa.07.0.vec.extract.i.i.i.i744)
  %i.apv = fcmp ogt float %i.apu, f0x3F350481
  br i1 %i.apv, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  %.sroa.036.0.vec.insert.i773 = insertelement <2 x float> %.sroa.013.0.i.i.i755, float 0.000000e+00, i64 0
  br label %bb.dy

bb.dx:                                            ; preds = %bb.dv
  %.sroa.036.4.vec.insert.i765 = insertelement <2 x float> %.sroa.013.0.i.i.i755, float 0.000000e+00, i64 1
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw, %bb.du
  %.sroa.036.0.i766 = phi <2 x float> [ %.sroa.036.4.vec.insert.i765, %bb.dx ], [ %.sroa.036.0.vec.insert.i773, %bb.dw ], [ %.sroa.013.0.i.i.i755, %bb.du ] ; 5 uses
  %.sroa.11.0.i767 = phi float [ %.sroa.617.0.i.i.i756, %bb.dx ], [ %.sroa.617.0.i.i.i756, %bb.dw ], [ 0.000000e+00, %bb.du ] ; 4 uses
  %.sroa.07.0.vec.extract.i.i768 = extractelement <2 x float> %.sroa.036.0.i766, i64 0 ; 2 uses
  %foldExtExtBinop1043 = fmul <2 x float> %.sroa.036.0.i766, %.sroa.036.0.i766
  %i.apw = extractelement <2 x float> %foldExtExtBinop1043, i64 1
  %i.apx = tail call float @llvm.fmuladd.f32(float %.sroa.07.0.vec.extract.i.i768, float %.sroa.07.0.vec.extract.i.i768, float %i.apw)
  %i.apy = tail call float @llvm.fmuladd.f32(float %.sroa.11.0.i767, float %.sroa.11.0.i767, float %i.apx) ; 2 uses
  %i.apz = fcmp une float %i.apy, 0.000000e+00
  br i1 %i.apz, label %bb.dz, label %CameraMoveRight.exit781

bb.dz:                                            ; preds = %bb.dy
  %sqrt.i.i770 = tail call float @llvm.sqrt.f32(float %i.apy)
  %i.aqa = fdiv float 1.000000e+00, %sqrt.i.i770  ; 2 uses
  %i.aqb = insertelement <2 x float> poison, float %i.aqa, i64 0
  %i.aqc = shufflevector <2 x float> %i.aqb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aqd = fmul <2 x float> %.sroa.036.0.i766, %i.aqc
  %i.aqe = fmul float %.sroa.11.0.i767, %i.aqa
  br label %CameraMoveRight.exit781

CameraMoveRight.exit781:                          ; preds = %GetCameraRight.exit.i754, %bb.dy, %bb.dz
  %.sroa.036.1.i757 = phi <2 x float> [ %.sroa.013.0.i.i.i755, %GetCameraRight.exit.i754 ], [ %i.aqd, %bb.dz ], [ %.sroa.036.0.i766, %bb.dy ]
  %.sroa.11.1.i758 = phi float [ %.sroa.617.0.i.i.i756, %GetCameraRight.exit.i754 ], [ %i.aqe, %bb.dz ], [ %.sroa.11.0.i767, %bb.dy ]
  %i.aqf = fmul float %i.o, %.sroa.11.1.i758      ; 2 uses
  %i.aqg = insertelement <2 x float> poison, float %i.o, i64 0
  %i.aqh = shufflevector <2 x float> %i.aqg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aqi = fmul <2 x float> %i.aqh, %.sroa.036.1.i757 ; 2 uses
  %i.aqj = fadd <2 x float> %.sroa.09.0.copyload.i.i.i729, %i.aqi
  %i.aqk = fadd float %.sroa.210.0.copyload.i.i.i731, %i.aqf
  store <2 x float> %i.aqj, ptr %0, align 4
  store float %i.aqk, ptr %.sroa.231.0..sroa_idx.i565, align 4
  %i.aql = fadd <2 x float> %.sroa.011.0.copyload.i.i.i726, %i.aqi
  %i.aqm = fadd float %.sroa.212.0.copyload.i.i.i728, %i.aqf
  store <2 x float> %i.aql, ptr %i.afz, align 4
  store float %i.aqm, ptr %.sroa.233.0..sroa_idx.i562, align 4
  br label %GetGamepadAxisMovement.exit725.thread

GetGamepadAxisMovement.exit725.thread:            ; preds = %GetGamepadAxisMovement.exit585, %GetGamepadAxisMovement.exit588.thread, %GetGamepadAxisMovement.exit627.thread, %GetGamepadAxisMovement.exit686.thread, %GetGamepadAxisMovement.exit686.thread.thread971, %CameraMoveRight.exit781, %bb.cj
  br i1 %i.k, label %bb.ea, label %bb.eg

bb.ea:                                            ; preds = %GetGamepadAxisMovement.exit725.thread
  %i.aqn = load i8, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 228), align 4
  %i.aqo = icmp eq i8 %i.aqn, 1
  br i1 %i.aqo, label %bb.eb, label %bb.ed

bb.eb:                                            ; preds = %bb.ea
  %i.aqp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.03.0.copyload.i.i783 = load <2 x float>, ptr %i.aqp, align 4 ; 5 uses
  %.sroa.24.0..sroa_idx.i.i784 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.24.0.copyload.i.i785 = load float, ptr %.sroa.24.0..sroa_idx.i.i784, align 4 ; 4 uses
  %.sroa.07.0.vec.extract.i.i.i786 = extractelement <2 x float> %.sroa.03.0.copyload.i.i783, i64 0 ; 2 uses
  %foldExtExtBinop1045 = fmul <2 x float> %.sroa.03.0.copyload.i.i783, %.sroa.03.0.copyload.i.i783
  %i.aqq = extractelement <2 x float> %foldExtExtBinop1045, i64 1
  %i.aqr = tail call float @llvm.fmuladd.f32(float %.sroa.07.0.vec.extract.i.i.i786, float %.sroa.07.0.vec.extract.i.i.i786, float %i.aqq)
  %i.aqs = tail call float @llvm.fmuladd.f32(float %.sroa.24.0.copyload.i.i785, float %.sroa.24.0.copyload.i.i785, float %i.aqr) ; 2 uses
  %i.aqt = fcmp une float %i.aqs, 0.000000e+00
  br i1 %i.aqt, label %bb.ec, label %CameraMoveUp.exit807

bb.ec:                                            ; preds = %bb.eb
  %sqrt.i.i.i806 = tail call float @llvm.sqrt.f32(float %i.aqs)
  %i.aqu = fdiv float 1.000000e+00, %sqrt.i.i.i806 ; 2 uses
  %i.aqv = insertelement <2 x float> poison, float %i.aqu, i64 0
  %i.aqw = shufflevector <2 x float> %i.aqv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aqx = fmul <2 x float> %.sroa.03.0.copyload.i.i783, %i.aqw
  %i.aqy = fmul float %.sroa.24.0.copyload.i.i785, %i.aqu
  br label %CameraMoveUp.exit807

CameraMoveUp.exit807:                             ; preds = %bb.eb, %bb.ec
  %.sroa.617.0.i.i.i791 = phi float [ %.sroa.24.0.copyload.i.i785, %bb.eb ], [ %i.aqy, %bb.ec ]
  %i.aqz = phi <2 x float> [ %.sroa.03.0.copyload.i.i783, %bb.eb ], [ %i.aqx, %bb.ec ]
  %i.ara = insertelement <2 x float> poison, float %i.o, i64 0
  %i.arb = shufflevector <2 x float> %i.ara, <2 x float> poison, <2 x i32> zeroinitializer
  %i.arc = fmul <2 x float> %i.arb, %i.aqz        ; 2 uses
  %i.ard = fmul float %i.o, %.sroa.617.0.i.i.i791 ; 2 uses
  %.sroa.012.0.copyload.i792 = load <2 x float>, ptr %0, align 4
  %.sroa.213.0..sroa_idx.i793 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.213.0.copyload.i794 = load float, ptr %.sroa.213.0..sroa_idx.i793, align 4
  %i.are = fadd <2 x float> %i.arc, %.sroa.012.0.copyload.i792
  %i.arf = fadd float %i.ard, %.sroa.213.0.copyload.i794
  store <2 x float> %i.are, ptr %0, align 4
  store float %i.arf, ptr %.sroa.213.0..sroa_idx.i793, align 4
  %i.arg = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %.sroa.03.0.copyload.i799 = load <2 x float>, ptr %i.arg, align 4
  %.sroa.24.0..sroa_idx.i800 = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %.sroa.24.0.copyload.i801 = load float, ptr %.sroa.24.0..sroa_idx.i800, align 4
  %i.arh = fadd <2 x float> %i.arc, %.sroa.03.0.copyload.i799
  %i.ari = fadd float %i.ard, %.sroa.24.0.copyload.i801
  store <2 x float> %i.arh, ptr %i.arg, align 4
  store float %i.ari, ptr %.sroa.24.0..sroa_idx.i800, align 4
  br label %bb.ed

bb.ed:                                            ; preds = %CameraMoveUp.exit807, %bb.ea
  %i.arj = load i8, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 537), align 1
  %i.ark = icmp eq i8 %i.arj, 1
  br i1 %i.ark, label %bb.ee, label %.thread

bb.ee:                                            ; preds = %bb.ed
  %i.arl = fneg float %i.o                        ; 2 uses
  %i.arm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.03.0.copyload.i.i809 = load <2 x float>, ptr %i.arm, align 4 ; 5 uses
  %.sroa.24.0..sroa_idx.i.i810 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.24.0.copyload.i.i811 = load float, ptr %.sroa.24.0..sroa_idx.i.i810, align 4 ; 4 uses
  %.sroa.07.0.vec.extract.i.i.i812 = extractelement <2 x float> %.sroa.03.0.copyload.i.i809, i64 0 ; 2 uses
  %foldExtExtBinop1047 = fmul <2 x float> %.sroa.03.0.copyload.i.i809, %.sroa.03.0.copyload.i.i809
  %i.arn = extractelement <2 x float> %foldExtExtBinop1047, i64 1
  %i.aro = tail call float @llvm.fmuladd.f32(float %.sroa.07.0.vec.extract.i.i.i812, float %.sroa.07.0.vec.extract.i.i.i812, float %i.arn)
  %i.arp = tail call float @llvm.fmuladd.f32(float %.sroa.24.0.copyload.i.i811, float %.sroa.24.0.copyload.i.i811, float %i.aro) ; 2 uses
  %i.arq = fcmp une float %i.arp, 0.000000e+00
  br i1 %i.arq, label %bb.ef, label %CameraMoveUp.exit833

bb.ef:                                            ; preds = %bb.ee
  %sqrt.i.i.i832 = tail call float @llvm.sqrt.f32(float %i.arp)
  %i.arr = fdiv float 1.000000e+00, %sqrt.i.i.i832 ; 2 uses
  %i.ars = insertelement <2 x float> poison, float %i.arr, i64 0
  %i.art = shufflevector <2 x float> %i.ars, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aru = fmul <2 x float> %.sroa.03.0.copyload.i.i809, %i.art
  %i.arv = fmul float %.sroa.24.0.copyload.i.i811, %i.arr
  br label %CameraMoveUp.exit833

CameraMoveUp.exit833:                             ; preds = %bb.ee, %bb.ef
  %.sroa.617.0.i.i.i817 = phi float [ %.sroa.24.0.copyload.i.i811, %bb.ee ], [ %i.arv, %bb.ef ]
  %i.arw = phi <2 x float> [ %.sroa.03.0.copyload.i.i809, %bb.ee ], [ %i.aru, %bb.ef ]
  %i.arx = insertelement <2 x float> poison, float %i.arl, i64 0
  %i.ary = shufflevector <2 x float> %i.arx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.arz = fmul <2 x float> %i.arw, %i.ary        ; 2 uses
  %i.asa = fmul float %.sroa.617.0.i.i.i817, %i.arl ; 2 uses
  %.sroa.012.0.copyload.i818 = load <2 x float>, ptr %0, align 4
  %.sroa.213.0..sroa_idx.i819 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.213.0.copyload.i820 = load float, ptr %.sroa.213.0..sroa_idx.i819, align 4
  %i.asb = fadd <2 x float> %i.arz, %.sroa.012.0.copyload.i818
  %i.asc = fadd float %i.asa, %.sroa.213.0.copyload.i820
  store <2 x float> %i.asb, ptr %0, align 4
  store float %i.asc, ptr %.sroa.213.0..sroa_idx.i819, align 4
  %i.asd = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %.sroa.03.0.copyload.i825 = load <2 x float>, ptr %i.asd, align 4
  %.sroa.24.0..sroa_idx.i826 = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %.sroa.24.0.copyload.i827 = load float, ptr %.sroa.24.0..sroa_idx.i826, align 4
  %i.ase = fadd <2 x float> %i.arz, %.sroa.03.0.copyload.i825
  %i.asf = fadd float %i.asa, %.sroa.24.0.copyload.i827
  store <2 x float> %i.ase, ptr %i.asd, align 4
  store float %i.asf, ptr %.sroa.24.0..sroa_idx.i826, align 4
  br label %.thread

bb.eg:                                            ; preds = %GetGamepadAxisMovement.exit725.thread
  switch i32 %1, label %IsKeyPressed.exit874.thread [
    i32 4, label %.thread
    i32 2, label %.thread
  ]

.thread:                                          ; preds = %CameraMoveUp.exit833, %bb.ed, %MatrixRotate.exit, %bb.eg, %bb.eg
  %i.asg = load float, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1932), align 4 ; 2 uses
  %i.ash = tail call float @llvm.fabs.f32(float %i.asg)
  %i.asi = load float, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1936), align 8 ; 2 uses
  %i.asj = tail call float @llvm.fabs.f32(float %i.asi)
  %i.ask = fcmp ogt float %i.ash, %i.asj
  %..i = select i1 %i.ask, float %i.asg, float %i.asi
  %i.asl = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.022.0.copyload.i = load <2 x float>, ptr %0, align 4
  %.sroa.223.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.sroa.223.0.copyload.i = load float, ptr %.sroa.223.0..sroa_idx.i, align 4
  %.sroa.020.0.copyload.i = load <2 x float>, ptr %i.asl, align 4 ; 6 uses
  %.sroa.221.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.221.0.copyload.i = load float, ptr %.sroa.221.0..sroa_idx.i, align 4 ; 6 uses
  %i.asm = fsub <2 x float> %.sroa.020.0.copyload.i, %.sroa.022.0.copyload.i ; 5 uses
  %i.asn = fsub float %.sroa.221.0.copyload.i, %.sroa.223.0.copyload.i ; 4 uses
  %foldExtExtBinop1049 = fmul <2 x float> %i.asm, %i.asm
  %i.aso = extractelement <2 x float> %foldExtExtBinop1049, i64 1
  %i.asp = extractelement <2 x float> %i.asm, i64 0 ; 2 uses
  %i.asq = tail call float @llvm.fmuladd.f32(float %i.asp, float %i.asp, float %i.aso)
  %i.asr = tail call float @llvm.fmuladd.f32(float %i.asn, float %i.asn, float %i.asq) ; 2 uses
  %sqrt.i.i836 = tail call float @llvm.sqrt.f32(float %i.asr) ; 2 uses
  %i.ass = fcmp une float %i.asr, 0.000000e+00    ; 2 uses
  %i.ast = fdiv float 1.000000e+00, %sqrt.i.i836  ; 2 uses
  %i.asu = insertelement <2 x float> poison, float %i.ast, i64 0
  %i.asv = shufflevector <2 x float> %i.asu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.asw = fmul <2 x float> %i.asm, %i.asv
  %i.asx = fmul float %i.asn, %i.ast
  %.sroa.013.0.i.i.i840 = select i1 %i.ass, <2 x float> %i.asw, <2 x float> %i.asm
  %.sroa.617.0.i.i.i841 = select i1 %i.ass, float %i.asx, float %i.asn
  %i.asy = fsub float %sqrt.i.i836, %..i          ; 2 uses
  %2 = fcmp ugt float %i.asy, 0.000000e+00
  %.neg.i = fneg float %i.asy
  %i.asz = select i1 %2, float %.neg.i, float -1.000000e-03 ; 2 uses
  %i.ata = fmul float %i.asz, %.sroa.617.0.i.i.i841
  %i.atb = insertelement <2 x float> poison, float %i.asz, i64 0
  %i.atc = shufflevector <2 x float> %i.atb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.atd = fmul <2 x float> %i.atc, %.sroa.013.0.i.i.i840
  %i.ate = fadd <2 x float> %.sroa.020.0.copyload.i, %i.atd ; 3 uses
  %i.atf = fadd float %.sroa.221.0.copyload.i, %i.ata ; 3 uses
  store <2 x float> %i.ate, ptr %0, align 4
  store float %i.atf, ptr %.sroa.223.0..sroa_idx.i, align 4
  %i.atg = load i8, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1041), align 1
  %i.ath = icmp eq i8 %i.atg, 0
  %i.ati = load i8, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 529), align 1
  %i.atj = icmp eq i8 %i.ati, 1
  %or.cond909 = select i1 %i.ath, i1 %i.atj, i1 false
  br i1 %or.cond909, label %CameraMoveToTarget.exit872, label %IsKeyPressed.exit.thread

CameraMoveToTarget.exit872:                       ; preds = %.thread
  %i.atk = fsub <2 x float> %.sroa.020.0.copyload.i, %i.ate ; 5 uses
  %i.atl = fsub float %.sroa.221.0.copyload.i, %i.atf ; 4 uses
  %foldExtExtBinop1051 = fmul <2 x float> %i.atk, %i.atk
  %i.atm = extractelement <2 x float> %foldExtExtBinop1051, i64 1
  %i.atn = extractelement <2 x float> %i.atk, i64 0 ; 2 uses
  %i.ato = tail call float @llvm.fmuladd.f32(float %i.atn, float %i.atn, float %i.atm)
  %i.atp = tail call float @llvm.fmuladd.f32(float %i.atl, float %i.atl, float %i.ato) ; 2 uses
  %sqrt.i.i859 = tail call float @llvm.sqrt.f32(float %i.atp) ; 2 uses
  %i.atq = fcmp une float %i.atp, 0.000000e+00    ; 2 uses
  %i.atr = fdiv float 1.000000e+00, %sqrt.i.i859  ; 2 uses
  %i.ats = insertelement <2 x float> poison, float %i.atr, i64 0
  %i.att = shufflevector <2 x float> %i.ats, <2 x float> poison, <2 x i32> zeroinitializer
  %i.atu = fmul <2 x float> %i.atk, %i.att
  %i.atv = fmul float %i.atl, %i.atr
  %.sroa.013.0.i.i.i863 = select i1 %i.atq, <2 x float> %i.atu, <2 x float> %i.atk
  %.sroa.617.0.i.i.i864 = select i1 %i.atq, float %i.atv, float %i.atl
  %i.atw = fadd float %sqrt.i.i859, 2.000000e+00  ; 2 uses
  %i.atx = insertelement <2 x float> poison, float %i.atw, i64 0
  %i.aty = shufflevector <2 x float> %i.atx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.atz = fmul <2 x float> %i.aty, %.sroa.013.0.i.i.i863
  %i.aua = fsub <2 x float> %.sroa.020.0.copyload.i, %i.atz ; 2 uses
  %i.aub = fmul float %i.atw, %.sroa.617.0.i.i.i864
  %i.auc = fsub float %.sroa.221.0.copyload.i, %i.aub ; 2 uses
  store <2 x float> %i.aua, ptr %0, align 4
  store float %i.auc, ptr %.sroa.223.0..sroa_idx.i, align 4
  br label %IsKeyPressed.exit.thread

IsKeyPressed.exit.thread:                         ; preds = %.thread, %CameraMoveToTarget.exit872
  %.sroa.223.0.copyload.i877 = phi float [ %i.atf, %.thread ], [ %i.auc, %CameraMoveToTarget.exit872 ]
  %.sroa.022.0.copyload.i875 = phi <2 x float> [ %i.ate, %.thread ], [ %i.aua, %CameraMoveToTarget.exit872 ]
  %i.aud = load i8, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1042), align 2
  %i.aue = icmp eq i8 %i.aud, 0
  %i.auf = load i8, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 530), align 2
  %i.aug = icmp eq i8 %i.auf, 1
  %or.cond911 = select i1 %i.aue, i1 %i.aug, i1 false
  br i1 %or.cond911, label %CameraMoveToTarget.exit898, label %IsKeyPressed.exit874.thread

CameraMoveToTarget.exit898:                       ; preds = %IsKeyPressed.exit.thread
  %i.auh = fsub <2 x float> %.sroa.020.0.copyload.i, %.sroa.022.0.copyload.i875 ; 5 uses
  %i.aui = fsub float %.sroa.221.0.copyload.i, %.sroa.223.0.copyload.i877 ; 4 uses
  %foldExtExtBinop1053 = fmul <2 x float> %i.auh, %i.auh
  %i.auj = extractelement <2 x float> %foldExtExtBinop1053, i64 1
  %i.auk = extractelement <2 x float> %i.auh, i64 0 ; 2 uses
  %i.aul = tail call float @llvm.fmuladd.f32(float %i.auk, float %i.auk, float %i.auj)
  %i.aum = tail call float @llvm.fmuladd.f32(float %i.aui, float %i.aui, float %i.aul) ; 2 uses
  %sqrt.i.i885 = tail call float @llvm.sqrt.f32(float %i.aum) ; 2 uses
  %i.aun = fcmp une float %i.aum, 0.000000e+00    ; 2 uses
  %i.auo = fdiv float 1.000000e+00, %sqrt.i.i885  ; 2 uses
  %i.aup = insertelement <2 x float> poison, float %i.auo, i64 0
  %i.auq = shufflevector <2 x float> %i.aup, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aur = fmul <2 x float> %i.auh, %i.auq
  %i.aus = fmul float %i.aui, %i.auo
  %.sroa.013.0.i.i.i889 = select i1 %i.aun, <2 x float> %i.aur, <2 x float> %i.auh
  %.sroa.617.0.i.i.i890 = select i1 %i.aun, float %i.aus, float %i.aui
  %i.aut = fadd float %sqrt.i.i885, -2.000000e+00 ; 2 uses
  %3 = fcmp ugt float %i.aut, 0.000000e+00
  %.neg.i891 = fneg float %i.aut
  %i.auu = select i1 %3, float %.neg.i891, float -1.000000e-03 ; 2 uses
  %i.auv = fmul float %i.auu, %.sroa.617.0.i.i.i890
  %i.auw = insertelement <2 x float> poison, float %i.auu, i64 0
  %i.aux = shufflevector <2 x float> %i.auw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.auy = fmul <2 x float> %i.aux, %.sroa.013.0.i.i.i889
  %i.auz = fadd <2 x float> %.sroa.020.0.copyload.i, %i.auy
  %i.ava = fadd float %.sroa.221.0.copyload.i, %i.auv
  store <2 x float> %i.auz, ptr %0, align 4
  store float %i.ava, ptr %.sroa.223.0..sroa_idx.i, align 4
  br label %IsKeyPressed.exit874.thread

IsKeyPressed.exit874.thread:                      ; preds = %IsKeyPressed.exit.thread, %bb.c, %bb.eg, %CameraMoveToTarget.exit898
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define <2 x float> @GetMouseDelta() local_unnamed_addr #26 {
bb.a:
  %i.a = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1884), align 4
  %i.b = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1892), align 4
  %i.c = fsub <2 x float> %i.a, %i.b
  %i.d = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1876), align 4
  %i.e = fmul <2 x float> %i.c, %i.d
  ret <2 x float> %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define float @GetFrameTime() local_unnamed_addr #8 {
bb.a:
  %i.a = load double, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 3080), align 8
  %i.b = fptrunc double %i.a to float
  ret float %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define zeroext i1 @IsKeyDown(i32 noundef %0) local_unnamed_addr #8 {
bb.a:
  %i.a = add i32 %0, -1
  %or.cond = icmp ult i32 %i.a, 511
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %i.c = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 196), i64 %i.b
  %i.d = load i8, ptr %i.c, align 1
  %i.e = icmp eq i8 %i.d, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ %i.e, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define zeroext i1 @IsMouseButtonDown(i32 noundef %0) local_unnamed_addr #8 {
bb.a:
  %or.cond = icmp ult i32 %0, 7
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = zext nneg i32 %0 to i64                  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1915), i64 %i.a
  %i.c = load i8, ptr %i.b, align 1
  %i.d = icmp eq i8 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 2112), i64 %i.a
  %i.f = load i8, ptr %i.e, align 1
  %i.g = icmp eq i8 %i.f, 1
  %spec.select = select i1 %i.g, i1 true, i1 %i.d
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ %spec.select, %bb.b ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define zeroext i1 @IsGamepadAvailable(i32 noundef %0) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp slt i32 %0, 4
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = sext i32 %0 to i64
  %i.c = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 2148), i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !range !170, !noundef !171
  %i.e = trunc nuw i8 %i.d to i1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ %i.e, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define float @GetGamepadAxisMovement(i32 noundef %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = and i32 %1, -2
  %i.b = icmp eq i32 %i.a, 4                      ; 2 uses
  %i.c = select i1 %i.b, float -1.000000e+00, float 0.000000e+00 ; 4 uses
  %i.d = icmp slt i32 %0, 4
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.e = sext i32 %0 to i64                       ; 2 uses
  %i.f = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 2148), i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !range !170, !noundef !171
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = icmp slt i32 %1, 8
  %or.cond = and i1 %i.i, %i.h
  br i1 %or.cond, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds [32 x i8], ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 2920), i64 %i.e ; 2 uses
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = zext nneg i32 %1 to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.k
  %i.m = load float, ptr %i.l, align 4            ; 2 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.n = sext i32 %1 to i64
  %i.o = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.n
  %i.p = load float, ptr %i.o, align 4            ; 2 uses
  %i.q = tail call float @llvm.fabs.f32(float %i.p)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = phi float [ %i.m, %bb.d ], [ %i.p, %bb.e ]
  %i.s = phi float [ %i.m, %bb.d ], [ %i.q, %bb.e ]
  %i.t = fcmp ogt float %i.s, %i.c
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.b, %bb.a
  %.1 = phi float [ %i.c, %bb.a ], [ %i.c, %bb.b ], [ %i.r, %bb.g ], [ %i.c, %bb.f ]
  ret float %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define float @GetMouseWheelMove() local_unnamed_addr #8 {
bb.a:
  %i.a = load float, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1932), align 4 ; 2 uses
  %i.b = tail call float @llvm.fabs.f32(float %i.a)
  %i.c = load float, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 1936), align 8 ; 2 uses
  %i.d = tail call float @llvm.fabs.f32(float %i.c)
  %i.e = fcmp ogt float %i.b, %i.d
  %. = select i1 %i.e, float %i.a, float %i.c
  ret float %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define zeroext i1 @IsKeyPressed(i32 noundef %0) local_unnamed_addr #8 {
bb.a:
  %i.a = add i32 %0, -1
  %or.cond = icmp ult i32 %i.a, 511
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64                  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 708), i64 %i.b
  %i.d = load i8, ptr %i.c, align 1
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 196), i64 %i.b
  %i.g = load i8, ptr %i.f, align 1
  %i.h = icmp eq i8 %i.g, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ %i.h, %bb.c ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @UpdateCameraPro(ptr nofree noundef captures(none) %0, <2 x float> %1, float %2, <2 x float> %3, float %4, float noundef %5) local_unnamed_addr #24 {
bb.a:
  %.sroa.013.4.vec.extract = extractelement <2 x float> %3, i64 1
  %i.a = fmul float %.sroa.013.4.vec.extract, f0xBC8EFA35
  tail call void @CameraPitch(ptr noundef %0, float noundef %i.a, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false)
  %.sroa.013.0.vec.extract = extractelement <2 x float> %3, i64 0
  %i.b = fmul float %.sroa.013.0.vec.extract, f0xBC8EFA35
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.03.0.copyload.i.i = load <2 x float>, ptr %i.c, align 4 ; 4 uses
  %.sroa.24.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %.sroa.24.0.copyload.i.i = load float, ptr %.sroa.24.0..sroa_idx.i.i, align 4 ; 4 uses
  %.sroa.07.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.03.0.copyload.i.i, i64 0 ; 5 uses
  %.sroa.07.4.vec.extract.i.i.i = extractelement <2 x float> %.sroa.03.0.copyload.i.i, i64 1 ; 5 uses
  %i.d = fmul float %.sroa.07.4.vec.extract.i.i.i, %.sroa.07.4.vec.extract.i.i.i
  %i.e = tail call float @llvm.fmuladd.f32(float %.sroa.07.0.vec.extract.i.i.i, float %.sroa.07.0.vec.extract.i.i.i, float %i.d)
  %i.f = tail call float @llvm.fmuladd.f32(float %.sroa.24.0.copyload.i.i, float %.sroa.24.0.copyload.i.i, float %i.e) ; 3 uses
  %i.g = fcmp une float %i.f, 0.000000e+00
  br i1 %i.g, label %bb.b, label %CameraYaw.exit

bb.b:                                             ; preds = %bb.a
  %sqrt.i.i.i = tail call float @llvm.sqrt.f32(float %i.f)
end_hunk_1
begin_hunk_2_@UpdateCameraPro:bb.a
  %.sroa.036.0.vec.insert.i = insertelement <2 x float> %.sroa.013.0.i.i.i34, float 0.000000e+00, i64 0
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %.sroa.036.4.vec.insert.i = insertelement <2 x float> %.sroa.013.0.i.i.i34, float 0.000000e+00, i64 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %GetCameraForward.exit.i
  %.sroa.036.0.i = phi <2 x float> [ %.sroa.036.4.vec.insert.i, %bb.g ], [ %.sroa.036.0.vec.insert.i, %bb.f ], [ %.sroa.013.0.i.i.i34, %GetCameraForward.exit.i ] ; 5 uses
  %.sroa.11.0.i = phi float [ %.sroa.617.0.i.i.i35, %bb.g ], [ %.sroa.617.0.i.i.i35, %bb.f ], [ 0.000000e+00, %GetCameraForward.exit.i ] ; 4 uses
  %.sroa.07.0.vec.extract.i.i = extractelement <2 x float> %.sroa.036.0.i, i64 0 ; 2 uses
  %foldExtExtBinop104 = fmul <2 x float> %.sroa.036.0.i, %.sroa.036.0.i
  %i.eu = extractelement <2 x float> %foldExtExtBinop104, i64 1
  %i.ev = tail call float @llvm.fmuladd.f32(float %.sroa.07.0.vec.extract.i.i, float %.sroa.07.0.vec.extract.i.i, float %i.eu)
  %i.ew = tail call float @llvm.fmuladd.f32(float %.sroa.11.0.i, float %.sroa.11.0.i, float %i.ev) ; 2 uses
  %i.ex = fcmp une float %i.ew, 0.000000e+00
  br i1 %i.ex, label %bb.i, label %CameraMoveForward.exit

bb.i:                                             ; preds = %bb.h
  %sqrt.i.i36 = tail call float @llvm.sqrt.f32(float %i.ew)
  %i.ey = fdiv float 1.000000e+00, %sqrt.i.i36    ; 2 uses
  %i.ez = insertelement <2 x float> poison, float %i.ey, i64 0
  %i.fa = shufflevector <2 x float> %i.ez, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fb = fmul <2 x float> %.sroa.036.0.i, %i.fa
  %i.fc = fmul float %.sroa.11.0.i, %i.ey
  br label %CameraMoveForward.exit

CameraMoveForward.exit:                           ; preds = %bb.h, %bb.i
  %.sroa.11.1.i = phi float [ %.sroa.11.0.i, %bb.h ], [ %i.fc, %bb.i ]
  %i.fd = phi <2 x float> [ %.sroa.036.0.i, %bb.h ], [ %i.fb, %bb.i ]
  %i.fe = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ff = fmul <2 x float> %i.fe, %i.fd           ; 2 uses
  %i.fg = fmul float %.sroa.016.0.vec.extract, %.sroa.11.1.i ; 2 uses
  %i.fh = fadd <2 x float> %.sroa.030.0.copyload.i, %i.ff ; 2 uses
  %i.fi = fadd float %.sroa.210.0.copyload.i.i27, %i.fg ; 2 uses
  %i.fj = fadd <2 x float> %i.bn, %i.ff           ; 2 uses
  %i.fk = fadd float %.sroa.212.0.copyload.i.i24, %i.fg ; 2 uses
  %.sroa.016.4.vec.extract = extractelement <2 x float> %1, i64 1
  %i.fl = fsub <2 x float> %i.fj, %i.fh           ; 5 uses
  %i.fm = fsub float %i.fk, %i.fi                 ; 4 uses
  %foldExtExtBinop106 = fmul <2 x float> %i.fl, %i.fl
  %i.fn = extractelement <2 x float> %foldExtExtBinop106, i64 1
  %i.fo = extractelement <2 x float> %i.fl, i64 0 ; 2 uses
  %i.fp = tail call float @llvm.fmuladd.f32(float %i.fo, float %i.fo, float %i.fn)
  %i.fq = tail call float @llvm.fmuladd.f32(float %i.fm, float %i.fm, float %i.fp) ; 2 uses
  %i.fr = fcmp une float %i.fq, 0.000000e+00
  br i1 %i.fr, label %bb.j, label %GetCameraForward.exit.i.i

bb.j:                                             ; preds = %CameraMoveForward.exit
  %sqrt.i.i.i.i = tail call float @llvm.sqrt.f32(float %i.fq)
  %i.fs = fdiv float 1.000000e+00, %sqrt.i.i.i.i  ; 2 uses
  %i.ft = insertelement <2 x float> poison, float %i.fs, i64 0
  %i.fu = shufflevector <2 x float> %i.ft, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fv = fmul <2 x float> %i.fl, %i.fu
  %i.fw = fmul float %i.fm, %i.fs
  br label %GetCameraForward.exit.i.i

GetCameraForward.exit.i.i:                        ; preds = %bb.j, %CameraMoveForward.exit
  %.sroa.013.0.i.i.i.i = phi <2 x float> [ %i.fv, %bb.j ], [ %i.fl, %CameraMoveForward.exit ] ; 2 uses
  %.sroa.617.0.i.i.i.i = phi float [ %i.fw, %bb.j ], [ %i.fm, %CameraMoveForward.exit ] ; 2 uses
  %foldExtExtBinop108 = fmul <2 x float> %i.ef, %i.ef
  %i.fx = extractelement <2 x float> %foldExtExtBinop108, i64 1
  %i.fy = extractelement <2 x float> %i.ef, i64 0 ; 3 uses
  %i.fz = tail call float @llvm.fmuladd.f32(float %i.fy, float %i.fy, float %i.fx)
  %i.ga = tail call float @llvm.fmuladd.f32(float %i.eg, float %i.eg, float %i.fz) ; 3 uses
  %i.gb = fcmp une float %i.ga, 0.000000e+00      ; 2 uses
  br i1 %i.gb, label %bb.k, label %GetCameraUp.exit.i.i

bb.k:                                             ; preds = %GetCameraForward.exit.i.i
  %sqrt.i.i31.i.i = tail call float @llvm.sqrt.f32(float %i.ga)
  %i.gc = fdiv float 1.000000e+00, %sqrt.i.i31.i.i ; 2 uses
  %i.gd = insertelement <2 x float> poison, float %i.gc, i64 0
  %i.ge = shufflevector <2 x float> %i.gd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gf = fmul <2 x float> %i.ef, %i.ge
  %i.gg = fmul float %i.eg, %i.gc
  br label %GetCameraUp.exit.i.i

GetCameraUp.exit.i.i:                             ; preds = %bb.k, %GetCameraForward.exit.i.i
  %.sroa.617.0.i.i30.i.i = phi float [ %i.eg, %GetCameraForward.exit.i.i ], [ %i.gg, %bb.k ] ; 2 uses
  %i.gh = phi <2 x float> [ %i.ef, %GetCameraForward.exit.i.i ], [ %i.gf, %bb.k ] ; 2 uses
  %.sroa.011.4.vec.extract.i.i.i = extractelement <2 x float> %.sroa.013.0.i.i.i.i, i64 1 ; 2 uses
  %i.gi = extractelement <2 x float> %i.gh, i64 1 ; 2 uses
  %i.gj = fneg float %i.gi
  %i.gk = fmul float %.sroa.617.0.i.i.i.i, %i.gj
  %i.gl = tail call float @llvm.fmuladd.f32(float %.sroa.011.4.vec.extract.i.i.i, float %.sroa.617.0.i.i30.i.i, float %i.gk) ; 4 uses
  %.sroa.018.0.vec.insert.i.i.i = insertelement <2 x float> poison, float %i.gl, i64 0
  %.sroa.011.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.013.0.i.i.i.i, i64 0 ; 2 uses
  %i.gm = fneg float %.sroa.617.0.i.i30.i.i
  %i.gn = fmul float %.sroa.011.0.vec.extract.i.i.i, %i.gm
  %i.go = extractelement <2 x float> %i.gh, i64 0 ; 2 uses
  %i.gp = tail call float @llvm.fmuladd.f32(float %.sroa.617.0.i.i.i.i, float %i.go, float %i.gn) ; 4 uses
  %.sroa.018.4.vec.insert.i.i.i = insertelement <2 x float> %.sroa.018.0.vec.insert.i.i.i, float %i.gp, i64 1
  %i.gq = fneg float %i.go
  %i.gr = fmul float %.sroa.011.4.vec.extract.i.i.i, %i.gq
  %i.gs = tail call float @llvm.fmuladd.f32(float %.sroa.011.0.vec.extract.i.i.i, float %i.gi, float %i.gr) ; 4 uses
  %i.gt = fmul float %i.gp, %i.gp
  %i.gu = tail call float @llvm.fmuladd.f32(float %i.gl, float %i.gl, float %i.gt)
  %i.gv = tail call float @llvm.fmuladd.f32(float %i.gs, float %i.gs, float %i.gu) ; 2 uses
  %i.gw = fcmp une float %i.gv, 0.000000e+00
  br i1 %i.gw, label %bb.l, label %GetCameraRight.exit.i

bb.l:                                             ; preds = %GetCameraUp.exit.i.i
  %sqrt.i.i.i59 = tail call float @llvm.sqrt.f32(float %i.gv)
  %i.gx = fdiv float 1.000000e+00, %sqrt.i.i.i59  ; 3 uses
  %i.gy = fmul float %i.gl, %i.gx
  %.sroa.013.0.vec.insert.i.i.i60 = insertelement <2 x float> poison, float %i.gy, i64 0
  %i.gz = fmul float %i.gp, %i.gx
  %.sroa.013.4.vec.insert.i.i.i61 = insertelement <2 x float> %.sroa.013.0.vec.insert.i.i.i60, float %i.gz, i64 1
  %i.ha = fmul float %i.gs, %i.gx
  br label %GetCameraRight.exit.i

GetCameraRight.exit.i:                            ; preds = %bb.l, %GetCameraUp.exit.i.i
  %.sroa.013.0.i.i.i40 = phi <2 x float> [ %.sroa.013.4.vec.insert.i.i.i61, %bb.l ], [ %.sroa.018.4.vec.insert.i.i.i, %GetCameraUp.exit.i.i ] ; 3 uses
  %.sroa.617.0.i.i.i41 = phi float [ %i.ha, %bb.l ], [ %i.gs, %GetCameraUp.exit.i.i ] ; 2 uses
  br i1 %i.eq, label %bb.p, label %bb.m

bb.m:                                             ; preds = %GetCameraRight.exit.i
  %i.hb = tail call float @llvm.fabs.f32(float %i.fy)
  %i.hc = fcmp ogt float %i.hb, f0x3F350481
  br i1 %i.hc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %.sroa.036.0.vec.insert.i58 = insertelement <2 x float> %.sroa.013.0.i.i.i40, float 0.000000e+00, i64 0
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %.sroa.036.4.vec.insert.i42 = insertelement <2 x float> %.sroa.013.0.i.i.i40, float 0.000000e+00, i64 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %GetCameraRight.exit.i
  %.sroa.036.0.i43 = phi <2 x float> [ %.sroa.036.4.vec.insert.i42, %bb.o ], [ %.sroa.036.0.vec.insert.i58, %bb.n ], [ %.sroa.013.0.i.i.i40, %GetCameraRight.exit.i ] ; 5 uses
  %.sroa.11.0.i44 = phi float [ %.sroa.617.0.i.i.i41, %bb.o ], [ %.sroa.617.0.i.i.i41, %bb.n ], [ 0.000000e+00, %GetCameraRight.exit.i ] ; 4 uses
  %.sroa.07.0.vec.extract.i.i45 = extractelement <2 x float> %.sroa.036.0.i43, i64 0 ; 2 uses
  %foldExtExtBinop110 = fmul <2 x float> %.sroa.036.0.i43, %.sroa.036.0.i43
  %i.hd = extractelement <2 x float> %foldExtExtBinop110, i64 1
  %i.he = tail call float @llvm.fmuladd.f32(float %.sroa.07.0.vec.extract.i.i45, float %.sroa.07.0.vec.extract.i.i45, float %i.hd)
  %i.hf = tail call float @llvm.fmuladd.f32(float %.sroa.11.0.i44, float %.sroa.11.0.i44, float %i.he) ; 2 uses
  %i.hg = fcmp une float %i.hf, 0.000000e+00
  br i1 %i.hg, label %bb.q, label %CameraMoveRight.exit

bb.q:                                             ; preds = %bb.p
  %sqrt.i.i55 = tail call float @llvm.sqrt.f32(float %i.hf)
  %i.hh = fdiv float 1.000000e+00, %sqrt.i.i55    ; 2 uses
  %i.hi = insertelement <2 x float> poison, float %i.hh, i64 0
  %i.hj = shufflevector <2 x float> %i.hi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hk = fmul <2 x float> %.sroa.036.0.i43, %i.hj
  %i.hl = fmul float %.sroa.11.0.i44, %i.hh
  br label %CameraMoveRight.exit

CameraMoveRight.exit:                             ; preds = %bb.p, %bb.q
  %.sroa.11.1.i48 = phi float [ %.sroa.11.0.i44, %bb.p ], [ %i.hl, %bb.q ]
  %i.hm = phi <2 x float> [ %.sroa.036.0.i43, %bb.p ], [ %i.hk, %bb.q ]
  %i.hn = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ho = fmul <2 x float> %i.hn, %i.hm           ; 2 uses
  %i.hp = fmul float %.sroa.016.4.vec.extract, %.sroa.11.1.i48 ; 2 uses
  %i.hq = fadd <2 x float> %i.fh, %i.ho
  %i.hr = fadd float %i.fi, %i.hp
  %i.hs = fadd <2 x float> %i.fj, %i.ho
  %i.ht = fadd float %i.fk, %i.hp
  br i1 %i.gb, label %bb.r, label %CameraMoveUp.exit

bb.r:                                             ; preds = %CameraMoveRight.exit
  %sqrt.i.i.i75 = tail call float @llvm.sqrt.f32(float %i.ga)
  %i.hu = fdiv float 1.000000e+00, %sqrt.i.i.i75  ; 2 uses
  %i.hv = insertelement <2 x float> poison, float %i.hu, i64 0
  %i.hw = shufflevector <2 x float> %i.hv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hx = fmul <2 x float> %i.ef, %i.hw
  %i.hy = fmul float %i.eg, %i.hu
  br label %CameraMoveUp.exit

CameraMoveUp.exit:                                ; preds = %CameraMoveRight.exit, %bb.r
  %.sroa.617.0.i.i.i67 = phi float [ %i.eg, %CameraMoveRight.exit ], [ %i.hy, %bb.r ]
  %i.hz = phi <2 x float> [ %i.ef, %CameraMoveRight.exit ], [ %i.hx, %bb.r ]
  %i.ia = insertelement <2 x float> poison, float %2, i64 0
  %i.ib = shufflevector <2 x float> %i.ia, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ic = fmul <2 x float> %i.ib, %i.hz           ; 2 uses
  %i.id = fmul float %2, %.sroa.617.0.i.i.i67     ; 2 uses
  %i.ie = fadd float %i.hr, %i.id
  %i.if = fadd <2 x float> %i.hs, %i.ic           ; 3 uses
  %i.ig = fadd float %i.ht, %i.id                 ; 3 uses
  store <2 x float> %i.if, ptr %i.l, align 4
  store float %i.ig, ptr %.sroa.233.0..sroa_idx.i, align 4
  %i.ih = fadd <2 x float> %i.hq, %i.ic
  %i.ii = fsub <2 x float> %i.if, %i.ih           ; 5 uses
  %i.ij = fsub float %i.ig, %i.ie                 ; 4 uses
  %foldExtExtBinop112 = fmul <2 x float> %i.ii, %i.ii
  %i.ik = extractelement <2 x float> %foldExtExtBinop112, i64 1
  %i.il = extractelement <2 x float> %i.ii, i64 0 ; 2 uses
  %i.im = tail call float @llvm.fmuladd.f32(float %i.il, float %i.il, float %i.ik)
  %i.in = tail call float @llvm.fmuladd.f32(float %i.ij, float %i.ij, float %i.im) ; 2 uses
  %sqrt.i.i78 = tail call float @llvm.sqrt.f32(float %i.in) ; 2 uses
  %i.io = fcmp une float %i.in, 0.000000e+00      ; 2 uses
  %i.ip = fdiv float 1.000000e+00, %sqrt.i.i78    ; 2 uses
  %i.iq = insertelement <2 x float> poison, float %i.ip, i64 0
  %i.ir = shufflevector <2 x float> %i.iq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.is = fmul <2 x float> %i.ii, %i.ir
  %i.it = fmul float %i.ij, %i.ip
  %.sroa.013.0.i.i.i82 = select i1 %i.io, <2 x float> %i.is, <2 x float> %i.ii
  %.sroa.617.0.i.i.i83 = select i1 %i.io, float %i.it, float %i.ij
  %i.iu = fadd float %5, %sqrt.i.i78              ; 2 uses
  %6 = fcmp ugt float %i.iu, 0.000000e+00
  %.neg.i = fneg float %i.iu
  %i.iv = select i1 %6, float %.neg.i, float -1.000000e-03 ; 2 uses
  %i.iw = fmul float %i.iv, %.sroa.617.0.i.i.i83
  %i.ix = insertelement <2 x float> poison, float %i.iv, i64 0
  %i.iy = shufflevector <2 x float> %i.ix, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iz = fmul <2 x float> %i.iy, %.sroa.013.0.i.i.i82
  %i.ja = fadd <2 x float> %i.if, %i.iz
  %i.jb = fadd float %i.ig, %i.iw
  store <2 x float> %i.ja, ptr %0, align 4
  store float %i.jb, ptr %.sroa.231.0..sroa_idx.i, align 4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @sinflate(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #30 {
bb.a:
  %i.a = tail call fastcc i32 @sinfl_decompress(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3)
  ret i32 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @sinfl_decompress(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #30 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %4 = alloca %struct.sinfl, align 8              ; 25 uses
  %i.i = alloca [320 x i8], align 16              ; 8 uses
  %i.j = alloca [128 x i32], align 16             ; 5 uses
  %i.k = alloca [19 x i8], align 16               ; 5 uses
  %i.l = alloca [320 x i8], align 16              ; 14 uses
  %i.m = sext i32 %1 to i64
  %i.n = getelementptr inbounds i8, ptr %0, i64 %i.m ; 2 uses
  %i.o = sext i32 %3 to i64
  %i.p = getelementptr inbounds i8, ptr %2, i64 %i.o ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #56
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(6960) %i.q, i8 0, i64 6960, i1 false)
  store ptr %2, ptr %4, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store ptr %i.p, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 28 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 19 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 20 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 5364 ; 4 uses
  %i.w = ptrtoint ptr %0 to i64                   ; 8 uses
  %i.x = ptrtoint ptr %i.n to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 288 ; 2 uses
  %i.z = ptrtoint ptr %i.p to i64
  %scevgep375 = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  %scevgep379 = getelementptr inbounds nuw i8, ptr %i.i, i64 256
  %scevgep383 = getelementptr inbounds nuw i8, ptr %i.i, i64 280
  %scevgep550 = getelementptr i8, ptr %i.l, i64 -1
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.0153426 = phi ptr [ %0, %bb.a ], [ %.0153426.be, %.backedge ] ; 6 uses
  %i.aa = load ptr, ptr %i.r, align 8
  %i.ab = load ptr, ptr %4, align 8               ; 5 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 7
  br i1 %i.af, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.val.i = load i64, ptr %i.ab, align 1
  %i.ag = load i32, ptr %i.u, align 8             ; 3 uses
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = shl i64 %.val.i, %i.ah
  %i.aj = load i64, ptr %i.t, align 8
  %i.ak = or i64 %i.ai, %i.aj
  %i.al = sub nsw i32 63, %i.ag
  %i.am = ashr i32 %i.al, 3
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds i8, ptr %i.ab, i64 %i.an
  store ptr %i.ao, ptr %4, align 8
  %i.ap = or i32 %i.ag, 56
  br label %sinfl_refill.exit

bb.d:                                             ; preds = %bb.b
  %i.aq = load i32, ptr %i.u, align 8             ; 3 uses
  %i.ar = sub nsw i32 63, %i.aq
  %i.as = ashr i32 %i.ar, 3
  %i.at = sext i32 %i.as to i64
  %i.au = tail call i64 @llvm.smin.i64(i64 %i.ae, i64 %i.at) ; 2 uses
  %i.av = trunc i64 %i.au to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 0, ptr %i.h, align 8
  %sext.i = shl i64 %i.au, 32
  %i.aw = ashr exact i64 %sext.i, 32              ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.h, ptr align 1 %i.ab, i64 %i.aw, i1 false)
  %.0..0..0..0..0..0..i = load i64, ptr %i.h, align 8
  %i.ax = zext nneg i32 %i.aq to i64
  %i.ay = shl i64 %.0..0..0..0..0..0..i, %i.ax
  %i.az = load i64, ptr %i.t, align 8
  %i.ba = or i64 %i.az, %i.ay
  %i.bb = getelementptr inbounds i8, ptr %i.ab, i64 %i.aw
  store ptr %i.bb, ptr %4, align 8
  %i.bc = shl i32 %i.av, 3
  %i.bd = add nsw i32 %i.bc, %i.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %sinfl_refill.exit

sinfl_refill.exit:                                ; preds = %bb.c, %bb.d
  %i.be = phi i32 [ %i.ap, %bb.c ], [ %i.bd, %bb.d ]
  %.val.i174 = phi i64 [ %i.ak, %bb.c ], [ %i.ba, %bb.d ] ; 3 uses
  %i.bf = trunc i64 %.val.i174 to i32
  %i.bg = and i32 %i.bf, 1                        ; 2 uses
  %i.bh = trunc i64 %.val.i174 to i32
  %i.bi = lshr i32 %i.bh, 1
  %i.bj = and i32 %i.bi, 3
  %i.bk = lshr i64 %.val.i174, 3
  store i64 %i.bk, ptr %i.t, align 8
  %i.bl = add nsw i32 %i.be, -3
  store i32 %i.bl, ptr %i.u, align 8
  switch i32 %i.bj, label %default.unreachable416 [
    i32 0, label %bb.f
    i32 1, label %.preheader298.preheader
    i32 2, label %bb.l
    i32 3, label %bb.e
  ]

bb.e:                                             ; preds = %sinfl_refill.exit
  %i.bm = ptrtoint ptr %.0153426 to i64
  %i.bn = sub i64 %i.bm, %i.w
  %i.bo = trunc i64 %i.bn to i32
  br label %.thread274

bb.f:                                             ; preds = %sinfl_refill.exit
  %i.bp = load i32, ptr %i.u, align 8             ; 2 uses
  %i.bq = and i32 %i.bp, 7
  %.val.i176 = load i64, ptr %i.t, align 8
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = lshr i64 %.val.i176, %i.br              ; 3 uses
  %i.bt = lshr i64 %i.bs, 16
  %i.bu = add nsw i32 %i.bp, -32
  %.neg.neg = ashr i32 %i.bu, 3
  %.neg = sub nsw i32 0, %.neg.neg
  %i.bv = load ptr, ptr %4, align 8
  %i.bw = sext i32 %.neg to i64
  %i.bx = getelementptr inbounds i8, ptr %i.bv, i64 %i.bw ; 3 uses
  store i32 0, ptr %i.u, align 8
  store i64 0, ptr %i.t, align 8
  %i.by = xor i64 %i.bt, %i.bs
  %i.bz = and i64 %i.by, 65535
  %.not172 = icmp eq i64 %i.bz, 65535
  br i1 %.not172, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ca = ptrtoint ptr %.0153426 to i64
  %i.cb = sub i64 %i.ca, %i.w
  %i.cc = trunc i64 %i.cb to i32
  br label %.thread274

bb.h:                                             ; preds = %bb.f
  %i.cd = and i64 %i.bs, 65535                    ; 5 uses
  %i.ce = ptrtoint ptr %i.bx to i64
  %i.cf = sub i64 %i.z, %i.ce
  %i.cg = icmp sge i64 %i.cf, %i.cd
  %i.ch = icmp ne i64 %i.cd, 0
  %or.cond = and i1 %i.ch, %i.cg
  br i1 %or.cond, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ci = ptrtoint ptr %.0153426 to i64
  %i.cj = sub i64 %i.ci, %i.w
  %i.ck = trunc i64 %i.cj to i32
  br label %.thread274

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0153426, ptr align 1 %i.bx, i64 %i.cd, i1 false)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.cd
  store ptr %i.cl, ptr %4, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %.0153426, i64 %i.cd ; 2 uses
  %.not173 = icmp eq i32 %i.bg, 0
  br i1 %.not173, label %.backedge, label %bb.k

.backedge:                                        ; preds = %bb.j, %bb.at
  %.0153426.be = phi ptr [ %.3156, %bb.at ], [ %i.cm, %bb.j ]
  br label %bb.b

bb.k:                                             ; preds = %bb.j
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = sub i64 %i.cn, %i.w
  %i.cp = trunc i64 %i.co to i32
  br label %.thread274

.preheader298.preheader:                          ; preds = %sinfl_refill.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.i, i8 8, i64 144, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %scevgep375, i8 9, i64 112, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %scevgep379, i8 7, i64 24, i1 false)
  store i64 578721382704613384, ptr %scevgep383, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.y, i8 5, i64 32, i1 false)
  call fastcc void @sinfl_build(ptr noundef %i.s, ptr noundef %i.i, i32 noundef 10, i32 noundef 15, i32 noundef 288)
  call fastcc void @sinfl_build(ptr noundef %i.v, ptr noundef %i.y, i32 noundef 8, i32 noundef 15, i32 noundef 32)
end_hunk_2
begin_hunk_3_@SetWindowIcons:bb.a

bb.g:                                             ; preds = %bb.e
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.129)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.1 = phi i32 [ %i.q, %bb.f ], [ %.02427, %bb.g ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.d
  br i1 %exitcond.not, label %bb.d, label %bb.e

bb.i:                                             ; preds = %bb.d, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @SetWindowTitle(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  store ptr %0, ptr @CORE, align 8
  %i.a = load ptr, ptr @platform.0, align 8
  tail call void @glfwSetWindowTitle(ptr noundef %i.a, ptr noundef %0) #56
  ret void
}

declare void @glfwSetWindowTitle(ptr noundef, ptr noundef) local_unnamed_addr #34

; Function Attrs: nounwind uwtable
define void @SetWindowPosition(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  store i32 %0, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 36), align 4
  store i32 %1, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 40), align 8
  %i.a = load ptr, ptr @platform.0, align 8
  tail call void @glfwSetWindowPos(ptr noundef %i.a, i32 noundef %0, i32 noundef %1) #56
  ret void
}

declare void @glfwSetWindowPos(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #34

; Function Attrs: nounwind uwtable
define void @SetWindowMonitor(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #56
  store i32 0, ptr %i.a, align 4
  %i.f = call ptr @glfwGetMonitors(ptr noundef nonnull %i.a) #56
  %i.g = icmp sgt i32 %0, -1
  %i.h = load i32, ptr %i.a, align 4
  %i.i = icmp slt i32 %0, %i.h
  %or.cond = select i1 %i.g, i1 %i.i, i1 false
  br i1 %or.cond, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 8), align 8
  %i.k = and i32 %i.j, 2
  %.not = icmp eq i32 %i.k, 0
  %i.l = zext nneg i32 %0 to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.l ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call ptr @glfwGetMonitorName(ptr noundef %i.n) #56 ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.130, i32 noundef %0, ptr noundef %i.o)
  %i.p = load ptr, ptr %i.m, align 8
  %i.q = call ptr @glfwGetVideoMode(ptr noundef %i.p) #56 ; 3 uses
  %i.r = load ptr, ptr @platform.0, align 8
  %i.s = load ptr, ptr %i.m, align 8
  %i.t = load i32, ptr %i.q, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.v = load i32, ptr %i.u, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  %i.x = load i32, ptr %i.w, align 4
  call void @glfwSetWindowMonitor(ptr noundef %i.r, ptr noundef %i.s, i32 noundef 0, i32 noundef 0, i32 noundef %i.t, i32 noundef %i.v, i32 noundef %i.x) #56
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.131, i32 noundef %0, ptr noundef %i.o)
  %i.y = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 60), align 4 ; 2 uses
  %i.z = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 64), align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #56
  store i32 0, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #56
  store i32 0, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #56
  store i32 0, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #56
  store i32 0, ptr %i.e, align 4
  %i.aa = load ptr, ptr %i.m, align 8
  call void @glfwGetMonitorWorkarea(ptr noundef %i.aa, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #56
  %i.ab = load i32, ptr %i.d, align 4             ; 2 uses
  %.not26 = icmp slt i32 %i.y, %i.ab
  br i1 %.not26, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ac = load i32, ptr %i.e, align 4             ; 2 uses
  %.not27 = icmp slt i32 %i.z, %i.ac
  br i1 %.not27, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ad = load ptr, ptr @platform.0, align 8
  %i.ae = load i32, ptr %i.b, align 4
  %i.af = load i32, ptr %i.c, align 4
  call void @glfwSetWindowPos(ptr noundef %i.ad, i32 noundef %i.ae, i32 noundef %i.af) #56
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ag = load i32, ptr %i.b, align 4
  %i.ah = sdiv i32 %i.ab, 2
  %.neg = sdiv i32 %i.y, -2
  %i.ai = add nsw i32 %i.ah, %.neg
  %i.aj = add i32 %i.ai, %i.ag
  %i.ak = load i32, ptr %i.c, align 4
  %i.al = sdiv i32 %i.ac, 2
  %.neg28 = sdiv i32 %i.z, -2
  %i.am = add nsw i32 %i.al, %.neg28
  %i.an = add i32 %i.am, %i.ak
  %i.ao = load ptr, ptr @platform.0, align 8
  call void @glfwSetWindowPos(ptr noundef %i.ao, i32 noundef %i.aj, i32 noundef %i.an) #56
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #56
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.122)
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #56
  ret void
}

declare ptr @glfwGetMonitorName(ptr noundef) local_unnamed_addr #34

declare void @glfwGetMonitorWorkarea(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #34

; Function Attrs: nounwind uwtable
define void @SetWindowMinSize(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  store i32 %0, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 84), align 4
  store i32 %1, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 88), align 8
  %i.a = icmp eq i32 %0, 0
  %i.b = select i1 %i.a, i32 -1, i32 %0
  %i.c = icmp eq i32 %1, 0
  %i.d = select i1 %i.c, i32 -1, i32 %1
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 92), align 4 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  %i.g = select i1 %i.f, i32 -1, i32 %i.e
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 96), align 8 ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  %i.j = select i1 %i.i, i32 -1, i32 %i.h
  %i.k = load ptr, ptr @platform.0, align 8
  tail call void @glfwSetWindowSizeLimits(ptr noundef %i.k, i32 noundef %i.b, i32 noundef %i.d, i32 noundef %i.g, i32 noundef %i.j) #56
  ret void
}

declare void @glfwSetWindowSizeLimits(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #34

; Function Attrs: nounwind uwtable
define void @SetWindowMaxSize(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  store i32 %0, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 92), align 4
  store i32 %1, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 96), align 8
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 84), align 4 ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  %i.c = select i1 %i.b, i32 -1, i32 %i.a
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 88), align 8 ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  %i.f = select i1 %i.e, i32 -1, i32 %i.d
  %i.g = icmp eq i32 %0, 0
  %i.h = select i1 %i.g, i32 -1, i32 %0
  %i.i = icmp eq i32 %1, 0
  %i.j = select i1 %i.i, i32 -1, i32 %1
  %i.k = load ptr, ptr @platform.0, align 8
  tail call void @glfwSetWindowSizeLimits(ptr noundef %i.k, i32 noundef %i.c, i32 noundef %i.f, i32 noundef %i.h, i32 noundef %i.j) #56
  ret void
}

; Function Attrs: nounwind uwtable
define void @SetWindowSize(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  store i32 %0, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 28), align 4
  store i32 %1, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 32), align 8
  %i.a = load ptr, ptr @platform.0, align 8
  tail call void @glfwSetWindowSize(ptr noundef %i.a, i32 noundef %0, i32 noundef %1) #56
  ret void
}

declare void @glfwSetWindowSize(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #34

; Function Attrs: nounwind uwtable
define void @SetWindowOpacity(float noundef %0) local_unnamed_addr #0 {
  %2 = fcmp ult float %0, 1.000000e+00
  br i1 %2, label %3, label %bb.a

3:                                                ; preds = %1
  %4 = fcmp ugt float %0, 0.000000e+00
  br i1 %4, label %bb.a, label %5

5:                                                ; preds = %3
  br label %bb.a

bb.a:                                             ; preds = %1, %3, %5
  %.0 = phi float [ %0, %3 ], [ 0.000000e+00, %5 ], [ 1.000000e+00, %1 ]
  %i.a = load ptr, ptr @platform.0, align 8
  tail call void @glfwSetWindowOpacity(ptr noundef %i.a, float noundef %.0) #56
  ret void
}

declare void @glfwSetWindowOpacity(ptr noundef, float noundef) local_unnamed_addr #34

; Function Attrs: nounwind uwtable
define void @SetWindowFocused() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @platform.0, align 8
  tail call void @glfwFocusWindow(ptr noundef %i.a) #56
  ret void
}

; Function Attrs: nounwind uwtable
define noundef nonnull ptr @GetWindowHandle() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @platform.0, align 8
  %i.b = tail call i64 @glfwGetX11Window(ptr noundef %i.a) #56
  store i64 %i.b, ptr @X11WindowHandle, align 8
  ret ptr @X11WindowHandle
}

declare i64 @glfwGetX11Window(ptr noundef) local_unnamed_addr #34

; Function Attrs: nounwind uwtable
define i32 @GetMonitorCount() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #56
  store i32 0, ptr %i.a, align 4
  %i.b = call ptr @glfwGetMonitors(ptr noundef nonnull %i.a) #56 ; 0 uses
  %i.c = load i32, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #56
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define zeroext i1 @IsWindowFullscreen() local_unnamed_addr #8 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @CORE, i64 8), align 8
  %i.b = and i32 %i.a, 2
  %i.c = icmp ne i32 %i.b, 0
  ret i1 %i.c
}

declare ptr @glfwGetWindowMonitor(ptr noundef) local_unnamed_addr #34

declare void @glfwGetWindowPos(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #34

; Function Attrs: nounwind uwtable
define <2 x float> @GetMonitorPosition(i32 noundef %0) local_unnamed_addr #25 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #56
  store i32 0, ptr %i.a, align 4
  %i.d = call ptr @glfwGetMonitors(ptr noundef nonnull %i.a) #56
  %i.e = icmp sgt i32 %0, -1
  %i.f = load i32, ptr %i.a, align 4
  %i.g = icmp slt i32 %0, %i.f
  %or.cond = select i1 %i.e, i1 %i.g, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #56
  store i32 0, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #56
  store i32 0, ptr %i.c, align 4
  %i.h = zext nneg i32 %0 to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8
  call void @glfwGetMonitorPos(ptr noundef %i.j, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #56
  %i.k = load i32, ptr %i.b, align 4
  %i.l = load i32, ptr %i.c, align 4
  %i.m = insertelement <2 x i32> poison, i32 %i.k, i64 0
  %i.n = insertelement <2 x i32> %i.m, i32 %i.l, i64 1
  %i.o = sitofp <2 x i32> %i.n to <2 x float>
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #56
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.122)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi <2 x float> [ %i.o, %bb.b ], [ zeroinitializer, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #56
  ret <2 x float> %.sroa.0.0
}

; Function Attrs: nounwind uwtable
define i32 @GetMonitorWidth(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #56
  store i32 0, ptr %i.a, align 4
  %i.b = call ptr @glfwGetMonitors(ptr noundef nonnull %i.a) #56
  %i.c = icmp sgt i32 %0, -1
  %i.d = load i32, ptr %i.a, align 4
  %i.e = icmp slt i32 %0, %i.d
  %or.cond = select i1 %i.c, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = zext nneg i32 %0 to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = call ptr @glfwGetVideoMode(ptr noundef %i.h) #56 ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %i.i, align 4
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.121)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.122)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %.1 = phi i32 [ 0, %bb.e ], [ %i.j, %bb.c ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #56
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define i32 @GetMonitorHeight(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #56
  store i32 0, ptr %i.a, align 4
  %i.b = call ptr @glfwGetMonitors(ptr noundef nonnull %i.a) #56
  %i.c = icmp sgt i32 %0, -1
  %i.d = load i32, ptr %i.a, align 4
  %i.e = icmp slt i32 %0, %i.d
  %or.cond = select i1 %i.c, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = zext nneg i32 %0 to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = call ptr @glfwGetVideoMode(ptr noundef %i.h) #56 ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.k = load i32, ptr %i.j, align 4
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.121)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.122)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %.1 = phi i32 [ 0, %bb.e ], [ %i.k, %bb.c ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #56
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define i32 @GetMonitorPhysicalWidth(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #56
  store i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #56
  store i32 0, ptr %i.b, align 4
  %i.c = call ptr @glfwGetMonitors(ptr noundef nonnull %i.b) #56
  %i.d = icmp sgt i32 %0, -1
  %i.e = load i32, ptr %i.b, align 4
  %i.f = icmp slt i32 %0, %i.e
  %or.cond = select i1 %i.d, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = zext nneg i32 %0 to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8
  call void @glfwGetMonitorPhysicalSize(ptr noundef %i.i, ptr noundef nonnull %i.a, ptr noundef null) #56
  %.pre = load i32, ptr %i.a, align 4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.122)
  br label %bb.d
end_hunk_3
