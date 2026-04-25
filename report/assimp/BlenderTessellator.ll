inline.NumInlined: 331
inline.NumDeleted: 200
begin_hunk_0_@_ZNK6Assimp21BlenderTessellatorP2T13FindLLSQPlaneERKSt6vectorINS_7Blender8PointP2TESaIS3_EE:bb.a
  store i64 0, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = load ptr, ptr %2, align 8                ; 10 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %i.h = ashr exact i64 %i.g, 6                   ; 6 uses
  %.not = icmp eq ptr %i.c, %i.d                  ; 2 uses
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

end_hunk_0
begin_hunk_1_@_ZNK6Assimp21BlenderTessellatorP2T13FindLLSQPlaneERKSt6vectorINS_7Blender8PointP2TESaIS3_EE:bb.a
  %i.x = shufflevector <4 x float> %i.w, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.y = insertelement <4 x float> poison, float %i.v, i64 0
  %i.z = shufflevector <4 x float> %i.y, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aa = fmul <4 x float> %i.x, %i.z             ; 5 uses
  %i.ab = shufflevector <4 x float> %i.aa, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  store <2 x float> %i.ab, ptr %0, align 4
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = extractelement <4 x float> %i.aa, i64 1
  store float %i.ac, ptr %.sroa.444.0..sroa_idx, align 4
  br i1 %.not, label %._crit_edge90, label %.lr.ph89.preheader

.lr.ph89.preheader:                               ; preds = %._crit_edge
  %4 = icmp eq i64 %i.g, 64
  br i1 %4, label %.lr.ph89.epil.preheader, label %.lr.ph89.preheader.new

.lr.ph89.preheader.new:                           ; preds = %.lr.ph89.preheader
  %unroll_iter142 = and i64 %i.h, -2
  br label %.lr.ph89

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.076 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bf, %.lr.ph ] ; 5 uses
end_hunk_1
begin_hunk_2_@_ZNK6Assimp21BlenderTessellatorP2T13FindLLSQPlaneERKSt6vectorINS_7Blender8PointP2TESaIS3_EE:bb.a
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !16

._crit_edge90.loopexit.unr-lcssa:                 ; preds = %.lr.ph89
  %5 = and i64 %i.g, 64
  %lcmp.mod138.not = icmp eq i64 %5, 0
  br i1 %lcmp.mod138.not, label %._crit_edge90, label %.lr.ph89.epil.preheader

.lr.ph89.epil.preheader:                          ; preds = %._crit_edge90.loopexit.unr-lcssa, %.lr.ph89.preheader
  %.06081.epil.init = phi i64 [ 0, %.lr.ph89.preheader ], [ %33, %._crit_edge90.loopexit.unr-lcssa ]
  %.epil.init135 = phi <4 x float> [ zeroinitializer, %.lr.ph89.preheader ], [ %i.cm, %._crit_edge90.loopexit.unr-lcssa ]
  %.epil.init137 = phi <2 x float> [ zeroinitializer, %.lr.ph89.preheader ], [ %i.ck, %._crit_edge90.loopexit.unr-lcssa ]
  %lcmp.mod141 = trunc i64 %i.h to i1
  tail call void @llvm.assume(i1 %lcmp.mod141)
  %6 = getelementptr inbounds nuw [64 x i8], ptr %i.d, i64 %.06081.epil.init ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 4
  %8 = load <2 x float>, ptr %6, align 4
  %9 = load <2 x float>, ptr %7, align 4
  %10 = shufflevector <2 x float> %9, <2 x float> %8, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %11 = fsub <4 x float> %10, %i.aa               ; 4 uses
  %12 = shufflevector <4 x float> %11, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %13 = shufflevector <4 x float> %11, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %14 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %12, <2 x float> %13, <2 x float> %.epil.init137)
  %15 = shufflevector <4 x float> %11, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %16 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %11, <4 x float> %15, <4 x float> %.epil.init135)
  br label %._crit_edge90

._crit_edge90:                                    ; preds = %.lr.ph89.epil.preheader, %._crit_edge90.loopexit.unr-lcssa, %._crit_edge
  %17 = phi <4 x float> [ zeroinitializer, %._crit_edge ], [ %i.cm, %._crit_edge90.loopexit.unr-lcssa ], [ %16, %.lr.ph89.epil.preheader ] ; 10 uses
  %18 = phi <2 x float> [ zeroinitializer, %._crit_edge ], [ %i.ck, %._crit_edge90.loopexit.unr-lcssa ], [ %14, %.lr.ph89.epil.preheader ] ; 4 uses
  %i.bg = extractelement <2 x float> %18, i64 0   ; 6 uses
  %i.bh = extractelement <4 x float> %17, i64 0   ; 3 uses
  %i.bi = extractelement <2 x float> %18, i64 1   ; 3 uses
  %i.bj = fmul float %i.bh, %i.bi
  %i.bk = extractelement <4 x float> %17, i64 3   ; 4 uses
  %i.bl = fmul float %i.bk, %i.bi
  %i.bm = fneg float %i.bk                        ; 2 uses
  %i.bn = fmul float %i.bl, %i.bm
  %i.bo = extractelement <4 x float> %17, i64 1   ; 2 uses
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.bo, float %i.bn)
  %i.bq = extractelement <4 x float> %17, i64 2   ; 4 uses
  %i.br = fmul float %i.bk, %i.bq
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.br, float %i.bg, float %i.bp)
  %i.bt = fneg float %i.bq                        ; 2 uses
