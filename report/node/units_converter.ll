inline.NumInlined: 203
inline.NumDeleted: 78
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.icu_78::StringPiece" = type <{ ptr, i32, [4 x i8] }>
%"class.icu_78::double_conversion::StringToDoubleConverter" = type <{ i32, [4 x i8], double, double, ptr, ptr, i16, [6 x i8] }>
%"class.icu_78::MeasureUnitImpl" = type { i32, %"class.icu_78::MaybeStackVector", %"class.icu_78::FixedString", i64 }
%"class.icu_78::MaybeStackVector" = type { %"class.icu_78::MemoryPool" }
%"class.icu_78::MemoryPool" = type { i32, %"class.icu_78::MaybeStackArray" }
%"class.icu_78::MaybeStackArray" = type { ptr, i32, i8, [8 x ptr] }
%"class.icu_78::FixedString" = type { ptr }
%"class.icu_78::MaybeStackVector.3" = type { %"class.icu_78::MemoryPool.4" }
%"class.icu_78::MemoryPool.4" = type { i32, %"class.icu_78::MaybeStackArray.5" }
%"class.icu_78::MaybeStackArray.5" = type { ptr, i32, i8, [8 x ptr] }
%"class.icu_78::units::ConversionRates" = type { %"class.icu_78::MaybeStackVector.0" }
%"class.icu_78::MaybeStackVector.0" = type { %"class.icu_78::MemoryPool.1" }
%"class.icu_78::MemoryPool.1" = type { i32, %"class.icu_78::MaybeStackArray.2" }
%"class.icu_78::MaybeStackArray.2" = type { ptr, i32, i8, [8 x ptr] }
%"struct.icu_78::units::Factor" = type { double, double, double, i8, [15 x i32] }
%"struct.icu_78::SingleUnitImpl" = type { i32, i32, i32 }
%"struct.icu_78::units::ConversionInfo" = type { double, double, i8 }

$_ZN6icu_7810MemoryPoolINS_5units18ConversionRateInfoELi8EED2Ev = comdat any

@_ZN6icu_785unitsL15constantsValuesE = internal unnamed_addr constant [15 x double] [double 3.048000e-01, double f0x400921FB54442D18, double f0x40239D013A92A305, double 6.674080e-11, double 4.546090e-03, double f0x3FDD07A84AB75E51, double f0x406684FB7E90FF97, double f0x44DFE185CA57C517, double f0x42416A5D2D360000, double 3.155760e+07, double f0x41B1DE784A000000, double f0x3F5D8E2237AAB50A, double f0x400A723F789854A1, double f0x3FA0ECF56BE69C90, double f0x3A6071F749C72D03], align 16
@.str = private unnamed_addr constant [8 x i8] c"ft_to_m\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"ft2_to_m2\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"ft3_to_m3\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"in3_to_m3\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"gal_to_m3\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"gal_imp_to_m3\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"gravity\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"lb_to_kg\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"glucose_molar_mass\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"item_per_mole\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"meters_per_AU\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"PI\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"sec_per_julian_year\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"speed_of_light_meters_per_second\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"sho_to_m3\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"tsubo_to_m2\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"shaku_to_m\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"AMU\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"beaufort\00", align 1
@_ZN6icu_785unitsL26minMetersPerSecForBeaufortE = internal unnamed_addr constant [19 x double] [double 0.000000e+00, double 3.000000e-01, double 1.600000e+00, double 3.400000e+00, double 5.500000e+00, double 8.000000e+00, double 1.080000e+01, double 1.390000e+01, double 1.720000e+01, double 2.080000e+01, double 2.450000e+01, double 2.850000e+01, double 3.270000e+01, double 3.690000e+01, double 4.140000e+01, double 4.610000e+01, double 5.110000e+01, double 5.580000e+01, double f0x404EB33333333333], align 16
@.str.20 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZN6icu_7811StringPiece4nposE = external local_unnamed_addr constant i32, align 4

