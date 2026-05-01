inline.NumInlined: 331
inline.NumDeleted: 200
begin_hunk_0_@_ZNK6Assimp21BlenderTessellatorP2T13FindLLSQPlaneERKSt6vectorINS_7Blender8PointP2TESaIS3_EE:bb.a

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.076.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.aa, %._crit_edge.loopexit.unr-lcssa ]
  %.epil.init = phi <4 x float> [ zeroinitializer, %.lr.ph.preheader ], [ %21, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod131 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod131)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.076.epil = phi i64 [ %i.k, %.lr.ph.epil ], [ %.076.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %4 = phi <4 x float> [ %7, %.lr.ph.epil ], [ %.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.j = getelementptr inbounds nuw [64 x i8], ptr %i.d, i64 %.076.epil
  %5 = load <3 x float>, ptr %i.j, align 4
  %6 = shufflevector <3 x float> %5, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %7 = fadd <4 x float> %4, %6                    ; 2 uses
  %i.k = add nuw i64 %.076.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !14

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %8 = phi <4 x float> [ zeroinitializer, %bb.a ], [ %21, %._crit_edge.loopexit.unr-lcssa ], [ %7, %.lr.ph.epil ]
  %i.l = uitofp i64 %i.h to double
  %i.m = fdiv double 1.000000e+00, %i.l
  %i.n = fptrunc double %i.m to float
  %i.o = insertelement <4 x float> poison, float %i.n, i64 0
  %i.p = shufflevector <4 x float> %i.o, <4 x float> poison, <4 x i32> zeroinitializer
  %i.q = fmul <4 x float> %8, %i.p                ; 3 uses
  %i.r = shufflevector <4 x float> %i.q, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  store <2 x float> %i.r, ptr %0, align 4
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_0
begin_hunk_1_@_ZNK6Assimp21BlenderTessellatorP2T13FindLLSQPlaneERKSt6vectorINS_7Blender8PointP2TESaIS3_EE:bb.a

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.076 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.aa, %.lr.ph ] ; 5 uses
  %9 = phi <4 x float> [ zeroinitializer, %.lr.ph.preheader.new ], [ %21, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.t = getelementptr inbounds nuw [64 x i8], ptr %i.d, i64 %.076
  %10 = load <3 x float>, ptr %i.t, align 4
  %11 = shufflevector <3 x float> %10, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %12 = fadd <4 x float> %9, %11
  %i.u = getelementptr inbounds nuw [64 x i8], ptr %i.d, i64 %.076
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %13 = load <3 x float>, ptr %i.v, align 4
  %14 = shufflevector <3 x float> %13, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %15 = fadd <4 x float> %12, %14
  %i.w = getelementptr inbounds nuw [64 x i8], ptr %i.d, i64 %.076
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 128
  %16 = load <3 x float>, ptr %i.x, align 4
  %17 = shufflevector <3 x float> %16, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %18 = fadd <4 x float> %15, %17
  %i.y = getelementptr inbounds nuw [64 x i8], ptr %i.d, i64 %.076
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 192
  %19 = load <3 x float>, ptr %i.z, align 4
  %20 = shufflevector <3 x float> %19, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %21 = fadd <4 x float> %18, %20                 ; 3 uses
  %i.aa = add nuw i64 %.076, 4                    ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !16

._crit_edge90:                                    ; preds = %.lr.ph89, %._crit_edge
  %.054.lcssa = phi float [ 0.000000e+00, %._crit_edge ], [ %34, %.lr.ph89 ] ; 4 uses
  %22 = phi <4 x float> [ zeroinitializer, %._crit_edge ], [ %i.ay, %.lr.ph89 ] ; 10 uses
  %23 = phi <2 x float> [ zeroinitializer, %._crit_edge ], [ %i.aw, %.lr.ph89 ] ; 2 uses
  %24 = shufflevector <2 x float> %23, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.ab = extractelement <4 x float> %22, i64 0   ; 2 uses
  %i.ac = fmul float %i.ab, %.054.lcssa
  %i.ad = extractelement <4 x float> %22, i64 3   ; 4 uses
  %i.ae = fmul float %i.ad, %.054.lcssa
  %i.af = fneg float %i.ad                        ; 2 uses
  %i.ag = fmul float %i.ae, %i.af
  %i.ah = extractelement <4 x float> %22, i64 1   ; 2 uses
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.ac, float %i.ah, float %i.ag)
  %i.aj = extractelement <4 x float> %22, i64 2   ; 4 uses
  %i.ak = fmul float %i.ad, %i.aj
  %25 = extractelement <2 x float> %23, i64 1     ; 4 uses
  %i.al = tail call float @llvm.fmuladd.f32(float %i.ak, float %25, float %i.ai)
  %i.am = fneg float %i.aj                        ; 2 uses
  %i.an = fmul float %i.aj, %i.am                 ; 2 uses
  %i.ao = tail call float @llvm.fmuladd.f32(float %i.an, float %i.ah, float %i.al)
  %i.ap = fmul float %25, %i.aj
  %i.aq = tail call float @llvm.fmuladd.f32(float %i.ap, float %i.ad, float %i.ao)
  %26 = fneg <4 x float> %22
  %27 = shufflevector <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, <4 x float> %26, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %28 = fmul <4 x float> %24, %27                 ; 2 uses
  %29 = extractelement <4 x float> %28, i64 3
  %i.ar = tail call noundef float @llvm.fmuladd.f32(float %29, float %25, float %i.aq) ; 2 uses
  %i.as = fcmp oeq float %i.ar, 0.000000e+00
  br i1 %i.as, label %bb.b, label %_ZN12aiMatrix3x3tIfE7InverseEv.exit

.lr.ph89:                                         ; preds = %._crit_edge, %.lr.ph89
  %.05487 = phi float [ %34, %.lr.ph89 ], [ 0.000000e+00, %._crit_edge ]
  %.06081 = phi i64 [ %i.az, %.lr.ph89 ], [ 0, %._crit_edge ] ; 2 uses
  %i.at = phi <4 x float> [ %i.ay, %.lr.ph89 ], [ zeroinitializer, %._crit_edge ]
  %i.au = phi <2 x float> [ %i.aw, %.lr.ph89 ], [ zeroinitializer, %._crit_edge ]
  %i.av = getelementptr inbounds nuw [64 x i8], ptr %i.d, i64 %.06081
  %30 = load <3 x float>, ptr %i.av, align 4
  %31 = shufflevector <3 x float> %30, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %32 = fsub <4 x float> %31, %i.q                ; 5 uses
  %33 = extractelement <4 x float> %32, i64 2     ; 2 uses
  %34 = tail call float @llvm.fmuladd.f32(float %33, float %33, float %.05487) ; 2 uses
  %35 = shufflevector <4 x float> %32, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %36 = shufflevector <4 x float> %32, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %35, <2 x float> %36, <2 x float> %i.au) ; 2 uses
  %i.ax = shufflevector <4 x float> %32, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ay = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %32, <4 x float> %i.ax, <4 x float> %i.at) ; 2 uses
  %i.az = add nuw i64 %.06081, 1                  ; 2 uses
  %exitcond107.not = icmp eq i64 %i.az, %i.h
  br i1 %exitcond107.not, label %._crit_edge90, label %.lr.ph89, !llvm.loop !17
