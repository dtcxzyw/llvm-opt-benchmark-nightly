inline.NumInlined: 33
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 16
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZZN2v84base7ieee7544atanEdE6atanhi = internal unnamed_addr constant [4 x double] [double f0x3FDDAC670561BB4F, double f0x3FE921FB54442D18, double f0x3FEF730BD281F69B, double f0x3FF921FB54442D18], align 16
@_ZZN2v84base7ieee7544atanEdE6atanlo = internal constant [4 x double] [double f0x3C7A2B7F222F65E2, double f0x3C81A62633145C07, double f0x3C7007887AF0CBBD, double f0x3C91A62633145C07], align 16
@_ZZN2v84base7ieee7545atan2EddE4tiny = internal global double 1.000000e-300, align 8
@_ZZN2v84base7ieee7545atan2EddE5pi_lo = internal global double f0x3CA1A62633145C07, align 8
@_ZZN2v84base7ieee7543expEdE4halF = internal unnamed_addr constant [2 x double] [double 5.000000e-01, double -5.000000e-01], align 16
@_ZZN2v84base7ieee7543expEdE5ln2HI = internal unnamed_addr constant [2 x double] [double f0x3FE62E42FEE00000, double f0xBFE62E42FEE00000], align 16
@_ZZN2v84base7ieee7543expEdE5ln2LO = internal unnamed_addr constant [2 x double] [double f0x3DEA39EF35793C76, double f0xBDEA39EF35793C76], align 16
@_ZZN2v84base7ieee7543expEdE4huge = internal global double 1.000000e+300, align 8
@_ZZN2v84base7ieee7543expEdE8twom1000 = internal global double f0x0170000000000000, align 8
@_ZZN2v84base7ieee7543expEdE7two1023 = internal global double f0x7FE0000000000000, align 8
@_ZZN2v84base7ieee7545expm1EdE4huge = internal global double 1.000000e+300, align 8
@_ZZN2v84base7ieee7544coshEdE4huge = internal global double 1.000000e+300, align 8
@_ZZN2v84base7ieee7546legacy3powEddE2bp = internal unnamed_addr constant [2 x double] [double 1.000000e+00, double 1.500000e+00], align 16
@_ZZN2v84base7ieee7546legacy3powEddE4dp_h = internal unnamed_addr constant [2 x double] [double 0.000000e+00, double f0x3FE2B80340000000], align 16
@_ZZN2v84base7ieee7546legacy3powEddE4dp_l = internal unnamed_addr constant [2 x double] [double 0.000000e+00, double f0x3E4CFDEB43CFD006], align 16
@_ZZN2v84base7ieee7544tanhEdE4tiny = internal constant double 1.000000e-300, align 8
@_ZZN2v84base7ieee75412_GLOBAL__N_118__ieee754_rem_pio2EdPdE11two_over_pi = internal unnamed_addr constant [66 x i32] [i32 10680707, i32 7228996, i32 1387004, i32 2578385, i32 16069853, i32 12639074, i32 9804092, i32 4427841, i32 16666979, i32 11263675, i32 12935607, i32 2387514, i32 4345298, i32 14681673, i32 3074569, i32 13734428, i32 16653803, i32 1880361, i32 10960616, i32 8533493, i32 3062596, i32 8710556, i32 7349940, i32 6258241, i32 3772886, i32 3769171, i32 3798172, i32 8675211, i32 12450088, i32 3874808, i32 9961438, i32 366607, i32 15675153, i32 9132554, i32 7151469, i32 3571407, i32 2607881, i32 12013382, i32 4155038, i32 6285869, i32 7677882, i32 13102053, i32 15825725, i32 473591, i32 9065106, i32 15363067, i32 6271263, i32 9264392, i32 5636912, i32 4652155, i32 7056368, i32 13614112, i32 10155062, i32 1944035, i32 9527646, i32 15080200, i32 6658437, i32 6231200, i32 6832269, i32 16767104, i32 5075751, i32 3212806, i32 1398474, i32 7579849, i32 6349435, i32 12618859], align 16
@_ZZN2v84base7ieee75412_GLOBAL__N_118__ieee754_rem_pio2EdPdE8npio2_hw = internal unnamed_addr constant [32 x i32] [i32 1073291771, i32 1074340347, i32 1074977148, i32 1075388923, i32 1075800698, i32 1076025724, i32 1076231611, i32 1076437499, i32 1076643386, i32 1076849274, i32 1076971356, i32 1077074300, i32 1077177244, i32 1077280187, i32 1077383131, i32 1077486075, i32 1077589019, i32 1077691962, i32 1077794906, i32 1077897850, i32 1077968460, i32 1078019932, i32 1078071404, i32 1078122876, i32 1078174348, i32 1078225820, i32 1078277292, i32 1078328763, i32 1078380235, i32 1078431707, i32 1078483179, i32 1078534651], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define dso_local noundef double @_ZN2v84base7ieee7544acosEd(double noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = bitcast double %0 to i64                 ; 3 uses
  %i.b = lshr i64 %i.a, 32
  %i.c = trunc nuw i64 %i.b to i32                ; 2 uses
  %i.d = and i32 %i.c, 2147483647                 ; 4 uses
  %i.e = icmp samesign ugt i32 %i.d, 1072693247
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = trunc i64 %i.a to i32
  %i.g = add nsw i32 %i.d, -1072693248
  %i.h = or i32 %i.g, %i.f
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.j = icmp sgt i32 %i.c, 0
  %. = select i1 %i.j, double 0.000000e+00, double f0x400921FB54442D18
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  %i.k = icmp samesign ult i32 %i.d, 1071644672
  br i1 %i.k, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.l = icmp samesign ult i32 %i.d, 1012924417
  br i1 %i.l, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = fmul double %0, %0                       ; 9 uses
  %i.n = tail call double @llvm.fmuladd.f64(double %i.m, double f0x3F023DE10DFDF709, double f0x3F49EFE07501B288)
  %i.o = tail call double @llvm.fmuladd.f64(double %i.m, double %i.n, double f0xBFA48228B5688F3B)
  %i.p = tail call double @llvm.fmuladd.f64(double %i.m, double %i.o, double f0x3FC9C1550E884455)
  %i.q = tail call double @llvm.fmuladd.f64(double %i.m, double %i.p, double f0xBFD4D61203EB6F7D)
  %i.r = insertelement <2 x double> poison, double %i.m, i64 0
  %i.s = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> zeroinitializer
  %i.t = insertelement <2 x double> <double poison, double f0x3FB3B8C5B12E9282>, double %i.q, i64 0
  %i.u = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.s, <2 x double> %i.t, <2 x double> <double f0x3FC5555555555555, double f0xBFE6066C1B8D0159>) ; 2 uses
  %i.v = extractelement <2 x double> %i.u, i64 0
  %i.w = fmul double %i.m, %i.v
  %i.x = extractelement <2 x double> %i.u, i64 1
  %i.y = tail call double @llvm.fmuladd.f64(double %i.m, double %i.x, double f0x40002AE59C598AC8)
  %i.z = tail call double @llvm.fmuladd.f64(double %i.m, double %i.y, double f0xC0033A271C8A2D4B)
  %i.aa = tail call double @llvm.fmuladd.f64(double %i.m, double %i.z, double 1.000000e+00)
  %i.ab = fdiv double %i.w, %i.aa
  %i.ac = fneg double %0
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.ac, double %i.ab, double f0x3C91A62633145C07)
  %i.ae = fsub double %i.ad, %0
  %i.af = fadd double %i.ae, f0x3FF921FB54442D18
  br label %bb.j

