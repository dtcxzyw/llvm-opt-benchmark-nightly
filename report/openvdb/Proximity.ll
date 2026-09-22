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
  %.sroa.10247.0.copyload.a = load double, ptr %.sroa.10247.0..sroa_idx, align 8 ; 6 uses
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
  %.sroa.7237.0.copyload = load double, ptr %.sroa.7237.0..sroa_idx, align 8 ; 2 uses
  %10 = load <3 x double>, ptr %4, align 8        ; 3 uses
  %11 = extractelement <3 x double> %10, i64 0    ; 2 uses
  %12 = extractelement <3 x double> %10, i64 2    ; 2 uses
  %i.ch = fsub double %.sroa.7237.0.copyload, %i.br
  %i.ci = fsub double %11, %i.a
  %i.cj = fsub double %12, %i.bu
  %i.ck = insertelement <2 x double> poison, double %i.ch, i64 0
  %i.cl = shufflevector <2 x double> %i.ck, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cm = fmul <2 x double> %i.cc, %i.cl
  %i.cn = insertelement <2 x double> poison, double %i.ci, i64 0
  %i.co = shufflevector <2 x double> %i.cn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.by, <2 x double> %i.co, <2 x double> %i.cm)
  %i.cq = insertelement <2 x double> poison, double %i.cj, i64 0
  %i.cr = shufflevector <2 x double> %i.cq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cg, <2 x double> %i.cr, <2 x double> %i.cp) ; 6 uses
  br i1 %i.e, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i.i144, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i.i139

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i.i144: ; preds = %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit.thread
  %i.ct = tail call noundef double @llvm.fabs.f64(double %i.b)
  %i.cu = tail call noundef double @llvm.fabs.f64(double %i.a)
  %i.cv = fcmp ogt double %i.ct, %i.cu
  %..i.i.i145 = select i1 %i.cv, double %i.b, double %i.a
  %i.cw = fdiv double %i.c, %..i.i.i145
  %i.cx = tail call noundef double @llvm.fabs.f64(double %i.cw)
  %i.cy = fcmp ugt double %i.cx, f0x3E7AD7F29ABCAF48
  br i1 %i.cy, label %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit146.thread, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i.i139

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i.i139: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i.i144, %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit.thread
  %i.cz = fsub double %i.br, %.sroa.10258.0.copyload ; 2 uses
  %i.da = tail call noundef double @llvm.fabs.f64(double %i.cz)
  %i.db = fcmp ogt double %i.da, f0x3E7AD7F29ABCAF48
  br i1 %i.db, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i.i142, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i.i140

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i.i142: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i.i139
  %i.dc = tail call noundef double @llvm.fabs.f64(double %.sroa.10258.0.copyload)
  %i.dd = tail call noundef double @llvm.fabs.f64(double %i.br)
  %i.de = fcmp ogt double %i.dc, %i.dd
  %..i5.i.i143 = select i1 %i.de, double %.sroa.10258.0.copyload, double %i.br
  %i.df = fdiv double %i.cz, %..i5.i.i143
  %i.dg = tail call noundef double @llvm.fabs.f64(double %i.df)
  %i.dh = fcmp ugt double %i.dg, f0x3E7AD7F29ABCAF48
  br i1 %i.dh, label %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit146.thread, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i.i140

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i.i140: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i.i142, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i.i139
  %i.di = fsub double %i.bu, %.sroa.17262.0.copyload ; 2 uses
  %i.dj = tail call noundef double @llvm.fabs.f64(double %i.di)
  %i.dk = fcmp ogt double %i.dj, f0x3E7AD7F29ABCAF48
  br i1 %i.dk, label %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit146, label %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit146.thread269

