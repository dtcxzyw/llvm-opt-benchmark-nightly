inline.NumInlined: 2494
inline.NumDeleted: 1209
begin_hunk_0_@_ZN12aiMatrix4x4tIfE7InverseEv:bb.a
  %i.ae = load <2 x float>, ptr %i.l, align 4     ; 6 uses
  %i.af = extractelement <2 x float> %i.ae, i64 0
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ah = load <2 x float>, ptr %i.h, align 4     ; 12 uses
  %i.ai = load <2 x float>, ptr %i.c, align 4     ; 9 uses
  %i.aj = load float, ptr %i.f, align 4           ; 7 uses
  %i.ak = fneg float %i.aj                        ; 3 uses
  %i.al = extractelement <2 x float> %i.ai, i64 0 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN12aiMatrix4x4tIfE7InverseEv:bb.a
bb.b:                                             ; preds = %bb.a
  %i.de = shufflevector <2 x float> %i.y, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %i.df = fdiv float 1.000000e+00, %i.dc          ; 3 uses
  %1 = shufflevector <2 x float> %i.ah, <2 x float> %i.ai, <4 x i32> <i32 3, i32 1, i32 poison, i32 poison>
  %i.dg = shufflevector <2 x float> %i.ai, <2 x float> %i.ah, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %i.dh = fmul <4 x float> %i.dg, %i.de
  %i.di = fneg float %i.e
end_hunk_1
begin_hunk_2_@_ZN12aiMatrix4x4tIfE7InverseEv:bb.a
  %i.dk = fneg float %i.df                        ; 2 uses
  %i.dl = shufflevector <2 x float> %i.u, <2 x float> %i.r, <4 x i32> <i32 1, i32 1, i32 3, i32 3> ; 2 uses
  %i.dm = insertelement <4 x float> poison, float %i.e, i64 0 ; 2 uses
  %2 = shufflevector <2 x float> %i.ai, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.dn = shufflevector <4 x float> %i.dm, <4 x float> %2, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.do = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dl, <4 x float> %i.dn, <4 x float> %i.dh) ; 2 uses
  %i.dp = shufflevector <2 x float> %i.u, <2 x float> %i.r, <4 x i32> <i32 0, i32 2, i32 0, i32 2> ; 3 uses
end_hunk_2
begin_hunk_3_@_ZN12aiMatrix4x4tIfE7InverseEv:bb.a
  %i.er = shufflevector <2 x float> %i.az, <2 x float> %i.bc, <4 x i32> <i32 1, i32 3, i32 1, i32 3> ; 2 uses
  %i.es = fmul <4 x float> %i.er, %i.dt
  %i.et = insertelement <4 x float> poison, float %i.n, i64 0
  %i.eu = insertelement <4 x float> %2, float %i.n, i64 0
  %3 = shufflevector <2 x float> %i.ah, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %4 = shufflevector <4 x float> %i.eu, <4 x float> %3, <4 x i32> <i32 0, i32 5, i32 1, i32 5>
  %5 = shufflevector <2 x float> %i.ai, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ev = insertelement <4 x float> %5, float %i.n, i64 1
  %i.ew = shufflevector <2 x float> %i.az, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %6 = shufflevector <4 x float> %i.ev, <4 x float> %i.ew, <4 x i32> <i32 0, i32 1, i32 1, i32 5>
  %i.ex = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %4, <4 x float> %6, <4 x float> %i.es) ; 2 uses
  %i.ey = shufflevector <2 x float> %i.ah, <2 x float> %i.ay, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.ez = shufflevector <2 x float> %i.ah, <2 x float> %i.ay, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.fa = fmul <4 x float> %i.ez, %i.ex
end_hunk_3
begin_hunk_4_@_ZN12aiMatrix4x4tIdE7InverseEv:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load <14 x double>, ptr %i.g, align 8    ; 30 uses
  %i.m = load double, ptr %i.e, align 8           ; 6 uses
  %i.n = load double, ptr %i.h, align 8           ; 10 uses
  %i.o = load double, ptr %i.b, align 8           ; 5 uses
