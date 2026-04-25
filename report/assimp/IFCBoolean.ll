inline.NumInlined: 1663
inline.NumDeleted: 638
begin_hunk_0_@_ZN12aiMatrix4x4tIdE7InverseEv:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load <14 x double>, ptr %i.g, align 8    ; 29 uses
  %i.m = load double, ptr %i.e, align 8           ; 6 uses
  %i.n = load double, ptr %i.h, align 8           ; 10 uses
  %i.o = load double, ptr %i.b, align 8           ; 5 uses
end_hunk_0
begin_hunk_1_@_ZN12aiMatrix4x4tIdE7InverseEv:bb.a
  %i.ct = fmul <4 x double> %i.cs, %i.cq
  %i.cu = fneg double %i.d                        ; 2 uses
  %i.cv = fneg double %i.ae                       ; 2 uses
  %i.cw = fneg double %i.cr                       ; 2 uses
  %i.cx = fneg double %i.n                        ; 4 uses
  %i.cy = shufflevector <14 x double> %i.l, <14 x double> poison, <4 x i32> <i32 8, i32 4, i32 4, i32 7>
  %i.cz = insertelement <4 x double> poison, double %i.cu, i64 0
  %i.da = insertelement <4 x double> %i.cz, double %i.at, i64 1
  %1 = shufflevector <4 x double> %i.da, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.db = fmul <4 x double> %i.cy, %1
  %i.dc = shufflevector <14 x double> %i.l, <14 x double> poison, <4 x i32> <i32 12, i32 6, i32 8, i32 10>
  %i.dd = shufflevector <14 x double> %i.l, <14 x double> poison, <4 x i32> <i32 2, i32 poison, i32 6, i32 11> ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN12aiMatrix4x4tIdE7InverseEv:bb.a
  %i.dh = shufflevector <14 x double> %i.l, <14 x double> poison, <4 x i32> <i32 poison, i32 5, i32 10, i32 9> ; 2 uses
  %i.di = insertelement <4 x double> poison, double %i.d, i64 0
  %i.dj = insertelement <4 x double> %i.dh, double %i.d, i64 0
  %2 = shufflevector <4 x double> %i.dh, <4 x double> %i.di, <4 x i32> <i32 3, i32 4, i32 1, i32 4>
  %i.dk = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.dj, <4 x double> %2, <4 x double> %i.ct) ; 3 uses
  %i.dl = shufflevector <14 x double> %i.l, <14 x double> poison, <4 x i32> <i32 9, i32 5, i32 5, i32 9>
  %i.dm = insertelement <4 x double> poison, double %i.cv, i64 0
  %i.dn = insertelement <4 x double> %i.dm, double %i.ah, i64 2
  %i.do = insertelement <4 x double> %i.dn, double %i.cx, i64 3
  %i.dp = shufflevector <4 x double> %i.do, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.dq = fmul <4 x double> %i.dl, %i.dp
  %3 = shufflevector <14 x double> %i.l, <14 x double> poison, <4 x i32> <i32 8, i32 4, i32 9, i32 7>
  %i.dr = shufflevector <14 x double> %i.l, <14 x double> poison, <4 x i32> <i32 13, i32 13, i32 4, i32 13>
  %i.ds = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %3, <4 x double> %i.dr, <4 x double> %i.dq) ; 5 uses
  %i.dt = shufflevector <14 x double> %i.l, <14 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.du = fmul <4 x double> %i.dt, %i.dg
  %i.dv = shufflevector <14 x double> %i.l, <14 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
end_hunk_2
begin_hunk_3_@_ZN12aiMatrix4x4tIdE7InverseEv:bb.a
  %i.fa = shufflevector <4 x double> %i.ds, <4 x double> %i.ez, <4 x i32> <i32 3, i32 4, i32 poison, i32 poison>
  %i.fb = shufflevector <2 x double> %i.ey, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.fc = shufflevector <4 x double> %i.fa, <4 x double> %i.fb, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.fd = insertelement <4 x double> poison, double %i.cr, i64 0
  %i.fe = insertelement <4 x double> %i.fd, double %i.cw, i64 1 ; 2 uses
  %i.ff = shufflevector <4 x double> %i.fe, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.fg = fmul double %i.ak, %i.ah
  %i.fh = tail call double @llvm.fmuladd.f64(double %i.t, double %i.w, double %i.fg)
end_hunk_3
begin_hunk_4_@_ZN12aiMatrix4x4tIdE7InverseEv:bb.a
  %i.hu = insertelement <4 x double> %i.ht, double %i.q, i64 3
  %i.hv = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.hu, <4 x double> %i.gq, <4 x double> %i.go)
  %i.hw = fmul <4 x double> %i.hv, %i.eb
  %4 = shufflevector <4 x double> %i.fe, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.hx = fmul <4 x double> %i.hs, %4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
end_hunk_4
