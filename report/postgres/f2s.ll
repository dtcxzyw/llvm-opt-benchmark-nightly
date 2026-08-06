inline.NumInlined: 28
inline.NumDeleted: 16
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"NaN\00", align 1
@FLOAT_POW5_INV_SPLIT = internal unnamed_addr constant [31 x i64] [i64 576460752303423489, i64 461168601842738791, i64 368934881474191033, i64 295147905179352826, i64 472236648286964522, i64 377789318629571618, i64 302231454903657294, i64 483570327845851670, i64 386856262276681336, i64 309485009821345069, i64 495176015714152110, i64 396140812571321688, i64 316912650057057351, i64 507060240091291761, i64 405648192073033409, i64 324518553658426727, i64 519229685853482763, i64 415383748682786211, i64 332306998946228969, i64 531691198313966350, i64 425352958651173080, i64 340282366920938464, i64 544451787073501542, i64 435561429658801234, i64 348449143727040987, i64 557518629963265579, i64 446014903970612463, i64 356811923176489971, i64 570899077082383953, i64 456719261665907162, i64 365375409332725730], align 16
@FLOAT_POW5_SPLIT = internal unnamed_addr constant [47 x i64] [i64 1152921504606846976, i64 1441151880758558720, i64 1801439850948198400, i64 2251799813685248000, i64 1407374883553280000, i64 1759218604441600000, i64 2199023255552000000, i64 1374389534720000000, i64 1717986918400000000, i64 2147483648000000000, i64 1342177280000000000, i64 1677721600000000000, i64 2097152000000000000, i64 1310720000000000000, i64 1638400000000000000, i64 2048000000000000000, i64 1280000000000000000, i64 1600000000000000000, i64 2000000000000000000, i64 1250000000000000000, i64 1562500000000000000, i64 1953125000000000000, i64 1220703125000000000, i64 1525878906250000000, i64 1907348632812500000, i64 1192092895507812500, i64 1490116119384765625, i64 1862645149230957031, i64 1164153218269348144, i64 1455191522836685180, i64 1818989403545856475, i64 2273736754432320594, i64 1421085471520200371, i64 1776356839400250464, i64 2220446049250313080, i64 1387778780781445675, i64 1734723475976807094, i64 2168404344971008868, i64 1355252715606880542, i64 1694065894508600678, i64 2117582368135750847, i64 1323488980084844279, i64 1654361225106055349, i64 2067951531382569187, i64 1292469707114105741, i64 1615587133892632177, i64 2019483917365790221], align 16
@DIGIT_TABLE = internal unnamed_addr constant [200 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899", align 16

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i32 @float_to_shortest_decimal_bufn(float noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = bitcast float %0 to i32                  ; 5 uses
  %i.b = icmp slt i32 %i.a, 0                     ; 4 uses
  %i.c = and i32 %i.a, 8388607                    ; 6 uses
  %i.d = lshr i32 %i.a, 23
  %i.e = and i32 %i.d, 255                        ; 8 uses
  %i.f = icmp eq i32 %i.e, 255
  %i.g = or i32 %i.e, %i.c
  %or.cond = icmp eq i32 %i.g, 0
  %or.cond20 = or i1 %i.f, %or.cond
  br i1 %or.cond20, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.e, 0
  %.not36 = icmp eq i32 %i.c, 0
  br i1 %.not36, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %1, ptr noundef nonnull align 1 dereferenceable(3) @.str, i64 3, i1 false)
  br label %copy_special_str.exit

bb.d:                                             ; preds = %bb.b
  br i1 %i.b, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i8 45, ptr %1, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.lobit37 = lshr i32 %i.a, 31
  %i.h = zext nneg i32 %.lobit37 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %i.h ; 2 uses
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i64 8751735898823355977, ptr %i.i, align 1
  %i.j = select i1 %i.b, i32 9, i32 8
  br label %copy_special_str.exit

bb.h:                                             ; preds = %bb.f
  store i8 48, ptr %i.i, align 1
  %i.k = select i1 %i.b, i32 2, i32 1
  br label %copy_special_str.exit

bb.i:                                             ; preds = %bb.a
  %i.l = add nsw i32 %i.e, -127
  %or.cond.i = icmp ult i32 %i.l, 24
  br i1 %or.cond.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.m = sub nuw nsw i32 150, %i.e                ; 2 uses
  %notmask.i = shl nsw i32 -1, %i.m
  %i.n = xor i32 %notmask.i, -1
  %i.o = and i32 %i.c, %i.n
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %.thread, label %bb.k

.thread:                                          ; preds = %bb.j
  %i.p = or disjoint i32 %i.c, 8388608
  %i.q = lshr i32 %i.p, %i.m
  br label %bb.x

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.r = icmp eq i32 %i.e, 0                      ; 2 uses
  %i.s = add nsw i32 %i.e, -152
  %.0.i21 = select i1 %i.r, i32 -151, i32 %i.s    ; 6 uses
  %i.t = shl nuw nsw i32 %i.c, 2                  ; 2 uses
  %i.u = or disjoint i32 %i.t, 33554432
  %i.v = select i1 %i.r, i32 %i.t, i32 %i.u       ; 7 uses
  %i.w = or disjoint i32 %i.v, 2                  ; 4 uses
  %i.x = icmp ne i32 %i.c, 0
  %i.y = icmp samesign ult i32 %i.e, 2
  %i.z = or i1 %i.x, %i.y
  %.neg.i = sext i1 %i.z to i32
  %i.aa = add nsw i32 %i.v, -1
  %i.ab = add nsw i32 %i.aa, %.neg.i              ; 2 uses
  %i.ac = icmp sgt i32 %.0.i21, -1
  br i1 %i.ac, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.ad = mul nuw nsw i32 %.0.i21, 78913
  %i.ae = lshr i32 %i.ad, 18                      ; 11 uses
  %i.af = mul nuw nsw i32 %i.ae, 1217359
  %i.ag = lshr i32 %i.af, 19
  %i.ah = sub nsw i32 %i.ae, %.0.i21              ; 2 uses
  %i.ai = zext nneg i32 %i.ae to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr @FLOAT_POW5_INV_SPLIT, i64 %i.ai
  %i.ak = load i64, ptr %i.aj, align 8            ; 2 uses
  %i.al = lshr i64 %i.ak, 32                      ; 3 uses
  %i.am = zext nneg i32 %i.v to i64               ; 4 uses
  %i.an = and i64 %i.ak, 4294967295               ; 3 uses
  %i.ao = mul nuw nsw i64 %i.an, %i.am
  %i.ap = mul nuw nsw i64 %i.al, %i.am
  %i.aq = lshr i64 %i.ao, 32
  %i.ar = add nuw nsw i64 %i.aq, %i.ap
  %i.as = add nsw i32 %i.ah, 27
  %i.at = add nsw i32 %i.as, %i.ag
  %i.au = zext nneg i32 %i.at to i64              ; 3 uses
  %i.av = lshr i64 %i.ar, %i.au                   ; 3 uses
  %i.aw = zext nneg i32 %i.w to i64               ; 2 uses
  %2 = zext i32 %i.ab to i64                      ; 2 uses
  %i.ax = mul nuw nsw i64 %i.an, %i.aw
  %3 = mul nuw i64 %i.an, %2
  %4 = mul nuw nsw i64 %i.al, %i.aw
  %5 = mul nuw i64 %i.al, %2
  %6 = lshr i64 %i.ax, 32
  %7 = lshr i64 %3, 32
  %8 = add nuw nsw i64 %6, %4
  %9 = add nuw i64 %7, %5
  %i.ay = lshr i64 %8, %i.au
  %10 = lshr i64 %9, %i.au
  %11 = trunc i64 %i.ay to i32                    ; 5 uses
  %i.az = trunc i64 %10 to i32                    ; 5 uses
  %.not163.i = icmp eq i32 %i.ae, 0
  br i1 %.not163.i, label %.thread.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = add i32 %11, -1
  %i.bb = udiv i32 %i.ba, 10
  %i.bc = udiv i32 %i.az, 10
  %.not164.i = icmp samesign ugt i32 %i.bb, %i.bc
  br i1 %.not164.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bd = add nsw i32 %i.ae, -1                   ; 2 uses
  %i.be = mul nuw nsw i32 %i.bd, 1217359
  %i.bf = lshr i32 %i.be, 19
  %i.bg = zext nneg i32 %i.bd to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr @FLOAT_POW5_INV_SPLIT, i64 %i.bg
  %i.bi = load i64, ptr %i.bh, align 8            ; 2 uses
  %i.bj = lshr i64 %i.bi, 32
  %i.bk = and i64 %i.bi, 4294967295
  %i.bl = mul nuw nsw i64 %i.bk, %i.am
  %i.bm = mul nuw nsw i64 %i.bj, %i.am
  %i.bn = lshr i64 %i.bl, 32
  %i.bo = add nuw nsw i64 %i.bn, %i.bm
  %i.bp = add nsw i32 %i.ah, 26
  %i.bq = add nsw i32 %i.bp, %i.bf
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = lshr i64 %i.bo, %i.br
  %i.bt = trunc i64 %i.bs to i32
  %i.bu = urem i32 %i.bt, 10
  %i.bv = trunc nuw nsw i32 %i.bu to i8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0147.i = phi i8 [ %i.bv, %bb.n ], [ 0, %bb.m ] ; 2 uses
  %i.bw = icmp samesign ult i32 %.0.i21, 34
  br i1 %i.bw, label %.thread.i, label %.thread176.thread.i

.thread.i:                                        ; preds = %bb.o, %bb.l
  %.0147175.i = phi i8 [ %.0147.i, %bb.o ], [ 0, %bb.l ] ; 3 uses
  %i.bx = urem i32 %i.v, 5
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %.lr.ph.i.i.i, label %bb.p

.lr.ph.i.i.i:                                     ; preds = %.thread.i, %.lr.ph.i.i.i
  %.0716.i.i.i = phi i32 [ %i.bz, %.lr.ph.i.i.i ], [ %i.v, %.thread.i ]
  %.0815.i.i.i = phi i32 [ %i.ca, %.lr.ph.i.i.i ], [ 0, %.thread.i ]
  %i.bz = udiv i32 %.0716.i.i.i, 5                ; 2 uses
  %i.ca = add i32 %.0815.i.i.i, 1                 ; 2 uses
  %i.cb = urem i32 %i.bz, 5
  %.not.i.i.i = icmp eq i32 %i.cb, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.thread176.i

bb.p:                                             ; preds = %.thread.i
  %i.cc = urem i32 %i.w, 5
  %.not14.i.i167.i = icmp eq i32 %i.cc, 0
  br i1 %.not14.i.i167.i, label %.lr.ph.i.i169.i, label %multipleOfPowerOf5.exit173.i

.lr.ph.i.i169.i:                                  ; preds = %bb.p, %.lr.ph.i.i169.i
  %.0716.i.i170.i = phi i32 [ %i.cd, %.lr.ph.i.i169.i ], [ %i.w, %bb.p ]
  %.0815.i.i171.i = phi i32 [ %i.ce, %.lr.ph.i.i169.i ], [ 0, %bb.p ]
  %i.cd = udiv i32 %.0716.i.i170.i, 5             ; 2 uses
  %i.ce = add i32 %.0815.i.i171.i, 1              ; 2 uses
  %i.cf = urem i32 %i.cd, 5
  %.not.i.i172.i = icmp eq i32 %i.cf, 0
  br i1 %.not.i.i172.i, label %.lr.ph.i.i169.i, label %multipleOfPowerOf5.exit173.i

multipleOfPowerOf5.exit173.i:                     ; preds = %.lr.ph.i.i169.i, %bb.p
  %.08.lcssa.i.i168.i = phi i32 [ 0, %bb.p ], [ %i.ce, %.lr.ph.i.i169.i ]
  %i.cg = icmp uge i32 %.08.lcssa.i.i168.i, %i.ae
  %.neg165.i = sext i1 %i.cg to i32
  %i.ch = add i32 %.neg165.i, %11
  br label %.thread176.thread.i

bb.q:                                             ; preds = %bb.k
  %i.ci = mul nsw i32 %.0.i21, -732923            ; 2 uses
  %i.cj = lshr i32 %i.ci, 20                      ; 6 uses
  %i.ck = add nsw i32 %i.cj, %.0.i21              ; 7 uses
  %i.cl = sub nsw i32 0, %i.ck
  %i.cm = mul nsw i32 %i.ck, -1217359
  %i.cn = lshr i32 %i.cm, 19
  %i.co = zext i32 %i.cl to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr @FLOAT_POW5_SPLIT, i64 %i.co
  %i.cq = load i64, ptr %i.cp, align 8            ; 2 uses
  %i.cr = lshr i64 %i.cq, 32                      ; 3 uses
  %i.cs = zext nneg i32 %i.v to i64               ; 4 uses
  %i.ct = and i64 %i.cq, 4294967295               ; 3 uses
  %i.cu = mul nuw nsw i64 %i.ct, %i.cs
  %i.cv = mul nuw nsw i64 %i.cr, %i.cs
  %i.cw = lshr i64 %i.cu, 32
  %i.cx = add nuw nsw i64 %i.cw, %i.cv
  %i.cy = add nuw nsw i32 %i.cj, 28
  %i.cz = sub nsw i32 %i.cy, %i.cn
  %i.da = zext nneg i32 %i.cz to i64              ; 3 uses
  %i.db = lshr i64 %i.cx, %i.da                   ; 3 uses
  %i.dc = zext nneg i32 %i.w to i64               ; 2 uses
  %12 = zext i32 %i.ab to i64                     ; 2 uses
  %i.dd = mul nuw nsw i64 %i.ct, %i.dc
  %i.de = mul nuw i64 %i.ct, %12
  %13 = mul nuw nsw i64 %i.cr, %i.dc
  %14 = mul nuw i64 %i.cr, %12
  %i.df = lshr i64 %i.dd, 32
  %15 = lshr i64 %i.de, 32
  %16 = add nuw nsw i64 %i.df, %13
  %17 = add nuw i64 %15, %14
  %18 = lshr i64 %16, %i.da
  %i.dg = lshr i64 %17, %i.da
  %19 = trunc i64 %18 to i32                      ; 4 uses
  %.not.i22 = icmp eq i32 %i.cj, 0
  %i.dh = trunc i64 %i.dg to i32                  ; 5 uses
  %.pre.i = add i32 %19, -1                       ; 2 uses
  br i1 %.not.i22, label %.thread176.thread232.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.di = udiv i32 %.pre.i, 10
  %i.dj = udiv i32 %i.dh, 10
  %.not162.i = icmp samesign ugt i32 %i.di, %i.dj
  br i1 %.not162.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dk = sub nsw i32 1, %i.ck                    ; 2 uses
  %i.dl = mul nsw i32 %i.dk, 1217359
  %i.dm = lshr i32 %i.dl, 19
  %i.dn = zext i32 %i.dk to i64
  %i.do = getelementptr inbounds nuw [8 x i8], ptr @FLOAT_POW5_SPLIT, i64 %i.dn
  %i.dp = load i64, ptr %i.do, align 8            ; 2 uses
  %i.dq = lshr i64 %i.dp, 32
  %i.dr = and i64 %i.dp, 4294967295
  %i.ds = mul nuw nsw i64 %i.dr, %i.cs
  %i.dt = mul nuw nsw i64 %i.dq, %i.cs
  %i.du = lshr i64 %i.ds, 32
  %i.dv = add nuw nsw i64 %i.du, %i.dt
  %i.dw = add nuw nsw i32 %i.cj, 27
  %i.dx = sub nsw i32 %i.dw, %i.dm
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = lshr i64 %i.dv, %i.dy
  %i.ea = trunc i64 %i.dz to i32
  %i.eb = urem i32 %i.ea, 10
  %i.ec = trunc nuw nsw i32 %i.eb to i8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.1148.i = phi i8 [ %i.ec, %bb.s ], [ 0, %bb.r ] ; 4 uses
  %i.ed = icmp eq i32 %i.cj, 1
  br i1 %i.ed, label %.thread176.thread232.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ee = icmp samesign ult i32 %i.ci, 32505856
  br i1 %i.ee, label %.split.i, label %.thread176.thread.i

.split.i:                                         ; preds = %bb.u
  %i.ef = add nsw i32 %i.cj, -1
  %notmask.i.i = shl nsw i32 -1, %i.ef
  %i.eg = xor i32 %notmask.i.i, -1
  %i.eh = and i32 %i.v, %i.eg
  %i.ei = icmp eq i32 %i.eh, 0
  %.0124245.i = trunc i64 %i.db to i32            ; 2 uses
  br i1 %i.ei, label %.preheader.i, label %.preheader183.i

.thread176.thread.i:                              ; preds = %bb.u, %multipleOfPowerOf5.exit173.i, %bb.o
  %.2149.ph.i = phi i8 [ %.1148.i, %bb.u ], [ %.0147175.i, %multipleOfPowerOf5.exit173.i ], [ %.0147.i, %bb.o ]
  %.0139.ph.i = phi i32 [ %i.ck, %bb.u ], [ %i.ae, %multipleOfPowerOf5.exit173.i ], [ %i.ae, %bb.o ]
  %.0134.ph.i = phi i32 [ %i.dh, %bb.u ], [ %i.az, %multipleOfPowerOf5.exit173.i ], [ %i.az, %bb.o ]
  %.2131.ph.i = phi i32 [ %19, %bb.u ], [ %i.ch, %multipleOfPowerOf5.exit173.i ], [ %11, %bb.o ]
  %.0124.in.ph.i = phi i64 [ %i.db, %bb.u ], [ %i.av, %multipleOfPowerOf5.exit173.i ], [ %i.av, %bb.o ]
  %.0124222.i = trunc i64 %.0124.in.ph.i to i32
  br label %.preheader183.i

.thread176.thread232.i:                           ; preds = %bb.t, %bb.q
  %.2149.ph230.i = phi i8 [ %.1148.i, %bb.t ], [ 0, %bb.q ]
  %.0124239.i = trunc i64 %i.db to i32
  br label %.preheader.i

.thread176.i:                                     ; preds = %.lr.ph.i.i.i
  %.not256.i = icmp ult i32 %i.ca, %i.ae
  %.0124.i = trunc i64 %i.av to i32               ; 2 uses
  br i1 %.not256.i, label %.preheader183.i, label %.preheader.i

.preheader183.i:                                  ; preds = %.thread176.i, %.thread176.thread.i, %.split.i
  %.0124228.i = phi i32 [ %.0124222.i, %.thread176.thread.i ], [ %.0124.i, %.thread176.i ], [ %.0124245.i, %.split.i ] ; 2 uses
  %.2131227.i = phi i32 [ %.2131.ph.i, %.thread176.thread.i ], [ %11, %.thread176.i ], [ %19, %.split.i ]
  %.0134226.i = phi i32 [ %.0134.ph.i, %.thread176.thread.i ], [ %i.az, %.thread176.i ], [ %i.dh, %.split.i ] ; 2 uses
  %.0139225.i = phi i32 [ %.0139.ph.i, %.thread176.thread.i ], [ %i.ae, %.thread176.i ], [ %i.ck, %.split.i ]
  %.2149223.i = phi i8 [ %.2149.ph.i, %.thread176.thread.i ], [ %.0147175.i, %.thread176.i ], [ %.1148.i, %.split.i ]
  %20 = insertelement <2 x i32> poison, i32 %.2131227.i, i64 0
  %21 = insertelement <2 x i32> %20, i32 %.0134226.i, i64 1
  %22 = udiv <2 x i32> %21, splat (i32 10)        ; 3 uses
  %23 = extractelement <2 x i32> %22, i64 0
  %24 = extractelement <2 x i32> %22, i64 1
  %i.ej = icmp samesign ugt i32 %23, %24
  br i1 %i.ej, label %.lr.ph.i, label %bb.v

.preheader.i:                                     ; preds = %.thread176.i, %.thread176.thread232.i, %.split.i
  %.0124244.i = phi i32 [ %.0124239.i, %.thread176.thread232.i ], [ %.0124.i, %.thread176.i ], [ %.0124245.i, %.split.i ] ; 2 uses
  %.2131243.i = phi i32 [ %.pre.i, %.thread176.thread232.i ], [ %11, %.thread176.i ], [ %19, %.split.i ]
  %.0134242.i = phi i32 [ %i.dh, %.thread176.thread232.i ], [ %i.az, %.thread176.i ], [ %i.dh, %.split.i ] ; 2 uses
  %.0139241.i = phi i32 [ %i.ck, %.thread176.thread232.i ], [ %i.ae, %.thread176.i ], [ %i.ck, %.split.i ]
  %.2149240.i = phi i8 [ %.2149.ph230.i, %.thread176.thread232.i ], [ %.0147175.i, %.thread176.i ], [ %.1148.i, %.split.i ] ; 2 uses
  %25 = insertelement <2 x i32> poison, i32 %.2131243.i, i64 0
  %26 = insertelement <2 x i32> %25, i32 %.0134242.i, i64 1
  %27 = udiv <2 x i32> %26, splat (i32 10)        ; 3 uses
  %28 = extractelement <2 x i32> %27, i64 0
  %29 = extractelement <2 x i32> %27, i64 1
  %i.ek = icmp samesign ugt i32 %28, %29
  br i1 %i.ek, label %.lr.ph195.i, label %._crit_edge196.i

.lr.ph195.i:                                      ; preds = %.preheader.i, %.lr.ph195.i
  %i.el = phi i32 [ %i.er, %.lr.ph195.i ], [ 0, %.preheader.i ]
  %.0122194.i = phi i32 [ %i.eq, %.lr.ph195.i ], [ %.0124244.i, %.preheader.i ] ; 2 uses
  %.3144192.i = phi i1 [ %i.en, %.lr.ph195.i ], [ true, %.preheader.i ]
  %.3150191.i = phi i8 [ %i.ep, %.lr.ph195.i ], [ %.2149240.i, %.preheader.i ]
  %30 = phi <2 x i32> [ %31, %.lr.ph195.i ], [ %27, %.preheader.i ] ; 2 uses
  %i.em = icmp eq i8 %.3150191.i, 0
  %i.en = select i1 %i.em, i1 %.3144192.i, i1 false ; 2 uses
  %i.eo = urem i32 %.0122194.i, 10
  %i.ep = trunc nuw nsw i32 %i.eo to i8           ; 2 uses
  %i.eq = udiv i32 %.0122194.i, 10                ; 2 uses
  %i.er = add i32 %i.el, 1                        ; 2 uses
  %31 = udiv <2 x i32> %30, splat (i32 10)        ; 3 uses
  %32 = extractelement <2 x i32> %31, i64 0
  %33 = extractelement <2 x i32> %31, i64 1
  %i.es = icmp samesign ugt i32 %32, %33
  br i1 %i.es, label %.lr.ph195.i, label %._crit_edge196.loopexit.i, !llvm.loop !4

._crit_edge196.loopexit.i:                        ; preds = %.lr.ph195.i
  %i.et = xor i1 %i.en, true
  %34 = extractelement <2 x i32> %30, i64 1
  br label %._crit_edge196.i

._crit_edge196.i:                                 ; preds = %._crit_edge196.loopexit.i, %.preheader.i
  %.3150.lcssa.i = phi i8 [ %.2149240.i, %.preheader.i ], [ %i.ep, %._crit_edge196.loopexit.i ] ; 2 uses
  %.3144.lcssa.i = phi i1 [ false, %.preheader.i ], [ %i.et, %._crit_edge196.loopexit.i ]
  %.1135.lcssa.i = phi i32 [ %.0134242.i, %.preheader.i ], [ %34, %._crit_edge196.loopexit.i ]
  %.1125.lcssa.i = phi i32 [ %.0124244.i, %.preheader.i ], [ %i.eq, %._crit_edge196.loopexit.i ] ; 3 uses
  %.0122.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %i.er, %._crit_edge196.loopexit.i ]
  %i.eu = icmp ne i8 %.3150.lcssa.i, 5
  %or.cond4.i = select i1 %.3144.lcssa.i, i1 true, i1 %i.eu
  %i.ev = trunc i32 %.1125.lcssa.i to i1
  %or.cond.i23 = select i1 %or.cond4.i, i1 true, i1 %i.ev
  %i.ew = icmp eq i32 %.1125.lcssa.i, %.1135.lcssa.i
  %i.ex = icmp samesign ugt i8 %.3150.lcssa.i, 4
  %i.ey = select i1 %or.cond.i23, i1 %i.ex, i1 false
  %i.ez = select i1 %i.ew, i1 true, i1 %i.ey
  br label %bb.w

