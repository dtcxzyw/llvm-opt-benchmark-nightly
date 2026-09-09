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
  %i.a = load double, ptr %1, align 8, !tbaa !9   ; 13 uses
  %i.b = load double, ptr %2, align 8, !tbaa !9   ; 10 uses
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
  %.pre = load double, ptr %.phi.trans.insert, align 8, !tbaa !9, !noalias !30
  br label %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit.thread

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i.i: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i.i, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load double, ptr %i.l, align 8, !tbaa !9 ; 11 uses
  %i.o = load double, ptr %i.m, align 8, !tbaa !9 ; 8 uses
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
  %i.aa = load double, ptr %i.y, align 8, !tbaa !9 ; 6 uses
  %i.ab = load double, ptr %i.z, align 8, !tbaa !9 ; 3 uses
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
  %i.al = load double, ptr %3, align 8, !tbaa !9  ; 3 uses
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
  %i.aw = load double, ptr %i.av, align 8, !tbaa !9 ; 3 uses
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
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !9 ; 3 uses
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
  store double 1.000000e+00, ptr %5, align 8, !tbaa !9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.x

_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit.thread: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i.i._ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit.thread_crit_edge, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i.i136, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i.i134, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i.i, %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit138, %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit
  %i.br = phi double [ %.pre, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i.i._ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit.thread_crit_edge ], [ %i.n, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i.i136 ], [ %i.n, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i.i134 ], [ %i.n, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i.i ], [ %i.n, %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit138 ], [ %i.n, %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit ] ; 8 uses
  %.sroa.10258.0.copyload = phi double [ %.sroa.10258.0.copyload.pre, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i.i._ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit.thread_crit_edge ], [ %i.o, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i.i136 ], [ %i.o, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i.i134 ], [ %i.o, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i.i ], [ %i.o, %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit138 ], [ %i.o, %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit ] ; 8 uses
  %.sroa.17262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.sroa.17262.0.copyload = load double, ptr %.sroa.17262.0..sroa_idx, align 8 ; 8 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !9, !noalias !30 ; 8 uses
  %.sroa.10247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.7237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.10247.0.copyload = load double, ptr %.sroa.10247.0..sroa_idx, align 8 ; 6 uses
  %i.bv = load <3 x double>, ptr %3, align 8      ; 7 uses
  %i.bw = shufflevector <3 x double> %i.bv, <3 x double> poison, <2 x i32> <i32 0, i32 poison>
  %i.bx = insertelement <2 x double> %i.bw, double %i.b, i64 1
  %i.by = insertelement <2 x double> poison, double %i.a, i64 0
  %i.bz = shufflevector <2 x double> %i.by, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ca = fsub <2 x double> %i.bx, %i.bz          ; 11 uses
  %i.cb = shufflevector <3 x double> %i.bv, <3 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cc = insertelement <2 x double> %i.cb, double %.sroa.10258.0.copyload, i64 1
  %i.cd = insertelement <2 x double> poison, double %i.br, i64 0
  %i.ce = shufflevector <2 x double> %i.cd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cf = fsub <2 x double> %i.cc, %i.ce          ; 13 uses
  %i.cg = shufflevector <3 x double> %i.bv, <3 x double> poison, <2 x i32> <i32 2, i32 poison>
  %i.ch = insertelement <2 x double> %i.cg, double %.sroa.17262.0.copyload, i64 1
  %i.ci = insertelement <2 x double> poison, double %i.bu, i64 0
  %i.cj = shufflevector <2 x double> %i.ci, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ck = fsub <2 x double> %i.ch, %i.cj          ; 9 uses
  %.sroa.7237.0.copyload = load double, ptr %.sroa.7237.0..sroa_idx, align 8 ; 2 uses
  %i.cl = load <3 x double>, ptr %4, align 8      ; 3 uses
  %6 = extractelement <3 x double> %i.cl, i64 0   ; 2 uses
  %7 = extractelement <3 x double> %i.cl, i64 2   ; 2 uses
  %8 = fsub double %.sroa.7237.0.copyload, %i.br
  %9 = fsub double %6, %i.a
  %10 = fsub double %7, %i.bu
  %11 = insertelement <2 x double> poison, double %8, i64 0
  %12 = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> zeroinitializer
  %13 = fmul <2 x double> %i.cf, %12
  %14 = insertelement <2 x double> poison, double %9, i64 0
  %15 = shufflevector <2 x double> %14, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ca, <2 x double> %15, <2 x double> %13)
  %16 = insertelement <2 x double> poison, double %10, i64 0
  %i.cn = shufflevector <2 x double> %16, <2 x double> poison, <2 x i32> zeroinitializer
  %i.co = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ck, <2 x double> %i.cn, <2 x double> %i.cm) ; 6 uses
  br i1 %i.e, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i.i144, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i.i139

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i.i144: ; preds = %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit.thread
  %i.cp = tail call noundef double @llvm.fabs.f64(double %i.b)
  %i.cq = tail call noundef double @llvm.fabs.f64(double %i.a)
  %i.cr = fcmp ogt double %i.cp, %i.cq
  %..i.i.i145 = select i1 %i.cr, double %i.b, double %i.a
  %i.cs = fdiv double %i.c, %..i.i.i145
  %i.ct = tail call noundef double @llvm.fabs.f64(double %i.cs)
  %i.cu = fcmp ugt double %i.ct, f0x3E7AD7F29ABCAF48
  br i1 %i.cu, label %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit146.thread, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i.i139

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i.i139: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i.i144, %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit.thread
  %i.cv = fsub double %i.br, %.sroa.10258.0.copyload ; 2 uses
  %i.cw = tail call noundef double @llvm.fabs.f64(double %i.cv)
  %i.cx = fcmp ogt double %i.cw, f0x3E7AD7F29ABCAF48
  br i1 %i.cx, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i.i142, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i.i140

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i.i142: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i.i139
  %i.cy = tail call noundef double @llvm.fabs.f64(double %.sroa.10258.0.copyload)
  %i.cz = tail call noundef double @llvm.fabs.f64(double %i.br)
  %i.da = fcmp ogt double %i.cy, %i.cz
  %..i5.i.i143 = select i1 %i.da, double %.sroa.10258.0.copyload, double %i.br
  %i.db = fdiv double %i.cv, %..i5.i.i143
  %i.dc = tail call noundef double @llvm.fabs.f64(double %i.db)
  %i.dd = fcmp ugt double %i.dc, f0x3E7AD7F29ABCAF48
  br i1 %i.dd, label %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit146.thread, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i.i140

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i.i140: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i.i142, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i.i139
  %i.de = fsub double %i.bu, %.sroa.17262.0.copyload ; 2 uses
  %i.df = tail call noundef double @llvm.fabs.f64(double %i.de)
  %i.dg = fcmp ogt double %i.df, f0x3E7AD7F29ABCAF48
  br i1 %i.dg, label %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit146, label %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit146.thread269