_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit146: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i.i140
  %i.dl = tail call noundef double @llvm.fabs.f64(double %.sroa.17262.0.copyload)
  %i.dm = tail call noundef double @llvm.fabs.f64(double %i.bu)
  %i.dn = fcmp ogt double %i.dl, %i.dm
  %..i8.i.i141 = select i1 %i.dn, double %.sroa.17262.0.copyload, double %i.bu
  %i.do = fdiv double %i.di, %..i8.i.i141
  %i.dp = tail call noundef double @llvm.fabs.f64(double %i.do)
  %i.dq = fcmp ugt double %i.dp, f0x3E7AD7F29ABCAF48
  br i1 %i.dq, label %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit146.thread, label %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit146.thread269

_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit146.thread269: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i.i140, %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit146
  %i.dr = extractelement <2 x double> %i.cs, i64 0 ; 3 uses
  %i.ds = fcmp ugt double %i.dr, 0.000000e+00
  br i1 %i.ds, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit146.thread269
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %_ZN7openvdb5v13_04math28closestPointOnSegmentToPointERKNS1_4Vec3IdEES5_S5_Rd.exit

bb.c:                                             ; preds = %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit146.thread269
  %foldExtExtBinop = fmul <2 x double> %i.cc, %i.cc
  %i.dt = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.du = extractelement <2 x double> %i.by, i64 0 ; 2 uses
  %i.dv = tail call double @llvm.fmuladd.f64(double %i.du, double %i.du, double %i.dt)
  %i.dw = extractelement <2 x double> %i.cg, i64 0 ; 3 uses
  %i.dx = tail call noundef double @llvm.fmuladd.f64(double %i.dw, double %i.dw, double %i.dv) ; 2 uses
  %i.dy = fcmp ult double %i.dr, %i.dx
  br i1 %i.dy, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %3, i64 24, i1 false)
  br label %_ZN7openvdb5v13_04math28closestPointOnSegmentToPointERKNS1_4Vec3IdEES5_S5_Rd.exit

bb.e:                                             ; preds = %bb.c
  %i.dz = fdiv double %i.dr, %i.dx                ; 3 uses
  %i.ea = fmul double %i.dw, %i.dz
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.eb = shufflevector <2 x double> %i.by, <2 x double> %i.cc, <2 x i32> <i32 0, i32 2>
  %i.ec = insertelement <2 x double> poison, double %i.dz, i64 0
  %i.ed = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ee = fmul <2 x double> %i.eb, %i.ed
  %i.ef = load <2 x double>, ptr %0, align 8, !tbaa !9, !alias.scope !31
  %i.eg = fadd <2 x double> %i.ee, %i.ef
  store <2 x double> %i.eg, ptr %0, align 8, !tbaa !9, !alias.scope !31
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !9, !alias.scope !31
  %i.ej = fadd double %i.ea, %i.ei
  store double %i.ej, ptr %i.eh, align 8, !tbaa !9, !alias.scope !31
  br label %_ZN7openvdb5v13_04math28closestPointOnSegmentToPointERKNS1_4Vec3IdEES5_S5_Rd.exit

_ZN7openvdb5v13_04math28closestPointOnSegmentToPointERKNS1_4Vec3IdEES5_S5_Rd.exit: ; preds = %bb.b, %bb.d, %bb.e
  %.0 = phi double [ %i.dz, %bb.e ], [ 1.000000e+00, %bb.d ], [ 0.000000e+00, %bb.b ] ; 2 uses
  %i.ek = fsub double 1.000000e+00, %.0
  store double %i.ek, ptr %5, align 8, !tbaa !9
  %i.el = getelementptr inbounds nuw i8, ptr %5, i64 16
  store double %.0, ptr %i.el, align 8, !tbaa !9
  br label %bb.x

