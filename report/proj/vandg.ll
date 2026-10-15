Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/vandg?download=true
inline.NumInlined: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.PJ_COORD = type { [4 x double] }

@_ZL9des_vandg = internal constant [30 x i8] c"van der Grinten (I)\0A\09Misc Sph\00", align 16
@pj_s_vandg = hidden local_unnamed_addr constant ptr @_ZL9des_vandg, align 8
@.str = private unnamed_addr constant [6 x i8] c"vandg\00", align 1

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @pj_vandg(ptr nofree noundef writeonly captures(address_is_null, ret: address, provenance) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @_ZL15vandg_s_inverse5PJ_XYP8PJconsts, ptr %i.b, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr @_ZL15vandg_s_forward5PJ_LPP8PJconsts, ptr %i.c, align 8, !tbaa !39
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_Z6pj_newv()      ; 7 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @.str, ptr %i.f, align 8, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr @_ZL9des_vandg, ptr %i.g, align 8, !tbaa !42
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 360
  store i32 1, ptr %i.h, align 8, !tbaa !43
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 380
  store i32 4, ptr %i.i, align 4, !tbaa !44
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 384
  store i32 1, ptr %i.j, align 8, !tbaa !45
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi ptr [ %0, %bb.b ], [ %i.d, %bb.d ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden noundef ptr @_Z34pj_projection_specific_setup_vandgP8PJconsts(ptr nofree noundef returned writeonly captures(ret: address, provenance) initializes((104, 120), (216, 224)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @_ZL15vandg_s_inverse5PJ_XYP8PJconsts, ptr %i.b, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr @_ZL15vandg_s_forward5PJ_LPP8PJconsts, ptr %i.c, align 8, !tbaa !39
  ret ptr %0
}

declare noundef ptr @_Z6pj_newv() local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal { double, double } @_ZL15vandg_s_inverse5PJ_XYP8PJconsts(double %0, double %1, ptr noundef %2) #0 {
bb.a:
  %3 = alloca %union.PJ_COORD, align 8            ; 5 uses
  %i.a = fmul double %0, %0                       ; 6 uses
  %i.b = tail call double @llvm.fabs.f64(double %1) ; 5 uses
  %i.c = fcmp olt double %i.b, 1.000000e-10
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = tail call double @llvm.fabs.f64(double %0)
  %i.e = fcmp ugt double %i.d, 1.000000e-10
  br i1 %i.e, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.f = fadd double %i.a, f0x4013BD3CC9BE45DE
  %i.g = fmul double %i.f, f0x4033BD3CC9BE45DE
  %i.h = tail call double @llvm.fmuladd.f64(double %i.a, double %i.a, double %i.g)
  %i.i = fadd double %i.a, f0xC023BD3CC9BE45DE
  %sqrt = tail call double @sqrt(double noundef %i.h) #6
  %i.j = fadd double %i.i, %sqrt
  %i.k = fmul double %i.j, 5.000000e-01
  %i.l = fdiv double %i.k, %0
  br label %bb.o

bb.d:                                             ; preds = %bb.a
  %i.m = fmul double %i.b, f0xC00921FB54442D18
  %i.n = fadd double %i.b, f0x3FF921FB54442D18
  %i.o = fmul double %1, %1                       ; 4 uses
  %i.p = fadd double %i.a, %i.o                   ; 6 uses
  %i.q = fadd double %i.p, f0x4023BD3CC9BE45DE
  %i.r = insertelement <2 x double> poison, double %i.m, i64 0
  %i.s = insertelement <2 x double> %i.r, double %i.p, i64 1 ; 2 uses
  %i.t = insertelement <2 x double> %i.s, double %i.q, i64 0
  %i.u = fmul <2 x double> %i.s, %i.t             ; 4 uses
  %i.v = tail call double @llvm.fmuladd.f64(double %i.n, double f0x400921FB54442D18, double %i.o)
  %i.w = fmul double %i.v, f0x400921FB54442D18
  %i.x = insertelement <2 x double> <double -3.000000e+00, double poison>, double %i.b, i64 1
  %i.y = insertelement <2 x double> poison, double %i.o, i64 0
  %i.z = insertelement <2 x double> %i.y, double %i.p, i64 1
  %i.aa = insertelement <2 x double> poison, double %i.p, i64 0
  %i.ab = insertelement <2 x double> %i.aa, double %i.w, i64 1
  %i.ac = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.x, <2 x double> %i.z, <2 x double> %i.ab)
  %i.ad = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ac, <2 x double> <double f0x4023BD3CC9BE45DE, double f0x401921FB54442D18>, <2 x double> %i.u) ; 3 uses
  %i.ae = shufflevector <2 x double> %i.ad, <2 x double> %i.u, <2 x i32> <i32 0, i32 2>
  %i.af = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ag = fdiv <2 x double> %i.ae, %i.af          ; 2 uses
  %i.ah = extractelement <2 x double> %i.ag, i64 0 ; 5 uses
  %i.ai = fmul double %i.ah, f0x3FD5555555555555  ; 2 uses
  %i.aj = fneg double %i.ai                       ; 2 uses
  %i.ak = extractelement <2 x double> %i.ag, i64 1
  %i.al = tail call double @llvm.fmuladd.f64(double %i.aj, double %i.ah, double %i.ak) ; 2 uses
  %i.am = fmul double %i.al, f0xBFD5555555555555
  %i.an = tail call double @sqrt(double noundef %i.am) #6
  %i.ao = fmul double %i.an, 2.000000e+00         ; 2 uses
  %i.ap = fmul double %i.al, %i.ao                ; 2 uses
  %i.aq = tail call double @llvm.fabs.f64(double %i.ap)
  %i.ar = fcmp olt double %i.aq, f0x3C9CD2B297D889BC
  br i1 %i.ar, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.as = tail call i32 @proj_errno_set(ptr noundef %2, i32 noundef 2050) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  call void @_Z16proj_coord_errorv(ptr dead_on_unwind nonnull writable sret(%union.PJ_COORD) align 8 %3)
  %.sroa.073.0.copyload = load double, ptr %3, align 8, !tbaa !40
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.5.0.copyload = load double, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  br label %bb.o

bb.f:                                             ; preds = %bb.d
  %i.at = fmul double %i.ah, f0x3FB2F684BDA12F68
  %i.au = fmul double %i.ah, %i.at
  %i.av = fmul double %i.b, f0x400921FB54442D18   ; 2 uses
  %i.aw = extractelement <2 x double> %i.u, i64 0
  %i.ax = fneg double %i.aw
  %i.ay = fmul double %i.ai, %i.ax
  %i.az = tail call double @llvm.fmuladd.f64(double %i.av, double %i.av, double %i.ay)
  %i.ba = extractelement <2 x double> %i.ad, i64 1
  %i.bb = fdiv double %i.az, %i.ba
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.au, double %i.ah, double %i.bb)
  %i.bd = fmul double %i.bc, 3.000000e+00
  %i.be = fdiv double %i.bd, %i.ap                ; 3 uses
  %i.bf = tail call double @llvm.fabs.f64(double %i.be) ; 2 uses
  %i.bg = fadd double %i.bf, -1.000000e-10
  %i.bh = fcmp ugt double %i.bg, 1.000000e+00
  br i1 %i.bh, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bi = fcmp ogt double %i.bf, 1.000000e+00
  br i1 %i.bi, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bj = fcmp ogt double %i.be, 0.000000e+00
  %i.bk = select i1 %i.bj, double 0.000000e+00, double f0x400921FB54442D18
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bl = tail call double @acos(double noundef %i.be) #6
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bm = phi double [ %i.bk, %bb.h ], [ %i.bl, %bb.i ] ; 2 uses
  %i.bn = fcmp ogt double %i.p, f0x4023BD3CC9BE45DE
  %i.bo = fsub double f0x401921FB54442D18, %i.bm
  %.0 = select i1 %i.bn, double %i.bo, double %i.bm
  %i.bp = tail call double @llvm.fmuladd.f64(double %.0, double f0x3FD5555555555555, double f0x4010C152382D7366)
  %i.bq = tail call double @cos(double noundef %i.bp) #6
  %i.br = tail call double @llvm.fmuladd.f64(double %i.ao, double %i.bq, double %i.aj)
  %i.bs = fmul double %i.br, f0x400921FB54442D18  ; 2 uses
  %i.bt = fcmp olt double %1, 0.000000e+00
  %i.bu = fneg double %i.bs
  %.sroa.8.0 = select i1 %i.bt, double %i.bu, double %i.bs ; 2 uses
  %i.bv = fsub double %i.a, %i.o
  %i.bw = fadd double %i.bv, f0x4013BD3CC9BE45DE
  %i.bx = extractelement <2 x double> %i.u, i64 1
  %i.by = tail call double @llvm.fmuladd.f64(double %i.bw, double f0x4033BD3CC9BE45DE, double %i.bx) ; 2 uses
  %i.bz = tail call double @llvm.fabs.f64(double %0)
  %i.ca = fcmp ugt double %i.bz, 1.000000e-10
  br i1 %i.ca, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.cb = fadd double %i.p, f0xC023BD3CC9BE45DE   ; 2 uses
  %i.cc = fcmp ugt double %i.by, 0.000000e+00
  br i1 %i.cc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cd = tail call double @sqrt(double noundef %i.by) #6
  %i.ce = fadd double %i.cb, %i.cd
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.cf = phi double [ %i.ce, %bb.l ], [ %i.cb, %bb.k ]
  %i.cg = fmul double %i.cf, 5.000000e-01
  %i.ch = fdiv double %i.cg, %0
  br label %bb.o