@_ZN6icu_785units14UnitsConverterC1ERKNS_15MeasureUnitImplES4_RKNS0_15ConversionRatesER10UErrorCode = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr), ptr @_ZN6icu_785units14UnitsConverterC2ERKNS_15MeasureUnitImplES4_RKNS0_15ConversionRatesER10UErrorCode
@_ZN6icu_785units14UnitsConverterC1ENS_11StringPieceES2_R10UErrorCode = dso_local unnamed_addr alias void (ptr, ptr, i32, ptr, i32, ptr), ptr @_ZN6icu_785units14UnitsConverterC2ENS_11StringPieceES2_R10UErrorCode

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN6icu_785units6Factor10multiplyByERKS1_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = add nuw i64 %i.b, 88
  %i.d = add nuw i64 %i.a, 88
  %rt.bound0 = icmp ugt i64 %i.c, %i.a
  %rt.bound1 = icmp ugt i64 %i.d, %i.b
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  %rt.guard = freeze i1 %rt.conflict
  br i1 %rt.guard, label %.rtscalar, label %.rtvec

.rtvec:                                           ; preds = %bb.a
  %2 = load double, ptr %1, align 8
  %3 = load double, ptr %0, align 8
  %4 = fmul double %2, %3
  store double %4, ptr %0, align 8
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %6 = load double, ptr %5, align 8
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %8 = load double, ptr %7, align 8
  %9 = fmul double %6, %8
  store double %9, ptr %7, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.g = load <4 x i32>, ptr %i.e, align 4
  %i.h = load <4 x i32>, ptr %i.f, align 4
  %i.i = add nsw <4 x i32> %i.h, %i.g
  store <4 x i32> %i.i, ptr %i.f, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.l = load <4 x i32>, ptr %i.j, align 4
  %i.m = load <4 x i32>, ptr %i.k, align 4
  %i.n = add nsw <4 x i32> %i.m, %i.l
  store <4 x i32> %i.n, ptr %i.k, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.q = load <4 x i32>, ptr %i.o, align 4
  %i.r = load <4 x i32>, ptr %i.p, align 4
  %i.s = add nsw <4 x i32> %i.r, %i.q
  store <4 x i32> %i.s, ptr %i.p, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.v = load <2 x i32>, ptr %i.t, align 4
  %i.w = load <2 x i32>, ptr %i.u, align 4
  %i.x = add nsw <2 x i32> %i.w, %i.v
  store <2 x i32> %i.x, ptr %i.u, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = add nsw i32 %i.ab, %i.z
  store i32 %i.ac, ptr %i.aa, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.af = load double, ptr %i.ad, align 8         ; 2 uses
  %i.ag = load double, ptr %i.ae, align 8         ; 2 uses
  %i.ah = fcmp olt double %i.af, %i.ag
  %i.ai = select i1 %i.ah, double %i.ag, double %i.af
  store double %i.ai, ptr %i.ae, align 8
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.a
  %i.aj = load double, ptr %1, align 8
  %i.ak = load double, ptr %0, align 8
  %i.al = fmul double %i.aj, %i.ak
  store double %i.al, ptr %0, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load double, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ap = load double, ptr %i.ao, align 8
  %i.aq = fmul double %i.an, %i.ap
  store double %i.aq, ptr %i.ao, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.at = load i32, ptr %i.ar, align 4
  %i.au = load i32, ptr %i.as, align 4
  %i.av = add nsw i32 %i.au, %i.at
  store i32 %i.av, ptr %i.as, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ax = load i32, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8
  %i.ba = add nsw i32 %i.az, %i.ax
  store i32 %i.ba, ptr %i.ay, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = add nsw i32 %i.be, %i.bc
  store i32 %i.bf, ptr %i.bd, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bh = load i32, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8
  %i.bk = add nsw i32 %i.bj, %i.bh
  store i32 %i.bk, ptr %i.bi, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.bm = load i32, ptr %i.bl, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = add nsw i32 %i.bo, %i.bm
  store i32 %i.bp, ptr %i.bn, align 4
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.br = load i32, ptr %i.bq, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8
  %i.bu = add nsw i32 %i.bt, %i.br
  store i32 %i.bu, ptr %i.bs, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.bw = load i32, ptr %i.bv, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4
  %i.bz = add nsw i32 %i.by, %i.bw
  store i32 %i.bz, ptr %i.bx, align 4
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cb = load i32, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 8
  %i.ce = add nsw i32 %i.cd, %i.cb
  store i32 %i.ce, ptr %i.cc, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.cg = load i32, ptr %i.cf, align 4
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4
  %i.cj = add nsw i32 %i.ci, %i.cg
  store i32 %i.cj, ptr %i.ch, align 4
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cl = load i32, ptr %i.ck, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 8
  %i.co = add nsw i32 %i.cn, %i.cl
  store i32 %i.co, ptr %i.cm, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.cq = load i32, ptr %i.cp, align 4
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4
  %i.ct = add nsw i32 %i.cs, %i.cq
  store i32 %i.ct, ptr %i.cr, align 4
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cv = load i32, ptr %i.cu, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 8
  %i.cy = add nsw i32 %i.cx, %i.cv
  store i32 %i.cy, ptr %i.cw, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.da = load i32, ptr %i.cz, align 4
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4
  %i.dd = add nsw i32 %i.dc, %i.da
  store i32 %i.dd, ptr %i.db, align 4
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.df = load i32, ptr %i.de, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 8
  %i.di = add nsw i32 %i.dh, %i.df
  store i32 %i.di, ptr %i.dg, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.dk = load i32, ptr %i.dj, align 4
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4
  %i.dn = add nsw i32 %i.dm, %i.dk
  store i32 %i.dn, ptr %i.dl, align 4
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dq = load double, ptr %i.do, align 8         ; 2 uses
  %i.dr = load double, ptr %i.dp, align 8         ; 2 uses
  %i.ds = fcmp olt double %i.dq, %i.dr
  %i.dt = select i1 %i.ds, double %i.dr, double %i.dq
  store double %i.dt, ptr %i.dp, align 8
  br label %.rtcont