_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit146.thread: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i.i144, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i.i142, %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit146
  %13 = extractelement <3 x double> %6, i64 0     ; 6 uses
  %i.em = fsub double %i.a, %13                   ; 2 uses
  %i.en = tail call noundef double @llvm.fabs.f64(double %i.em)
  %i.eo = fcmp ogt double %i.en, f0x3E7AD7F29ABCAF48
  br i1 %i.eo, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i.i152, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i.i147

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i.i152: ; preds = %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit146.thread
  %i.ep = tail call noundef double @llvm.fabs.f64(double %13)
  %i.eq = tail call noundef double @llvm.fabs.f64(double %i.a)
  %i.er = fcmp ogt double %i.ep, %i.eq
  %..i.i.i153 = select i1 %i.er, double %13, double %i.a
  %i.es = fdiv double %i.em, %..i.i.i153
  %i.et = tail call noundef double @llvm.fabs.f64(double %i.es)
  %i.eu = fcmp ugt double %i.et, f0x3E7AD7F29ABCAF48
  br i1 %i.eu, label %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit154.thread, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i.i147

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i.i147: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i.i152, %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit146.thread
  %i.ev = fsub double %i.br, %.sroa.10247.0.copyload.a ; 2 uses
  %i.ew = tail call noundef double @llvm.fabs.f64(double %i.ev)
  %i.ex = fcmp ogt double %i.ew, f0x3E7AD7F29ABCAF48
  br i1 %i.ex, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i.i150, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i.i148

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i.i150: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i.i147
  %i.ey = tail call noundef double @llvm.fabs.f64(double %.sroa.10247.0.copyload.a)
  %i.ez = tail call noundef double @llvm.fabs.f64(double %i.br)
  %i.fa = fcmp ogt double %i.ey, %i.ez
  %..i5.i.i151 = select i1 %i.fa, double %.sroa.10247.0.copyload.a, double %i.br
  %i.fb = fdiv double %i.ev, %..i5.i.i151
  %i.fc = tail call noundef double @llvm.fabs.f64(double %i.fb)
  %i.fd = fcmp ugt double %i.fc, f0x3E7AD7F29ABCAF48
  br i1 %i.fd, label %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit154.thread, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i.i148

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i.i148: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i.i150, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i.i147
  %14 = extractelement <3 x double> %6, i64 2     ; 3 uses
  %i.fe = fsub double %i.bu, %14                  ; 2 uses
  %i.ff = tail call noundef double @llvm.fabs.f64(double %i.fe)
  %i.fg = fcmp ogt double %i.ff, f0x3E7AD7F29ABCAF48
  br i1 %i.fg, label %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit154, label %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit154.thread270

_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit154: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i.i148
  %i.fh = tail call noundef double @llvm.fabs.f64(double %14)
  %i.fi = tail call noundef double @llvm.fabs.f64(double %i.bu)
  %i.fj = fcmp ogt double %i.fh, %i.fi
  %..i8.i.i149 = select i1 %i.fj, double %14, double %i.bu
  %i.fk = fdiv double %i.fe, %..i8.i.i149
  %i.fl = tail call noundef double @llvm.fabs.f64(double %i.fk)
  %i.fm = fcmp ugt double %i.fl, f0x3E7AD7F29ABCAF48
  br i1 %i.fm, label %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit154.thread, label %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit154.thread270