bb.g:                                             ; preds = %bb.d
  %i.ag = icmp slt i64 %i.a, 0
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ah = fadd double %0, 1.000000e+00
  %i.ai = fmul double %i.ah, 5.000000e-01         ; 10 uses
  %1 = tail call double @llvm.fmuladd.f64(double %i.ai, double f0x3F023DE10DFDF709, double f0x3F49EFE07501B288)
  %2 = tail call double @llvm.fmuladd.f64(double %i.ai, double %1, double f0xBFA48228B5688F3B)
  %3 = tail call double @llvm.fmuladd.f64(double %i.ai, double %2, double f0x3FC9C1550E884455)
  %4 = tail call double @llvm.fmuladd.f64(double %i.ai, double %3, double f0xBFD4D61203EB6F7D)
  %5 = insertelement <2 x double> poison, double %i.ai, i64 0
  %i.aj = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> zeroinitializer
  %6 = insertelement <2 x double> <double poison, double f0x3FB3B8C5B12E9282>, double %4, i64 0
  %i.ak = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aj, <2 x double> %6, <2 x double> <double f0x3FC5555555555555, double f0xBFE6066C1B8D0159>) ; 2 uses
  %i.al = extractelement <2 x double> %i.ak, i64 0
  %i.am = fmul double %i.ai, %i.al
  %i.an = extractelement <2 x double> %i.ak, i64 1
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.an, double f0x40002AE59C598AC8)
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.ao, double f0xC0033A271C8A2D4B)
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.ap, double 1.000000e+00)
  %i.ar = tail call double @sqrt(double noundef %i.ai) #12 ; 2 uses
  %i.as = fdiv double %i.am, %i.aq
  %i.at = tail call double @llvm.fmuladd.f64(double %i.as, double %i.ar, double f0xBC91A62633145C07)
  %i.au = fadd double %i.ar, %i.at
  %i.av = tail call double @llvm.fmuladd.f64(double %i.au, double -2.000000e+00, double f0x400921FB54442D18)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.aw = fsub double 1.000000e+00, %0
  %i.ax = fmul double %i.aw, 5.000000e-01         ; 11 uses
  %i.ay = tail call double @sqrt(double noundef %i.ax) #12 ; 3 uses
  %i.az = bitcast double %i.ay to i64
  %i.ba = and i64 %i.az, -4294967296
  %i.bb = bitcast i64 %i.ba to double             ; 4 uses
  %i.bc = fneg double %i.bb
  %i.bd = tail call double @llvm.fmuladd.f64(double %i.bc, double %i.bb, double %i.ax)
  %i.be = fadd double %i.ay, %i.bb
  %i.bf = fdiv double %i.bd, %i.be
  %7 = tail call double @llvm.fmuladd.f64(double %i.ax, double f0x3F023DE10DFDF709, double f0x3F49EFE07501B288)
  %8 = tail call double @llvm.fmuladd.f64(double %i.ax, double %7, double f0xBFA48228B5688F3B)
  %9 = tail call double @llvm.fmuladd.f64(double %i.ax, double %8, double f0x3FC9C1550E884455)
  %10 = tail call double @llvm.fmuladd.f64(double %i.ax, double %9, double f0xBFD4D61203EB6F7D)
  %11 = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.bg = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> zeroinitializer
  %12 = insertelement <2 x double> <double poison, double f0x3FB3B8C5B12E9282>, double %10, i64 0
  %i.bh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bg, <2 x double> %12, <2 x double> <double f0x3FC5555555555555, double f0xBFE6066C1B8D0159>) ; 2 uses
  %i.bi = extractelement <2 x double> %i.bh, i64 0
  %i.bj = fmul double %i.ax, %i.bi
  %i.bk = extractelement <2 x double> %i.bh, i64 1
  %i.bl = tail call double @llvm.fmuladd.f64(double %i.ax, double %i.bk, double f0x40002AE59C598AC8)
  %i.bm = tail call double @llvm.fmuladd.f64(double %i.ax, double %i.bl, double f0xC0033A271C8A2D4B)
  %i.bn = tail call double @llvm.fmuladd.f64(double %i.ax, double %i.bm, double 1.000000e+00)
  %i.bo = fdiv double %i.bj, %i.bn
  %i.bp = tail call double @llvm.fmuladd.f64(double %i.bo, double %i.ay, double %i.bf)
  %i.bq = fadd double %i.bp, %i.bb
  %i.br = fmul double %i.bq, 2.000000e+00
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.e, %bb.c, %bb.i, %bb.h, %bb.f
  %.1 = phi double [ %i.br, %bb.i ], [ f0x3FF921FB54442D18, %bb.e ], [ %i.af, %bb.f ], [ %i.av, %bb.h ], [ %., %bb.c ], [ +snan(0x4000000000000), %bb.b ]
  ret double %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define dso_local noundef double @_ZN2v84base7ieee7545acoshEd(double noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = bitcast double %0 to i64                 ; 5 uses
  %i.b = lshr i64 %i.a, 32
  %i.c = trunc nuw i64 %i.b to i32                ; 2 uses
  %i.d = trunc i64 %i.a to i32
  %i.e = icmp slt i32 %i.c, 1072693248
  br i1 %i.e, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ugt i64 %i.a, 4733283208366391295
  br i1 %i.f, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ugt i64 %i.a, 9218868437227405311
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = fadd double %0, %0
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.i = tail call noundef double @_ZN2v84base7ieee7543logEd(double noundef %0)
  %i.j = fadd double %i.i, f0x3FE62E42FEFA39EF
  br label %bb.j

bb.f:                                             ; preds = %bb.b
  %i.k = add nsw i32 %i.c, -1072693248
  %i.l = or i32 %i.k, %i.d
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = icmp samesign ugt i64 %i.a, 4611686022722355199
  br i1 %i.n, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.o = fmul double %0, %0
  %i.p = fadd double %i.o, -1.000000e+00
  %i.q = tail call double @sqrt(double noundef %i.p) #12
  %i.r = fadd double %0, %i.q
  %i.s = fdiv double -1.000000e+00, %i.r
  %i.t = tail call double @llvm.fmuladd.f64(double %0, double 2.000000e+00, double %i.s)
  %i.u = tail call noundef double @_ZN2v84base7ieee7543logEd(double noundef %i.t)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.v = fadd double %0, -1.000000e+00            ; 4 uses
  %i.w = fmul double %i.v, %i.v
  %i.x = tail call double @llvm.fmuladd.f64(double %i.v, double 2.000000e+00, double %i.w)
  %i.y = tail call double @sqrt(double noundef %i.x) #12
  %i.z = fadd double %i.v, %i.y
  %i.aa = tail call noundef double @_ZN2v84base7ieee7545log1pEd(double noundef %i.z)
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.f, %bb.i, %bb.h, %bb.e, %bb.d
  %.0 = phi double [ 0.000000e+00, %bb.f ], [ %i.h, %bb.d ], [ %i.j, %bb.e ], [ %i.aa, %bb.i ], [ %i.u, %bb.h ], [ +snan(0x4000000000000), %bb.a ]
  ret double %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef double @_ZN2v84base7ieee7543logEd(double noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = bitcast double %0 to i64                 ; 3 uses
  %i.b = lshr i64 %i.a, 32
  %i.c = trunc nuw i64 %i.b to i32                ; 3 uses
  %i.d = icmp slt i32 %i.c, 1048576
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = trunc i64 %i.a to i32
  %i.f = and i32 %i.c, 2147483647
  %i.g = or i32 %i.f, %i.e
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.u, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = icmp slt i64 %i.a, 0
  br i1 %i.i, label %bb.u, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = fmul double %0, f0x4350000000000000      ; 2 uses
  %i.k = bitcast double %i.j to i64
  %i.l = lshr i64 %i.k, 32
  %i.m = trunc nuw i64 %i.l to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.091 = phi double [ %i.j, %bb.d ], [ %0, %bb.a ] ; 3 uses
  %.082 = phi i32 [ %i.m, %bb.d ], [ %i.c, %bb.a ] ; 4 uses
  %.081 = phi i32 [ -54, %bb.d ], [ 0, %bb.a ]
  %i.n = icmp sgt i32 %.082, 2146435071
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = fadd double %.091, %.091
  br label %bb.u

bb.g:                                             ; preds = %bb.e
  %i.p = ashr i32 %.082, 20
  %i.q = add nsw i32 %i.p, -1023
  %i.r = add nsw i32 %i.q, %.081
  %i.s = and i32 %.082, 1048575                   ; 4 uses
  %i.t = add nuw nsw i32 %i.s, 614244             ; 2 uses
  %i.u = and i32 %i.t, 1048576
  %i.v = bitcast double %.091 to i64
  %i.w = and i64 %i.v, 4294967295
  %i.x = or disjoint i32 %i.u, %i.s
  %i.y = xor i32 %i.x, 1072693248
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = shl nuw nsw i64 %i.z, 32
  %i.ab = or disjoint i64 %i.aa, %i.w
  %i.ac = bitcast i64 %i.ab to double
  %i.ad = lshr i32 %i.t, 20
  %i.ae = add nsw i32 %i.r, %i.ad                 ; 7 uses
  %i.af = fadd double %i.ac, -1.000000e+00        ; 15 uses
  %i.ag = add nsw i32 %.082, 2
  %i.ah = and i32 %i.ag, 1048575
  %i.ai = icmp samesign ult i32 %i.ah, 3
  br i1 %i.ai, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.aj = fcmp oeq double %i.af, 0.000000e+00
  br i1 %i.aj, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ak = icmp eq i32 %i.ae, 0
  br i1 %i.ak, label %bb.u, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = sitofp i32 %i.ae to double              ; 2 uses
  %i.am = fmul nnan double %i.al, f0x3DEA39EF35793C76
  %i.an = tail call double @llvm.fmuladd.f64(double %i.al, double f0x3FE62E42FEE00000, double %i.am)
  br label %bb.u

bb.k:                                             ; preds = %bb.h
  %i.ao = fmul double %i.af, %i.af
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.af, double f0xBFD5555555555555, double 5.000000e-01)
  %i.aq = fmul double %i.ao, %i.ap                ; 2 uses
  %i.ar = icmp eq i32 %i.ae, 0
  br i1 %i.ar, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.as = fsub double %i.af, %i.aq
  br label %bb.u

bb.m:                                             ; preds = %bb.k
  %i.at = sitofp i32 %i.ae to double              ; 2 uses
  %i.au = fneg double %i.at
  %i.av = tail call double @llvm.fmuladd.f64(double %i.au, double f0x3DEA39EF35793C76, double %i.aq)
  %i.aw = fsub double %i.av, %i.af
  %i.ax = fneg double %i.aw
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.at, double f0x3FE62E42FEE00000, double %i.ax)
  br label %bb.u

bb.n:                                             ; preds = %bb.g
  %i.az = fadd double %i.af, 2.000000e+00
  %i.ba = fdiv double %i.af, %i.az                ; 6 uses
  %i.bb = sitofp i32 %i.ae to double              ; 4 uses
  %i.bc = fmul double %i.ba, %i.ba                ; 3 uses
  %i.bd = add nsw i32 %i.s, -398458
  %i.be = fmul double %i.bc, %i.bc                ; 5 uses
  %i.bf = sub nsw i32 440401, %i.s
  %1 = tail call double @llvm.fmuladd.f64(double %i.be, double f0x3FC39A09D078C69F, double f0x3FCC71C51D8E78AF)
  %i.bg = insertelement <2 x double> poison, double %i.be, i64 0
  %2 = shufflevector <2 x double> %i.bg, <2 x double> poison, <2 x i32> zeroinitializer
  %3 = insertelement <2 x double> <double poison, double f0x3FC2F112DF3E5244>, double %1, i64 0
  %i.bh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %2, <2 x double> %3, <2 x double> <double f0x3FD999999997FA04, double f0x3FC7466496CB03DE>) ; 2 uses
  %i.bi = extractelement <2 x double> %i.bh, i64 0
  %i.bj = fmul double %i.be, %i.bi
  %i.bk = extractelement <2 x double> %i.bh, i64 1
  %i.bl = tail call double @llvm.fmuladd.f64(double %i.be, double %i.bk, double f0x3FD2492494229359)
  %i.bm = tail call double @llvm.fmuladd.f64(double %i.be, double %i.bl, double f0x3FE5555555555593)
  %i.bn = fmul double %i.bc, %i.bm
  %i.bo = or i32 %i.bd, %i.bf
  %i.bp = fadd double %i.bj, %i.bn                ; 2 uses
  %i.bq = icmp sgt i32 %i.bo, 0
  br i1 %i.bq, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.br = fmul double %i.af, 5.000000e-01
  %i.bs = fmul double %i.af, %i.br                ; 3 uses
  %i.bt = icmp eq i32 %i.ae, 0
  %i.bu = fadd double %i.bs, %i.bp                ; 2 uses
  br i1 %i.bt, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bv = fneg double %i.ba
  %i.bw = tail call double @llvm.fmuladd.f64(double %i.bv, double %i.bu, double %i.bs)
  %i.bx = fsub double %i.af, %i.bw
  br label %bb.u

bb.q:                                             ; preds = %bb.o
  %i.by = fmul nnan double %i.bb, f0x3DEA39EF35793C76
  %i.bz = tail call double @llvm.fmuladd.f64(double %i.ba, double %i.bu, double %i.by)
  %i.ca = fsub double %i.bs, %i.bz
  %i.cb = fsub double %i.ca, %i.af
  %i.cc = fneg double %i.cb
  %i.cd = tail call double @llvm.fmuladd.f64(double %i.bb, double f0x3FE62E42FEE00000, double %i.cc)
  br label %bb.u

bb.r:                                             ; preds = %bb.n
  %i.ce = icmp eq i32 %i.ae, 0
  %i.cf = fsub double %i.af, %i.bp                ; 2 uses
  br i1 %i.ce, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cg = fneg double %i.ba
  %i.ch = tail call double @llvm.fmuladd.f64(double %i.cg, double %i.cf, double %i.af)
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.ci = fmul nnan double %i.bb, f0xBDEA39EF35793C76
  %i.cj = tail call double @llvm.fmuladd.f64(double %i.ba, double %i.cf, double %i.ci)
  %i.ck = fsub double %i.cj, %i.af
  %i.cl = fneg double %i.ck
  %i.cm = tail call double @llvm.fmuladd.f64(double %i.bb, double f0x3FE62E42FEE00000, double %i.cl)
  br label %bb.u

