begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"struct.xgboost::detail::MantissaInteval" = type { i32, i32, i32, i32 }

$_ZN7xgboost6detail17PowerBaseComputer14Binary2DecimalENS0_18UnsignedFloatBase2E = comdat any

$_ZN7xgboost6detail10RyuPrinter16PrintBase10FloatENS0_19UnsignedFloatBase10EbPc = comdat any

$_ZN7xgboost6detail17PowerBaseComputer13ToDecimalBaseEbjNS0_15MantissaIntevalEPS2_PbS4_ = comdat any

$_ZN7xgboost6detail14RyuPowLogUtils18kFloatPow5InvSplitE = comdat any

$_ZN7xgboost6detail14RyuPowLogUtils15kFloatPow5SplitE = comdat any

@_ZN7xgboost6detail14RyuPowLogUtils18kFloatPow5InvSplitE = weak_odr local_unnamed_addr constant [55 x i64] [i64 576460752303423489, i64 461168601842738791, i64 368934881474191033, i64 295147905179352826, i64 472236648286964522, i64 377789318629571618, i64 302231454903657294, i64 483570327845851670, i64 386856262276681336, i64 309485009821345069, i64 495176015714152110, i64 396140812571321688, i64 316912650057057351, i64 507060240091291761, i64 405648192073033409, i64 324518553658426727, i64 519229685853482763, i64 415383748682786211, i64 332306998946228969, i64 531691198313966350, i64 425352958651173080, i64 340282366920938464, i64 544451787073501542, i64 435561429658801234, i64 348449143727040987, i64 557518629963265579, i64 446014903970612463, i64 356811923176489971, i64 570899077082383953, i64 456719261665907162, i64 365375409332725730, i64 292300327466180584, i64 467680523945888934, i64 374144419156711148, i64 299315535325368918, i64 478904856520590269, i64 383123885216472215, i64 306499108173177772, i64 490398573077084435, i64 392318858461667548, i64 313855086769334039, i64 502168138830934462, i64 401734511064747569, i64 321387608851798056, i64 514220174162876889, i64 411376139330301511, i64 329100911464241209, i64 526561458342785934, i64 421249166674228747, i64 336999333339382998, i64 539198933343012796, i64 431359146674410237, i64 345087317339528190, i64 552139707743245103, i64 441711766194596083], comdat, align 16
@_ZN7xgboost6detail14RyuPowLogUtils15kFloatPow5SplitE = weak_odr local_unnamed_addr constant [47 x i64] [i64 1152921504606846976, i64 1441151880758558720, i64 1801439850948198400, i64 2251799813685248000, i64 1407374883553280000, i64 1759218604441600000, i64 2199023255552000000, i64 1374389534720000000, i64 1717986918400000000, i64 2147483648000000000, i64 1342177280000000000, i64 1677721600000000000, i64 2097152000000000000, i64 1310720000000000000, i64 1638400000000000000, i64 2048000000000000000, i64 1280000000000000000, i64 1600000000000000000, i64 2000000000000000000, i64 1250000000000000000, i64 1562500000000000000, i64 1953125000000000000, i64 1220703125000000000, i64 1525878906250000000, i64 1907348632812500000, i64 1192092895507812500, i64 1490116119384765625, i64 1862645149230957031, i64 1164153218269348144, i64 1455191522836685180, i64 1818989403545856475, i64 2273736754432320594, i64 1421085471520200371, i64 1776356839400250464, i64 2220446049250313080, i64 1387778780781445675, i64 1734723475976807094, i64 2168404344971008868, i64 1355252715606880542, i64 1694065894508600678, i64 2117582368135750847, i64 1323488980084844279, i64 1654361225106055349, i64 2067951531382569187, i64 1292469707114105741, i64 1615587133892632177, i64 2019483917365790221], comdat, align 16
@_ZN7xgboost6detailL8kItoaLutE = internal unnamed_addr constant [200 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899", align 16
@.str = private unnamed_addr constant [4 x i8] c"NaN\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"0E0\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @_ZN7xgboost6detail16ToCharsFloatImplEfPc(float noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = bitcast float %0 to i32                  ; 5 uses
  %i.b = and i32 %i.a, 8388607                    ; 3 uses
  %i.c = lshr i32 %i.a, 23
  %i.d = and i32 %i.c, 255                        ; 4 uses
  %i.e = icmp eq i32 %i.d, 255
  %i.f = or i32 %i.d, %i.b
  %i.g = icmp eq i32 %i.f, 0
  %or.cond = or i1 %i.e, %i.g
  br i1 %or.cond, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.h = icmp slt i32 %i.a, 0                     ; 3 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %1, ptr noundef nonnull align 1 dereferenceable(3) @.str, i64 3, i1 false)
  br label %_ZN7xgboost6detail10RyuPrinter17PrintSpecialFloatEbNS0_18UnsignedFloatBase2EPc.exit

bb.d:                                             ; preds = %bb.b
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i8 45, ptr %1, align 1, !tbaa !8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = icmp eq i32 %i.d, 0
  %.lobit = lshr i32 %i.a, 31
  %i.j = zext nneg i32 %.lobit to i64
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.j ; 2 uses
  br i1 %i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i64 8751735898823355977, ptr %i.k, align 1
  %i.l = select i1 %i.h, i32 9, i32 8
  br label %_ZN7xgboost6detail10RyuPrinter17PrintSpecialFloatEbNS0_18UnsignedFloatBase2EPc.exit

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.k, ptr noundef nonnull align 1 dereferenceable(3) @.str.2, i64 3, i1 false)
  %i.m = select i1 %i.h, i32 4, i32 3
  br label %_ZN7xgboost6detail10RyuPrinter17PrintSpecialFloatEbNS0_18UnsignedFloatBase2EPc.exit