_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit154.thread: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i.i152, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i.i150, %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit154
  %i.fn = fsub double %i.b, %13                   ; 2 uses
  %i.fo = tail call noundef double @llvm.fabs.f64(double %i.fn)
  %i.fp = fcmp ogt double %i.fo, f0x3E7AD7F29ABCAF48
  br i1 %i.fp, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i.i160, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i.i155

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i.i160: ; preds = %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit154.thread
  %i.fq = tail call noundef double @llvm.fabs.f64(double %13)
  %i.fr = tail call noundef double @llvm.fabs.f64(double %i.b)
  %i.fs = fcmp ogt double %i.fq, %i.fr
  %..i.i.i161 = select i1 %i.fs, double %13, double %i.b
  %i.ft = fdiv double %i.fn, %..i.i.i161
  %i.fu = tail call noundef double @llvm.fabs.f64(double %i.ft)
  %i.fv = fcmp ugt double %i.fu, f0x3E7AD7F29ABCAF48
  br i1 %i.fv, label %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit162.thread, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i.i155

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i.i155: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i.i160, %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit154.thread
  %i.fw = fsub double %.sroa.10258.0.copyload, %.sroa.10247.0.copyload.a ; 2 uses
  %i.fx = tail call noundef double @llvm.fabs.f64(double %i.fw)
  %i.fy = fcmp ogt double %i.fx, f0x3E7AD7F29ABCAF48
  br i1 %i.fy, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i.i158, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i.i156

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i.i158: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i.i155
  %i.fz = tail call noundef double @llvm.fabs.f64(double %.sroa.10247.0.copyload.a)
  %i.ga = tail call noundef double @llvm.fabs.f64(double %.sroa.10258.0.copyload)
  %i.gb = fcmp ogt double %i.fz, %i.ga
  %..i5.i.i159 = select i1 %i.gb, double %.sroa.10247.0.copyload.a, double %.sroa.10258.0.copyload
  %i.gc = fdiv double %i.fw, %..i5.i.i159
  %i.gd = tail call noundef double @llvm.fabs.f64(double %i.gc)
  %i.ge = fcmp ugt double %i.gd, f0x3E7AD7F29ABCAF48
  br i1 %i.ge, label %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit162.thread, label %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i.i156

_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i.i156: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i.i158, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.thread.i.i155
  %15 = extractelement <3 x double> %6, i64 2     ; 3 uses
  %i.gf = fsub double %.sroa.17262.0.copyload, %15 ; 2 uses
  %i.gg = tail call noundef double @llvm.fabs.f64(double %i.gf)
  %i.gh = fcmp ogt double %i.gg, f0x3E7AD7F29ABCAF48
  br i1 %i.gh, label %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit162, label %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit154.thread270

_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit162: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i.i156
  %i.gi = tail call noundef double @llvm.fabs.f64(double %15)
  %i.gj = tail call noundef double @llvm.fabs.f64(double %.sroa.17262.0.copyload)
  %i.gk = fcmp ogt double %i.gi, %i.gj
  %..i8.i.i157 = select i1 %i.gk, double %15, double %.sroa.17262.0.copyload
  %i.gl = fdiv double %i.gf, %..i8.i.i157
  %i.gm = tail call noundef double @llvm.fabs.f64(double %i.gl)
  %i.gn = fcmp ugt double %i.gm, f0x3E7AD7F29ABCAF48
  br i1 %i.gn, label %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit162.thread, label %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit154.thread270

_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit154.thread270: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i.i156, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.thread.i.i148, %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit162, %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit154
  %i.go = extractelement <2 x double> %i.cs, i64 1 ; 3 uses
  %i.gp = fcmp ugt double %i.go, 0.000000e+00
  br i1 %i.gp, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit154.thread270
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %_ZN7openvdb5v13_04math28closestPointOnSegmentToPointERKNS1_4Vec3IdEES5_S5_Rd.exit173

bb.g:                                             ; preds = %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit154.thread270
  %foldExtExtBinop283 = fmul <2 x double> %i.cc, %i.cc
  %i.gq = extractelement <2 x double> %foldExtExtBinop283, i64 1
  %i.gr = extractelement <2 x double> %i.by, i64 1 ; 2 uses
  %i.gs = tail call double @llvm.fmuladd.f64(double %i.gr, double %i.gr, double %i.gq)
  %i.gt = extractelement <2 x double> %i.cg, i64 1 ; 3 uses
  %i.gu = tail call noundef double @llvm.fmuladd.f64(double %i.gt, double %i.gt, double %i.gs) ; 2 uses
  %i.gv = fcmp ult double %i.go, %i.gu
  br i1 %i.gv, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, i64 24, i1 false)
  br label %_ZN7openvdb5v13_04math28closestPointOnSegmentToPointERKNS1_4Vec3IdEES5_S5_Rd.exit173

