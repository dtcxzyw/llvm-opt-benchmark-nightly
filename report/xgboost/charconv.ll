Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/charconv?download=true
inline.NumInlined: 70
inline.NumDeleted: 27
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
  store i8 45, ptr %1, align 1, !tbaa !9
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
  %1 = alloca %"struct.xgboost::detail::MantissaInteval", align 16 ; 4 uses
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
  store i8 0, ptr %i.a, align 1, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i8 0, ptr %i.b, align 1, !tbaa !11
  %i.p = call noundef zeroext i8 @_ZN7xgboost6detail17PowerBaseComputer13ToDecimalBaseEbjNS0_15MantissaIntevalEPS2_PbS4_(i1 noundef zeroext %i.g, i32 noundef %i.m, i64 %.sroa.012.4.insert.insert, i64 %.sroa.6.12.insert.insert, ptr noundef nonnull %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #6 ; 3 uses
  %i.q = load i8, ptr %i.a, align 1, !tbaa !11, !range !18, !noundef !19 ; 2 uses
  %i.r = load i8, ptr %i.b, align 1, !tbaa !11, !range !18, !noundef !19 ; 2 uses
  %i.s = or i8 %i.r, %i.q
  %or.cond.i.not = icmp eq i8 %i.s, 0
  %i.t = load <2 x i64>, ptr %1, align 16         ; 4 uses
  %i.u = bitcast <2 x i64> %i.t to <4 x i32>
  %.sroa.14.8.extract.trunc.i = extractelement <4 x i32> %i.u, i64 2 ; 4 uses
  %i.v = lshr <2 x i64> %i.t, splat (i64 32)
  %i.w = trunc nuw <2 x i64> %i.v to <2 x i32>
  %i.x = bitcast <2 x i64> %i.t to <4 x i32>
  %.sroa.2.0.extract.trunc.i = extractelement <4 x i32> %i.x, i64 1 ; 3 uses
  %i.y = udiv <2 x i32> %i.w, splat (i32 10)      ; 3 uses
  %i.z = extractelement <2 x i32> %i.y, i64 0     ; 2 uses
  %i.aa = extractelement <2 x i32> %i.y, i64 1    ; 2 uses
  %i.ab = icmp samesign ugt i32 %i.aa, %i.z       ; 2 uses
  br i1 %or.cond.i.not, label %.preheader68.i, label %.preheader67.i

.preheader68.i:                                   ; preds = %bb.a
  br i1 %i.ab, label %.lr.ph.i, label %bb.b

.preheader67.i:                                   ; preds = %bb.a
  %i.ac = trunc nuw i8 %i.r to i1                 ; 2 uses
  %i.ad = trunc nuw i8 %i.q to i1                 ; 2 uses
  br i1 %i.ab, label %.lr.ph80.i, label %._crit_edge81.i

.lr.ph80.i:                                       ; preds = %.preheader67.i, %.lr.ph80.i
  %i.ae = phi i32 [ %i.aq, %.lr.ph80.i ], [ %i.z, %.preheader67.i ] ; 3 uses
  %i.af = phi i32 [ %i.ap, %.lr.ph80.i ], [ %i.aa, %.preheader67.i ]
  %.05079.i = phi i32 [ %i.ao, %.lr.ph80.i ], [ 0, %.preheader67.i ]
  %.sroa.14.078.i = phi i32 [ %i.an, %.lr.ph80.i ], [ %.sroa.14.8.extract.trunc.i, %.preheader67.i ] ; 2 uses
  %.05177.i = phi i8 [ %i.am, %.lr.ph80.i ], [ %i.p, %.preheader67.i ]
  %.056.in76.i = phi i1 [ %i.ak, %.lr.ph80.i ], [ %i.ac, %.preheader67.i ]
  %.059.in75.i = phi i1 [ %i.ai, %.lr.ph80.i ], [ %i.ad, %.preheader67.i ]
  %.sroa.2.074.i = phi i32 [ %i.ae, %.lr.ph80.i ], [ %.sroa.2.0.extract.trunc.i, %.preheader67.i ]
  %i.ag = urem i32 %.sroa.2.074.i, 10
  %i.ah = icmp eq i32 %i.ag, 0
  %i.ai = and i1 %.059.in75.i, %i.ah              ; 2 uses
  %i.aj = icmp eq i8 %.05177.i, 0
  %i.ak = and i1 %.056.in76.i, %i.aj              ; 2 uses
  %i.al = urem i32 %.sroa.14.078.i, 10
  %i.am = trunc nuw nsw i32 %i.al to i8           ; 2 uses
  %i.an = udiv i32 %.sroa.14.078.i, 10            ; 2 uses
  %i.ao = add nuw nsw i32 %.05079.i, 1            ; 2 uses
  %i.ap = udiv i32 %i.af, 10                      ; 2 uses
  %i.aq = udiv i32 %i.ae, 10                      ; 2 uses
  %i.ar = icmp samesign ugt i32 %i.ap, %i.aq
  br i1 %i.ar, label %.lr.ph80.i, label %._crit_edge81.i, !llvm.loop !15

._crit_edge81.i:                                  ; preds = %.lr.ph80.i, %.preheader67.i
  %.sroa.2.0.lcssa.i = phi i32 [ %.sroa.2.0.extract.trunc.i, %.preheader67.i ], [ %i.ae, %.lr.ph80.i ] ; 3 uses
  %.059.in.lcssa.i = phi i1 [ %i.ad, %.preheader67.i ], [ %i.ai, %.lr.ph80.i ] ; 2 uses
  %.056.in.lcssa.i = phi i1 [ %i.ac, %.preheader67.i ], [ %i.ak, %.lr.ph80.i ] ; 2 uses
  %.051.lcssa.i = phi i8 [ %i.p, %.preheader67.i ], [ %i.am, %.lr.ph80.i ] ; 2 uses
  %.sroa.14.0.lcssa.i = phi i32 [ %.sroa.14.8.extract.trunc.i, %.preheader67.i ], [ %i.an, %.lr.ph80.i ] ; 2 uses
  %.050.lcssa.i = phi i32 [ 0, %.preheader67.i ], [ %i.ao, %.lr.ph80.i ] ; 2 uses
  %i.as = urem i32 %.sroa.2.0.lcssa.i, 10
  %i.at = icmp eq i32 %i.as, 0
  %or.cond100.i = select i1 %.059.in.lcssa.i, i1 %i.at, i1 false
  br i1 %or.cond100.i, label %.lr.ph93.i, label %.loopexit.i

.lr.ph93.i:                                       ; preds = %._crit_edge81.i, %.lr.ph93.i
  %.192.i = phi i32 [ %i.ba, %.lr.ph93.i ], [ %.050.lcssa.i, %._crit_edge81.i ]
  %.sroa.14.191.i = phi i32 [ %i.ay, %.lr.ph93.i ], [ %.sroa.14.0.lcssa.i, %._crit_edge81.i ] ; 2 uses
  %.15290.i = phi i8 [ %i.ax, %.lr.ph93.i ], [ %.051.lcssa.i, %._crit_edge81.i ]
  %.15789.i = phi i1 [ %i.av, %.lr.ph93.i ], [ %.056.in.lcssa.i, %._crit_edge81.i ]
  %.sroa.2.188.i = phi i32 [ %i.az, %.lr.ph93.i ], [ %.sroa.2.0.lcssa.i, %._crit_edge81.i ]
  %i.au = icmp eq i8 %.15290.i, 0
  %i.av = select i1 %i.au, i1 %.15789.i, i1 false ; 2 uses
  %i.aw = urem i32 %.sroa.14.191.i, 10
  %i.ax = trunc nuw nsw i32 %i.aw to i8           ; 2 uses
  %i.ay = udiv i32 %.sroa.14.191.i, 10            ; 2 uses
  %i.az = udiv exact i32 %.sroa.2.188.i, 10       ; 3 uses
  %i.ba = add nuw nsw i32 %.192.i, 1              ; 2 uses
  %i.bb = urem i32 %i.az, 10
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %.lr.ph93.i, label %.loopexit.i, !llvm.loop !16

.loopexit.i:                                      ; preds = %.lr.ph93.i, %._crit_edge81.i
  %.sroa.2.2.i = phi i32 [ %.sroa.2.0.lcssa.i, %._crit_edge81.i ], [ %i.az, %.lr.ph93.i ]
  %.258.in.i = phi i1 [ %.056.in.lcssa.i, %._crit_edge81.i ], [ %i.av, %.lr.ph93.i ]
  %.253.i = phi i8 [ %.051.lcssa.i, %._crit_edge81.i ], [ %i.ax, %.lr.ph93.i ] ; 2 uses
  %.sroa.14.2.i = phi i32 [ %.sroa.14.0.lcssa.i, %._crit_edge81.i ], [ %i.ay, %.lr.ph93.i ] ; 3 uses
  %.2.i = phi i32 [ %.050.lcssa.i, %._crit_edge81.i ], [ %i.ba, %.lr.ph93.i ]
  %i.bd = icmp ne i8 %.253.i, 5
  %not..i = xor i1 %.258.in.i, true
  %or.cond4.i = select i1 %not..i, i1 true, i1 %i.bd
  %i.be = trunc i32 %.sroa.14.2.i to i1
  %or.cond65.i = select i1 %or.cond4.i, i1 true, i1 %i.be
  %i.bf = icmp ne i32 %.sroa.14.2.i, %.sroa.2.2.i
  %or.cond6.i = and i1 %i.g, %.059.in.lcssa.i
  %or.cond66.i = or i1 %or.cond6.i, %i.bf
  %i.bg = icmp ugt i8 %.253.i, 4
  %i.bh = select i1 %or.cond65.i, i1 %i.bg, i1 false
  %not.or.cond66.i = xor i1 %or.cond66.i, true
  %narrow.i = select i1 %not.or.cond66.i, i1 true, i1 %i.bh
  br label %_ZN7xgboost6detail17PowerBaseComputer22ShortestRepresentationEbbhbNS0_15MantissaIntevalE.exit

.lr.ph.i:                                         ; preds = %.preheader68.i, %.lr.ph.i
  %.370.i = phi i32 [ %i.bl, %.lr.ph.i ], [ 0, %.preheader68.i ]
  %.sroa.14.369.i = phi i32 [ %i.bj, %.lr.ph.i ], [ %.sroa.14.8.extract.trunc.i, %.preheader68.i ] ; 2 uses
  %i.bi = phi <2 x i32> [ %i.bm, %.lr.ph.i ], [ %i.y, %.preheader68.i ] ; 2 uses
  %i.bj = udiv i32 %.sroa.14.369.i, 10            ; 2 uses
  %i.bk = urem i32 %.sroa.14.369.i, 10
  %i.bl = add nuw nsw i32 %.370.i, 1              ; 2 uses
  %i.bm = udiv <2 x i32> %i.bi, splat (i32 10)    ; 3 uses
  %i.bn = extractelement <2 x i32> %i.bm, i64 0
  %i.bo = extractelement <2 x i32> %i.bm, i64 1
  %i.bp = icmp samesign ugt i32 %i.bo, %i.bn
  br i1 %i.bp, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !17

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.bq = trunc nuw nsw i32 %i.bk to i8
  %i.br = extractelement <2 x i32> %i.bi, i64 0
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.i, %.preheader68.i
  %.sroa.2.3.lcssa.i = phi i32 [ %i.br, %._crit_edge.i ], [ %.sroa.2.0.extract.trunc.i, %.preheader68.i ]
  %.455.lcssa.i = phi i8 [ %i.bq, %._crit_edge.i ], [ %i.p, %.preheader68.i ]
  %.sroa.14.3.lcssa.i = phi i32 [ %i.bj, %._crit_edge.i ], [ %.sroa.14.8.extract.trunc.i, %.preheader68.i ] ; 2 uses
  %.3.lcssa.i = phi i32 [ %i.bl, %._crit_edge.i ], [ 0, %.preheader68.i ]
  %i.bs = icmp eq i32 %.sroa.14.3.lcssa.i, %.sroa.2.3.lcssa.i
  %i.bt = icmp ugt i8 %.455.lcssa.i, 4
  %i.bu = select i1 %i.bs, i1 true, i1 %i.bt
  br label %_ZN7xgboost6detail17PowerBaseComputer22ShortestRepresentationEbbhbNS0_15MantissaIntevalE.exit

_ZN7xgboost6detail17PowerBaseComputer22ShortestRepresentationEbbhbNS0_15MantissaIntevalE.exit: ; preds = %.loopexit.i, %bb.b
  %.sink131.i = phi i1 [ %i.bu, %bb.b ], [ %narrow.i, %.loopexit.i ]
  %.sroa.14.3.lcssa.sink.i = phi i32 [ %.sroa.14.3.lcssa.i, %bb.b ], [ %.sroa.14.2.i, %.loopexit.i ]
  %.4.i = phi i32 [ %.3.lcssa.i, %bb.b ], [ %.2.i, %.loopexit.i ]
  %i.bv = zext i1 %.sink131.i to i32
  %i.bw = add i32 %.sroa.14.3.lcssa.sink.i, %i.bv
  %i.bx = bitcast <2 x i64> %i.t to <4 x i32>
  %.sroa.0.0.extract.trunc.i = extractelement <4 x i32> %i.bx, i64 0
  %i.by = add nsw i32 %.4.i, %.sroa.0.0.extract.trunc.i
  %.sroa.249.0.insert.ext.i = zext i32 %i.by to i64
  %.sroa.249.0.insert.shift.i = shl nuw i64 %.sroa.249.0.insert.ext.i, 32
  %.sroa.048.0.insert.ext.i = zext i32 %i.bw to i64
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
  store i8 45, ptr %2, align 1, !tbaa !9
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
  br i1 %.not, label %._crit_edge, label %tailrecurse.i71.preheader, !llvm.loop !20

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
  %i.an = load i8, ptr %i.am, align 1, !tbaa !9
  %i.ao = add nuw nsw i32 %.0.i, %.063
  %i.ap = sub i32 %i.ao, %.167
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 %i.aq
  store i8 %i.an, ptr %i.ar, align 1, !tbaa !9
  %i.as = load i8, ptr %i.al, align 2, !tbaa !9
  br label %bb.i

bb.h:                                             ; preds = %bb.f
end_hunk_0
begin_hunk_1_@_ZN7xgboost6detail17FromCharFloatImplEPKciPf:bb.a

bb.i:                                             ; preds = %bb.h
  %i.s = zext nneg i32 %i.q to i64
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !9     ; 2 uses
  switch i8 %i.u, label %bb.k [
    i8 45, label %bb.j
    i8 43, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.v = icmp eq i8 %i.u, 45
  %i.w = add nuw nsw i32 %i.p, 2
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h
  %.0162 = phi i1 [ %i.v, %bb.j ], [ false, %bb.i ], [ false, %bb.h ] ; 2 uses
  %.2 = phi i32 [ %i.w, %bb.j ], [ %i.q, %bb.i ], [ %i.q, %bb.h ] ; 3 uses
  %i.x = icmp slt i32 %.2, %1
  br i1 %i.x, label %.lr.ph283.preheader, label %.loopexit

.lr.ph283.preheader:                              ; preds = %bb.k
  %i.y = sext i32 %.2 to i64
  br label %.lr.ph283

.lr.ph283:                                        ; preds = %.lr.ph283.preheader, %bb.m
  %indvars.iv305 = phi i64 [ %i.y, %.lr.ph283.preheader ], [ %indvars.iv.next306, %bb.m ] ; 3 uses
  %.0165281 = phi i32 [ 0, %.lr.ph283.preheader ], [ %i.af, %bb.m ]
  %.0176280 = phi i32 [ 0, %.lr.ph283.preheader ], [ %spec.select201, %bb.m ] ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %0, i64 %indvars.iv305
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !9    ; 2 uses
  %i.ab = add i8 %i.aa, -58
  %or.cond5 = icmp ult i8 %i.ab, -10
  br i1 %or.cond5, label %.thread.loopexit, label %bb.l

bb.l:                                             ; preds = %.lr.ph283
  %i.ac = icmp samesign ugt i32 %.0176280, 3
  br i1 %i.ac, label %.thread.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = mul nsw i32 %.0165281, 10
  %narrow198 = add nsw i8 %i.aa, -48
  %i.ae = zext nneg i8 %narrow198 to i32
  %i.af = add nsw i32 %i.ad, %i.ae                ; 3 uses
  %.not199 = icmp ne i32 %i.af, 0
  %i.ag = zext i1 %.not199 to i32
  %spec.select201 = add nuw nsw i32 %.0176280, %i.ag
  %indvars.iv.next306 = add nsw i64 %indvars.iv305, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next306 to i32
  %exitcond308.not = icmp eq i32 %1, %lftr.wideiv
  br i1 %exitcond308.not, label %.loopexit.thread, label %.lr.ph283, !llvm.loop !23

.loopexit:                                        ; preds = %bb.b, %bb.k, %bb.g
  %.0179268 = phi i32 [ %.0179272, %bb.k ], [ %.0179272, %bb.g ], [ 0, %bb.b ]
  %.0173265 = phi i32 [ %.0173273, %bb.k ], [ %.0173273, %bb.g ], [ %1, %bb.b ]
  %.0169262 = phi i32 [ %.0169274, %bb.k ], [ %.0169274, %bb.g ], [ 0, %bb.b ]
  %.0172 = phi i32 [ %i.p, %bb.k ], [ %1, %bb.g ], [ %1, %bb.b ]
  %.1163 = phi i1 [ %.0162, %bb.k ], [ false, %bb.g ], [ false, %bb.b ]
  %.4 = phi i32 [ %.2, %bb.k ], [ %i.p, %bb.g ], [ %spec.select, %bb.b ] ; 2 uses
  %i.ah = icmp slt i32 %.4, %1
  br i1 %i.ah, label %bb.n, label %.loopexit.thread

bb.n:                                             ; preds = %.loopexit
  %i.ai = sext i32 %.4 to i64
  %i.aj = getelementptr inbounds i8, ptr %0, i64 %i.ai
  br label %.thread

.loopexit.thread:                                 ; preds = %bb.m, %.loopexit
  %.1163331 = phi i1 [ %.1163, %.loopexit ], [ %.0162, %bb.m ]
  %.2167330 = phi i32 [ 0, %.loopexit ], [ %i.af, %bb.m ] ; 2 uses
  %.0172329 = phi i32 [ %.0172, %.loopexit ], [ %i.p, %bb.m ]
  %.0169262328 = phi i32 [ %.0169262, %.loopexit ], [ %.0169274, %bb.m ]
  %.0173265327 = phi i32 [ %.0173265, %.loopexit ], [ %.0173273, %bb.m ]
  %.0179268326 = phi i32 [ %.0179268, %.loopexit ], [ %.0179272, %bb.m ]
  %i.ak = sub nsw i32 0, %.2167330
  %spec.select362 = select i1 %.1163331, i32 %i.ak, i32 %.2167330
  br label %.loopexit.thread.thread

.loopexit.thread.thread:                          ; preds = %select.unfold, %.loopexit.thread
  %.0179268326341 = phi i32 [ %.0179268326, %.loopexit.thread ], [ %.2181.ph, %select.unfold ]
  %.0173265327340 = phi i32 [ %.0173265327, %.loopexit.thread ], [ %.1174.ph, %select.unfold ] ; 2 uses
  %.0169262328339 = phi i32 [ %.0169262328, %.loopexit.thread ], [ %.1170.ph, %select.unfold ] ; 9 uses
  %.0172329338 = phi i32 [ %.0172329, %.loopexit.thread ], [ %1, %select.unfold ] ; 2 uses
  %i.al = phi i32 [ %spec.select362, %.loopexit.thread ], [ 0, %select.unfold ]
  %i.am = icmp slt i32 %.0173265327340, %.0172329338
  %i.an = xor i32 %.0173265327340, -1
  %i.ao = add i32 %.0172329338, %i.an
  %i.ap = select i1 %i.am, i32 %i.ao, i32 0
  %i.aq = sub nsw i32 %i.al, %i.ap                ; 12 uses
  %i.ar = icmp eq i32 %.0169262328339, 0
  br i1 %i.ar, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.loopexit.thread.thread
  %i.as = select i1 %i.c, float -0.000000e+00, float 0.000000e+00
  store float %i.as, ptr %2, align 4, !tbaa !25
  br label %.thread

bb.p:                                             ; preds = %.loopexit.thread.thread
  %i.at = add nsw i32 %i.aq, %.0179268326341      ; 2 uses
  %i.au = icmp slt i32 %i.at, -45
  br i1 %i.au, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.av = select i1 %i.c, float -0.000000e+00, float 0.000000e+00
  store float %i.av, ptr %2, align 4, !tbaa !25
  br label %.thread

bb.r:                                             ; preds = %bb.p
  %i.aw = icmp sgt i32 %i.at, 39
  br i1 %i.aw, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ax = select i1 %i.c, float -inf, float +inf
  store float %i.ax, ptr %2, align 4, !tbaa !25
  br label %.thread

bb.t:                                             ; preds = %bb.r
  %i.ay = icmp sgt i32 %i.aq, -1
  %i.az = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.0169262328339, i1 true) ; 2 uses
  br i1 %i.ay, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.ba = mul nuw nsw i32 %i.aq, 1217359
  %i.bb = lshr i32 %i.ba, 19                      ; 2 uses
  %reass.sub = sub nsw i32 %i.aq, %i.az
  %i.bc = add i32 %reass.sub, 7
  %i.bd = add i32 %i.bc, %i.bb                    ; 5 uses
  %i.be = sub nsw i32 %i.bd, %i.aq                ; 3 uses
  %i.bf = zext nneg i32 %i.aq to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr @_ZN7xgboost6detail14RyuPowLogUtils15kFloatPow5SplitE, i64 %i.bf
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !14 ; 2 uses
  %i.bi = lshr i64 %i.bh, 32
  %i.bj = zext i32 %.0169262328339 to i64         ; 2 uses
  %i.bk = and i64 %i.bh, 4294967295
  %i.bl = mul nuw i64 %i.bk, %i.bj
  %i.bm = mul nuw i64 %i.bi, %i.bj
  %i.bn = lshr i64 %i.bl, 32
  %i.bo = add nuw i64 %i.bn, %i.bm
  %reass.sub286 = sub i32 %i.be, %i.bb
  %i.bp = add i32 %reass.sub286, 28
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = lshr i64 %i.bo, %i.bq                   ; 3 uses
  %i.bs = icmp slt i32 %i.bd, %i.aq
  br i1 %i.bs, label %_ZN7xgboost6detail14RyuPowLogUtils18MultipleOfPowerOf5Ejj.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bt = icmp slt i32 %i.be, 32
  br i1 %i.bt, label %bb.w, label %_ZN7xgboost6detail14RyuPowLogUtils18MultipleOfPowerOf5Ejj.exit

bb.w:                                             ; preds = %bb.v
  %i.bu = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0169262328339, i1 true)
  %i.bv = icmp uge i32 %i.bu, %i.be
  br label %_ZN7xgboost6detail14RyuPowLogUtils18MultipleOfPowerOf5Ejj.exit

