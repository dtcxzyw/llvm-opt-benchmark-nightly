Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/f2s?download=true
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
  br label %bb.w

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
  %i.al = zext nneg i32 %i.v to i64               ; 4 uses
  %i.am = add nsw i32 %i.ah, 27
  %i.an = add nsw i32 %i.am, %i.ag
  %i.ao = zext nneg i32 %i.an to i64              ; 3 uses
  %i.ap = zext nneg i32 %i.w to i64               ; 2 uses
  %i.aq = zext i32 %i.ab to i64                   ; 2 uses
  %i.ar = lshr i64 %i.ak, 32                      ; 3 uses
  %i.as = and i64 %i.ak, 4294967295               ; 3 uses
  %i.at = mul nuw nsw i64 %i.as, %i.al
  %i.au = mul nuw nsw i64 %i.ar, %i.al
  %i.av = lshr i64 %i.at, 32
  %i.aw = add nuw nsw i64 %i.av, %i.au
  %i.ax = lshr i64 %i.aw, %i.ao
  %2 = trunc i64 %i.ax to i32                     ; 4 uses
  %i.ay = mul nuw nsw i64 %i.as, %i.ap
  %i.az = mul nuw nsw i64 %i.ar, %i.ap
  %i.ba = lshr i64 %i.ay, 32
  %i.bb = add nuw nsw i64 %i.ba, %i.az
  %i.bc = lshr i64 %i.bb, %i.ao
  %i.bd = trunc i64 %i.bc to i32                  ; 5 uses
  %i.be = mul nuw i64 %i.as, %i.aq
  %i.bf = mul nuw i64 %i.ar, %i.aq
  %i.bg = lshr i64 %i.be, 32
  %i.bh = add nuw i64 %i.bg, %i.bf
  %i.bi = lshr i64 %i.bh, %i.ao
  %i.bj = trunc i64 %i.bi to i32                  ; 5 uses
  %.not163.i = icmp eq i32 %i.ae, 0
  br i1 %.not163.i, label %.thread.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bk = add i32 %i.bd, -1
  %i.bl = udiv i32 %i.bk, 10
  %i.bm = udiv i32 %i.bj, 10
  %.not164.i = icmp samesign ugt i32 %i.bl, %i.bm
  br i1 %.not164.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bn = add nsw i32 %i.ae, -1                   ; 2 uses
  %i.bo = mul nuw nsw i32 %i.bn, 1217359
  %i.bp = lshr i32 %i.bo, 19
  %i.bq = zext nneg i32 %i.bn to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr @FLOAT_POW5_INV_SPLIT, i64 %i.bq
  %i.bs = load i64, ptr %i.br, align 8            ; 2 uses
  %i.bt = lshr i64 %i.bs, 32
  %i.bu = and i64 %i.bs, 4294967295
  %i.bv = mul nuw nsw i64 %i.bu, %i.al
  %i.bw = mul nuw nsw i64 %i.bt, %i.al
  %i.bx = lshr i64 %i.bv, 32
  %i.by = add nuw nsw i64 %i.bx, %i.bw
  %i.bz = add nsw i32 %i.ah, 26
  %i.ca = add nsw i32 %i.bz, %i.bp
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = lshr i64 %i.by, %i.cb
  %i.cd = trunc i64 %i.cc to i32
  %i.ce = urem i32 %i.cd, 10
  %i.cf = trunc nuw nsw i32 %i.ce to i8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0124.i = phi i8 [ %i.cf, %bb.n ], [ 0, %bb.m ] ; 2 uses
  %i.cg = icmp samesign ult i32 %.0.i21, 34
  br i1 %i.cg, label %.thread.i, label %.preheader.i

.thread.i:                                        ; preds = %bb.o, %bb.l
  %.0124175.i = phi i8 [ %.0124.i, %bb.o ], [ 0, %bb.l ] ; 3 uses
  %i.ch = urem i32 %i.v, 5
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %.lr.ph.i.i.i, label %bb.p