_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit146: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i.i140
  %i.dh = tail call noundef double @llvm.fabs.f64(double %.sroa.17262.0.copyload)
  %i.di = tail call noundef double @llvm.fabs.f64(double %i.bu)
  %i.dj = fcmp ogt double %i.dh, %i.di
  %..i8.i.i141 = select i1 %i.dj, double %.sroa.17262.0.copyload, double %i.bu
  %i.dk = fdiv double %i.de, %..i8.i.i141
  %i.dl = tail call noundef double @llvm.fabs.f64(double %i.dk)
  %i.dm = fcmp ugt double %i.dl, f0x3E7AD7F29ABCAF48
  br i1 %i.dm, label %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit146.thread, label %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit146.thread269

_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit146.thread269: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i.i140, %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit146
  %i.dn = extractelement <2 x double> %i.co, i64 0 ; 3 uses
  %i.do = fcmp ugt double %i.dn, 0.000000e+00
  br i1 %i.do, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit146.thread269
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %_ZN7openvdb5v13_04math28closestPointOnSegmentToPointERKNS1_4Vec3IdEES5_S5_Rd.exit

bb.c:                                             ; preds = %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit146.thread269
  %foldExtExtBinop = fmul <2 x double> %i.cf, %i.cf
  %i.dp = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.dq = extractelement <2 x double> %i.ca, i64 0 ; 2 uses
  %i.dr = tail call double @llvm.fmuladd.f64(double %i.dq, double %i.dq, double %i.dp)
  %i.ds = extractelement <2 x double> %i.ck, i64 0 ; 3 uses
  %i.dt = tail call noundef double @llvm.fmuladd.f64(double %i.ds, double %i.ds, double %i.dr) ; 2 uses
  %i.du = fcmp ult double %i.dn, %i.dt
  br i1 %i.du, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %3, i64 24, i1 false)
  br label %_ZN7openvdb5v13_04math28closestPointOnSegmentToPointERKNS1_4Vec3IdEES5_S5_Rd.exit