bb.x:                                             ; preds = %bb.t
  %i.bw = sub nsw i32 0, %i.aq                    ; 2 uses
  %i.bx = mul nsw i32 %i.aq, -1217359
  %i.by = lshr i32 %i.bx, 19                      ; 2 uses
  %i.bz = add nuw nsw i32 %i.az, %i.by
  %i.ca = sub nuw i32 %i.aq, %i.bz
  %i.cb = add i32 %i.ca, 6                        ; 5 uses
  %i.cc = sub nsw i32 %i.cb, %i.aq                ; 3 uses
  %i.cd = zext nneg i32 %i.bw to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr @_ZN7xgboost6detail14RyuPowLogUtils18kFloatPow5InvSplitE, i64 %i.cd
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !14 ; 2 uses
  %i.cg = lshr i64 %i.cf, 32
  %i.ch = zext i32 %.0169262328339 to i64         ; 2 uses
  %i.ci = and i64 %i.cf, 4294967295
  %i.cj = mul nuw i64 %i.ci, %i.ch
  %i.ck = mul nuw i64 %i.cg, %i.ch
  %i.cl = lshr i64 %i.cj, 32
  %i.cm = add nuw i64 %i.cl, %i.ck
  %i.cn = add nuw nsw i32 %i.by, 27
  %i.co = add i32 %i.cn, %i.cc
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = lshr i64 %i.cm, %i.cp                   ; 3 uses
  %i.cr = icmp slt i32 %i.cb, %i.aq
  br i1 %i.cr, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cs = icmp slt i32 %i.cc, 32
  %i.ct = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0169262328339, i1 true)
  %i.cu = icmp uge i32 %i.ct, %i.cc
  %or.cond250 = select i1 %i.cs, i1 %i.cu, i1 false
  %i.cv = urem i32 %.0169262328339, 5
  %.not14.i.i = icmp eq i32 %i.cv, 0
  %or.cond363 = and i1 %or.cond250, %.not14.i.i
  br i1 %or.cond363, label %.lr.ph.i.i.preheader, label %_ZN7xgboost6detail14RyuPowLogUtils18MultipleOfPowerOf5Ejj.exit