bb.u:                                             ; preds = %bb.c, %bb.b, %bb.i, %bb.t, %bb.s, %bb.q, %bb.p, %bb.m, %bb.l, %bb.j, %bb.f
  %.0 = phi double [ 0.000000e+00, %bb.i ], [ -inf, %bb.b ], [ %i.o, %bb.f ], [ %i.cm, %bb.t ], [ %i.an, %bb.j ], [ %i.as, %bb.l ], [ %i.ay, %bb.m ], [ %i.bx, %bb.p ], [ %i.cd, %bb.q ], [ %i.ch, %bb.s ], [ +snan(0x4000000000000), %bb.c ]
  ret double %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef double @_ZN2v84base7ieee7545log1pEd(double noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = bitcast double %0 to i64                 ; 3 uses
  %i.b = lshr i64 %i.a, 32
  %i.c = trunc nuw i64 %i.b to i32                ; 5 uses
  %i.d = and i32 %i.c, 2147483647                 ; 3 uses
  %i.e = icmp slt i32 %i.c, 1071284858
  br i1 %i.e, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.f = icmp samesign ugt i32 %i.d, 1072693247
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = fcmp oeq double %0, -1.000000e+00
  br i1 %i.g, label %bb.x, label %bb.d

bb.d:                                             ; preds = %bb.c
  br label %bb.x

bb.e:                                             ; preds = %bb.b
  %i.h = icmp samesign ult i32 %i.d, 1042284544
  br i1 %i.h, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.i = fadd double %0, f0x4350000000000000
  %i.j = fcmp ogt double %i.i, 0.000000e+00
  %i.k = icmp samesign ult i32 %i.d, 1016070144
  %or.cond = select i1 %i.j, i1 %i.k, i1 false
  br i1 %or.cond, label %bb.x, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = fneg double %0
  %i.m = fmul double %0, %i.l
  %i.n = tail call double @llvm.fmuladd.f64(double %i.m, double 5.000000e-01, double %0)
  br label %bb.x

bb.h:                                             ; preds = %bb.e
  %i.o = add i32 %i.c, -1
  %or.cond3 = icmp ult i32 %i.o, -1076707644
  br i1 %or.cond3, label %.thread108, label %.thread107

.thread:                                          ; preds = %bb.a
  %i.p = icmp ugt i64 %i.a, 9218868437227405311
  br i1 %i.p, label %bb.i, label %.thread121

bb.i:                                             ; preds = %.thread
  %i.q = fadd double %0, %0
  br label %bb.x

.thread108:                                       ; preds = %bb.h
  %i.r = fmul double %0, 5.000000e-01
  %i.s = fmul double %0, %i.r
  br label %bb.u

.thread121:                                       ; preds = %.thread
  %i.t = icmp ult i64 %i.a, 4845873199050653696
  br i1 %i.t, label %.thread107, label %bb.j

.thread107:                                       ; preds = %bb.h, %.thread121
  %i.u = fadd double %0, 1.000000e+00             ; 5 uses
  %i.v = bitcast double %i.u to i64
  %i.w = lshr i64 %i.v, 32
  %i.x = trunc nuw i64 %i.w to i32                ; 2 uses
  %i.y = ashr i32 %i.x, 20                        ; 2 uses
  %i.z = icmp sgt i32 %i.y, 1023
  %i.aa = fsub double %0, %i.u
  %i.ab = fadd double %i.aa, 1.000000e+00
  %i.ac = fadd double %i.u, -1.000000e+00
  %i.ad = fsub double %0, %i.ac
  %i.ae = select i1 %i.z, double %i.ab, double %i.ad
  %i.af = fdiv double %i.ae, %i.u
  br label %bb.k

bb.j:                                             ; preds = %.thread121
  %i.ag = lshr i32 %i.c, 20
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.thread107
  %.0101 = phi double [ %i.u, %.thread107 ], [ %0, %bb.j ]
  %.176.in = phi i32 [ %i.y, %.thread107 ], [ %i.ag, %bb.j ] ; 2 uses
  %.174 = phi i32 [ %i.x, %.thread107 ], [ %i.c, %bb.j ]
  %.071 = phi double [ %i.af, %.thread107 ], [ 0.000000e+00, %bb.j ] ; 3 uses
  %i.ah = and i32 %.174, 1048575                  ; 5 uses
  %i.ai = icmp samesign ult i32 %i.ah, 434334
  %i.aj = bitcast double %.0101 to i64
  %i.ak = and i64 %i.aj, 4294967295
  br i1 %i.ai, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %.176 = add nsw i32 %.176.in, -1023
  %i.al = or disjoint i32 %i.ah, 1072693248
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.am = add nsw i32 %.176.in, -1022
  %i.an = or disjoint i32 %i.ah, 1071644672
  %i.ao = sub nuw nsw i32 1048576, %i.ah
  %i.ap = lshr i32 %i.ao, 2
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.pn.in.in = phi i32 [ %i.al, %bb.l ], [ %i.an, %bb.m ]
  %.277 = phi i32 [ %.176, %bb.l ], [ %i.am, %bb.m ] ; 5 uses
  %.2 = phi i32 [ %i.ah, %bb.l ], [ %i.ap, %bb.m ]
  %.pn.in = zext i32 %.pn.in.in to i64
  %.pn = shl nuw nsw i64 %.pn.in, 32
  %.1102.in = or disjoint i64 %.pn, %i.ak
  %.1102 = bitcast i64 %.1102.in to double
  %i.aq = fadd double %.1102, -1.000000e+00       ; 7 uses
  %i.ar = icmp eq i32 %.2, 0
  %i.as = fmul double %i.aq, 5.000000e-01
  %i.at = fmul double %i.aq, %i.as                ; 2 uses
  br i1 %i.ar, label %bb.o, label %bb.u

bb.o:                                             ; preds = %bb.n
  %i.au = fcmp oeq double %i.aq, 0.000000e+00
  br i1 %i.au, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.av = icmp eq i32 %.277, 0
  br i1 %i.av, label %bb.x, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = sitofp i32 %.277 to double              ; 2 uses
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.aw, double f0x3DEA39EF35793C76, double %.071)
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.aw, double f0x3FE62E42FEE00000, double %i.ax)
  br label %bb.x

bb.r:                                             ; preds = %bb.o
  %i.az = tail call double @llvm.fmuladd.f64(double %i.aq, double f0xBFE5555555555555, double 1.000000e+00)
  %i.ba = fmul double %i.az, %i.at                ; 2 uses
  %i.bb = icmp eq i32 %.277, 0
  br i1 %i.bb, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bc = fsub double %i.aq, %i.ba
  br label %bb.x

bb.t:                                             ; preds = %bb.r
  %i.bd = sitofp i32 %.277 to double              ; 2 uses
  %i.be = tail call double @llvm.fmuladd.f64(double %i.bd, double f0x3DEA39EF35793C76, double %.071)
  %i.bf = fsub double %i.ba, %i.be
  %i.bg = fsub double %i.bf, %i.aq
  %i.bh = fneg double %i.bg
  %i.bi = tail call double @llvm.fmuladd.f64(double %i.bd, double f0x3FE62E42FEE00000, double %i.bh)
  br label %bb.x

bb.u:                                             ; preds = %.thread108, %bb.n
  %i.bj = phi double [ %i.s, %.thread108 ], [ %i.at, %bb.n ] ; 4 uses
  %.1115 = phi double [ %0, %.thread108 ], [ %i.aq, %bb.n ] ; 4 uses
  %.172114 = phi double [ undef, %.thread108 ], [ %.071, %bb.n ]
  %.378113 = phi i32 [ 0, %.thread108 ], [ %.277, %bb.n ] ; 2 uses
  %i.bk = fadd double %.1115, 2.000000e+00
  %i.bl = fdiv double %.1115, %i.bk               ; 4 uses
  %i.bm = fmul double %i.bl, %i.bl                ; 7 uses
  %i.bn = tail call double @llvm.fmuladd.f64(double %i.bm, double f0x3FC2F112DF3E5244, double f0x3FC39A09D078C69F)
  %i.bo = tail call double @llvm.fmuladd.f64(double %i.bm, double %i.bn, double f0x3FC7466496CB03DE)
  %i.bp = tail call double @llvm.fmuladd.f64(double %i.bm, double %i.bo, double f0x3FCC71C51D8E78AF)
  %i.bq = tail call double @llvm.fmuladd.f64(double %i.bm, double %i.bp, double f0x3FD2492494229359)
  %i.br = tail call double @llvm.fmuladd.f64(double %i.bm, double %i.bq, double f0x3FD999999997FA04)
  %i.bs = tail call double @llvm.fmuladd.f64(double %i.bm, double %i.br, double f0x3FE5555555555593)
  %i.bt = fmul double %i.bm, %i.bs                ; 2 uses
  %i.bu = icmp eq i32 %.378113, 0
  br i1 %i.bu, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bv = fadd double %i.bj, %i.bt
  %i.bw = fneg double %i.bl
  %i.bx = tail call double @llvm.fmuladd.f64(double %i.bw, double %i.bv, double %i.bj)
  %i.by = fsub double %.1115, %i.bx
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.bz = sitofp i32 %.378113 to double           ; 2 uses
  %i.ca = fadd double %i.bj, %i.bt
  %i.cb = tail call double @llvm.fmuladd.f64(double %i.bz, double f0x3DEA39EF35793C76, double %.172114)
  %i.cc = tail call double @llvm.fmuladd.f64(double %i.bl, double %i.ca, double %i.cb)
  %i.cd = fsub double %i.bj, %i.cc
  %i.ce = fsub double %i.cd, %.1115
  %i.cf = fneg double %i.ce
  %i.cg = tail call double @llvm.fmuladd.f64(double %i.bz, double f0x3FE62E42FEE00000, double %i.cf)
  br label %bb.x

bb.x:                                             ; preds = %bb.c, %bb.p, %bb.f, %bb.w, %bb.v, %bb.t, %bb.s, %bb.q, %bb.i, %bb.g, %bb.d
  %.0 = phi double [ 0.000000e+00, %bb.p ], [ +snan(0x4000000000000), %bb.d ], [ %i.cg, %bb.w ], [ %i.n, %bb.g ], [ %i.q, %bb.i ], [ %0, %bb.f ], [ %i.ay, %bb.q ], [ %i.bc, %bb.s ], [ %i.bi, %bb.t ], [ %i.by, %bb.v ], [ -inf, %bb.c ]
  ret double %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define dso_local noundef double @_ZN2v84base7ieee7544asinEd(double noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = bitcast double %0 to i64                 ; 2 uses
  %i.b = lshr i64 %i.a, 32
  %i.c = trunc nuw i64 %i.b to i32                ; 2 uses
  %i.d = and i32 %i.c, 2147483647                 ; 5 uses
  %i.e = icmp samesign ugt i32 %i.d, 1072693247
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = trunc i64 %i.a to i32
  %i.g = add nsw i32 %i.d, -1072693248
  %i.h = or i32 %i.g, %i.f
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.j = fmul double %0, f0x3C91A62633145C07
  %i.k = tail call double @llvm.fmuladd.f64(double %0, double f0x3FF921FB54442D18, double %i.j)
  br label %bb.n

bb.d:                                             ; preds = %bb.a
  %i.l = icmp samesign ult i32 %i.d, 1071644672
  br i1 %i.l, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.m = icmp samesign ult i32 %i.d, 1044381696
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = fadd double %0, 1.000000e+300
  %i.o = fcmp ogt double %i.n, 1.000000e+00
  br i1 %i.o, label %bb.n, label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.p = fmul double %0, %0
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.049 = phi double [ 0.000000e+00, %bb.f ], [ %i.p, %bb.g ] ; 9 uses
  %1 = tail call double @llvm.fmuladd.f64(double %.049, double f0x3F023DE10DFDF709, double f0x3F49EFE07501B288)
  %2 = tail call double @llvm.fmuladd.f64(double %.049, double %1, double f0xBFA48228B5688F3B)
  %3 = tail call double @llvm.fmuladd.f64(double %.049, double %2, double f0x3FC9C1550E884455)
  %4 = tail call double @llvm.fmuladd.f64(double %.049, double %3, double f0xBFD4D61203EB6F7D)
  %5 = insertelement <2 x double> poison, double %.049, i64 0
  %i.q = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> zeroinitializer
  %6 = insertelement <2 x double> <double poison, double f0x3FB3B8C5B12E9282>, double %4, i64 0
  %i.r = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.q, <2 x double> %6, <2 x double> <double f0x3FC5555555555555, double f0xBFE6066C1B8D0159>) ; 2 uses
  %i.s = extractelement <2 x double> %i.r, i64 0
  %i.t = fmul double %.049, %i.s
  %i.u = extractelement <2 x double> %i.r, i64 1
  %i.v = tail call double @llvm.fmuladd.f64(double %.049, double %i.u, double f0x40002AE59C598AC8)
  %i.w = tail call double @llvm.fmuladd.f64(double %.049, double %i.v, double f0xC0033A271C8A2D4B)
  %i.x = tail call double @llvm.fmuladd.f64(double %.049, double %i.w, double 1.000000e+00)
  %i.y = fdiv double %i.t, %i.x
  %i.z = tail call double @llvm.fmuladd.f64(double %0, double %i.y, double %0)
  br label %bb.n