bb.i:                                             ; preds = %bb.a
  %.sroa.6.0.insert.ext = zext nneg i32 %i.d to i64
  %.sroa.6.0.insert.shift = shl nuw nsw i64 %.sroa.6.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext nneg i32 %i.b to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.shift, %.sroa.0.0.insert.ext
  %i.n = tail call i64 @_ZN7xgboost6detail17PowerBaseComputer14Binary2DecimalENS0_18UnsignedFloatBase2E(i64 %.sroa.0.0.insert.insert) #6
  %i.o = icmp slt i32 %i.a, 0
  %i.p = tail call noundef i32 @_ZN7xgboost6detail10RyuPrinter16PrintBase10FloatENS0_19UnsignedFloatBase10EbPc(i64 %i.n, i1 noundef zeroext %i.o, ptr noundef %1) #6
  br label %_ZN7xgboost6detail10RyuPrinter17PrintSpecialFloatEbNS0_18UnsignedFloatBase2EPc.exit

_ZN7xgboost6detail10RyuPrinter17PrintSpecialFloatEbNS0_18UnsignedFloatBase2EPc.exit: ; preds = %bb.h, %bb.g, %bb.c, %bb.i
  %.0 = phi i32 [ %i.p, %bb.i ], [ 3, %bb.c ], [ %i.l, %bb.g ], [ %i.m, %bb.h ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i64 @_ZN7xgboost6detail17PowerBaseComputer14Binary2DecimalENS0_18UnsignedFloatBase2E(i64 %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"struct.xgboost::detail::MantissaInteval", align 8 ; 5 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %.sroa.016.0.extract.trunc = trunc i64 %0 to i32 ; 3 uses
  %.sroa.4.0.extract.shift = lshr i64 %0, 32      ; 2 uses
  %i.c = icmp eq i64 %.sroa.4.0.extract.shift, 0  ; 2 uses
  %i.d = add nuw nsw i64 %.sroa.4.0.extract.shift, 4294967144
  %.sroa.012.0.insert.ext = and i64 %i.d, 4294967295
  %i.e = or i32 %.sroa.016.0.extract.trunc, 8388608
  %.0 = select i1 %i.c, i32 %.sroa.016.0.extract.trunc, i32 %i.e ; 2 uses
  %.sroa.012.0 = select i1 %i.c, i64 4294967145, i64 %.sroa.012.0.insert.ext
  %i.f = and i32 %.0, 1
  %i.g = icmp eq i32 %i.f, 0                      ; 2 uses
  %i.h = shl i32 %.0, 2                           ; 3 uses
  %.sroa.6.8.insert.ext = zext i32 %i.h to i64
  %i.i = or disjoint i32 %i.h, 2
  %.sroa.6.12.insert.ext = zext i32 %i.i to i64
  %.sroa.6.12.insert.shift = shl nuw i64 %.sroa.6.12.insert.ext, 32
  %.sroa.6.12.insert.insert = or disjoint i64 %.sroa.6.12.insert.shift, %.sroa.6.8.insert.ext
  %i.j = icmp ne i32 %.sroa.016.0.extract.trunc, 0
  %i.k = icmp ult i64 %0, 8589934592
  %i.l = or i1 %i.k, %i.j
  %i.m = zext i1 %i.l to i32                      ; 2 uses
  %i.n = xor i32 %i.m, -1
  %i.o = add i32 %i.h, %i.n
  %.sroa.012.4.insert.ext = zext i32 %i.o to i64
  %.sroa.012.4.insert.shift = shl nuw i64 %.sroa.012.4.insert.ext, 32
  %.sroa.012.4.insert.insert = or disjoint i64 %.sroa.012.4.insert.shift, %.sroa.012.0
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i8 0, ptr %i.a, align 1, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i8 0, ptr %i.b, align 1, !tbaa !9
  %i.p = call noundef zeroext i8 @_ZN7xgboost6detail17PowerBaseComputer13ToDecimalBaseEbjNS0_15MantissaIntevalEPS2_PbS4_(i1 noundef zeroext %i.g, i32 noundef %i.m, i64 %.sroa.012.4.insert.insert, i64 %.sroa.6.12.insert.insert, ptr noundef nonnull %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #6 ; 3 uses
  %i.q = load i8, ptr %i.a, align 1, !tbaa !9, !range !11, !noundef !12 ; 2 uses
  %i.r = load i8, ptr %i.b, align 1, !tbaa !9, !range !11, !noundef !12 ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8 ; 2 uses
  %.sroa.2.0.extract.shift.i = lshr i64 %.sroa.0.0.copyload, 32
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32 ; 4 uses
  %.sroa.14.8.extract.trunc.i = trunc i64 %.sroa.2.0.copyload to i32 ; 4 uses
  %.sroa.29.8.extract.shift.i = lshr i64 %.sroa.2.0.copyload, 32
  %.sroa.29.8.extract.trunc.i = trunc nuw i64 %.sroa.29.8.extract.shift.i to i32
  %2 = or i8 %i.r, %i.q
  %or.cond.i.not = icmp eq i8 %2, 0
  %3 = udiv i32 %.sroa.29.8.extract.trunc.i, 10   ; 3 uses
  %4 = udiv i32 %.sroa.2.0.extract.trunc.i, 10    ; 3 uses
  %i.s = icmp samesign ugt i32 %3, %4             ; 2 uses
  br i1 %or.cond.i.not, label %.preheader68.i, label %.preheader67.i

.preheader68.i:                                   ; preds = %bb.a
  br i1 %i.s, label %.lr.ph.i, label %bb.b

.preheader67.i:                                   ; preds = %bb.a
  %i.t = trunc nuw i8 %i.r to i1                  ; 2 uses
  %i.u = trunc nuw i8 %i.q to i1                  ; 2 uses
  br i1 %i.s, label %.lr.ph80.i, label %._crit_edge81.i

.lr.ph80.i:                                       ; preds = %.preheader67.i, %.lr.ph80.i
  %i.v = phi i32 [ %i.ah, %.lr.ph80.i ], [ %4, %.preheader67.i ] ; 3 uses
  %i.w = phi i32 [ %i.ag, %.lr.ph80.i ], [ %3, %.preheader67.i ]
  %.05079.i = phi i32 [ %i.af, %.lr.ph80.i ], [ 0, %.preheader67.i ]
  %.sroa.14.078.i = phi i32 [ %i.ae, %.lr.ph80.i ], [ %.sroa.14.8.extract.trunc.i, %.preheader67.i ] ; 2 uses
  %.05177.i = phi i8 [ %i.ad, %.lr.ph80.i ], [ %i.p, %.preheader67.i ]
  %.056.in76.i = phi i1 [ %i.ab, %.lr.ph80.i ], [ %i.t, %.preheader67.i ]
  %.059.in75.i = phi i1 [ %i.z, %.lr.ph80.i ], [ %i.u, %.preheader67.i ]
  %.sroa.2.074.i = phi i32 [ %i.v, %.lr.ph80.i ], [ %.sroa.2.0.extract.trunc.i, %.preheader67.i ]
  %i.x = urem i32 %.sroa.2.074.i, 10
  %i.y = icmp eq i32 %i.x, 0
  %i.z = and i1 %.059.in75.i, %i.y                ; 2 uses
  %i.aa = icmp eq i8 %.05177.i, 0
  %i.ab = and i1 %.056.in76.i, %i.aa              ; 2 uses
  %i.ac = urem i32 %.sroa.14.078.i, 10
  %i.ad = trunc nuw nsw i32 %i.ac to i8           ; 2 uses
  %i.ae = udiv i32 %.sroa.14.078.i, 10            ; 2 uses
  %i.af = add nuw nsw i32 %.05079.i, 1            ; 2 uses
  %i.ag = udiv i32 %i.w, 10                       ; 2 uses
  %i.ah = udiv i32 %i.v, 10                       ; 2 uses
  %i.ai = icmp samesign ugt i32 %i.ag, %i.ah
  br i1 %i.ai, label %.lr.ph80.i, label %._crit_edge81.i, !llvm.loop !13

._crit_edge81.i:                                  ; preds = %.lr.ph80.i, %.preheader67.i
  %.sroa.2.0.lcssa.i = phi i32 [ %.sroa.2.0.extract.trunc.i, %.preheader67.i ], [ %i.v, %.lr.ph80.i ] ; 3 uses
  %.059.in.lcssa.i = phi i1 [ %i.u, %.preheader67.i ], [ %i.z, %.lr.ph80.i ] ; 2 uses
  %.056.in.lcssa.i = phi i1 [ %i.t, %.preheader67.i ], [ %i.ab, %.lr.ph80.i ] ; 2 uses
  %.051.lcssa.i = phi i8 [ %i.p, %.preheader67.i ], [ %i.ad, %.lr.ph80.i ] ; 2 uses
  %.sroa.14.0.lcssa.i = phi i32 [ %.sroa.14.8.extract.trunc.i, %.preheader67.i ], [ %i.ae, %.lr.ph80.i ] ; 2 uses
  %.050.lcssa.i = phi i32 [ 0, %.preheader67.i ], [ %i.af, %.lr.ph80.i ] ; 2 uses
  %i.aj = urem i32 %.sroa.2.0.lcssa.i, 10
  %i.ak = icmp eq i32 %i.aj, 0
  %or.cond100.i = select i1 %.059.in.lcssa.i, i1 %i.ak, i1 false
  br i1 %or.cond100.i, label %.lr.ph93.i, label %.loopexit.i

.lr.ph93.i:                                       ; preds = %._crit_edge81.i, %.lr.ph93.i
  %.192.i = phi i32 [ %i.ar, %.lr.ph93.i ], [ %.050.lcssa.i, %._crit_edge81.i ]
  %.sroa.14.191.i = phi i32 [ %i.ap, %.lr.ph93.i ], [ %.sroa.14.0.lcssa.i, %._crit_edge81.i ] ; 2 uses
  %.15290.i = phi i8 [ %i.ao, %.lr.ph93.i ], [ %.051.lcssa.i, %._crit_edge81.i ]
  %.15789.i = phi i1 [ %i.am, %.lr.ph93.i ], [ %.056.in.lcssa.i, %._crit_edge81.i ]
  %.sroa.2.188.i = phi i32 [ %i.aq, %.lr.ph93.i ], [ %.sroa.2.0.lcssa.i, %._crit_edge81.i ]
  %i.al = icmp eq i8 %.15290.i, 0
  %i.am = select i1 %i.al, i1 %.15789.i, i1 false ; 2 uses
  %i.an = urem i32 %.sroa.14.191.i, 10
  %i.ao = trunc nuw nsw i32 %i.an to i8           ; 2 uses
  %i.ap = udiv i32 %.sroa.14.191.i, 10            ; 2 uses
  %i.aq = udiv i32 %.sroa.2.188.i, 10             ; 3 uses
  %i.ar = add nuw nsw i32 %.192.i, 1              ; 2 uses
  %i.as = urem i32 %i.aq, 10
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %.lr.ph93.i, label %.loopexit.i, !llvm.loop !15

.loopexit.i:                                      ; preds = %.lr.ph93.i, %._crit_edge81.i
  %.sroa.2.2.i = phi i32 [ %.sroa.2.0.lcssa.i, %._crit_edge81.i ], [ %i.aq, %.lr.ph93.i ]
  %.258.in.i = phi i1 [ %.056.in.lcssa.i, %._crit_edge81.i ], [ %i.am, %.lr.ph93.i ]
  %.253.i = phi i8 [ %.051.lcssa.i, %._crit_edge81.i ], [ %i.ao, %.lr.ph93.i ] ; 2 uses
  %.sroa.14.2.i = phi i32 [ %.sroa.14.0.lcssa.i, %._crit_edge81.i ], [ %i.ap, %.lr.ph93.i ] ; 3 uses
  %.2.i = phi i32 [ %.050.lcssa.i, %._crit_edge81.i ], [ %i.ar, %.lr.ph93.i ]
  %i.au = icmp ne i8 %.253.i, 5
  %not..i = xor i1 %.258.in.i, true
  %or.cond4.i = select i1 %not..i, i1 true, i1 %i.au
  %i.av = trunc i32 %.sroa.14.2.i to i1
  %or.cond65.i = select i1 %or.cond4.i, i1 true, i1 %i.av
  %i.aw = icmp ne i32 %.sroa.14.2.i, %.sroa.2.2.i
  %or.cond6.i = and i1 %i.g, %.059.in.lcssa.i
  %or.cond66.i = or i1 %or.cond6.i, %i.aw
  %i.ax = icmp ugt i8 %.253.i, 4
  %i.ay = select i1 %or.cond65.i, i1 %i.ax, i1 false
  %not.or.cond66.i = xor i1 %or.cond66.i, true
  %narrow.i = select i1 %not.or.cond66.i, i1 true, i1 %i.ay
  br label %_ZN7xgboost6detail17PowerBaseComputer22ShortestRepresentationEbbhbNS0_15MantissaIntevalE.exit

.lr.ph.i:                                         ; preds = %.preheader68.i, %.lr.ph.i
  %5 = phi i32 [ %7, %.lr.ph.i ], [ %4, %.preheader68.i ] ; 2 uses
  %i.az = phi i32 [ %6, %.lr.ph.i ], [ %3, %.preheader68.i ]
  %.370.i = phi i32 [ %i.bc, %.lr.ph.i ], [ 0, %.preheader68.i ]
  %.sroa.14.369.i = phi i32 [ %i.ba, %.lr.ph.i ], [ %.sroa.14.8.extract.trunc.i, %.preheader68.i ] ; 2 uses
  %i.ba = udiv i32 %.sroa.14.369.i, 10            ; 2 uses
  %i.bb = urem i32 %.sroa.14.369.i, 10
  %i.bc = add nuw nsw i32 %.370.i, 1              ; 2 uses
  %6 = udiv i32 %i.az, 10                         ; 2 uses
  %7 = udiv i32 %5, 10                            ; 2 uses
  %i.bd = icmp samesign ugt i32 %6, %7
  br i1 %i.bd, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !16

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.be = trunc nuw nsw i32 %i.bb to i8
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.i, %.preheader68.i
  %.sroa.2.3.lcssa.i = phi i32 [ %5, %._crit_edge.i ], [ %.sroa.2.0.extract.trunc.i, %.preheader68.i ]
  %.455.lcssa.i = phi i8 [ %i.be, %._crit_edge.i ], [ %i.p, %.preheader68.i ]
  %.sroa.14.3.lcssa.i = phi i32 [ %i.ba, %._crit_edge.i ], [ %.sroa.14.8.extract.trunc.i, %.preheader68.i ] ; 2 uses
  %.3.lcssa.i = phi i32 [ %i.bc, %._crit_edge.i ], [ 0, %.preheader68.i ]
  %i.bf = icmp eq i32 %.sroa.14.3.lcssa.i, %.sroa.2.3.lcssa.i
  %i.bg = icmp ugt i8 %.455.lcssa.i, 4
  %i.bh = select i1 %i.bf, i1 true, i1 %i.bg
  br label %_ZN7xgboost6detail17PowerBaseComputer22ShortestRepresentationEbbhbNS0_15MantissaIntevalE.exit

_ZN7xgboost6detail17PowerBaseComputer22ShortestRepresentationEbbhbNS0_15MantissaIntevalE.exit: ; preds = %.loopexit.i, %bb.b
  %.sink131.i = phi i1 [ %i.bh, %bb.b ], [ %narrow.i, %.loopexit.i ]
  %.sroa.14.3.lcssa.sink.i = phi i32 [ %.sroa.14.3.lcssa.i, %bb.b ], [ %.sroa.14.2.i, %.loopexit.i ]
  %.4.i = phi i32 [ %.3.lcssa.i, %bb.b ], [ %.2.i, %.loopexit.i ]
  %i.bi = zext i1 %.sink131.i to i32
  %i.bj = add i32 %.sroa.14.3.lcssa.sink.i, %i.bi
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.0.0.copyload to i32
  %i.bk = add nsw i32 %.4.i, %.sroa.0.0.extract.trunc.i
  %.sroa.249.0.insert.ext.i = zext i32 %i.bk to i64
  %.sroa.249.0.insert.shift.i = shl nuw i64 %.sroa.249.0.insert.ext.i, 32
  %.sroa.048.0.insert.ext.i = zext i32 %i.bj to i64
  %.sroa.048.0.insert.insert.i = or disjoint i64 %.sroa.249.0.insert.shift.i, %.sroa.048.0.insert.ext.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  ret i64 %.sroa.048.0.insert.insert.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZN7xgboost6detail10RyuPrinter16PrintBase10FloatENS0_19UnsignedFloatBase10EbPc(i64 %0, i1 noundef zeroext %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i64 %0 to i32  ; 11 uses
  %.sroa.2.0.extract.shift = lshr i64 %0, 32
  %.sroa.2.0.extract.trunc = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  br i1 %1, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 45, ptr %2, align 1, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.063 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]      ; 3 uses
  %.not.i = icmp ult i32 %.sroa.0.0.extract.trunc, 100000000
  br i1 %.not.i, label %tailrecurse.i17.preheader.i, label %_ZN7xgboost6detail10RyuPrinter12OutputLengthEj.exit

tailrecurse.i17.preheader.i:                      ; preds = %bb.c
  %.not10.i = icmp samesign ult i32 %.sroa.0.0.extract.trunc, 10000000
  br i1 %.not10.i, label %tailrecurse.i21.preheader.i, label %_ZN7xgboost6detail10RyuPrinter12OutputLengthEj.exit

tailrecurse.i21.preheader.i:                      ; preds = %tailrecurse.i17.preheader.i
  %.not11.i = icmp samesign ult i32 %.sroa.0.0.extract.trunc, 1000000
  br i1 %.not11.i, label %tailrecurse.i25.preheader.i, label %_ZN7xgboost6detail10RyuPrinter12OutputLengthEj.exit

tailrecurse.i25.preheader.i:                      ; preds = %tailrecurse.i21.preheader.i
  %.not12.i = icmp samesign ult i32 %.sroa.0.0.extract.trunc, 100000
  br i1 %.not12.i, label %tailrecurse.i29.preheader.i, label %_ZN7xgboost6detail10RyuPrinter12OutputLengthEj.exit

tailrecurse.i29.preheader.i:                      ; preds = %tailrecurse.i25.preheader.i
  %.not13.i = icmp samesign ult i32 %.sroa.0.0.extract.trunc, 10000
  br i1 %.not13.i, label %tailrecurse.i33.preheader.i, label %_ZN7xgboost6detail10RyuPrinter12OutputLengthEj.exit

tailrecurse.i33.preheader.i:                      ; preds = %tailrecurse.i29.preheader.i
  %.not14.i = icmp samesign ult i32 %.sroa.0.0.extract.trunc, 1000
  br i1 %.not14.i, label %tailrecurse.i37.preheader.i, label %_ZN7xgboost6detail10RyuPrinter12OutputLengthEj.exit

tailrecurse.i37.preheader.i:                      ; preds = %tailrecurse.i33.preheader.i
  %.not15.i = icmp samesign ult i32 %.sroa.0.0.extract.trunc, 100
  br i1 %.not15.i, label %bb.d, label %_ZN7xgboost6detail10RyuPrinter12OutputLengthEj.exit

bb.d:                                             ; preds = %tailrecurse.i37.preheader.i
  %.not16.i = icmp samesign ult i32 %.sroa.0.0.extract.trunc, 10
  %..i = select i1 %.not16.i, i32 1, i32 2
  br label %_ZN7xgboost6detail10RyuPrinter12OutputLengthEj.exit

_ZN7xgboost6detail10RyuPrinter12OutputLengthEj.exit: ; preds = %bb.c, %tailrecurse.i17.preheader.i, %tailrecurse.i21.preheader.i, %tailrecurse.i25.preheader.i, %tailrecurse.i29.preheader.i, %tailrecurse.i33.preheader.i, %tailrecurse.i37.preheader.i, %bb.d
  %.0.i = phi i32 [ 3, %tailrecurse.i37.preheader.i ], [ 9, %bb.c ], [ 8, %tailrecurse.i17.preheader.i ], [ 7, %tailrecurse.i21.preheader.i ], [ 6, %tailrecurse.i25.preheader.i ], [ 5, %tailrecurse.i29.preheader.i ], [ 4, %tailrecurse.i33.preheader.i ], [ %..i, %bb.d ] ; 5 uses
  %i.a = zext nneg i32 %.063 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 %i.a ; 3 uses
  %i.c = zext nneg i32 %.0.i to i64
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.c ; 2 uses
  %.not86 = icmp ult i32 %.sroa.0.0.extract.trunc, 10000
  br i1 %.not86, label %._crit_edge, label %tailrecurse.i71.preheader

tailrecurse.i71.preheader:                        ; preds = %_ZN7xgboost6detail10RyuPrinter12OutputLengthEj.exit, %tailrecurse.i71.preheader
  %.06488 = phi i32 [ %i.f, %tailrecurse.i71.preheader ], [ %.sroa.0.0.extract.trunc, %_ZN7xgboost6detail10RyuPrinter12OutputLengthEj.exit ] ; 3 uses
  %.06687 = phi i32 [ %i.v, %tailrecurse.i71.preheader ], [ 0, %_ZN7xgboost6detail10RyuPrinter12OutputLengthEj.exit ] ; 2 uses
  %i.e = urem i32 %.06488, 10000                  ; 2 uses
  %i.f = udiv i32 %.06488, 10000                  ; 2 uses
  %.lhs.trunc82 = trunc nuw nsw i32 %i.e to i16
  %i.g = urem i16 %.lhs.trunc82, 100
  %i.h = shl nuw nsw i16 %i.g, 1
  %.lhs.trunc84 = trunc nuw nsw i32 %i.e to i16
  %i.i = udiv i16 %.lhs.trunc84, 100
  %i.j = shl nuw nsw i16 %i.i, 1
  %i.k = zext i32 %.06687 to i64
  %i.l = sub nsw i64 0, %i.k
  %i.m = getelementptr inbounds i8, ptr %i.d, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -1
  %i.o = zext nneg i16 %i.h to i64
  %i.p = getelementptr inbounds nuw i8, ptr @_ZN7xgboost6detailL8kItoaLutE, i64 %i.o
  %i.q = load i16, ptr %i.p, align 2
  store i16 %i.q, ptr %i.n, align 1
  %i.r = getelementptr inbounds i8, ptr %i.m, i64 -3
  %i.s = zext nneg i16 %i.j to i64
  %i.t = getelementptr inbounds nuw i8, ptr @_ZN7xgboost6detailL8kItoaLutE, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2
  store i16 %i.u, ptr %i.r, align 1
  %i.v = add i32 %.06687, 4                       ; 2 uses
  %.not = icmp ult i32 %.06488, 100000000
  br i1 %.not, label %._crit_edge, label %tailrecurse.i71.preheader, !llvm.loop !17

._crit_edge:                                      ; preds = %tailrecurse.i71.preheader, %_ZN7xgboost6detail10RyuPrinter12OutputLengthEj.exit
  %.066.lcssa = phi i32 [ 0, %_ZN7xgboost6detail10RyuPrinter12OutputLengthEj.exit ], [ %i.v, %tailrecurse.i71.preheader ] ; 3 uses
  %.064.lcssa = phi i32 [ %.sroa.0.0.extract.trunc, %_ZN7xgboost6detail10RyuPrinter12OutputLengthEj.exit ], [ %i.f, %tailrecurse.i71.preheader ] ; 4 uses
  %i.w = icmp samesign ugt i32 %.064.lcssa, 99
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %.lhs.trunc = trunc nuw i32 %.064.lcssa to i16
  %i.x = urem i16 %.lhs.trunc, 100
  %i.y = shl nuw nsw i16 %i.x, 1
  %.lhs.trunc80 = trunc nuw i32 %.064.lcssa to i16
  %i.z = udiv i16 %.lhs.trunc80, 100
  %.zext81 = zext nneg i16 %i.z to i32
  %i.aa = zext i32 %.066.lcssa to i64
  %i.ab = sub nsw i64 0, %i.aa
  %i.ac = getelementptr inbounds i8, ptr %i.d, i64 %i.ab
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -1
  %i.ae = zext nneg i16 %i.y to i64
  %i.af = getelementptr inbounds nuw i8, ptr @_ZN7xgboost6detailL8kItoaLutE, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 2
  store i16 %i.ag, ptr %i.ad, align 1
  %i.ah = or disjoint i32 %.066.lcssa, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %.167 = phi i32 [ %i.ah, %bb.e ], [ %.066.lcssa, %._crit_edge ]
  %.165 = phi i32 [ %.zext81, %bb.e ], [ %.064.lcssa, %._crit_edge ] ; 3 uses
  %i.ai = icmp samesign ugt i32 %.165, 9
  br i1 %i.ai, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aj = shl nuw nsw i32 %.165, 1
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr @_ZN7xgboost6detailL8kItoaLutE, i64 %i.ak ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !8
  %i.ao = add nuw nsw i32 %.0.i, %.063
  %i.ap = sub i32 %i.ao, %.167
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 %i.aq
  store i8 %i.an, ptr %i.ar, align 1, !tbaa !8
  %i.as = load i8, ptr %i.al, align 2, !tbaa !8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.at = trunc nuw nsw i32 %.165 to i8
  %i.au = or disjoint i8 %i.at, 48
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %storemerge = phi i8 [ %i.au, %bb.h ], [ %i.as, %bb.g ]
  store i8 %storemerge, ptr %i.b, align 1, !tbaa !8
  %i.av = icmp samesign ugt i32 %.0.i, 1
  br i1 %i.av, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 46, ptr %i.aw, align 1, !tbaa !8
  %i.ax = add nuw nsw i32 %.0.i, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.pn = phi i32 [ %i.ax, %bb.j ], [ 1, %bb.i ]
  %.1 = add nuw nsw i32 %.pn, %.063               ; 3 uses
  %i.ay = add nuw nsw i32 %.1, 1                  ; 2 uses
  %i.az = zext nneg i32 %.1 to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 %i.az
  store i8 69, ptr %i.ba, align 1, !tbaa !8
  %i.bb = add nsw i32 %.0.i, %.sroa.2.0.extract.trunc ; 3 uses
  %i.bc = add nsw i32 %i.bb, -1
  %i.bd = icmp slt i32 %i.bb, 1
  br i1 %i.bd, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.be = add nuw nsw i32 %.1, 2
  %i.bf = zext nneg i32 %i.ay to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 %i.bf
  store i8 45, ptr %i.bg, align 1, !tbaa !8
  %i.bh = sub nsw i32 1, %i.bb
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.2 = phi i32 [ %i.be, %bb.l ], [ %i.ay, %bb.k ] ; 4 uses
  %.0 = phi i32 [ %i.bh, %bb.l ], [ %i.bc, %bb.k ] ; 3 uses
  %i.bi = icmp samesign ugt i32 %.0, 9
  br i1 %i.bi, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bj = zext nneg i32 %.2 to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 %i.bj
  %i.bl = shl nuw nsw i32 %.0, 1
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr @_ZN7xgboost6detailL8kItoaLutE, i64 %i.bm
  %i.bo = load i16, ptr %i.bn, align 2
  store i16 %i.bo, ptr %i.bk, align 1
  %i.bp = add nuw nsw i32 %.2, 2
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bq = trunc nuw nsw i32 %.0 to i8
  %i.br = or disjoint i8 %i.bq, 48
  %i.bs = add nuw nsw i32 %.2, 1
  %i.bt = zext nneg i32 %.2 to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 %i.bt
  store i8 %i.br, ptr %i.bu, align 1, !tbaa !8
  br label %bb.p
end_hunk_0