bb.e:                                             ; preds = %bb.c
  %i.dv = fdiv double %i.dn, %i.dt                ; 3 uses
  %i.dw = fmul double %i.ds, %i.dv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.dx = shufflevector <2 x double> %i.ca, <2 x double> %i.cf, <2 x i32> <i32 0, i32 2>
  %i.dy = insertelement <2 x double> poison, double %i.dv, i64 0
  %i.dz = shufflevector <2 x double> %i.dy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ea = fmul <2 x double> %i.dx, %i.dz
  %i.eb = load <2 x double>, ptr %0, align 8, !tbaa !9, !alias.scope !31
  %i.ec = fadd <2 x double> %i.ea, %i.eb
  store <2 x double> %i.ec, ptr %0, align 8, !tbaa !9, !alias.scope !31
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !9, !alias.scope !31
  %i.ef = fadd double %i.dw, %i.ee
  store double %i.ef, ptr %i.ed, align 8, !tbaa !9, !alias.scope !31
  br label %_ZN7openvdb5v13_04math28closestPointOnSegmentToPointERKNS1_4Vec3IdEES5_S5_Rd.exit

_ZN7openvdb5v13_04math28closestPointOnSegmentToPointERKNS1_4Vec3IdEES5_S5_Rd.exit: ; preds = %bb.b, %bb.d, %bb.e
  %.0 = phi double [ %i.dv, %bb.e ], [ 1.000000e+00, %bb.d ], [ 0.000000e+00, %bb.b ] ; 2 uses
  %i.eg = fsub double 1.000000e+00, %.0
  store double %i.eg, ptr %5, align 8, !tbaa !9
  %i.eh = getelementptr inbounds nuw i8, ptr %5, i64 16
  store double %.0, ptr %i.eh, align 8, !tbaa !9
  br label %bb.x

_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit146.thread: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i.i144, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i.i142, %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit146
  %i.ei = extractelement <3 x double> %i.bv, i64 0 ; 6 uses
  %i.ej = fsub double %i.a, %i.ei                 ; 2 uses
  %i.ek = tail call noundef double @llvm.fabs.f64(double %i.ej)
  %i.el = fcmp ogt double %i.ek, f0x3E7AD7F29ABCAF48
  br i1 %i.el, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i.i152, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i.i147

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i.i152: ; preds = %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit146.thread
  %i.em = tail call noundef double @llvm.fabs.f64(double %i.ei)
  %i.en = tail call noundef double @llvm.fabs.f64(double %i.a)
  %i.eo = fcmp ogt double %i.em, %i.en
  %..i.i.i153 = select i1 %i.eo, double %i.ei, double %i.a
  %i.ep = fdiv double %i.ej, %..i.i.i153
  %i.eq = tail call noundef double @llvm.fabs.f64(double %i.ep)
  %i.er = fcmp ugt double %i.eq, f0x3E7AD7F29ABCAF48
  br i1 %i.er, label %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit154.thread, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i.i147

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i.i147: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i.i152, %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit146.thread
  %i.es = fsub double %i.br, %.sroa.10247.0.copyload ; 2 uses
  %i.et = tail call noundef double @llvm.fabs.f64(double %i.es)
  %i.eu = fcmp ogt double %i.et, f0x3E7AD7F29ABCAF48
  br i1 %i.eu, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i.i150, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i.i148

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i.i150: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i.i147
  %i.ev = tail call noundef double @llvm.fabs.f64(double %.sroa.10247.0.copyload)
  %i.ew = tail call noundef double @llvm.fabs.f64(double %i.br)
  %i.ex = fcmp ogt double %i.ev, %i.ew
  %..i5.i.i151 = select i1 %i.ex, double %.sroa.10247.0.copyload, double %i.br
  %i.ey = fdiv double %i.es, %..i5.i.i151
  %i.ez = tail call noundef double @llvm.fabs.f64(double %i.ey)
  %i.fa = fcmp ugt double %i.ez, f0x3E7AD7F29ABCAF48
  br i1 %i.fa, label %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit154.thread, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i.i148

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i.i148: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i.i150, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i.i147
  %i.fb = extractelement <3 x double> %i.bv, i64 2 ; 3 uses
  %i.fc = fsub double %i.bu, %i.fb                ; 2 uses
  %i.fd = tail call noundef double @llvm.fabs.f64(double %i.fc)
  %i.fe = fcmp ogt double %i.fd, f0x3E7AD7F29ABCAF48
  br i1 %i.fe, label %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit154, label %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit154.thread270