bb.i:                                             ; preds = %bb.d
  %i.aa = tail call double @llvm.fabs.f64(double %0)
  %i.ab = fsub double 1.000000e+00, %i.aa
  %i.ac = fmul double %i.ab, 5.000000e-01         ; 11 uses
  %7 = tail call double @llvm.fmuladd.f64(double %i.ac, double f0x3F023DE10DFDF709, double f0x3F49EFE07501B288)
  %8 = tail call double @llvm.fmuladd.f64(double %i.ac, double %7, double f0xBFA48228B5688F3B)
  %9 = tail call double @llvm.fmuladd.f64(double %i.ac, double %8, double f0x3FC9C1550E884455)
  %10 = tail call double @llvm.fmuladd.f64(double %i.ac, double %9, double f0xBFD4D61203EB6F7D)
  %11 = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.ad = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> zeroinitializer
  %12 = insertelement <2 x double> <double poison, double f0x3FB3B8C5B12E9282>, double %10, i64 0
  %i.ae = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ad, <2 x double> %12, <2 x double> <double f0x3FC5555555555555, double f0xBFE6066C1B8D0159>) ; 2 uses
  %i.af = extractelement <2 x double> %i.ae, i64 0
  %i.ag = fmul double %i.ac, %i.af                ; 2 uses
  %i.ah = extractelement <2 x double> %i.ae, i64 1
  %i.ai = tail call double @llvm.fmuladd.f64(double %i.ac, double %i.ah, double f0x40002AE59C598AC8)
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.ac, double %i.ai, double f0xC0033A271C8A2D4B)
  %i.ak = tail call double @llvm.fmuladd.f64(double %i.ac, double %i.aj, double 1.000000e+00) ; 2 uses
  %i.al = tail call double @sqrt(double noundef %i.ac) #12 ; 5 uses
  %i.am = icmp samesign ugt i32 %i.d, 1072640818
  br i1 %i.am, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.an = fdiv double %i.ag, %i.ak
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.al, double %i.an, double %i.al)
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.ao, double 2.000000e+00, double f0xBC91A62633145C07)
  %i.aq = fsub double f0x3FF921FB54442D18, %i.ap
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ar = bitcast double %i.al to i64
  %i.as = and i64 %i.ar, -4294967296
  %i.at = bitcast i64 %i.as to double             ; 4 uses
  %i.au = fneg double %i.at
  %i.av = tail call double @llvm.fmuladd.f64(double %i.au, double %i.at, double %i.ac)
  %13 = fadd double %i.al, %i.at
  %14 = fdiv double %i.av, %13
  %15 = fdiv double %i.ag, %i.ak
  %i.aw = fmul double %i.al, 2.000000e+00
  %i.ax = tail call double @llvm.fmuladd.f64(double %14, double -2.000000e+00, double f0x3C91A62633145C07)
  %i.ay = fneg double %i.ax
  %i.az = tail call double @llvm.fmuladd.f64(double %i.aw, double %15, double %i.ay)
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.at, double -2.000000e+00, double f0x3FE921FB54442D18)
  %i.bb = fsub double %i.ba, %i.az
  %i.bc = fadd double %i.bb, f0x3FE921FB54442D18
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.150 = phi double [ %i.aq, %bb.j ], [ %i.bc, %bb.k ] ; 2 uses
  %i.bd = icmp sgt i32 %i.c, 0
  br i1 %i.bd, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = fneg double %.150
  br label %bb.n

bb.n:                                             ; preds = %bb.b, %bb.l, %bb.f, %bb.c, %bb.m, %bb.h
  %.1 = phi double [ %i.be, %bb.m ], [ %.150, %bb.l ], [ %i.z, %bb.h ], [ %0, %bb.f ], [ %i.k, %bb.c ], [ +snan(0x4000000000000), %bb.b ]
  ret double %.1
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef double @_ZN2v84base7ieee7545asinhEd(double noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = bitcast double %0 to i64
  %i.b = lshr i64 %i.a, 32
  %i.c = trunc nuw i64 %i.b to i32                ; 2 uses
  %i.d = and i32 %i.c, 2147483647                 ; 4 uses
  %i.e = icmp samesign ugt i32 %i.d, 2146435071
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = fadd double %0, %0
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.g = icmp samesign ult i32 %i.d, 1043333120
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = fadd double %0, 1.000000e+300
  %i.i = fcmp ogt double %i.h, 1.000000e+00
  br i1 %i.i, label %bb.k, label %.thread19

bb.e:                                             ; preds = %bb.c
  %i.j = icmp samesign ugt i32 %i.d, 1102053376
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = tail call double @llvm.fabs.f64(double %0)
  %i.l = tail call noundef double @_ZN2v84base7ieee7543logEd(double noundef %i.k)
  %i.m = fadd double %i.l, f0x3FE62E42FEFA39EF
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.n = icmp samesign ugt i32 %i.d, 1073741824
  br i1 %i.n, label %bb.h, label %.thread19

bb.h:                                             ; preds = %bb.g
  %i.o = tail call double @llvm.fabs.f64(double %0) ; 2 uses
  %i.p = tail call double @llvm.fmuladd.f64(double %0, double %0, double 1.000000e+00)
  %sqrt = tail call double @llvm.sqrt.f64(double %i.p)
  %i.q = fadd double %i.o, %sqrt
  %i.r = fdiv double 1.000000e+00, %i.q
  %i.s = tail call double @llvm.fmuladd.f64(double %i.o, double 2.000000e+00, double %i.r)
  %i.t = tail call noundef double @_ZN2v84base7ieee7543logEd(double noundef %i.s)
  br label %bb.i

.thread19:                                        ; preds = %bb.d, %bb.g
  %i.u = fmul double %0, %0                       ; 2 uses
  %i.v = tail call double @llvm.fabs.f64(double %0)
  %i.w = fadd double %i.u, 1.000000e+00
  %sqrt20 = tail call double @llvm.sqrt.f64(double %i.w)
  %i.x = fadd double %sqrt20, 1.000000e+00
  %i.y = fdiv double %i.u, %i.x
  %i.z = fadd double %i.v, %i.y
  %i.aa = tail call noundef double @_ZN2v84base7ieee7545log1pEd(double noundef %i.z)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.thread19, %bb.f
  %.013 = phi double [ %i.m, %bb.f ], [ %i.t, %bb.h ], [ %i.aa, %.thread19 ] ; 2 uses
  %i.ab = icmp sgt i32 %i.c, 0
  br i1 %i.ab, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = fneg double %.013
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.d, %bb.j, %bb.b
  %.0 = phi double [ %i.f, %bb.b ], [ %i.ac, %bb.j ], [ %0, %bb.d ], [ %.013, %bb.i ]
  ret double %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(inaccessiblemem: readwrite) uwtable
define dso_local noundef double @_ZN2v84base7ieee7544atanEd(double noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = bitcast double %0 to i64                 ; 3 uses
  %i.b = lshr i64 %i.a, 32
  %i.c = trunc nuw i64 %i.b to i32                ; 2 uses
  %i.d = and i32 %i.c, 2147483647                 ; 8 uses
  %i.e = icmp samesign ugt i32 %i.d, 1141899263
  br i1 %i.e, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.f = icmp samesign ugt i32 %i.d, 2146435072
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq i32 %i.d, 2146435072
  %i.h = and i64 %i.a, 4294967295
  %i.i = icmp ne i64 %i.h, 0
  %or.cond = and i1 %i.i, %i.g
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = fadd double %0, %0
  br label %bb.t

bb.e:                                             ; preds = %bb.c
  %i.k = icmp sgt i32 %i.c, 0
  %i.l = load volatile double, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v84base7ieee7544atanEdE6atanlo, i64 24), align 8 ; 2 uses
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = fadd double %i.l, f0x3FF921FB54442D18
  br label %bb.t

bb.g:                                             ; preds = %bb.e
  %i.n = fsub double f0xBFF921FB54442D18, %i.l
  br label %bb.t

bb.h:                                             ; preds = %bb.a
  %i.o = icmp samesign ult i32 %i.d, 1071382528   ; 2 uses
  br i1 %i.o, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i32 %i.d, 1044381696
  %i.q = fadd double %0, 1.000000e+300
  %i.r = fcmp ogt double %i.q, 1.000000e+00
  %or.cond44 = and i1 %i.r, %i.p
  br i1 %or.cond44, label %bb.t, label %bb.q

bb.j:                                             ; preds = %bb.h
  %i.s = tail call double @llvm.fabs.f64(double %0) ; 7 uses
  %i.t = icmp samesign ult i32 %i.d, 1072889856
  br i1 %i.t, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.u = icmp samesign ult i32 %i.d, 1072037888
  br i1 %i.u, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.v = tail call double @llvm.fmuladd.f64(double %i.s, double 2.000000e+00, double -1.000000e+00)
  %i.w = fadd double %i.s, 2.000000e+00
  %i.x = fdiv double %i.v, %i.w
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  %i.y = fadd double %i.s, -1.000000e+00
  %i.z = fadd double %i.s, 1.000000e+00
  %i.aa = fdiv double %i.y, %i.z
  br label %bb.q

bb.n:                                             ; preds = %bb.j
  %i.ab = icmp samesign ult i32 %i.d, 1073971200
  br i1 %i.ab, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ac = fadd double %i.s, -1.500000e+00
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.s, double 1.500000e+00, double 1.000000e+00)
  %i.ae = fdiv double %i.ac, %i.ad
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.af = fdiv double -1.000000e+00, %i.s
  br label %bb.q

bb.q:                                             ; preds = %bb.i, %bb.m, %bb.l, %bb.p, %bb.o
  %.0 = phi double [ %i.af, %bb.p ], [ %0, %bb.i ], [ %i.x, %bb.l ], [ %i.aa, %bb.m ], [ %i.ae, %bb.o ] ; 6 uses
  %.037 = phi i64 [ 3, %bb.p ], [ 4294967295, %bb.i ], [ 0, %bb.l ], [ 1, %bb.m ], [ 2, %bb.o ] ; 2 uses
  %i.ag = fmul double %.0, %.0                    ; 3 uses
  %i.ah = fmul double %i.ag, %i.ag                ; 9 uses
  %1 = tail call double @llvm.fmuladd.f64(double %i.ah, double f0x3F90AD3AE322DA11, double f0x3FA97B4B24760DEB)
  %2 = tail call double @llvm.fmuladd.f64(double %i.ah, double %1, double f0x3FB10D66A0D03D51)
  %3 = tail call double @llvm.fmuladd.f64(double %i.ah, double %2, double f0x3FB745CDC54C206E)
  %4 = tail call double @llvm.fmuladd.f64(double %i.ah, double %3, double f0x3FC24924920083FF)
  %5 = insertelement <2 x double> poison, double %i.ah, i64 0
  %i.ai = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> zeroinitializer
  %6 = insertelement <2 x double> <double poison, double f0xBFA2B4442C6A6C2F>, double %4, i64 0
  %i.aj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ai, <2 x double> %6, <2 x double> <double f0x3FD555555555550D, double f0xBFADDE2D52DEFD9A>) ; 2 uses
  %i.ak = extractelement <2 x double> %i.aj, i64 0
  %i.al = fmul double %i.ag, %i.ak                ; 2 uses
  %i.am = extractelement <2 x double> %i.aj, i64 1
  %i.an = tail call double @llvm.fmuladd.f64(double %i.ah, double %i.am, double f0xBFB3B0F2AF749A6D)
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.ah, double %i.an, double f0xBFBC71C6FE231671)
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.ah, double %i.ao, double f0xBFC999999998EBC4)
  %i.aq = fmul double %i.ah, %i.ap                ; 2 uses
  br i1 %i.o, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ar = fadd double %i.aq, %i.al
  %i.as = fneg double %.0
  %i.at = tail call double @llvm.fmuladd.f64(double %i.as, double %i.ar, double %.0)
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.au = getelementptr inbounds nuw [8 x i8], ptr @_ZZN2v84base7ieee7544atanEdE6atanhi, i64 %.037
  %i.av = load double, ptr %i.au, align 8
  %i.aw = fadd double %i.aq, %i.al
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr @_ZZN2v84base7ieee7544atanEdE6atanlo, i64 %.037
  %i.ay = load double, ptr %i.ax, align 8
  %i.az = fneg double %i.ay
  %i.ba = tail call double @llvm.fmuladd.f64(double %.0, double %i.aw, double %i.az)
  %i.bb = fsub double %i.ba, %.0
  %i.bc = fsub double %i.av, %i.bb                ; 2 uses
  %i.bd = icmp slt i64 %i.a, 0
  %i.be = fneg double %i.bc
  %i.bf = select i1 %i.bd, double %i.be, double %i.bc
  br label %bb.t

bb.t:                                             ; preds = %bb.i, %bb.d, %bb.f, %bb.g, %bb.s, %bb.r
  %.1 = phi double [ %i.bf, %bb.s ], [ %i.n, %bb.g ], [ %i.at, %bb.r ], [ %i.j, %bb.d ], [ %i.m, %bb.f ], [ %0, %bb.i ]
  ret double %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, target_mem: none) uwtable
