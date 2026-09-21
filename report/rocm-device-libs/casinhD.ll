Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocm-device-libs/original/casinhD?download=true
inline.NumInlined: 30
inline.NumDeleted: 11
begin_hunk_0
target datalayout = "e-m:e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-p7:160:256:256:32-p8:128:128:128:48-p9:192:256:256:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7:8:9-p10:32:32-p11:32:32-p12:32:32-p13:32:32-p14:32:32-p15:32:32"
target triple = "amdgpu-amd-amdhsa"

@__oclc_finite_only_opt = external local_unnamed_addr addrspace(4) constant i8, align 1

; Function Attrs: convergent mustprogress nofree norecurse nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable
define hidden <2 x double> @__ocml_casinh_f64(<2 x double> noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = extractelement <2 x double> %0, i64 1    ; 3 uses
  %i.b = extractelement <2 x double> %0, i64 0    ; 2 uses
  %i.c = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %0) ; 13 uses
  %1 = fcmp oge <2 x double> %i.c, splat (double f0x4350000000000000)
  %2 = bitcast <2 x i1> %1 to i2
  %.not = icmp eq i2 %2, 0
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %3 = fcmp oge <2 x double> %i.c, <double f0x3CA0000000000000, double 1.000000e+00>
  %4 = bitcast <2 x i1> %3 to i2
  %.not99 = icmp eq i2 %4, 0
  br i1 %.not99, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %5 = extractelement <2 x double> %i.c, i64 1    ; 3 uses
  %i.d = fsub double 1.000000e+00, %5
  %i.e = fmul double %i.d, f0x3E50000000000000
  %6 = extractelement <2 x double> %i.c, i64 0    ; 2 uses
  %i.f = fcmp ogt double %6, %i.e
  br i1 %i.f, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %7 = extractelement <2 x double> %i.c, i64 0    ; 8 uses
  %8 = extractelement <2 x double> %i.c, i64 1    ; 6 uses
  %i.g = fadd double %7, %8                       ; 5 uses
  %i.h = fsub double %i.g, %7                     ; 2 uses
  %i.i = fsub double %i.h, %i.g
  %i.j = fadd double %7, %i.i
  %i.k = fsub double %8, %i.h
  %i.l = fadd double %i.k, %i.j
  %i.m = fsub double %7, %8                       ; 5 uses
  %i.n = fsub double %i.m, %7                     ; 2 uses
  %i.o = fsub double %i.n, %i.m
  %i.p = fadd double %7, %i.o
  %i.q = fadd double %8, %i.n
  %i.r = fsub double %i.p, %i.q
  %i.s = fmul double %i.g, %i.m                   ; 3 uses
  %i.t = fneg double %i.s
  %i.u = tail call double @llvm.fma.f64(double %i.g, double %i.m, double %i.t)
  %i.v = tail call double @llvm.fma.f64(double %i.g, double %i.r, double %i.u)
  %i.w = tail call double @llvm.fma.f64(double %i.l, double %i.m, double %i.v) ; 2 uses
  %i.x = fadd double %i.s, %i.w                   ; 4 uses
  %i.y = fsub double %i.x, %i.s
  %i.z = fsub double %i.w, %i.y
  %i.aa = fadd double %i.x, 1.000000e+00          ; 4 uses
  %i.ab = fsub double %i.aa, %i.x                 ; 2 uses
  %i.ac = fsub double %i.aa, %i.ab
  %i.ad = fsub double %i.x, %i.ac
  %i.ae = fsub double 1.000000e+00, %i.ab
  %i.af = fadd double %i.ae, %i.ad
  %i.ag = fadd double %i.z, %i.af                 ; 2 uses
  %i.ah = fadd double %i.aa, %i.ag                ; 2 uses
  %i.ai = fsub double %i.ah, %i.aa
  %i.aj = fsub double %i.ag, %i.ai
  %i.ak = insertelement <2 x double> poison, double %i.aj, i64 0
  %i.al = insertelement <2 x double> %i.ak, double %i.ah, i64 1
  %i.am = fmul double %8, %7                      ; 2 uses
  %i.an = fneg double %i.am
  %i.ao = tail call double @llvm.fma.f64(double %8, double %7, double %i.an)
  %i.ap = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.aq = insertelement <2 x double> %i.ap, double %i.am, i64 1
  %i.ar = fmul <2 x double> %i.aq, splat (double 2.000000e+00)
  %i.as = shufflevector <2 x double> %i.al, <2 x double> %i.ar, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.at = tail call <4 x double> @__ocmlpriv_epcsqrtep_f64(<4 x double> noundef %i.as) #3 ; 2 uses
  %i.au = shufflevector <4 x double> %i.at, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.av = fadd <2 x double> %i.c, %i.au           ; 4 uses
  %i.aw = fsub <2 x double> %i.av, %i.au          ; 2 uses
  %i.ax = fsub <2 x double> %i.av, %i.aw
  %i.ay = fsub <2 x double> %i.au, %i.ax
  %i.az = fsub <2 x double> %i.c, %i.aw
  %i.ba = fadd <2 x double> %i.az, %i.ay
  %i.bb = shufflevector <4 x double> %i.at, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %i.bc = fadd <2 x double> %i.bb, %i.ba          ; 2 uses
  %i.bd = fadd <2 x double> %i.av, %i.bc          ; 7 uses
  %i.be = fsub <2 x double> %i.bd, %i.av
  %i.bf = fsub <2 x double> %i.bc, %i.be
  %i.bg = fmul <2 x double> %i.bd, %i.bd          ; 4 uses
  %i.bh = fneg <2 x double> %i.bg
  %i.bi = tail call <2 x double> @llvm.fma.v2f64(<2 x double> %i.bd, <2 x double> %i.bd, <2 x double> %i.bh)
  %i.bj = fmul <2 x double> %i.bf, splat (double 2.000000e+00)
  %i.bk = tail call <2 x double> @llvm.fma.v2f64(<2 x double> %i.bd, <2 x double> %i.bj, <2 x double> %i.bi) ; 3 uses
  %i.bl = fadd <2 x double> %i.bg, %i.bk          ; 4 uses
  %i.bm = extractelement <2 x double> %i.bl, i64 0 ; 3 uses
  %foldExtExtBinop = fsub <2 x double> %i.bl, %i.bg
  %foldExtExtBinop93 = fsub <2 x double> %i.bk, %foldExtExtBinop
  %i.bn = extractelement <2 x double> %foldExtExtBinop93, i64 0 ; 3 uses
  %i.bo = extractelement <2 x double> %i.bl, i64 1 ; 2 uses
  %foldExtExtBinop95 = fsub <2 x double> %i.bl, %i.bg
  %foldExtExtBinop97 = fsub <2 x double> %i.bk, %foldExtExtBinop95
  %i.bp = extractelement <2 x double> %foldExtExtBinop97, i64 1 ; 2 uses
  %i.bq = fadd double %i.bm, %i.bo                ; 4 uses
  %i.br = fsub double %i.bq, %i.bm                ; 2 uses
  %i.bs = fsub double %i.bq, %i.br
  %i.bt = fsub double %i.bm, %i.bs
  %i.bu = fsub double %i.bo, %i.br
  %i.bv = fadd double %i.bu, %i.bt
  %i.bw = fadd double %i.bn, %i.bp                ; 3 uses
  %i.bx = fsub double %i.bw, %i.bn                ; 2 uses
  %i.by = fsub double %i.bw, %i.bx
  %i.bz = fsub double %i.bn, %i.by
  %i.ca = fsub double %i.bp, %i.bx
  %i.cb = fadd double %i.ca, %i.bz
  %i.cc = fadd double %i.bw, %i.bv                ; 2 uses
  %i.cd = fadd double %i.bq, %i.cc                ; 3 uses
  %i.ce = fsub double %i.cd, %i.bq
  %i.cf = fsub double %i.cc, %i.ce
  %i.cg = fadd double %i.cb, %i.cf                ; 2 uses
  %i.ch = fadd double %i.cd, %i.cg                ; 2 uses
  %i.ci = fsub double %i.ch, %i.cd
  %i.cj = fsub double %i.cg, %i.ci
  %i.ck = insertelement <2 x double> poison, double %i.cj, i64 0
  %i.cl = insertelement <2 x double> %i.ck, double %i.ch, i64 1
  br label %bb.e