end_hunk_2
begin_hunk_3_@_ZNK6Assimp21BlenderTessellatorP2T13FindLLSQPlaneERKSt6vectorINS_7Blender8PointP2TESaIS3_EE:bb.a
  %i.cb = fcmp oeq float %i.ca, 0.000000e+00
  br i1 %i.cb, label %bb.b, label %_ZN12aiMatrix3x3tIfE7InverseEv.exit

.lr.ph89:                                         ; preds = %.lr.ph89, %.lr.ph89.preheader.new
  %.06081 = phi i64 [ 0, %.lr.ph89.preheader.new ], [ %33, %.lr.ph89 ] ; 3 uses
  %i.cc = phi <4 x float> [ zeroinitializer, %.lr.ph89.preheader.new ], [ %i.cm, %.lr.ph89 ]
  %i.cd = phi <2 x float> [ zeroinitializer, %.lr.ph89.preheader.new ], [ %i.ck, %.lr.ph89 ]
  %niter143 = phi i64 [ 0, %.lr.ph89.preheader.new ], [ %i.cn, %.lr.ph89 ]
  %i.ce = getelementptr inbounds nuw [64 x i8], ptr %i.d, i64 %.06081 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %19 = load <2 x float>, ptr %i.ce, align 4
  %i.cg = load <2 x float>, ptr %i.cf, align 4
  %20 = shufflevector <2 x float> %i.cg, <2 x float> %19, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %21 = fsub <4 x float> %20, %i.aa               ; 4 uses
  %22 = shufflevector <4 x float> %21, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %23 = shufflevector <4 x float> %21, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %24 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %22, <2 x float> %23, <2 x float> %i.cd)
  %25 = shufflevector <4 x float> %21, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %26 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %21, <4 x float> %25, <4 x float> %i.cc)
  %27 = getelementptr inbounds nuw [64 x i8], ptr %i.d, i64 %.06081 ; 2 uses
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 64
  %29 = getelementptr inbounds nuw i8, ptr %27, i64 68
  %30 = load <2 x float>, ptr %28, align 4
  %31 = load <2 x float>, ptr %29, align 4
  %32 = shufflevector <2 x float> %31, <2 x float> %30, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ch = fsub <4 x float> %32, %i.aa             ; 4 uses
  %i.ci = shufflevector <4 x float> %i.ch, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.cj = shufflevector <4 x float> %i.ch, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.ck = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ci, <2 x float> %i.cj, <2 x float> %24) ; 3 uses
  %i.cl = shufflevector <4 x float> %i.ch, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ch, <4 x float> %i.cl, <4 x float> %26) ; 3 uses
  %33 = add nuw i64 %.06081, 2                    ; 2 uses
  %i.cn = add i64 %niter143, 2                    ; 2 uses
  %exitcond107.not = icmp eq i64 %i.cn, %unroll_iter142
  br i1 %exitcond107.not, label %._crit_edge90.loopexit.unr-lcssa, label %.lr.ph89, !llvm.loop !17

bb.b:                                             ; preds = %._crit_edge90
  %.sroa.4.0..sroa_idx65 = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_3