define dso_local noundef double @_ZN2v84base7ieee7545atan2Edd(double noundef %0, double noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = bitcast double %1 to i64                 ; 3 uses
  %i.b = lshr i64 %i.a, 32
  %i.c = trunc nuw i64 %i.b to i32                ; 3 uses
  %i.d = trunc i64 %i.a to i32                    ; 3 uses
  %i.e = and i32 %i.c, 2147483647                 ; 4 uses
  %i.f = bitcast double %0 to i64                 ; 4 uses
  %i.g = lshr i64 %i.f, 32
  %i.h = trunc nuw i64 %i.g to i32                ; 2 uses
  %i.i = trunc i64 %i.f to i32                    ; 2 uses
  %i.j = and i32 %i.h, 2147483647                 ; 4 uses
  %i.k = icmp ne i32 %i.d, 0
  %i.l = zext i1 %i.k to i32
  %i.m = or i32 %i.e, %i.l
  %i.n = icmp samesign ugt i32 %i.m, 2146435072
  br i1 %i.n, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = icmp ne i32 %i.i, 0
  %i.p = zext i1 %i.o to i32
  %i.q = or i32 %i.j, %i.p
  %i.r = icmp samesign ugt i32 %i.q, 2146435072
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.s = fadd double %0, %1
  br label %bb.ak

bb.d:                                             ; preds = %bb.b
  %i.t = add i32 %i.c, -1072693248
  %i.u = or i32 %i.t, %i.d
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = tail call noundef double @_ZN2v84base7ieee7544atanEd(double noundef %0)
  br label %bb.ak

bb.f:                                             ; preds = %bb.d
  %i.x = lshr i32 %i.h, 31                        ; 2 uses
  %i.y = lshr i32 %i.c, 30
  %i.z = and i32 %i.y, 2
  %i.aa = or disjoint i32 %i.z, %i.x              ; 5 uses
  %i.ab = or i32 %i.j, %i.i
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  switch i32 %i.aa, label %default.unreachable53 [
    i32 0, label %bb.ak
    i32 1, label %bb.ak
    i32 2, label %bb.h
    i32 3, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.ad = load volatile double, ptr @_ZZN2v84base7ieee7545atan2EddE4tiny, align 8
  %i.ae = fadd double %i.ad, f0x400921FB54442D18
  br label %bb.ak

bb.i:                                             ; preds = %bb.g
  %i.af = load volatile double, ptr @_ZZN2v84base7ieee7545atan2EddE4tiny, align 8
  %i.ag = fsub double f0xC00921FB54442D18, %i.af
  br label %bb.ak

default.unreachable53:                            ; preds = %bb.u, %bb.p, %bb.g
  unreachable

bb.j:                                             ; preds = %bb.f
  %i.ah = or i32 %i.e, %i.d
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.aj = icmp slt i64 %i.f, 0
  %i.ak = load volatile double, ptr @_ZZN2v84base7ieee7545atan2EddE4tiny, align 8 ; 2 uses
  br i1 %i.aj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.al = fsub double f0xBFF921FB54442D18, %i.ak
  br label %bb.ak

bb.m:                                             ; preds = %bb.k
  %i.am = fadd double %i.ak, f0x3FF921FB54442D18
  br label %bb.ak

bb.n:                                             ; preds = %bb.j
  %i.an = icmp eq i32 %i.e, 2146435072
  %i.ao = icmp eq i32 %i.j, 2146435072            ; 2 uses
  br i1 %i.an, label %bb.o, label %bb.y

bb.o:                                             ; preds = %bb.n
  br i1 %i.ao, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  %i.ap = load volatile double, ptr @_ZZN2v84base7ieee7545atan2EddE4tiny, align 8 ; 4 uses
  switch i32 %i.aa, label %default.unreachable53 [
    i32 0, label %bb.q
    i32 1, label %bb.r
    i32 2, label %bb.s
    i32 3, label %bb.t
  ]

bb.q:                                             ; preds = %bb.p
  %i.aq = fadd double %i.ap, f0x3FE921FB54442D18
  br label %bb.ak

bb.r:                                             ; preds = %bb.p
  %i.ar = fsub double f0xBFE921FB54442D18, %i.ap
  br label %bb.ak

bb.s:                                             ; preds = %bb.p
  %i.as = fadd double %i.ap, f0x4002D97C7F3321D2
  br label %bb.ak

bb.t:                                             ; preds = %bb.p
  %i.at = fsub double f0xC002D97C7F3321D2, %i.ap
  br label %bb.ak

bb.u:                                             ; preds = %bb.o
  switch i32 %i.aa, label %default.unreachable53 [
    i32 0, label %bb.ak
    i32 1, label %bb.v
    i32 2, label %bb.w
    i32 3, label %bb.x
  ]

bb.v:                                             ; preds = %bb.u
  br label %bb.ak

bb.w:                                             ; preds = %bb.u
  %i.au = load volatile double, ptr @_ZZN2v84base7ieee7545atan2EddE4tiny, align 8
  %i.av = fadd double %i.au, f0x400921FB54442D18
  br label %bb.ak

bb.x:                                             ; preds = %bb.u
  %i.aw = load volatile double, ptr @_ZZN2v84base7ieee7545atan2EddE4tiny, align 8
  %i.ax = fsub double f0xC00921FB54442D18, %i.aw
  br label %bb.ak

bb.y:                                             ; preds = %bb.n
  br i1 %i.ao, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.ay = icmp slt i64 %i.f, 0
  %i.az = load volatile double, ptr @_ZZN2v84base7ieee7545atan2EddE4tiny, align 8 ; 2 uses
  br i1 %i.ay, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ba = fsub double f0xBFF921FB54442D18, %i.az
  br label %bb.ak

bb.ab:                                            ; preds = %bb.z
  %i.bb = fadd double %i.az, f0x3FF921FB54442D18
  br label %bb.ak

bb.ac:                                            ; preds = %bb.y
  %i.bc = sub nsw i32 %i.j, %i.e
  %i.bd = ashr i32 %i.bc, 20                      ; 2 uses
  %i.be = icmp sgt i32 %i.bd, 60
  br i1 %i.be, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
end_hunk_0
begin_hunk_1_@_ZN2v84base7ieee7545expm1Ed:bb.a
bb.l:                                             ; preds = %bb.k
  %i.w = icmp eq i32 %i.d, 0
  br i1 %i.w, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.x = fadd double %0, f0xBFE62E42FEE00000
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.y = fadd double %0, f0x3FE62E42FEE00000
  br label %bb.o

.thread95:                                        ; preds = %bb.i, %bb.k
  %i.z = icmp eq i32 %i.d, 0
  %i.aa = select i1 %i.z, double 5.000000e-01, double -5.000000e-01
  %i.ab = tail call double @llvm.fmuladd.f64(double %0, double f0x3FF71547652B82FE, double %i.aa)
  %i.ac = fptosi double %i.ab to i32              ; 2 uses
  %i.ad = sitofp i32 %i.ac to double              ; 2 uses
  %i.ae = fneg double %i.ad
  %i.af = tail call double @llvm.fmuladd.f64(double %i.ae, double f0x3FE62E42FEE00000, double %0)
  %i.ag = fmul nnan double %i.ad, f0x3DEA39EF35793C76
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %.thread95
  %.069 = phi i32 [ 1, %bb.m ], [ -1, %bb.n ], [ %i.ac, %.thread95 ]
  %.068 = phi double [ f0x3DEA39EF35793C76, %bb.m ], [ f0xBDEA39EF35793C76, %bb.n ], [ %i.ag, %.thread95 ] ; 2 uses
  %.067 = phi double [ %i.x, %bb.m ], [ %i.y, %bb.n ], [ %i.af, %.thread95 ] ; 2 uses
  %i.ah = fsub double %.067, %.068                ; 2 uses
  %i.ai = fsub double %.067, %i.ah
  %i.aj = fsub double %i.ai, %.068
  br label %bb.r

bb.p:                                             ; preds = %bb.j
  %i.ak = icmp samesign ult i32 %i.e, 1016070144
  br i1 %i.ak, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.al = load volatile double, ptr @_ZZN2v84base7ieee7545expm1EdE4huge, align 8
  %i.am = fadd double %0, %i.al
  %i.an = load volatile double, ptr @_ZZN2v84base7ieee7545expm1EdE4huge, align 8
  %i.ao = fadd double %0, %i.an
  %i.ap = fsub double %i.am, %i.ao
  %i.aq = fsub double %0, %i.ap
  br label %bb.ae

bb.r:                                             ; preds = %bb.p, %bb.o
  %.0 = phi double [ %i.ah, %bb.o ], [ %0, %bb.p ] ; 12 uses
  %.071 = phi double [ %i.aj, %bb.o ], [ undef, %bb.p ] ; 2 uses
  %.170 = phi i32 [ %.069, %bb.o ], [ 0, %bb.p ]  ; 7 uses
  %i.ar = fmul double %.0, 5.000000e-01           ; 2 uses
  %i.as = fmul double %.0, %i.ar                  ; 8 uses
  %i.at = tail call double @llvm.fmuladd.f64(double %i.as, double f0xBE8AFDB76E09C32D, double f0x3ED0CFCA86E65239)
  %i.au = tail call double @llvm.fmuladd.f64(double %i.as, double %i.at, double f0xBF14CE199EAADBB7)
  %i.av = tail call double @llvm.fmuladd.f64(double %i.as, double %i.au, double f0x3F5A01A019FE5585)
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.as, double %i.av, double f0xBFA11111111110F4)
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.as, double %i.aw, double 1.000000e+00) ; 2 uses
  %i.ay = fneg double %i.ax
  %i.az = tail call double @llvm.fmuladd.f64(double %i.ay, double %i.ar, double 3.000000e+00) ; 2 uses
  %i.ba = fsub double %i.ax, %i.az
  %i.bb = fneg double %.0
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.bb, double %i.az, double 6.000000e+00)
  %i.bd = fdiv double %i.ba, %i.bc
  %i.be = fmul double %i.as, %i.bd                ; 2 uses
  %i.bf = icmp eq i32 %.170, 0
  br i1 %i.bf, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bg = fneg double %i.as
  %i.bh = tail call double @llvm.fmuladd.f64(double %.0, double %i.be, double %i.bg)
  %i.bi = fsub double %.0, %i.bh
  br label %bb.ae

