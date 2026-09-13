Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocm-device-libs/original/acospiD?download=true
inline.NumInlined: 22
inline.NumDeleted: 12
begin_hunk_0
target datalayout = "e-m:e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-p7:160:256:256:32-p8:128:128:128:48-p9:192:256:256:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7:8:9-p10:32:32-p11:32:32-p12:32:32-p13:32:32-p14:32:32-p15:32:32"
target triple = "amdgpu-amd-amdhsa"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable
define hidden double @__ocml_acospi_f64(double noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call double @llvm.fabs.f64(double %0) ; 2 uses
  %i.b = fcmp oge double %i.a, 5.000000e-01       ; 2 uses
  %i.c = tail call double @llvm.fma.f64(double %i.a, double -5.000000e-01, double 5.000000e-01) ; 8 uses
  %i.d = fmul double %0, %0
  %i.e = select i1 %i.b, double %i.c, double %i.d ; 12 uses
  %i.f = tail call double @llvm.fma.f64(double %i.e, double f0x3F8547A51D41FB0B, double f0xBF76A3FB0718A8F7)
  %i.g = tail call double @llvm.fma.f64(double %i.e, double %i.f, double f0x3F7A7B91F7177EE8)
  %i.h = tail call double @llvm.fma.f64(double %i.e, double %i.g, double f0x3F6035D3435B8AD8)
  %i.i = tail call double @llvm.fma.f64(double %i.e, double %i.h, double f0x3F6FF0549B4E0449)
  %i.j = tail call double @llvm.fma.f64(double %i.e, double %i.i, double f0x3F721604AE288F96)
  %i.k = tail call double @llvm.fma.f64(double %i.e, double %i.j, double f0x3F76A2B36F9AEC49)
  %i.l = tail call double @llvm.fma.f64(double %i.e, double %i.k, double f0x3F7D2B076C914F04)
  %i.m = tail call double @llvm.fma.f64(double %i.e, double %i.l, double f0x3F83CE53861F8F1F)
  %i.n = tail call double @llvm.fma.f64(double %i.e, double %i.m, double f0x3F8D1A4529A30A69)
  %i.o = tail call double @llvm.fma.f64(double %i.e, double %i.n, double f0x3F98723A1D61D2E9)
  %i.p = tail call double @llvm.fma.f64(double %i.e, double %i.o, double f0x3FAB2995E7B7AF0F)
  %i.q = fmul double %i.e, %i.p                   ; 5 uses
  %i.r = fmul double %0, f0x3FD45F306DC9C883
  %i.s = tail call double @llvm.fma.f64(double %0, double %i.q, double %i.r)
  %i.t = fsub double 5.000000e-01, %i.s
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.u = tail call double @llvm.amdgcn.rsq.f64(double %i.c) ; 2 uses
  %i.v = fmul double %i.c, %i.u                   ; 3 uses
  %i.w = fmul double %i.u, 5.000000e-01           ; 3 uses
  %i.x = fneg double %i.w
  %i.y = tail call double @llvm.fma.f64(double %i.x, double %i.v, double 5.000000e-01) ; 2 uses
  %i.z = tail call double @llvm.fma.f64(double %i.w, double %i.y, double %i.w)
  %i.aa = tail call double @llvm.fma.f64(double %i.v, double %i.y, double %i.v) ; 3 uses
  %i.ab = fneg double %i.aa
  %i.ac = tail call double @llvm.fma.f64(double %i.ab, double %i.aa, double %i.c)
  %i.ad = tail call double @llvm.fma.f64(double %i.ac, double %i.z, double %i.aa)
  %i.ae = fcmp oeq double %i.c, 0.000000e+00      ; 2 uses
  %i.af = select i1 %i.ae, double %i.c, double %i.ad ; 7 uses
  %i.ag = fmul double %i.af, %i.af                ; 3 uses
  %i.ah = fneg double %i.ag
  %i.ai = tail call double @llvm.fma.f64(double %i.af, double %i.af, double %i.ah)
  %i.aj = fsub double %i.c, %i.ag                 ; 2 uses
  %i.ak = fsub double %i.c, %i.aj
  %i.al = fsub double %i.ak, %i.ag
  %i.am = fsub double %i.al, %i.ai
  %i.an = fadd double %i.aj, %i.am                ; 2 uses
  %i.ao = fmul double %i.af, 2.000000e+00         ; 2 uses
  %i.ap = tail call double @llvm.amdgcn.rcp.f64(double %i.ao) ; 3 uses
  %i.aq = fneg double %i.ao                       ; 3 uses
  %i.ar = tail call double @llvm.fma.f64(double %i.aq, double %i.ap, double 1.000000e+00)
  %i.as = tail call double @llvm.fma.f64(double %i.ar, double %i.ap, double %i.ap) ; 3 uses
  %i.at = tail call double @llvm.fma.f64(double %i.aq, double %i.as, double 1.000000e+00)
  %i.au = tail call double @llvm.fma.f64(double %i.at, double %i.as, double %i.as) ; 2 uses
  %i.av = fmul double %i.an, %i.au                ; 2 uses
  %i.aw = tail call double @llvm.fma.f64(double %i.aq, double %i.av, double %i.an)
  %i.ax = tail call double @llvm.fma.f64(double %i.aw, double %i.au, double %i.av)
  %i.ay = select i1 %i.ae, double 0.000000e+00, double %i.ax ; 2 uses
  %i.az = fadd double %i.af, %i.ay                ; 2 uses
  %i.ba = fsub double %i.az, %i.af
  %i.bb = fsub double %i.ay, %i.ba
  %i.bc = fmul double %i.az, 2.000000e+00         ; 5 uses
  %i.bd = fmul double %i.bb, 2.000000e+00         ; 2 uses
  %i.be = fmul double %i.bc, f0x3FD45F306DC9C883  ; 4 uses
  %i.bf = tail call double @llvm.fma.f64(double %i.bc, double %i.q, double %i.be)
  %i.bg = fsub double 1.000000e+00, %i.bf
  %i.bh = fneg double %i.be
  %i.bi = tail call double @llvm.fma.f64(double %i.bc, double f0x3FD45F306DC9C883, double %i.bh)
  %i.bj = tail call double @llvm.fma.f64(double %i.bd, double f0x3FD45F306DC9C883, double %i.bi) ; 2 uses
  %i.bk = fadd double %i.be, %i.bj                ; 3 uses
  %i.bl = fsub double %i.bk, %i.be
  %i.bm = fsub double %i.bj, %i.bl
  %i.bn = fmul double %i.q, %i.bc                 ; 3 uses
  %i.bo = fneg double %i.bn
  %i.bp = tail call double @llvm.fma.f64(double %i.bc, double %i.q, double %i.bo)
  %i.bq = tail call double @llvm.fma.f64(double %i.bd, double %i.q, double %i.bp) ; 2 uses
  %i.br = fadd double %i.bn, %i.bq                ; 3 uses
  %i.bs = fsub double %i.br, %i.bn
  %i.bt = fsub double %i.bq, %i.bs
  %i.bu = fadd double %i.bk, %i.br                ; 2 uses
  %i.bv = fsub double %i.bu, %i.bk
  %i.bw = fsub double %i.br, %i.bv
  %i.bx = fadd double %i.bm, %i.bt
  %i.by = fadd double %i.bx, %i.bw
  %i.bz = fadd double %i.bu, %i.by
  %i.ca = fcmp olt double %0, 0.000000e+00
  %i.cb = select i1 %i.ca, double %i.bg, double %i.bz
  %i.cc = fcmp oeq double %0, -1.000000e+00
  %i.cd = select i1 %i.cc, double 1.000000e+00, double %i.cb
  %i.ce = fcmp oeq double %0, 1.000000e+00
  %i.cf = select i1 %i.ce, double 0.000000e+00, double %i.cd
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi double [ %i.cf, %bb.b ], [ %i.t, %bb.a ]
  ret double %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fma.f64(double, double, double) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.amdgcn.rsq.f64(double) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.amdgcn.rcp.f64(double) #1

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