bb.n:                                             ; preds = %bb.f
  %i.ci = tail call i32 @proj_errno_set(ptr noundef %2, i32 noundef 2050) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.e, %bb.n, %bb.j, %bb.m, %bb.c, %bb.b
  %.sroa.073.1 = phi double [ 0.000000e+00, %bb.b ], [ %i.l, %bb.c ], [ %.sroa.073.0.copyload, %bb.e ], [ 0.000000e+00, %bb.n ], [ %i.ch, %bb.m ], [ 0.000000e+00, %bb.j ]
  %.sroa.5.1 = phi double [ 0.000000e+00, %bb.b ], [ 0.000000e+00, %bb.c ], [ %.sroa.5.0.copyload, %bb.e ], [ 0.000000e+00, %bb.n ], [ %.sroa.8.0, %bb.m ], [ %.sroa.8.0, %bb.j ]
  %.fca.0.insert = insertvalue { double, double } poison, double %.sroa.073.1, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.sroa.5.1, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define internal { double, double } @_ZL15vandg_s_forward5PJ_LPP8PJconsts(double %0, double %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = fdiv double %1, f0x3FF921FB54442D18
  %i.c = tail call double @llvm.fabs.f64(double %i.b) ; 3 uses
  %i.d = fadd double %i.c, -1.000000e-10
  %i.e = fcmp ogt double %i.d, 1.000000e+00
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @proj_errno_set(ptr noundef %2, i32 noundef 2050) ; 0 uses
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 344
  %i.h = load i32, ptr %i.g, align 8, !tbaa !46
  %.not = icmp ne i32 %i.h, 0
  %i.i = tail call double @llvm.fabs.f64(double %0) ; 2 uses
  %i.j = fcmp ogt double %i.i, f0x400921FB54442D18
  %or.cond = select i1 %.not, i1 %i.j, i1 false
  %.0 = select i1 %or.cond, double -5.000000e-01, double 5.000000e-01
  %i.k = fcmp ogt double %i.c, 1.000000e+00
  %spec.store.select = select i1 %i.k, double 1.000000e+00, double %i.c ; 6 uses
  %i.l = tail call double @llvm.fabs.f64(double %1)
  %i.m = fcmp ugt double %i.l, 1.000000e-10
  br i1 %i.m, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = fcmp ugt double %i.i, 1.000000e-10
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = fadd double %spec.store.select, -1.000000e+00
  %i.p = tail call double @llvm.fabs.f64(double %i.o)
  %i.q = fcmp olt double %i.p, 1.000000e-10
  br i1 %i.q, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = tail call double @asin(double noundef %spec.store.select) #6
  %i.s = fmul double %i.r, 5.000000e-01
  %i.t = tail call double @tan(double noundef %i.s) #6
  %i.u = fmul double %i.t, f0x400921FB54442D18    ; 2 uses
  %i.v = fcmp olt double %1, 0.000000e+00
  br i1 %i.v, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.w = fneg double %i.u
  br label %bb.l

bb.h:                                             ; preds = %bb.e
  %i.x = fdiv double f0x400921FB54442D18, %0
  %i.y = fdiv double %0, f0x400921FB54442D18
  %i.z = fsub double %i.x, %i.y
  %i.aa = tail call double @llvm.fabs.f64(double %i.z)
  %i.ab = fmul double %i.aa, %.0                  ; 4 uses
  %i.ac = fmul double %i.ab, %i.ab                ; 2 uses
  %i.ad = fneg double %spec.store.select
  %i.ae = tail call double @llvm.fmuladd.f64(double %i.ad, double %spec.store.select, double 1.000000e+00)
  %i.af = tail call double @sqrt(double noundef %i.ae) #6 ; 2 uses
  %i.ag = fadd double %spec.store.select, %i.af
  %i.ah = fadd double %i.ag, -1.000000e+00
  %i.ai = fdiv double %i.af, %i.ah                ; 4 uses
  %i.aj = fmul double %i.ai, %i.ai
  %i.ak = fdiv double 2.000000e+00, %spec.store.select
  %i.al = fadd double %i.ak, -1.000000e+00
  %i.am = fmul double %i.al, %i.ai                ; 2 uses
  %i.an = fmul double %i.am, %i.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store volatile double %i.an, ptr %i.a, align 8, !tbaa !40
  %.0..0..0..0. = load volatile double, ptr %i.a, align 8, !tbaa !40 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ao = fsub double %i.ai, %.0..0..0..0.        ; 3 uses
  %i.ap = fadd double %i.ac, %.0..0..0..0.        ; 2 uses
  %i.aq = fmul double %i.ac, %i.ao
  %i.ar = fsub double %i.aj, %.0..0..0..0.
  %i.as = fneg double %i.ar
  %i.at = fmul double %i.ap, %i.as
  %i.au = tail call double @llvm.fmuladd.f64(double %i.aq, double %i.ao, double %i.at)
  %i.av = tail call double @sqrt(double noundef %i.au) #6
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.ab, double %i.ao, double %i.av)
  %i.ax = tail call double @llvm.fabs.f64(double %i.aw)
  %i.ay = fmul double %i.ax, f0x400921FB54442D18
  %i.az = fdiv double %i.ay, %i.ap                ; 2 uses
  %i.ba = fcmp olt double %0, 0.000000e+00
  %i.bb = fneg double %i.az
  %.sroa.041.0 = select i1 %i.ba, double %i.bb, double %i.az ; 4 uses
  %i.bc = fdiv double %.sroa.041.0, f0x400921FB54442D18
  %i.bd = tail call double @llvm.fabs.f64(double %i.bc) ; 2 uses
  %i.be = tail call double @llvm.fmuladd.f64(double %i.ab, double 2.000000e+00, double %i.bd)
  %i.bf = fneg double %i.bd
  %i.bg = tail call double @llvm.fmuladd.f64(double %i.bf, double %i.be, double 1.000000e+00) ; 4 uses
  %i.bh = fcmp olt double %i.bg, -1.000000e-10
  br i1 %i.bh, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bi = tail call i32 @proj_errno_set(ptr noundef nonnull %2, i32 noundef 2050) ; 0 uses
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.bj = fcmp olt double %i.bg, 0.000000e+00
  br i1 %i.bj, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bk = tail call double @sqrt(double noundef %i.bg) #6
  %i.bl = fcmp olt double %1, 0.000000e+00
  %i.bm = select i1 %i.bl, double f0xC00921FB54442D18, double f0x400921FB54442D18
  %i.bn = fmul double %i.bm, %i.bk
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.c, %bb.g, %bb.f, %bb.k, %bb.b
  %.sroa.12.2 = phi double [ 0.000000e+00, %bb.b ], [ %i.bg, %bb.i ], [ %i.bn, %bb.k ], [ %i.w, %bb.g ], [ %i.u, %bb.f ], [ 0.000000e+00, %bb.c ], [ 0.000000e+00, %bb.j ]
  %.sroa.041.3 = phi double [ 0.000000e+00, %bb.b ], [ %.sroa.041.0, %bb.i ], [ %.sroa.041.0, %bb.k ], [ 0.000000e+00, %bb.g ], [ 0.000000e+00, %bb.f ], [ %0, %bb.c ], [ %.sroa.041.0, %bb.j ]
  %.fca.0.insert = insertvalue { double, double } poison, double %.sroa.041.3, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.sroa.12.2, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #5