bb.t:                                             ; preds = %bb.r
  %i.bj = shl i32 %.170, 20                       ; 2 uses
  %i.bk = add nsw i32 %i.bj, 1072693248
  %i.bl = sext i32 %i.bk to i64
  %i.bm = shl nsw i64 %i.bl, 32
  %i.bn = bitcast i64 %i.bm to double             ; 2 uses
  %i.bo = fsub double %i.be, %.071
  %i.bp = fneg double %.071
  %i.bq = tail call double @llvm.fmuladd.f64(double %.0, double %i.bo, double %i.bp)
  %i.br = fsub double %i.bq, %i.as                ; 6 uses
  switch i32 %.170, label %bb.y [
    i32 -1, label %bb.u
    i32 1, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  %i.bs = fsub double %.0, %i.br
  %i.bt = tail call double @llvm.fmuladd.f64(double %i.bs, double 5.000000e-01, double -5.000000e-01)
  br label %bb.ae

bb.v:                                             ; preds = %bb.t
  %i.bu = fcmp olt double %.0, -2.500000e-01
  br i1 %i.bu, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bv = fadd nnan double %.0, 5.000000e-01
  %i.bw = fsub double %i.br, %i.bv
  %i.bx = fmul double %i.bw, -2.000000e+00
  br label %bb.ae

bb.x:                                             ; preds = %bb.v
  %i.by = fsub double %.0, %i.br
  %i.bz = tail call double @llvm.fmuladd.f64(double %i.by, double 2.000000e+00, double 1.000000e+00)
  br label %bb.ae

bb.y:                                             ; preds = %bb.t
  %i.ca = add i32 %.170, -57
  %or.cond = icmp ult i32 %i.ca, -58
  br i1 %or.cond, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cb = fsub double %.0, %i.br
  %i.cc = fadd double %i.cb, 1.000000e+00         ; 2 uses
  %i.cd = icmp eq i32 %.170, 1024
  %i.ce = fmul double %i.cc, 2.000000e+00
  %i.cf = fmul double %i.ce, f0x7FE0000000000000
  %i.cg = fmul double %i.cc, %i.bn
  %.065 = select i1 %i.cd, double %i.cf, double %i.cg
  %i.ch = fadd double %.065, -1.000000e+00
  br label %bb.ae

bb.aa:                                            ; preds = %bb.y
  %i.ci = icmp samesign ult i32 %.170, 20
  br i1 %i.ci, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cj = lshr i32 2097152, %.170
  %i.ck = sub nuw nsw i32 1072693248, %i.cj
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = shl nuw nsw i64 %i.cl, 32
  %i.cn = bitcast i64 %i.cm to double
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.co = sub i32 1072693248, %i.bj
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = shl nuw nsw i64 %i.cp, 32
  %i.cr = bitcast i64 %i.cq to double
  %i.cs = fadd double %i.br, %i.cr
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %.sink100 = phi double [ %i.br, %bb.ab ], [ %i.cs, %bb.ac ]
  %.sink99 = phi double [ %i.cn, %bb.ab ], [ 1.000000e+00, %bb.ac ]
  %i.ct = fsub double %.0, %.sink100
  %i.cu = fadd double %i.ct, %.sink99
  %.166 = fmul double %i.cu, %i.bn
  br label %bb.ae

bb.ae:                                            ; preds = %bb.i, %bb.e, %bb.f, %bb.ad, %bb.z, %bb.x, %bb.w, %bb.u, %bb.s, %bb.q, %bb.h
  %.1 = phi double [ %i.aq, %bb.q ], [ %i.r, %bb.h ], [ %i.n, %bb.f ], [ %i.bi, %bb.s ], [ %i.bt, %bb.u ], [ %i.bx, %bb.w ], [ %i.bz, %bb.x ], [ %i.ch, %bb.z ], [ %.166, %bb.ad ], [ %i.l, %bb.e ], [ -1.000000e+00, %bb.i ]
  ret double %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef double @_ZN2v84base7ieee7544cbrtEd(double noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = bitcast double %0 to i64                 ; 2 uses
  %i.b = lshr i64 %i.a, 32
  %i.c = trunc nuw i64 %i.b to i32                ; 2 uses
  %i.d = trunc i64 %i.a to i32
  %i.e = and i32 %i.c, -2147483648
  %i.f = and i32 %i.c, 2147483647                 ; 4 uses
  %i.g = icmp samesign ugt i32 %i.f, 2146435071
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = fadd double %0, %0
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i32 %i.f, 1048576
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = or i32 %i.f, %i.d
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = fmul double %0, f0x4350000000000000
  %i.m = bitcast double %i.l to i64
  %i.n = lshr i64 %i.m, 32
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = and i32 %i.o, 2147483647
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %.sink41 = phi i32 [ %i.p, %bb.e ], [ %i.f, %bb.c ]
  %.sink40 = phi i32 [ 696219795, %bb.e ], [ 715094163, %bb.c ]
  %i.q = udiv i32 %.sink41, 3
  %i.r = add nuw nsw i32 %i.q, %.sink40
  %.038.in.in.in = or disjoint i32 %i.r, %i.e
  %.038.in.in = zext i32 %.038.in.in.in to i64
  %.038.in = shl nuw i64 %.038.in.in, 32
  %.038 = bitcast i64 %.038.in to double          ; 4 uses
  %i.s = fmul double %.038, %.038
  %i.t = fdiv double %.038, %0
  %i.u = fmul double %i.s, %i.t                   ; 5 uses
  %1 = tail call double @llvm.fmuladd.f64(double %i.u, double f0x3FF9F1604A49D6C2, double f0xBFFE28E092F02420)
  %i.v = fmul double %i.u, %i.u
  %i.w = fmul double %i.u, %i.v
  %i.x = insertelement <2 x double> poison, double %i.u, i64 0
  %2 = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer
  %3 = insertelement <2 x double> <double poison, double f0x3FC2B000D4E4EDD7>, double %1, i64 0
  %i.y = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %2, <2 x double> %3, <2 x double> <double f0x3FFE03E60F61E692, double f0xBFE844CBBEE751D9>) ; 2 uses
  %i.z = extractelement <2 x double> %i.y, i64 0
  %i.aa = extractelement <2 x double> %i.y, i64 1
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.w, double %i.aa, double %i.z)
  %i.ac = fmul double %i.ab, %.038
  %i.ad = bitcast double %i.ac to i64
  %i.ae = and i64 %i.ad, -1073741824
  %i.af = add i64 %i.ae, 2147483648
  %i.ag = bitcast i64 %i.af to double             ; 7 uses
  %i.ah = fmul double %i.ag, %i.ag
  %i.ai = fdiv double %0, %i.ah                   ; 2 uses
  %i.aj = fadd double %i.ag, %i.ag
  %i.ak = fsub double %i.ai, %i.ag
  %i.al = fadd double %i.aj, %i.ai
  %i.am = fdiv double %i.ak, %i.al
  %i.an = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.am, double %i.ag)
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.b
  %.0 = phi double [ %i.h, %bb.b ], [ %i.an, %bb.f ], [ %0, %bb.d ]
  ret double %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(errnomem: write) uwtable
define dso_local noundef double @_ZN2v84base7ieee7543sinEd(double noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca [2 x double], align 16            ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = bitcast double %0 to i64                 ; 2 uses
  %i.c = lshr i64 %i.b, 32
  %i.d = trunc nuw i64 %i.c to i32
  %i.e = and i32 %i.d, 2147483647                 ; 2 uses
  %i.f = icmp samesign ult i32 %i.e, 1072243196
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = and i64 %i.b, 9205357638345293824
  %i.h = icmp samesign ult i64 %i.g, 4485585228861014016
  %i.i = fptosi double %0 to i32
  %i.j = icmp eq i32 %i.i, 0
  %or.cond = select i1 %i.h, i1 %i.j, i1 false
  br i1 %or.cond, label %_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_sinEddi.exit14, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = fmul double %0, %0                       ; 6 uses
  %i.l = fmul double %0, %i.k
  %i.m = tail call double @llvm.fmuladd.f64(double %i.k, double f0x3DE5D93A5ACFD57C, double f0xBE5AE5E68A2B9CEB)
  %i.n = tail call double @llvm.fmuladd.f64(double %i.k, double %i.m, double f0x3EC71DE357B1FE7D)
  %i.o = tail call double @llvm.fmuladd.f64(double %i.k, double %i.n, double f0xBF2A01A019C161D5)
  %i.p = tail call double @llvm.fmuladd.f64(double %i.k, double %i.o, double f0x3F8111111110F8A6)
  %i.q = tail call double @llvm.fmuladd.f64(double %i.k, double %i.p, double f0xBFC5555555555549)
  %i.r = tail call double @llvm.fmuladd.f64(double %i.l, double %i.q, double %0)
  br label %_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_sinEddi.exit14

bb.d:                                             ; preds = %bb.a
  %i.s = icmp samesign ugt i32 %i.e, 2146435071
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = fsub double %0, %0
  br label %_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_sinEddi.exit14

bb.f:                                             ; preds = %bb.d
  %i.u = call fastcc noundef i32 @_ZN2v84base7ieee75412_GLOBAL__N_118__ieee754_rem_pio2EdPd(double noundef %0, ptr noundef %i.a)
  %i.v = and i32 %i.u, 3
  %i.w = load double, ptr %i.a, align 16          ; 26 uses
  switch i32 %i.v, label %default.unreachable48 [
    i32 0, label %bb.g
    i32 1, label %bb.i
    i32 2, label %bb.m
    i32 3, label %bb.o
  ]

bb.g:                                             ; preds = %bb.f
  %i.x = bitcast double %i.w to i64
  %i.y = and i64 %i.x, 9205357638345293824
  %i.z = icmp samesign ult i64 %i.y, 4485585228861014016
  %i.aa = fptosi double %i.w to i32
  %i.ab = icmp eq i32 %i.aa, 0
  %or.cond38 = select i1 %i.z, i1 %i.ab, i1 false
  br i1 %or.cond38, label %_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_sinEddi.exit14, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ad = load double, ptr %i.ac, align 8         ; 2 uses
  %i.ae = fmul double %i.w, %i.w                  ; 6 uses
  %i.af = fmul double %i.w, %i.ae                 ; 2 uses
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.ae, double f0x3DE5D93A5ACFD57C, double f0xBE5AE5E68A2B9CEB)
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.ag, double f0x3EC71DE357B1FE7D)
  %i.ai = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.ah, double f0xBF2A01A019C161D5)
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.ai, double f0x3F8111111110F8A6)
  %i.ak = fneg double %i.aj
  %i.al = fmul double %i.af, %i.ak
  %i.am = tail call double @llvm.fmuladd.f64(double %i.ad, double 5.000000e-01, double %i.al)
  %i.an = fneg double %i.ad
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.am, double %i.an)
  %i.ap = fneg double %i.af
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.ap, double f0xBFC5555555555549, double %i.ao)
  %i.ar = fsub double %i.w, %i.aq
  br label %_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_sinEddi.exit14

bb.i:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.at = load double, ptr %i.as, align 8         ; 2 uses
  %i.au = bitcast double %i.w to i64
  %i.av = lshr i64 %i.au, 32
  %i.aw = trunc nuw i64 %i.av to i32
  %i.ax = and i32 %i.aw, 2147483647               ; 4 uses
  %i.ay = icmp samesign ult i32 %i.ax, 1044381696
  %i.az = fptosi double %i.w to i32
  %i.ba = icmp eq i32 %i.az, 0
  %or.cond40 = select i1 %i.ay, i1 %i.ba, i1 false
  br i1 %or.cond40, label %_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_sinEddi.exit14, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = fmul double %i.w, %i.w                  ; 10 uses
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.bb, double f0xBDA8FAE9BE8838D4, double f0x3E21EE9EBDB4B1C4)
  %i.bd = tail call double @llvm.fmuladd.f64(double %i.bb, double %i.bc, double f0xBE927E4F809C52AD)
  %i.be = tail call double @llvm.fmuladd.f64(double %i.bb, double %i.bd, double f0x3EFA01A019CB1590)
  %i.bf = tail call double @llvm.fmuladd.f64(double %i.bb, double %i.be, double f0xBF56C16C16C15177)
  %i.bg = tail call double @llvm.fmuladd.f64(double %i.bb, double %i.bf, double f0x3FA555555555554C)
  %i.bh = fmul double %i.bb, %i.bg                ; 2 uses
  %i.bi = icmp samesign ult i32 %i.ax, 1070805811
  br i1 %i.bi, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bj = fneg double %i.at
  %i.bk = fmul double %i.w, %i.bj
  %i.bl = tail call double @llvm.fmuladd.f64(double %i.bb, double %i.bh, double %i.bk)
  %i.bm = fneg double %i.bl
  %i.bn = tail call double @llvm.fmuladd.f64(double %i.bb, double 5.000000e-01, double %i.bm)
  %i.bo = fsub double 1.000000e+00, %i.bn
  br label %_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_sinEddi.exit14

bb.l:                                             ; preds = %bb.j
  %i.bp = icmp samesign ugt i32 %i.ax, 1072234496
  %i.bq = add nsw i32 %i.ax, -2097152
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = shl nuw nsw i64 %i.br, 32
  %i.bt = bitcast i64 %i.bs to double
  %.024.i7 = select i1 %i.bp, double 2.812500e-01, double %i.bt ; 2 uses
  %i.bu = fneg double %.024.i7
  %i.bv = tail call double @llvm.fmuladd.f64(double %i.bb, double 5.000000e-01, double %i.bu)
  %i.bw = fsub double 1.000000e+00, %.024.i7
  %i.bx = fneg double %i.at
  %i.by = fmul double %i.w, %i.bx
  %i.bz = tail call double @llvm.fmuladd.f64(double %i.bb, double %i.bh, double %i.by)
  %i.ca = fsub double %i.bz, %i.bv
  %i.cb = fadd double %i.bw, %i.ca
  br label %_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_sinEddi.exit14