.rtcont:                                          ; preds = %.rtscalar, %.rtvec
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN6icu_785units6Factor8divideByERKS1_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = add nuw i64 %i.b, 88
  %i.d = add nuw i64 %i.a, 88
  %rt.bound0 = icmp ugt i64 %i.c, %i.a
  %rt.bound1 = icmp ugt i64 %i.d, %i.b
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  %rt.guard = freeze i1 %rt.conflict
  br i1 %rt.guard, label %.rtscalar, label %.rtvec

.rtvec:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %2 = load double, ptr %i.e, align 8
  %3 = load double, ptr %0, align 8
  %4 = fmul double %2, %3
  store double %4, ptr %0, align 8
  %5 = load double, ptr %1, align 8
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %7 = load double, ptr %6, align 8
  %8 = fmul double %5, %7
  store double %8, ptr %6, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.h = load <4 x i32>, ptr %i.f, align 4
  %i.i = load <4 x i32>, ptr %i.g, align 4
  %i.j = sub nsw <4 x i32> %i.i, %i.h
  store <4 x i32> %i.j, ptr %i.g, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.m = load <4 x i32>, ptr %i.k, align 4
  %i.n = load <4 x i32>, ptr %i.l, align 4
  %i.o = sub nsw <4 x i32> %i.n, %i.m
  store <4 x i32> %i.o, ptr %i.l, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.r = load <4 x i32>, ptr %i.p, align 4
  %i.s = load <4 x i32>, ptr %i.q, align 4
  %i.t = sub nsw <4 x i32> %i.s, %i.r
  store <4 x i32> %i.t, ptr %i.q, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.w = load <2 x i32>, ptr %i.u, align 4
  %i.x = load <2 x i32>, ptr %i.v, align 4
  %i.y = sub nsw <2 x i32> %i.x, %i.w
  store <2 x i32> %i.y, ptr %i.v, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = sub nsw i32 %i.ac, %i.aa
  store i32 %i.ad, ptr %i.ab, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ag = load double, ptr %i.ae, align 8         ; 2 uses
  %i.ah = load double, ptr %i.af, align 8         ; 2 uses
  %i.ai = fcmp olt double %i.ag, %i.ah
  %i.aj = select i1 %i.ai, double %i.ah, double %i.ag
  store double %i.aj, ptr %i.af, align 8
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load double, ptr %i.ak, align 8
  %i.am = load double, ptr %0, align 8
  %i.an = fmul double %i.al, %i.am
  store double %i.an, ptr %0, align 8
  %i.ao = load double, ptr %1, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aq = load double, ptr %i.ap, align 8
  %i.ar = fmul double %i.ao, %i.aq
  store double %i.ar, ptr %i.ap, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.au = load i32, ptr %i.as, align 4
  %i.av = load i32, ptr %i.at, align 4
  %i.aw = sub nsw i32 %i.av, %i.au
  store i32 %i.aw, ptr %i.at, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ay = load i32, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8
  %i.bb = sub nsw i32 %i.ba, %i.ay
  store i32 %i.bb, ptr %i.az, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4
  %i.bg = sub nsw i32 %i.bf, %i.bd
  store i32 %i.bg, ptr %i.be, align 4
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bi = load i32, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8
  %i.bl = sub nsw i32 %i.bk, %i.bi
  store i32 %i.bl, ptr %i.bj, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.bn = load i32, ptr %i.bm, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4
  %i.bq = sub nsw i32 %i.bp, %i.bn
  store i32 %i.bq, ptr %i.bo, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bs = load i32, ptr %i.br, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 8
  %i.bv = sub nsw i32 %i.bu, %i.bs
  store i32 %i.bv, ptr %i.bt, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.bx = load i32, ptr %i.bw, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4
  %i.ca = sub nsw i32 %i.bz, %i.bx
  store i32 %i.ca, ptr %i.by, align 4
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cc = load i32, ptr %i.cb, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 8
  %i.cf = sub nsw i32 %i.ce, %i.cc
  store i32 %i.cf, ptr %i.cd, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.ch = load i32, ptr %i.cg, align 4
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4
  %i.ck = sub nsw i32 %i.cj, %i.ch
  store i32 %i.ck, ptr %i.ci, align 4
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cm = load i32, ptr %i.cl, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 8
  %i.cp = sub nsw i32 %i.co, %i.cm
  store i32 %i.cp, ptr %i.cn, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.cr = load i32, ptr %i.cq, align 4
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4
  %i.cu = sub nsw i32 %i.ct, %i.cr
  store i32 %i.cu, ptr %i.cs, align 4
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cw = load i32, ptr %i.cv, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 8
  %i.cz = sub nsw i32 %i.cy, %i.cw
  store i32 %i.cz, ptr %i.cx, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.db = load i32, ptr %i.da, align 4
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4
  %i.de = sub nsw i32 %i.dd, %i.db
  store i32 %i.de, ptr %i.dc, align 4
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.dg = load i32, ptr %i.df, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 8
  %i.dj = sub nsw i32 %i.di, %i.dg
  store i32 %i.dj, ptr %i.dh, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.dl = load i32, ptr %i.dk, align 4
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 4
  %i.do = sub nsw i32 %i.dn, %i.dl
  store i32 %i.do, ptr %i.dm, align 4
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dr = load double, ptr %i.dp, align 8         ; 2 uses
  %i.ds = load double, ptr %i.dq, align 8         ; 2 uses
  %i.dt = fcmp olt double %i.dr, %i.ds
  %i.du = select i1 %i.dt, double %i.ds, double %i.dr
  store double %i.du, ptr %i.dq, align 8
  br label %.rtcont