.lr.ph.i.i.i:                                     ; preds = %.thread.i, %.lr.ph.i.i.i
  %.0716.i.i.i = phi i32 [ %i.ck, %.lr.ph.i.i.i ], [ 0, %.thread.i ]
  %.0815.i.i.i = phi i32 [ %i.cj, %.lr.ph.i.i.i ], [ %i.v, %.thread.i ]
  %i.cj = udiv i32 %.0815.i.i.i, 5                ; 2 uses
  %i.ck = add i32 %.0716.i.i.i, 1                 ; 2 uses
  %i.cl = urem i32 %i.cj, 5
  %.not.i.i.i = icmp eq i32 %i.cl, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %multipleOfPowerOf5.exit.i

multipleOfPowerOf5.exit.i:                        ; preds = %.lr.ph.i.i.i
  %.not184.i = icmp ult i32 %i.ck, %i.ae
  br i1 %.not184.i, label %.preheader.i, label %.preheader183.i

bb.p:                                             ; preds = %.thread.i
  %i.cm = urem i32 %i.w, 5
  %.not14.i.i167.i = icmp eq i32 %i.cm, 0
  br i1 %.not14.i.i167.i, label %.lr.ph.i.i169.i, label %multipleOfPowerOf5.exit173.i

.lr.ph.i.i169.i:                                  ; preds = %bb.p, %.lr.ph.i.i169.i
  %.0716.i.i170.i = phi i32 [ %i.co, %.lr.ph.i.i169.i ], [ 0, %bb.p ]
  %.0815.i.i171.i = phi i32 [ %i.cn, %.lr.ph.i.i169.i ], [ %i.w, %bb.p ]
  %i.cn = udiv i32 %.0815.i.i171.i, 5             ; 2 uses
  %i.co = add i32 %.0716.i.i170.i, 1              ; 2 uses
  %i.cp = urem i32 %i.cn, 5
  %.not.i.i172.i = icmp eq i32 %i.cp, 0
  br i1 %.not.i.i172.i, label %.lr.ph.i.i169.i, label %multipleOfPowerOf5.exit173.i

multipleOfPowerOf5.exit173.i:                     ; preds = %.lr.ph.i.i169.i, %bb.p
  %.07.lcssa.i.i168.i = phi i32 [ 0, %bb.p ], [ %i.co, %.lr.ph.i.i169.i ]
  %i.cq = icmp uge i32 %.07.lcssa.i.i168.i, %i.ae
  %.neg165.i = sext i1 %i.cq to i32
  %i.cr = add i32 %.neg165.i, %i.bd
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.a, %10, %multipleOfPowerOf5.exit173.i, %multipleOfPowerOf5.exit.i, %bb.o
  %.0136180.ph.i = phi i32 [ %i.cu, %.preheader.i.a ], [ %i.ae, %multipleOfPowerOf5.exit173.i ], [ %i.ae, %multipleOfPowerOf5.exit.i ], [ %i.ae, %bb.o ], [ %i.cu, %10 ]
  %.4152.ph.i = phi i32 [ %9, %.preheader.i.a ], [ %2, %multipleOfPowerOf5.exit173.i ], [ %2, %multipleOfPowerOf5.exit.i ], [ %2, %bb.o ], [ %9, %10 ] ; 2 uses
  %.5147.ph.i = phi i32 [ %i.dt, %.preheader.i.a ], [ %i.cr, %multipleOfPowerOf5.exit173.i ], [ %i.bd, %multipleOfPowerOf5.exit.i ], [ %i.bd, %bb.o ], [ %i.dt, %10 ]
  %.4141.ph.i = phi i32 [ %i.dz, %.preheader.i.a ], [ %i.bj, %multipleOfPowerOf5.exit173.i ], [ %i.bj, %multipleOfPowerOf5.exit.i ], [ %i.bj, %bb.o ], [ %i.dz, %10 ] ; 2 uses
  %.7.ph.i = phi i8 [ %.1125.i, %.preheader.i.a ], [ %.0124175.i, %multipleOfPowerOf5.exit173.i ], [ %.0124175.i, %multipleOfPowerOf5.exit.i ], [ %.0124.i, %bb.o ], [ %.1125.i, %10 ]
  %3 = insertelement <2 x i32> poison, i32 %.5147.ph.i, i64 0
  %4 = insertelement <2 x i32> %3, i32 %.4141.ph.i, i64 1
  %5 = udiv <2 x i32> %4, splat (i32 10)          ; 3 uses
  %6 = extractelement <2 x i32> %5, i64 0
  %7 = extractelement <2 x i32> %5, i64 1
  %8 = icmp samesign ugt i32 %6, %7
  br i1 %8, label %.lr.ph.i, label %bb.u