bb.m:                                             ; preds = %bb.f
  %i.cc = bitcast double %i.w to i64
  %i.cd = and i64 %i.cc, 9205357638345293824
  %i.ce = icmp samesign ult i64 %i.cd, 4485585228861014016
  %i.cf = fptosi double %i.w to i32
  %i.cg = icmp eq i32 %i.cf, 0
  %or.cond42 = select i1 %i.ce, i1 %i.cg, i1 false
  br i1 %or.cond42, label %_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_sinEddi.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ci = load double, ptr %i.ch, align 8         ; 2 uses
  %i.cj = fmul double %i.w, %i.w                  ; 6 uses
  %i.ck = fmul double %i.w, %i.cj                 ; 2 uses
  %i.cl = tail call double @llvm.fmuladd.f64(double %i.cj, double f0x3DE5D93A5ACFD57C, double f0xBE5AE5E68A2B9CEB)
  %i.cm = tail call double @llvm.fmuladd.f64(double %i.cj, double %i.cl, double f0x3EC71DE357B1FE7D)
  %i.cn = tail call double @llvm.fmuladd.f64(double %i.cj, double %i.cm, double f0xBF2A01A019C161D5)
  %i.co = tail call double @llvm.fmuladd.f64(double %i.cj, double %i.cn, double f0x3F8111111110F8A6)
  %i.cp = fneg double %i.co
  %i.cq = fmul double %i.ck, %i.cp
  %i.cr = tail call double @llvm.fmuladd.f64(double %i.ci, double 5.000000e-01, double %i.cq)
  %i.cs = fneg double %i.ci
  %i.ct = tail call double @llvm.fmuladd.f64(double %i.cj, double %i.cr, double %i.cs)
  %i.cu = fneg double %i.ck
  %i.cv = tail call double @llvm.fmuladd.f64(double %i.cu, double f0xBFC5555555555549, double %i.ct)
  %i.cw = fsub double %i.w, %i.cv
  br label %_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_sinEddi.exit

_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_sinEddi.exit: ; preds = %bb.m, %bb.n
  %.0.i10 = phi double [ %i.cw, %bb.n ], [ %i.w, %bb.m ]
  %i.cx = fneg double %.0.i10
  br label %_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_sinEddi.exit14

default.unreachable48:                            ; preds = %bb.f
  unreachable

bb.o:                                             ; preds = %bb.f
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cz = load double, ptr %i.cy, align 8         ; 2 uses
  %i.da = bitcast double %i.w to i64
  %i.db = lshr i64 %i.da, 32
  %i.dc = trunc nuw i64 %i.db to i32
  %i.dd = and i32 %i.dc, 2147483647               ; 4 uses
  %i.de = icmp samesign ult i32 %i.dd, 1044381696
  %i.df = fptosi double %i.w to i32
  %i.dg = icmp eq i32 %i.df, 0
  %or.cond44 = select i1 %i.de, i1 %i.dg, i1 false
  br i1 %or.cond44, label %_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_cosEdd.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dh = fmul double %i.w, %i.w                  ; 10 uses
  %i.di = tail call double @llvm.fmuladd.f64(double %i.dh, double f0xBDA8FAE9BE8838D4, double f0x3E21EE9EBDB4B1C4)
  %i.dj = tail call double @llvm.fmuladd.f64(double %i.dh, double %i.di, double f0xBE927E4F809C52AD)
  %i.dk = tail call double @llvm.fmuladd.f64(double %i.dh, double %i.dj, double f0x3EFA01A019CB1590)
  %i.dl = tail call double @llvm.fmuladd.f64(double %i.dh, double %i.dk, double f0xBF56C16C16C15177)
  %i.dm = tail call double @llvm.fmuladd.f64(double %i.dh, double %i.dl, double f0x3FA555555555554C)
  %i.dn = fmul double %i.dh, %i.dm                ; 2 uses
  %i.do = icmp samesign ult i32 %i.dd, 1070805811
  br i1 %i.do, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dp = fneg double %i.cz
  %i.dq = fmul double %i.w, %i.dp
  %i.dr = tail call double @llvm.fmuladd.f64(double %i.dh, double %i.dn, double %i.dq)
  %i.ds = fneg double %i.dr
  %i.dt = tail call double @llvm.fmuladd.f64(double %i.dh, double 5.000000e-01, double %i.ds)
  %i.du = fsub double 1.000000e+00, %i.dt
  br label %_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_cosEdd.exit

bb.r:                                             ; preds = %bb.p
  %i.dv = icmp samesign ugt i32 %i.dd, 1072234496
  %i.dw = add nsw i32 %i.dd, -2097152
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = shl nuw nsw i64 %i.dx, 32
  %i.dz = bitcast i64 %i.dy to double
  %.024.i = select i1 %i.dv, double 2.812500e-01, double %i.dz ; 2 uses
  %i.ea = fneg double %.024.i
  %i.eb = tail call double @llvm.fmuladd.f64(double %i.dh, double 5.000000e-01, double %i.ea)
  %i.ec = fsub double 1.000000e+00, %.024.i
  %i.ed = fneg double %i.cz
  %i.ee = fmul double %i.w, %i.ed
  %i.ef = tail call double @llvm.fmuladd.f64(double %i.dh, double %i.dn, double %i.ee)
  %i.eg = fsub double %i.ef, %i.eb
  %i.eh = fadd double %i.ec, %i.eg
  br label %_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_cosEdd.exit

_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_cosEdd.exit: ; preds = %bb.o, %bb.q, %bb.r
  %.0.i = phi double [ %i.eh, %bb.r ], [ %i.du, %bb.q ], [ 1.000000e+00, %bb.o ]
  %i.ei = fneg double %.0.i
  br label %_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_sinEddi.exit14

_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_sinEddi.exit14: ; preds = %bb.i, %bb.g, %bb.b, %bb.l, %bb.k, %bb.h, %bb.c, %_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_cosEdd.exit, %_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_sinEddi.exit, %bb.e
  %.0 = phi double [ %i.ei, %_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_cosEdd.exit ], [ %i.t, %bb.e ], [ %i.r, %bb.c ], [ %i.w, %bb.g ], [ %i.cx, %_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_sinEddi.exit ], [ %0, %bb.b ], [ %i.ar, %bb.h ], [ %i.cb, %bb.l ], [ %i.bo, %bb.k ], [ 1.000000e+00, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret double %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(errnomem: write) uwtable
define dso_local noundef double @_ZN2v84base7ieee7543tanEd(double noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca [2 x double], align 16            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = bitcast double %0 to i64
  %i.c = lshr i64 %i.b, 32
  %i.d = trunc nuw i64 %i.c to i32                ; 2 uses
  %i.e = and i32 %i.d, 2147483647                 ; 4 uses
  %i.f = icmp samesign ult i32 %i.e, 1072243196
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = icmp samesign ult i32 %i.e, 1043333120
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = fptosi double %0 to i32
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_tanEddi.exit, label %.thread.i

bb.d:                                             ; preds = %bb.b
  %i.j = icmp samesign ugt i32 %i.e, 1072010279
  br i1 %i.j, label %bb.e, label %.thread.i

bb.e:                                             ; preds = %bb.d
  %.0.i = tail call double @llvm.fabs.f64(double %0)
  %.054.i = tail call double @llvm.copysign.f64(double 0.000000e+00, double %0)
  %i.k = fsub double f0x3FE921FB54442D18, %.0.i
  %i.l = fsub double f0x3C81A62633145C07, %.054.i
  %i.m = fadd double %i.k, %i.l
  br label %.thread.i

.thread.i:                                        ; preds = %bb.e, %bb.d, %bb.c
  %i.n = phi i1 [ true, %bb.e ], [ false, %bb.d ], [ false, %bb.c ]
  %.177.i = phi double [ %i.m, %bb.e ], [ %0, %bb.d ], [ %0, %bb.c ] ; 5 uses
  %i.o = fmul double %.177.i, %.177.i             ; 5 uses
  %i.p = fmul double %i.o, %i.o                   ; 9 uses
  %1 = tail call double @llvm.fmuladd.f64(double %i.p, double f0xBEF375CBDB605373, double f0x3F147E88A03792A6)
  %2 = tail call double @llvm.fmuladd.f64(double %i.p, double %1, double f0x3F4344D8F2F26501)
  %3 = tail call double @llvm.fmuladd.f64(double %i.p, double %2, double f0x3F6D6D22C9560328)
  %4 = tail call double @llvm.fmuladd.f64(double %i.p, double %3, double f0x3F9664F48406D637)
  %5 = insertelement <2 x double> poison, double %i.p, i64 0
  %i.q = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> zeroinitializer
  %6 = insertelement <2 x double> <double poison, double f0x3EFB2A7074BF7AD4>, double %4, i64 0
  %i.r = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.q, <2 x double> %6, <2 x double> <double f0x3FC111111110FE7A, double f0x3F12B80F32F0A7E9>) ; 2 uses
  %i.s = extractelement <2 x double> %i.r, i64 1
  %i.t = tail call double @llvm.fmuladd.f64(double %i.p, double %i.s, double f0x3F3026F71A8D1068)
  %i.u = tail call double @llvm.fmuladd.f64(double %i.p, double %i.t, double f0x3F57DBC8FEE08315)
  %i.v = tail call double @llvm.fmuladd.f64(double %i.p, double %i.u, double f0x3F8226E3E96E8493)
  %i.w = tail call double @llvm.fmuladd.f64(double %i.p, double %i.v, double f0x3FABA1BA1BB341FE)
  %i.x = fmul double %i.o, %i.w
  %i.y = fmul double %.177.i, %i.o                ; 2 uses
  %i.z = extractelement <2 x double> %i.r, i64 0
  %i.aa = fadd double %i.z, %i.x
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.y, double %i.aa, double 0.000000e+00)
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.o, double %i.ab, double 0.000000e+00)
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.y, double f0x3FD5555555555563, double %i.ac) ; 2 uses
  %i.ae = fadd double %.177.i, %i.ad              ; 4 uses
  br i1 %i.n, label %bb.f, label %_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_tanEddi.exit

bb.f:                                             ; preds = %.thread.i
  %i.af = lshr i32 %i.d, 30
  %i.ag = and i32 %i.af, 2
  %i.ah = sub nsw i32 1, %i.ag
  %i.ai = sitofp i32 %i.ah to double
  %i.aj = fmul double %i.ae, %i.ae
  %i.ak = fadd double %i.ae, 1.000000e+00
  %i.al = fdiv double %i.aj, %i.ak
  %i.am = fsub double %i.al, %i.ad
  %i.an = fsub double %.177.i, %i.am
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.an, double -2.000000e+00, double 1.000000e+00)
  %i.ap = fmul double %i.ao, %i.ai
  br label %_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_tanEddi.exit

bb.g:                                             ; preds = %bb.a
  %i.aq = icmp samesign ugt i32 %i.e, 2146435071
  br i1 %i.aq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ar = fsub double %0, %0
  br label %_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_tanEddi.exit

bb.i:                                             ; preds = %bb.g
  %i.as = call fastcc noundef i32 @_ZN2v84base7ieee75412_GLOBAL__N_118__ieee754_rem_pio2EdPd(double noundef %0, ptr noundef %i.a)
  %i.at = load double, ptr %i.a, align 16         ; 9 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.av = load double, ptr %i.au, align 8         ; 6 uses
  %i.aw = shl i32 %i.as, 1
  %i.ax = and i32 %i.aw, 2                        ; 4 uses
  %i.ay = sub nsw i32 1, %i.ax
  %i.az = bitcast double %i.at to i64             ; 3 uses
  %i.ba = lshr i64 %i.az, 32
  %i.bb = trunc nuw i64 %i.ba to i32              ; 2 uses
  %i.bc = and i32 %i.bb, 2147483647               ; 3 uses
  %i.bd = icmp samesign ult i32 %i.bc, 1043333120
  br i1 %i.bd, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.be = fptosi double %i.at to i32
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.k, label %.thread.i7

bb.k:                                             ; preds = %bb.j
  %i.bg = trunc i64 %i.az to i32
  %i.bh = sub nuw nsw i32 2, %i.ax
  %i.bi = or i32 %i.bh, %i.bg
  %i.bj = or i32 %i.bi, %i.bc
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bl = tail call double @llvm.fabs.f64(double %i.at)
  %i.bm = fdiv double 1.000000e+00, %i.bl
  br label %_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_tanEddi.exit

bb.m:                                             ; preds = %bb.k
  %i.bn = icmp eq i32 %i.ax, 0
  br i1 %i.bn, label %_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_tanEddi.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bo = fadd double %i.at, %i.av                ; 2 uses
  %i.bp = bitcast double %i.bo to i64
  %i.bq = and i64 %i.bp, -4294967296
  %i.br = bitcast i64 %i.bq to double             ; 2 uses
  %i.bs = fsub double %i.br, %i.at
  %i.bt = fsub double %i.av, %i.bs
  %i.bu = fdiv double -1.000000e+00, %i.bo        ; 2 uses
  %i.bv = bitcast double %i.bu to i64
  %i.bw = and i64 %i.bv, -4294967296
  %i.bx = bitcast i64 %i.bw to double             ; 3 uses
  %i.by = tail call double @llvm.fmuladd.f64(double %i.bx, double %i.br, double 1.000000e+00)
  %i.bz = tail call double @llvm.fmuladd.f64(double %i.bx, double %i.bt, double %i.by)
  %i.ca = tail call double @llvm.fmuladd.f64(double %i.bu, double %i.bz, double %i.bx)
  br label %_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_tanEddi.exit

