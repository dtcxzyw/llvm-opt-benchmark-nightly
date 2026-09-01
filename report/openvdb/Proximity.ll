Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/Proximity?download=true
inline.NumInlined: 84
inline.NumDeleted: 17
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.openvdb::v13_0::math::Vec3" = type { %"class.openvdb::v13_0::math::Tuple" }
%"class.openvdb::v13_0::math::Tuple" = type { [3 x double] }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN7openvdb5v13_04math29closestPointOnTriangleToPointERKNS1_4Vec3IdEES5_S5_S5_RS3_(ptr dead_on_unwind noalias nofree writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %5) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.a = load double, ptr %1, align 8, !tbaa !8   ; 13 uses
  %i.b = load double, ptr %2, align 8, !tbaa !8   ; 10 uses
  %i.c = fsub double %i.a, %i.b                   ; 3 uses
  %i.d = tail call noundef double @llvm.fabs.f64(double %i.c)
  %i.e = fcmp ogt double %i.d, f0x3E7AD7F29ABCAF48 ; 2 uses
  br i1 %i.e, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i.i, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i.i

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i.i: ; preds = %bb.a
  %i.f = tail call noundef double @llvm.fabs.f64(double %i.b)
  %i.g = tail call noundef double @llvm.fabs.f64(double %i.a)
  %i.h = fcmp ogt double %i.f, %i.g
  %..i.i.i = select i1 %i.h, double %i.b, double %i.a
  %i.i = fdiv double %i.c, %..i.i.i
  %i.j = tail call noundef double @llvm.fabs.f64(double %i.i)
  %i.k = fcmp ugt double %i.j, f0x3E7AD7F29ABCAF48
  br i1 %i.k, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i.i._ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit.thread_crit_edge, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i.i

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i.i._ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit.thread_crit_edge: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i.i
  %.sroa.10258.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.10258.0.copyload.pre = load double, ptr %.sroa.10258.0..sroa_idx.phi.trans.insert, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load double, ptr %.phi.trans.insert, align 8, !tbaa !8, !noalias !10
  br label %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit.thread

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i.i: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i.i, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load double, ptr %i.l, align 8, !tbaa !8 ; 11 uses
  %i.o = load double, ptr %i.m, align 8, !tbaa !8 ; 8 uses
  %i.p = fsub double %i.n, %i.o                   ; 2 uses
  %i.q = tail call noundef double @llvm.fabs.f64(double %i.p)
  %i.r = fcmp ogt double %i.q, f0x3E7AD7F29ABCAF48
  br i1 %i.r, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i.i, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i.i

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i.i: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i.i
  %i.s = tail call noundef double @llvm.fabs.f64(double %i.o)
  %i.t = tail call noundef double @llvm.fabs.f64(double %i.n)
  %i.u = fcmp ogt double %i.s, %i.t
  %..i5.i.i = select i1 %i.u, double %i.o, double %i.n
  %i.v = fdiv double %i.p, %..i5.i.i
  %i.w = tail call noundef double @llvm.fabs.f64(double %i.v)
  %i.x = fcmp ugt double %i.w, f0x3E7AD7F29ABCAF48
  br i1 %i.x, label %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit.thread, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i.i

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i.i: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i.i, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aa = load double, ptr %i.y, align 8, !tbaa !8 ; 6 uses
  %i.ab = load double, ptr %i.z, align 8, !tbaa !8 ; 3 uses
  %i.ac = fsub double %i.aa, %i.ab                ; 2 uses
  %i.ad = tail call noundef double @llvm.fabs.f64(double %i.ac)
  %i.ae = fcmp ogt double %i.ad, f0x3E7AD7F29ABCAF48
  br i1 %i.ae, label %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit, label %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit.thread267

_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i.i
  %i.af = tail call noundef double @llvm.fabs.f64(double %i.ab)
  %i.ag = tail call noundef double @llvm.fabs.f64(double %i.aa)
  %i.ah = fcmp ogt double %i.af, %i.ag
  %..i8.i.i = select i1 %i.ah, double %i.ab, double %i.aa
  %i.ai = fdiv double %i.ac, %..i8.i.i
  %i.aj = tail call noundef double @llvm.fabs.f64(double %i.ai)
  %i.ak = fcmp ugt double %i.aj, f0x3E7AD7F29ABCAF48
  br i1 %i.ak, label %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit.thread, label %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit.thread267

_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit.thread267: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i.i, %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit
  %i.al = load double, ptr %3, align 8, !tbaa !8  ; 3 uses
  %i.am = fsub double %i.a, %i.al                 ; 2 uses
  %i.an = tail call noundef double @llvm.fabs.f64(double %i.am)
  %i.ao = fcmp ogt double %i.an, f0x3E7AD7F29ABCAF48
  br i1 %i.ao, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i.i136, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i.i131

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i.i136: ; preds = %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit.thread267
  %i.ap = tail call noundef double @llvm.fabs.f64(double %i.al)
  %i.aq = tail call noundef double @llvm.fabs.f64(double %i.a)
  %i.ar = fcmp ogt double %i.ap, %i.aq
  %..i.i.i137 = select i1 %i.ar, double %i.al, double %i.a
  %i.as = fdiv double %i.am, %..i.i.i137
  %i.at = tail call noundef double @llvm.fabs.f64(double %i.as)
  %i.au = fcmp ugt double %i.at, f0x3E7AD7F29ABCAF48
  br i1 %i.au, label %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit.thread, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i.i131

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i.i131: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i.i136, %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit.thread267
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aw = load double, ptr %i.av, align 8, !tbaa !8 ; 3 uses
  %i.ax = fsub double %i.n, %i.aw                 ; 2 uses
  %i.ay = tail call noundef double @llvm.fabs.f64(double %i.ax)
  %i.az = fcmp ogt double %i.ay, f0x3E7AD7F29ABCAF48
  br i1 %i.az, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i.i134, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i.i132

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i.i134: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i.i131
  %i.ba = tail call noundef double @llvm.fabs.f64(double %i.aw)
  %i.bb = tail call noundef double @llvm.fabs.f64(double %i.n)
  %i.bc = fcmp ogt double %i.ba, %i.bb
  %..i5.i.i135 = select i1 %i.bc, double %i.aw, double %i.n
  %i.bd = fdiv double %i.ax, %..i5.i.i135
  %i.be = tail call noundef double @llvm.fabs.f64(double %i.bd)
  %i.bf = fcmp ugt double %i.be, f0x3E7AD7F29ABCAF48
  br i1 %i.bf, label %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit.thread, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i.i132

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i.i132: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i.i134, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i.i131
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !8 ; 3 uses
  %i.bi = fsub double %i.aa, %i.bh                ; 2 uses
  %i.bj = tail call noundef double @llvm.fabs.f64(double %i.bi)
  %i.bk = fcmp ogt double %i.bj, f0x3E7AD7F29ABCAF48
  br i1 %i.bk, label %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit138, label %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit138.thread268

