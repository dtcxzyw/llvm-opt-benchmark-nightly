inline.NumInlined: 331
inline.NumDeleted: 200
begin_hunk_0_@_ZNK6Assimp21BlenderTessellatorP2T13FindLLSQPlaneERKSt6vectorINS_7Blender8PointP2TESaIS3_EE:bb.a

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.076.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.aa, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.068.073.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %31, %._crit_edge.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x float> [ zeroinitializer, %.lr.ph.preheader ], [ %34, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod131 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod131)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.076.epil = phi i64 [ %i.k, %.lr.ph.epil ], [ %.076.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.sroa.068.073.epil = phi float [ %6, %.lr.ph.epil ], [ %.sroa.068.073.epil.init, %.lr.ph.epil.preheader ]
  %4 = phi <2 x float> [ %9, %.lr.ph.epil ], [ %.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.j = getelementptr inbounds nuw [64 x i8], ptr %i.d, i64 %.076.epil ; 2 uses
  %5 = load float, ptr %i.j, align 4
  %6 = fadd float %.sroa.068.073.epil, %5         ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %8 = load <2 x float>, ptr %7, align 4
  %9 = fadd <2 x float> %4, %8                    ; 2 uses
  %i.k = add nuw i64 %.076.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit, label %.lr.ph.epil, !llvm.loop !14

._crit_edge.loopexit:                             ; preds = %.lr.ph.epil, %._crit_edge.loopexit.unr-lcssa
  %.lcssa128 = phi float [ %31, %._crit_edge.loopexit.unr-lcssa ], [ %6, %.lr.ph.epil ]
  %.lcssa127 = phi <2 x float> [ %34, %._crit_edge.loopexit.unr-lcssa ], [ %9, %.lr.ph.epil ]
  %10 = shufflevector <2 x float> %.lcssa127, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.sroa.068.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %.lcssa128, %._crit_edge.loopexit ]
  %11 = phi <4 x float> [ <float 0.000000e+00, float 0.000000e+00, float undef, float undef>, %bb.a ], [ %10, %._crit_edge.loopexit ]
  %i.l = uitofp i64 %i.h to double
  %i.m = fdiv double 1.000000e+00, %i.l
  %i.n = fptrunc double %i.m to float
  %12 = insertelement <4 x float> %11, float %.sroa.068.0.lcssa, i64 2
  %13 = shufflevector <4 x float> %12, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.o = insertelement <4 x float> poison, float %i.n, i64 0
  %i.p = shufflevector <4 x float> %i.o, <4 x float> poison, <4 x i32> zeroinitializer
  %i.q = fmul <4 x float> %13, %i.p               ; 3 uses
  %i.r = shufflevector <4 x float> %i.q, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  store <2 x float> %i.r, ptr %0, align 4
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_0
begin_hunk_1_@_ZNK6Assimp21BlenderTessellatorP2T13FindLLSQPlaneERKSt6vectorINS_7Blender8PointP2TESaIS3_EE:bb.a

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.076 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.aa, %.lr.ph ] ; 5 uses
  %.sroa.068.073 = phi float [ 0.000000e+00, %.lr.ph.preheader.new ], [ %31, %.lr.ph ]
  %14 = phi <2 x float> [ zeroinitializer, %.lr.ph.preheader.new ], [ %34, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.t = getelementptr inbounds nuw [64 x i8], ptr %i.d, i64 %.076 ; 2 uses
  %15 = load float, ptr %i.t, align 4
  %16 = fadd float %.sroa.068.073, %15
  %17 = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %18 = load <2 x float>, ptr %17, align 4
  %19 = fadd <2 x float> %14, %18
  %i.u = getelementptr inbounds nuw [64 x i8], ptr %i.d, i64 %.076 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %20 = load float, ptr %i.v, align 4
  %21 = fadd float %16, %20
  %22 = getelementptr inbounds nuw i8, ptr %i.u, i64 68
  %23 = load <2 x float>, ptr %22, align 4
  %24 = fadd <2 x float> %19, %23
  %i.w = getelementptr inbounds nuw [64 x i8], ptr %i.d, i64 %.076 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 128
  %25 = load float, ptr %i.x, align 4
  %26 = fadd float %21, %25
  %27 = getelementptr inbounds nuw i8, ptr %i.w, i64 132
  %28 = load <2 x float>, ptr %27, align 4
  %29 = fadd <2 x float> %24, %28
  %i.y = getelementptr inbounds nuw [64 x i8], ptr %i.d, i64 %.076 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 192
  %30 = load float, ptr %i.z, align 4
  %31 = fadd float %26, %30                       ; 3 uses
  %32 = getelementptr inbounds nuw i8, ptr %i.y, i64 196
  %33 = load <2 x float>, ptr %32, align 4
  %34 = fadd <2 x float> %29, %33                 ; 3 uses
  %i.aa = add nuw i64 %.076, 4                    ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !16

._crit_edge90:                                    ; preds = %.lr.ph89, %._crit_edge
  %35 = phi <4 x float> [ zeroinitializer, %._crit_edge ], [ %i.ay, %.lr.ph89 ] ; 10 uses
  %36 = phi <2 x float> [ zeroinitializer, %._crit_edge ], [ %i.aw, %.lr.ph89 ] ; 4 uses
  %37 = extractelement <2 x float> %36, i64 0     ; 6 uses
  %38 = extractelement <4 x float> %35, i64 0     ; 3 uses
  %i.ab = extractelement <2 x float> %36, i64 1   ; 3 uses
  %i.ac = fmul float %38, %i.ab
  %i.ad = extractelement <4 x float> %35, i64 3   ; 4 uses
  %i.ae = fmul float %i.ad, %i.ab
  %i.af = fneg float %i.ad                        ; 2 uses
  %i.ag = fmul float %i.ae, %i.af
  %i.ah = extractelement <4 x float> %35, i64 1   ; 2 uses
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.ac, float %i.ah, float %i.ag)
  %i.aj = extractelement <4 x float> %35, i64 2   ; 4 uses
  %i.ak = fmul float %i.ad, %i.aj
  %i.al = tail call float @llvm.fmuladd.f32(float %i.ak, float %37, float %i.ai)
  %i.am = fneg float %i.aj                        ; 2 uses
  %i.an = fmul float %i.aj, %i.am                 ; 2 uses
  %i.ao = tail call float @llvm.fmuladd.f32(float %i.an, float %i.ah, float %i.al)
  %i.ap = fmul float %37, %i.aj
  %i.aq = tail call float @llvm.fmuladd.f32(float %i.ap, float %i.ad, float %i.ao)
  %39 = fneg float %38
  %40 = fmul float %37, %39                       ; 2 uses
  %i.ar = tail call noundef float @llvm.fmuladd.f32(float %40, float %37, float %i.aq) ; 2 uses
  %i.as = fcmp oeq float %i.ar, 0.000000e+00
  br i1 %i.as, label %bb.b, label %_ZN12aiMatrix3x3tIfE7InverseEv.exit

