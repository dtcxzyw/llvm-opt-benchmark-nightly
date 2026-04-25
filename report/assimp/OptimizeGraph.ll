inline.NumInlined: 624
inline.NumDeleted: 303
begin_hunk_0_@_ZN6Assimp20OptimizeGraphProcess18CollectNewChildrenEP6aiNodeRNSt7__cxx114listIS2_SaIS2_EEE:bb.a
  %i.qp = call noundef float @llvm.fmuladd.f32(float %i.qo, float %i.nr, float %i.qn)
  %i.qq = fcmp olt float %i.qp, 0.000000e+00
  %i.qr = shufflevector <2 x float> %i.ny, <2 x float> %i.nv, <4 x i32> <i32 1, i32 3, i32 0, i32 2>
  %9 = shufflevector <2 x float> %i.oc, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 poison>
  %10 = insertelement <4 x float> %9, float %i.no, i64 1
  %i.qs = insertelement <4 x float> poison, float %i.pk, i64 0
  %i.qt = insertelement <4 x float> %i.qs, float %i.oa, i64 2
  %i.qu = insertelement <4 x float> %i.qt, float %i.nx, i64 3
  %11 = shufflevector <4 x float> %i.qu, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  br i1 %i.qq, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
end_hunk_0
begin_hunk_1_@_ZN6Assimp20OptimizeGraphProcess18CollectNewChildrenEP6aiNodeRNSt7__cxx114listIS2_SaIS2_EEE:bb.a
  %.pre545 = fmul float %.pre516, %.pre520
  %.pre547 = fmul float %.pre517, %i.qy
  %i.rb = shufflevector <2 x float> %i.qx, <2 x float> %i.qv, <4 x i32> <i32 1, i32 3, i32 0, i32 2>
  %12 = shufflevector <2 x float> %i.qz, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 poison>
  %13 = insertelement <4 x float> %12, float %.pre520, i64 1
  %i.rc = insertelement <4 x float> poison, float %.pre517, i64 0
  %i.rd = insertelement <4 x float> %i.rc, float %.pre519, i64 2
  %i.re = insertelement <4 x float> %i.rd, float %.pre516, i64 3
  %14 = shufflevector <4 x float> %i.re, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  br label %bb.ay

bb.ax:                                            ; preds = %bb.aw
end_hunk_1
begin_hunk_2_@_ZN6Assimp20OptimizeGraphProcess18CollectNewChildrenEP6aiNodeRNSt7__cxx114listIS2_SaIS2_EEE:bb.a
  %i.rl = phi float [ %.pre516, %._crit_edge514 ], [ %i.nx, %bb.av ]
  %i.rm = phi float [ %i.qw, %._crit_edge514 ], [ %i.nw, %bb.av ]
  %i.rn = phi <4 x float> [ %i.rb, %._crit_edge514 ], [ %i.qr, %bb.av ]
  %15 = phi <4 x float> [ %13, %._crit_edge514 ], [ %10, %bb.av ] ; 3 uses
  %i.ro = phi <4 x float> [ %14, %._crit_edge514 ], [ %11, %bb.av ] ; 2 uses
  %i.rp = extractelement <4 x float> %15, i64 0   ; 2 uses
  %i.rq = call float @llvm.fmuladd.f32(float %.pre-phi538, float %i.rp, float %.pre-phi544)
  %i.rr = call float @llvm.fmuladd.f32(float %.pre-phi546, float %i.rh, float %i.rq)
  %i.rs = fneg float %i.rj                        ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN6Assimp20OptimizeGraphProcess18CollectNewChildrenEP6aiNodeRNSt7__cxx114listIS2_SaIS2_EEE:bb.a
  br i1 %i.rz, label %_ZN12aiMatrix3x3tIfE7InverseEv.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.sa = shufflevector <4 x float> %15, <4 x float> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 0, i32 0, i32 1, i32 2, i32 2>
  %i.sb = shufflevector <4 x float> %i.rn, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 1, i32 2, i32 3, i32 3, i32 2, i32 3>
  %i.sc = fdiv float 1.000000e+00, %i.ry          ; 3 uses
  %i.sd = fneg float %i.sc
  %i.se = fneg float %i.rh
  %i.sf = shufflevector <4 x float> %i.ro, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.sg = shufflevector <4 x float> %15, <4 x float> %i.ro, <8 x i32> <i32 1, i32 4, i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.sh = insertelement <8 x float> %i.sg, float %i.rx, i64 2
  %i.si = shufflevector <8 x float> %i.sh, <8 x float> %i.sf, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.sj = insertelement <8 x float> <float poison, float 1.000000e+00, float poison, float poison, float poison, float poison, float poison, float poison>, float %.pre-phi542, i64 0
end_hunk_3
begin_hunk_4_@_ZN12aiMatrix4x4tIfE7InverseEv:bb.a
  %i.ae = load <2 x float>, ptr %i.l, align 4     ; 6 uses
  %i.af = extractelement <2 x float> %i.ae, i64 0
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ah = load <2 x float>, ptr %i.h, align 4     ; 11 uses
  %i.ai = load <2 x float>, ptr %i.c, align 4     ; 8 uses
  %i.aj = load float, ptr %i.f, align 4           ; 7 uses
  %i.ak = fneg float %i.aj                        ; 3 uses
  %i.al = extractelement <2 x float> %i.ai, i64 0 ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN12aiMatrix4x4tIfE7InverseEv:bb.a
bb.b:                                             ; preds = %bb.a
  %i.de = shufflevector <2 x float> %i.y, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %i.df = fdiv float 1.000000e+00, %i.dc          ; 3 uses
  %1 = shufflevector <2 x float> %i.ah, <2 x float> %i.ai, <4 x i32> <i32 3, i32 1, i32 3, i32 1> ; 2 uses
  %i.dg = shufflevector <2 x float> %i.ai, <2 x float> %i.ah, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %i.dh = fmul <4 x float> %i.dg, %i.de
  %i.di = fneg float %i.e
end_hunk_5
begin_hunk_6_@_ZN12aiMatrix4x4tIfE7InverseEv:bb.a
  %i.dk = fneg float %i.df                        ; 2 uses
  %i.dl = shufflevector <2 x float> %i.u, <2 x float> %i.r, <4 x i32> <i32 1, i32 1, i32 3, i32 3> ; 2 uses
  %i.dm = insertelement <4 x float> poison, float %i.e, i64 0 ; 2 uses
  %2 = shufflevector <2 x float> %i.ai, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.dn = shufflevector <4 x float> %i.dm, <4 x float> %2, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.do = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dl, <4 x float> %i.dn, <4 x float> %i.dh) ; 2 uses
  %i.dp = shufflevector <2 x float> %i.u, <2 x float> %i.r, <4 x i32> <i32 0, i32 2, i32 0, i32 2> ; 3 uses
end_hunk_6
begin_hunk_7_@_ZN12aiMatrix4x4tIfE7InverseEv:bb.a
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
end_hunk_7