_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit138: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i.i132
  %i.bl = tail call noundef double @llvm.fabs.f64(double %i.bh)
  %i.bm = tail call noundef double @llvm.fabs.f64(double %i.aa)
  %i.bn = fcmp ogt double %i.bl, %i.bm
  %..i8.i.i133 = select i1 %i.bn, double %i.bh, double %i.aa
  %i.bo = fdiv double %i.bi, %..i8.i.i133
  %i.bp = tail call noundef double @llvm.fabs.f64(double %i.bo)
  %i.bq = fcmp ugt double %i.bp, f0x3E7AD7F29ABCAF48
  br i1 %i.bq, label %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit.thread, label %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit138.thread268

_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit138.thread268: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i.i132, %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit138
  store double 1.000000e+00, ptr %5, align 8, !tbaa !8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.x

_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit.thread: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i.i._ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit.thread_crit_edge, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i.i136, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i.i134, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i.i, %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit138, %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit
  %i.br = phi double [ %.pre, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i.i._ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit.thread_crit_edge ], [ %i.n, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i.i136 ], [ %i.n, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i.i134 ], [ %i.n, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i.i ], [ %i.n, %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit138 ], [ %i.n, %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit ] ; 8 uses
  %.sroa.10258.0.copyload = phi double [ %.sroa.10258.0.copyload.pre, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i.i._ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit.thread_crit_edge ], [ %i.o, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i.i136 ], [ %i.o, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i.i134 ], [ %i.o, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i.i ], [ %i.o, %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit138 ], [ %i.o, %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit ] ; 8 uses
  %.sroa.17262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.sroa.17262.0.copyload = load double, ptr %.sroa.17262.0..sroa_idx, align 8 ; 8 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !8, !noalias !10 ; 8 uses
  %.sroa.10247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.7237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.10247.0.copyload = load double, ptr %.sroa.10247.0..sroa_idx, align 8 ; 6 uses
  %6 = load <3 x double>, ptr %3, align 8         ; 7 uses
  %7 = shufflevector <3 x double> %6, <3 x double> poison, <2 x i32> <i32 0, i32 poison>
  %i.bv = insertelement <2 x double> %7, double %i.b, i64 1
  %i.bw = insertelement <2 x double> poison, double %i.a, i64 0
  %i.bx = shufflevector <2 x double> %i.bw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.by = fsub <2 x double> %i.bv, %i.bx          ; 11 uses
  %8 = shufflevector <3 x double> %6, <3 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bz = insertelement <2 x double> %8, double %.sroa.10258.0.copyload, i64 1
  %i.ca = insertelement <2 x double> poison, double %i.br, i64 0
  %i.cb = shufflevector <2 x double> %i.ca, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cc = fsub <2 x double> %i.bz, %i.cb          ; 13 uses
  %9 = shufflevector <3 x double> %6, <3 x double> poison, <2 x i32> <i32 2, i32 poison>
  %i.cd = insertelement <2 x double> %9, double %.sroa.17262.0.copyload, i64 1
  %i.ce = insertelement <2 x double> poison, double %i.bu, i64 0
  %i.cf = shufflevector <2 x double> %i.ce, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cg = fsub <2 x double> %i.cd, %i.cf          ; 9 uses
  %10 = load <2 x double>, ptr %.sroa.7237.0..sroa_idx, align 8
  %11 = load <3 x double>, ptr %4, align 8        ; 2 uses
  %12 = shufflevector <3 x double> %11, <3 x double> poison, <3 x i32> <i32 2, i32 0, i32 poison>
  %13 = shufflevector <2 x double> %10, <2 x double> poison, <3 x i32> <i32 poison, i32 poison, i32 0>
  %14 = shufflevector <3 x double> %12, <3 x double> %13, <3 x i32> <i32 0, i32 1, i32 5> ; 2 uses
  %15 = insertelement <3 x double> poison, double %i.bu, i64 0
  %16 = insertelement <3 x double> %15, double %i.a, i64 1
  %17 = insertelement <3 x double> %16, double %i.br, i64 2
  %18 = fsub <3 x double> %14, %17                ; 3 uses
  %19 = shufflevector <3 x double> %18, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.ch = fmul <2 x double> %i.cc, %19
  %20 = shufflevector <3 x double> %18, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ci = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.by, <2 x double> %20, <2 x double> %i.ch)
  %i.cj = shufflevector <3 x double> %18, <3 x double> poison, <2 x i32> zeroinitializer
  %i.ck = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cg, <2 x double> %i.cj, <2 x double> %i.ci) ; 6 uses
  br i1 %i.e, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i.i144, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i.i139

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i.i144: ; preds = %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit.thread
  %i.cl = tail call noundef double @llvm.fabs.f64(double %i.b)
  %i.cm = tail call noundef double @llvm.fabs.f64(double %i.a)
  %i.cn = fcmp ogt double %i.cl, %i.cm
  %..i.i.i145 = select i1 %i.cn, double %i.b, double %i.a
  %i.co = fdiv double %i.c, %..i.i.i145
  %i.cp = tail call noundef double @llvm.fabs.f64(double %i.co)
  %i.cq = fcmp ugt double %i.cp, f0x3E7AD7F29ABCAF48
  br i1 %i.cq, label %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit146.thread, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i.i139

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i.i139: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i.i144, %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit.thread
  %i.cr = fsub double %i.br, %.sroa.10258.0.copyload ; 2 uses
  %i.cs = tail call noundef double @llvm.fabs.f64(double %i.cr)
  %i.ct = fcmp ogt double %i.cs, f0x3E7AD7F29ABCAF48
  br i1 %i.ct, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i.i142, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i.i140

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i.i142: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i.i139
  %i.cu = tail call noundef double @llvm.fabs.f64(double %.sroa.10258.0.copyload)
  %i.cv = tail call noundef double @llvm.fabs.f64(double %i.br)
  %i.cw = fcmp ogt double %i.cu, %i.cv
  %..i5.i.i143 = select i1 %i.cw, double %.sroa.10258.0.copyload, double %i.br
  %i.cx = fdiv double %i.cr, %..i5.i.i143
  %i.cy = tail call noundef double @llvm.fabs.f64(double %i.cx)
  %i.cz = fcmp ugt double %i.cy, f0x3E7AD7F29ABCAF48
  br i1 %i.cz, label %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit146.thread, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i.i140

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i.i140: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i.i142, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i.i139
  %i.da = fsub double %i.bu, %.sroa.17262.0.copyload ; 2 uses
  %i.db = tail call noundef double @llvm.fabs.f64(double %i.da)
  %i.dc = fcmp ogt double %i.db, f0x3E7AD7F29ABCAF48
  br i1 %i.dc, label %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit146, label %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit146.thread269