bb.z:                                             ; preds = %bb.x
  %.old = urem i32 %.0169262328339, 5
  %.not14.i.i.old = icmp eq i32 %.old, 0
  br i1 %.not14.i.i.old, label %.lr.ph.i.i.preheader, label %_ZN7xgboost6detail14RyuPowLogUtils18MultipleOfPowerOf5Ejj.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.y, %bb.z
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.0716.i.i = phi i32 [ %i.cx, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.preheader ]
  %.0815.i.i = phi i32 [ %i.cw, %.lr.ph.i.i ], [ %.0169262328339, %.lr.ph.i.i.preheader ]
  %i.cw = udiv exact i32 %.0815.i.i, 5            ; 2 uses
  %i.cx = add i32 %.0716.i.i, 1                   ; 2 uses
  %i.cy = urem i32 %i.cw, 5
  %.not.i.i = icmp eq i32 %i.cy, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %_ZN7xgboost6detail14RyuPowLogUtils18MultipleOfPowerOf5Ejj.exit.loopexit

_ZN7xgboost6detail14RyuPowLogUtils18MultipleOfPowerOf5Ejj.exit.loopexit: ; preds = %.lr.ph.i.i
  %i.cz = icmp uge i32 %i.cx, %i.bw
  br label %_ZN7xgboost6detail14RyuPowLogUtils18MultipleOfPowerOf5Ejj.exit