_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit154: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i.i148
  %i.ff = tail call noundef double @llvm.fabs.f64(double %i.fb)
  %i.fg = tail call noundef double @llvm.fabs.f64(double %i.bu)
  %i.fh = fcmp ogt double %i.ff, %i.fg
  %..i8.i.i149 = select i1 %i.fh, double %i.fb, double %i.bu
  %i.fi = fdiv double %i.fc, %..i8.i.i149
  %i.fj = tail call noundef double @llvm.fabs.f64(double %i.fi)
  %i.fk = fcmp ugt double %i.fj, f0x3E7AD7F29ABCAF48
  br i1 %i.fk, label %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit154.thread, label %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit154.thread270

_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit154.thread: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i.i152, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i.i150, %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit154
  %i.fl = fsub double %i.b, %i.ei                 ; 2 uses
  %i.fm = tail call noundef double @llvm.fabs.f64(double %i.fl)
  %i.fn = fcmp ogt double %i.fm, f0x3E7AD7F29ABCAF48
  br i1 %i.fn, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i.i160, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i.i155

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i.i160: ; preds = %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit154.thread
  %i.fo = tail call noundef double @llvm.fabs.f64(double %i.ei)
  %i.fp = tail call noundef double @llvm.fabs.f64(double %i.b)
  %i.fq = fcmp ogt double %i.fo, %i.fp
  %..i.i.i161 = select i1 %i.fq, double %i.ei, double %i.b
  %i.fr = fdiv double %i.fl, %..i.i.i161
  %i.fs = tail call noundef double @llvm.fabs.f64(double %i.fr)
  %i.ft = fcmp ugt double %i.fs, f0x3E7AD7F29ABCAF48
  br i1 %i.ft, label %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit162.thread, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i.i155

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i.i155: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i.i160, %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit154.thread
  %i.fu = fsub double %.sroa.10258.0.copyload, %.sroa.10247.0.copyload ; 2 uses
  %i.fv = tail call noundef double @llvm.fabs.f64(double %i.fu)
  %i.fw = fcmp ogt double %i.fv, f0x3E7AD7F29ABCAF48
  br i1 %i.fw, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i.i158, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i.i156

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i.i158: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i.i155
  %i.fx = tail call noundef double @llvm.fabs.f64(double %.sroa.10247.0.copyload)
  %i.fy = tail call noundef double @llvm.fabs.f64(double %.sroa.10258.0.copyload)
  %i.fz = fcmp ogt double %i.fx, %i.fy
  %..i5.i.i159 = select i1 %i.fz, double %.sroa.10247.0.copyload, double %.sroa.10258.0.copyload
  %i.ga = fdiv double %i.fu, %..i5.i.i159
  %i.gb = tail call noundef double @llvm.fabs.f64(double %i.ga)
  %i.gc = fcmp ugt double %i.gb, f0x3E7AD7F29ABCAF48
  br i1 %i.gc, label %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit162.thread, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i.i156

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i.i156: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i.i158, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i.i155
  %i.gd = extractelement <3 x double> %i.bv, i64 2 ; 3 uses
  %i.ge = fsub double %.sroa.17262.0.copyload, %i.gd ; 2 uses
  %i.gf = tail call noundef double @llvm.fabs.f64(double %i.ge)
  %i.gg = fcmp ogt double %i.gf, f0x3E7AD7F29ABCAF48
  br i1 %i.gg, label %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit162, label %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit154.thread270

