Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocm-device-libs/original/epsincosred2D?download=true
inline.NumInlined: 33
inline.NumDeleted: 13
begin_hunk_0
target datalayout = "e-m:e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-p7:160:256:256:32-p8:128:128:128:48-p9:192:256:256:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7:8:9-p10:32:32-p11:32:32-p12:32:32-p13:32:32-p14:32:32-p15:32:32"
target triple = "amdgpu-amd-amdhsa"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable
define hidden <4 x double> @__ocmlpriv_epsincosred2_f64(double noundef %0, double noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = fadd double %0, %1                       ; 12 uses
  %i.b = fsub double %i.a, %0
  %i.c = fsub double %1, %i.b                     ; 3 uses
  %i.d = fmul double %i.a, %i.a                   ; 3 uses
  %i.e = fneg double %i.d
  %i.f = tail call double @llvm.fma.f64(double %i.a, double %i.a, double %i.e)
  %i.g = fmul double %i.c, 2.000000e+00
  %i.h = tail call double @llvm.fma.f64(double %i.a, double %i.g, double %i.f) ; 2 uses
  %i.i = fadd double %i.d, %i.h                   ; 16 uses
  %i.j = fsub double %i.i, %i.d
  %i.k = fsub double %i.h, %i.j                   ; 4 uses
  %i.l = fmul double %i.a, %i.i                   ; 2 uses
  %i.m = fneg double %i.l
  %i.n = tail call double @llvm.fma.f64(double %i.i, double %i.a, double %i.m)
  %2 = tail call double @llvm.fma.f64(double %i.i, double %i.c, double %i.n)
  %3 = tail call double @llvm.fma.f64(double %i.k, double %i.a, double %2)
  %4 = fmul double %i.i, %i.i                     ; 2 uses
  %5 = fneg double %4
  %6 = tail call double @llvm.fma.f64(double %i.i, double %i.i, double %5)
  %i.o = fmul double %i.k, 2.000000e+00
  %7 = tail call double @llvm.fma.f64(double %i.i, double %i.o, double %6)
  %i.p = insertelement <2 x double> poison, double %4, i64 0
  %i.q = insertelement <2 x double> %i.p, double %i.l, i64 1 ; 2 uses
  %i.r = insertelement <2 x double> poison, double %7, i64 0
  %i.s = insertelement <2 x double> %i.r, double %3, i64 1 ; 2 uses
  %i.t = fadd <2 x double> %i.q, %i.s             ; 4 uses
  %i.u = fsub <2 x double> %i.t, %i.q
  %i.v = fsub <2 x double> %i.s, %i.u
  %i.w = tail call double @llvm.fma.f64(double %i.i, double f0x3D2AE7F3E733B81F, double f0xBDA93974A8C07C9D)
  %i.x = tail call double @llvm.fma.f64(double %i.i, double %i.w, double f0x3E21EED8EFF8D898)
  %i.y = fmul double %i.i, 5.000000e-01           ; 2 uses
  %i.z = fmul double %i.k, 5.000000e-01
  %i.aa = fsub double 1.000000e+00, %i.y          ; 3 uses
  %i.ab = fsub double 1.000000e+00, %i.aa
  %i.ac = fsub double %i.ab, %i.y
  %i.ad = fsub double %i.ac, %i.z                 ; 2 uses
  %i.ae = fadd double %i.aa, %i.ad                ; 4 uses
  %i.af = fsub double %i.ae, %i.aa
  %i.ag = fsub double %i.ad, %i.af                ; 2 uses
  %i.ah = tail call double @llvm.fma.f64(double %i.i, double f0x3CE952C77030AD4A, double f0xBD6AE7F3E733B81F)
  %i.ai = tail call double @llvm.fma.f64(double %i.i, double %i.ah, double f0x3DE6124613A86D09)
  %i.aj = tail call double @llvm.fma.f64(double %i.i, double %i.ai, double f0xBE5AE64567F544E4)
  %8 = insertelement <2 x double> poison, double %i.i, i64 0
  %9 = shufflevector <2 x double> %8, <2 x double> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.ak = insertelement <2 x double> poison, double %i.x, i64 0
  %i.al = insertelement <2 x double> %i.ak, double %i.aj, i64 1
  %i.am = tail call <2 x double> @llvm.fma.v2f64(<2 x double> %9, <2 x double> %i.al, <2 x double> <double f0xBE927E4FB7789F5C, double f0x3EC71DE3A556C734>)
  %i.an = tail call <2 x double> @llvm.fma.v2f64(<2 x double> %9, <2 x double> %i.am, <2 x double> <double f0x3EFA01A01A01A01A, double f0xBF2A01A01A01A01A>)
  %i.ao = tail call <2 x double> @llvm.fma.v2f64(<2 x double> %9, <2 x double> %i.an, <2 x double> <double f0xBF56C16C16C16C17, double f0x3F81111111111111>) ; 3 uses
  %i.ap = fmul <2 x double> %9, %i.ao             ; 3 uses
  %i.aq = fneg <2 x double> %i.ap
  %i.ar = tail call <2 x double> @llvm.fma.v2f64(<2 x double> %9, <2 x double> %i.ao, <2 x double> %i.aq)
  %i.as = insertelement <2 x double> poison, double %i.k, i64 0
  %i.at = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> zeroinitializer
  %i.au = tail call <2 x double> @llvm.fma.v2f64(<2 x double> %i.at, <2 x double> %i.ao, <2 x double> %i.ar) ; 2 uses
  %i.av = fadd <2 x double> %i.ap, %i.au          ; 3 uses
  %i.aw = fadd <2 x double> %i.av, <double f0x3FA5555555555555, double f0xBFC5555555555555> ; 5 uses
  %i.ax = extractelement <2 x double> %i.aw, i64 0
  %i.ay = fadd double %i.ax, f0xBFA5555555555555  ; 2 uses
  %i.az = insertelement <4 x double> <double f0x3FA5555555555555, double poison, double poison, double poison>, double %i.ay, i64 1
  %i.ba = fsub <2 x double> %i.av, %i.ap
  %i.bb = fsub <2 x double> %i.au, %i.ba          ; 2 uses
  %i.bc = shufflevector <2 x double> %i.av, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bd = shufflevector <4 x double> %i.az, <4 x double> %i.bc, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.be = shufflevector <2 x double> %i.bb, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bf = shufflevector <4 x double> %i.bd, <4 x double> %i.be, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.bg = shufflevector <2 x double> %i.aw, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bh = shufflevector <4 x double> <double 0.000000e+00, double poison, double poison, double f0xBC45555555555555>, <4 x double> %i.bg, <4 x i32> <i32 0, i32 4, i32 poison, i32 3>
  %i.bi = insertelement <4 x double> %i.bh, double %i.ay, i64 2
  %i.bj = fsub <4 x double> %i.bf, %i.bi          ; 2 uses
  %i.bk = tail call double @llvm.vector.reduce.fadd.v4f64(double -0.000000e+00, <4 x double> %i.bj)
  %i.bl = extractelement <2 x double> %i.aw, i64 1
  %i.bm = fadd double %i.bl, f0x3FC5555555555555  ; 2 uses
  %i.bn = insertelement <4 x double> <double f0xBFC5555555555555, double poison, double poison, double poison>, double %i.bm, i64 1
  %i.bo = shufflevector <4 x double> %i.bn, <4 x double> %i.bc, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.bp = shufflevector <4 x double> %i.bo, <4 x double> %i.be, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.bq = shufflevector <4 x double> <double 0.000000e+00, double poison, double poison, double f0x3C65555555555555>, <4 x double> %i.bg, <4 x i32> <i32 0, i32 5, i32 poison, i32 3>
  %i.br = insertelement <4 x double> %i.bq, double %i.bm, i64 2
  %i.bs = fsub <4 x double> %i.bp, %i.br          ; 2 uses
  %i.bt = shufflevector <4 x double> %i.bj, <4 x double> %i.bs, <2 x i32> <i32 3, i32 7> ; 2 uses
  %i.bu = fadd <2 x double> %i.bt, <double f0xBC45555555555555, double f0x3C65555555555555> ; 2 uses
  %i.bv = fsub <2 x double> %i.bu, %i.bt
  %i.bw = fadd <2 x double> %i.bv, <double f0x3C45555555555555, double f0xBC65555555555555>
  %i.bx = fsub <2 x double> %i.bb, %i.bu
  %i.by = fadd <2 x double> %i.bx, %i.bw
  %i.bz = tail call double @llvm.vector.reduce.fadd.v4f64(double -0.000000e+00, <4 x double> %i.bs)
  %i.ca = insertelement <2 x double> poison, double %i.bk, i64 0
  %i.cb = insertelement <2 x double> %i.ca, double %i.bz, i64 1 ; 2 uses
  %i.cc = fadd <2 x double> %i.aw, %i.cb          ; 3 uses
  %i.cd = fsub <2 x double> %i.cc, %i.aw
  %i.ce = fsub <2 x double> %i.cb, %i.cd
  %i.cf = fadd <2 x double> %i.by, %i.ce          ; 2 uses
  %i.cg = fadd <2 x double> %i.cc, %i.cf          ; 4 uses
  %i.ch = fsub <2 x double> %i.cg, %i.cc
  %i.ci = fsub <2 x double> %i.cf, %i.ch
  %i.cj = fmul <2 x double> %i.t, %i.cg           ; 3 uses
  %i.ck = fneg <2 x double> %i.cj
  %i.cl = tail call <2 x double> @llvm.fma.v2f64(<2 x double> %i.t, <2 x double> %i.cg, <2 x double> %i.ck)
  %i.cm = tail call <2 x double> @llvm.fma.v2f64(<2 x double> %i.t, <2 x double> %i.ci, <2 x double> %i.cl)
  %i.cn = tail call <2 x double> @llvm.fma.v2f64(<2 x double> %i.v, <2 x double> %i.cg, <2 x double> %i.cm) ; 2 uses
  %i.co = fadd <2 x double> %i.cj, %i.cn          ; 3 uses
  %i.cp = extractelement <2 x double> %i.co, i64 0 ; 2 uses
  %i.cq = fadd double %i.ae, %i.cp                ; 4 uses
  %i.cr = fsub double %i.cq, %i.ae                ; 2 uses
  %i.cs = fsub double %i.cq, %i.cr
  %i.ct = fsub double %i.ae, %i.cs
  %i.cu = fsub double %i.cp, %i.cr
  %i.cv = fadd double %i.cu, %i.ct
  %i.cw = fsub <2 x double> %i.co, %i.cj
  %i.cx = fsub <2 x double> %i.cn, %i.cw          ; 3 uses
  %i.cy = insertelement <2 x double> %i.cx, double %i.c, i64 1 ; 2 uses
  %i.cz = insertelement <2 x double> %i.cx, double %i.ag, i64 0
  %i.da = fadd <2 x double> %i.cy, %i.cz          ; 4 uses
  %i.db = extractelement <2 x double> %i.da, i64 0
  %i.dc = fadd double %i.db, %i.cv                ; 2 uses
  %i.dd = fadd double %i.cq, %i.dc                ; 3 uses
  %i.de = fsub double %i.dd, %i.cq
  %i.df = fsub double %i.dc, %i.de
  %i.dg = insertelement <2 x double> %i.cy, double %i.ag, i64 0 ; 2 uses
  %i.dh = fsub <2 x double> %i.da, %i.dg          ; 2 uses
  %i.di = fsub <2 x double> %i.da, %i.dh
  %i.dj = fsub <2 x double> %i.dg, %i.di
  %i.dk = fsub <2 x double> %i.cx, %i.dh
  %i.dl = fadd <2 x double> %i.dk, %i.dj          ; 2 uses
  %i.dm = extractelement <2 x double> %i.dl, i64 0
  %i.dn = fadd double %i.dm, %i.df                ; 2 uses
  %i.do = fadd double %i.dd, %i.dn                ; 2 uses
  %i.dp = fsub double %i.do, %i.dd
  %i.dq = fsub double %i.dn, %i.dp
  %i.dr = insertelement <2 x double> poison, double %i.dq, i64 0
  %i.ds = insertelement <2 x double> %i.dr, double %i.do, i64 1
  %i.dt = extractelement <2 x double> %i.co, i64 1 ; 2 uses
  %i.du = fadd double %i.a, %i.dt                 ; 4 uses
  %i.dv = fsub double %i.du, %i.a                 ; 2 uses
  %i.dw = fsub double %i.du, %i.dv
  %i.dx = fsub double %i.a, %i.dw
  %i.dy = fsub double %i.dt, %i.dv
  %i.dz = fadd double %i.dy, %i.dx
  %i.ea = extractelement <2 x double> %i.da, i64 1
  %i.eb = fadd double %i.ea, %i.dz                ; 2 uses
  %i.ec = fadd double %i.du, %i.eb                ; 3 uses
  %i.ed = fsub double %i.ec, %i.du
  %i.ee = fsub double %i.eb, %i.ed
  %i.ef = extractelement <2 x double> %i.dl, i64 1
  %i.eg = fadd double %i.ef, %i.ee                ; 2 uses
  %i.eh = fadd double %i.ec, %i.eg                ; 2 uses
  %i.ei = fsub double %i.eh, %i.ec
  %i.ej = fsub double %i.eg, %i.ei
  %i.ek = insertelement <2 x double> poison, double %i.ej, i64 0
  %i.el = insertelement <2 x double> %i.ek, double %i.eh, i64 1
  %i.em = shufflevector <2 x double> %i.ds, <2 x double> %i.el, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  ret <4 x double> %i.em
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fma.f64(double, double, double) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v4f64(double, <4 x double>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fma.v2f64(<2 x double>, <2 x double>, <2 x double>) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!opencl.ocl.version = !{!0}
!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 2, i32 0}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260908082138+de2a0dd540f7-1~exp1~20260908202305.1836)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
end_hunk_0