bb.q:                                             ; preds = %bb.k
  %i.cs = mul nsw i32 %.0.i21, -732923            ; 2 uses
  %i.ct = lshr i32 %i.cs, 20                      ; 6 uses
  %i.cu = add nsw i32 %i.ct, %.0.i21              ; 8 uses
  %i.cv = sub nsw i32 0, %i.cu
  %i.cw = mul nsw i32 %i.cu, -1217359
  %i.cx = lshr i32 %i.cw, 19
  %i.cy = zext i32 %i.cv to i64
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr @FLOAT_POW5_SPLIT, i64 %i.cy
  %i.da = load i64, ptr %i.cz, align 8            ; 2 uses
  %i.db = zext nneg i32 %i.v to i64               ; 4 uses
  %i.dc = add nuw nsw i32 %i.ct, 28
  %i.dd = sub nsw i32 %i.dc, %i.cx
  %i.de = zext nneg i32 %i.dd to i64              ; 3 uses
  %i.df = zext nneg i32 %i.w to i64               ; 2 uses
  %i.dg = zext i32 %i.ab to i64                   ; 2 uses
  %.not.i22 = icmp eq i32 %i.ct, 0
  %i.dh = lshr i64 %i.da, 32                      ; 3 uses
  %i.di = and i64 %i.da, 4294967295               ; 3 uses
  %i.dj = mul nuw nsw i64 %i.di, %i.db
  %i.dk = mul nuw nsw i64 %i.dh, %i.db
  %i.dl = lshr i64 %i.dj, 32
  %i.dm = add nuw nsw i64 %i.dl, %i.dk
  %i.dn = lshr i64 %i.dm, %i.de
  %9 = trunc i64 %i.dn to i32                     ; 5 uses
  %i.do = mul nuw nsw i64 %i.di, %i.df
  %i.dp = mul nuw nsw i64 %i.dh, %i.df
  %i.dq = lshr i64 %i.do, 32
  %i.dr = add nuw nsw i64 %i.dq, %i.dp
  %i.ds = lshr i64 %i.dr, %i.de
  %i.dt = trunc i64 %i.ds to i32                  ; 4 uses
  %i.du = mul nuw i64 %i.di, %i.dg
  %i.dv = mul nuw i64 %i.dh, %i.dg
  %i.dw = lshr i64 %i.du, 32
  %i.dx = add nuw i64 %i.dw, %i.dv
  %i.dy = lshr i64 %i.dx, %i.de
  %i.dz = trunc i64 %i.dy to i32                  ; 6 uses
  %.pre.i = add i32 %i.dt, -1                     ; 3 uses
  br i1 %.not.i22, label %.preheader183.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ea = udiv i32 %.pre.i, 10
  %i.eb = udiv i32 %i.dz, 10
  %.not162.i = icmp samesign ugt i32 %i.ea, %i.eb
  br i1 %.not162.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ec = sub nsw i32 1, %i.cu                    ; 2 uses
  %i.ed = mul nuw nsw i32 %i.ec, 1217359
  %i.ee = lshr i32 %i.ed, 19
  %i.ef = zext i32 %i.ec to i64
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr @FLOAT_POW5_SPLIT, i64 %i.ef
  %i.eh = load i64, ptr %i.eg, align 8            ; 2 uses
  %i.ei = lshr i64 %i.eh, 32
  %i.ej = and i64 %i.eh, 4294967295
  %i.ek = mul nuw nsw i64 %i.ej, %i.db
  %i.el = mul nuw nsw i64 %i.ei, %i.db
  %i.em = lshr i64 %i.ek, 32
  %i.en = add nuw nsw i64 %i.em, %i.el
  %i.eo = add nuw nsw i32 %i.ct, 27
  %i.ep = sub nsw i32 %i.eo, %i.ee
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = lshr i64 %i.en, %i.eq
  %i.es = trunc i64 %i.er to i32
  %i.et = urem i32 %i.es, 10
  %i.eu = trunc nuw nsw i32 %i.et to i8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.1125.i = phi i8 [ %i.eu, %bb.s ], [ 0, %bb.r ] ; 4 uses
  %i.ev = icmp eq i32 %i.ct, 1
  br i1 %i.ev, label %.preheader183.i, label %10