.lr.ph.i:                                         ; preds = %.preheader183.i, %.lr.ph.i
  %i.fa = phi i32 [ %i.fd, %.lr.ph.i ], [ 0, %.preheader183.i ]
  %.3186.i = phi i32 [ %i.fb, %.lr.ph.i ], [ %.0124228.i, %.preheader183.i ] ; 2 uses
  %35 = phi <2 x i32> [ %36, %.lr.ph.i ], [ %22, %.preheader183.i ] ; 2 uses
  %i.fb = udiv i32 %.3186.i, 10                   ; 2 uses
  %i.fc = urem i32 %.3186.i, 10
  %i.fd = add i32 %i.fa, 1                        ; 2 uses
  %36 = udiv <2 x i32> %35, splat (i32 10)        ; 3 uses
  %37 = extractelement <2 x i32> %36, i64 0
  %38 = extractelement <2 x i32> %36, i64 1
  %i.fe = icmp samesign ugt i32 %37, %38
  br i1 %i.fe, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !6

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.ff = trunc nuw nsw i32 %i.fc to i8
  %39 = extractelement <2 x i32> %35, i64 1
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge.i, %.preheader183.i
  %.7.lcssa.i = phi i8 [ %i.ff, %._crit_edge.i ], [ %.2149223.i, %.preheader183.i ]
  %.4138.lcssa.i = phi i32 [ %39, %._crit_edge.i ], [ %.0134226.i, %.preheader183.i ]
  %.4128.lcssa.i = phi i32 [ %i.fb, %._crit_edge.i ], [ %.0124228.i, %.preheader183.i ] ; 2 uses
  %.3.lcssa.i = phi i32 [ %i.fd, %._crit_edge.i ], [ 0, %.preheader183.i ]
  %i.fg = icmp eq i32 %.4128.lcssa.i, %.4138.lcssa.i
  %i.fh = icmp samesign ugt i8 %.7.lcssa.i, 4
  %i.fi = select i1 %i.fg, i1 true, i1 %i.fh
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge196.i
  %.sink255.i = phi i1 [ %i.fi, %bb.v ], [ %i.ez, %._crit_edge196.i ]
  %.4128.lcssa.sink.i = phi i32 [ %.4128.lcssa.i, %bb.v ], [ %.1125.lcssa.i, %._crit_edge196.i ]
  %.0139224.i = phi i32 [ %.0139225.i, %bb.v ], [ %.0139241.i, %._crit_edge196.i ]
  %.4.i = phi i32 [ %.3.lcssa.i, %bb.v ], [ %.0122.lcssa.i, %._crit_edge196.i ]
  %i.fj = zext i1 %.sink255.i to i32
  %i.fk = add i32 %.4128.lcssa.sink.i, %i.fj      ; 3 uses
  %i.fl = add i32 %.4.i, %.0139224.i              ; 3 uses
  %i.fm = zext i32 %i.fl to i64
  %i.fn = shl nuw i64 %i.fm, 32                   ; 2 uses
  %i.fo = icmp ugt i32 %i.fk, 99999999
  br i1 %i.fo, label %decimalLength.exit.i, label %bb.x