declare i32 @proj_errno_set(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_Z16proj_coord_errorv(ptr dead_on_unwind writable sret(%union.PJ_COORD) align 8) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @acos(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @tan(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @asin(double noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

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
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS6pj_ctx", !8, i64 0}
!10 = !{!"p1 omnipotent char", !8, i64 0}
!11 = !{!"p1 _ZTS8ARG_list", !8, i64 0}
!12 = !{!"p1 _ZTS8PJconsts", !8, i64 0}
!13 = !{!"p1 _ZTS13geod_geodesic", !8, i64 0}
!14 = !{!"double", !4, i64 0}
!15 = !{!"_ZTS11pj_io_units", !4, i64 0}
!16 = !{!"p1 _ZTSN5osgeo4proj4util10BaseObjectE", !8, i64 0}
!17 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !8, i64 0}
!18 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !17, i64 0}
!19 = !{!"_ZTSSt12__shared_ptrIN5osgeo4proj4util10BaseObjectELN9__gnu_cxx12_Lock_policyE2EE", !16, i64 0, !18, i64 8}
!20 = !{!"_ZTSSt10shared_ptrIN5osgeo4proj4util10BaseObjectEE", !19, i64 0}
!21 = !{!"bool", !4, i64 0}
!22 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!23 = !{!"long", !4, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !22, i64 0, !23, i64 8, !4, i64 16}
!25 = !{!"p1 _ZTSN5osgeo4proj9operation15GridDescriptionE", !8, i64 0}
!26 = !{!"_ZTSNSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE17_Vector_impl_dataE", !25, i64 0, !25, i64 8, !25, i64 16}
!27 = !{!"_ZTSNSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE12_Vector_implE", !26, i64 0}
!28 = !{!"_ZTSSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE", !27, i64 0}
!29 = !{!"_ZTSSt6vectorIN5osgeo4proj9operation15GridDescriptionESaIS3_EE", !28, i64 0}
!30 = !{!"_ZTS7PJ_TYPE", !4, i64 0}
!31 = !{!"p1 _ZTS16PJCoordOperation", !8, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseI16PJCoordOperationSaIS0_EE17_Vector_impl_dataE", !31, i64 0, !31, i64 8, !31, i64 16}
!33 = !{!"_ZTSNSt12_Vector_baseI16PJCoordOperationSaIS0_EE12_Vector_implE", !32, i64 0}
!34 = !{!"_ZTSSt12_Vector_baseI16PJCoordOperationSaIS0_EE", !33, i64 0}
!35 = !{!"_ZTSSt6vectorI16PJCoordOperationSaIS0_EE", !34, i64 0}
!36 = !{!"_ZTS8PJconsts", !9, i64 0, !10, i64 8, !10, i64 16, !11, i64 24, !10, i64 32, !12, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !13, i64 80, !8, i64 88, !5, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152, !8, i64 160, !14, i64 168, !14, i64 176, !14, i64 184, !14, i64 192, !14, i64 200, !14, i64 208, !14, i64 216, !14, i64 224, !14, i64 232, !14, i64 240, !14, i64 248, !14, i64 256, !14, i64 264, !14, i64 272, !14, i64 280, !14, i64 288, !14, i64 296, !14, i64 304, !14, i64 312, !14, i64 320, !14, i64 328, !14, i64 336, !5, i64 344, !5, i64 348, !5, i64 352, !5, i64 356, !5, i64 360, !5, i64 364, !5, i64 368, !5, i64 372, !5, i64 376, !15, i64 380, !15, i64 384, !12, i64 392, !12, i64 400, !12, i64 408, !12, i64 416, !12, i64 424, !12, i64 432, !14, i64 440, !14, i64 448, !14, i64 456, !14, i64 464, !14, i64 472, !14, i64 480, !14, i64 488, !14, i64 496, !14, i64 504, !14, i64 512, !14, i64 520, !5, i64 528, !4, i64 536, !5, i64 592, !8, i64 600, !8, i64 608, !14, i64 616, !14, i64 624, !5, i64 632, !4, i64 636, !20, i64 640, !21, i64 656, !14, i64 664, !21, i64 672, !24, i64 680, !24, i64 712, !24, i64 744, !21, i64 776, !29, i64 784, !30, i64 808, !35, i64 816, !5, i64 840, !21, i64 844, !21, i64 845, !21, i64 846, !12, i64 848}
!37 = !{!36, !14, i64 216}
!38 = !{!36, !8, i64 112}
!39 = !{!36, !8, i64 104}
!40 = !{!14, !14, i64 0}
!41 = !{!36, !10, i64 8}
!42 = !{!36, !10, i64 16}
!43 = !{!36, !5, i64 360}
!44 = !{!36, !15, i64 380}
!45 = !{!36, !15, i64 384}
!46 = !{!36, !5, i64 344}
end_hunk_0