bb.i:                                             ; preds = %bb.g
  %i.gw = fdiv double %i.go, %i.gu                ; 3 uses
  %i.gx = fmul double %i.gt, %i.gw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.gy = shufflevector <2 x double> %i.by, <2 x double> %i.cc, <2 x i32> <i32 1, i32 3>
  %i.gz = insertelement <2 x double> poison, double %i.gw, i64 0
  %i.ha = shufflevector <2 x double> %i.gz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hb = fmul <2 x double> %i.gy, %i.ha
  %i.hc = load <2 x double>, ptr %0, align 8, !tbaa !9, !alias.scope !32
  %i.hd = fadd <2 x double> %i.hb, %i.hc
  store <2 x double> %i.hd, ptr %0, align 8, !tbaa !9, !alias.scope !32
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.hf = load double, ptr %i.he, align 8, !tbaa !9, !alias.scope !32
  %i.hg = fadd double %i.gx, %i.hf
  store double %i.hg, ptr %i.he, align 8, !tbaa !9, !alias.scope !32
  br label %_ZN7openvdb5v13_04math28closestPointOnSegmentToPointERKNS1_4Vec3IdEES5_S5_Rd.exit173

_ZN7openvdb5v13_04math28closestPointOnSegmentToPointERKNS1_4Vec3IdEES5_S5_Rd.exit173: ; preds = %bb.f, %bb.h, %bb.i
  %.0266 = phi double [ %i.gw, %bb.i ], [ 1.000000e+00, %bb.h ], [ 0.000000e+00, %bb.f ] ; 2 uses
  %i.hh = fsub double 1.000000e+00, %.0266
  store double %i.hh, ptr %5, align 8, !tbaa !9
  %i.hi = getelementptr inbounds nuw i8, ptr %5, i64 8
  store double %.0266, ptr %i.hi, align 8, !tbaa !9
  br label %bb.x

_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit162.thread: ; preds = %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit.i.i160, %_ZN7openvdb5v13_04math18isRelOrApproxEqualIdEEbRKT_S5_S5_S5_.exit6.i.i158, %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit162
  %i.hj = fcmp ugt <2 x double> %i.cs, zeroinitializer
  %i.hk = bitcast <2 x i1> %i.hj to i2
  %i.hl = icmp eq i2 %i.hk, 0
  br i1 %i.hl, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit162.thread
  store double 1.000000e+00, ptr %5, align 8, !tbaa !9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.x

bb.k:                                             ; preds = %_ZN7openvdb5v13_04math13isApproxEqualIdEEbRKNS1_4Vec3IT_EES7_.exit162.thread
  %i.hm = fsub double %.sroa.7237.0.copyload, %.sroa.10258.0.copyload
  %i.hn = fsub double %11, %i.b
  %i.ho = fsub double %12, %.sroa.17262.0.copyload
  %i.hp = insertelement <2 x double> poison, double %i.hm, i64 0
  %i.hq = shufflevector <2 x double> %i.hp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hr = fmul <2 x double> %i.cc, %i.hq
  %i.hs = insertelement <2 x double> poison, double %i.hn, i64 0
  %i.ht = shufflevector <2 x double> %i.hs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.by, <2 x double> %i.ht, <2 x double> %i.hr)
  %i.hv = insertelement <2 x double> poison, double %i.ho, i64 0
  %i.hw = shufflevector <2 x double> %i.hv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cg, <2 x double> %i.hw, <2 x double> %i.hu) ; 2 uses
  %i.hy = extractelement <2 x double> %i.hx, i64 1 ; 7 uses
  %i.hz = fcmp ult double %i.hy, 0.000000e+00
  %i.ia = extractelement <2 x double> %i.hx, i64 0 ; 4 uses
  %i.ib = fcmp ugt double %i.ia, %i.hy
  %or.cond129 = or i1 %i.hz, %i.ib
  br i1 %or.cond129, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ic = getelementptr inbounds nuw i8, ptr %5, i64 8
  store double 1.000000e+00, ptr %i.ic, align 8, !tbaa !9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  br label %bb.x

