Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/cmsmtrx?download=true
inline.NumInlined: 10
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_cmsVEC3init(ptr nofree noundef writeonly captures(none) initializes((0, 24)) %0, double noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #0 {
bb.a:
  store double %1, ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %2, ptr %i.a, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %3, ptr %i.b, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_cmsVEC3minus(ptr nofree noundef writeonly captures(none) initializes((0, 24)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = load double, ptr %1, align 8, !tbaa !10
  %i.b = load double, ptr %2, align 8, !tbaa !10
  %i.c = fsub double %i.a, %i.b
  store double %i.c, ptr %0, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load double, ptr %i.d, align 8, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load double, ptr %i.f, align 8, !tbaa !10
  %i.h = fsub double %i.e, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.h, ptr %i.i, align 8, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load double, ptr %i.j, align 8, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = load double, ptr %i.l, align 8, !tbaa !10
  %i.n = fsub double %i.k, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.n, ptr %i.o, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_cmsVEC3cross(ptr nofree noundef writeonly captures(none) initializes((0, 24)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load double, ptr %i.a, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.d = load double, ptr %i.c, align 8, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = load double, ptr %i.e, align 8, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = load double, ptr %i.g, align 8, !tbaa !10
  %i.i = fneg double %i.h
  %i.j = fmul double %i.f, %i.i
  %i.k = tail call double @llvm.fmuladd.f64(double %i.b, double %i.d, double %i.j)
  store double %i.k, ptr %0, align 8, !tbaa !10
  %i.l = load double, ptr %i.g, align 8, !tbaa !10
  %i.m = load double, ptr %2, align 8, !tbaa !10
  %i.n = load double, ptr %i.c, align 8, !tbaa !10
  %i.o = load double, ptr %1, align 8, !tbaa !10
  %i.p = fneg double %i.o
  %i.q = fmul double %i.n, %i.p
  %i.r = tail call double @llvm.fmuladd.f64(double %i.l, double %i.m, double %i.q)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.r, ptr %i.s, align 8, !tbaa !10
  %i.t = load double, ptr %1, align 8, !tbaa !10
  %i.u = load double, ptr %i.e, align 8, !tbaa !10
  %i.v = load double, ptr %2, align 8, !tbaa !10
  %i.w = load double, ptr %i.a, align 8, !tbaa !10
  %i.x = fneg double %i.w
  %i.y = fmul double %i.v, %i.x
  %i.z = tail call double @llvm.fmuladd.f64(double %i.t, double %i.u, double %i.y)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.z, ptr %i.aa, align 8, !tbaa !10
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define double @_cmsVEC3dot(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !10
  %i.b = load double, ptr %1, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load double, ptr %i.c, align 8, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load double, ptr %i.e, align 8, !tbaa !10
  %i.g = fmul double %i.d, %i.f
  %i.h = tail call double @llvm.fmuladd.f64(double %i.a, double %i.b, double %i.g)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load double, ptr %i.i, align 8, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load double, ptr %i.k, align 8, !tbaa !10
  %i.m = tail call double @llvm.fmuladd.f64(double %i.j, double %i.l, double %i.h)
  ret double %i.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define double @_cmsVEC3length(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !10  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load double, ptr %i.b, align 8, !tbaa !10 ; 2 uses
  %i.d = fmul double %i.c, %i.c
  %i.e = tail call double @llvm.fmuladd.f64(double %i.a, double %i.a, double %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load double, ptr %i.f, align 8, !tbaa !10 ; 2 uses
  %i.h = tail call double @llvm.fmuladd.f64(double %i.g, double %i.g, double %i.e)
  %i.i = tail call double @llvm.sqrt.f64(double %i.h)
  ret double %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define double @_cmsVEC3distance(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !10
  %i.b = load double, ptr %1, align 8, !tbaa !10
  %i.c = fsub double %i.a, %i.b                   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load double, ptr %i.d, align 8, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load double, ptr %i.f, align 8, !tbaa !10
  %i.h = fsub double %i.e, %i.g                   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load double, ptr %i.i, align 8, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load double, ptr %i.k, align 8, !tbaa !10
  %i.m = fsub double %i.j, %i.l                   ; 2 uses
  %i.n = fmul double %i.h, %i.h
  %i.o = tail call double @llvm.fmuladd.f64(double %i.c, double %i.c, double %i.n)
  %i.p = tail call double @llvm.fmuladd.f64(double %i.m, double %i.m, double %i.o)
  %i.q = tail call double @llvm.sqrt.f64(double %i.p)
  ret double %i.q
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_cmsMAT3identity(ptr nofree noundef writeonly captures(none) initializes((0, 72)) %0) local_unnamed_addr #0 {
bb.a:
  store double 1.000000e+00, ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.b, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.d, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @_cmsMAT3isIdentity(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
.preheader:
  %i.a = load double, ptr %0, align 8, !tbaa !10
  %i.b = fsub double 1.000000e+00, %i.a
  %i.c = tail call double @llvm.fabs.f64(double %i.b)
  %i.d = fcmp uge double %i.c, f0x3EF0001000100010
  br i1 %i.d, label %.loopexit.loopexit, label %bb.a

bb.a:                                             ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load double, ptr %i.e, align 8, !tbaa !10
  %i.g = fsub double 0.000000e+00, %i.f
  %i.h = tail call double @llvm.fabs.f64(double %i.g)
  %i.i = fcmp uge double %i.h, f0x3EF0001000100010
  br i1 %i.i, label %.loopexit.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load double, ptr %i.j, align 8, !tbaa !10
  %i.l = fsub double 0.000000e+00, %i.k
  %i.m = tail call double @llvm.fabs.f64(double %i.l)
  %i.n = fcmp uge double %i.m, f0x3EF0001000100010
  br i1 %i.n, label %.loopexit.loopexit, label %.preheader.1

.preheader.1:                                     ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load double, ptr %i.o, align 8, !tbaa !10
  %i.q = fsub double 0.000000e+00, %i.p
  %i.r = tail call double @llvm.fabs.f64(double %i.q)
  %i.s = fcmp uge double %i.r, f0x3EF0001000100010
  br i1 %i.s, label %.loopexit.loopexit, label %bb.c

bb.c:                                             ; preds = %.preheader.1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load double, ptr %i.t, align 8, !tbaa !10
  %i.v = fsub double 1.000000e+00, %i.u
  %i.w = tail call double @llvm.fabs.f64(double %i.v)
  %i.x = fcmp uge double %i.w, f0x3EF0001000100010
  br i1 %i.x, label %.loopexit.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load double, ptr %i.y, align 8, !tbaa !10
  %i.aa = fsub double 0.000000e+00, %i.z
  %i.ab = tail call double @llvm.fabs.f64(double %i.aa)
  %i.ac = fcmp uge double %i.ab, f0x3EF0001000100010
  br i1 %i.ac, label %.loopexit.loopexit, label %.preheader.2

.preheader.2:                                     ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !10
  %i.af = fsub double 0.000000e+00, %i.ae
  %i.ag = tail call double @llvm.fabs.f64(double %i.af)
  %i.ah = fcmp uge double %i.ag, f0x3EF0001000100010
  br i1 %i.ah, label %.loopexit.loopexit, label %bb.e

bb.e:                                             ; preds = %.preheader.2
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !10
  %i.ak = fsub double 0.000000e+00, %i.aj
  %i.al = tail call double @llvm.fabs.f64(double %i.ak)
  %i.am = fcmp uge double %i.al, f0x3EF0001000100010
  br i1 %i.am, label %.loopexit.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ao = load double, ptr %i.an, align 8, !tbaa !10
  %i.ap = fsub double 1.000000e+00, %i.ao
  %i.aq = tail call double @llvm.fabs.f64(double %i.ap)
  %i.ar = fcmp uge double %i.aq, f0x3EF0001000100010
  br i1 %i.ar, label %.loopexit.loopexit, label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.f, %bb.e, %.preheader.2, %bb.d, %bb.c, %.preheader.1, %bb.b, %bb.a, %.preheader
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %.loopexit.loopexit
  %.010 = phi i32 [ 0, %.loopexit.loopexit ], [ 1, %bb.f ]
  ret i32 %.010
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_cmsMAT3per(ptr nofree noundef writeonly captures(none) initializes((0, 72)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load double, ptr %i.c, align 8, !tbaa !10 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  %i.f = load double, ptr %1, align 8, !tbaa !10  ; 2 uses
  %i.g = load double, ptr %i.a, align 8, !tbaa !10 ; 2 uses
  %i.h = load <2 x double>, ptr %2, align 8, !tbaa !10
  %i.i = load <2 x double>, ptr %i.b, align 8, !tbaa !10
  %i.j = insertelement <2 x double> poison, double %i.g, i64 0
  %i.k = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> zeroinitializer
  %i.l = fmul <2 x double> %i.k, %i.i
  %i.m = insertelement <2 x double> poison, double %i.f, i64 0
  %i.n = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> zeroinitializer
  %i.o = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.n, <2 x double> %i.h, <2 x double> %i.l)
  %i.p = load <2 x double>, ptr %i.e, align 8, !tbaa !10
  %i.q = insertelement <2 x double> poison, double %i.d, i64 0
  %i.r = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> zeroinitializer
  %i.s = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.r, <2 x double> %i.p, <2 x double> %i.o)
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.u = load double, ptr %i.t, align 8, !tbaa !10
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.w = load double, ptr %i.v, align 8, !tbaa !10
  %i.x = fmul double %i.g, %i.w
  %i.y = tail call double @llvm.fmuladd.f64(double %i.f, double %i.u, double %i.x)
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  %i.aa = load double, ptr %i.z, align 8, !tbaa !10
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.d, double %i.aa, double %i.y)
  store <2 x double> %i.s, ptr %0, align 8, !tbaa !10
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.ab, ptr %i.ac, align 8, !tbaa !10
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ah = load double, ptr %i.t, align 8, !tbaa !10
  %i.ai = load double, ptr %i.v, align 8, !tbaa !10
  %i.aj = load double, ptr %i.z, align 8, !tbaa !10
  %i.ak = load double, ptr %i.ae, align 8, !tbaa !10 ; 2 uses
  %i.al = load double, ptr %i.af, align 8, !tbaa !10 ; 2 uses
  %i.am = load double, ptr %i.ag, align 8, !tbaa !10 ; 2 uses
  %i.an = load <2 x double>, ptr %2, align 8, !tbaa !10
  %i.ao = load <2 x double>, ptr %i.b, align 8, !tbaa !10
  %i.ap = insertelement <2 x double> poison, double %i.al, i64 0
  %i.aq = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ar = fmul <2 x double> %i.aq, %i.ao
  %i.as = insertelement <2 x double> poison, double %i.ak, i64 0
  %i.at = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> zeroinitializer
  %i.au = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.at, <2 x double> %i.an, <2 x double> %i.ar)
  %i.av = load <2 x double>, ptr %i.e, align 8, !tbaa !10
  %i.aw = insertelement <2 x double> poison, double %i.am, i64 0
  %i.ax = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ay = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ax, <2 x double> %i.av, <2 x double> %i.au)
  %i.az = fmul double %i.al, %i.ai
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.ak, double %i.ah, double %i.az)
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.am, double %i.aj, double %i.ba)
  store <2 x double> %i.ay, ptr %i.ad, align 8, !tbaa !10
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %i.bb, ptr %i.bc, align 8, !tbaa !10
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bh = load double, ptr %i.t, align 8, !tbaa !10
  %i.bi = load double, ptr %i.v, align 8, !tbaa !10
  %i.bj = load double, ptr %i.z, align 8, !tbaa !10
  %i.bk = load double, ptr %i.be, align 8, !tbaa !10 ; 2 uses
  %i.bl = load double, ptr %i.bf, align 8, !tbaa !10 ; 2 uses
  %i.bm = load double, ptr %i.bg, align 8, !tbaa !10 ; 2 uses
  %i.bn = load <2 x double>, ptr %2, align 8, !tbaa !10
  %i.bo = load <2 x double>, ptr %i.b, align 8, !tbaa !10
  %i.bp = insertelement <2 x double> poison, double %i.bl, i64 0
  %i.bq = shufflevector <2 x double> %i.bp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.br = fmul <2 x double> %i.bq, %i.bo
  %i.bs = insertelement <2 x double> poison, double %i.bk, i64 0
  %i.bt = shufflevector <2 x double> %i.bs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bt, <2 x double> %i.bn, <2 x double> %i.br)
  %i.bv = load <2 x double>, ptr %i.e, align 8, !tbaa !10
  %i.bw = insertelement <2 x double> poison, double %i.bm, i64 0
  %i.bx = shufflevector <2 x double> %i.bw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.by = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bx, <2 x double> %i.bv, <2 x double> %i.bu)
  %i.bz = fmul double %i.bl, %i.bi
  %i.ca = tail call double @llvm.fmuladd.f64(double %i.bk, double %i.bh, double %i.bz)
  %i.cb = tail call double @llvm.fmuladd.f64(double %i.bm, double %i.bj, double %i.ca)
  store <2 x double> %i.by, ptr %i.bd, align 8, !tbaa !10
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double %i.cb, ptr %i.cc, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 0, 2) i32 @_cmsMAT3inverse(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.d = load double, ptr %i.c, align 8, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
end_hunk_0
begin_hunk_1_@_cmsMAT3inverse:bb.a
  %i.bt = fneg double %i.bs
  %i.bu = fmul double %i.br, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bw = load double, ptr %i.ac, align 8, !tbaa !10
  %i.bx = load double, ptr %i.a, align 8, !tbaa !10
  %i.by = tail call double @llvm.fmuladd.f64(double %i.bw, double %i.bx, double %i.bu)
  %i.bz = insertelement <2 x double> poison, double %i.by, i64 0
  %i.ca = shufflevector <2 x double> %i.bz, <2 x double> %i.ab, <2 x i32> <i32 0, i32 2>
  %i.cb = fdiv <2 x double> %i.ca, %i.bg
  store <2 x double> %i.cb, ptr %i.bv, align 8, !tbaa !10
  %i.cc = load double, ptr %i.aj, align 8, !tbaa !10
  %i.cd = load double, ptr %i.b, align 8, !tbaa !10
  %i.ce = load double, ptr %0, align 8, !tbaa !10
  %i.cf = load double, ptr %i.f, align 8, !tbaa !10
  %i.cg = fneg double %i.cf
  %i.ch = fmul double %i.ce, %i.cg
  %i.ci = tail call double @llvm.fmuladd.f64(double %i.cc, double %i.cd, double %i.ch)
  %i.cj = fdiv double %i.ci, %i.ag
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 56
  store double %i.cj, ptr %i.ck, align 8, !tbaa !10
  %i.cl = load double, ptr %0, align 8, !tbaa !10
  %i.cm = load double, ptr %i.ak, align 8, !tbaa !10
  %i.cn = load double, ptr %i.aj, align 8, !tbaa !10
  %i.co = load double, ptr %i.a, align 8, !tbaa !10
  %i.cp = fneg double %i.co
  %i.cq = fmul double %i.cn, %i.cp
  %i.cr = tail call double @llvm.fmuladd.f64(double %i.cl, double %i.cm, double %i.cq)
  %i.cs = fdiv double %i.cr, %i.ag
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 64
  store double %i.cs, ptr %i.ct, align 8, !tbaa !10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 0, 2) i32 @_cmsMAT3solve(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %.sroa.03.0.copyload = load double, ptr %1, align 8 ; 5 uses
  %.sroa.88.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.1817.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.1817.0.copyload = load double, ptr %.sroa.1817.0..sroa_idx, align 8 ; 3 uses
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.a = load <2 x double>, ptr %.sroa.88.0..sroa_idx, align 8 ; 6 uses
  %i.b = load <2 x double>, ptr %.sroa.21.0..sroa_idx, align 8 ; 5 uses
  %i.c = load <2 x double>, ptr %.sroa.30.0..sroa_idx, align 8 ; 4 uses
  %.sroa.33.0.copyload = load double, ptr %.sroa.33.0..sroa_idx, align 8
  %i.d = insertelement <2 x double> %i.c, double %.sroa.1817.0.copyload, i64 1
  %i.e = fneg <2 x double> %i.d                   ; 3 uses
  %i.f = load <2 x double>, ptr %.sroa.24.0..sroa_idx, align 8 ; 5 uses
  %i.g = shufflevector <2 x double> %i.e, <2 x double> %i.f, <2 x i32> <i32 0, i32 2>
  %i.h = fmul <2 x double> %i.f, %i.g
  %i.i = shufflevector <2 x double> %i.b, <2 x double> %i.e, <2 x i32> <i32 0, i32 3>
  %i.j = insertelement <2 x double> poison, double %.sroa.33.0.copyload, i64 0 ; 2 uses
  %i.k = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> zeroinitializer
  %i.l = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.i, <2 x double> %i.k, <2 x double> %i.h) ; 4 uses
  %i.m = extractelement <2 x double> %i.f, i64 1
  %i.n = fneg double %i.m                         ; 2 uses
  %i.o = shufflevector <2 x double> %i.b, <2 x double> %i.a, <2 x i32> <i32 0, i32 2>
  %i.p = insertelement <2 x double> %i.l, double %i.n, i64 0
  %i.q = fmul <2 x double> %i.o, %i.p
  %i.r = insertelement <2 x double> poison, double %.sroa.1817.0.copyload, i64 0
  %i.s = insertelement <2 x double> %i.r, double %.sroa.03.0.copyload, i64 1
  %i.t = shufflevector <2 x double> %i.c, <2 x double> %i.l, <2 x i32> <i32 0, i32 2>
  %i.u = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.s, <2 x double> %i.t, <2 x double> %i.q) ; 2 uses
  %i.v = extractelement <2 x double> %i.a, i64 1
  %i.w = extractelement <2 x double> %i.u, i64 0  ; 2 uses
  %i.x = extractelement <2 x double> %i.u, i64 1
  %i.y = tail call double @llvm.fmuladd.f64(double %i.v, double %i.w, double %i.x) ; 9 uses
  %i.z = tail call double @llvm.fabs.f64(double %i.y)
  %i.aa = fcmp olt double %i.z, 1.000000e-04
  br i1 %i.aa, label %_cmsMAT3inverse.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ab = shufflevector <2 x double> %i.a, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.ac = extractelement <2 x double> %i.l, i64 0
  %i.ad = fdiv double %i.ac, %i.y
  %i.ae = shufflevector <2 x double> %i.c, <2 x double> %i.b, <2 x i32> <i32 1, i32 2>
  %i.af = fneg <2 x double> %i.ae
  %i.ag = fmul <2 x double> %i.a, %i.af
  %i.ah = shufflevector <2 x double> %i.c, <2 x double> %i.b, <2 x i32> <i32 0, i32 3>
  %i.ai = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> %i.ah, <2 x double> %i.ag) ; 2 uses
  %i.aj = extractelement <2 x double> %i.ai, i64 0
  %i.ak = fdiv double %i.aj, %i.y
  %i.al = extractelement <2 x double> %i.ai, i64 1
  %i.am = fdiv double %i.al, %i.y
  %i.an = extractelement <2 x double> %i.l, i64 1
  %i.ao = fdiv double %i.an, %i.y
  %i.ap = insertelement <2 x double> %i.ab, double %.sroa.03.0.copyload, i64 1
  %i.aq = insertelement <2 x double> poison, double %i.n, i64 0
  %i.ar = fneg <2 x double> %i.f
  %i.as = shufflevector <2 x double> %i.aq, <2 x double> %i.ar, <2 x i32> <i32 0, i32 2>
  %i.at = fmul <2 x double> %i.ap, %i.as
  %i.au = insertelement <2 x double> %i.a, double %.sroa.03.0.copyload, i64 0
  %i.av = insertelement <2 x double> %i.j, double %.sroa.1817.0.copyload, i64 1
  %i.aw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.au, <2 x double> %i.av, <2 x double> %i.at)
  %i.ax = insertelement <2 x double> poison, double %i.y, i64 0
  %i.ay = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> zeroinitializer
  %i.az = fdiv <2 x double> %i.aw, %i.ay          ; 2 uses
  %i.ba = fdiv double %i.w, %i.y
  %i.bb = insertelement <2 x double> %i.ab, double %.sroa.03.0.copyload, i64 0
  %i.bc = fmul <2 x double> %i.bb, %i.e
  %i.bd = shufflevector <2 x double> %i.a, <2 x double> %i.b, <2 x i32> <i32 0, i32 2>
  %i.be = shufflevector <2 x double> %i.f, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bf = insertelement <2 x double> %i.be, double %.sroa.03.0.copyload, i64 1
  %i.bg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bd, <2 x double> %i.bf, <2 x double> %i.bc) ; 2 uses
  %i.bh = extractelement <2 x double> %i.bg, i64 0
  %i.bi = fdiv double %i.bh, %i.y
  %i.bj = extractelement <2 x double> %i.bg, i64 1
  %i.bk = fdiv double %i.bj, %i.y
  %i.bl = load double, ptr %2, align 8, !tbaa !10
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !10
  %i.bo = fmul double %i.ak, %i.bn
  %i.bp = tail call double @llvm.fmuladd.f64(double %i.ad, double %i.bl, double %i.bo)
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.br = load double, ptr %i.bq, align 8, !tbaa !10
  %i.bs = tail call double @llvm.fmuladd.f64(double %i.am, double %i.br, double %i.bp)
  store double %i.bs, ptr %0, align 8, !tbaa !10
  %i.bt = load double, ptr %2, align 8, !tbaa !10
  %i.bu = load double, ptr %i.bm, align 8, !tbaa !10
  %i.bv = extractelement <2 x double> %i.az, i64 0
  %i.bw = fmul double %i.bv, %i.bu
  %i.bx = tail call double @llvm.fmuladd.f64(double %i.ao, double %i.bt, double %i.bw)
  %i.by = load double, ptr %i.bq, align 8, !tbaa !10
  %i.bz = extractelement <2 x double> %i.az, i64 1
  %i.ca = tail call double @llvm.fmuladd.f64(double %i.bz, double %i.by, double %i.bx)
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.ca, ptr %i.cb, align 8, !tbaa !10
  %i.cc = load double, ptr %2, align 8, !tbaa !10
  %i.cd = load double, ptr %i.bm, align 8, !tbaa !10
  %i.ce = fmul double %i.bi, %i.cd
  %i.cf = tail call double @llvm.fmuladd.f64(double %i.ba, double %i.cc, double %i.ce)
  %i.cg = load double, ptr %i.bq, align 8, !tbaa !10
  %i.ch = tail call double @llvm.fmuladd.f64(double %i.bk, double %i.cg, double %i.cf)
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.ch, ptr %i.ci, align 8, !tbaa !10
  br label %_cmsMAT3inverse.exit.thread