.preheader183.i:                                  ; preds = %.preheader.i.a, %bb.t, %bb.q, %multipleOfPowerOf5.exit.i
  %.0136181.ph.i = phi i32 [ %i.cu, %.preheader.i.a ], [ %i.ae, %multipleOfPowerOf5.exit.i ], [ %i.cu, %bb.t ], [ %i.cu, %bb.q ]
  %.1149.ph.i = phi i32 [ %9, %.preheader.i.a ], [ %2, %multipleOfPowerOf5.exit.i ], [ %9, %bb.t ], [ %9, %bb.q ] ; 2 uses
  %.3145.ph.i = phi i32 [ %i.dt, %.preheader.i.a ], [ %i.bd, %multipleOfPowerOf5.exit.i ], [ %.pre.i, %bb.t ], [ %.pre.i, %bb.q ]
  %.1138.ph.i = phi i32 [ %i.dz, %.preheader.i.a ], [ %i.bj, %multipleOfPowerOf5.exit.i ], [ %i.dz, %bb.t ], [ %i.dz, %bb.q ] ; 2 uses
  %.3127.ph.i = phi i8 [ %.1125.i, %.preheader.i.a ], [ %.0124175.i, %multipleOfPowerOf5.exit.i ], [ %.1125.i, %bb.t ], [ 0, %bb.q ] ; 2 uses
  %i.ew = insertelement <2 x i32> poison, i32 %.3145.ph.i, i64 0
  %i.ex = insertelement <2 x i32> %i.ew, i32 %.1138.ph.i, i64 1
  %i.ey = udiv <2 x i32> %i.ex, splat (i32 10)    ; 3 uses
  %i.ez = extractelement <2 x i32> %i.ey, i64 0
  %i.fa = extractelement <2 x i32> %i.ey, i64 1
  %i.fb = icmp samesign ugt i32 %i.ez, %i.fa
  br i1 %i.fb, label %.lr.ph195.i, label %._crit_edge196.i

10:                                               ; preds = %bb.t
  %11 = icmp samesign ult i32 %i.cs, 32505856
  br i1 %11, label %.preheader.i.a, label %.preheader.i

.preheader.i.a:                                   ; preds = %10
  %12 = add nsw i32 %i.ct, -1
  %notmask.i.i = shl nsw i32 -1, %12
  %13 = xor i32 %notmask.i.i, -1
  %14 = and i32 %i.v, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %.preheader183.i, label %.preheader.i

.lr.ph195.i:                                      ; preds = %.preheader183.i, %.lr.ph195.i
  %.0122194.i = phi i32 [ %i.fh, %.lr.ph195.i ], [ 0, %.preheader183.i ]
  %.3127193.i = phi i8 [ %i.ff, %.lr.ph195.i ], [ %.3127.ph.i, %.preheader183.i ]
  %.3132192.i = phi i1 [ %16, %.lr.ph195.i ], [ true, %.preheader183.i ]
  %.1149191.i = phi i32 [ %i.fg, %.lr.ph195.i ], [ %.1149.ph.i, %.preheader183.i ] ; 2 uses
  %i.fc = phi <2 x i32> [ %i.fi, %.lr.ph195.i ], [ %i.ey, %.preheader183.i ] ; 2 uses
  %i.fd = icmp eq i8 %.3127193.i, 0
  %16 = and i1 %.3132192.i, %i.fd                 ; 2 uses
  %i.fe = urem i32 %.1149191.i, 10
  %i.ff = trunc nuw nsw i32 %i.fe to i8           ; 2 uses
  %i.fg = udiv i32 %.1149191.i, 10                ; 2 uses
  %i.fh = add i32 %.0122194.i, 1                  ; 2 uses
  %i.fi = udiv <2 x i32> %i.fc, splat (i32 10)    ; 3 uses
  %i.fj = extractelement <2 x i32> %i.fi, i64 0
  %i.fk = extractelement <2 x i32> %i.fi, i64 1
  %i.fl = icmp samesign ugt i32 %i.fj, %i.fk
  br i1 %i.fl, label %.lr.ph195.i, label %._crit_edge196.loopexit.i, !llvm.loop !4

