Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/isometry3d_gradients?download=true
inline.NumInlined: 279
inline.NumDeleted: 102
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @_ZN3g2o8internal3g2o8internal15compute_dq_dR_wERN5Eigen6MatrixIdLi3ELi9ELi0ELi3ELi9EEERKdS8_S8_S8_S8_S8_S8_S8_S8_S8_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(216) initializes((0, 216)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %10) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load double, ptr %1, align 8, !tbaa !9   ; 2 uses
  %i.b = tail call noundef double @pow(double noundef %i.a, double noundef 3.000000e+00) #4
  %i.c = load double, ptr %7, align 8, !tbaa !9
  %i.d = load double, ptr %9, align 8, !tbaa !9
  %i.e = load double, ptr %4, align 8, !tbaa !9
  %i.f = load double, ptr %8, align 8, !tbaa !9
  %i.g = load double, ptr %3, align 8, !tbaa !9
  %i.h = load double, ptr %5, align 8, !tbaa !9
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double 0.000000e+00, ptr %i.j, align 8, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x double> zeroinitializer, ptr %i.i, align 8, !tbaa !9
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  store double 0.000000e+00, ptr %i.q, align 8, !tbaa !9
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x double> zeroinitializer, ptr %i.x, align 8, !tbaa !9
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <2 x double> zeroinitializer, ptr %i.s, align 8, !tbaa !9
  %i.aa = fsub double %i.c, %i.d
  %i.ab = fsub double %i.e, %i.f
  %i.ac = fsub double %i.g, %i.h
  %i.ad = insertelement <4 x double> <double poison, double poison, double poison, double 1.000000e+00>, double %i.aa, i64 0
  %i.ae = insertelement <4 x double> %i.ad, double %i.ab, i64 1
  %i.af = insertelement <4 x double> %i.ae, double %i.ac, i64 2
  %i.ag = fmul <4 x double> %i.af, <double -3.125000e-02, double 3.125000e-02, double -3.125000e-02, double 2.500000e-01>
  %i.ah = insertelement <2 x double> poison, double %i.b, i64 0
  %i.ai = insertelement <2 x double> %i.ah, double %i.a, i64 1
  %i.aj = fdiv <2 x double> splat (double 1.000000e+00), %i.ai ; 2 uses
  %i.ak = shufflevector <2 x double> %i.aj, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.al = fmul <4 x double> %i.ak, %i.ag          ; 5 uses
  %i.am = extractelement <4 x double> %i.al, i64 0 ; 3 uses
  store double %i.am, ptr %0, align 8, !tbaa !9
  store double %i.am, ptr %i.k, align 8, !tbaa !9
  store double %i.am, ptr %i.n, align 8, !tbaa !9
  %i.an = extractelement <4 x double> %i.al, i64 1 ; 3 uses
  store double %i.an, ptr %i.o, align 8, !tbaa !9
  store double %i.an, ptr %i.r, align 8, !tbaa !9
  store double %i.an, ptr %i.u, align 8, !tbaa !9
  %i.ao = extractelement <4 x double> %i.al, i64 2 ; 3 uses
  store double %i.ao, ptr %i.v, align 8, !tbaa !9
  store double %i.ao, ptr %i.z, align 8, !tbaa !9
  %i.ap = extractelement <2 x double> %i.aj, i64 1
  %i.aq = fmul double %i.ap, -2.500000e-01        ; 3 uses
  %i.ar = extractelement <4 x double> %i.al, i64 3 ; 2 uses
  store double %i.ar, ptr %i.l, align 8, !tbaa !9
  store double %i.aq, ptr %i.p, align 8, !tbaa !9
  store double %i.ar, ptr %i.w, align 8, !tbaa !9
  store double %i.aq, ptr %i.y, align 8, !tbaa !9
  %i.as = shufflevector <4 x double> <double 0.000000e+00, double poison, double 0.000000e+00, double poison>, <4 x double> %i.al, <4 x i32> <i32 0, i32 7, i32 2, i32 poison>
  %i.at = insertelement <4 x double> %i.as, double %i.aq, i64 3
  store <4 x double> %i.at, ptr %i.m, align 8, !tbaa !9
  store <2 x double> zeroinitializer, ptr %i.t, align 8, !tbaa !9
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 208
  store double %i.ao, ptr %i.au, align 8, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @_ZN3g2o8internal3g2o8internal15compute_dq_dR_xERN5Eigen6MatrixIdLi3ELi9ELi0ELi3ELi9EEERKdS8_S8_S8_S8_S8_S8_S8_S8_S8_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(216) initializes((0, 216)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %9, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %10) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load double, ptr %1, align 8, !tbaa !9   ; 2 uses
  %i.b = tail call noundef double @pow(double noundef %i.a, double noundef 3.000000e+00) #4
  %i.c = load double, ptr %3, align 8, !tbaa !9
  %i.d = load double, ptr %5, align 8, !tbaa !9
  %i.e = fadd double %i.c, %i.d                   ; 2 uses
  %i.f = load double, ptr %4, align 8, !tbaa !9
  %i.g = load double, ptr %8, align 8, !tbaa !9
  %i.h = fadd double %i.f, %i.g                   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.m = insertelement <2 x double> poison, double %i.a, i64 0
  %i.n = insertelement <2 x double> %i.m, double %i.b, i64 1
  %i.o = fdiv <2 x double> splat (double 1.000000e+00), %i.n ; 4 uses
  %i.p = extractelement <2 x double> %i.o, i64 0
  %i.q = fmul double %i.p, -1.250000e-01          ; 2 uses
  %i.r = extractelement <2 x double> %i.o, i64 1
  %i.s = fmul double %i.r, 3.125000e-02           ; 2 uses
  %i.t = fmul double %i.s, %i.e                   ; 2 uses
  %i.u = fmul double %i.s, %i.h                   ; 2 uses
  store double %i.q, ptr %i.j, align 8, !tbaa !9
  store double %i.q, ptr %i.l, align 8, !tbaa !9
  %i.v = fmul <2 x double> %i.o, <double 1.000000e+00, double -3.125000e-02> ; 2 uses
  %i.w = insertelement <2 x double> <double 1.250000e-01, double poison>, double %i.e, i64 1
  %i.x = fmul <2 x double> %i.v, %i.w
  store <2 x double> %i.x, ptr %0, align 8, !tbaa !9
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104
  store double %i.t, ptr %i.z, align 8, !tbaa !9
  store <2 x double> zeroinitializer, ptr %i.k, align 8, !tbaa !9
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 152
  store double 0.000000e+00, ptr %i.aa, align 8, !tbaa !9
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 200
  store double %i.t, ptr %i.ac, align 8, !tbaa !9
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = shufflevector <2 x double> %i.v, <2 x double> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.af = shufflevector <4 x double> %i.ae, <4 x double> <double poison, double 0.000000e+00, double 2.500000e-01, double 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.ag = shufflevector <2 x double> %i.o, <2 x double> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 poison>
  %i.ah = shufflevector <4 x double> %i.ag, <4 x double> <double poison, double 1.000000e+00, double poison, double 1.000000e+00>, <4 x i32> <i32 poison, i32 5, i32 2, i32 7>
  %i.ai = insertelement <4 x double> %i.ah, double %i.h, i64 0
  %i.aj = fmul <4 x double> %i.af, %i.ai          ; 3 uses
  store <4 x double> %i.aj, ptr %i.ad, align 8, !tbaa !9
  %i.ak = shufflevector <4 x double> <double 0.000000e+00, double 0.000000e+00, double poison, double 0.000000e+00>, <4 x double> %i.aj, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  store <4 x double> %i.ak, ptr %i.i, align 8, !tbaa !9
  %i.al = shufflevector <4 x double> %i.aj, <4 x double> poison, <2 x i32> <i32 2, i32 poison>
  %i.am = insertelement <2 x double> %i.al, double 0.000000e+00, i64 1 ; 2 uses
  store <2 x double> %i.am, ptr %i.y, align 8, !tbaa !9
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 112
  store double %i.u, ptr %i.an, align 8, !tbaa !9
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 136
  store <2 x double> zeroinitializer, ptr %i.ao, align 8, !tbaa !9
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 160
  store <2 x double> %i.am, ptr %i.ap, align 8, !tbaa !9
  store <2 x double> zeroinitializer, ptr %i.ab, align 8, !tbaa !9
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 208
  store double %i.u, ptr %i.aq, align 8, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @_ZN3g2o8internal3g2o8internal15compute_dq_dR_yERN5Eigen6MatrixIdLi3ELi9ELi0ELi3ELi9EEERKdS8_S8_S8_S8_S8_S8_S8_S8_S8_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(216) initializes((0, 216)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %10) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load double, ptr %1, align 8, !tbaa !9   ; 2 uses
  %i.b = tail call noundef double @pow(double noundef %i.a, double noundef 3.000000e+00) #4
  %i.c = load double, ptr %3, align 8, !tbaa !9
  %i.d = load double, ptr %5, align 8, !tbaa !9
  %i.e = fadd double %i.c, %i.d                   ; 2 uses
  %i.f = load double, ptr %7, align 8, !tbaa !9
  %i.g = load double, ptr %9, align 8, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.k = insertelement <2 x double> poison, double %i.b, i64 0
  %i.l = insertelement <2 x double> %i.k, double %i.a, i64 1
  %i.m = fdiv <2 x double> splat (double 1.000000e+00), %i.l ; 3 uses
  %i.n = fmul <2 x double> %i.m, <double 3.125000e-02, double 1.000000e+00> ; 2 uses
  %i.o = insertelement <2 x double> <double poison, double -1.250000e-01>, double %i.e, i64 0
  %i.p = fmul <2 x double> %i.n, %i.o             ; 2 uses
  %11 = extractelement <2 x double> %i.n, i64 0
  store <2 x double> %i.p, ptr %0, align 8, !tbaa !9
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.r = fmul <2 x double> %i.m, <double -3.125000e-02, double 1.000000e+00> ; 2 uses
  %i.s = insertelement <2 x double> <double poison, double 1.250000e-01>, double %i.e, i64 0
  %i.t = fmul <2 x double> %i.r, %i.s
  store <2 x double> %i.t, ptr %i.i, align 8, !tbaa !9
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %12 = shufflevector <2 x double> %i.m, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 1> ; 2 uses
  %13 = shufflevector <4 x double> %12, <4 x double> <double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double poison>, <4 x i32> <i32 4, i32 5, i32 6, i32 1>
  %14 = fmul <4 x double> %13, <double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 2.500000e-01> ; 2 uses
  store <4 x double> %14, ptr %i.h, align 8, !tbaa !9
  store <2 x double> zeroinitializer, ptr %i.q, align 8, !tbaa !9
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 112
  %15 = fadd double %i.f, %i.g                    ; 2 uses
  %16 = fmul double %11, %15                      ; 2 uses
  %17 = insertelement <4 x double> <double poison, double poison, double 0.000000e+00, double 0.000000e+00>, double %16, i64 0
  %18 = shufflevector <4 x double> %17, <4 x double> %14, <4 x i32> <i32 0, i32 7, i32 2, i32 3>
  store <4 x double> %18, ptr %i.v, align 8, !tbaa !9
  %19 = shufflevector <2 x double> %i.r, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %20 = shufflevector <4 x double> %19, <4 x double> <double poison, double 0.000000e+00, double 1.000000e+00, double 2.500000e-01>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.x = shufflevector <4 x double> %12, <4 x double> <double poison, double 1.000000e+00, double 0.000000e+00, double poison>, <4 x i32> <i32 poison, i32 5, i32 6, i32 1>
  %i.y = insertelement <4 x double> %i.x, double %15, i64 0
  %21 = fmul <4 x double> %20, %i.y               ; 2 uses
  store <4 x double> %21, ptr %i.w, align 8, !tbaa !9
  store <4 x double> zeroinitializer, ptr %i.j, align 8, !tbaa !9
  %22 = shufflevector <2 x double> %i.p, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %23 = shufflevector <4 x double> %21, <4 x double> %22, <4 x i32> <i32 poison, i32 3, i32 4, i32 5>
  %i.z = insertelement <4 x double> %23, double 0.000000e+00, i64 0
  store <4 x double> %i.z, ptr %i.u, align 8, !tbaa !9
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 208
  store double %16, ptr %i.aa, align 8, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @_ZN3g2o8internal3g2o8internal15compute_dq_dR_zERN5Eigen6MatrixIdLi3ELi9ELi0ELi3ELi9EEERKdS8_S8_S8_S8_S8_S8_S8_S8_S8_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(216) initializes((0, 216)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %10) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load double, ptr %1, align 8, !tbaa !9   ; 2 uses
  %i.b = tail call noundef double @pow(double noundef %i.a, double noundef 3.000000e+00) #4
  %i.c = load double, ptr %4, align 8, !tbaa !9
  %i.d = load double, ptr %8, align 8, !tbaa !9
  %i.e = load double, ptr %7, align 8, !tbaa !9
  %i.f = load double, ptr %9, align 8, !tbaa !9
  %i.g = fadd double %i.e, %i.f                   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x double> zeroinitializer, ptr %i.h, align 8, !tbaa !9
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.o = insertelement <2 x double> poison, double %i.b, i64 0
  %i.p = insertelement <2 x double> %i.o, double %i.a, i64 1
  %i.q = fdiv <2 x double> splat (double 1.000000e+00), %i.p ; 4 uses
  %i.r = fmul <2 x double> %i.q, <double 3.125000e-02, double 1.000000e+00> ; 2 uses
  %i.s = extractelement <2 x double> %i.r, i64 0
  %i.t = insertelement <2 x double> <double poison, double -1.250000e-01>, double %i.g, i64 0
  %i.u = fmul <2 x double> %i.r, %i.t             ; 2 uses
  store <2 x double> %i.u, ptr %i.l, align 8, !tbaa !9
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = shufflevector <2 x double> %i.q, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %12 = shufflevector <2 x double> %i.q, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %13 = shufflevector <4 x double> <double 1.000000e+00, double poison, double 1.000000e+00, double 1.000000e+00>, <4 x double> %12, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %14 = fmul <4 x double> %13, <double 0.000000e+00, double 2.500000e-01, double 0.000000e+00, double 0.000000e+00>
  store <4 x double> %14, ptr %i.v, align 8, !tbaa !9
  %i.x = fadd double %i.c, %i.d                   ; 2 uses
  %i.y = fmul double %i.s, %i.x                   ; 2 uses
  store double %i.y, ptr %0, align 8, !tbaa !9
  %i.z = insertelement <4 x double> <double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double poison>, double %i.y, i64 3
  store <4 x double> %i.z, ptr %i.i, align 8, !tbaa !9
  store <2 x double> %i.u, ptr %i.m, align 8, !tbaa !9
  %15 = shufflevector <4 x double> %i.w, <4 x double> <double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double poison>, <4 x i32> <i32 4, i32 5, i32 6, i32 1>
  %16 = fmul <4 x double> %15, <double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 2.500000e-01> ; 2 uses
  %17 = shufflevector <4 x double> <double 0.000000e+00, double poison, double 0.000000e+00, double poison>, <4 x double> %16, <4 x i32> <i32 0, i32 7, i32 2, i32 7>
  store <4 x double> %17, ptr %i.j, align 8, !tbaa !9
  store <4 x double> %16, ptr %11, align 8, !tbaa !9
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 184
  store double 0.000000e+00, ptr %i.aa, align 8, !tbaa !9
  %i.ab = fmul <2 x double> %i.q, <double -3.125000e-02, double 1.000000e+00> ; 2 uses
  %i.ac = extractelement <2 x double> %i.ab, i64 0
  %i.ad = fmul double %i.ac, %i.x
  store double %i.ad, ptr %i.k, align 8, !tbaa !9
  %i.ae = insertelement <2 x double> <double poison, double 1.250000e-01>, double %i.g, i64 0
  %i.af = fmul <2 x double> %i.ab, %i.ae
  store <2 x double> %i.af, ptr %i.n, align 8, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @_ZN3g2o8internal3g2o8internal13compute_dR_dqERN5Eigen6MatrixIdLi9ELi3ELi0ELi9ELi3EEERKdS8_S8_S8_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(216) initializes((0, 216)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load double, ptr %2, align 8, !tbaa !9   ; 7 uses
  %i.b = fmul double %i.a, -4.000000e+00          ; 2 uses
  %i.c = load double, ptr %3, align 8, !tbaa !9   ; 5 uses
  %i.d = fmul double %i.c, -4.000000e+00          ; 2 uses
  %i.e = load double, ptr %4, align 8, !tbaa !9   ; 4 uses
  %i.f = fdiv double 1.000000e+00, %i.e           ; 10 uses
  %i.g = load double, ptr %1, align 8, !tbaa !9   ; 6 uses
  %i.h = fmul double %i.g, 2.000000e+00           ; 2 uses
  %i.i = fmul double %i.c, %i.h                   ; 2 uses
  %i.j = fneg double %i.f                         ; 3 uses
  %i.k = fmul double %i.e, -2.000000e+00          ; 2 uses
  %i.l = tail call double @llvm.fmuladd.f64(double %i.k, double %i.a, double %i.i)
  %i.m = fmul double %i.l, %i.j                   ; 2 uses
  %i.n = fmul double %i.a, 2.000000e+00
  %i.o = fmul double %i.n, %i.c                   ; 2 uses
  %i.p = tail call double @llvm.fmuladd.f64(double %i.k, double %i.g, double %i.o)
  %i.q = fmul double %i.p, %i.j                   ; 2 uses
  %i.r = tail call noundef double @pow(double noundef %i.e, double noundef 2.000000e+00) #4
  %i.s = fmul double %i.r, -2.000000e+00          ; 3 uses
  %i.t = tail call noundef double @pow(double noundef %i.c, double noundef 2.000000e+00) #4
  %i.u = tail call double @llvm.fmuladd.f64(double %i.t, double 2.000000e+00, double %i.s) ; 2 uses
  %i.v = fmul double %i.e, 2.000000e+00           ; 3 uses
  %i.w = fmul double %i.c, %i.v                   ; 2 uses
  %i.x = tail call double @llvm.fmuladd.f64(double %i.h, double %i.a, double %i.w)
  %i.y = fmul double %i.f, %i.x                   ; 2 uses
  %i.z = tail call noundef double @pow(double noundef %i.a, double noundef 2.000000e+00) #4
  %i.aa = tail call double @llvm.fmuladd.f64(double %i.z, double 2.000000e+00, double %i.s) ; 2 uses
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.v, double %i.g, double %i.o)
  %i.ac = fmul double %i.f, %i.ab                 ; 2 uses
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.v, double %i.a, double %i.i)
  %i.ae = fmul double %i.f, %i.ad                 ; 2 uses
  %i.af = fmul double %i.g, -4.000000e+00         ; 2 uses
  %i.ag = tail call noundef double @pow(double noundef %i.g, double noundef 2.000000e+00) #4
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.ag, double 2.000000e+00, double %i.s) ; 2 uses
  %i.ai = fmul double %i.g, -2.000000e+00
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.a, double %i.w)
  %i.ak = fmul double %i.f, %i.aj                 ; 2 uses
  store double 0.000000e+00, ptr %0, align 8, !tbaa !9
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72
  store double %i.b, ptr %i.al, align 8, !tbaa !9
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 144
  store double %i.d, ptr %i.am, align 8, !tbaa !9
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.m, ptr %i.an, align 8, !tbaa !9
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 80
  store double %i.q, ptr %i.ao, align 8, !tbaa !9
  %i.ap = fmul double %i.u, %i.j
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 152
  store double %i.ap, ptr %i.aq, align 8, !tbaa !9
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.y, ptr %i.ar, align 8, !tbaa !9
  %i.as = fmul double %i.f, %i.aa
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 88
  store double %i.as, ptr %i.at, align 8, !tbaa !9
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 160
  store double %i.ac, ptr %i.au, align 8, !tbaa !9
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.ae, ptr %i.av, align 8, !tbaa !9
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 96
  store double %i.ac, ptr %i.aw, align 8, !tbaa !9
  %i.ax = fmul double %i.f, %i.u
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 168
  store double %i.ax, ptr %i.ay, align 8, !tbaa !9
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %i.af, ptr %i.az, align 8, !tbaa !9
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 104
  store double 0.000000e+00, ptr %i.ba, align 8, !tbaa !9
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 176
  store double %i.d, ptr %i.bb, align 8, !tbaa !9
  %i.bc = fneg double %i.ah
  %i.bd = fmul double %i.f, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %i.bd, ptr %i.be, align 8, !tbaa !9
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 112
  store double %i.ak, ptr %i.bf, align 8, !tbaa !9
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 184
  store double %i.m, ptr %i.bg, align 8, !tbaa !9
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double %i.ak, ptr %i.bh, align 8, !tbaa !9
  %i.bi = fneg double %i.aa
  %i.bj = fmul double %i.f, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 120
  store double %i.bj, ptr %i.bk, align 8, !tbaa !9
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 192
  store double %i.q, ptr %i.bl, align 8, !tbaa !9
  %i.bm = fmul double %i.f, %i.ah
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %i.bm, ptr %i.bn, align 8, !tbaa !9
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 128
  store double %i.y, ptr %i.bo, align 8, !tbaa !9
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 200
  store double %i.ae, ptr %i.bp, align 8, !tbaa !9
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double %i.af, ptr %i.bq, align 8, !tbaa !9
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 136
  store double %i.b, ptr %i.br, align 8, !tbaa !9
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 208
  store double 0.000000e+00, ptr %i.bs, align 8, !tbaa !9
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define noundef range(i32 0, 4) i32 @_ZN3g2o8internal3g2o8internal4_q2mERdS3_RKdS5_S5_S5_S5_S5_S5_S5_S5_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %10) local_unnamed_addr #0 {
bb.a:
  %i.a = load double, ptr %2, align 8, !tbaa !9   ; 6 uses
  %i.b = load double, ptr %6, align 8, !tbaa !9   ; 6 uses
  %i.c = fadd double %i.a, %i.b
  %i.d = load double, ptr %10, align 8, !tbaa !9  ; 6 uses
  %i.e = fadd double %i.c, %i.d                   ; 2 uses
  %i.f = fcmp ogt double %i.e, 0.000000e+00
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = fadd double %i.e, 1.000000e+00
  %i.h = tail call double @sqrt(double noundef %i.g) #4
  %i.i = fmul double %i.h, 2.000000e+00           ; 2 uses
  store double %i.i, ptr %0, align 8, !tbaa !9
  %i.j = fmul double %i.i, 2.500000e-01
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.k = fcmp ogt double %i.a, %i.b
  %i.l = fcmp ogt double %i.a, %i.d
  %i.m = and i1 %i.k, %i.l
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = fadd double %i.a, 1.000000e+00
  %i.o = fsub double %i.n, %i.b
  %i.p = fsub double %i.o, %i.d
  %i.q = tail call double @sqrt(double noundef %i.p) #4
  %i.r = fmul double %i.q, 2.000000e+00           ; 2 uses
  store double %i.r, ptr %0, align 8, !tbaa !9
  %i.s = load double, ptr %7, align 8, !tbaa !9
  %i.t = load double, ptr %9, align 8, !tbaa !9
  %i.u = fsub double %i.s, %i.t
  %i.v = fdiv double %i.u, %i.r
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.w = fcmp ogt double %i.b, %i.d
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = fadd double %i.b, 1.000000e+00
  %i.y = fsub double %i.x, %i.a
  %i.z = fsub double %i.y, %i.d
  %i.aa = tail call double @sqrt(double noundef %i.z) #4
  %i.ab = fmul double %i.aa, 2.000000e+00         ; 2 uses
  store double %i.ab, ptr %0, align 8, !tbaa !9
  %i.ac = load double, ptr %8, align 8, !tbaa !9
  %i.ad = load double, ptr %4, align 8, !tbaa !9
  %i.ae = fsub double %i.ac, %i.ad
  %i.af = fdiv double %i.ae, %i.ab
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ag = fadd double %i.d, 1.000000e+00
  %i.ah = fsub double %i.ag, %i.a
  %i.ai = fsub double %i.ah, %i.b
  %i.aj = tail call double @sqrt(double noundef %i.ai) #4
  %i.ak = fmul double %i.aj, 2.000000e+00         ; 2 uses
  store double %i.ak, ptr %0, align 8, !tbaa !9
  %i.al = load double, ptr %3, align 8, !tbaa !9
  %i.am = load double, ptr %5, align 8, !tbaa !9
  %i.an = fsub double %i.al, %i.am
  %i.ao = fdiv double %i.an, %i.ak
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.b
  %.sink = phi double [ %i.ao, %bb.g ], [ %i.af, %bb.f ], [ %i.v, %bb.d ], [ %i.j, %bb.b ]
  %.0 = phi i32 [ 3, %bb.g ], [ 2, %bb.f ], [ 1, %bb.d ], [ 0, %bb.b ]
  store double %.sink, ptr %1, align 8, !tbaa !9
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @_ZN3g2o8internal3g2o8internal13compute_dq_dRERN5Eigen6MatrixIdLi3ELi9ELi0ELi3ELi9EEERKdS8_S8_S8_S8_S8_S8_S8_S8_(ptr nofree noundef nonnull align 8 dereferenceable(216) initializes((0, 216)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load double, ptr %1, align 8, !tbaa !9   ; 6 uses
  %i.b = load double, ptr %5, align 8, !tbaa !9   ; 6 uses
  %i.c = fadd double %i.a, %i.b
  %i.d = load double, ptr %9, align 8, !tbaa !9   ; 6 uses
  %i.e = fadd double %i.c, %i.d                   ; 2 uses
  %i.f = fcmp ogt double %i.e, 0.000000e+00
  br i1 %i.f, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = fcmp ogt double %i.a, %i.b
  %i.h = fcmp ogt double %i.a, %i.d
  %i.i = and i1 %i.g, %i.h
  br i1 %i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = fcmp ogt double %i.b, %i.d
  br i1 %i.j, label %bb.f, label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.k = fadd double %i.e, 1.000000e+00
  %i.l = tail call double @sqrt(double noundef %i.k) #4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ae = fmul double %i.l, 2.000000e+00
  %i.af = fmul double %i.ae, 2.500000e-01         ; 3 uses
  %i.ag = tail call noundef double @pow(double noundef %i.af, double noundef 3.000000e+00) #4
  %i.ah = load double, ptr %6, align 8, !tbaa !9
  %i.ai = load double, ptr %8, align 8, !tbaa !9
  %i.aj = fsub double %i.ah, %i.ai
  %i.ak = load double, ptr %3, align 8, !tbaa !9
  %i.al = load double, ptr %7, align 8, !tbaa !9
  %i.am = fsub double %i.ak, %i.al
  %i.an = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.ao = insertelement <2 x double> %i.an, double %i.af, i64 1
  %i.ap = shufflevector <2 x double> %i.ao, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.aq = fdiv <4 x double> splat (double 1.000000e+00), %i.ap ; 2 uses
  %i.ar = insertelement <4 x double> <double -3.125000e-02, double 2.500000e-01, double poison, double -2.500000e-01>, double %i.am, i64 2
  %i.as = insertelement <4 x double> <double poison, double 1.000000e+00, double 3.125000e-02, double 1.000000e+00>, double %i.aj, i64 0
  %i.at = fmul <4 x double> %i.ar, %i.as
  %i.au = fmul <4 x double> %i.aq, %i.at          ; 5 uses
  %i.av = load double, ptr %2, align 8, !tbaa !9
  %i.aw = load double, ptr %4, align 8, !tbaa !9
  %i.ax = fsub double %i.av, %i.aw
  %i.ay = fmul double %i.ax, -3.125000e-02
  %i.az = extractelement <4 x double> %i.aq, i64 0
  %i.ba = fmul double %i.az, %i.ay                ; 3 uses
  %i.bb = extractelement <4 x double> %i.au, i64 0 ; 3 uses
  store double %i.bb, ptr %0, align 8, !tbaa !9
  store double 0.000000e+00, ptr %i.n, align 8, !tbaa !9
  store double %i.bb, ptr %i.o, align 8, !tbaa !9
  %i.bc = extractelement <4 x double> %i.au, i64 1 ; 2 uses
  store double %i.bc, ptr %i.p, align 8, !tbaa !9
  store double %i.bb, ptr %i.r, align 8, !tbaa !9
  %i.bd = extractelement <4 x double> %i.au, i64 2 ; 3 uses
  store double %i.bd, ptr %i.s, align 8, !tbaa !9
  store <2 x double> zeroinitializer, ptr %i.m, align 8, !tbaa !9
  %i.be = extractelement <4 x double> %i.au, i64 3 ; 2 uses
  store double %i.be, ptr %i.t, align 8, !tbaa !9
  store double 0.000000e+00, ptr %i.u, align 8, !tbaa !9
  store double %i.bd, ptr %i.v, align 8, !tbaa !9
  store double %i.bd, ptr %i.y, align 8, !tbaa !9
  store double %i.ba, ptr %i.z, align 8, !tbaa !9
  store double %i.bc, ptr %i.aa, align 8, !tbaa !9
  store <2 x double> zeroinitializer, ptr %i.ab, align 8, !tbaa !9
  store double %i.be, ptr %i.ac, align 8, !tbaa !9
  store double %i.ba, ptr %i.ad, align 8, !tbaa !9
  store <2 x double> zeroinitializer, ptr %i.w, align 8, !tbaa !9
  %i.bf = shufflevector <4 x double> <double 0.000000e+00, double poison, double 0.000000e+00, double poison>, <4 x double> %i.au, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x double> %i.bf, ptr %i.q, align 8, !tbaa !9
  store <2 x double> zeroinitializer, ptr %i.x, align 8, !tbaa !9
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.bg = fadd double %i.a, 1.000000e+00
  %i.bh = fsub double %i.bg, %i.b
  %i.bi = fsub double %i.bh, %i.d
  %i.bj = tail call double @sqrt(double noundef %i.bi) #4
  %i.bk = load double, ptr %6, align 8, !tbaa !9
  %i.bl = load double, ptr %8, align 8, !tbaa !9
  %i.bm = fsub double %i.bk, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ca = fmul double %i.bj, 2.000000e+00         ; 2 uses
  %i.cb = fdiv double %i.bm, %i.ca
  %i.cc = fmul double %i.ca, 2.500000e-01         ; 2 uses
  %i.cd = fdiv double 1.000000e+00, %i.cc         ; 3 uses
  %i.ce = fmul double %i.cd, -1.250000e-01        ; 2 uses
  %i.cf = tail call noundef double @pow(double noundef %i.cc, double noundef 3.000000e+00) #4
  %i.cg = fdiv double 1.000000e+00, %i.cf         ; 2 uses
  %i.ch = load double, ptr %2, align 8, !tbaa !9
  %i.ci = load double, ptr %4, align 8, !tbaa !9
  %i.cj = fadd double %i.ch, %i.ci                ; 2 uses
  %i.ck = fmul double %i.cd, 2.500000e-01         ; 3 uses
  %i.cl = fmul double %i.cg, 3.125000e-02         ; 2 uses
  %i.cm = fmul double %i.cl, %i.cj                ; 2 uses
  %i.cn = load double, ptr %3, align 8, !tbaa !9
  %i.co = load double, ptr %7, align 8, !tbaa !9
  %i.cp = fadd double %i.cn, %i.co                ; 2 uses
  %i.cq = fmul double %i.cl, %i.cp                ; 2 uses
  %i.cr = fmul double %i.cd, 1.250000e-01
  store double %i.cr, ptr %0, align 8, !tbaa !9
  store double 0.000000e+00, ptr %i.bn, align 8, !tbaa !9
  store double %i.ce, ptr %i.bo, align 8, !tbaa !9
  store double %i.ce, ptr %i.br, align 8, !tbaa !9
  %i.cs = fmul double %i.cg, -3.125000e-02        ; 2 uses
  %i.ct = fmul double %i.cs, %i.cj
  store double %i.ct, ptr %i.bs, align 8, !tbaa !9
  store double %i.ck, ptr %i.bt, align 8, !tbaa !9
  store double %i.cm, ptr %i.bv, align 8, !tbaa !9
  store <2 x double> zeroinitializer, ptr %i.bp, align 8, !tbaa !9
  store double 0.000000e+00, ptr %i.bw, align 8, !tbaa !9
  store <2 x double> zeroinitializer, ptr %i.bq, align 8, !tbaa !9
  store double %i.cm, ptr %i.bx, align 8, !tbaa !9
  %i.cu = fmul double %i.cs, %i.cp
  store double %i.cu, ptr %i.by, align 8, !tbaa !9
  store <2 x double> zeroinitializer, ptr %i.bz, align 8, !tbaa !9
  %i.cv = insertelement <4 x double> <double 0.000000e+00, double poison, double 0.000000e+00, double poison>, double %i.ck, i64 1
  %i.cw = shufflevector <4 x double> %i.cv, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  store <4 x double> %i.cw, ptr %i.bu, align 8, !tbaa !9
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store double 0.000000e+00, ptr %i.cx, align 8, !tbaa !9
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 112
  store double %i.cq, ptr %i.cy, align 8, !tbaa !9
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 136
  store <2 x double> zeroinitializer, ptr %i.cz, align 8, !tbaa !9
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 160
  store double %i.ck, ptr %i.da, align 8, !tbaa !9
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 184
  store double 0.000000e+00, ptr %i.db, align 8, !tbaa !9
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.dc = fadd double %i.b, 1.000000e+00
  %i.dd = fsub double %i.dc, %i.a
  %i.de = fsub double %i.dd, %i.d
  %i.df = tail call double @sqrt(double noundef %i.de) #4
  %i.dg = fmul double %i.df, 2.000000e+00         ; 2 uses
  %i.dh = load double, ptr %7, align 8, !tbaa !9
  %i.di = load double, ptr %3, align 8, !tbaa !9
  %i.dj = fsub double %i.dh, %i.di
  %i.dk = fdiv double %i.dj, %i.dg
  %i.dl = fmul double %i.dg, 2.500000e-01         ; 2 uses
  %i.dm = tail call noundef double @pow(double noundef %i.dl, double noundef 3.000000e+00) #4
  %i.dn = load double, ptr %2, align 8, !tbaa !9
  %i.do = load double, ptr %4, align 8, !tbaa !9
  %i.dp = fadd double %i.dn, %i.do                ; 2 uses
  %i.dq = load double, ptr %6, align 8, !tbaa !9
  %i.dr = load double, ptr %8, align 8, !tbaa !9
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.dv = insertelement <2 x double> poison, double %i.dm, i64 0
  %i.dw = insertelement <2 x double> %i.dv, double %i.dl, i64 1
  %i.dx = fdiv <2 x double> splat (double 1.000000e+00), %i.dw ; 3 uses
  %i.dy = fmul <2 x double> %i.dx, <double 3.125000e-02, double 1.000000e+00> ; 2 uses
  %i.dz = insertelement <2 x double> <double poison, double -1.250000e-01>, double %i.dp, i64 0
  %i.ea = fmul <2 x double> %i.dy, %i.dz          ; 2 uses
  %10 = extractelement <2 x double> %i.dy, i64 0
  store <2 x double> %i.ea, ptr %0, align 8, !tbaa !9
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ec = fmul <2 x double> %i.dx, <double -3.125000e-02, double 1.000000e+00> ; 2 uses
  %i.ed = insertelement <2 x double> <double poison, double 1.250000e-01>, double %i.dp, i64 0
  %i.ee = fmul <2 x double> %i.ec, %i.ed
  store <2 x double> %i.ee, ptr %i.dt, align 8, !tbaa !9
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %11 = shufflevector <2 x double> %i.dx, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 1> ; 2 uses
  %12 = shufflevector <4 x double> %11, <4 x double> <double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double poison>, <4 x i32> <i32 4, i32 5, i32 6, i32 1>
  %13 = fmul <4 x double> %12, <double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 2.500000e-01> ; 2 uses
  store <4 x double> %13, ptr %i.ds, align 8, !tbaa !9
  store <2 x double> zeroinitializer, ptr %i.eb, align 8, !tbaa !9
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 112
  %14 = fadd double %i.dq, %i.dr                  ; 2 uses
  %15 = fmul double %10, %14                      ; 2 uses
  %16 = insertelement <4 x double> <double poison, double poison, double 0.000000e+00, double 0.000000e+00>, double %15, i64 0
  %17 = shufflevector <4 x double> %16, <4 x double> %13, <4 x i32> <i32 0, i32 7, i32 2, i32 3>
  store <4 x double> %17, ptr %i.eg, align 8, !tbaa !9
  %18 = shufflevector <2 x double> %i.ec, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %19 = shufflevector <4 x double> %18, <4 x double> <double poison, double 0.000000e+00, double 1.000000e+00, double 2.500000e-01>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.ei = shufflevector <4 x double> %11, <4 x double> <double poison, double 1.000000e+00, double 0.000000e+00, double poison>, <4 x i32> <i32 poison, i32 5, i32 6, i32 1>
  %i.ej = insertelement <4 x double> %i.ei, double %14, i64 0
  %20 = fmul <4 x double> %19, %i.ej              ; 2 uses
  store <4 x double> %20, ptr %i.eh, align 8, !tbaa !9
  store <4 x double> zeroinitializer, ptr %i.du, align 8, !tbaa !9
  %21 = shufflevector <2 x double> %i.ea, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %22 = shufflevector <4 x double> %20, <4 x double> %21, <4 x i32> <i32 poison, i32 3, i32 4, i32 5>
  %23 = insertelement <4 x double> %22, double 0.000000e+00, i64 0
  store <4 x double> %23, ptr %i.ef, align 8, !tbaa !9
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.ek = fadd double %i.d, 1.000000e+00
  %i.el = fsub double %i.ek, %i.a
  %i.em = fsub double %i.el, %i.b
  %i.en = tail call double @sqrt(double noundef %i.em) #4
  %i.eo = fmul double %i.en, 2.000000e+00         ; 2 uses
  %i.ep = load double, ptr %2, align 8, !tbaa !9
  %i.eq = load double, ptr %4, align 8, !tbaa !9
  %i.er = fsub double %i.ep, %i.eq
  %i.es = fdiv double %i.er, %i.eo
  %i.et = fmul double %i.eo, 2.500000e-01         ; 2 uses
  %i.eu = tail call noundef double @pow(double noundef %i.et, double noundef 3.000000e+00) #4
  %i.ev = load double, ptr %3, align 8, !tbaa !9
  %i.ew = load double, ptr %7, align 8, !tbaa !9
  %i.ex = load double, ptr %6, align 8, !tbaa !9
  %i.ey = load double, ptr %8, align 8, !tbaa !9
  %i.ez = fadd double %i.ex, %i.ey                ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x double> zeroinitializer, ptr %i.fa, align 8, !tbaa !9
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 104
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.fh = insertelement <2 x double> poison, double %i.eu, i64 0
  %i.fi = insertelement <2 x double> %i.fh, double %i.et, i64 1
  %i.fj = fdiv <2 x double> splat (double 1.000000e+00), %i.fi ; 5 uses
  %i.fk = fmul <2 x double> %i.fj, <double 3.125000e-02, double 1.000000e+00> ; 2 uses
  %25 = extractelement <2 x double> %i.fk, i64 0
  %i.fl = extractelement <2 x double> %i.fj, i64 1
  %i.fm = insertelement <2 x double> <double poison, double -1.250000e-01>, double %i.ez, i64 0
  %i.fn = fmul <2 x double> %i.fk, %i.fm          ; 2 uses
  %i.fo = extractelement <2 x double> %i.fj, i64 0
  %i.fp = fmul double %i.fo, -3.125000e-02        ; 2 uses
  %i.fq = fmul double %i.fp, %i.ez
  store double %i.fq, ptr %i.fg, align 8, !tbaa !9
  store <2 x double> %i.fn, ptr %i.fe, align 8, !tbaa !9
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fs = shufflevector <2 x double> %i.fj, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %26 = shufflevector <2 x double> %i.fj, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %27 = shufflevector <4 x double> <double 1.000000e+00, double poison, double 1.000000e+00, double 1.000000e+00>, <4 x double> %26, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %28 = fmul <4 x double> %27, <double 0.000000e+00, double 2.500000e-01, double 0.000000e+00, double 0.000000e+00>
  store <4 x double> %28, ptr %i.fr, align 8, !tbaa !9
  %i.ft = fadd double %i.ev, %i.ew                ; 2 uses
  %i.fu = fmul double %25, %i.ft                  ; 2 uses
  store double %i.fu, ptr %0, align 8, !tbaa !9
  %i.fv = fmul double %i.fp, %i.ft
  store double %i.fv, ptr %i.fd, align 8, !tbaa !9
  %i.fw = insertelement <4 x double> <double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double poison>, double %i.fu, i64 3
  store <4 x double> %i.fw, ptr %i.fb, align 8, !tbaa !9
  store <2 x double> %i.fn, ptr %i.ff, align 8, !tbaa !9
  %29 = shufflevector <4 x double> %i.fs, <4 x double> <double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double poison>, <4 x i32> <i32 4, i32 5, i32 6, i32 1>
  %30 = fmul <4 x double> %29, <double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 2.500000e-01> ; 2 uses
  %31 = shufflevector <4 x double> <double 0.000000e+00, double poison, double 0.000000e+00, double poison>, <4 x double> %30, <4 x i32> <i32 0, i32 7, i32 2, i32 7>
  store <4 x double> %31, ptr %i.fc, align 8, !tbaa !9
  store <4 x double> %30, ptr %24, align 8, !tbaa !9
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 184
  store double 0.000000e+00, ptr %i.fx, align 8, !tbaa !9
  %i.fy = fmul double %i.fl, 1.250000e-01
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %.sink = phi double [ %i.fy, %bb.g ], [ %15, %bb.f ], [ %i.cq, %bb.e ], [ %i.ba, %bb.d ] ; 2 uses
  %.sink.i59 = phi double [ %i.es, %bb.g ], [ %i.dk, %bb.f ], [ %i.cb, %bb.e ], [ %i.af, %bb.d ]
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 208
  store double %.sink, ptr %i.fz, align 8, !tbaa !9
  %i.ga = fcmp ugt double %.sink.i59, 0.000000e+00
  br i1 %i.ga, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.gb = load <2 x double>, ptr %0, align 8, !tbaa !10
  %i.gc = fneg <2 x double> %i.gb
  store <2 x double> %i.gc, ptr %0, align 8, !tbaa !10
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ge = load <2 x double>, ptr %i.gd, align 8, !tbaa !10
  %i.gf = fneg <2 x double> %i.ge
  store <2 x double> %i.gf, ptr %i.gd, align 8, !tbaa !10
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.gh = load <2 x double>, ptr %i.gg, align 8, !tbaa !10
  %i.gi = fneg <2 x double> %i.gh
  store <2 x double> %i.gi, ptr %i.gg, align 8, !tbaa !10
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.gk = load <2 x double>, ptr %i.gj, align 8, !tbaa !10
  %i.gl = fneg <2 x double> %i.gk
  store <2 x double> %i.gl, ptr %i.gj, align 8, !tbaa !10
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.gn = load <2 x double>, ptr %i.gm, align 8, !tbaa !10
  %i.go = fneg <2 x double> %i.gn
  store <2 x double> %i.go, ptr %i.gm, align 8, !tbaa !10
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.gq = load <2 x double>, ptr %i.gp, align 8, !tbaa !10
  %i.gr = fneg <2 x double> %i.gq
  store <2 x double> %i.gr, ptr %i.gp, align 8, !tbaa !10
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.gt = load <2 x double>, ptr %i.gs, align 8, !tbaa !10
  %i.gu = fneg <2 x double> %i.gt
  store <2 x double> %i.gu, ptr %i.gs, align 8, !tbaa !10
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.gw = load <2 x double>, ptr %i.gv, align 8, !tbaa !10
  %i.gx = fneg <2 x double> %i.gw
  store <2 x double> %i.gx, ptr %i.gv, align 8, !tbaa !10
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.gz = load <2 x double>, ptr %i.gy, align 8, !tbaa !10
  %i.ha = fneg <2 x double> %i.gz
  store <2 x double> %i.ha, ptr %i.gy, align 8, !tbaa !10
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.hc = load <2 x double>, ptr %i.hb, align 8, !tbaa !10
  %i.hd = fneg <2 x double> %i.hc
  store <2 x double> %i.hd, ptr %i.hb, align 8, !tbaa !10
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.hf = load <2 x double>, ptr %i.he, align 8, !tbaa !10
  %i.hg = fneg <2 x double> %i.hf
  store <2 x double> %i.hg, ptr %i.he, align 8, !tbaa !10
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.hi = load <2 x double>, ptr %i.hh, align 8, !tbaa !10
  %i.hj = fneg <2 x double> %i.hi
  store <2 x double> %i.hj, ptr %i.hh, align 8, !tbaa !10
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.hl = load <2 x double>, ptr %i.hk, align 8, !tbaa !10
  %i.hm = fneg <2 x double> %i.hl
  store <2 x double> %i.hm, ptr %i.hk, align 8, !tbaa !10
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ho = fneg double %.sink
  store double %i.ho, ptr %i.hn, align 8, !tbaa !9
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"double", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!4, !4, i64 0}
end_hunk_0