.lr.ph89:                                         ; preds = %._crit_edge, %.lr.ph89
  %.06081 = phi i64 [ %i.az, %.lr.ph89 ], [ 0, %._crit_edge ] ; 2 uses
  %i.at = phi <4 x float> [ %i.ay, %.lr.ph89 ], [ zeroinitializer, %._crit_edge ]
  %i.au = phi <2 x float> [ %i.aw, %.lr.ph89 ], [ zeroinitializer, %._crit_edge ]
  %i.av = getelementptr inbounds nuw [64 x i8], ptr %i.d, i64 %.06081 ; 2 uses
  %41 = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %42 = load float, ptr %i.av, align 4
  %43 = load <2 x float>, ptr %41, align 4
  %44 = shufflevector <2 x float> %43, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %45 = insertelement <4 x float> %44, float %42, i64 2
  %46 = shufflevector <4 x float> %45, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %47 = fsub <4 x float> %46, %i.q                ; 4 uses
  %48 = shufflevector <4 x float> %47, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %49 = shufflevector <4 x float> %47, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.aw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %48, <2 x float> %49, <2 x float> %i.au) ; 2 uses
  %i.ax = shufflevector <4 x float> %47, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ay = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %47, <4 x float> %i.ax, <4 x float> %i.at) ; 2 uses
  %i.az = add nuw i64 %.06081, 1                  ; 2 uses
  %exitcond107.not = icmp eq i64 %i.az, %i.h
  br i1 %exitcond107.not, label %._crit_edge90, label %.lr.ph89, !llvm.loop !17
end_hunk_1
begin_hunk_2_@_ZNK6Assimp21BlenderTessellatorP2T13FindLLSQPlaneERKSt6vectorINS_7Blender8PointP2TESaIS3_EE:bb.a
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ba = fdiv float 1.000000e+00, %i.ar          ; 3 uses
  %i.bb = fneg float %i.ba
  %i.bc = fneg float %37                          ; 2 uses
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.ab, float %38, float %i.an)
  %i.be = fmul float %i.bd, %i.ba
  %50 = shufflevector <4 x float> %35, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 3, i32 poison>
  %51 = insertelement <4 x float> %50, float %37, i64 1
  %52 = insertelement <4 x float> %51, float %40, i64 3
  %i.bf = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.af, i64 0
  %i.bg = insertelement <4 x float> %i.bf, float %i.bc, i64 2
  %i.bh = shufflevector <4 x float> %i.bg, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.bi = fmul <4 x float> %52, %i.bh
  %i.bj = shufflevector <4 x float> %35, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 1, i32 2>
  %i.bk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %35, <4 x float> %i.bj, <4 x float> %i.bi)
  %i.bl = insertelement <4 x float> poison, float %i.ba, i64 0
  %i.bm = insertelement <4 x float> %i.bl, float %i.bb, i64 1 ; 2 uses
  %i.bn = shufflevector <4 x float> %i.bk, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 3, i32 2>
  %i.bo = shufflevector <4 x float> %i.bm, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bp = fmul <4 x float> %i.bn, %i.bo
  store <4 x float> %i.bp, ptr %3, align 16
  %53 = shufflevector <2 x float> %36, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %54 = shufflevector <4 x float> %53, <4 x float> %35, <4 x i32> <i32 0, i32 0, i32 4, i32 6>
  %i.bq = insertelement <4 x float> poison, float %i.bc, i64 0
  %i.br = insertelement <4 x float> %i.bq, float %i.am, i64 1
  %i.bs = shufflevector <4 x float> %i.br, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.bt = fmul <4 x float> %54, %i.bs
  %i.bu = shufflevector <4 x float> %35, <4 x float> poison, <4 x i32> <i32 1, i32 3, i32 3, i32 poison>
  %55 = shufflevector <2 x float> %36, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %56 = shufflevector <4 x float> %i.bu, <4 x float> %55, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %57 = shufflevector <4 x float> %55, <4 x float> %35, <4 x i32> <i32 1, i32 1, i32 6, i32 7>
  %i.bv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %56, <4 x float> %57, <4 x float> %i.bt)
  %i.bw = shufflevector <4 x float> %i.bm, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bx = fmul <4 x float> %i.bv, %i.bw
  store <4 x float> %i.bx, ptr %.sroa.11.0..sroa_idx, align 16
end_hunk_2