begin_hunk_4_@_ZNK6Assimp21BlenderTessellatorP2T13FindLLSQPlaneERKSt6vectorINS_7Blender8PointP2TESaIS3_EE:bb.a
  %i.cq = fneg float %i.bg                        ; 2 uses
  %i.cr = tail call float @llvm.fmuladd.f32(float %i.bi, float %i.bh, float %i.bu)
  %i.cs = fmul float %i.cr, %i.co
  %i.ct = shufflevector <4 x float> %17, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 3, i32 poison>
  %i.cu = insertelement <4 x float> %i.ct, float %i.bg, i64 1
  %i.cv = insertelement <4 x float> %i.cu, float %i.bz, i64 3
  %i.cw = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.bm, i64 0
  %i.cx = insertelement <4 x float> %i.cw, float %i.cq, i64 2
  %i.cy = shufflevector <4 x float> %i.cx, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.cz = fmul <4 x float> %i.cv, %i.cy
  %i.da = shufflevector <4 x float> %17, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 1, i32 2>
  %i.db = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %17, <4 x float> %i.da, <4 x float> %i.cz)
  %i.dc = insertelement <4 x float> poison, float %i.co, i64 0
  %i.dd = insertelement <4 x float> %i.dc, float %i.cp, i64 1 ; 2 uses
  %i.de = shufflevector <4 x float> %i.db, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 3, i32 2>
  %i.df = shufflevector <4 x float> %i.dd, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dg = fmul <4 x float> %i.de, %i.df
  store <4 x float> %i.dg, ptr %3, align 16
  %i.dh = shufflevector <2 x float> %18, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.di = shufflevector <4 x float> %i.dh, <4 x float> %17, <4 x i32> <i32 0, i32 0, i32 4, i32 6>
  %i.dj = insertelement <4 x float> poison, float %i.cq, i64 0
  %i.dk = insertelement <4 x float> %i.dj, float %i.bt, i64 1
  %i.dl = shufflevector <4 x float> %i.dk, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.dm = fmul <4 x float> %i.di, %i.dl
  %i.dn = shufflevector <4 x float> %17, <4 x float> poison, <4 x i32> <i32 1, i32 3, i32 3, i32 poison>
  %i.do = shufflevector <2 x float> %18, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.dp = shufflevector <4 x float> %i.dn, <4 x float> %i.do, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.dq = shufflevector <4 x float> %i.do, <4 x float> %17, <4 x i32> <i32 1, i32 1, i32 6, i32 7>
  %i.dr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dp, <4 x float> %i.dq, <4 x float> %i.dm)
  %i.ds = shufflevector <4 x float> %i.dd, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dt = fmul <4 x float> %i.dr, %i.ds
end_hunk_4
begin_hunk_5_@_ZN12aiMatrix4x4tIfE7InverseEv:bb.a
  %i.ae = load <2 x float>, ptr %i.l, align 4     ; 6 uses
  %i.af = extractelement <2 x float> %i.ae, i64 0
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ah = load <2 x float>, ptr %i.h, align 4     ; 11 uses
  %i.ai = load <2 x float>, ptr %i.c, align 4     ; 8 uses
  %i.aj = load float, ptr %i.f, align 4           ; 7 uses
  %i.ak = fneg float %i.aj                        ; 3 uses
  %i.al = extractelement <2 x float> %i.ai, i64 0 ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN12aiMatrix4x4tIfE7InverseEv:bb.a
bb.b:                                             ; preds = %bb.a
  %i.de = shufflevector <2 x float> %i.y, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %i.df = fdiv float 1.000000e+00, %i.dc          ; 3 uses
  %1 = shufflevector <2 x float> %i.ah, <2 x float> %i.ai, <4 x i32> <i32 3, i32 1, i32 3, i32 1> ; 2 uses
  %i.dg = shufflevector <2 x float> %i.ai, <2 x float> %i.ah, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %i.dh = fmul <4 x float> %i.dg, %i.de
  %i.di = fneg float %i.e
end_hunk_6
begin_hunk_7_@_ZN12aiMatrix4x4tIfE7InverseEv:bb.a
  %i.dk = fneg float %i.df                        ; 2 uses
  %i.dl = shufflevector <2 x float> %i.u, <2 x float> %i.r, <4 x i32> <i32 1, i32 1, i32 3, i32 3> ; 2 uses
  %i.dm = insertelement <4 x float> poison, float %i.e, i64 0 ; 2 uses
  %2 = shufflevector <2 x float> %i.ai, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.dn = shufflevector <4 x float> %i.dm, <4 x float> %2, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.do = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dl, <4 x float> %i.dn, <4 x float> %i.dh) ; 2 uses
  %i.dp = shufflevector <2 x float> %i.u, <2 x float> %i.r, <4 x i32> <i32 0, i32 2, i32 0, i32 2> ; 3 uses
end_hunk_7
begin_hunk_8_@_ZN12aiMatrix4x4tIfE7InverseEv:bb.a
  %i.er = shufflevector <2 x float> %i.az, <2 x float> %i.bc, <4 x i32> <i32 1, i32 3, i32 1, i32 3> ; 2 uses
  %i.es = fmul <4 x float> %i.er, %i.dt
  %i.et = insertelement <4 x float> poison, float %i.n, i64 0
  %i.eu = insertelement <4 x float> %1, float %i.n, i64 0 ; 2 uses
  %3 = shufflevector <4 x float> %i.eu, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 poison, i32 poison>
  %i.ev = insertelement <4 x float> %3, float %i.n, i64 2
  %i.ew = shufflevector <2 x float> %i.az, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %4 = shufflevector <4 x float> %i.ev, <4 x float> %i.ew, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.ex = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eu, <4 x float> %4, <4 x float> %i.es) ; 2 uses
  %i.ey = shufflevector <2 x float> %i.ah, <2 x float> %i.ay, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.ez = shufflevector <2 x float> %i.ah, <2 x float> %i.ay, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.fa = fmul <4 x float> %i.ez, %i.ex
end_hunk_8