_ZN7xgboost6detail14RyuPowLogUtils18MultipleOfPowerOf5Ejj.exit: ; preds = %bb.z, %_ZN7xgboost6detail14RyuPowLogUtils18MultipleOfPowerOf5Ejj.exit.loopexit, %bb.y, %bb.u, %bb.w, %bb.v
  %.0158 = phi i32 [ %i.bd, %bb.u ], [ %i.bd, %bb.v ], [ %i.bd, %bb.w ], [ %i.cb, %bb.y ], [ %i.cb, %_ZN7xgboost6detail14RyuPowLogUtils18MultipleOfPowerOf5Ejj.exit.loopexit ], [ %i.cb, %bb.z ] ; 2 uses
  %.0157.in = phi i64 [ %i.br, %bb.u ], [ %i.br, %bb.v ], [ %i.br, %bb.w ], [ %i.cq, %bb.y ], [ %i.cq, %_ZN7xgboost6detail14RyuPowLogUtils18MultipleOfPowerOf5Ejj.exit.loopexit ], [ %i.cq, %bb.z ]
  %.0156 = phi i1 [ true, %bb.u ], [ false, %bb.v ], [ %i.bv, %bb.w ], [ false, %bb.y ], [ %i.cz, %_ZN7xgboost6detail14RyuPowLogUtils18MultipleOfPowerOf5Ejj.exit.loopexit ], [ false, %bb.z ]
  %.0157 = trunc i64 %.0157.in to i32             ; 5 uses
  %i.da = add i32 %.0158, 127
  %i.db = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.0157, i1 true)
  %i.dc = xor i32 %i.db, 31
  %i.dd = add i32 %i.da, %i.dc                    ; 3 uses
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.dd, i32 0)
  %i.de = icmp sgt i32 %i.dd, 254
  br i1 %i.de, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN7xgboost6detail14RyuPowLogUtils18MultipleOfPowerOf5Ejj.exit
  %i.df = select i1 %i.c, float -inf, float +inf
  store float %i.df, ptr %2, align 4, !tbaa !25
  br label %.thread