bb.m:                                             ; preds = %bb.k
  %i.id = extractelement <2 x double> %i.cs, i64 0 ; 4 uses
  %i.ie = fneg double %i.id
  %i.if = fmul double %i.hy, %i.ie
  %i.ig = extractelement <2 x double> %i.cs, i64 1 ; 5 uses
  %i.ih = tail call double @llvm.fmuladd.f64(double %i.ig, double %i.ia, double %i.if) ; 3 uses
  %i.ii = fcmp ole double %i.ih, 0.000000e+00
  %i.ij = fcmp oge double %i.ig, 0.000000e+00
  %or.cond3 = and i1 %i.ij, %i.ii
  %i.ik = fcmp ole double %i.hy, 0.000000e+00
  %or.cond5 = and i1 %i.ik, %or.cond3
  br i1 %or.cond5, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.il = fsub double %i.ig, %i.hy
  %i.im = fdiv double %i.ig, %i.il                ; 5 uses
  %i.in = getelementptr inbounds nuw i8, ptr %5, i64 8
  store double %i.im, ptr %i.in, align 8, !tbaa !9
  %i.io = fsub double 1.000000e+00, %i.im
  store double %i.io, ptr %5, align 8, !tbaa !9
  %i.ip = extractelement <2 x double> %i.by, i64 1
  %i.iq = fmul double %i.ip, %i.im
  %i.ir = extractelement <2 x double> %i.cc, i64 1
  %i.is = fmul double %i.ir, %i.im
  %i.it = extractelement <2 x double> %i.cg, i64 1
  %i.iu = fmul double %i.it, %i.im
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.iv = load double, ptr %0, align 8, !tbaa !9, !alias.scope !33
  %i.iw = fadd double %i.iq, %i.iv
  store double %i.iw, ptr %0, align 8, !tbaa !9, !alias.scope !33
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.iy = load double, ptr %i.ix, align 8, !tbaa !9, !alias.scope !33
  %i.iz = fadd double %i.is, %i.iy
  store double %i.iz, ptr %i.ix, align 8, !tbaa !9, !alias.scope !33
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.jb = load double, ptr %i.ja, align 8, !tbaa !9, !alias.scope !33
  %i.jc = fadd double %i.iu, %i.jb
  store double %i.jc, ptr %i.ja, align 8, !tbaa !9, !alias.scope !33
  br label %bb.x

bb.o:                                             ; preds = %bb.m
  %16 = fsub <3 x double> %10, %6                 ; 3 uses
  %17 = shufflevector <3 x double> %16, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.jd = fmul <2 x double> %i.cc, %17
  %i.je = shufflevector <3 x double> %16, <3 x double> poison, <2 x i32> zeroinitializer
  %i.jf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.by, <2 x double> %i.je, <2 x double> %i.jd)
  %18 = shufflevector <3 x double> %16, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.jg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cg, <2 x double> %18, <2 x double> %i.jf) ; 3 uses
  %i.jh = extractelement <2 x double> %i.jg, i64 0 ; 6 uses
  %i.ji = fcmp ult double %i.jh, 0.000000e+00
  %i.jj = extractelement <2 x double> %i.jg, i64 1 ; 4 uses
  %i.jk = fcmp ugt double %i.jj, %i.jh
  %or.cond130 = or i1 %i.ji, %i.jk
  br i1 %or.cond130, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.jl = getelementptr inbounds nuw i8, ptr %5, i64 16
  store double 1.000000e+00, ptr %i.jl, align 8, !tbaa !9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  br label %bb.x

