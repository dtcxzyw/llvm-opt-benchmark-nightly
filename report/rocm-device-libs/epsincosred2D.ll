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
  %i.i = fadd double %i.d, %i.h                   ; 12 uses
  %i.j = fsub double %i.i, %i.d
  %i.k = fsub double %i.h, %i.j                   ; 4 uses
  %i.l = fmul double %i.a, %i.i                   ; 2 uses
  %i.m = fneg double %i.l
  %i.n = tail call double @llvm.fma.f64(double %i.i, double %i.a, double %i.m)
  %2 = fmul double %i.i, %i.i                     ; 2 uses
  %3 = fneg double %2
  %4 = insertelement <2 x double> poison, double %i.i, i64 0 ; 3 uses
  %5 = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> zeroinitializer ; 6 uses
  %6 = insertelement <2 x double> %4, double %i.c, i64 1 ; 2 uses
  %7 = insertelement <2 x double> poison, double %3, i64 0
  %8 = insertelement <2 x double> %7, double %i.n, i64 1
  %9 = tail call <2 x double> @llvm.fma.v2f64(<2 x double> %5, <2 x double> %6, <2 x double> %8)
  %i.o = fmul double %i.k, 2.000000e+00
  %10 = insertelement <2 x double> %4, double %i.a, i64 1
  %11 = insertelement <2 x double> poison, double %i.o, i64 0
  %12 = insertelement <2 x double> %11, double %i.k, i64 1
  %13 = tail call <2 x double> @llvm.fma.v2f64(<2 x double> %10, <2 x double> %12, <2 x double> %9) ; 2 uses
  %14 = insertelement <2 x double> poison, double %2, i64 0
  %15 = insertelement <2 x double> %14, double %i.l, i64 1 ; 2 uses
  %16 = fadd <2 x double> %15, %13                ; 4 uses
  %17 = fsub <2 x double> %16, %15
  %18 = fsub <2 x double> %13, %17
  %i.p = tail call double @llvm.fma.f64(double %i.i, double f0x3D2AE7F3E733B81F, double f0xBDA93974A8C07C9D)
  %i.q = tail call double @llvm.fma.f64(double %i.i, double %i.p, double f0x3E21EED8EFF8D898)
  %i.r = fmul double %i.i, 5.000000e-01           ; 2 uses
  %i.s = fmul double %i.k, 5.000000e-01
  %i.t = fsub double 1.000000e+00, %i.r           ; 3 uses
  %i.u = fsub double 1.000000e+00, %i.t
  %i.v = fsub double %i.u, %i.r
  %i.w = fsub double %i.v, %i.s                   ; 2 uses
  %i.x = fadd double %i.t, %i.w                   ; 4 uses
  %i.y = fsub double %i.x, %i.t
  %i.z = fsub double %i.w, %i.y                   ; 2 uses
  %i.aa = tail call double @llvm.fma.f64(double %i.i, double f0x3CE952C77030AD4A, double f0xBD6AE7F3E733B81F)
  %i.ab = tail call double @llvm.fma.f64(double %i.i, double %i.aa, double f0x3DE6124613A86D09)
  %19 = tail call double @llvm.fma.f64(double %i.i, double %i.ab, double f0xBE5AE64567F544E4)
  %20 = insertelement <2 x double> poison, double %i.q, i64 0
  %21 = insertelement <2 x double> %20, double %19, i64 1
  %22 = tail call <2 x double> @llvm.fma.v2f64(<2 x double> %5, <2 x double> %21, <2 x double> <double f0xBE927E4FB7789F5C, double f0x3EC71DE3A556C734>)
  %23 = tail call <2 x double> @llvm.fma.v2f64(<2 x double> %5, <2 x double> %22, <2 x double> <double f0x3EFA01A01A01A01A, double f0xBF2A01A01A01A01A>)
  %24 = tail call <2 x double> @llvm.fma.v2f64(<2 x double> %5, <2 x double> %23, <2 x double> <double f0xBF56C16C16C16C17, double f0x3F81111111111111>) ; 3 uses
  %25 = fmul <2 x double> %5, %24                 ; 3 uses
  %26 = fneg <2 x double> %25
  %27 = tail call <2 x double> @llvm.fma.v2f64(<2 x double> %5, <2 x double> %24, <2 x double> %26)
  %28 = insertelement <2 x double> poison, double %i.k, i64 0
  %29 = shufflevector <2 x double> %28, <2 x double> poison, <2 x i32> zeroinitializer
  %30 = tail call <2 x double> @llvm.fma.v2f64(<2 x double> %29, <2 x double> %24, <2 x double> %27) ; 2 uses
  %31 = fadd <2 x double> %25, %30                ; 3 uses
  %32 = fadd <2 x double> %31, <double f0x3FA5555555555555, double f0xBFC5555555555555> ; 5 uses
  %33 = extractelement <2 x double> %32, i64 0
  %i.ac = fadd double %33, f0xBFA5555555555555    ; 2 uses
  %34 = insertelement <4 x double> <double f0x3FA5555555555555, double poison, double poison, double poison>, double %i.ac, i64 1
  %35 = fsub <2 x double> %31, %25
  %36 = fsub <2 x double> %30, %35                ; 2 uses
  %37 = shufflevector <2 x double> %31, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %38 = shufflevector <4 x double> %34, <4 x double> %37, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %39 = shufflevector <2 x double> %36, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %40 = shufflevector <4 x double> %38, <4 x double> %39, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %41 = shufflevector <2 x double> %32, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %42 = shufflevector <4 x double> <double 0.000000e+00, double poison, double poison, double f0xBC45555555555555>, <4 x double> %41, <4 x i32> <i32 0, i32 4, i32 poison, i32 3>
  %43 = insertelement <4 x double> %42, double %i.ac, i64 2
  %44 = fsub <4 x double> %40, %43                ; 2 uses
  %45 = tail call double @llvm.vector.reduce.fadd.v4f64(double -0.000000e+00, <4 x double> %44)
  %46 = extractelement <2 x double> %32, i64 1
  %i.ad = fadd double %46, f0x3FC5555555555555    ; 2 uses
  %47 = insertelement <4 x double> <double f0xBFC5555555555555, double poison, double poison, double poison>, double %i.ad, i64 1
  %48 = shufflevector <4 x double> %47, <4 x double> %37, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %49 = shufflevector <4 x double> %48, <4 x double> %39, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %50 = shufflevector <4 x double> <double 0.000000e+00, double poison, double poison, double f0x3C65555555555555>, <4 x double> %41, <4 x i32> <i32 0, i32 5, i32 poison, i32 3>
  %51 = insertelement <4 x double> %50, double %i.ad, i64 2
  %52 = fsub <4 x double> %49, %51                ; 2 uses
  %53 = shufflevector <4 x double> %44, <4 x double> %52, <2 x i32> <i32 3, i32 7> ; 2 uses
  %54 = fadd <2 x double> %53, <double f0xBC45555555555555, double f0x3C65555555555555> ; 2 uses
  %55 = fsub <2 x double> %54, %53
  %56 = fadd <2 x double> %55, <double f0x3C45555555555555, double f0xBC65555555555555>
  %57 = fsub <2 x double> %36, %54
  %58 = fadd <2 x double> %57, %56
  %59 = tail call double @llvm.vector.reduce.fadd.v4f64(double -0.000000e+00, <4 x double> %52)
  %i.ae = insertelement <2 x double> poison, double %45, i64 0
  %i.af = insertelement <2 x double> %i.ae, double %59, i64 1 ; 2 uses
  %60 = fadd <2 x double> %32, %i.af              ; 3 uses
  %61 = fsub <2 x double> %60, %32
  %62 = fsub <2 x double> %i.af, %61
  %63 = fadd <2 x double> %58, %62                ; 2 uses
  %64 = fadd <2 x double> %60, %63                ; 4 uses
  %65 = fsub <2 x double> %64, %60
  %66 = fsub <2 x double> %63, %65
  %67 = fmul <2 x double> %16, %64                ; 3 uses
  %68 = fneg <2 x double> %67
  %69 = tail call <2 x double> @llvm.fma.v2f64(<2 x double> %16, <2 x double> %64, <2 x double> %68)
  %70 = tail call <2 x double> @llvm.fma.v2f64(<2 x double> %16, <2 x double> %66, <2 x double> %69)
  %71 = tail call <2 x double> @llvm.fma.v2f64(<2 x double> %18, <2 x double> %64, <2 x double> %70) ; 2 uses
  %72 = fadd <2 x double> %67, %71                ; 3 uses
  %73 = extractelement <2 x double> %72, i64 0    ; 2 uses
  %i.ag = fadd double %i.x, %73                   ; 4 uses
  %74 = fsub double %i.ag, %i.x                   ; 2 uses
  %75 = fsub double %i.ag, %74
  %76 = fsub double %i.x, %75
  %i.ah = fsub double %73, %74
  %i.ai = fadd double %i.ah, %76
  %77 = fsub <2 x double> %72, %67
  %78 = fsub <2 x double> %71, %77                ; 3 uses
  %79 = insertelement <2 x double> %78, double %i.c, i64 1
  %80 = insertelement <2 x double> %78, double %i.z, i64 0
  %81 = fadd <2 x double> %79, %80                ; 4 uses
  %82 = extractelement <2 x double> %81, i64 0
  %i.aj = fadd double %82, %i.ai                  ; 2 uses
  %i.ak = fadd double %i.ag, %i.aj                ; 3 uses
  %i.al = fsub double %i.ak, %i.ag
  %i.am = fsub double %i.aj, %i.al
  %83 = insertelement <2 x double> %6, double %i.z, i64 0 ; 2 uses
  %84 = fsub <2 x double> %81, %83                ; 2 uses
  %85 = fsub <2 x double> %81, %84
  %86 = fsub <2 x double> %83, %85
  %87 = fsub <2 x double> %78, %84
  %88 = fadd <2 x double> %87, %86                ; 2 uses
  %89 = extractelement <2 x double> %88, i64 0
  %90 = fadd double %89, %i.am                    ; 2 uses
  %i.an = fadd double %i.ak, %90                  ; 2 uses
  %i.ao = fsub double %i.an, %i.ak
  %i.ap = fsub double %90, %i.ao
  %91 = insertelement <2 x double> poison, double %i.ap, i64 0
  %92 = insertelement <2 x double> %91, double %i.an, i64 1
  %93 = extractelement <2 x double> %72, i64 1    ; 2 uses
  %i.aq = fadd double %i.a, %93                   ; 4 uses
  %i.ar = fsub double %i.aq, %i.a                 ; 2 uses
  %i.as = fsub double %i.aq, %i.ar
  %i.at = fsub double %i.a, %i.as
  %i.au = fsub double %93, %i.ar
  %i.av = fadd double %i.au, %i.at
  %94 = extractelement <2 x double> %81, i64 1
  %i.aw = fadd double %94, %i.av                  ; 2 uses
  %i.ax = fadd double %i.aq, %i.aw                ; 3 uses
  %i.ay = fsub double %i.ax, %i.aq
  %i.az = fsub double %i.aw, %i.ay
  %95 = extractelement <2 x double> %88, i64 1
  %i.ba = fadd double %95, %i.az                  ; 2 uses
  %i.bb = fadd double %i.ax, %i.ba                ; 2 uses
  %i.bc = fsub double %i.bb, %i.ax
  %i.bd = fsub double %i.ba, %i.bc
  %i.be = insertelement <2 x double> poison, double %i.bd, i64 0
  %i.bf = insertelement <2 x double> %i.be, double %i.bb, i64 1
  %i.bg = shufflevector <2 x double> %92, <2 x double> %i.bf, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  ret <4 x double> %i.bg
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