_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit162: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i.i156
  %i.gh = tail call noundef double @llvm.fabs.f64(double %i.gd)
  %i.gi = tail call noundef double @llvm.fabs.f64(double %.sroa.17262.0.copyload)
  %i.gj = fcmp ogt double %i.gh, %i.gi
  %..i8.i.i157 = select i1 %i.gj, double %i.gd, double %.sroa.17262.0.copyload
  %i.gk = fdiv double %i.ge, %..i8.i.i157
  %i.gl = tail call noundef double @llvm.fabs.f64(double %i.gk)
  %i.gm = fcmp ugt double %i.gl, f0x3E7AD7F29ABCAF48
  br i1 %i.gm, label %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit162.thread, label %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit154.thread270

_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit154.thread270: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i.i156, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i.i148, %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit162, %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit154
  %i.gn = extractelement <2 x double> %i.co, i64 1 ; 3 uses
  %i.go = fcmp ugt double %i.gn, 0.000000e+00
  br i1 %i.go, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit154.thread270
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %_ZN7openvdb5v13_04math28closestPointOnSegmentToPointERKNS1_4Vec3IdEES5_S5_Rd.exit173

bb.g:                                             ; preds = %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit154.thread270
  %foldExtExtBinop283 = fmul <2 x double> %i.cf, %i.cf
  %i.gp = extractelement <2 x double> %foldExtExtBinop283, i64 1
  %i.gq = extractelement <2 x double> %i.ca, i64 1 ; 2 uses
  %i.gr = tail call double @llvm.fmuladd.f64(double %i.gq, double %i.gq, double %i.gp)
  %i.gs = extractelement <2 x double> %i.ck, i64 1 ; 3 uses
  %i.gt = tail call noundef double @llvm.fmuladd.f64(double %i.gs, double %i.gs, double %i.gr) ; 2 uses
  %i.gu = fcmp ult double %i.gn, %i.gt
  br i1 %i.gu, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, i64 24, i1 false)
  br label %_ZN7openvdb5v13_04math28closestPointOnSegmentToPointERKNS1_4Vec3IdEES5_S5_Rd.exit173

bb.i:                                             ; preds = %bb.g
  %i.gv = fdiv double %i.gn, %i.gt                ; 3 uses
  %i.gw = fmul double %i.gs, %i.gv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.gx = shufflevector <2 x double> %i.ca, <2 x double> %i.cf, <2 x i32> <i32 1, i32 3>
  %i.gy = insertelement <2 x double> poison, double %i.gv, i64 0
  %i.gz = shufflevector <2 x double> %i.gy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ha = fmul <2 x double> %i.gx, %i.gz
  %i.hb = load <2 x double>, ptr %0, align 8, !tbaa !9, !alias.scope !32
  %i.hc = fadd <2 x double> %i.ha, %i.hb
  store <2 x double> %i.hc, ptr %0, align 8, !tbaa !9, !alias.scope !32
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.he = load double, ptr %i.hd, align 8, !tbaa !9, !alias.scope !32
  %i.hf = fadd double %i.gw, %i.he
  store double %i.hf, ptr %i.hd, align 8, !tbaa !9, !alias.scope !32
  br label %_ZN7openvdb5v13_04math28closestPointOnSegmentToPointERKNS1_4Vec3IdEES5_S5_Rd.exit173

_ZN7openvdb5v13_04math28closestPointOnSegmentToPointERKNS1_4Vec3IdEES5_S5_Rd.exit173: ; preds = %bb.f, %bb.h, %bb.i
  %.0266 = phi double [ %i.gv, %bb.i ], [ 1.000000e+00, %bb.h ], [ 0.000000e+00, %bb.f ] ; 2 uses
  %i.hg = fsub double 1.000000e+00, %.0266
  store double %i.hg, ptr %5, align 8, !tbaa !9
  %i.hh = getelementptr inbounds nuw i8, ptr %5, i64 8
  store double %.0266, ptr %i.hh, align 8, !tbaa !9
  br label %bb.x

_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit162.thread: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i.i160, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i.i158, %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit162
  %i.hi = fcmp ugt <2 x double> %i.co, zeroinitializer
  %i.hj = bitcast <2 x i1> %i.hi to i2
  %or.cond = icmp eq i2 %i.hj, 0
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit162.thread
  store double 1.000000e+00, ptr %5, align 8, !tbaa !9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.x