bb.x:                                             ; preds = %.thread, %bb.w
  %.sroa.3.0.extract.trunc.i82 = phi i32 [ 0, %.thread ], [ %i.fl, %bb.w ] ; 7 uses
  %.sroa.0.080 = phi i32 [ %i.q, %.thread ], [ %i.fk, %bb.w ] ; 14 uses
  %.sroa.5.078 = phi i64 [ 0, %.thread ], [ %i.fn, %bb.w ] ; 7 uses
  %i.fp = icmp samesign ugt i32 %.sroa.0.080, 9999999
  br i1 %i.fp, label %decimalLength.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fq = icmp samesign ugt i32 %.sroa.0.080, 999999
  br i1 %i.fq, label %decimalLength.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fr = icmp samesign ugt i32 %.sroa.0.080, 99999
  br i1 %i.fr, label %decimalLength.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fs = icmp samesign ugt i32 %.sroa.0.080, 9999
  br i1 %i.fs, label %decimalLength.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ft = icmp samesign ugt i32 %.sroa.0.080, 999
  br i1 %i.ft, label %decimalLength.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fu = icmp samesign ugt i32 %.sroa.0.080, 99
  br i1 %i.fu, label %decimalLength.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fv = icmp samesign ugt i32 %.sroa.0.080, 9
  %..i.i = select i1 %i.fv, i32 2, i32 1
  br label %decimalLength.exit.i