end_hunk_1
begin_hunk_2_@_ZNK6Assimp21BlenderTessellatorP2T13FindLLSQPlaneERKSt6vectorINS_7Blender8PointP2TESaIS3_EE:bb.a
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ba = fdiv float 1.000000e+00, %i.ar          ; 3 uses
  %i.bb = fneg float %i.ba
  %i.bc = fneg float %25                          ; 2 uses
  %i.bd = tail call float @llvm.fmuladd.f32(float %.054.lcssa, float %i.ab, float %i.an)
  %i.be = fmul float %i.bd, %i.ba
  %i.bf = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.af, i64 0
  %i.bg = insertelement <4 x float> %i.bf, float %i.bc, i64 2
  %i.bh = shufflevector <4 x float> %i.bg, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.bi = fmul <4 x float> %28, %i.bh
  %i.bj = shufflevector <4 x float> %22, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 1, i32 2>
  %i.bk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %22, <4 x float> %i.bj, <4 x float> %i.bi)
  %i.bl = insertelement <4 x float> poison, float %i.ba, i64 0
  %i.bm = insertelement <4 x float> %i.bl, float %i.bb, i64 1 ; 2 uses
  %i.bn = shufflevector <4 x float> %i.bk, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 3, i32 2>
  %i.bo = shufflevector <4 x float> %i.bm, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bp = fmul <4 x float> %i.bn, %i.bo
  store <4 x float> %i.bp, ptr %3, align 16
  %37 = shufflevector <4 x float> %24, <4 x float> %22, <4 x i32> <i32 1, i32 1, i32 4, i32 6>
  %i.bq = insertelement <4 x float> poison, float %i.bc, i64 0
  %i.br = insertelement <4 x float> %i.bq, float %i.am, i64 1
  %i.bs = shufflevector <4 x float> %i.br, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.bt = fmul <4 x float> %37, %i.bs
  %i.bu = shufflevector <4 x float> %22, <4 x float> poison, <4 x i32> <i32 1, i32 3, i32 3, i32 poison>
  %38 = insertelement <4 x float> %i.bu, float %.054.lcssa, i64 3 ; 2 uses
  %39 = shufflevector <4 x float> %22, <4 x float> %38, <4 x i32> <i32 7, i32 7, i32 2, i32 3>
  %i.bv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %38, <4 x float> %39, <4 x float> %i.bt)
  %i.bw = shufflevector <4 x float> %i.bm, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bx = fmul <4 x float> %i.bv, %i.bw
  store <4 x float> %i.bx, ptr %.sroa.11.0..sroa_idx, align 16
end_hunk_2
