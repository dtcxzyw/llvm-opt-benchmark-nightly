Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocm-device-libs/original/trigredlargeD?download=true
begin_hunk_0
target datalayout = "e-m:e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-p7:160:256:256:32-p8:128:128:128:48-p9:192:256:256:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7:8:9-p10:32:32-p11:32:32-p12:32:32-p13:32:32-p14:32:32-p15:32:32"
target triple = "amdgpu-amd-amdhsa"

%struct.redret = type { double, double, i32 }

@__oclc_finite_only_opt = external local_unnamed_addr addrspace(4) constant i8, align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable
define hidden %struct.redret @__ocmlpriv_trigredlarge_f64(double noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call double @llvm.amdgcn.trig.preop.f64(double %0, i32 0) ; 2 uses
  %i.b = tail call double @llvm.amdgcn.trig.preop.f64(double %0, i32 1) ; 2 uses
  %i.c = fcmp oge double %0, f0x7B00000000000000
  %i.d = fmul double %0, f0x37F0000000000000
  %i.e = select i1 %i.c, double %i.d, double %0   ; 7 uses
  %i.f = fmul double %i.b, %i.e                   ; 4 uses
  %i.g = fmul double %i.a, %i.e                   ; 3 uses
  %i.h = fneg double %i.g
  %i.i = tail call double @llvm.fma.f64(double %i.a, double %i.e, double %i.h) ; 2 uses
  %i.j = fadd double %i.f, %i.i                   ; 4 uses
  %i.k = fadd double %i.g, %i.j                   ; 2 uses
  %i.l = fmul double %i.k, 2.500000e-01           ; 2 uses
  %i.m = tail call double @llvm.floor.f64(double %i.l)
  %i.n = fsub double %i.l, %i.m                   ; 2 uses
  %i.o = fcmp oge double %i.n, f0x3FEFFFFFFFFFFFFF
  %i.p = select i1 %i.o, double f0x3FEFFFFFFFFFFFFF, double %i.n
  %i.q = load i8, ptr addrspace(4) @__oclc_finite_only_opt, align 1, !tbaa !10, !range !11, !noundef !12
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = tail call double @llvm.fabs.f64(double %i.e)
  %i.t = fcmp une double %i.s, +inf
  %i.u = or i1 %i.t, %i.r
  %i.v = fsub double %i.j, %i.f                   ; 2 uses
  %i.w = fsub double %i.i, %i.v
  %i.x = fsub double %i.j, %i.v
  %i.y = fsub double %i.f, %i.x
  %i.z = fadd double %i.w, %i.y                   ; 2 uses
  %i.aa = fneg double %i.f
  %i.ab = tail call double @llvm.fma.f64(double %i.b, double %i.e, double %i.aa) ; 2 uses
  %i.ac = tail call double @llvm.amdgcn.trig.preop.f64(double %0, i32 2) ; 2 uses
  %i.ad = fmul double %i.ac, %i.e                 ; 4 uses
  %i.ae = fadd double %i.ad, %i.ab                ; 5 uses
  %i.af = fadd double %i.ae, %i.z                 ; 4 uses
  %i.ag = fsub double %i.k, %i.g
  %i.ah = fsub double %i.ae, %i.ad                ; 2 uses
  %1 = fsub double %i.ab, %i.ah
  %i.ai = fsub double %i.ae, %i.ah
  %i.aj = fsub double %i.ad, %i.ai
  %2 = fadd double %1, %i.aj
  %3 = fneg double %i.ad
  %4 = fmul double %i.p, 4.000000e+00
  %5 = select i1 %i.u, double %4, double 0.000000e+00 ; 2 uses
  %i.ak = fsub double %i.j, %i.ag                 ; 2 uses
  %i.al = fadd double %i.ak, %i.af                ; 5 uses
  %i.am = fsub double %i.af, %i.ae                ; 2 uses
  %i.an = fsub double %i.z, %i.am
  %6 = tail call double @llvm.fma.f64(double %i.ac, double %i.e, double %3)
  %7 = fadd double %i.al, %5
  %8 = fcmp olt double %7, 0.000000e+00
  %9 = select i1 %8, double 4.000000e+00, double 0.000000e+00
  %i.ao = fadd double %5, %9                      ; 2 uses
  %i.ap = fadd double %i.al, %i.ao
  %10 = fptosi double %i.ap to i32                ; 2 uses
  %11 = sitofp i32 %10 to double
  %12 = fsub double %i.ao, %11                    ; 2 uses
  %i.aq = fadd double %i.al, %12                  ; 3 uses
  %13 = insertelement <4 x double> poison, double %i.af, i64 0
  %14 = insertelement <4 x double> %13, double %i.al, i64 1
  %15 = insertelement <4 x double> %14, double %i.aq, i64 2
  %16 = insertelement <4 x double> poison, double %i.am, i64 0
  %17 = insertelement <4 x double> %16, double %i.ak, i64 1
  %18 = insertelement <4 x double> %17, double %12, i64 2
  %19 = fsub <4 x double> %15, %18
  %20 = insertelement <4 x double> poison, double %i.ae, i64 0
  %21 = insertelement <4 x double> %20, double %i.af, i64 1
  %22 = insertelement <4 x double> %21, double %i.al, i64 2
  %23 = fsub <4 x double> %22, %19                ; 3 uses
  %24 = extractelement <4 x double> %23, i64 0
  %25 = fadd double %i.an, %24
  %26 = fadd double %2, %25
  %i.ar = fadd double %6, %26
  %27 = extractelement <4 x double> %23, i64 1
  %28 = fadd double %27, %i.ar
  %29 = extractelement <4 x double> %23, i64 2
  %i.as = fadd double %28, %29                    ; 2 uses
  %i.at = fcmp oge double %i.aq, 5.000000e-01     ; 2 uses
  %i.au = zext i1 %i.at to i32
  %i.av = add nsw i32 %i.au, %10
  %i.aw = select i1 %i.at, double 1.000000e+00, double 0.000000e+00
  %i.ax = fsub double %i.aq, %i.aw                ; 2 uses
  %i.ay = fadd double %i.ax, %i.as                ; 4 uses
  %i.az = fsub double %i.ay, %i.ax
  %i.ba = fsub double %i.as, %i.az
  %i.bb = fmul double %i.ay, f0x3FF921FB54442D18  ; 3 uses
  %i.bc = fneg double %i.bb
  %i.bd = tail call double @llvm.fma.f64(double %i.ay, double f0x3FF921FB54442D18, double %i.bc)
  %i.be = tail call double @llvm.fma.f64(double %i.ay, double f0x3C91A62633145C07, double %i.bd)
  %i.bf = tail call double @llvm.fma.f64(double %i.ba, double f0x3FF921FB54442D18, double %i.be) ; 2 uses
  %i.bg = fadd double %i.bb, %i.bf                ; 2 uses
  %i.bh = fsub double %i.bg, %i.bb
  %i.bi = fsub double %i.bf, %i.bh
  %i.bj = and i32 %i.av, 3
  %.fca.0.insert = insertvalue %struct.redret poison, double %i.bi, 0
  %.fca.1.insert = insertvalue %struct.redret %.fca.0.insert, double %i.bg, 1
  %.fca.2.insert = insertvalue %struct.redret %.fca.1.insert, i32 %i.bj, 2
  ret %struct.redret %.fca.2.insert
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.amdgcn.trig.preop.f64(double, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fma.f64(double, double, double) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

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
!9 = !{!"bool", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{i8 0, i8 2}
!12 = !{}
end_hunk_0