decimalLength.exit.i:                             ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w
  %.sroa.3.0.extract.trunc.i83 = phi i32 [ %.sroa.3.0.extract.trunc.i82, %bb.ac ], [ %i.fl, %bb.w ], [ %.sroa.3.0.extract.trunc.i82, %bb.x ], [ %.sroa.3.0.extract.trunc.i82, %bb.y ], [ %.sroa.3.0.extract.trunc.i82, %bb.z ], [ %.sroa.3.0.extract.trunc.i82, %bb.aa ], [ %.sroa.3.0.extract.trunc.i82, %bb.ab ], [ %.sroa.3.0.extract.trunc.i82, %bb.ad ] ; 2 uses
  %.sroa.0.081 = phi i32 [ %.sroa.0.080, %bb.ac ], [ %i.fk, %bb.w ], [ %.sroa.0.080, %bb.x ], [ %.sroa.0.080, %bb.y ], [ %.sroa.0.080, %bb.z ], [ %.sroa.0.080, %bb.aa ], [ %.sroa.0.080, %bb.ab ], [ %.sroa.0.080, %bb.ad ] ; 5 uses
  %.sroa.5.079 = phi i64 [ %.sroa.5.078, %bb.ac ], [ %i.fn, %bb.w ], [ %.sroa.5.078, %bb.x ], [ %.sroa.5.078, %bb.y ], [ %.sroa.5.078, %bb.z ], [ %.sroa.5.078, %bb.aa ], [ %.sroa.5.078, %bb.ab ], [ %.sroa.5.078, %bb.ad ] ; 3 uses
  %.0.i.i = phi i32 [ 3, %bb.ac ], [ 9, %bb.w ], [ 8, %bb.x ], [ 7, %bb.y ], [ 6, %bb.z ], [ 5, %bb.aa ], [ 4, %bb.ab ], [ %..i.i, %bb.ad ] ; 7 uses
  %i.fw = add i32 %.0.i.i, %.sroa.3.0.extract.trunc.i83 ; 10 uses
  %i.fx = add i32 %i.fw, -1                       ; 2 uses
  br i1 %i.b, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %decimalLength.exit.i
  store i8 45, ptr %1, align 1
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %decimalLength.exit.i
  %.080.i = phi i32 [ 1, %bb.ae ], [ 0, %decimalLength.exit.i ] ; 6 uses
  %i.fy = add i32 %i.fw, 3
  %or.cond.i24 = icmp ult i32 %i.fy, 10
  br i1 %or.cond.i24, label %bb.ag, label %bb.ay