_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit146: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i.i140
  %i.dd = tail call noundef double @llvm.fabs.f64(double %.sroa.17262.0.copyload)
  %i.de = tail call noundef double @llvm.fabs.f64(double %i.bu)
  %i.df = fcmp ogt double %i.dd, %i.de
  %..i8.i.i141 = select i1 %i.df, double %.sroa.17262.0.copyload, double %i.bu
  %i.dg = fdiv double %i.da, %..i8.i.i141
  %i.dh = tail call noundef double @llvm.fabs.f64(double %i.dg)
  %i.di = fcmp ugt double %i.dh, f0x3E7AD7F29ABCAF48
  br i1 %i.di, label %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit146.thread, label %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit146.thread269

_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit146.thread269: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i.i140, %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit146
  %i.dj = extractelement <2 x double> %i.ck, i64 0 ; 3 uses
  %i.dk = fcmp ugt double %i.dj, 0.000000e+00
  br i1 %i.dk, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit146.thread269
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %_ZN7openvdb5v13_04math28closestPointOnSegmentToPointERKNS1_4Vec3IdEES5_S5_Rd.exit

bb.c:                                             ; preds = %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit146.thread269
  %foldExtExtBinop = fmul <2 x double> %i.cc, %i.cc
  %i.dl = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.dm = extractelement <2 x double> %i.by, i64 0 ; 2 uses
  %i.dn = tail call double @llvm.fmuladd.f64(double %i.dm, double %i.dm, double %i.dl)
  %i.do = extractelement <2 x double> %i.cg, i64 0 ; 3 uses
  %i.dp = tail call noundef double @llvm.fmuladd.f64(double %i.do, double %i.do, double %i.dn) ; 2 uses
  %i.dq = fcmp ult double %i.dj, %i.dp
  br i1 %i.dq, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %3, i64 24, i1 false)
  br label %_ZN7openvdb5v13_04math28closestPointOnSegmentToPointERKNS1_4Vec3IdEES5_S5_Rd.exit

bb.e:                                             ; preds = %bb.c
  %i.dr = fdiv double %i.dj, %i.dp                ; 3 uses
  %i.ds = fmul double %i.do, %i.dr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false)
  %21 = shufflevector <2 x double> %i.by, <2 x double> %i.cc, <2 x i32> <i32 0, i32 2>
  %i.dt = insertelement <2 x double> poison, double %i.dr, i64 0
  %i.du = shufflevector <2 x double> %i.dt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dv = fmul <2 x double> %21, %i.du
  %i.dw = load <2 x double>, ptr %0, align 8, !tbaa !8, !alias.scope !13
  %i.dx = fadd <2 x double> %i.dv, %i.dw
  store <2 x double> %i.dx, ptr %0, align 8, !tbaa !8, !alias.scope !13
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !8, !alias.scope !13
  %i.ea = fadd double %i.ds, %i.dz
  store double %i.ea, ptr %i.dy, align 8, !tbaa !8, !alias.scope !13
  br label %_ZN7openvdb5v13_04math28closestPointOnSegmentToPointERKNS1_4Vec3IdEES5_S5_Rd.exit

_ZN7openvdb5v13_04math28closestPointOnSegmentToPointERKNS1_4Vec3IdEES5_S5_Rd.exit: ; preds = %bb.b, %bb.d, %bb.e
  %.0 = phi double [ %i.dr, %bb.e ], [ 1.000000e+00, %bb.d ], [ 0.000000e+00, %bb.b ] ; 2 uses
  %i.eb = fsub double 1.000000e+00, %.0
  store double %i.eb, ptr %5, align 8, !tbaa !8
  %i.ec = getelementptr inbounds nuw i8, ptr %5, i64 16
  store double %.0, ptr %i.ec, align 8, !tbaa !8
  br label %bb.x

_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit146.thread: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i.i144, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i.i142, %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit146
  %i.ed = extractelement <3 x double> %6, i64 0   ; 6 uses
  %i.ee = fsub double %i.a, %i.ed                 ; 2 uses
  %i.ef = tail call noundef double @llvm.fabs.f64(double %i.ee)
  %i.eg = fcmp ogt double %i.ef, f0x3E7AD7F29ABCAF48
  br i1 %i.eg, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i.i152, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i.i147

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i.i152: ; preds = %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit146.thread
  %i.eh = tail call noundef double @llvm.fabs.f64(double %i.ed)
  %i.ei = tail call noundef double @llvm.fabs.f64(double %i.a)
  %i.ej = fcmp ogt double %i.eh, %i.ei
  %..i.i.i153 = select i1 %i.ej, double %i.ed, double %i.a
  %i.ek = fdiv double %i.ee, %..i.i.i153
  %i.el = tail call noundef double @llvm.fabs.f64(double %i.ek)
  %i.em = fcmp ugt double %i.el, f0x3E7AD7F29ABCAF48
  br i1 %i.em, label %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit154.thread, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i.i147

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i.i147: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i.i152, %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit146.thread
  %i.en = fsub double %i.br, %.sroa.10247.0.copyload ; 2 uses
  %i.eo = tail call noundef double @llvm.fabs.f64(double %i.en)
  %i.ep = fcmp ogt double %i.eo, f0x3E7AD7F29ABCAF48
  br i1 %i.ep, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i.i150, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i.i148

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i.i150: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i.i147
  %i.eq = tail call noundef double @llvm.fabs.f64(double %.sroa.10247.0.copyload)
  %i.er = tail call noundef double @llvm.fabs.f64(double %i.br)
  %i.es = fcmp ogt double %i.eq, %i.er
  %..i5.i.i151 = select i1 %i.es, double %.sroa.10247.0.copyload, double %i.br
  %i.et = fdiv double %i.en, %..i5.i.i151
  %i.eu = tail call noundef double @llvm.fabs.f64(double %i.et)
  %i.ev = fcmp ugt double %i.eu, f0x3E7AD7F29ABCAF48
  br i1 %i.ev, label %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit154.thread, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i.i148

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i.i148: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i.i150, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i.i147
  %22 = extractelement <3 x double> %6, i64 2     ; 3 uses
  %i.ew = fsub double %i.bu, %22                  ; 2 uses
  %i.ex = tail call noundef double @llvm.fabs.f64(double %i.ew)
  %i.ey = fcmp ogt double %i.ex, f0x3E7AD7F29ABCAF48
  br i1 %i.ey, label %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit154, label %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit154.thread270