bb.k:                                             ; preds = %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit162.thread
  %17 = fsub double %.sroa.7237.0.copyload, %.sroa.10258.0.copyload
  %18 = fsub double %6, %i.b
  %19 = fsub double %7, %.sroa.17262.0.copyload
  %20 = insertelement <2 x double> poison, double %17, i64 0
  %21 = shufflevector <2 x double> %20, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hk = fmul <2 x double> %i.cf, %21
  %22 = insertelement <2 x double> poison, double %18, i64 0
  %23 = shufflevector <2 x double> %22, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ca, <2 x double> %23, <2 x double> %i.hk)
  %24 = insertelement <2 x double> poison, double %19, i64 0
  %i.hm = shufflevector <2 x double> %24, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ck, <2 x double> %i.hm, <2 x double> %i.hl) ; 2 uses
  %i.ho = extractelement <2 x double> %i.hn, i64 1 ; 7 uses
  %i.hp = fcmp ult double %i.ho, 0.000000e+00
  %i.hq = extractelement <2 x double> %i.hn, i64 0 ; 4 uses
  %i.hr = fcmp ugt double %i.hq, %i.ho
  %or.cond129 = or i1 %i.hp, %i.hr
  br i1 %or.cond129, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.hs = getelementptr inbounds nuw i8, ptr %5, i64 8
  store double 1.000000e+00, ptr %i.hs, align 8, !tbaa !9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  br label %bb.x

bb.m:                                             ; preds = %bb.k
  %i.ht = extractelement <2 x double> %i.co, i64 0 ; 4 uses
  %i.hu = fneg double %i.ht
  %i.hv = fmul double %i.ho, %i.hu
  %i.hw = extractelement <2 x double> %i.co, i64 1 ; 5 uses
  %i.hx = tail call double @llvm.fmuladd.f64(double %i.hw, double %i.hq, double %i.hv) ; 3 uses
  %i.hy = fcmp ole double %i.hx, 0.000000e+00
  %i.hz = fcmp oge double %i.hw, 0.000000e+00
  %or.cond3 = and i1 %i.hz, %i.hy
  %i.ia = fcmp ole double %i.ho, 0.000000e+00
  %or.cond5 = and i1 %i.ia, %or.cond3
  br i1 %or.cond5, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ib = fsub double %i.hw, %i.ho
  %i.ic = fdiv double %i.hw, %i.ib                ; 5 uses
  %i.id = getelementptr inbounds nuw i8, ptr %5, i64 8
  store double %i.ic, ptr %i.id, align 8, !tbaa !9
  %i.ie = fsub double 1.000000e+00, %i.ic
  store double %i.ie, ptr %5, align 8, !tbaa !9
  %i.if = extractelement <2 x double> %i.ca, i64 1
  %i.ig = fmul double %i.if, %i.ic
  %i.ih = extractelement <2 x double> %i.cf, i64 1
  %i.ii = fmul double %i.ih, %i.ic
  %i.ij = extractelement <2 x double> %i.ck, i64 1
  %i.ik = fmul double %i.ij, %i.ic
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.il = load double, ptr %0, align 8, !tbaa !9, !alias.scope !33
  %i.im = fadd double %i.ig, %i.il
  store double %i.im, ptr %0, align 8, !tbaa !9, !alias.scope !33
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.io = load double, ptr %i.in, align 8, !tbaa !9, !alias.scope !33
  %i.ip = fadd double %i.ii, %i.io
  store double %i.ip, ptr %i.in, align 8, !tbaa !9, !alias.scope !33
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ir = load double, ptr %i.iq, align 8, !tbaa !9, !alias.scope !33
  %i.is = fadd double %i.ik, %i.ir
  store double %i.is, ptr %i.iq, align 8, !tbaa !9, !alias.scope !33
  br label %bb.x