bb.ag:                                            ; preds = %bb.af
  %i.fz = zext nneg i32 %.080.i to i64
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 %i.fz ; 10 uses
  %i.gb = icmp slt i32 %i.fw, 1
  br i1 %i.gb, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.gc = sub nsw i32 2, %i.fw
  br label %.sink.split.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.gd = icmp slt i64 %.sroa.5.079, 0
  br i1 %i.gd, label %bb.aj, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.ai, %bb.ah
  %.sink.i.i = phi i64 [ 3472328296227679792, %bb.ah ], [ 3472328296227680304, %bb.ai ]
  %.0.ph.i.i = phi i32 [ %i.gc, %bb.ah ], [ 0, %bb.ai ]
  store i64 %.sink.i.i, ptr %i.ga, align 1
  br label %bb.aj

bb.aj:                                            ; preds = %.sink.split.i.i, %bb.ai
  %.0.i94.i = phi i32 [ 1, %bb.ai ], [ %.0.ph.i.i, %.sink.split.i.i ] ; 5 uses
  %i.ge = icmp ugt i32 %.sroa.0.081, 9999
  br i1 %i.ge, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.aj
  %i.gf = zext nneg i32 %.0.i94.i to i64
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.gf
  %i.gh = zext nneg i32 %.0.i.i to i64
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.gh
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %.lr.ph.i.i
  %.06979.i.i = phi i32 [ %.sroa.0.081, %.lr.ph.i.i ], [ %i.gj, %bb.ak ] ; 3 uses
  %.07178.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.ha, %bb.ak ] ; 2 uses
  %i.gj = udiv i32 %.06979.i.i, 10000             ; 3 uses
  %.neg.i.i = mul i32 %i.gj, -10000
  %i.gk = add i32 %.neg.i.i, %.06979.i.i          ; 2 uses
  %i.gl = urem i32 %i.gk, 100
  %i.gm = shl nuw nsw i32 %i.gl, 1
  %i.gn = udiv i32 %i.gk, 100
  %i.go = shl nuw nsw i32 %i.gn, 1
  %i.gp = zext i32 %.07178.i.i to i64
  %i.gq = sub nsw i64 0, %i.gp
  %i.gr = getelementptr inbounds i8, ptr %i.gi, i64 %i.gq ; 2 uses
  %i.gs = getelementptr inbounds i8, ptr %i.gr, i64 -2
  %i.gt = zext nneg i32 %i.gm to i64
  %i.gu = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.gt
  %i.gv = load i16, ptr %i.gu, align 2
  store i16 %i.gv, ptr %i.gs, align 1
  %i.gw = getelementptr inbounds i8, ptr %i.gr, i64 -4
  %i.gx = zext nneg i32 %i.go to i64
  %i.gy = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.gx
  %i.gz = load i16, ptr %i.gy, align 2
  store i16 %i.gz, ptr %i.gw, align 1
  %i.ha = add i32 %.07178.i.i, 4                  ; 2 uses
  %i.hb = icmp ugt i32 %.06979.i.i, 99999999
  br i1 %i.hb, label %bb.ak, label %._crit_edge.i.i, !llvm.loop !7