.rtcont:                                          ; preds = %.rtscalar, %.rtvec
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN6icu_785units6Factor8divideByEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = uitofp i64 %1 to double
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load double, ptr %i.b, align 8
  %i.d = fmul double %i.c, %i.a
  store double %i.d, ptr %i.b, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define dso_local void @_ZN6icu_785units6Factor5powerEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.b = load <4 x i32>, ptr %i.a, align 4
  %i.c = insertelement <4 x i32> poison, i32 %1, i64 0
  %i.d = shufflevector <4 x i32> %i.c, <4 x i32> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.e = mul nsw <4 x i32> %i.b, %i.d
  store <4 x i32> %i.e, ptr %i.a, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.g = load <4 x i32>, ptr %i.f, align 4
  %i.h = mul nsw <4 x i32> %i.g, %i.d
  store <4 x i32> %i.h, ptr %i.f, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.j = load <4 x i32>, ptr %i.i, align 4
  %i.k = mul nsw <4 x i32> %i.j, %i.d
  store <4 x i32> %i.k, ptr %i.i, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4
  %i.n = mul nsw i32 %i.m, %1
  store i32 %i.n, ptr %i.l, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8
  %i.q = mul nsw i32 %i.p, %1
  store i32 %i.q, ptr %i.o, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4
  %i.t = mul nsw i32 %i.s, %1
  store i32 %i.t, ptr %i.r, align 4
  %i.u = icmp slt i32 %1, 0
  %i.v = load double, ptr %0, align 8
  %i.w = tail call i32 @llvm.abs.i32(i32 %1, i1 true)
  %i.x = uitofp nneg i32 %i.w to double           ; 2 uses
  %i.y = tail call noundef double @pow(double noundef %i.v, double noundef %i.x) #15 ; 2 uses
  store double %i.y, ptr %0, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
end_hunk_0