bb.q:                                             ; preds = %bb.o
  %i.jm = fneg double %i.jh
  %i.jn = fmul double %i.ig, %i.jm
  %i.jo = tail call double @llvm.fmuladd.f64(double %i.jj, double %i.id, double %i.jn) ; 3 uses
  %i.jp = fcmp ole double %i.jo, 0.000000e+00
  %i.jq = fcmp oge double %i.id, 0.000000e+00
  %or.cond7 = and i1 %i.jq, %i.jp
  %i.jr = fcmp ole double %i.jh, 0.000000e+00
  %or.cond9 = and i1 %i.jr, %or.cond7
  br i1 %or.cond9, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %foldExtExtBinop285 = fsub <2 x double> %i.cs, %i.jg
  %i.js = extractelement <2 x double> %foldExtExtBinop285, i64 0
  %i.jt = fdiv double %i.id, %i.js                ; 5 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %5, i64 16
  store double %i.jt, ptr %i.ju, align 8, !tbaa !9
  %i.jv = fsub double 1.000000e+00, %i.jt
  store double %i.jv, ptr %5, align 8, !tbaa !9
  %i.jw = extractelement <2 x double> %i.by, i64 0
  %i.jx = fmul double %i.jw, %i.jt
  %i.jy = extractelement <2 x double> %i.cc, i64 0
  %i.jz = fmul double %i.jy, %i.jt
  %i.ka = extractelement <2 x double> %i.cg, i64 0
  %i.kb = fmul double %i.ka, %i.jt
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.kc = load double, ptr %0, align 8, !tbaa !9, !alias.scope !34
  %i.kd = fadd double %i.jx, %i.kc
  store double %i.kd, ptr %0, align 8, !tbaa !9, !alias.scope !34
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.kf = load double, ptr %i.ke, align 8, !tbaa !9, !alias.scope !34
  %i.kg = fadd double %i.jz, %i.kf
  store double %i.kg, ptr %i.ke, align 8, !tbaa !9, !alias.scope !34
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ki = load double, ptr %i.kh, align 8, !tbaa !9, !alias.scope !34
  %i.kj = fadd double %i.kb, %i.ki
  store double %i.kj, ptr %i.kh, align 8, !tbaa !9, !alias.scope !34
  br label %bb.x

bb.s:                                             ; preds = %bb.q
  %i.kk = fneg double %i.ia
  %i.kl = fmul double %i.jj, %i.kk
  %i.km = tail call double @llvm.fmuladd.f64(double %i.hy, double %i.jh, double %i.kl) ; 2 uses
  %i.kn = fcmp ugt double %i.km, 0.000000e+00
  br i1 %i.kn, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ko = fsub double %i.ia, %i.hy                ; 3 uses
  %i.kp = fcmp ult double %i.ko, 0.000000e+00
  br i1 %i.kp, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.kq = fsub double %i.jj, %i.jh                ; 2 uses
  %i.kr = fcmp ult double %i.kq, 0.000000e+00
  br i1 %i.kr, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ks = fadd double %i.ko, %i.kq
  %i.kt = fdiv double %i.ko, %i.ks                ; 4 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %5, i64 16
  store double %i.kt, ptr %i.ku, align 8, !tbaa !9
  %i.kv = fsub double 1.000000e+00, %i.kt
  %i.kw = getelementptr inbounds nuw i8, ptr %5, i64 8
  store double %i.kv, ptr %i.kw, align 8, !tbaa !9
  %.sroa.8195.0.copyload = load double, ptr %.sroa.17.0..sroa_idx, align 8
  %i.kx = load double, ptr %.sroa.17262.0..sroa_idx, align 8, !tbaa !9, !noalias !35
  %i.ky = fsub double %.sroa.8195.0.copyload, %i.kx
  %i.kz = fmul double %i.kt, %i.ky
  %i.la = load <2 x double>, ptr %3, align 8
  %i.lb = load <2 x double>, ptr %2, align 8, !tbaa !9, !noalias !35
  %i.lc = fsub <2 x double> %i.la, %i.lb
  %i.ld = insertelement <2 x double> poison, double %i.kt, i64 0
  %i.le = shufflevector <2 x double> %i.ld, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lf = fmul <2 x double> %i.le, %i.lc
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.lg = load <2 x double>, ptr %0, align 8, !tbaa !9, !alias.scope !36
  %i.lh = fadd <2 x double> %i.lf, %i.lg
  store <2 x double> %i.lh, ptr %0, align 8, !tbaa !9, !alias.scope !36
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.lj = load double, ptr %i.li, align 8, !tbaa !9, !alias.scope !36
  %i.lk = fadd double %i.kz, %i.lj
  store double %i.lk, ptr %i.li, align 8, !tbaa !9, !alias.scope !36
  br label %bb.x