._crit_edge196.loopexit.i:                        ; preds = %.lr.ph195.i
  %i.fm = xor i1 %16, true
  %i.fn = extractelement <2 x i32> %i.fc, i64 1
  br label %._crit_edge196.i

._crit_edge196.i:                                 ; preds = %._crit_edge196.loopexit.i, %.preheader183.i
  %.1149.lcssa.i = phi i32 [ %.1149.ph.i, %.preheader183.i ], [ %i.fg, %._crit_edge196.loopexit.i ] ; 3 uses
  %.1138.lcssa.i = phi i32 [ %.1138.ph.i, %.preheader183.i ], [ %i.fn, %._crit_edge196.loopexit.i ]
  %.3132.lcssa.i = phi i1 [ false, %.preheader183.i ], [ %i.fm, %._crit_edge196.loopexit.i ]
  %.3127.lcssa.i = phi i8 [ %.3127.ph.i, %.preheader183.i ], [ %i.ff, %._crit_edge196.loopexit.i ] ; 2 uses
  %.0122.lcssa.i = phi i32 [ 0, %.preheader183.i ], [ %i.fh, %._crit_edge196.loopexit.i ]
  %i.fo = icmp ne i8 %.3127.lcssa.i, 5
  %or.cond4.i = select i1 %.3132.lcssa.i, i1 true, i1 %i.fo
  %i.fp = trunc i32 %.1149.lcssa.i to i1
  %or.cond.i23 = select i1 %or.cond4.i, i1 true, i1 %i.fp
  %i.fq = icmp eq i32 %.1149.lcssa.i, %.1138.lcssa.i
  %i.fr = icmp samesign ugt i8 %.3127.lcssa.i, 4
  %i.fs = select i1 %or.cond.i23, i1 %i.fr, i1 false
  %i.ft = select i1 %i.fq, i1 true, i1 %i.fs
  br label %bb.v

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.3186.i = phi i32 [ %i.fx, %.lr.ph.i ], [ 0, %.preheader.i ]
  %.4152185.i = phi i32 [ %i.fv, %.lr.ph.i ], [ %.4152.ph.i, %.preheader.i ] ; 2 uses
  %i.fu = phi <2 x i32> [ %i.fy, %.lr.ph.i ], [ %5, %.preheader.i ] ; 2 uses
  %i.fv = udiv i32 %.4152185.i, 10                ; 2 uses
  %i.fw = urem i32 %.4152185.i, 10
  %i.fx = add i32 %.3186.i, 1                     ; 2 uses
  %i.fy = udiv <2 x i32> %i.fu, splat (i32 10)    ; 3 uses
  %i.fz = extractelement <2 x i32> %i.fy, i64 0
  %i.ga = extractelement <2 x i32> %i.fy, i64 1
  %i.gb = icmp samesign ugt i32 %i.fz, %i.ga
  br i1 %i.gb, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !5

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.gc = trunc nuw nsw i32 %i.fw to i8
  %i.gd = extractelement <2 x i32> %i.fu, i64 1
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge.i, %.preheader.i
  %.4152.lcssa.i = phi i32 [ %i.fv, %._crit_edge.i ], [ %.4152.ph.i, %.preheader.i ] ; 2 uses
  %.4141.lcssa.i = phi i32 [ %i.gd, %._crit_edge.i ], [ %.4141.ph.i, %.preheader.i ]
  %.7.lcssa.i = phi i8 [ %i.gc, %._crit_edge.i ], [ %.7.ph.i, %.preheader.i ]
  %.3.lcssa.i = phi i32 [ %i.fx, %._crit_edge.i ], [ 0, %.preheader.i ]
  %i.ge = icmp eq i32 %.4152.lcssa.i, %.4141.lcssa.i
  %i.gf = icmp samesign ugt i8 %.7.lcssa.i, 4
  %i.gg = select i1 %i.ge, i1 true, i1 %i.gf
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge196.i
  %.sink256.i = phi i1 [ %i.gg, %bb.u ], [ %i.ft, %._crit_edge196.i ]
  %.4152.lcssa.sink.i = phi i32 [ %.4152.lcssa.i, %bb.u ], [ %.1149.lcssa.i, %._crit_edge196.i ]
  %.0136226.i = phi i32 [ %.0136180.ph.i, %bb.u ], [ %.0136181.ph.i, %._crit_edge196.i ]
  %.4.i = phi i32 [ %.3.lcssa.i, %bb.u ], [ %.0122.lcssa.i, %._crit_edge196.i ]
  %i.gh = zext i1 %.sink256.i to i32
  %i.gi = add i32 %.4152.lcssa.sink.i, %i.gh      ; 3 uses
  %i.gj = add i32 %.4.i, %.0136226.i              ; 3 uses
  %i.gk = zext i32 %i.gj to i64
  %i.gl = shl nuw i64 %i.gk, 32                   ; 2 uses
  %i.gm = icmp ugt i32 %i.gi, 99999999
  br i1 %i.gm, label %decimalLength.exit.i, label %bb.w