bb.ab:                                            ; preds = %_ZN7xgboost6detail14RyuPowLogUtils18MultipleOfPowerOf5Ejj.exit
  %i.dg = tail call i32 @llvm.smax.i32(i32 %i.dd, i32 1)
  %i.dh = sub i32 %i.dg, %.0158                   ; 2 uses
  %i.di = add i32 %i.dh, -150                     ; 2 uses
  %i.dj = add i32 %i.dh, -151                     ; 2 uses
  %i.dk = shl nuw i32 1, %i.dj
  %i.dl = and i32 %i.dk, %.0157
  %.not197 = icmp eq i32 %i.dl, 0
  br i1 %.not197, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %notmask = shl nsw i32 -1, %i.dj
  %i.dm = xor i32 %notmask, -1
  %i.dn = and i32 %i.dm, %.0157
  %i.do = icmp eq i32 %i.dn, 0
  %i.dp = and i1 %.0156, %i.do
  br i1 %i.dp, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dq = lshr i32 %.0157, %i.di
  %i.dr = trunc i32 %i.dq to i1
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad, %bb.ab
  %i.ds = phi i1 [ false, %bb.ab ], [ true, %bb.ac ], [ %i.dr, %bb.ad ] ; 2 uses
  %i.dt = lshr i32 %.0157, %i.di
  %i.du = zext i1 %i.ds to i32
  %i.dv = add i32 %i.dt, %i.du
  %i.dw = and i32 %i.dv, 8388607                  ; 2 uses
  %i.dx = icmp eq i32 %i.dw, 0
  %or.cond9 = and i1 %i.ds, %i.dx
  %i.dy = zext i1 %or.cond9 to i32
  %spec.select203 = add nuw nsw i32 %.sroa.speculated, %i.dy
  %i.dz = select i1 %i.c, i32 256, i32 0
  %i.ea = or i32 %spec.select203, %i.dz
  %i.eb = shl nuw i32 %i.ea, 23
  %i.ec = or disjoint i32 %i.eb, %i.dw
  store i32 %i.ec, ptr %2, align 4, !tbaa !25
  br label %.thread

