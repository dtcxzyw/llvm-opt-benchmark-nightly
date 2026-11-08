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
  %i.c = fsub double %1, %i.b                     ; 5 uses
  %i.d = fmul double %i.a, %i.a                   ; 3 uses
  %i.e = fneg double %i.d
  %i.f = tail call double @llvm.fma.f64(double %i.a, double %i.a, double %i.e)
  %i.g = fmul double %i.c, 2.000000e+00
  %i.h = tail call double @llvm.fma.f64(double %i.a, double %i.g, double %i.f) ; 2 uses
  %i.i = fadd double %i.d, %i.h                   ; 25 uses
  %i.j = fsub double %i.i, %i.d
  %i.k = fsub double %i.h, %i.j                   ; 5 uses
  %i.l = fmul double %i.a, %i.i                   ; 3 uses
  %i.m = fneg double %i.l
  %i.n = tail call double @llvm.fma.f64(double %i.i, double %i.a, double %i.m)
  %2 = tail call double @llvm.fma.f64(double %i.i, double %i.c, double %i.n)
  %3 = tail call double @llvm.fma.f64(double %i.k, double %i.a, double %2) ; 2 uses
  %4 = fadd double %i.l, %3                       ; 4 uses
  %5 = fsub double %4, %i.l
  %6 = fsub double %3, %5
  %7 = fmul double %i.i, %i.i                     ; 3 uses
  %8 = fneg double %7
  %9 = tail call double @llvm.fma.f64(double %i.i, double %i.i, double %8)
  %i.o = fmul double %i.k, 2.000000e+00
  %10 = tail call double @llvm.fma.f64(double %i.i, double %i.o, double %9) ; 2 uses
  %11 = fadd double %7, %10                       ; 4 uses
  %12 = fsub double %11, %7
  %13 = fsub double %10, %12
  %14 = tail call double @llvm.fma.f64(double %i.i, double f0x3D2AE7F3E733B81F, double f0xBDA93974A8C07C9D)
  %15 = tail call double @llvm.fma.f64(double %i.i, double %14, double f0x3E21EED8EFF8D898)
  %16 = tail call double @llvm.fma.f64(double %i.i, double %15, double f0xBE927E4FB7789F5C)
  %i.p = tail call double @llvm.fma.f64(double %i.i, double %16, double f0x3EFA01A01A01A01A)
  %i.q = tail call double @llvm.fma.f64(double %i.i, double %i.p, double f0xBF56C16C16C16C17) ; 3 uses
  %i.r = fmul double %i.i, 5.000000e-01           ; 2 uses
  %i.s = fmul double %i.k, 5.000000e-01
  %i.t = fsub double 1.000000e+00, %i.r           ; 3 uses
  %i.u = fsub double 1.000000e+00, %i.t
  %i.v = fsub double %i.u, %i.r
  %i.w = fsub double %i.v, %i.s                   ; 2 uses
  %i.x = fadd double %i.t, %i.w                   ; 4 uses
  %i.y = fsub double %i.x, %i.t
  %i.z = fsub double %i.w, %i.y                   ; 3 uses
  %17 = fmul double %i.i, %i.q                    ; 3 uses
  %18 = fneg double %17
  %i.aa = tail call double @llvm.fma.f64(double %i.i, double %i.q, double %18)
  %i.ab = tail call double @llvm.fma.f64(double %i.k, double %i.q, double %i.aa) ; 2 uses
  %19 = fadd double %17, %i.ab                    ; 3 uses
  %20 = fsub double %19, %17
  %21 = fsub double %i.ab, %20                    ; 2 uses
  %22 = fadd double %19, f0x3FA5555555555555      ; 4 uses
  %23 = fadd double %22, f0xBFA5555555555555      ; 2 uses
  %24 = insertelement <4 x double> <double f0x3FA5555555555555, double poison, double poison, double poison>, double %23, i64 1
  %25 = insertelement <4 x double> %24, double %19, i64 2
  %26 = insertelement <4 x double> %25, double %21, i64 3
  %27 = insertelement <4 x double> <double 0.000000e+00, double poison, double poison, double f0xBC45555555555555>, double %22, i64 1
  %28 = insertelement <4 x double> %27, double %23, i64 2
  %29 = fsub <4 x double> %26, %28                ; 2 uses
  %30 = extractelement <4 x double> %29, i64 3    ; 2 uses
  %31 = fadd double %30, f0xBC45555555555555      ; 2 uses
  %32 = fsub double %31, %30
  %33 = fadd double %32, f0x3C45555555555555
  %34 = fsub double %21, %31
  %35 = fadd double %34, %33
  %36 = tail call double @llvm.vector.reduce.fadd.v4f64(double -0.000000e+00, <4 x double> %29) ; 2 uses
  %37 = fadd double %22, %36                      ; 3 uses
  %38 = fsub double %37, %22
  %39 = fsub double %36, %38
  %40 = fadd double %35, %39                      ; 2 uses
  %i.ac = fadd double %37, %40                    ; 4 uses
  %41 = fsub double %i.ac, %37
  %42 = fsub double %40, %41
  %43 = fmul double %11, %i.ac                    ; 3 uses
  %44 = fneg double %43
  %45 = tail call double @llvm.fma.f64(double %11, double %i.ac, double %44)
  %46 = tail call double @llvm.fma.f64(double %11, double %42, double %45)
  %47 = tail call double @llvm.fma.f64(double %13, double %i.ac, double %46) ; 2 uses
  %48 = fadd double %43, %47                      ; 3 uses
  %49 = fsub double %48, %43
  %50 = fsub double %47, %49                      ; 2 uses
  %51 = fadd double %i.x, %48                     ; 4 uses
  %52 = fsub double %51, %i.x                     ; 2 uses
  %53 = fsub double %51, %52
  %54 = fsub double %i.x, %53
  %55 = fsub double %48, %52
  %56 = fadd double %55, %54
  %i.ad = fadd double %i.z, %50                   ; 3 uses
  %57 = fsub double %i.ad, %i.z                   ; 2 uses
  %58 = fsub double %i.ad, %57
  %59 = fsub double %i.z, %58
  %60 = fsub double %50, %57
  %61 = fadd double %60, %59
  %62 = fadd double %i.ad, %56                    ; 2 uses
  %63 = fadd double %51, %62                      ; 3 uses
  %64 = fsub double %63, %51
  %65 = fsub double %62, %64
  %66 = fadd double %61, %65                      ; 2 uses
  %67 = fadd double %63, %66                      ; 2 uses
  %68 = fsub double %67, %63
  %69 = fsub double %66, %68
  %i.ae = insertelement <2 x double> poison, double %69, i64 0
  %i.af = insertelement <2 x double> %i.ae, double %67, i64 1
  %70 = tail call double @llvm.fma.f64(double %i.i, double f0x3CE952C77030AD4A, double f0xBD6AE7F3E733B81F)
  %71 = tail call double @llvm.fma.f64(double %i.i, double %70, double f0x3DE6124613A86D09)
  %72 = tail call double @llvm.fma.f64(double %i.i, double %71, double f0xBE5AE64567F544E4)
  %73 = tail call double @llvm.fma.f64(double %i.i, double %72, double f0x3EC71DE3A556C734)
  %74 = tail call double @llvm.fma.f64(double %i.i, double %73, double f0xBF2A01A01A01A01A)
  %75 = tail call double @llvm.fma.f64(double %i.i, double %74, double f0x3F81111111111111) ; 3 uses
  %76 = fmul double %i.i, %75                     ; 3 uses
  %77 = fneg double %76
  %78 = tail call double @llvm.fma.f64(double %i.i, double %75, double %77)
  %79 = tail call double @llvm.fma.f64(double %i.k, double %75, double %78) ; 2 uses
  %80 = fadd double %76, %79                      ; 3 uses
  %81 = fsub double %80, %76
  %82 = fsub double %79, %81                      ; 2 uses
  %83 = fadd double %80, f0xBFC5555555555555      ; 4 uses
  %i.ag = fadd double %83, f0x3FC5555555555555    ; 2 uses
  %84 = insertelement <4 x double> <double f0xBFC5555555555555, double poison, double poison, double poison>, double %i.ag, i64 1
  %85 = insertelement <4 x double> %84, double %80, i64 2
  %86 = insertelement <4 x double> %85, double %82, i64 3
  %87 = insertelement <4 x double> <double 0.000000e+00, double poison, double poison, double f0x3C65555555555555>, double %83, i64 1
  %88 = insertelement <4 x double> %87, double %i.ag, i64 2
  %89 = fsub <4 x double> %86, %88                ; 2 uses
  %90 = extractelement <4 x double> %89, i64 3    ; 2 uses
  %91 = fadd double %90, f0x3C65555555555555      ; 2 uses
  %i.ah = fsub double %91, %90
  %i.ai = fadd double %i.ah, f0xBC65555555555555
  %92 = fsub double %82, %91
  %93 = fadd double %92, %i.ai
  %94 = tail call double @llvm.vector.reduce.fadd.v4f64(double -0.000000e+00, <4 x double> %89) ; 2 uses
  %95 = fadd double %83, %94                      ; 3 uses
  %96 = fsub double %95, %83
  %97 = fsub double %94, %96
  %i.aj = fadd double %93, %97                    ; 2 uses
  %i.ak = fadd double %95, %i.aj                  ; 4 uses
  %i.al = fsub double %i.ak, %95
  %i.am = fsub double %i.aj, %i.al
  %98 = fmul double %4, %i.ak                     ; 3 uses
  %99 = fneg double %98
  %100 = tail call double @llvm.fma.f64(double %4, double %i.ak, double %99)
  %101 = tail call double @llvm.fma.f64(double %4, double %i.am, double %100)
  %102 = tail call double @llvm.fma.f64(double %6, double %i.ak, double %101) ; 2 uses
  %103 = fadd double %98, %102                    ; 3 uses
  %104 = fsub double %103, %98
  %105 = fsub double %102, %104                   ; 2 uses
  %i.an = fadd double %i.a, %103                  ; 4 uses
  %i.ao = fsub double %i.an, %i.a                 ; 2 uses
  %i.ap = fsub double %i.an, %i.ao
  %106 = fsub double %i.a, %i.ap
  %107 = fsub double %103, %i.ao
  %108 = fadd double %107, %106
  %i.aq = fadd double %i.c, %105                  ; 3 uses
  %i.ar = fsub double %i.aq, %i.c                 ; 2 uses
  %i.as = fsub double %i.aq, %i.ar
  %i.at = fsub double %i.c, %i.as
  %i.au = fsub double %105, %i.ar
  %i.av = fadd double %i.au, %i.at
  %i.aw = fadd double %i.aq, %108                 ; 2 uses
  %i.ax = fadd double %i.an, %i.aw                ; 3 uses
  %i.ay = fsub double %i.ax, %i.an
  %i.az = fsub double %i.aw, %i.ay
  %i.ba = fadd double %i.av, %i.az                ; 2 uses
  %i.bb = fadd double %i.ax, %i.ba                ; 2 uses
  %i.bc = fsub double %i.bb, %i.ax
  %i.bd = fsub double %i.ba, %i.bc
  %i.be = insertelement <2 x double> poison, double %i.bd, i64 0
  %i.bf = insertelement <2 x double> %i.be, double %i.bb, i64 1
  %i.bg = shufflevector <2 x double> %i.af, <2 x double> %i.bf, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  ret <4 x double> %i.bg
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fma.f64(double, double, double) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v4f64(double, <4 x double>) #1

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