._crit_edge.i.i:                                  ; preds = %bb.ak, %bb.aj
  %.071.lcssa.i.i = phi i32 [ 0, %bb.aj ], [ %i.ha, %bb.ak ] ; 3 uses
  %.069.lcssa.i.i = phi i32 [ %.sroa.0.081, %bb.aj ], [ %i.gj, %bb.ak ] ; 3 uses
  %i.hc = icmp samesign ugt i32 %.069.lcssa.i.i, 99
  br i1 %i.hc, label %bb.al, label %bb.am

bb.al:                                            ; preds = %._crit_edge.i.i
  %.lhs.trunc.i.i = trunc nuw i32 %.069.lcssa.i.i to i16 ; 2 uses
  %i.hd = urem i16 %.lhs.trunc.i.i, 100
  %i.he = shl nuw nsw i16 %i.hd, 1
  %i.hf = udiv i16 %.lhs.trunc.i.i, 100
  %.zext77.i.i = zext nneg i16 %i.hf to i32
  %i.hg = zext nneg i32 %.0.i94.i to i64
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.hg
  %i.hi = zext nneg i32 %.0.i.i to i64
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.hi
  %i.hk = zext i32 %.071.lcssa.i.i to i64
  %i.hl = sub nsw i64 0, %i.hk
  %i.hm = getelementptr inbounds i8, ptr %i.hj, i64 %i.hl
  %i.hn = getelementptr inbounds i8, ptr %i.hm, i64 -2
  %i.ho = zext nneg i16 %i.he to i64
  %i.hp = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.ho
  %i.hq = load i16, ptr %i.hp, align 2
  store i16 %i.hq, ptr %i.hn, align 1
  %i.hr = or disjoint i32 %.071.lcssa.i.i, 2
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %._crit_edge.i.i
  %.172.i.i = phi i32 [ %i.hr, %bb.al ], [ %.071.lcssa.i.i, %._crit_edge.i.i ]
  %.170.i.i = phi i32 [ %.zext77.i.i, %bb.al ], [ %.069.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.hs = icmp samesign ugt i32 %.170.i.i, 9
  br i1 %i.hs, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ht = shl nuw nsw i32 %.170.i.i, 1
  %i.hu = zext nneg i32 %.0.i94.i to i64
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.hu
  %i.hw = zext nneg i32 %.0.i.i to i64
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.hw
  %i.hy = zext i32 %.172.i.i to i64
  %i.hz = sub nsw i64 0, %i.hy
  %i.ia = getelementptr inbounds i8, ptr %i.hx, i64 %i.hz
  %i.ib = getelementptr inbounds i8, ptr %i.ia, i64 -2
  %i.ic = zext nneg i32 %i.ht to i64
  %i.id = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.ic
  %i.ie = load i16, ptr %i.id, align 2
  store i16 %i.ie, ptr %i.ib, align 1
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.if = trunc nuw nsw i32 %.170.i.i to i8
  %i.ig = or disjoint i8 %i.if, 48
  %i.ih = zext nneg i32 %.0.i94.i to i64
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.ih
  store i8 %i.ig, ptr %i.ii, align 1
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.ij = icmp eq i32 %.0.i94.i, 1
  br i1 %i.ij, label %bb.aq, label %bb.ax

bb.aq:                                            ; preds = %bb.ap
  %i.ik = and i32 %i.fw, 4
  %.not.i.i = icmp eq i32 %i.ik, 0
  br i1 %.not.i.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.il = getelementptr inbounds nuw i8, ptr %i.ga, i64 1
  %i.im = load i32, ptr %i.il, align 1
  store i32 %i.im, ptr %i.ga, align 1
end_hunk_0
