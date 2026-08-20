inline.NumInlined: 279
inline.NumDeleted: 102
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @_ZN3g2o8internal15compute_dq_dR_wERN5Eigen6MatrixIdLi3ELi9ELi0ELi3ELi9EEERKdS6_S6_S6_S6_S6_S6_S6_S6_S6_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(216) initializes((0, 216)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %10) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load double, ptr %1, align 8, !tbaa !8   ; 2 uses
  %i.b = tail call noundef double @pow(double noundef %i.a, double noundef 3.000000e+00) #4
  %i.c = load double, ptr %7, align 8, !tbaa !8
  %i.d = load double, ptr %9, align 8, !tbaa !8
  %i.e = load double, ptr %4, align 8, !tbaa !8
  %i.f = load double, ptr %8, align 8, !tbaa !8
  %i.g = load double, ptr %3, align 8, !tbaa !8
  %i.h = load double, ptr %5, align 8, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double 0.000000e+00, ptr %i.j, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x double> zeroinitializer, ptr %i.i, align 8, !tbaa !8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  store double 0.000000e+00, ptr %i.q, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x double> zeroinitializer, ptr %i.x, align 8, !tbaa !8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <2 x double> zeroinitializer, ptr %i.s, align 8, !tbaa !8
  %i.aa = fsub double %i.g, %i.h
  %i.ab = fsub double %i.e, %i.f
  %i.ac = fsub double %i.c, %i.d
  %i.ad = insertelement <4 x double> <double poison, double poison, double poison, double 1.000000e+00>, double %i.ac, i64 0
  %i.ae = insertelement <4 x double> %i.ad, double %i.ab, i64 1
  %i.af = insertelement <4 x double> %i.ae, double %i.aa, i64 2
  %i.ag = fmul <4 x double> %i.af, <double -3.125000e-02, double 3.125000e-02, double -3.125000e-02, double -2.500000e-01>
  %i.ah = insertelement <2 x double> poison, double %i.b, i64 0
  %i.ai = insertelement <2 x double> %i.ah, double %i.a, i64 1
  %i.aj = fdiv <2 x double> splat (double 1.000000e+00), %i.ai ; 2 uses
  %i.ak = shufflevector <2 x double> %i.aj, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.al = fmul <4 x double> %i.ak, %i.ag          ; 5 uses
  %i.am = extractelement <4 x double> %i.al, i64 0 ; 3 uses
  store double %i.am, ptr %0, align 8, !tbaa !8
  store double %i.am, ptr %i.k, align 8, !tbaa !8
  store double %i.am, ptr %i.n, align 8, !tbaa !8
  %i.an = extractelement <4 x double> %i.al, i64 1 ; 3 uses
  store double %i.an, ptr %i.o, align 8, !tbaa !8
  store double %i.an, ptr %i.r, align 8, !tbaa !8
  store double %i.an, ptr %i.u, align 8, !tbaa !8
  %i.ao = extractelement <4 x double> %i.al, i64 2 ; 3 uses
  store double %i.ao, ptr %i.v, align 8, !tbaa !8
  store double %i.ao, ptr %i.z, align 8, !tbaa !8
  %i.ap = extractelement <2 x double> %i.aj, i64 1
  %i.aq = fmul double %i.ap, 2.500000e-01         ; 3 uses
  store double %i.aq, ptr %i.l, align 8, !tbaa !8
  %i.ar = extractelement <4 x double> %i.al, i64 3 ; 2 uses
  store double %i.ar, ptr %i.p, align 8, !tbaa !8
  store double %i.aq, ptr %i.w, align 8, !tbaa !8
  store double %i.ar, ptr %i.y, align 8, !tbaa !8
  %i.as = insertelement <4 x double> <double 0.000000e+00, double poison, double 0.000000e+00, double poison>, double %i.aq, i64 1
  %i.at = shufflevector <4 x double> %i.as, <4 x double> %i.al, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  store <4 x double> %i.at, ptr %i.m, align 8, !tbaa !8
  store <2 x double> zeroinitializer, ptr %i.t, align 8, !tbaa !8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 208
  store double %i.ao, ptr %i.au, align 8, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @_ZN3g2o8internal15compute_dq_dR_xERN5Eigen6MatrixIdLi3ELi9ELi0ELi3ELi9EEERKdS6_S6_S6_S6_S6_S6_S6_S6_S6_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(216) initializes((0, 216)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %9, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %10) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load double, ptr %1, align 8, !tbaa !8   ; 2 uses
  %i.b = tail call noundef double @pow(double noundef %i.a, double noundef 3.000000e+00) #4
  %i.c = load double, ptr %3, align 8, !tbaa !8
  %i.d = load double, ptr %5, align 8, !tbaa !8
  %i.e = fadd double %i.c, %i.d                   ; 2 uses
  %i.f = load double, ptr %4, align 8, !tbaa !8
  %i.g = load double, ptr %8, align 8, !tbaa !8
  %i.h = fadd double %i.f, %i.g                   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double 0.000000e+00, ptr %i.i, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.n = insertelement <2 x double> poison, double %i.a, i64 0
  %i.o = insertelement <2 x double> %i.n, double %i.b, i64 1
  %i.p = fdiv <2 x double> splat (double 1.000000e+00), %i.o ; 3 uses
  %i.q = extractelement <2 x double> %i.p, i64 0  ; 2 uses
  %i.r = fmul double %i.q, -1.250000e-01          ; 2 uses
  %i.s = extractelement <2 x double> %i.p, i64 1
  %i.t = fmul double %i.s, 3.125000e-02           ; 2 uses
  %i.u = fmul double %i.t, %i.e                   ; 2 uses
  %i.v = fmul double %i.t, %i.h                   ; 2 uses
  store double %i.r, ptr %i.j, align 8, !tbaa !8
  store double %i.r, ptr %i.m, align 8, !tbaa !8
  %i.w = fmul <2 x double> %i.p, <double 1.000000e+00, double -3.125000e-02> ; 2 uses
  %i.x = insertelement <2 x double> <double 1.250000e-01, double poison>, double %i.e, i64 1
  %i.y = fmul <2 x double> %i.w, %i.x
  store <2 x double> %i.y, ptr %0, align 8, !tbaa !8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 104
  store double %i.u, ptr %i.ab, align 8, !tbaa !8
  store <2 x double> zeroinitializer, ptr %i.k, align 8, !tbaa !8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 152
  store double 0.000000e+00, ptr %i.ac, align 8, !tbaa !8
  store <2 x double> zeroinitializer, ptr %i.l, align 8, !tbaa !8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 200
  store double %i.u, ptr %i.ad, align 8, !tbaa !8
  %i.ae = extractelement <2 x double> %i.w, i64 1
  %i.af = fmul double %i.ae, %i.h
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.af, ptr %i.ag, align 8, !tbaa !8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <2 x double> zeroinitializer, ptr %i.ah, align 8, !tbaa !8
  %11 = fmul double %i.q, 2.500000e-01            ; 3 uses
  store double %11, ptr %i.z, align 8, !tbaa !8
  %12 = insertelement <4 x double> <double 0.000000e+00, double poison, double 0.000000e+00, double poison>, double %11, i64 1
  %13 = shufflevector <4 x double> %12, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  store <4 x double> %13, ptr %i.aa, align 8, !tbaa !8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88
  store double 0.000000e+00, ptr %i.ai, align 8, !tbaa !8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 112
  store double %i.v, ptr %i.aj, align 8, !tbaa !8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 136
  store <2 x double> zeroinitializer, ptr %i.ak, align 8, !tbaa !8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 160
  store double %11, ptr %i.al, align 8, !tbaa !8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 184
  store double 0.000000e+00, ptr %i.am, align 8, !tbaa !8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 208
  store double %i.v, ptr %i.an, align 8, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @_ZN3g2o8internal15compute_dq_dR_yERN5Eigen6MatrixIdLi3ELi9ELi0ELi3ELi9EEERKdS6_S6_S6_S6_S6_S6_S6_S6_S6_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(216) initializes((0, 216)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %10) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load double, ptr %1, align 8, !tbaa !8   ; 2 uses
  %i.b = tail call noundef double @pow(double noundef %i.a, double noundef 3.000000e+00) #4
  %i.c = load double, ptr %3, align 8, !tbaa !8
  %i.d = load double, ptr %5, align 8, !tbaa !8
  %i.e = fadd double %i.c, %i.d                   ; 2 uses
  %i.f = load double, ptr %7, align 8, !tbaa !8
  %i.g = load double, ptr %9, align 8, !tbaa !8
  %i.h = fadd double %i.f, %i.g                   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.o = insertelement <2 x double> poison, double %i.b, i64 0
  %i.p = insertelement <2 x double> %i.o, double %i.a, i64 1
  %i.q = fdiv <2 x double> splat (double 1.000000e+00), %i.p ; 3 uses
  %i.r = fmul <2 x double> %i.q, <double 3.125000e-02, double 1.000000e+00> ; 2 uses
  %i.s = insertelement <2 x double> <double poison, double -1.250000e-01>, double %i.e, i64 0
  %i.t = fmul <2 x double> %i.r, %i.s             ; 3 uses
  %i.u = extractelement <2 x double> %i.r, i64 0
  %i.v = fmul double %i.u, %i.h                   ; 2 uses
  store <2 x double> %i.t, ptr %0, align 8, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x double> zeroinitializer, ptr %i.j, align 8, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.y = fmul <2 x double> %i.q, <double -3.125000e-02, double 1.000000e+00> ; 2 uses
  %i.z = insertelement <2 x double> <double poison, double 1.250000e-01>, double %i.e, i64 0
  %i.aa = fmul <2 x double> %i.y, %i.z
  store <2 x double> %i.aa, ptr %i.l, align 8, !tbaa !8
  store <2 x double> zeroinitializer, ptr %i.m, align 8, !tbaa !8
  store <2 x double> zeroinitializer, ptr %i.n, align 8, !tbaa !8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 176
  store double 0.000000e+00, ptr %i.ab, align 8, !tbaa !8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ad = extractelement <2 x double> %i.t, i64 1
  store double %i.ad, ptr %i.ac, align 8, !tbaa !8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.v, ptr %i.ae, align 8, !tbaa !8
  store <2 x double> zeroinitializer, ptr %i.w, align 8, !tbaa !8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double 0.000000e+00, ptr %i.af, align 8, !tbaa !8
  store <2 x double> zeroinitializer, ptr %i.x, align 8, !tbaa !8
  %i.ag = extractelement <2 x double> %i.y, i64 0
  %i.ah = fmul double %i.ag, %i.h
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 112
  store double %i.ah, ptr %i.ai, align 8, !tbaa !8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 160
  store <2 x double> zeroinitializer, ptr %i.ak, align 8, !tbaa !8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.am = shufflevector <2 x double> %i.q, <2 x double> %i.t, <2 x i32> <i32 1, i32 2>
  %i.an = fmul <2 x double> %i.am, <double 2.500000e-01, double 1.000000e+00> ; 2 uses
  %i.ao = extractelement <2 x double> %i.an, i64 0 ; 3 uses
  store double %i.ao, ptr %i.i, align 8, !tbaa !8
  store double %i.ao, ptr %i.k, align 8, !tbaa !8
  store double %i.ao, ptr %i.aj, align 8, !tbaa !8
  store <2 x double> %i.an, ptr %i.al, align 8, !tbaa !8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 208
  store double %i.v, ptr %i.ap, align 8, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @_ZN3g2o8internal15compute_dq_dR_zERN5Eigen6MatrixIdLi3ELi9ELi0ELi3ELi9EEERKdS6_S6_S6_S6_S6_S6_S6_S6_S6_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(216) initializes((0, 216)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %10) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load double, ptr %1, align 8, !tbaa !8   ; 2 uses
  %i.b = tail call noundef double @pow(double noundef %i.a, double noundef 3.000000e+00) #4
  %i.c = load double, ptr %4, align 8, !tbaa !8
  %i.d = load double, ptr %8, align 8, !tbaa !8
  %i.e = fadd double %i.c, %i.d                   ; 2 uses
  %i.f = load double, ptr %7, align 8, !tbaa !8
  %i.g = load double, ptr %9, align 8, !tbaa !8
  %i.h = fadd double %i.f, %i.g                   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120
  store double 0.000000e+00, ptr %i.m, align 8, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x double> zeroinitializer, ptr %i.i, align 8, !tbaa !8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  store <2 x double> zeroinitializer, ptr %i.k, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.v = insertelement <2 x double> poison, double %i.b, i64 0
  %i.w = insertelement <2 x double> %i.v, double %i.a, i64 1
  %i.x = fdiv <2 x double> splat (double 1.000000e+00), %i.w ; 3 uses
  %i.y = fmul <2 x double> %i.x, <double 3.125000e-02, double 1.000000e+00> ; 2 uses
  %i.z = extractelement <2 x double> %i.y, i64 0
  %i.aa = fmul double %i.z, %i.e                  ; 2 uses
  %i.ab = insertelement <2 x double> <double poison, double -1.250000e-01>, double %i.h, i64 0
  %i.ac = fmul <2 x double> %i.y, %i.ab           ; 2 uses
  store double %i.aa, ptr %0, align 8, !tbaa !8
  store double %i.aa, ptr %i.l, align 8, !tbaa !8
  store <2 x double> %i.ac, ptr %i.p, align 8, !tbaa !8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double 0.000000e+00, ptr %i.ad, align 8, !tbaa !8
  store <2 x double> zeroinitializer, ptr %i.q, align 8, !tbaa !8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 88
  store double 0.000000e+00, ptr %i.ae, align 8, !tbaa !8
  store <2 x double> %i.ac, ptr %i.r, align 8, !tbaa !8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 136
  store double 0.000000e+00, ptr %i.af, align 8, !tbaa !8
  store <2 x double> zeroinitializer, ptr %i.t, align 8, !tbaa !8
  %11 = fmul <2 x double> %i.x, <double -3.125000e-02, double 1.000000e+00> ; 2 uses
  %12 = shufflevector <2 x double> %i.x, <2 x double> %11, <2 x i32> <i32 1, i32 2>
  %13 = insertelement <2 x double> <double 2.500000e-01, double poison>, double %i.e, i64 1
  %14 = fmul <2 x double> %12, %13                ; 2 uses
  %15 = extractelement <2 x double> %14, i64 0    ; 3 uses
  store double %15, ptr %i.j, align 8, !tbaa !8
  store double %15, ptr %i.n, align 8, !tbaa !8
  store double %15, ptr %i.s, align 8, !tbaa !8
  %16 = shufflevector <2 x double> %14, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %17 = shufflevector <4 x double> <double 0.000000e+00, double poison, double 0.000000e+00, double poison>, <4 x double> %16, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  store <4 x double> %17, ptr %i.o, align 8, !tbaa !8
  %i.ag = insertelement <2 x double> <double poison, double 1.250000e-01>, double %i.h, i64 0
  %i.ah = fmul <2 x double> %11, %i.ag
  store <2 x double> %i.ah, ptr %i.u, align 8, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @_ZN3g2o8internal13compute_dR_dqERN5Eigen6MatrixIdLi9ELi3ELi0ELi9ELi3EEERKdS6_S6_S6_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(216) initializes((0, 216)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load double, ptr %2, align 8, !tbaa !8   ; 7 uses
  %i.b = fmul double %i.a, -4.000000e+00          ; 2 uses
  %i.c = load double, ptr %3, align 8, !tbaa !8   ; 5 uses
  %i.d = fmul double %i.c, -4.000000e+00          ; 2 uses
  %i.e = load double, ptr %4, align 8, !tbaa !8   ; 4 uses
  %i.f = fdiv double 1.000000e+00, %i.e           ; 10 uses
  %i.g = load double, ptr %1, align 8, !tbaa !8   ; 6 uses
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
  store double 0.000000e+00, ptr %0, align 8, !tbaa !8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72
  store double %i.b, ptr %i.al, align 8, !tbaa !8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 144
  store double %i.d, ptr %i.am, align 8, !tbaa !8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.m, ptr %i.an, align 8, !tbaa !8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 80
  store double %i.q, ptr %i.ao, align 8, !tbaa !8
  %i.ap = fmul double %i.u, %i.j
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 152
  store double %i.ap, ptr %i.aq, align 8, !tbaa !8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.y, ptr %i.ar, align 8, !tbaa !8
  %i.as = fmul double %i.f, %i.aa
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 88
  store double %i.as, ptr %i.at, align 8, !tbaa !8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 160
  store double %i.ac, ptr %i.au, align 8, !tbaa !8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.ae, ptr %i.av, align 8, !tbaa !8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 96
  store double %i.ac, ptr %i.aw, align 8, !tbaa !8
  %i.ax = fmul double %i.f, %i.u
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 168
  store double %i.ax, ptr %i.ay, align 8, !tbaa !8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %i.af, ptr %i.az, align 8, !tbaa !8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 104
  store double 0.000000e+00, ptr %i.ba, align 8, !tbaa !8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 176
  store double %i.d, ptr %i.bb, align 8, !tbaa !8
  %i.bc = fneg double %i.ah
  %i.bd = fmul double %i.f, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %i.bd, ptr %i.be, align 8, !tbaa !8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 112
  store double %i.ak, ptr %i.bf, align 8, !tbaa !8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 184
  store double %i.m, ptr %i.bg, align 8, !tbaa !8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double %i.ak, ptr %i.bh, align 8, !tbaa !8
  %i.bi = fneg double %i.aa
  %i.bj = fmul double %i.f, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 120
  store double %i.bj, ptr %i.bk, align 8, !tbaa !8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 192
  store double %i.q, ptr %i.bl, align 8, !tbaa !8
  %i.bm = fmul double %i.f, %i.ah
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %i.bm, ptr %i.bn, align 8, !tbaa !8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 128
  store double %i.y, ptr %i.bo, align 8, !tbaa !8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 200
  store double %i.ae, ptr %i.bp, align 8, !tbaa !8
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double %i.af, ptr %i.bq, align 8, !tbaa !8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 136
  store double %i.b, ptr %i.br, align 8, !tbaa !8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 208
  store double 0.000000e+00, ptr %i.bs, align 8, !tbaa !8
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define noundef range(i32 0, 4) i32 @_ZN3g2o8internal4_q2mERdS1_RKdS3_S3_S3_S3_S3_S3_S3_S3_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %10) local_unnamed_addr #0 {
bb.a:
  %i.a = load double, ptr %2, align 8, !tbaa !8   ; 6 uses
  %i.b = load double, ptr %6, align 8, !tbaa !8   ; 6 uses
  %i.c = fadd double %i.a, %i.b
  %i.d = load double, ptr %10, align 8, !tbaa !8  ; 6 uses
  %i.e = fadd double %i.c, %i.d                   ; 2 uses
  %i.f = fcmp ogt double %i.e, 0.000000e+00
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = fadd double %i.e, 1.000000e+00
  %i.h = tail call double @sqrt(double noundef %i.g) #4
  %i.i = fmul double %i.h, 2.000000e+00           ; 2 uses
  store double %i.i, ptr %0, align 8, !tbaa !8
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
  store double %i.r, ptr %0, align 8, !tbaa !8
  %i.s = load double, ptr %7, align 8, !tbaa !8
  %i.t = load double, ptr %9, align 8, !tbaa !8
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
  store double %i.ab, ptr %0, align 8, !tbaa !8
  %i.ac = load double, ptr %8, align 8, !tbaa !8
  %i.ad = load double, ptr %4, align 8, !tbaa !8
  %i.ae = fsub double %i.ac, %i.ad
  %i.af = fdiv double %i.ae, %i.ab
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ag = fadd double %i.d, 1.000000e+00
  %i.ah = fsub double %i.ag, %i.a
  %i.ai = fsub double %i.ah, %i.b
  %i.aj = tail call double @sqrt(double noundef %i.ai) #4
  %i.ak = fmul double %i.aj, 2.000000e+00         ; 2 uses
  store double %i.ak, ptr %0, align 8, !tbaa !8
  %i.al = load double, ptr %3, align 8, !tbaa !8
  %i.am = load double, ptr %5, align 8, !tbaa !8
  %i.an = fsub double %i.al, %i.am
  %i.ao = fdiv double %i.an, %i.ak
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.b
  %.sink = phi double [ %i.ao, %bb.g ], [ %i.af, %bb.f ], [ %i.v, %bb.d ], [ %i.j, %bb.b ]
  %.0 = phi i32 [ 3, %bb.g ], [ 2, %bb.f ], [ 1, %bb.d ], [ 0, %bb.b ]
  store double %.sink, ptr %1, align 8, !tbaa !8
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @_ZN3g2o8internal13compute_dq_dRERN5Eigen6MatrixIdLi3ELi9ELi0ELi3ELi9EEERKdS6_S6_S6_S6_S6_S6_S6_S6_(ptr nofree noundef nonnull align 8 dereferenceable(216) initializes((0, 216)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load double, ptr %1, align 8, !tbaa !8   ; 6 uses
  %i.b = load double, ptr %5, align 8, !tbaa !8   ; 6 uses
  %i.c = fadd double %i.a, %i.b
  %i.d = load double, ptr %9, align 8, !tbaa !8   ; 6 uses
  %i.e = fadd double %i.c, %i.d                   ; 2 uses
  %i.f = fcmp ogt double %i.e, 0.000000e+00
  br i1 %i.f, label %bb.d, label %bb.b

end_hunk_0
begin_hunk_1_@_ZN3g2o8internal13compute_dq_dRERN5Eigen6MatrixIdLi3ELi9ELi0ELi3ELi9EEERKdS6_S6_S6_S6_S6_S6_S6_S6_:bb.a
  %i.aq = fdiv <4 x double> splat (double 1.000000e+00), %i.ap ; 2 uses
  %i.ar = insertelement <4 x double> <double -3.125000e-02, double -2.500000e-01, double poison, double 2.500000e-01>, double %i.am, i64 2
  %i.as = insertelement <4 x double> <double poison, double 1.000000e+00, double 3.125000e-02, double 1.000000e+00>, double %i.aj, i64 0
  %i.at = fmul <4 x double> %i.ar, %i.as
  %i.au = fmul <4 x double> %i.aq, %i.at          ; 5 uses
  %i.av = load double, ptr %2, align 8, !tbaa !8
  %i.aw = load double, ptr %4, align 8, !tbaa !8
  %i.ax = fsub double %i.av, %i.aw
  %i.ay = fmul double %i.ax, -3.125000e-02
  %i.az = extractelement <4 x double> %i.aq, i64 0
  %i.ba = fmul double %i.az, %i.ay                ; 3 uses
  %i.bb = extractelement <4 x double> %i.au, i64 0 ; 3 uses
  store double %i.bb, ptr %0, align 8, !tbaa !8
  store double 0.000000e+00, ptr %i.n, align 8, !tbaa !8
  store double %i.bb, ptr %i.o, align 8, !tbaa !8
  %i.bc = extractelement <4 x double> %i.au, i64 3 ; 2 uses
  store double %i.bc, ptr %i.p, align 8, !tbaa !8
  store double %i.bb, ptr %i.r, align 8, !tbaa !8
  %i.bd = extractelement <4 x double> %i.au, i64 2 ; 3 uses
  store double %i.bd, ptr %i.s, align 8, !tbaa !8
  store <2 x double> zeroinitializer, ptr %i.m, align 8, !tbaa !8
  %i.be = extractelement <4 x double> %i.au, i64 1 ; 2 uses
  store double %i.be, ptr %i.t, align 8, !tbaa !8
  store double 0.000000e+00, ptr %i.u, align 8, !tbaa !8
  store double %i.bd, ptr %i.v, align 8, !tbaa !8
  store double %i.bd, ptr %i.y, align 8, !tbaa !8
  store double %i.ba, ptr %i.z, align 8, !tbaa !8
  store double %i.bc, ptr %i.aa, align 8, !tbaa !8
  store <2 x double> zeroinitializer, ptr %i.ab, align 8, !tbaa !8
  store double %i.be, ptr %i.ac, align 8, !tbaa !8
  store double %i.ba, ptr %i.ad, align 8, !tbaa !8
  store <2 x double> zeroinitializer, ptr %i.w, align 8, !tbaa !8
  %i.bf = shufflevector <4 x double> <double 0.000000e+00, double poison, double 0.000000e+00, double poison>, <4 x double> %i.au, <4 x i32> <i32 0, i32 7, i32 2, i32 5>
  store <4 x double> %i.bf, ptr %i.q, align 8, !tbaa !8
  store <2 x double> zeroinitializer, ptr %i.x, align 8, !tbaa !8
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.bg = fadd double %i.a, 1.000000e+00
  %i.bh = fsub double %i.bg, %i.b
  %i.bi = fsub double %i.bh, %i.d
  %i.bj = tail call double @sqrt(double noundef %i.bi) #4
  %i.bk = load double, ptr %6, align 8, !tbaa !8
  %i.bl = load double, ptr %8, align 8, !tbaa !8
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
  %i.ch = load double, ptr %2, align 8, !tbaa !8
  %i.ci = load double, ptr %4, align 8, !tbaa !8
  %i.cj = fadd double %i.ch, %i.ci                ; 2 uses
  %i.ck = fmul double %i.cd, 2.500000e-01         ; 3 uses
  %i.cl = fmul double %i.cg, 3.125000e-02         ; 2 uses
  %i.cm = fmul double %i.cl, %i.cj                ; 2 uses
  %i.cn = load double, ptr %3, align 8, !tbaa !8
  %i.co = load double, ptr %7, align 8, !tbaa !8
  %i.cp = fadd double %i.cn, %i.co                ; 2 uses
  %i.cq = fmul double %i.cl, %i.cp                ; 2 uses
  %i.cr = fmul double %i.cd, 1.250000e-01
  store double %i.cr, ptr %0, align 8, !tbaa !8
  store double 0.000000e+00, ptr %i.bn, align 8, !tbaa !8
  store double %i.ce, ptr %i.bo, align 8, !tbaa !8
  store double %i.ce, ptr %i.br, align 8, !tbaa !8
  %i.cs = fmul double %i.cg, -3.125000e-02        ; 2 uses
  %i.ct = fmul double %i.cs, %i.cj
  store double %i.ct, ptr %i.bs, align 8, !tbaa !8
  store double %i.ck, ptr %i.bt, align 8, !tbaa !8
  store double %i.cm, ptr %i.bv, align 8, !tbaa !8
  store <2 x double> zeroinitializer, ptr %i.bp, align 8, !tbaa !8
  store double 0.000000e+00, ptr %i.bw, align 8, !tbaa !8
  store <2 x double> zeroinitializer, ptr %i.bq, align 8, !tbaa !8
  store double %i.cm, ptr %i.bx, align 8, !tbaa !8
  %i.cu = fmul double %i.cs, %i.cp
  store double %i.cu, ptr %i.by, align 8, !tbaa !8
  store <2 x double> zeroinitializer, ptr %i.bz, align 8, !tbaa !8
  %i.cv = insertelement <4 x double> <double 0.000000e+00, double poison, double 0.000000e+00, double poison>, double %i.ck, i64 1
  %i.cw = shufflevector <4 x double> %i.cv, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  store <4 x double> %i.cw, ptr %i.bu, align 8, !tbaa !8
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store double 0.000000e+00, ptr %i.cx, align 8, !tbaa !8
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 112
  store double %i.cq, ptr %i.cy, align 8, !tbaa !8
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 136
  store <2 x double> zeroinitializer, ptr %i.cz, align 8, !tbaa !8
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 160
  store double %i.ck, ptr %i.da, align 8, !tbaa !8
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 184
  store double 0.000000e+00, ptr %i.db, align 8, !tbaa !8
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.dc = fadd double %i.b, 1.000000e+00
  %i.dd = fsub double %i.dc, %i.a
  %i.de = fsub double %i.dd, %i.d
  %i.df = tail call double @sqrt(double noundef %i.de) #4
  %i.dg = fmul double %i.df, 2.000000e+00         ; 2 uses
  %i.dh = load double, ptr %7, align 8, !tbaa !8
  %i.di = load double, ptr %3, align 8, !tbaa !8
  %i.dj = fsub double %i.dh, %i.di
  %i.dk = fdiv double %i.dj, %i.dg
  %i.dl = fmul double %i.dg, 2.500000e-01         ; 2 uses
  %i.dm = tail call noundef double @pow(double noundef %i.dl, double noundef 3.000000e+00) #4
  %i.dn = load double, ptr %2, align 8, !tbaa !8
  %i.do = load double, ptr %4, align 8, !tbaa !8
  %i.dp = fadd double %i.dn, %i.do                ; 2 uses
  %i.dq = load double, ptr %6, align 8, !tbaa !8
  %i.dr = load double, ptr %8, align 8, !tbaa !8
  %i.ds = fadd double %i.dq, %i.dr                ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.dz = insertelement <2 x double> poison, double %i.dm, i64 0
  %i.ea = insertelement <2 x double> %i.dz, double %i.dl, i64 1
  %i.eb = fdiv <2 x double> splat (double 1.000000e+00), %i.ea ; 3 uses
  %i.ec = fmul <2 x double> %i.eb, <double 3.125000e-02, double 1.000000e+00> ; 2 uses
  %i.ed = insertelement <2 x double> <double poison, double -1.250000e-01>, double %i.dp, i64 0
  %i.ee = fmul <2 x double> %i.ec, %i.ed          ; 3 uses
  %i.ef = extractelement <2 x double> %i.ec, i64 0
  %i.eg = fmul double %i.ef, %i.ds                ; 2 uses
  store <2 x double> %i.ee, ptr %0, align 8, !tbaa !8
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x double> zeroinitializer, ptr %i.du, align 8, !tbaa !8
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ej = fmul <2 x double> %i.eb, <double -3.125000e-02, double 1.000000e+00> ; 2 uses
  %i.ek = insertelement <2 x double> <double poison, double 1.250000e-01>, double %i.dp, i64 0
  %i.el = fmul <2 x double> %i.ej, %i.ek
  store <2 x double> %i.el, ptr %i.dw, align 8, !tbaa !8
  store <2 x double> zeroinitializer, ptr %i.dx, align 8, !tbaa !8
  store <2 x double> zeroinitializer, ptr %i.dy, align 8, !tbaa !8
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 176
  store double 0.000000e+00, ptr %i.em, align 8, !tbaa !8
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.eo = extractelement <2 x double> %i.ee, i64 1
  store double %i.eo, ptr %i.en, align 8, !tbaa !8
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.eg, ptr %i.ep, align 8, !tbaa !8
  store <2 x double> zeroinitializer, ptr %i.eh, align 8, !tbaa !8
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double 0.000000e+00, ptr %i.eq, align 8, !tbaa !8
  store <2 x double> zeroinitializer, ptr %i.ei, align 8, !tbaa !8
  %i.er = extractelement <2 x double> %i.ej, i64 0
  %i.es = fmul double %i.er, %i.ds
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 112
  store double %i.es, ptr %i.et, align 8, !tbaa !8
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 160
  store <2 x double> zeroinitializer, ptr %i.ev, align 8, !tbaa !8
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ex = shufflevector <2 x double> %i.eb, <2 x double> %i.ee, <2 x i32> <i32 1, i32 2>
  %i.ey = fmul <2 x double> %i.ex, <double 2.500000e-01, double 1.000000e+00> ; 2 uses
  %i.ez = extractelement <2 x double> %i.ey, i64 0 ; 3 uses
  store double %i.ez, ptr %i.dt, align 8, !tbaa !8
  store double %i.ez, ptr %i.dv, align 8, !tbaa !8
  store double %i.ez, ptr %i.eu, align 8, !tbaa !8
  store <2 x double> %i.ey, ptr %i.ew, align 8, !tbaa !8
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.fa = fadd double %i.d, 1.000000e+00
  %i.fb = fsub double %i.fa, %i.a
  %i.fc = fsub double %i.fb, %i.b
  %i.fd = tail call double @sqrt(double noundef %i.fc) #4
  %i.fe = fmul double %i.fd, 2.000000e+00         ; 2 uses
  %i.ff = load double, ptr %2, align 8, !tbaa !8
  %i.fg = load double, ptr %4, align 8, !tbaa !8
  %i.fh = fsub double %i.ff, %i.fg
  %i.fi = fdiv double %i.fh, %i.fe
  %i.fj = fmul double %i.fe, 2.500000e-01         ; 2 uses
  %i.fk = tail call noundef double @pow(double noundef %i.fj, double noundef 3.000000e+00) #4
  %i.fl = load double, ptr %3, align 8, !tbaa !8
  %i.fm = load double, ptr %7, align 8, !tbaa !8
  %i.fn = fadd double %i.fl, %i.fm                ; 2 uses
  %i.fo = load double, ptr %6, align 8, !tbaa !8
  %i.fp = load double, ptr %8, align 8, !tbaa !8
  %i.fq = fadd double %i.fo, %i.fp                ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 168
  store double 0.000000e+00, ptr %i.fw, align 8, !tbaa !8
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x double> zeroinitializer, ptr %i.fr, align 8, !tbaa !8
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 56
  store <2 x double> zeroinitializer, ptr %i.ft, align 8, !tbaa !8
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ge = insertelement <2 x double> poison, double %i.fk, i64 0
  %i.gf = insertelement <2 x double> %i.ge, double %i.fj, i64 1
  %i.gg = fdiv <2 x double> splat (double 1.000000e+00), %i.gf ; 3 uses
  %i.gh = fmul <2 x double> %i.gg, <double 3.125000e-02, double 1.000000e+00> ; 2 uses
  %i.gi = extractelement <2 x double> %i.gh, i64 0
  %i.gj = fmul double %i.gi, %i.fn                ; 2 uses
  %i.gk = extractelement <2 x double> %i.gg, i64 1 ; 2 uses
  %i.gl = insertelement <2 x double> <double poison, double -1.250000e-01>, double %i.fq, i64 0
  %i.gm = fmul <2 x double> %i.gh, %i.gl          ; 2 uses
  store double %i.gj, ptr %0, align 8, !tbaa !8
  store double %i.gj, ptr %i.fu, align 8, !tbaa !8
  %i.gn = extractelement <2 x double> %i.gg, i64 0
  %i.go = fmul double %i.gn, -3.125000e-02        ; 2 uses
  %i.gp = fmul double %i.go, %i.fn
  store double %i.gp, ptr %i.fx, align 8, !tbaa !8
  %10 = fmul double %i.go, %i.fq
  store double %10, ptr %i.gd, align 8, !tbaa !8
  store <2 x double> %i.gm, ptr %i.fy, align 8, !tbaa !8
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double 0.000000e+00, ptr %11, align 8, !tbaa !8
  store <2 x double> zeroinitializer, ptr %i.fz, align 8, !tbaa !8
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 88
  store double 0.000000e+00, ptr %i.gq, align 8, !tbaa !8
  store <2 x double> %i.gm, ptr %i.ga, align 8, !tbaa !8
  %12 = fmul double %i.gk, 2.500000e-01           ; 3 uses
  store double %12, ptr %i.fs, align 8, !tbaa !8
  store double %12, ptr %i.gc, align 8, !tbaa !8
  %13 = insertelement <4 x double> <double 0.000000e+00, double poison, double 0.000000e+00, double poison>, double %12, i64 1
  %14 = shufflevector <4 x double> %13, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  store <4 x double> %14, ptr %i.fv, align 8, !tbaa !8
  store <2 x double> zeroinitializer, ptr %i.gb, align 8, !tbaa !8
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 184
  store double 0.000000e+00, ptr %i.gr, align 8, !tbaa !8
  %i.gs = fmul double %i.gk, 1.250000e-01
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %.sink = phi double [ %i.gs, %bb.g ], [ %i.eg, %bb.f ], [ %i.cq, %bb.e ], [ %i.ba, %bb.d ] ; 2 uses
  %.sink.i59 = phi double [ %i.fi, %bb.g ], [ %i.dk, %bb.f ], [ %i.cb, %bb.e ], [ %i.af, %bb.d ]
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 208
  store double %.sink, ptr %i.gt, align 8, !tbaa !8
  %i.gu = fcmp ugt double %.sink.i59, 0.000000e+00
  br i1 %i.gu, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.gv = load <2 x double>, ptr %0, align 8, !tbaa !10
  %i.gw = fneg <2 x double> %i.gv
  store <2 x double> %i.gw, ptr %0, align 8, !tbaa !10
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.gy = load <2 x double>, ptr %i.gx, align 8, !tbaa !10
  %i.gz = fneg <2 x double> %i.gy
  store <2 x double> %i.gz, ptr %i.gx, align 8, !tbaa !10
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.hb = load <2 x double>, ptr %i.ha, align 8, !tbaa !10
  %i.hc = fneg <2 x double> %i.hb
  store <2 x double> %i.hc, ptr %i.ha, align 8, !tbaa !10
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.he = load <2 x double>, ptr %i.hd, align 8, !tbaa !10
  %i.hf = fneg <2 x double> %i.he
  store <2 x double> %i.hf, ptr %i.hd, align 8, !tbaa !10
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.hh = load <2 x double>, ptr %i.hg, align 8, !tbaa !10
  %i.hi = fneg <2 x double> %i.hh
  store <2 x double> %i.hi, ptr %i.hg, align 8, !tbaa !10
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.hk = load <2 x double>, ptr %i.hj, align 8, !tbaa !10
  %i.hl = fneg <2 x double> %i.hk
  store <2 x double> %i.hl, ptr %i.hj, align 8, !tbaa !10
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.hn = load <2 x double>, ptr %i.hm, align 8, !tbaa !10
  %i.ho = fneg <2 x double> %i.hn
  store <2 x double> %i.ho, ptr %i.hm, align 8, !tbaa !10
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.hq = load <2 x double>, ptr %i.hp, align 8, !tbaa !10
  %i.hr = fneg <2 x double> %i.hq
  store <2 x double> %i.hr, ptr %i.hp, align 8, !tbaa !10
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ht = load <2 x double>, ptr %i.hs, align 8, !tbaa !10
  %i.hu = fneg <2 x double> %i.ht
  store <2 x double> %i.hu, ptr %i.hs, align 8, !tbaa !10
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.hw = load <2 x double>, ptr %i.hv, align 8, !tbaa !10
  %i.hx = fneg <2 x double> %i.hw
  store <2 x double> %i.hx, ptr %i.hv, align 8, !tbaa !10
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.hz = load <2 x double>, ptr %i.hy, align 8, !tbaa !10
  %i.ia = fneg <2 x double> %i.hz
  store <2 x double> %i.ia, ptr %i.hy, align 8, !tbaa !10
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.ic = load <2 x double>, ptr %i.ib, align 8, !tbaa !10
  %i.id = fneg <2 x double> %i.ic
  store <2 x double> %i.id, ptr %i.ib, align 8, !tbaa !10
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.if = load <2 x double>, ptr %i.ie, align 8, !tbaa !10
  %i.ig = fneg <2 x double> %i.if
  store <2 x double> %i.ig, ptr %i.ie, align 8, !tbaa !10
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ii = fneg double %.sink
  store double %i.ii, ptr %i.ih, align 8, !tbaa !8
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
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !6, i64 0}
!10 = !{!6, !6, i64 0}
end_hunk_1