bb.o:                                             ; preds = %bb.i
  %i.cb = icmp samesign ugt i32 %i.bc, 1072010279
  br i1 %i.cb, label %bb.p, label %.thread.i7

bb.p:                                             ; preds = %bb.o
  %i.cc = icmp slt i64 %i.az, 0
  %i.cd = fneg double %i.av
  %.0.i10 = tail call double @llvm.fabs.f64(double %i.at)
  %.054.i11 = select i1 %i.cc, double %i.cd, double %i.av
  %i.ce = fsub double f0x3FE921FB54442D18, %.0.i10
  %i.cf = fsub double f0x3C81A62633145C07, %.054.i11
  %i.cg = fadd double %i.ce, %i.cf
  br label %.thread.i7

.thread.i7:                                       ; preds = %bb.p, %bb.o, %bb.j
  %i.ch = phi i1 [ true, %bb.p ], [ false, %bb.o ], [ false, %bb.j ]
  %.177.i8 = phi double [ %i.cg, %bb.p ], [ %i.at, %bb.o ], [ %i.at, %bb.j ] ; 6 uses
  %.155.i = phi double [ 0.000000e+00, %bb.p ], [ %i.av, %bb.o ], [ %i.av, %bb.j ] ; 2 uses
  %i.ci = fmul double %.177.i8, %.177.i8          ; 5 uses
  %i.cj = fmul double %i.ci, %i.ci                ; 9 uses
  %7 = tail call double @llvm.fmuladd.f64(double %i.cj, double f0xBEF375CBDB605373, double f0x3F147E88A03792A6)
  %8 = tail call double @llvm.fmuladd.f64(double %i.cj, double %7, double f0x3F4344D8F2F26501)
  %9 = tail call double @llvm.fmuladd.f64(double %i.cj, double %8, double f0x3F6D6D22C9560328)
  %10 = tail call double @llvm.fmuladd.f64(double %i.cj, double %9, double f0x3F9664F48406D637)
  %11 = insertelement <2 x double> poison, double %i.cj, i64 0
  %i.ck = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> zeroinitializer
  %12 = insertelement <2 x double> <double poison, double f0x3EFB2A7074BF7AD4>, double %10, i64 0
  %i.cl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ck, <2 x double> %12, <2 x double> <double f0x3FC111111110FE7A, double f0x3F12B80F32F0A7E9>) ; 2 uses
  %i.cm = extractelement <2 x double> %i.cl, i64 1
  %i.cn = tail call double @llvm.fmuladd.f64(double %i.cj, double %i.cm, double f0x3F3026F71A8D1068)
  %i.co = tail call double @llvm.fmuladd.f64(double %i.cj, double %i.cn, double f0x3F57DBC8FEE08315)
  %i.cp = tail call double @llvm.fmuladd.f64(double %i.cj, double %i.co, double f0x3F8226E3E96E8493)
  %i.cq = tail call double @llvm.fmuladd.f64(double %i.cj, double %i.cp, double f0x3FABA1BA1BB341FE)
  %i.cr = fmul double %i.ci, %i.cq
  %i.cs = fmul double %.177.i8, %i.ci             ; 2 uses
  %i.ct = extractelement <2 x double> %i.cl, i64 0
  %i.cu = fadd double %i.ct, %i.cr
  %i.cv = tail call double @llvm.fmuladd.f64(double %i.cs, double %i.cu, double %.155.i)
  %i.cw = tail call double @llvm.fmuladd.f64(double %i.ci, double %i.cv, double %.155.i)
  %i.cx = tail call double @llvm.fmuladd.f64(double %i.cs, double f0x3FD5555555555563, double %i.cw) ; 3 uses
  %i.cy = fadd double %.177.i8, %i.cx             ; 6 uses
  br i1 %i.ch, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.thread.i7
  %i.cz = sitofp i32 %i.ay to double              ; 2 uses
  %i.da = lshr i32 %i.bb, 30
  %i.db = and i32 %i.da, 2
  %i.dc = sub nsw i32 1, %i.db
  %i.dd = sitofp i32 %i.dc to double
  %i.de = fmul double %i.cy, %i.cy
  %i.df = fadd double %i.cy, %i.cz
  %i.dg = fdiv double %i.de, %i.df
  %i.dh = fsub double %i.dg, %i.cx
  %i.di = fsub double %.177.i8, %i.dh
  %i.dj = tail call double @llvm.fmuladd.f64(double %i.di, double -2.000000e+00, double %i.cz)
  %i.dk = fmul double %i.dj, %i.dd
  br label %_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_tanEddi.exit

bb.r:                                             ; preds = %.thread.i7
  %i.dl = icmp eq i32 %i.ax, 0
  br i1 %i.dl, label %_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_tanEddi.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dm = bitcast double %i.cy to i64
  %i.dn = and i64 %i.dm, -4294967296
  %i.do = bitcast i64 %i.dn to double             ; 2 uses
  %i.dp = fsub double %i.do, %.177.i8
  %i.dq = fsub double %i.cx, %i.dp
  %i.dr = fdiv double -1.000000e+00, %i.cy        ; 2 uses
  %i.ds = bitcast double %i.dr to i64
  %i.dt = and i64 %i.ds, -4294967296
  %i.du = bitcast i64 %i.dt to double             ; 3 uses
  %i.dv = tail call double @llvm.fmuladd.f64(double %i.du, double %i.do, double 1.000000e+00)
  %i.dw = tail call double @llvm.fmuladd.f64(double %i.du, double %i.dq, double %i.dv)
  %i.dx = tail call double @llvm.fmuladd.f64(double %i.dr, double %i.dw, double %i.du)
  br label %_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_tanEddi.exit

_ZN2v84base7ieee75412_GLOBAL__N_112__kernel_tanEddi.exit: ; preds = %bb.c, %bb.s, %bb.r, %bb.q, %bb.n, %bb.m, %bb.l, %bb.f, %.thread.i, %bb.h
  %.0 = phi double [ %i.ae, %.thread.i ], [ %i.ar, %bb.h ], [ %i.at, %bb.m ], [ %i.ap, %bb.f ], [ %i.dx, %bb.s ], [ %i.dk, %bb.q ], [ %i.ca, %bb.n ], [ %i.bm, %bb.l ], [ %i.cy, %bb.r ], [ %0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret double %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define dso_local noundef double @_ZN2v84base7ieee7544coshEd(double noundef %0) local_unnamed_addr #9 {
bb.a:
  %i.a = bitcast double %0 to i64
  %i.b = lshr i64 %i.a, 32
  %i.c = trunc nuw i64 %i.b to i32
  %i.d = and i32 %i.c, 2147483647                 ; 5 uses
  %i.e = icmp samesign ult i32 %i.d, 1071001155
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call double @llvm.fabs.f64(double %0)
  %i.g = tail call noundef double @_ZN2v84base7ieee7545expm1Ed(double noundef %i.f) ; 3 uses
  %i.h = fadd double %i.g, 1.000000e+00           ; 3 uses
  %i.i = icmp samesign ult i32 %i.d, 1015021568
  %i.j = fmul double %i.g, %i.g
  %i.k = fadd double %i.h, %i.h
  %i.l = fdiv double %i.j, %i.k
  %i.m = fadd double %i.l, 1.000000e+00
  %.0 = select i1 %i.i, double %i.h, double %i.m
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.n = icmp samesign ult i32 %i.d, 1077280768
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = tail call double @llvm.fabs.f64(double %0)
  %i.p = tail call noundef double @_ZN2v84base7ieee7543expEd(double noundef %i.o) ; 2 uses
  %i.q = fdiv double 5.000000e-01, %i.p
  %i.r = tail call double @llvm.fmuladd.f64(double %i.p, double 5.000000e-01, double %i.q)
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.s = icmp samesign ult i32 %i.d, 1082535490
  %i.t = tail call double @llvm.fabs.f64(double %0) ; 3 uses
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = tail call noundef double @_ZN2v84base7ieee7543expEd(double noundef %i.t)
  %i.v = fmul double %i.u, 5.000000e-01
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.w = fcmp ugt double %i.t, f0x408633CE8FB9F87D
  br i1 %i.w, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = fmul nnan double %i.t, 5.000000e-01
  %i.y = tail call noundef double @_ZN2v84base7ieee7543expEd(double noundef %i.x) ; 2 uses
  %i.z = fmul double %i.y, 5.000000e-01
  %i.aa = fmul double %i.y, %i.z
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.ab = icmp samesign ugt i32 %i.d, 2146435071
  br i1 %i.ab, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ac = fmul double %0, %0
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ad = load volatile double, ptr @_ZZN2v84base7ieee7544coshEdE4huge, align 8
  %i.ae = load volatile double, ptr @_ZZN2v84base7ieee7544coshEdE4huge, align 8
  %i.af = fmul double %i.ad, %i.ae
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  %.1 = phi double [ %.0, %bb.b ], [ %i.r, %bb.d ], [ %i.v, %bb.f ], [ %i.aa, %bb.h ], [ %i.ac, %bb.j ], [ %i.af, %bb.k ]
  ret double %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define dso_local noundef double @_ZN2v84base7ieee7546legacy3powEdd(double noundef %0, double noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = bitcast double %0 to i64                 ; 3 uses
  %i.b = lshr i64 %i.a, 32
  %i.c = trunc nuw i64 %i.b to i32                ; 2 uses
  %i.d = trunc i64 %i.a to i32                    ; 3 uses
  %i.e = bitcast double %1 to i64                 ; 9 uses
  %i.f = lshr i64 %i.e, 32                        ; 3 uses
  %i.g = trunc nuw i64 %i.f to i32                ; 3 uses
  %i.h = trunc i64 %i.e to i32                    ; 6 uses
  %i.i = and i32 %i.c, 2147483647                 ; 10 uses
  %i.j = and i32 %i.g, 2147483647                 ; 12 uses
  %i.k = or i32 %i.j, %i.h
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZN2v84base6DivideIdEET_S2_S2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = icmp samesign ugt i32 %i.i, 2146435072
  br i1 %i.m, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = icmp eq i32 %i.i, 2146435072
  %i.o = icmp ne i32 %i.d, 0
  %or.cond = and i1 %i.o, %i.n
  %i.p = icmp samesign ugt i32 %i.j, 2146435072
  %or.cond3 = select i1 %or.cond, i1 true, i1 %i.p
  br i1 %or.cond3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = icmp eq i32 %i.j, 2146435072             ; 2 uses
  %i.r = icmp ne i32 %i.h, 0
  %or.cond5 = and i1 %i.r, %i.q
  br i1 %or.cond5, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.s = fadd double %0, %1
  br label %_ZN2v84base6DivideIdEET_S2_S2_.exit

bb.f:                                             ; preds = %bb.d
  %i.t = icmp sgt i64 %i.a, -1                    ; 5 uses
  br i1 %i.t, label %bb.o, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = icmp samesign ugt i32 %i.j, 1128267775
  br i1 %i.u, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = icmp samesign ugt i32 %i.j, 1072693247
  br i1 %i.v, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.w = lshr i32 %i.j, 20                        ; 2 uses
  %i.x = icmp samesign ugt i32 %i.j, 1094713343
  br i1 %i.x, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.y = sub nuw nsw i32 1075, %i.w               ; 2 uses
  %i.z = lshr i32 %i.h, %i.y                      ; 2 uses
  %i.aa = shl i32 %i.z, %i.y
  %i.ab = icmp eq i32 %i.aa, %i.h
  br i1 %i.ab, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.ac = and i32 %i.z, 1
  %i.ad = sub nuw nsw i32 2, %i.ac
  br label %bb.o

bb.l:                                             ; preds = %bb.i
  %i.ae = icmp eq i32 %i.h, 0
  br i1 %i.ae, label %bb.m, label %.thread277

end_hunk_1