bb.w:                                             ; preds = %.thread, %bb.v
  %.sroa.3.0.extract.trunc.i82 = phi i32 [ 0, %.thread ], [ %i.gj, %bb.v ] ; 7 uses
  %.sroa.0.080 = phi i32 [ %i.q, %.thread ], [ %i.gi, %bb.v ] ; 14 uses
  %.sroa.5.078 = phi i64 [ 0, %.thread ], [ %i.gl, %bb.v ] ; 7 uses
  %i.gn = icmp samesign ugt i32 %.sroa.0.080, 9999999
  br i1 %i.gn, label %decimalLength.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.go = icmp samesign ugt i32 %.sroa.0.080, 999999
  br i1 %i.go, label %decimalLength.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gp = icmp samesign ugt i32 %.sroa.0.080, 99999
  br i1 %i.gp, label %decimalLength.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gq = icmp samesign ugt i32 %.sroa.0.080, 9999
  br i1 %i.gq, label %decimalLength.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gr = icmp samesign ugt i32 %.sroa.0.080, 999
  br i1 %i.gr, label %decimalLength.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gs = icmp samesign ugt i32 %.sroa.0.080, 99
  br i1 %i.gs, label %decimalLength.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gt = icmp samesign ugt i32 %.sroa.0.080, 9
  %..i.i = select i1 %i.gt, i32 2, i32 1
  br label %decimalLength.exit.i

decimalLength.exit.i:                             ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v
  %.sroa.3.0.extract.trunc.i83 = phi i32 [ %.sroa.3.0.extract.trunc.i82, %bb.ab ], [ %i.gj, %bb.v ], [ %.sroa.3.0.extract.trunc.i82, %bb.w ], [ %.sroa.3.0.extract.trunc.i82, %bb.x ], [ %.sroa.3.0.extract.trunc.i82, %bb.y ], [ %.sroa.3.0.extract.trunc.i82, %bb.z ], [ %.sroa.3.0.extract.trunc.i82, %bb.aa ], [ %.sroa.3.0.extract.trunc.i82, %bb.ac ] ; 2 uses
  %.sroa.0.081 = phi i32 [ %.sroa.0.080, %bb.ab ], [ %i.gi, %bb.v ], [ %.sroa.0.080, %bb.w ], [ %.sroa.0.080, %bb.x ], [ %.sroa.0.080, %bb.y ], [ %.sroa.0.080, %bb.z ], [ %.sroa.0.080, %bb.aa ], [ %.sroa.0.080, %bb.ac ] ; 5 uses
  %.sroa.5.079 = phi i64 [ %.sroa.5.078, %bb.ab ], [ %i.gl, %bb.v ], [ %.sroa.5.078, %bb.w ], [ %.sroa.5.078, %bb.x ], [ %.sroa.5.078, %bb.y ], [ %.sroa.5.078, %bb.z ], [ %.sroa.5.078, %bb.aa ], [ %.sroa.5.078, %bb.ac ] ; 3 uses
  %.0.i.i = phi i32 [ 3, %bb.ab ], [ 9, %bb.v ], [ 8, %bb.w ], [ 7, %bb.x ], [ 6, %bb.y ], [ 5, %bb.z ], [ 4, %bb.aa ], [ %..i.i, %bb.ac ] ; 7 uses
  %i.gu = add i32 %.0.i.i, %.sroa.3.0.extract.trunc.i83 ; 10 uses
  %i.gv = add i32 %i.gu, -1                       ; 2 uses
  br i1 %i.b, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %decimalLength.exit.i
  store i8 45, ptr %1, align 1
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %decimalLength.exit.i
  %.080.i = phi i32 [ 1, %bb.ad ], [ 0, %decimalLength.exit.i ] ; 6 uses
  %i.gw = add i32 %i.gu, 3
  %or.cond.i24 = icmp ult i32 %i.gw, 10
  br i1 %or.cond.i24, label %bb.af, label %bb.ax

