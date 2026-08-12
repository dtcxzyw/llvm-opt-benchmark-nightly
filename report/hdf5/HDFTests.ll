begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4
  %i.b = alloca { float, float }, align 4         ; 6 uses
  %i.c = alloca { float, float }, align 4         ; 3 uses
  %i.d = alloca { double, double }, align 8       ; 6 uses
  %i.e = alloca { x86_fp80, x86_fp80 }, align 16  ; 6 uses
  %i.f = alloca float, align 4
  %i.g = alloca float, align 4
  %i.h = alloca double, align 8
  %i.i = alloca double, align 8
  %i.j = alloca x86_fp80, align 16
  %i.k = alloca x86_fp80, align 16
  store i32 0, ptr %i.a, align 4
  %0 = call <2 x float> @H5_make_fcomplex(float noundef 1.000000e+00, float noundef 1.000000e+00)
  store <2 x float> %0, ptr %i.c, align 4
  %i.l = getelementptr inbounds nuw { float, float }, ptr %i.c, i32 0, i32 0
  %i.m = load float, ptr %i.l, align 4
  %i.n = getelementptr inbounds nuw { float, float }, ptr %i.c, i32 0, i32 1
  %i.o = load float, ptr %i.n, align 4
  %i.p = getelementptr inbounds nuw { float, float }, ptr %i.b, i32 0, i32 0
  %i.q = getelementptr inbounds nuw { float, float }, ptr %i.b, i32 0, i32 1
  store float %i.m, ptr %i.p, align 4
  store float %i.o, ptr %i.q, align 4
  %1 = call { double, double } @H5_make_dcomplex(double noundef 2.000000e+00, double noundef 4.000000e+00) ; 2 uses
  %i.r = extractvalue { double, double } %1, 0
  %i.s = extractvalue { double, double } %1, 1
  %i.t = getelementptr inbounds nuw { double, double }, ptr %i.d, i32 0, i32 0
  %i.u = getelementptr inbounds nuw { double, double }, ptr %i.d, i32 0, i32 1
  store double %i.r, ptr %i.t, align 8
  store double %i.s, ptr %i.u, align 8
  %2 = call { x86_fp80, x86_fp80 } @H5_make_lcomplex(x86_fp80 noundef 3.000000e+00, x86_fp80 noundef 5.000000e+00) ; 2 uses
  %i.v = extractvalue { x86_fp80, x86_fp80 } %2, 0
  %i.w = extractvalue { x86_fp80, x86_fp80 } %2, 1
  %i.x = getelementptr inbounds nuw { x86_fp80, x86_fp80 }, ptr %i.e, i32 0, i32 0
  %i.y = getelementptr inbounds nuw { x86_fp80, x86_fp80 }, ptr %i.e, i32 0, i32 1
  store x86_fp80 %i.v, ptr %i.x, align 16
  store x86_fp80 %i.w, ptr %i.y, align 16
  %i.z = getelementptr inbounds nuw { float, float }, ptr %i.b, i32 0, i32 0
  %i.aa = load float, ptr %i.z, align 4
  %i.ab = getelementptr inbounds nuw { float, float }, ptr %i.b, i32 0, i32 1
  %i.ac = load float, ptr %i.ab, align 4          ; 0 uses
  store float %i.aa, ptr %i.f, align 4
  %i.ad = getelementptr inbounds nuw { float, float }, ptr %i.b, i32 0, i32 0
  %i.ae = load float, ptr %i.ad, align 4          ; 0 uses
  %i.af = getelementptr inbounds nuw { float, float }, ptr %i.b, i32 0, i32 1
  %i.ag = load float, ptr %i.af, align 4
  store float %i.ag, ptr %i.g, align 4
  %i.ah = getelementptr inbounds nuw { double, double }, ptr %i.d, i32 0, i32 0
  %i.ai = load double, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw { double, double }, ptr %i.d, i32 0, i32 1
  %i.ak = load double, ptr %i.aj, align 8         ; 0 uses
  store double %i.ai, ptr %i.h, align 8
  %i.al = getelementptr inbounds nuw { double, double }, ptr %i.d, i32 0, i32 0
  %i.am = load double, ptr %i.al, align 8         ; 0 uses
  %i.an = getelementptr inbounds nuw { double, double }, ptr %i.d, i32 0, i32 1
  %i.ao = load double, ptr %i.an, align 8
  store double %i.ao, ptr %i.i, align 8
  %i.ap = getelementptr inbounds nuw { x86_fp80, x86_fp80 }, ptr %i.e, i32 0, i32 0
  %i.aq = load x86_fp80, ptr %i.ap, align 16
  %i.ar = getelementptr inbounds nuw { x86_fp80, x86_fp80 }, ptr %i.e, i32 0, i32 1
  %i.as = load x86_fp80, ptr %i.ar, align 16      ; 0 uses
  store x86_fp80 %i.aq, ptr %i.j, align 16
  %i.at = getelementptr inbounds nuw { x86_fp80, x86_fp80 }, ptr %i.e, i32 0, i32 0
  %i.au = load x86_fp80, ptr %i.at, align 16      ; 0 uses
  %i.av = getelementptr inbounds nuw { x86_fp80, x86_fp80 }, ptr %i.e, i32 0, i32 1
  %i.aw = load x86_fp80, ptr %i.av, align 16
  store x86_fp80 %i.aw, ptr %i.k, align 16
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal <2 x float> @H5_make_fcomplex(float noundef nofpclass(nan inf zero sub nnorm) %0, float noundef nofpclass(nan inf zero sub nnorm) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca { float, float }, align 4         ; 3 uses
  %i.b = alloca float, align 4                    ; 2 uses
  %i.c = alloca float, align 4                    ; 2 uses
  store float 1.000000e+00, ptr %i.b, align 4
  store float 1.000000e+00, ptr %i.c, align 4
  %i.d = load float, ptr %i.b, align 4
  %i.e = load float, ptr %i.c, align 4            ; 2 uses
  %i.f = fmul float %i.e, 0.000000e+00
  %i.g = fmul float %i.e, 1.000000e+00
  %i.h = fadd float %i.d, %i.f
  %i.i = getelementptr inbounds nuw { float, float }, ptr %i.a, i32 0, i32 0
  %i.j = getelementptr inbounds nuw { float, float }, ptr %i.a, i32 0, i32 1
  store float %i.h, ptr %i.i, align 4
  store float %i.g, ptr %i.j, align 4
  %i.k = load <2 x float>, ptr %i.a, align 4
  ret <2 x float> %i.k
}