_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit154: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i.i148
  %i.ez = tail call noundef double @llvm.fabs.f64(double %22)
  %i.fa = tail call noundef double @llvm.fabs.f64(double %i.bu)
  %i.fb = fcmp ogt double %i.ez, %i.fa
  %..i8.i.i149 = select i1 %i.fb, double %22, double %i.bu
  %i.fc = fdiv double %i.ew, %..i8.i.i149
  %i.fd = tail call noundef double @llvm.fabs.f64(double %i.fc)
  %i.fe = fcmp ugt double %i.fd, f0x3E7AD7F29ABCAF48
  br i1 %i.fe, label %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit154.thread, label %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit154.thread270

_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit154.thread: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i.i152, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i.i150, %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit154
  %i.ff = fsub double %i.b, %i.ed                 ; 2 uses
  %i.fg = tail call noundef double @llvm.fabs.f64(double %i.ff)
  %i.fh = fcmp ogt double %i.fg, f0x3E7AD7F29ABCAF48
  br i1 %i.fh, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i.i160, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i.i155

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i.i160: ; preds = %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit154.thread
  %i.fi = tail call noundef double @llvm.fabs.f64(double %i.ed)
  %i.fj = tail call noundef double @llvm.fabs.f64(double %i.b)
  %i.fk = fcmp ogt double %i.fi, %i.fj
  %..i.i.i161 = select i1 %i.fk, double %i.ed, double %i.b
  %i.fl = fdiv double %i.ff, %..i.i.i161
  %i.fm = tail call noundef double @llvm.fabs.f64(double %i.fl)
  %i.fn = fcmp ugt double %i.fm, f0x3E7AD7F29ABCAF48
  br i1 %i.fn, label %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit162.thread, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i.i155

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i.i155: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i.i160, %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit154.thread
  %i.fo = fsub double %.sroa.10258.0.copyload, %.sroa.10247.0.copyload ; 2 uses
  %i.fp = tail call noundef double @llvm.fabs.f64(double %i.fo)
  %i.fq = fcmp ogt double %i.fp, f0x3E7AD7F29ABCAF48
  br i1 %i.fq, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i.i158, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i.i156

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i.i158: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i.i155
  %i.fr = tail call noundef double @llvm.fabs.f64(double %.sroa.10247.0.copyload)
  %i.fs = tail call noundef double @llvm.fabs.f64(double %.sroa.10258.0.copyload)
  %i.ft = fcmp ogt double %i.fr, %i.fs
  %..i5.i.i159 = select i1 %i.ft, double %.sroa.10247.0.copyload, double %.sroa.10258.0.copyload
  %i.fu = fdiv double %i.fo, %..i5.i.i159
  %i.fv = tail call noundef double @llvm.fabs.f64(double %i.fu)
  %i.fw = fcmp ugt double %i.fv, f0x3E7AD7F29ABCAF48
  br i1 %i.fw, label %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit162.thread, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i.i156

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i.i156: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i.i158, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i.i155
  %23 = extractelement <3 x double> %6, i64 2     ; 3 uses
  %i.fx = fsub double %.sroa.17262.0.copyload, %23 ; 2 uses
  %i.fy = tail call noundef double @llvm.fabs.f64(double %i.fx)
  %i.fz = fcmp ogt double %i.fy, f0x3E7AD7F29ABCAF48
  br i1 %i.fz, label %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit162, label %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit154.thread270

_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit162: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i.i156
  %i.ga = tail call noundef double @llvm.fabs.f64(double %23)
  %i.gb = tail call noundef double @llvm.fabs.f64(double %.sroa.17262.0.copyload)
  %i.gc = fcmp ogt double %i.ga, %i.gb
  %..i8.i.i157 = select i1 %i.gc, double %23, double %.sroa.17262.0.copyload
  %i.gd = fdiv double %i.fx, %..i8.i.i157
  %i.ge = tail call noundef double @llvm.fabs.f64(double %i.gd)
  %i.gf = fcmp ugt double %i.ge, f0x3E7AD7F29ABCAF48
  br i1 %i.gf, label %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit162.thread, label %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit154.thread270

_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit154.thread270: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i.i156, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i.i148, %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit162, %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit154
  %i.gg = extractelement <2 x double> %i.ck, i64 1 ; 3 uses
  %i.gh = fcmp ugt double %i.gg, 0.000000e+00
  br i1 %i.gh, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit154.thread270
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %_ZN7openvdb5v13_04math28closestPointOnSegmentToPointERKNS1_4Vec3IdEES5_S5_Rd.exit173

bb.g:                                             ; preds = %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit154.thread270
  %foldExtExtBinop283 = fmul <2 x double> %i.cc, %i.cc
  %i.gi = extractelement <2 x double> %foldExtExtBinop283, i64 1
  %i.gj = extractelement <2 x double> %i.by, i64 1 ; 2 uses
  %i.gk = tail call double @llvm.fmuladd.f64(double %i.gj, double %i.gj, double %i.gi)
  %i.gl = extractelement <2 x double> %i.cg, i64 1 ; 3 uses
  %i.gm = tail call noundef double @llvm.fmuladd.f64(double %i.gl, double %i.gl, double %i.gk) ; 2 uses
  %i.gn = fcmp ult double %i.gg, %i.gm
  br i1 %i.gn, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, i64 24, i1 false)
  br label %_ZN7openvdb5v13_04math28closestPointOnSegmentToPointERKNS1_4Vec3IdEES5_S5_Rd.exit173

bb.i:                                             ; preds = %bb.g
  %i.go = fdiv double %i.gg, %i.gm                ; 3 uses
  %i.gp = fmul double %i.gl, %i.go
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false)
  %24 = shufflevector <2 x double> %i.by, <2 x double> %i.cc, <2 x i32> <i32 1, i32 3>
  %i.gq = insertelement <2 x double> poison, double %i.go, i64 0
  %i.gr = shufflevector <2 x double> %i.gq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gs = fmul <2 x double> %24, %i.gr
  %i.gt = load <2 x double>, ptr %0, align 8, !tbaa !8, !alias.scope !18
  %i.gu = fadd <2 x double> %i.gs, %i.gt
  store <2 x double> %i.gu, ptr %0, align 8, !tbaa !8, !alias.scope !18
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !8, !alias.scope !18
  %i.gx = fadd double %i.gp, %i.gw
  store double %i.gx, ptr %i.gv, align 8, !tbaa !8, !alias.scope !18
  br label %_ZN7openvdb5v13_04math28closestPointOnSegmentToPointERKNS1_4Vec3IdEES5_S5_Rd.exit173

