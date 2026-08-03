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
  %i.ai = fmul double %i.ah, 5.000000e-01         ; 6 uses
  %i.aj = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.ai, i64 0 ; 5 uses
  %i.ak = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aj, <2 x double> <double f0x3F023DE10DFDF709, double 0.000000e+00>, <2 x double> <double f0x3F49EFE07501B288, double 0.000000e+00>)
  %i.al = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aj, <2 x double> %i.ak, <2 x double> <double f0xBFA48228B5688F3B, double 0.000000e+00>)
  %i.am = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aj, <2 x double> %i.al, <2 x double> <double f0x3FC9C1550E884455, double 0.000000e+00>)
  %i.an = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aj, <2 x double> %i.am, <2 x double> <double f0xBFD4D61203EB6F7D, double f0x3FB3B8C5B12E9282>)
  %i.ao = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ap = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ao, <2 x double> %i.an, <2 x double> <double f0x3FC5555555555555, double f0xBFE6066C1B8D0159>) ; 2 uses
  %i.aq = extractelement <2 x double> %i.ap, i64 0
  %i.ar = fmul double %i.ai, %i.aq
  %i.as = extractelement <2 x double> %i.ap, i64 1
  %i.at = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.as, double f0x40002AE59C598AC8)
  %i.au = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.at, double f0xC0033A271C8A2D4B)
  %i.av = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.au, double 1.000000e+00)
  %i.aw = tail call double @sqrt(double noundef %i.ai) #12 ; 2 uses
  %i.ax = fdiv double %i.ar, %i.av
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.ax, double %i.aw, double f0xBC91A62633145C07)
  %i.az = fadd double %i.aw, %i.ay
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.az, double -2.000000e+00, double f0x400921FB54442D18)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bb = fsub double 1.000000e+00, %0
  %i.bc = fmul double %i.bb, 5.000000e-01         ; 12 uses
  %i.bd = tail call double @sqrt(double noundef %i.bc) #12 ; 3 uses
  %i.be = bitcast double %i.bd to i64
  %i.bf = and i64 %i.be, -4294967296
  %1 = tail call double @llvm.fmuladd.f64(double %i.bc, double f0x3FB3B8C5B12E9282, double f0xBFE6066C1B8D0159)
  %2 = tail call double @llvm.fmuladd.f64(double %i.bc, double %1, double f0x40002AE59C598AC8)
  %3 = tail call double @llvm.fmuladd.f64(double %i.bc, double %2, double f0xC0033A271C8A2D4B)
  %4 = tail call double @llvm.fmuladd.f64(double %i.bc, double %3, double 1.000000e+00)
  %i.bg = bitcast i64 %i.bf to double             ; 4 uses
  %i.bh = fneg double %i.bg
  %5 = fadd double %i.bd, %i.bg
  %6 = insertelement <2 x double> poison, double %i.bh, i64 0
  %7 = insertelement <2 x double> %6, double %i.bc, i64 1
  %i.bi = insertelement <2 x double> <double poison, double f0x3F023DE10DFDF709>, double %i.bg, i64 0
  %8 = insertelement <2 x double> <double poison, double f0x3F49EFE07501B288>, double %i.bc, i64 0
  %i.bj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %7, <2 x double> %i.bi, <2 x double> %8) ; 2 uses
  %9 = extractelement <2 x double> %i.bj, i64 1
  %10 = tail call double @llvm.fmuladd.f64(double %i.bc, double %9, double f0xBFA48228B5688F3B)
  %11 = tail call double @llvm.fmuladd.f64(double %i.bc, double %10, double f0x3FC9C1550E884455)
  %12 = tail call double @llvm.fmuladd.f64(double %i.bc, double %11, double f0xBFD4D61203EB6F7D)
  %13 = tail call double @llvm.fmuladd.f64(double %i.bc, double %12, double f0x3FC5555555555555)
  %i.bk = fmul double %i.bc, %13
  %14 = insertelement <2 x double> %i.bj, double %i.bk, i64 1
  %15 = insertelement <2 x double> poison, double %5, i64 0
  %16 = insertelement <2 x double> %15, double %4, i64 1
  %17 = fdiv <2 x double> %14, %16                ; 2 uses
  %18 = extractelement <2 x double> %17, i64 0
  %19 = extractelement <2 x double> %17, i64 1
  %i.bl = tail call double @llvm.fmuladd.f64(double %19, double %i.bd, double %18)
  %i.bm = fadd double %i.bl, %i.bg
  %i.bn = fmul double %i.bm, 2.000000e+00
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.e, %bb.c, %bb.i, %bb.h, %bb.f
  %.1 = phi double [ %i.bn, %bb.i ], [ f0x3FF921FB54442D18, %bb.e ], [ %i.af, %bb.f ], [ %i.ba, %bb.h ], [ %., %bb.c ], [ +snan(0x4000000000000), %bb.b ]
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
  %i.be = fmul double %i.bc, %i.bc                ; 4 uses
  %i.bf = sub nsw i32 440401, %i.s
  %i.bg = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.be, i64 0 ; 2 uses
  %i.bh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bg, <2 x double> <double f0x3FC39A09D078C69F, double 0.000000e+00>, <2 x double> <double f0x3FCC71C51D8E78AF, double f0x3FC2F112DF3E5244>)
  %i.bi = shufflevector <2 x double> %i.bg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bi, <2 x double> %i.bh, <2 x double> <double f0x3FD999999997FA04, double f0x3FC7466496CB03DE>) ; 2 uses
  %i.bk = extractelement <2 x double> %i.bj, i64 0
  %i.bl = fmul double %i.be, %i.bk
  %i.bm = extractelement <2 x double> %i.bj, i64 1
  %i.bn = tail call double @llvm.fmuladd.f64(double %i.be, double %i.bm, double f0x3FD2492494229359)
  %i.bo = tail call double @llvm.fmuladd.f64(double %i.be, double %i.bn, double f0x3FE5555555555593)
  %i.bp = fmul double %i.bc, %i.bo
  %i.bq = or i32 %i.bd, %i.bf
  %i.br = fadd double %i.bl, %i.bp                ; 2 uses
  %i.bs = icmp sgt i32 %i.bq, 0
  br i1 %i.bs, label %bb.o, label %bb.r

end_hunk_0