; Function Attrs: noinline nounwind optnone uwtable
define internal { double, double } @H5_make_dcomplex(double noundef nofpclass(nan inf zero sub nnorm) %0, double noundef nofpclass(nan inf zero sub nnorm) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca { double, double }, align 8       ; 3 uses
  %i.b = alloca double, align 8                   ; 2 uses
  %i.c = alloca double, align 8                   ; 2 uses
  store double 2.000000e+00, ptr %i.b, align 8
  store double 4.000000e+00, ptr %i.c, align 8
  %i.d = load double, ptr %i.b, align 8
  %i.e = load double, ptr %i.c, align 8           ; 2 uses
  %i.f = fmul double %i.e, 0.000000e+00
  %i.g = fmul double %i.e, 1.000000e+00
  %i.h = fadd double %i.d, %i.f
  %i.i = getelementptr inbounds nuw { double, double }, ptr %i.a, i32 0, i32 0
  %i.j = getelementptr inbounds nuw { double, double }, ptr %i.a, i32 0, i32 1
  store double %i.h, ptr %i.i, align 8
  store double %i.g, ptr %i.j, align 8
  %i.k = load { double, double }, ptr %i.a, align 8
  ret { double, double } %i.k
}

; Function Attrs: noinline nounwind optnone uwtable
define internal { x86_fp80, x86_fp80 } @H5_make_lcomplex(x86_fp80 noundef nofpclass(nan inf zero sub nnorm) %0, x86_fp80 noundef nofpclass(nan inf zero sub nnorm) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca { x86_fp80, x86_fp80 }, align 16  ; 3 uses
  %i.b = alloca x86_fp80, align 16                ; 2 uses
  %i.c = alloca x86_fp80, align 16                ; 2 uses
  store x86_fp80 3.000000e+00, ptr %i.b, align 16
  store x86_fp80 5.000000e+00, ptr %i.c, align 16
  %i.d = load x86_fp80, ptr %i.b, align 16
  %i.e = load x86_fp80, ptr %i.c, align 16        ; 2 uses
  %i.f = fmul x86_fp80 %i.e, 0.000000e+00
  %i.g = fmul x86_fp80 %i.e, 1.000000e+00
  %i.h = fadd x86_fp80 %i.d, %i.f
  %i.i = getelementptr inbounds nuw { x86_fp80, x86_fp80 }, ptr %i.a, i32 0, i32 0
  %i.j = getelementptr inbounds nuw { x86_fp80, x86_fp80 }, ptr %i.a, i32 0, i32 1
  store x86_fp80 %i.h, ptr %i.i, align 16
  store x86_fp80 %i.g, ptr %i.j, align 16
  %i.k = load { x86_fp80, x86_fp80 }, ptr %i.a, align 16
  ret { x86_fp80, x86_fp80 } %i.k
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
end_hunk_0