bb.o:                                             ; preds = %bb.m
  %i.it = fsub <3 x double> %i.cl, %i.bv          ; 3 uses
  %i.iu = shufflevector <3 x double> %i.it, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.iv = fmul <2 x double> %i.cf, %i.iu
  %i.iw = shufflevector <3 x double> %i.it, <3 x double> poison, <2 x i32> zeroinitializer
  %i.ix = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ca, <2 x double> %i.iw, <2 x double> %i.iv)
  %i.iy = shufflevector <3 x double> %i.it, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.iz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ck, <2 x double> %i.iy, <2 x double> %i.ix) ; 3 uses
  %i.ja = extractelement <2 x double> %i.iz, i64 0 ; 6 uses
  %i.jb = fcmp ult double %i.ja, 0.000000e+00
  %i.jc = extractelement <2 x double> %i.iz, i64 1 ; 4 uses
  %i.jd = fcmp ugt double %i.jc, %i.ja
  %or.cond130 = or i1 %i.jb, %i.jd
  br i1 %or.cond130, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.je = getelementptr inbounds nuw i8, ptr %5, i64 16
  store double 1.000000e+00, ptr %i.je, align 8, !tbaa !9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  br label %bb.x

bb.q:                                             ; preds = %bb.o
  %i.jf = fneg double %i.ja
  %i.jg = fmul double %i.hw, %i.jf
  %i.jh = tail call double @llvm.fmuladd.f64(double %i.jc, double %i.ht, double %i.jg) ; 3 uses
  %i.ji = fcmp ole double %i.jh, 0.000000e+00
  %i.jj = fcmp oge double %i.ht, 0.000000e+00
  %or.cond7 = and i1 %i.jj, %i.ji
  %i.jk = fcmp ole double %i.ja, 0.000000e+00
  %or.cond9 = and i1 %i.jk, %or.cond7
  br i1 %or.cond9, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %foldExtExtBinop287 = fsub <2 x double> %i.co, %i.iz
  %i.jl = extractelement <2 x double> %foldExtExtBinop287, i64 0
  %i.jm = fdiv double %i.ht, %i.jl                ; 5 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %5, i64 16
  store double %i.jm, ptr %i.jn, align 8, !tbaa !9
  %i.jo = fsub double 1.000000e+00, %i.jm
  store double %i.jo, ptr %5, align 8, !tbaa !9
  %i.jp = extractelement <2 x double> %i.ca, i64 0
  %i.jq = fmul double %i.jp, %i.jm
  %i.jr = extractelement <2 x double> %i.cf, i64 0
  %i.js = fmul double %i.jr, %i.jm
  %i.jt = extractelement <2 x double> %i.ck, i64 0
  %i.ju = fmul double %i.jt, %i.jm
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.jv = load double, ptr %0, align 8, !tbaa !9, !alias.scope !34
  %i.jw = fadd double %i.jq, %i.jv
  store double %i.jw, ptr %0, align 8, !tbaa !9, !alias.scope !34
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.jy = load double, ptr %i.jx, align 8, !tbaa !9, !alias.scope !34
  %i.jz = fadd double %i.js, %i.jy
  store double %i.jz, ptr %i.jx, align 8, !tbaa !9, !alias.scope !34
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.kb = load double, ptr %i.ka, align 8, !tbaa !9, !alias.scope !34
  %i.kc = fadd double %i.ju, %i.kb
  store double %i.kc, ptr %i.ka, align 8, !tbaa !9, !alias.scope !34
  br label %bb.x