.thread.loopexit:                                 ; preds = %.lr.ph283, %bb.l
  %.sroa.12.7.ph = phi i32 [ 34, %bb.l ], [ 22, %.lr.ph283 ]
  %i.ed = getelementptr inbounds i8, ptr %0, i64 %indvars.iv305
  br label %.thread

.thread.loopexit342:                              ; preds = %bb.c, %bb.e
  %.sroa.12.7.ph343 = phi i32 [ 22, %bb.c ], [ 34, %bb.e ]
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit342, %.thread.loopexit, %bb.n, %bb.o, %bb.q, %bb.s, %bb.ae, %bb.aa, %bb.a
  %.sroa.0.7 = phi ptr [ %0, %bb.a ], [ null, %bb.aa ], [ %i.ed, %.thread.loopexit ], [ %i.aj, %bb.n ], [ null, %bb.o ], [ null, %bb.q ], [ null, %bb.s ], [ null, %bb.ae ], [ %i.ee, %.thread.loopexit342 ]
  %.sroa.12.7 = phi i32 [ 22, %bb.a ], [ 0, %bb.aa ], [ %.sroa.12.7.ph, %.thread.loopexit ], [ 22, %bb.n ], [ 0, %bb.o ], [ 0, %bb.q ], [ 0, %bb.s ], [ 0, %bb.ae ], [ %.sroa.12.7.ph343, %.thread.loopexit342 ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0.7, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.12.7, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i8 @_ZN7xgboost6detail17PowerBaseComputer13ToDecimalBaseEbjNS0_15MantissaIntevalEPS2_PbS4_(i1 noundef zeroext %0, i32 noundef %1, i64 %2, i64 %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i64 %2 to i32  ; 3 uses
  %.sroa.8.0.extract.shift = lshr i64 %2, 32      ; 5 uses
  %.sroa.8.0.extract.trunc = trunc nuw i64 %.sroa.8.0.extract.shift to i32 ; 2 uses
  %.sroa.11.8.extract.trunc = trunc i64 %3 to i32 ; 3 uses
  %.sroa.19.8.extract.shift = lshr i64 %3, 32     ; 5 uses
  %.sroa.19.8.extract.trunc = trunc nuw i64 %.sroa.19.8.extract.shift to i32 ; 2 uses
  %i.a = icmp sgt i32 %.sroa.0.0.extract.trunc, -1
  br i1 %i.a, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.b = and i64 %2, 2147483647
  %i.c = mul i64 %i.b, 169464822037455            ; 2 uses
  %i.d = lshr i64 %i.c, 49                        ; 5 uses
  %i.e = trunc nuw nsw i64 %i.d to i32            ; 5 uses
  store i32 %i.e, ptr %4, align 4, !tbaa !27
  %i.f = mul nuw nsw i64 %i.d, 163391164108059
  %i.g = lshr i64 %i.f, 46
  %i.h = trunc nuw nsw i64 %i.g to i32
  %i.i = sub nsw i32 %i.e, %.sroa.0.0.extract.trunc ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr @_ZN7xgboost6detail14RyuPowLogUtils18kFloatPow5InvSplitE, i64 %i.d
  %i.k = load i64, ptr %i.j, align 8, !tbaa !14   ; 2 uses
  %i.l = lshr i64 %i.k, 32                        ; 3 uses
  %i.m = and i64 %i.k, 4294967295                 ; 3 uses
  %i.n = mul nuw i64 %i.m, %.sroa.8.0.extract.shift
  %i.o = mul nuw i64 %i.l, %.sroa.8.0.extract.shift
  %i.p = lshr i64 %i.n, 32
  %i.q = add nuw i64 %i.p, %i.o
  %i.r = add nsw i32 %i.i, 27
  %i.s = add nsw i32 %i.r, %i.h
  %i.t = zext nneg i32 %i.s to i64                ; 3 uses
  %i.u = lshr i64 %i.q, %i.t
  %i.v = trunc i64 %i.u to i32                    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.v, ptr %i.w, align 4, !tbaa !28
  %i.x = and i64 %3, 4294967295                   ; 4 uses
  %i.y = mul nuw i64 %i.m, %i.x
  %i.z = mul nuw i64 %i.l, %i.x
  %i.aa = lshr i64 %i.y, 32
  %i.ab = add nuw i64 %i.aa, %i.z
  %i.ac = lshr i64 %i.ab, %i.t
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !29
  %i.af = mul nuw i64 %i.m, %.sroa.19.8.extract.shift
  %i.ag = mul nuw i64 %i.l, %.sroa.19.8.extract.shift
  %i.ah = lshr i64 %i.af, 32
  %i.ai = add nuw i64 %i.ah, %i.ag
  %i.aj = lshr i64 %i.ai, %i.t
  %i.ak = trunc i64 %i.aj to i32                  ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !30
  %.not81 = icmp eq i64 %i.d, 0
  br i1 %.not81, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.am = add i32 %i.ak, -1
  %i.an = udiv i32 %i.am, 10
  %i.ao = udiv i32 %i.v, 10
  %.not82 = icmp samesign ugt i32 %i.an, %i.ao
  br i1 %.not82, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ap = add nsw i64 %i.d, -1                    ; 2 uses
  %i.aq = mul nuw nsw i64 %i.ap, 163391164108059
  %i.ar = lshr i64 %i.aq, 46
  %i.as = trunc nuw nsw i64 %i.ar to i32
  %i.at = getelementptr inbounds nuw [8 x i8], ptr @_ZN7xgboost6detail14RyuPowLogUtils18kFloatPow5InvSplitE, i64 %i.ap
  %i.au = load i64, ptr %i.at, align 8, !tbaa !14 ; 2 uses
  %i.av = lshr i64 %i.au, 32
  %i.aw = and i64 %i.au, 4294967295
  %i.ax = mul nuw i64 %i.aw, %i.x
  %i.ay = mul nuw i64 %i.av, %i.x
  %i.az = lshr i64 %i.ax, 32
  %i.ba = add nuw i64 %i.az, %i.ay
  %i.bb = add nsw i32 %i.i, 26
  %i.bc = add nsw i32 %i.bb, %i.as
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = lshr i64 %i.ba, %i.bd
  %i.bf = trunc i64 %i.be to i32
  %i.bg = urem i32 %i.bf, 10
  %i.bh = trunc nuw nsw i32 %i.bg to i8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i8 [ %i.bh, %bb.d ], [ 0, %bb.c ]     ; 2 uses
  %i.bi = icmp ult i64 %i.c, 5629499534213120
  br i1 %i.bi, label %.thread, label %bb.q

.thread:                                          ; preds = %bb.b, %bb.e
  %.098 = phi i8 [ %.0, %bb.e ], [ 0, %bb.b ]     ; 3 uses
  %i.bj = urem i32 %.sroa.11.8.extract.trunc, 5
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %.lr.ph.i.i, label %bb.f

.lr.ph.i.i:                                       ; preds = %.thread, %.lr.ph.i.i
  %.0716.i.i = phi i32 [ %i.bm, %.lr.ph.i.i ], [ 0, %.thread ]
  %.0815.i.i = phi i32 [ %i.bl, %.lr.ph.i.i ], [ %.sroa.11.8.extract.trunc, %.thread ]
  %i.bl = udiv exact i32 %.0815.i.i, 5            ; 2 uses
  %i.bm = add i32 %.0716.i.i, 1                   ; 2 uses
  %i.bn = urem i32 %i.bl, 5
  %.not.i.i = icmp eq i32 %i.bn, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %_ZN7xgboost6detail14RyuPowLogUtils18MultipleOfPowerOf5Ejj.exit

_ZN7xgboost6detail14RyuPowLogUtils18MultipleOfPowerOf5Ejj.exit: ; preds = %.lr.ph.i.i
  %i.bo = icmp uge i32 %i.bm, %i.e
  %i.bp = zext i1 %i.bo to i8
  store i8 %i.bp, ptr %6, align 1, !tbaa !11
  br label %bb.q

bb.f:                                             ; preds = %.thread
  br i1 %0, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bq = urem i32 %.sroa.8.0.extract.trunc, 5
  %.not14.i.i83 = icmp eq i32 %i.bq, 0
  br i1 %.not14.i.i83, label %.lr.ph.i.i85, label %_ZN7xgboost6detail14RyuPowLogUtils18MultipleOfPowerOf5Ejj.exit89

.lr.ph.i.i85:                                     ; preds = %bb.g, %.lr.ph.i.i85
  %.0716.i.i86 = phi i32 [ %i.bs, %.lr.ph.i.i85 ], [ 0, %bb.g ]
  %.0815.i.i87 = phi i32 [ %i.br, %.lr.ph.i.i85 ], [ %.sroa.8.0.extract.trunc, %bb.g ]
  %i.br = udiv exact i32 %.0815.i.i87, 5          ; 2 uses
  %i.bs = add i32 %.0716.i.i86, 1                 ; 2 uses
  %i.bt = urem i32 %i.br, 5
  %.not.i.i88 = icmp eq i32 %i.bt, 0
  br i1 %.not.i.i88, label %.lr.ph.i.i85, label %_ZN7xgboost6detail14RyuPowLogUtils18MultipleOfPowerOf5Ejj.exit89

_ZN7xgboost6detail14RyuPowLogUtils18MultipleOfPowerOf5Ejj.exit89: ; preds = %.lr.ph.i.i85, %bb.g
  %.07.lcssa.i.i84 = phi i32 [ 0, %bb.g ], [ %i.bs, %.lr.ph.i.i85 ]
  %i.bu = icmp uge i32 %.07.lcssa.i.i84, %i.e
  %i.bv = zext i1 %i.bu to i8
  store i8 %i.bv, ptr %5, align 1, !tbaa !11
  br label %bb.q

bb.h:                                             ; preds = %bb.f
  %i.bw = urem i32 %.sroa.19.8.extract.trunc, 5
  %.not14.i.i90 = icmp eq i32 %i.bw, 0
  br i1 %.not14.i.i90, label %.lr.ph.i.i92, label %_ZN7xgboost6detail14RyuPowLogUtils18MultipleOfPowerOf5Ejj.exit96

.lr.ph.i.i92:                                     ; preds = %bb.h, %.lr.ph.i.i92
  %.0716.i.i93 = phi i32 [ %i.by, %.lr.ph.i.i92 ], [ 0, %bb.h ]
  %.0815.i.i94 = phi i32 [ %i.bx, %.lr.ph.i.i92 ], [ %.sroa.19.8.extract.trunc, %bb.h ]
  %i.bx = udiv exact i32 %.0815.i.i94, 5          ; 2 uses
  %i.by = add i32 %.0716.i.i93, 1                 ; 2 uses
  %i.bz = urem i32 %i.bx, 5
  %.not.i.i95 = icmp eq i32 %i.bz, 0
  br i1 %.not.i.i95, label %.lr.ph.i.i92, label %_ZN7xgboost6detail14RyuPowLogUtils18MultipleOfPowerOf5Ejj.exit96

_ZN7xgboost6detail14RyuPowLogUtils18MultipleOfPowerOf5Ejj.exit96: ; preds = %.lr.ph.i.i92, %bb.h
  %.07.lcssa.i.i91 = phi i32 [ 0, %bb.h ], [ %i.by, %.lr.ph.i.i92 ]
  %i.ca = icmp uge i32 %.07.lcssa.i.i91, %i.e
  %.neg = sext i1 %i.ca to i32
  %i.cb = add i32 %.neg, %i.ak
  store i32 %i.cb, ptr %i.al, align 4, !tbaa !30
  br label %bb.q

bb.i:                                             ; preds = %bb.a
  %i.cc = sub nsw i64 0, %2
  %i.cd = and i64 %i.cc, 4294967295
  %i.ce = mul i64 %i.cd, 196742565691928          ; 2 uses
  %i.cf = lshr i64 %i.ce, 48                      ; 5 uses
  %i.cg = trunc nuw nsw i64 %i.cf to i32          ; 2 uses
  %i.ch = add nsw i32 %i.cg, %.sroa.0.0.extract.trunc ; 3 uses
  store i32 %i.ch, ptr %4, align 4, !tbaa !27
  %i.ci = sub i32 0, %i.ch                        ; 2 uses
  %i.cj = sext i32 %i.ci to i64
  %i.ck = mul i64 %i.cj, 163391164108059
  %i.cl = lshr i64 %i.ck, 46
  %i.cm = zext i32 %i.ci to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr @_ZN7xgboost6detail14RyuPowLogUtils15kFloatPow5SplitE, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !14 ; 2 uses
  %i.cp = lshr i64 %i.co, 32                      ; 3 uses
  %i.cq = and i64 %3, 4294967295                  ; 4 uses
  %i.cr = and i64 %i.co, 4294967295               ; 3 uses
  %i.cs = mul nuw i64 %i.cr, %i.cq
  %i.ct = mul nuw i64 %i.cp, %i.cq
  %i.cu = lshr i64 %i.cs, 32
  %i.cv = add nuw i64 %i.cu, %i.ct
  %i.cw = add nuw nsw i64 %i.cf, 28
  %i.cx = sub nsw i64 %i.cw, %i.cl                ; 3 uses
  %i.cy = lshr i64 %i.cv, %i.cx
  %i.cz = trunc i64 %i.cy to i32
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.cz, ptr %i.da, align 4, !tbaa !29
  %i.db = mul nuw i64 %i.cr, %.sroa.19.8.extract.shift
  %i.dc = mul nuw i64 %i.cp, %.sroa.19.8.extract.shift
  %i.dd = lshr i64 %i.db, 32
  %i.de = add nuw i64 %i.dd, %i.dc
  %i.df = lshr i64 %i.de, %i.cx
  %i.dg = trunc i64 %i.df to i32                  ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !30
  %i.di = mul nuw i64 %i.cr, %.sroa.8.0.extract.shift
  %i.dj = mul nuw i64 %i.cp, %.sroa.8.0.extract.shift
  %i.dk = lshr i64 %i.di, 32
  %i.dl = add nuw i64 %i.dk, %i.dj
  %i.dm = lshr i64 %i.dl, %i.cx
  %i.dn = trunc i64 %i.dm to i32                  ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.dn, ptr %i.do, align 4, !tbaa !28
  %.not = icmp eq i64 %i.cf, 0
  br i1 %.not, label %.thread99, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dp = add i32 %i.dg, -1
  %i.dq = udiv i32 %i.dp, 10
  %i.dr = udiv i32 %i.dn, 10
  %.not80 = icmp samesign ugt i32 %i.dq, %i.dr
  br i1 %.not80, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ds = sub i32 1, %i.ch                        ; 2 uses
  %i.dt = sext i32 %i.ds to i64
  %i.du = mul i64 %i.dt, 163391164108059
  %i.dv = lshr i64 %i.du, 46
  %i.dw = zext i32 %i.ds to i64
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr @_ZN7xgboost6detail14RyuPowLogUtils15kFloatPow5SplitE, i64 %i.dw
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !14 ; 2 uses
  %i.dz = lshr i64 %i.dy, 32
  %i.ea = and i64 %i.dy, 4294967295
  %i.eb = mul nuw i64 %i.ea, %i.cq
  %i.ec = mul nuw i64 %i.dz, %i.cq
  %i.ed = lshr i64 %i.eb, 32
  %i.ee = add nuw i64 %i.ed, %i.ec
  %i.ef = add nuw nsw i64 %i.cf, 27
  %i.eg = sub nsw i64 %i.ef, %i.dv
  %i.eh = lshr i64 %i.ee, %i.eg
  %i.ei = trunc i64 %i.eh to i32
  %i.ej = urem i32 %i.ei, 10
  %i.ek = trunc nuw nsw i32 %i.ej to i8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.1 = phi i8 [ %i.ek, %bb.k ], [ 0, %bb.j ]     ; 3 uses
  %i.el = icmp eq i64 %i.cf, 1
  br i1 %i.el, label %.thread99, label %bb.o

.thread99:                                        ; preds = %bb.i, %bb.l
  %.1101 = phi i8 [ %.1, %bb.l ], [ 0, %bb.i ]    ; 2 uses
  store i8 1, ptr %6, align 1, !tbaa !11
  br i1 %0, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.thread99
  %i.em = icmp eq i32 %1, 1
  %i.en = zext i1 %i.em to i8
  store i8 %i.en, ptr %5, align 1, !tbaa !11
  br label %bb.q

bb.n:                                             ; preds = %.thread99
  %i.eo = add i32 %i.dg, -1
  store i32 %i.eo, ptr %i.dh, align 4, !tbaa !30
  br label %bb.q

bb.o:                                             ; preds = %bb.l
  %i.ep = icmp ult i64 %i.ce, 8725724278030336
  br i1 %i.ep, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.eq = add nsw i32 %i.cg, -1
  %i.er = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.11.8.extract.trunc, i1 true)
  %i.es = icmp samesign uge i32 %i.er, %i.eq
  %i.et = zext i1 %i.es to i8
  store i8 %i.et, ptr %6, align 1, !tbaa !11
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.m, %bb.p, %bb.o, %bb.e, %_ZN7xgboost6detail14RyuPowLogUtils18MultipleOfPowerOf5Ejj.exit89, %_ZN7xgboost6detail14RyuPowLogUtils18MultipleOfPowerOf5Ejj.exit96, %_ZN7xgboost6detail14RyuPowLogUtils18MultipleOfPowerOf5Ejj.exit
  %.2 = phi i8 [ %.0, %bb.e ], [ %.098, %_ZN7xgboost6detail14RyuPowLogUtils18MultipleOfPowerOf5Ejj.exit ], [ %.098, %_ZN7xgboost6detail14RyuPowLogUtils18MultipleOfPowerOf5Ejj.exit96 ], [ %.098, %_ZN7xgboost6detail14RyuPowLogUtils18MultipleOfPowerOf5Ejj.exit89 ], [ %.1, %bb.o ], [ %.1, %bb.p ], [ %.1101, %bb.m ], [ %.1101, %bb.n ]
  ret i8 %.2
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !12}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!5, !5, i64 0}
!10 = !{!"bool", !5, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"long", !5, i64 0}
!14 = !{!13, !13, i64 0}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !12}
!18 = !{i8 0, i8 2}
!19 = !{}
!20 = distinct !{!20, !12}
!21 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!22 = distinct !{!22, !12}
!23 = distinct !{!23, !12}
!24 = !{!"float", !5, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"_ZTSN7xgboost6detail15MantissaIntevalE", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!27 = !{!26, !6, i64 0}
!28 = !{!26, !6, i64 4}
!29 = !{!26, !6, i64 8}
!30 = !{!26, !6, i64 12}
end_hunk_1