bb.af:                                            ; preds = %bb.ae
  %i.gx = zext nneg i32 %.080.i to i64
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 %i.gx ; 10 uses
  %i.gz = icmp slt i32 %i.gu, 1
  br i1 %i.gz, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ha = sub nsw i32 2, %i.gu
  br label %.sink.split.i.i

bb.ah:                                            ; preds = %bb.af
  %i.hb = icmp slt i64 %.sroa.5.079, 0
  br i1 %i.hb, label %bb.ai, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.ah, %bb.ag
  %.sink.i.i = phi i64 [ 3472328296227679792, %bb.ag ], [ 3472328296227680304, %bb.ah ]
  %.0.ph.i.i = phi i32 [ %i.ha, %bb.ag ], [ 0, %bb.ah ]
  store i64 %.sink.i.i, ptr %i.gy, align 1
  br label %bb.ai

bb.ai:                                            ; preds = %.sink.split.i.i, %bb.ah
  %.0.i94.i = phi i32 [ 1, %bb.ah ], [ %.0.ph.i.i, %.sink.split.i.i ] ; 5 uses
  %i.hc = icmp ugt i32 %.sroa.0.081, 9999
  br i1 %i.hc, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.ai
  %i.hd = zext nneg i32 %.0.i94.i to i64
  %i.he = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.hd
  %i.hf = zext nneg i32 %.0.i.i to i64
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 %i.hf
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %.lr.ph.i.i
  %.06979.i.i = phi i32 [ %.sroa.0.081, %.lr.ph.i.i ], [ %i.hh, %bb.aj ] ; 3 uses
  %.07178.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.hy, %bb.aj ] ; 2 uses
  %i.hh = udiv i32 %.06979.i.i, 10000             ; 3 uses
  %.neg.i.i = mul i32 %i.hh, -10000
  %i.hi = add i32 %.neg.i.i, %.06979.i.i          ; 2 uses
  %i.hj = urem i32 %i.hi, 100
  %i.hk = shl nuw nsw i32 %i.hj, 1
  %i.hl = udiv i32 %i.hi, 100
  %i.hm = shl nuw nsw i32 %i.hl, 1
  %i.hn = zext i32 %.07178.i.i to i64
  %i.ho = sub nsw i64 0, %i.hn
  %i.hp = getelementptr inbounds i8, ptr %i.hg, i64 %i.ho ; 2 uses
  %i.hq = getelementptr inbounds i8, ptr %i.hp, i64 -2
  %i.hr = zext nneg i32 %i.hk to i64
  %i.hs = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.hr
  %i.ht = load i16, ptr %i.hs, align 2
  store i16 %i.ht, ptr %i.hq, align 1
  %i.hu = getelementptr inbounds i8, ptr %i.hp, i64 -4
  %i.hv = zext nneg i32 %i.hm to i64
  %i.hw = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.hv
  %i.hx = load i16, ptr %i.hw, align 2
  store i16 %i.hx, ptr %i.hu, align 1
  %i.hy = add i32 %.07178.i.i, 4                  ; 2 uses
  %i.hz = icmp ugt i32 %.06979.i.i, 99999999
  br i1 %i.hz, label %bb.aj, label %._crit_edge.i.i, !llvm.loop !6