bb.s:                                             ; preds = %bb.q
  %i.kd = fneg double %i.hq
  %i.ke = fmul double %i.jc, %i.kd
  %i.kf = tail call double @llvm.fmuladd.f64(double %i.ho, double %i.ja, double %i.ke) ; 2 uses
  %i.kg = fcmp ugt double %i.kf, 0.000000e+00
  br i1 %i.kg, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.kh = fsub double %i.hq, %i.ho                ; 3 uses
  %i.ki = fcmp ult double %i.kh, 0.000000e+00
  br i1 %i.ki, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.kj = fsub double %i.jc, %i.ja                ; 2 uses
  %i.kk = fcmp ult double %i.kj, 0.000000e+00
  br i1 %i.kk, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.kl = fadd double %i.kh, %i.kj
  %i.km = fdiv double %i.kh, %i.kl                ; 4 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %5, i64 16
  store double %i.km, ptr %i.kn, align 8, !tbaa !9
  %i.ko = fsub double 1.000000e+00, %i.km
  %i.kp = getelementptr inbounds nuw i8, ptr %5, i64 8
  store double %i.ko, ptr %i.kp, align 8, !tbaa !9
  %.sroa.8195.0.copyload = load double, ptr %.sroa.17.0..sroa_idx, align 8
  %i.kq = load double, ptr %.sroa.17262.0..sroa_idx, align 8, !tbaa !9, !noalias !35
  %i.kr = fsub double %.sroa.8195.0.copyload, %i.kq
  %i.ks = fmul double %i.km, %i.kr
  %i.kt = load <2 x double>, ptr %3, align 8
  %i.ku = load <2 x double>, ptr %2, align 8, !tbaa !9, !noalias !35
  %i.kv = fsub <2 x double> %i.kt, %i.ku
  %i.kw = insertelement <2 x double> poison, double %i.km, i64 0
  %i.kx = shufflevector <2 x double> %i.kw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ky = fmul <2 x double> %i.kx, %i.kv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.kz = load <2 x double>, ptr %0, align 8, !tbaa !9, !alias.scope !36
  %i.la = fadd <2 x double> %i.ky, %i.kz
  store <2 x double> %i.la, ptr %0, align 8, !tbaa !9, !alias.scope !36
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.lc = load double, ptr %i.lb, align 8, !tbaa !9, !alias.scope !36
  %i.ld = fadd double %i.ks, %i.lc
  store double %i.ld, ptr %i.lb, align 8, !tbaa !9, !alias.scope !36
  br label %bb.x

bb.w:                                             ; preds = %bb.u, %bb.t, %bb.s
  %i.le = fadd double %i.kf, %i.jh
  %i.lf = fadd double %i.hx, %i.le
  %i.lg = fdiv double 1.000000e+00, %i.lf         ; 2 uses
  %i.lh = fmul double %i.hx, %i.lg                ; 5 uses
  %i.li = getelementptr inbounds nuw i8, ptr %5, i64 16
  store double %i.lh, ptr %i.li, align 8, !tbaa !9
  %i.lj = fmul double %i.jh, %i.lg                ; 5 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %5, i64 8
  store double %i.lj, ptr %i.lk, align 8, !tbaa !9
  %i.ll = fsub double 1.000000e+00, %i.lj
  %i.lm = fsub double %i.ll, %i.lh
  store double %i.lm, ptr %5, align 8, !tbaa !9
  %i.ln = extractelement <2 x double> %i.ca, i64 1
  %i.lo = fmul double %i.ln, %i.lj
  %i.lp = extractelement <2 x double> %i.cf, i64 1
  %i.lq = fmul double %i.lp, %i.lj
  %i.lr = extractelement <2 x double> %i.ck, i64 1
  %i.ls = fmul double %i.lr, %i.lj
  %.sroa.0183.0.copyload = load double, ptr %1, align 8
  %.sroa.6185.0.copyload = load double, ptr %i.bs, align 8
  %.sroa.8.0.copyload = load double, ptr %i.bt, align 8
  %i.lt = fadd double %i.lo, %.sroa.0183.0.copyload
  %i.lu = fadd double %i.lq, %.sroa.6185.0.copyload
  %i.lv = fadd double %i.ls, %.sroa.8.0.copyload
  %i.lw = extractelement <2 x double> %i.ca, i64 0
  %i.lx = fmul double %i.lw, %i.lh
  %i.ly = extractelement <2 x double> %i.cf, i64 0
  %i.lz = fmul double %i.ly, %i.lh
  %i.ma = extractelement <2 x double> %i.ck, i64 0
  %i.mb = fmul double %i.ma, %i.lh
  %.sroa.6185.0..sroa_idx186 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.8.0..sroa_idx188 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.mc = fadd double %i.lx, %i.lt
  store double %i.mc, ptr %0, align 8, !tbaa !9, !alias.scope !37
  %i.md = fadd double %i.lz, %i.lu
  store double %i.md, ptr %.sroa.6185.0..sroa_idx186, align 8, !tbaa !9, !alias.scope !37
  %i.me = fadd double %i.mb, %i.lv
  store double %i.me, ptr %.sroa.8.0..sroa_idx188, align 8, !tbaa !9, !alias.scope !37
  br label %bb.x

end_hunk_0