.critedge:                                        ; preds = %bb.a
  %9 = extractelement <2 x double> %i.c, i64 0    ; 2 uses
  %10 = extractelement <2 x double> %i.c, i64 1   ; 2 uses
  %i.cm = tail call nsz double @llvm.maxnum.f64(double %9, double %10)
  %i.cn = tail call { double, i32 } @llvm.frexp.f64.i32(double %i.cm)
  %i.co = extractvalue { double, i32 } %i.cn, 1   ; 2 uses
  %i.cp = sub nsw i32 0, %i.co                    ; 2 uses
  %i.cq = tail call double @llvm.ldexp.f64.i32(double %9, i32 %i.cp) ; 4 uses
  %i.cr = tail call double @llvm.ldexp.f64.i32(double %10, i32 %i.cp) ; 4 uses
  %i.cs = fmul double %i.cq, %i.cq                ; 4 uses
  %i.ct = fneg double %i.cs
  %i.cu = tail call double @llvm.fma.f64(double %i.cq, double %i.cq, double %i.ct) ; 3 uses
  %i.cv = fmul double %i.cr, %i.cr                ; 3 uses
  %i.cw = fneg double %i.cv
  %i.cx = tail call double @llvm.fma.f64(double %i.cr, double %i.cr, double %i.cw) ; 2 uses
  %i.cy = fadd double %i.cs, %i.cv                ; 4 uses
  %i.cz = fsub double %i.cy, %i.cs                ; 2 uses
  %i.da = fsub double %i.cz, %i.cy
  %i.db = fadd double %i.cs, %i.da
  %i.dc = fsub double %i.cv, %i.cz
  %i.dd = fadd double %i.dc, %i.db
  %i.de = fadd double %i.cu, %i.cx                ; 3 uses
  %i.df = fsub double %i.de, %i.cu                ; 2 uses
  %i.dg = fsub double %i.de, %i.df
  %i.dh = fsub double %i.cu, %i.dg
  %i.di = fsub double %i.cx, %i.df
  %i.dj = fadd double %i.di, %i.dh
  %i.dk = fadd double %i.de, %i.dd                ; 2 uses
  %i.dl = fadd double %i.cy, %i.dk                ; 3 uses
  %i.dm = fsub double %i.dl, %i.cy
  %i.dn = fsub double %i.dk, %i.dm
  %i.do = fadd double %i.dj, %i.dn                ; 2 uses
  %i.dp = fadd double %i.dl, %i.do                ; 2 uses
  %i.dq = fsub double %i.dp, %i.dl
  %i.dr = fsub double %i.do, %i.dq
  %i.ds = insertelement <2 x double> poison, double %i.dr, i64 0
  %i.dt = insertelement <2 x double> %i.ds, double %i.dp, i64 1
  %i.du = shl nsw i32 %i.co, 1
  %i.dv = add nsw i32 %i.du, 2
  br label %bb.e