._crit_edge.i.i:                                  ; preds = %bb.aj, %bb.ai
  %.071.lcssa.i.i = phi i32 [ 0, %bb.ai ], [ %i.hy, %bb.aj ] ; 3 uses
  %.069.lcssa.i.i = phi i32 [ %.sroa.0.081, %bb.ai ], [ %i.hh, %bb.aj ] ; 3 uses
  %i.ia = icmp samesign ugt i32 %.069.lcssa.i.i, 99
  br i1 %i.ia, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %._crit_edge.i.i
  %.lhs.trunc.i.i = trunc nuw i32 %.069.lcssa.i.i to i16 ; 2 uses
  %i.ib = urem i16 %.lhs.trunc.i.i, 100
  %i.ic = shl nuw nsw i16 %i.ib, 1
  %i.id = udiv i16 %.lhs.trunc.i.i, 100
  %.zext77.i.i = zext nneg i16 %i.id to i32
  %i.ie = zext nneg i32 %.0.i94.i to i64
  %i.if = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.ie
  %i.ig = zext nneg i32 %.0.i.i to i64
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 %i.ig
  %i.ii = zext i32 %.071.lcssa.i.i to i64
  %i.ij = sub nsw i64 0, %i.ii
  %i.ik = getelementptr inbounds i8, ptr %i.ih, i64 %i.ij
  %i.il = getelementptr inbounds i8, ptr %i.ik, i64 -2
  %i.im = zext nneg i16 %i.ic to i64
  %i.in = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.im
  %i.io = load i16, ptr %i.in, align 2
  store i16 %i.io, ptr %i.il, align 1
  %i.ip = or disjoint i32 %.071.lcssa.i.i, 2
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %._crit_edge.i.i
  %.172.i.i = phi i32 [ %i.ip, %bb.ak ], [ %.071.lcssa.i.i, %._crit_edge.i.i ]
  %.170.i.i = phi i32 [ %.zext77.i.i, %bb.ak ], [ %.069.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.iq = icmp samesign ugt i32 %.170.i.i, 9
  br i1 %i.iq, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ir = shl nuw nsw i32 %.170.i.i, 1
  %i.is = zext nneg i32 %.0.i94.i to i64
  %i.it = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.is
  %i.iu = zext nneg i32 %.0.i.i to i64
  %i.iv = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.iu
  %i.iw = zext i32 %.172.i.i to i64
  %i.ix = sub nsw i64 0, %i.iw
  %i.iy = getelementptr inbounds i8, ptr %i.iv, i64 %i.ix
  %i.iz = getelementptr inbounds i8, ptr %i.iy, i64 -2
  %i.ja = zext nneg i32 %i.ir to i64
  %i.jb = getelementptr inbounds nuw i8, ptr @DIGIT_TABLE, i64 %i.ja
  %i.jc = load i16, ptr %i.jb, align 2
  store i16 %i.jc, ptr %i.iz, align 1
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.jd = trunc nuw nsw i32 %.170.i.i to i8
  %i.je = or disjoint i8 %i.jd, 48
  %i.jf = zext nneg i32 %.0.i94.i to i64
  %i.jg = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.jf
  store i8 %i.je, ptr %i.jg, align 1
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.jh = icmp eq i32 %.0.i94.i, 1
  br i1 %i.jh, label %bb.ap, label %bb.aw

bb.ap:                                            ; preds = %bb.ao
  %i.ji = and i32 %i.gu, 4
  %.not.i.i = icmp eq i32 %i.ji, 0
  br i1 %.not.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.jj = getelementptr inbounds nuw i8, ptr %i.gy, i64 1
  %i.jk = load i32, ptr %i.jj, align 1
  store i32 %i.jk, ptr %i.gy, align 1
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.1.i.i = phi i32 [ 5, %bb.aq ], [ 1, %bb.ap ]  ; 3 uses
  %i.jl = and i32 %i.gu, 2
  %.not74.i.i = icmp eq i32 %i.jl, 0
  br i1 %.not74.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.jm = zext nneg i32 %.1.i.i to i64
  %i.jn = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.jm ; 2 uses
end_hunk_0