_ZN7openvdb5v13_04math28closestPointOnSegmentToPointERKNS1_4Vec3IdEES5_S5_Rd.exit173: ; preds = %bb.f, %bb.h, %bb.i
  %.0266 = phi double [ %i.go, %bb.i ], [ 1.000000e+00, %bb.h ], [ 0.000000e+00, %bb.f ] ; 2 uses
  %i.gy = fsub double 1.000000e+00, %.0266
  store double %i.gy, ptr %5, align 8, !tbaa !8
  %i.gz = getelementptr inbounds nuw i8, ptr %5, i64 8
  store double %.0266, ptr %i.gz, align 8, !tbaa !8
  br label %bb.x

_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit162.thread: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i.i160, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i.i158, %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit162
  %i.ha = fcmp ugt <2 x double> %i.ck, zeroinitializer
  %i.hb = bitcast <2 x i1> %i.ha to i2
  %or.cond = icmp eq i2 %i.hb, 0
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit162.thread
  store double 1.000000e+00, ptr %5, align 8, !tbaa !8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.x

bb.k:                                             ; preds = %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit162.thread
  %25 = insertelement <3 x double> poison, double %.sroa.17262.0.copyload, i64 0
  %26 = insertelement <3 x double> %25, double %i.b, i64 1
  %27 = insertelement <3 x double> %26, double %.sroa.10258.0.copyload, i64 2
  %28 = fsub <3 x double> %14, %27                ; 3 uses
  %29 = shufflevector <3 x double> %28, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.hc = fmul <2 x double> %i.cc, %29
  %30 = shufflevector <3 x double> %28, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.by, <2 x double> %30, <2 x double> %i.hc)
  %i.he = shufflevector <3 x double> %28, <3 x double> poison, <2 x i32> zeroinitializer
  %i.hf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cg, <2 x double> %i.he, <2 x double> %i.hd) ; 2 uses
  %i.hg = extractelement <2 x double> %i.hf, i64 1 ; 7 uses
  %i.hh = fcmp ult double %i.hg, 0.000000e+00
  %i.hi = extractelement <2 x double> %i.hf, i64 0 ; 4 uses
  %i.hj = fcmp ugt double %i.hi, %i.hg
  %or.cond129 = or i1 %i.hh, %i.hj
  br i1 %or.cond129, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.hk = getelementptr inbounds nuw i8, ptr %5, i64 8
  store double 1.000000e+00, ptr %i.hk, align 8, !tbaa !8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  br label %bb.x

bb.m:                                             ; preds = %bb.k
  %i.hl = extractelement <2 x double> %i.ck, i64 0 ; 4 uses
  %i.hm = fneg double %i.hl
  %i.hn = fmul double %i.hg, %i.hm
  %i.ho = extractelement <2 x double> %i.ck, i64 1 ; 5 uses
  %i.hp = tail call double @llvm.fmuladd.f64(double %i.ho, double %i.hi, double %i.hn) ; 3 uses
  %i.hq = fcmp ole double %i.hp, 0.000000e+00
  %i.hr = fcmp oge double %i.ho, 0.000000e+00
  %or.cond3 = and i1 %i.hr, %i.hq
  %i.hs = fcmp ole double %i.hg, 0.000000e+00
  %or.cond5 = and i1 %i.hs, %or.cond3
  br i1 %or.cond5, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %31 = fsub double %i.ho, %i.hg
  %i.ht = fdiv double %i.ho, %31                  ; 5 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %5, i64 8
  store double %i.ht, ptr %i.hu, align 8, !tbaa !8
  %i.hv = fsub double 1.000000e+00, %i.ht
  store double %i.hv, ptr %5, align 8, !tbaa !8
  %i.hw = extractelement <2 x double> %i.by, i64 1
  %i.hx = fmul double %i.hw, %i.ht
  %i.hy = extractelement <2 x double> %i.cc, i64 1
  %i.hz = fmul double %i.hy, %i.ht
  %i.ia = extractelement <2 x double> %i.cg, i64 1
  %i.ib = fmul double %i.ia, %i.ht
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.ic = load double, ptr %0, align 8, !tbaa !8, !alias.scope !23
  %i.id = fadd double %i.hx, %i.ic
  store double %i.id, ptr %0, align 8, !tbaa !8, !alias.scope !23
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.if = load double, ptr %i.ie, align 8, !tbaa !8, !alias.scope !23
  %i.ig = fadd double %i.hz, %i.if
  store double %i.ig, ptr %i.ie, align 8, !tbaa !8, !alias.scope !23
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ii = load double, ptr %i.ih, align 8, !tbaa !8, !alias.scope !23
  %i.ij = fadd double %i.ib, %i.ii
  store double %i.ij, ptr %i.ih, align 8, !tbaa !8, !alias.scope !23
  br label %bb.x

bb.o:                                             ; preds = %bb.m
  %32 = fsub <3 x double> %11, %6                 ; 3 uses
  %33 = shufflevector <3 x double> %32, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ik = fmul <2 x double> %i.cc, %33
  %i.il = shufflevector <3 x double> %32, <3 x double> poison, <2 x i32> zeroinitializer
  %i.im = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.by, <2 x double> %i.il, <2 x double> %i.ik)
  %34 = shufflevector <3 x double> %32, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.in = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cg, <2 x double> %34, <2 x double> %i.im) ; 3 uses
  %i.io = extractelement <2 x double> %i.in, i64 0 ; 6 uses
  %i.ip = fcmp ult double %i.io, 0.000000e+00
  %i.iq = extractelement <2 x double> %i.in, i64 1 ; 4 uses
  %i.ir = fcmp ugt double %i.iq, %i.io
  %or.cond130 = or i1 %i.ip, %i.ir
  br i1 %or.cond130, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.is = getelementptr inbounds nuw i8, ptr %5, i64 16
  store double 1.000000e+00, ptr %i.is, align 8, !tbaa !8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  br label %bb.x