bb.e:                                             ; preds = %.critedge, %bb.d
  %.076.ph = phi i32 [ 0, %bb.d ], [ %i.dv, %.critedge ]
  %.075.ph = phi <2 x double> [ %i.bd, %bb.d ], [ %i.c, %.critedge ]
  %.074.ph = phi <2 x double> [ %i.cl, %bb.d ], [ %i.dt, %.critedge ]
  %i.dw = tail call double @__ocmlpriv_lnep_f64(<2 x double> noundef %.074.ph, i32 noundef %.076.ph) #3
  %i.dx = fmul double %i.dw, 5.000000e-01
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.dy = fneg double %5
  %i.dz = tail call double @llvm.fma.f64(double %i.dy, double %5, double 1.000000e+00)
  %i.ea = tail call double @llvm.sqrt.f64(double %i.dz) ; 2 uses
  %i.eb = fdiv double %6, %i.ea
  %i.ec = insertelement <2 x double> %i.c, double %i.ea, i64 0
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.07587 = phi <2 x double> [ %.075.ph, %bb.e ], [ %i.ec, %bb.f ] ; 2 uses
  %.073 = phi double [ %i.dx, %bb.e ], [ %i.eb, %bb.f ]
  %i.ed = tail call double @llvm.copysign.f64(double %.073, double %i.b) ; 2 uses
  %i.ee = extractelement <2 x double> %.07587, i64 1
  %i.ef = extractelement <2 x double> %.07587, i64 0
  %i.eg = tail call double @__ocml_atan2_f64(double noundef %i.ee, double noundef %i.ef) #3
  %i.eh = tail call double @llvm.copysign.f64(double %i.eg, double %i.a) ; 2 uses
  %i.ei = load i8, ptr addrspace(4) @__oclc_finite_only_opt, align 1, !tbaa !10, !range !11, !noundef !12
  %i.ej = trunc nuw i8 %i.ei to i1
  br i1 %i.ej, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ek = tail call double @llvm.copysign.f64(double +inf, double %i.b)
  %11 = fcmp oeq <2 x double> %i.c, splat (double +inf)
  %12 = bitcast <2 x i1> %11 to i2
  %.not100 = icmp eq i2 %12, 0
  %i.el = select i1 %.not100, double %i.ed, double %i.ek
  %i.em = fcmp oeq double %i.a, 0.000000e+00
  %i.en = select i1 %i.em, double %i.a, double %i.eh
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1 = phi double [ %i.ed, %bb.g ], [ %i.el, %bb.h ]
  %.0 = phi double [ %i.eh, %bb.g ], [ %i.en, %bb.h ]
  %i.eo = insertelement <2 x double> poison, double %.1, i64 0
  %i.ep = insertelement <2 x double> %i.eo, double %.0, i64 1
  ret <2 x double> %i.ep
}

; Function Attrs: convergent mustprogress nofree nounwind willreturn denormal_fpenv(dynamic) memory(none)
declare <4 x double> @__ocmlpriv_epcsqrtep_f64(<4 x double> noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.maxnum.f64(double, double) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { double, i32 } @llvm.frexp.f64.i32(double) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ldexp.f64.i32(double, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fma.f64(double, double, double) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #2

; Function Attrs: convergent mustprogress nofree nounwind willreturn denormal_fpenv(dynamic) memory(none)
declare double @__ocmlpriv_lnep_f64(<2 x double> noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.copysign.f64(double, double) #2

; Function Attrs: convergent mustprogress nofree nounwind willreturn denormal_fpenv(dynamic) memory(none)
declare double @__ocml_atan2_f64(double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fma.v2f64(<2 x double>, <2 x double>, <2 x double>) #2

attributes #0 = { convergent mustprogress nofree norecurse nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #1 = { convergent mustprogress nofree nounwind willreturn denormal_fpenv(dynamic) memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { convergent nounwind willreturn memory(none) }

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
!9 = !{!"bool", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{i8 0, i8 2}
!12 = !{}
end_hunk_0