end_hunk_4
begin_hunk_5_@_ZN12aiMatrix4x4tIdE7InverseEv:bb.a
  %i.ct = fmul <4 x double> %i.cs, %i.cq
  %i.cu = fneg double %i.d                        ; 2 uses
  %i.cv = fneg double %i.ae                       ; 2 uses
  %i.cw = fneg double %i.cr                       ; 3 uses
  %i.cx = fneg double %i.n                        ; 4 uses
  %i.cy = shufflevector <14 x double> %i.l, <14 x double> poison, <4 x i32> <i32 8, i32 4, i32 4, i32 7> ; 2 uses
  %i.cz = insertelement <4 x double> poison, double %i.cu, i64 0
  %i.da = insertelement <4 x double> %i.cz, double %i.at, i64 2
  %1 = shufflevector <4 x double> %i.da, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 0>
  %i.db = fmul <4 x double> %i.cy, %1
  %i.dc = shufflevector <14 x double> %i.l, <14 x double> poison, <4 x i32> <i32 12, i32 6, i32 8, i32 10>
  %i.dd = shufflevector <14 x double> %i.l, <14 x double> poison, <4 x i32> <i32 2, i32 poison, i32 6, i32 11> ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN12aiMatrix4x4tIdE7InverseEv:bb.a
  %i.dh = shufflevector <14 x double> %i.l, <14 x double> poison, <4 x i32> <i32 poison, i32 5, i32 10, i32 9> ; 2 uses
  %i.di = insertelement <4 x double> poison, double %i.d, i64 0
  %i.dj = insertelement <4 x double> %i.dh, double %i.d, i64 0
  %2 = shufflevector <4 x double> %i.dh, <4 x double> %i.di, <3 x i32> <i32 3, i32 4, i32 poison>
  %3 = shufflevector <14 x double> %i.l, <14 x double> poison, <3 x i32> <i32 poison, i32 poison, i32 5>
  %4 = shufflevector <3 x double> %2, <3 x double> %3, <4 x i32> <i32 0, i32 1, i32 5, i32 1>
  %i.dk = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.dj, <4 x double> %4, <4 x double> %i.ct) ; 3 uses
  %i.dl = shufflevector <14 x double> %i.l, <14 x double> poison, <4 x i32> <i32 9, i32 5, i32 5, i32 9>
  %i.dm = insertelement <4 x double> poison, double %i.cv, i64 0
  %i.dn = insertelement <4 x double> %i.dm, double %i.ah, i64 2
  %i.do = insertelement <4 x double> %i.dn, double %i.cx, i64 3
  %i.dp = shufflevector <4 x double> %i.do, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.dq = fmul <4 x double> %i.dl, %i.dp
  %5 = shufflevector <14 x double> %i.l, <14 x double> poison, <4 x i32> <i32 poison, i32 poison, i32 9, i32 7>
  %6 = shufflevector <4 x double> %i.cy, <4 x double> %5, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dr = shufflevector <14 x double> %i.l, <14 x double> poison, <4 x i32> <i32 13, i32 13, i32 4, i32 13>
  %i.ds = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %6, <4 x double> %i.dr, <4 x double> %i.dq) ; 5 uses
  %i.dt = shufflevector <14 x double> %i.l, <14 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.du = fmul <4 x double> %i.dt, %i.dg
  %i.dv = shufflevector <14 x double> %i.l, <14 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
end_hunk_6
begin_hunk_7_@_ZN12aiMatrix4x4tIdE7InverseEv:bb.a
  %i.fa = shufflevector <4 x double> %i.ds, <4 x double> %i.ez, <4 x i32> <i32 3, i32 4, i32 poison, i32 poison>
  %i.fb = shufflevector <2 x double> %i.ey, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.fc = shufflevector <4 x double> %i.fa, <4 x double> %i.fb, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.fd = insertelement <4 x double> poison, double %i.cr, i64 0 ; 2 uses
  %i.fe = insertelement <4 x double> %i.fd, double %i.cw, i64 1
  %i.ff = shufflevector <4 x double> %i.fe, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.fg = fmul double %i.ak, %i.ah
  %i.fh = tail call double @llvm.fmuladd.f64(double %i.t, double %i.w, double %i.fg)
end_hunk_7
begin_hunk_8_@_ZN12aiMatrix4x4tIdE7InverseEv:bb.a
  %i.hu = insertelement <4 x double> %i.ht, double %i.q, i64 3
  %i.hv = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.hu, <4 x double> %i.gq, <4 x double> %i.go)
  %i.hw = fmul <4 x double> %i.hv, %i.eb
  %7 = insertelement <4 x double> %i.fd, double %i.cw, i64 2
  %8 = shufflevector <4 x double> %7, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 0>
  %i.hx = fmul <4 x double> %i.hs, %8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
end_hunk_8