bb.q:                                             ; preds = %bb.o
  %i.it = fneg double %i.io
  %i.iu = fmul double %i.ho, %i.it
  %i.iv = tail call double @llvm.fmuladd.f64(double %i.iq, double %i.hl, double %i.iu) ; 3 uses
  %i.iw = fcmp ole double %i.iv, 0.000000e+00
  %i.ix = fcmp oge double %i.hl, 0.000000e+00
  %or.cond7 = and i1 %i.ix, %i.iw
  %i.iy = fcmp ole double %i.io, 0.000000e+00
  %or.cond9 = and i1 %i.iy, %or.cond7
  br i1 %or.cond9, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %foldExtExtBinop287 = fsub <2 x double> %i.ck, %i.in
  %35 = extractelement <2 x double> %foldExtExtBinop287, i64 0
  %i.iz = fdiv double %i.hl, %35                  ; 5 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %5, i64 16
  store double %i.iz, ptr %i.ja, align 8, !tbaa !8
  %i.jb = fsub double 1.000000e+00, %i.iz
  store double %i.jb, ptr %5, align 8, !tbaa !8
  %i.jc = extractelement <2 x double> %i.by, i64 0
  %i.jd = fmul double %i.jc, %i.iz
  %i.je = extractelement <2 x double> %i.cc, i64 0
  %i.jf = fmul double %i.je, %i.iz
  %i.jg = extractelement <2 x double> %i.cg, i64 0
  %i.jh = fmul double %i.jg, %i.iz
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.ji = load double, ptr %0, align 8, !tbaa !8, !alias.scope !26
  %i.jj = fadd double %i.jd, %i.ji
  store double %i.jj, ptr %0, align 8, !tbaa !8, !alias.scope !26
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.jl = load double, ptr %i.jk, align 8, !tbaa !8, !alias.scope !26
  %i.jm = fadd double %i.jf, %i.jl
  store double %i.jm, ptr %i.jk, align 8, !tbaa !8, !alias.scope !26
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.jo = load double, ptr %i.jn, align 8, !tbaa !8, !alias.scope !26
  %i.jp = fadd double %i.jh, %i.jo
  store double %i.jp, ptr %i.jn, align 8, !tbaa !8, !alias.scope !26
  br label %bb.x

bb.s:                                             ; preds = %bb.q
  %i.jq = fneg double %i.hi
  %i.jr = fmul double %i.iq, %i.jq
  %i.js = tail call double @llvm.fmuladd.f64(double %i.hg, double %i.io, double %i.jr) ; 2 uses
  %i.jt = fcmp ugt double %i.js, 0.000000e+00
  br i1 %i.jt, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ju = fsub double %i.hi, %i.hg                ; 3 uses
  %i.jv = fcmp ult double %i.ju, 0.000000e+00
  br i1 %i.jv, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.jw = fsub double %i.iq, %i.io                ; 2 uses
  %i.jx = fcmp ult double %i.jw, 0.000000e+00
  br i1 %i.jx, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.jy = fadd double %i.ju, %i.jw
  %i.jz = fdiv double %i.ju, %i.jy                ; 4 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %5, i64 16
  store double %i.jz, ptr %i.ka, align 8, !tbaa !8
  %i.kb = fsub double 1.000000e+00, %i.jz
  %i.kc = getelementptr inbounds nuw i8, ptr %5, i64 8
  store double %i.kb, ptr %i.kc, align 8, !tbaa !8
  %.sroa.8195.0.copyload = load double, ptr %.sroa.17.0..sroa_idx, align 8
  %i.kd = load double, ptr %.sroa.17262.0..sroa_idx, align 8, !tbaa !8, !noalias !29
  %i.ke = fsub double %.sroa.8195.0.copyload, %i.kd
  %i.kf = fmul double %i.jz, %i.ke
  %i.kg = load <2 x double>, ptr %3, align 8
  %i.kh = load <2 x double>, ptr %2, align 8, !tbaa !8, !noalias !29
  %i.ki = fsub <2 x double> %i.kg, %i.kh
  %i.kj = insertelement <2 x double> poison, double %i.jz, i64 0
  %i.kk = shufflevector <2 x double> %i.kj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kl = fmul <2 x double> %i.kk, %i.ki
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.km = load <2 x double>, ptr %0, align 8, !tbaa !8, !alias.scope !32
  %i.kn = fadd <2 x double> %i.kl, %i.km
  store <2 x double> %i.kn, ptr %0, align 8, !tbaa !8, !alias.scope !32
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.kp = load double, ptr %i.ko, align 8, !tbaa !8, !alias.scope !32
  %i.kq = fadd double %i.kf, %i.kp
  store double %i.kq, ptr %i.ko, align 8, !tbaa !8, !alias.scope !32
  br label %bb.x

bb.w:                                             ; preds = %bb.u, %bb.t, %bb.s
  %i.kr = fadd double %i.js, %i.iv
  %i.ks = fadd double %i.hp, %i.kr
  %i.kt = fdiv double 1.000000e+00, %i.ks         ; 2 uses
  %i.ku = fmul double %i.hp, %i.kt                ; 5 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %5, i64 16
  store double %i.ku, ptr %i.kv, align 8, !tbaa !8
  %i.kw = fmul double %i.iv, %i.kt                ; 5 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store double %i.kw, ptr %i.kx, align 8, !tbaa !8
  %i.ky = fsub double 1.000000e+00, %i.kw
  %i.kz = fsub double %i.ky, %i.ku
  store double %i.kz, ptr %5, align 8, !tbaa !8
  %i.la = extractelement <2 x double> %i.by, i64 1
  %i.lb = fmul double %i.la, %i.kw
  %i.lc = extractelement <2 x double> %i.cc, i64 1
  %i.ld = fmul double %i.lc, %i.kw
  %i.le = extractelement <2 x double> %i.cg, i64 1
  %i.lf = fmul double %i.le, %i.kw
  %.sroa.0183.0.copyload = load double, ptr %1, align 8
  %.sroa.6185.0.copyload = load double, ptr %i.bs, align 8
  %.sroa.8.0.copyload = load double, ptr %i.bt, align 8
  %i.lg = fadd double %i.lb, %.sroa.0183.0.copyload
  %i.lh = fadd double %i.ld, %.sroa.6185.0.copyload
  %i.li = fadd double %i.lf, %.sroa.8.0.copyload
  %i.lj = extractelement <2 x double> %i.by, i64 0
  %i.lk = fmul double %i.lj, %i.ku
  %i.ll = extractelement <2 x double> %i.cc, i64 0
  %i.lm = fmul double %i.ll, %i.ku
  %i.ln = extractelement <2 x double> %i.cg, i64 0
  %i.lo = fmul double %i.ln, %i.ku
  %.sroa.6185.0..sroa_idx186 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.8.0..sroa_idx188 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.lp = fadd double %i.lk, %i.lg
  store double %i.lp, ptr %0, align 8, !tbaa !8, !alias.scope !35
  %i.lq = fadd double %i.lm, %i.lh
  store double %i.lq, ptr %.sroa.6185.0..sroa_idx186, align 8, !tbaa !8, !alias.scope !35
  %i.lr = fadd double %i.lo, %i.li
  store double %i.lr, ptr %.sroa.8.0..sroa_idx188, align 8, !tbaa !8, !alias.scope !35
  br label %bb.x