_cmsMAT3inverse.exit.thread:                      ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_cmsMAT3eval(ptr nofree noundef writeonly captures(none) initializes((0, 24)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = load double, ptr %1, align 8, !tbaa !10
  %i.b = load double, ptr %2, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load double, ptr %i.c, align 8, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.f = load double, ptr %i.e, align 8, !tbaa !10
  %i.g = fmul double %i.d, %i.f
  %i.h = tail call double @llvm.fmuladd.f64(double %i.a, double %i.b, double %i.g)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load double, ptr %i.i, align 8, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.l = load double, ptr %i.k, align 8, !tbaa !10
  %i.m = tail call double @llvm.fmuladd.f64(double %i.j, double %i.l, double %i.h)
  store double %i.m, ptr %0, align 8, !tbaa !10
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load double, ptr %i.n, align 8, !tbaa !10
  %i.p = load double, ptr %2, align 8, !tbaa !10
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = load double, ptr %i.q, align 8, !tbaa !10
  %i.s = load double, ptr %i.e, align 8, !tbaa !10
  %i.t = fmul double %i.r, %i.s
  %i.u = tail call double @llvm.fmuladd.f64(double %i.o, double %i.p, double %i.t)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.w = load double, ptr %i.v, align 8, !tbaa !10
  %i.x = load double, ptr %i.k, align 8, !tbaa !10
  %i.y = tail call double @llvm.fmuladd.f64(double %i.w, double %i.x, double %i.u)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.y, ptr %i.z, align 8, !tbaa !10
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !10
  %i.ac = load double, ptr %2, align 8, !tbaa !10
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !10
  %i.af = load double, ptr %i.e, align 8, !tbaa !10
  %i.ag = fmul double %i.ae, %i.af
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.ab, double %i.ac, double %i.ag)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !10
  %i.ak = load double, ptr %i.k, align 8, !tbaa !10
  %i.al = tail call double @llvm.fmuladd.f64(double %i.aj, double %i.ak, double %i.ah)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.al, ptr %i.am, align 8, !tbaa !10
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"double", !5, i64 0}
!10 = !{!9, !9, i64 0}
end_hunk_1