bb.w:                                             ; preds = %bb.u, %bb.t, %bb.s
  %i.ll = fadd double %i.km, %i.jo
  %i.lm = fadd double %i.ih, %i.ll
  %i.ln = fdiv double 1.000000e+00, %i.lm         ; 2 uses
  %i.lo = fmul double %i.ih, %i.ln                ; 5 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %5, i64 16
  store double %i.lo, ptr %i.lp, align 8, !tbaa !9
  %i.lq = fmul double %i.jo, %i.ln                ; 5 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %5, i64 8
  store double %i.lq, ptr %i.lr, align 8, !tbaa !9
  %i.ls = fsub double 1.000000e+00, %i.lq
  %i.lt = fsub double %i.ls, %i.lo
  store double %i.lt, ptr %5, align 8, !tbaa !9
  %i.lu = extractelement <2 x double> %i.by, i64 1
  %i.lv = fmul double %i.lu, %i.lq
  %i.lw = extractelement <2 x double> %i.cc, i64 1
  %i.lx = fmul double %i.lw, %i.lq
  %i.ly = extractelement <2 x double> %i.cg, i64 1
  %i.lz = fmul double %i.ly, %i.lq
  %.sroa.0183.0.copyload = load double, ptr %1, align 8
  %.sroa.6185.0.copyload = load double, ptr %i.bs, align 8
  %.sroa.8.0.copyload = load double, ptr %i.bt, align 8
  %i.ma = fadd double %i.lv, %.sroa.0183.0.copyload
  %i.mb = fadd double %i.lx, %.sroa.6185.0.copyload
  %i.mc = fadd double %i.lz, %.sroa.8.0.copyload
  %i.md = extractelement <2 x double> %i.by, i64 0
  %i.me = fmul double %i.md, %i.lo
  %i.mf = extractelement <2 x double> %i.cc, i64 0
  %i.mg = fmul double %i.mf, %i.lo
  %i.mh = extractelement <2 x double> %i.cg, i64 0
  %i.mi = fmul double %i.mh, %i.lo
  %.sroa.6185.0..sroa_idx186 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.8.0..sroa_idx188 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.mj = fadd double %i.me, %i.ma
  store double %i.mj, ptr %0, align 8, !tbaa !9, !alias.scope !37
  %i.mk = fadd double %i.mg, %i.mb
  store double %i.mk, ptr %.sroa.6185.0..sroa_idx186, align 8, !tbaa !9, !alias.scope !37
  %i.ml = fadd double %i.mi, %i.mc
  store double %i.ml, ptr %.sroa.8.0..sroa_idx188, align 8, !tbaa !9, !alias.scope !37
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
  %i.b = load <2 x double>, ptr %1, align 8, !tbaa !9, !noalias !42 ; 2 uses
  %i.c = fsub <2 x double> %i.a, %i.b             ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load double, ptr %i.d, align 8, !tbaa !9, !noalias !42 ; 2 uses
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
  store double 0.000000e+00, ptr %4, align 8, !tbaa !9
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
  store double 1.000000e+00, ptr %4, align 8, !tbaa !9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.t = fdiv double %i.n, %i.r                   ; 3 uses
  store double %i.t, ptr %4, align 8, !tbaa !9
  %i.u = fmul double %i.f, %i.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.v = insertelement <2 x double> poison, double %i.t, i64 0
  %i.w = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> zeroinitializer
  %i.x = fmul <2 x double> %i.c, %i.w
  %i.y = load <2 x double>, ptr %0, align 8, !tbaa !9, !alias.scope !43
  %i.z = fadd <2 x double> %i.x, %i.y
  store <2 x double> %i.z, ptr %0, align 8, !tbaa !9, !alias.scope !43
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
end_hunk_0