bb.x:                                             ; preds = %_ZN7openvdb5v13_04math28closestPointOnSegmentToPointERKNS1_4Vec3IdEES5_S5_Rd.exit, %_ZN7openvdb5v13_04math28closestPointOnSegmentToPointERKNS1_4Vec3IdEES5_S5_Rd.exit173, %bb.j, %bb.p, %bb.v, %bb.w, %bb.r, %bb.n, %bb.l, %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit138.thread268
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN7openvdb5v13_04math28closestPointOnSegmentToPointERKNS1_4Vec3IdEES5_S5_Rd(ptr dead_on_unwind noalias nofree writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %4) local_unnamed_addr #0 {
bb.a:
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.15.0.copyload = load double, ptr %.sroa.15.0..sroa_idx, align 8
  %i.a = load <2 x double>, ptr %2, align 8
  %i.b = load <2 x double>, ptr %1, align 8, !tbaa !8, !noalias !38 ; 2 uses
  %i.c = fsub <2 x double> %i.a, %i.b             ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load double, ptr %i.d, align 8, !tbaa !8, !noalias !38 ; 2 uses
  %i.f = fsub double %.sroa.15.0.copyload, %i.e   ; 4 uses
  %.sroa.925.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.925.0.copyload = load double, ptr %.sroa.925.0..sroa_idx, align 8
  %i.g = load <2 x double>, ptr %3, align 8
  %i.h = fsub <2 x double> %i.g, %i.b             ; 2 uses
  %i.i = fsub double %.sroa.925.0.copyload, %i.e
  %foldExtExtBinop = fmul <2 x double> %i.c, %i.h
  %i.j = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.k = extractelement <2 x double> %i.c, i64 0  ; 3 uses
  %i.l = extractelement <2 x double> %i.h, i64 0
  %i.m = tail call double @llvm.fmuladd.f64(double %i.l, double %i.k, double %i.j)
  %i.n = tail call noundef double @llvm.fmuladd.f64(double %i.i, double %i.f, double %i.m) ; 3 uses
  %i.o = fcmp ugt double %i.n, 0.000000e+00
  br i1 %i.o, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store double 0.000000e+00, ptr %4, align 8, !tbaa !8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %foldExtExtBinop40 = fmul <2 x double> %i.c, %i.c
  %i.p = extractelement <2 x double> %foldExtExtBinop40, i64 1
  %i.q = tail call double @llvm.fmuladd.f64(double %i.k, double %i.k, double %i.p)
  %i.r = tail call noundef double @llvm.fmuladd.f64(double %i.f, double %i.f, double %i.q) ; 2 uses
  %i.s = fcmp ult double %i.n, %i.r
  br i1 %i.s, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store double 1.000000e+00, ptr %4, align 8, !tbaa !8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.t = fdiv double %i.n, %i.r                   ; 3 uses
  store double %i.t, ptr %4, align 8, !tbaa !8
  %i.u = fmul double %i.f, %i.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.v = insertelement <2 x double> poison, double %i.t, i64 0
  %i.w = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> zeroinitializer
  %i.x = fmul <2 x double> %i.c, %i.w
  %i.y = load <2 x double>, ptr %0, align 8, !tbaa !8, !alias.scope !41
  %i.z = fadd <2 x double> %i.x, %i.y
  store <2 x double> %i.z, ptr %0, align 8, !tbaa !8, !alias.scope !41
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !8, !alias.scope !41
  %i.ac = fadd double %i.u, %i.ab
  store double %i.ac, ptr %i.aa, align 8, !tbaa !8, !alias.scope !41
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !6, i64 0}
!10 = !{!11}
!11 = distinct !{!11, !12, !"_ZN7openvdb5v13_04mathmiIddEENS1_4Vec3INS1_7promoteIT_T0_NSt9enable_ifIXaasr7openvdbE15is_arithmetic_vIS5_Esr7openvdbE15is_arithmetic_vIS6_EEvE4typeEE4typeEEERKNS3_IS5_EERKNS3_IS6_EE: argument 0"}
!12 = distinct !{!12, !"_ZN7openvdb5v13_04mathmiIddEENS1_4Vec3INS1_7promoteIT_T0_NSt9enable_ifIXaasr7openvdbE15is_arithmetic_vIS5_Esr7openvdbE15is_arithmetic_vIS6_EEvE4typeEE4typeEEERKNS3_IS5_EERKNS3_IS6_EE"}
!13 = !{!14, !16}
!14 = distinct !{!14, !15, !"_ZN7openvdb5v13_04mathplIddEENS1_4Vec3INS1_7promoteIT_T0_NSt9enable_ifIXaasr7openvdbE15is_arithmetic_vIS5_Esr7openvdbE15is_arithmetic_vIS6_EEvE4typeEE4typeEEERKNS3_IS5_EERKNS3_IS6_EE: argument 0"}
!15 = distinct !{!15, !"_ZN7openvdb5v13_04mathplIddEENS1_4Vec3INS1_7promoteIT_T0_NSt9enable_ifIXaasr7openvdbE15is_arithmetic_vIS5_Esr7openvdbE15is_arithmetic_vIS6_EEvE4typeEE4typeEEERKNS3_IS5_EERKNS3_IS6_EE"}
!16 = distinct !{!16, !17, !"_ZN7openvdb5v13_04math28closestPointOnSegmentToPointERKNS1_4Vec3IdEES5_S5_Rd: argument 0"}
!17 = distinct !{!17, !"_ZN7openvdb5v13_04math28closestPointOnSegmentToPointERKNS1_4Vec3IdEES5_S5_Rd"}
!18 = !{!19, !21}
!19 = distinct !{!19, !20, !"_ZN7openvdb5v13_04mathplIddEENS1_4Vec3INS1_7promoteIT_T0_NSt9enable_ifIXaasr7openvdbE15is_arithmetic_vIS5_Esr7openvdbE15is_arithmetic_vIS6_EEvE4typeEE4typeEEERKNS3_IS5_EERKNS3_IS6_EE: argument 0"}
!20 = distinct !{!20, !"_ZN7openvdb5v13_04mathplIddEENS1_4Vec3INS1_7promoteIT_T0_NSt9enable_ifIXaasr7openvdbE15is_arithmetic_vIS5_Esr7openvdbE15is_arithmetic_vIS6_EEvE4typeEE4typeEEERKNS3_IS5_EERKNS3_IS6_EE"}
!21 = distinct !{!21, !22, !"_ZN7openvdb5v13_04math28closestPointOnSegmentToPointERKNS1_4Vec3IdEES5_S5_Rd: argument 0"}
!22 = distinct !{!22, !"_ZN7openvdb5v13_04math28closestPointOnSegmentToPointERKNS1_4Vec3IdEES5_S5_Rd"}
!23 = !{!24}
!24 = distinct !{!24, !25, !"_ZN7openvdb5v13_04mathplIddEENS1_4Vec3INS1_7promoteIT_T0_NSt9enable_ifIXaasr7openvdbE15is_arithmetic_vIS5_Esr7openvdbE15is_arithmetic_vIS6_EEvE4typeEE4typeEEERKNS3_IS5_EERKNS3_IS6_EE: argument 0"}
!25 = distinct !{!25, !"_ZN7openvdb5v13_04mathplIddEENS1_4Vec3INS1_7promoteIT_T0_NSt9enable_ifIXaasr7openvdbE15is_arithmetic_vIS5_Esr7openvdbE15is_arithmetic_vIS6_EEvE4typeEE4typeEEERKNS3_IS5_EERKNS3_IS6_EE"}
!26 = !{!27}
!27 = distinct !{!27, !28, !"_ZN7openvdb5v13_04mathplIddEENS1_4Vec3INS1_7promoteIT_T0_NSt9enable_ifIXaasr7openvdbE15is_arithmetic_vIS5_Esr7openvdbE15is_arithmetic_vIS6_EEvE4typeEE4typeEEERKNS3_IS5_EERKNS3_IS6_EE: argument 0"}
!28 = distinct !{!28, !"_ZN7openvdb5v13_04mathplIddEENS1_4Vec3INS1_7promoteIT_T0_NSt9enable_ifIXaasr7openvdbE15is_arithmetic_vIS5_Esr7openvdbE15is_arithmetic_vIS6_EEvE4typeEE4typeEEERKNS3_IS5_EERKNS3_IS6_EE"}
!29 = !{!30}
!30 = distinct !{!30, !31, !"_ZN7openvdb5v13_04mathmiIddEENS1_4Vec3INS1_7promoteIT_T0_NSt9enable_ifIXaasr7openvdbE15is_arithmetic_vIS5_Esr7openvdbE15is_arithmetic_vIS6_EEvE4typeEE4typeEEERKNS3_IS5_EERKNS3_IS6_EE: argument 0"}
!31 = distinct !{!31, !"_ZN7openvdb5v13_04mathmiIddEENS1_4Vec3INS1_7promoteIT_T0_NSt9enable_ifIXaasr7openvdbE15is_arithmetic_vIS5_Esr7openvdbE15is_arithmetic_vIS6_EEvE4typeEE4typeEEERKNS3_IS5_EERKNS3_IS6_EE"}
!32 = !{!33}
!33 = distinct !{!33, !34, !"_ZN7openvdb5v13_04mathplIddEENS1_4Vec3INS1_7promoteIT_T0_NSt9enable_ifIXaasr7openvdbE15is_arithmetic_vIS5_Esr7openvdbE15is_arithmetic_vIS6_EEvE4typeEE4typeEEERKNS3_IS5_EERKNS3_IS6_EE: argument 0"}
!34 = distinct !{!34, !"_ZN7openvdb5v13_04mathplIddEENS1_4Vec3INS1_7promoteIT_T0_NSt9enable_ifIXaasr7openvdbE15is_arithmetic_vIS5_Esr7openvdbE15is_arithmetic_vIS6_EEvE4typeEE4typeEEERKNS3_IS5_EERKNS3_IS6_EE"}
!35 = !{!36}
!36 = distinct !{!36, !37, !"_ZN7openvdb5v13_04mathplIddEENS1_4Vec3INS1_7promoteIT_T0_NSt9enable_ifIXaasr7openvdbE15is_arithmetic_vIS5_Esr7openvdbE15is_arithmetic_vIS6_EEvE4typeEE4typeEEERKNS3_IS5_EERKNS3_IS6_EE: argument 0"}
!37 = distinct !{!37, !"_ZN7openvdb5v13_04mathplIddEENS1_4Vec3INS1_7promoteIT_T0_NSt9enable_ifIXaasr7openvdbE15is_arithmetic_vIS5_Esr7openvdbE15is_arithmetic_vIS6_EEvE4typeEE4typeEEERKNS3_IS5_EERKNS3_IS6_EE"}
!38 = !{!39}
!39 = distinct !{!39, !40, !"_ZN7openvdb5v13_04mathmiIddEENS1_4Vec3INS1_7promoteIT_T0_NSt9enable_ifIXaasr7openvdbE15is_arithmetic_vIS5_Esr7openvdbE15is_arithmetic_vIS6_EEvE4typeEE4typeEEERKNS3_IS5_EERKNS3_IS6_EE: argument 0"}
!40 = distinct !{!40, !"_ZN7openvdb5v13_04mathmiIddEENS1_4Vec3INS1_7promoteIT_T0_NSt9enable_ifIXaasr7openvdbE15is_arithmetic_vIS5_Esr7openvdbE15is_arithmetic_vIS6_EEvE4typeEE4typeEEERKNS3_IS5_EERKNS3_IS6_EE"}
!41 = !{!42}
!42 = distinct !{!42, !43, !"_ZN7openvdb5v13_04mathplIddEENS1_4Vec3INS1_7promoteIT_T0_NSt9enable_ifIXaasr7openvdbE15is_arithmetic_vIS5_Esr7openvdbE15is_arithmetic_vIS6_EEvE4typeEE4typeEEERKNS3_IS5_EERKNS3_IS6_EE: argument 0"}
!43 = distinct !{!43, !"_ZN7openvdb5v13_04mathplIddEENS1_4Vec3INS1_7promoteIT_T0_NSt9enable_ifIXaasr7openvdbE15is_arithmetic_vIS5_Esr7openvdbE15is_arithmetic_vIS6_EEvE4typeEE4typeEEERKNS3_IS5_EERKNS3_IS6_EE"}
end_hunk_0
