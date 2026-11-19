Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/wc_mlkem_poly?download=true
inline.NumInlined: 49
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@zetas = local_unnamed_addr constant [128 x i16] [i16 2285, i16 2571, i16 2970, i16 1812, i16 1493, i16 1422, i16 287, i16 202, i16 3158, i16 622, i16 1577, i16 182, i16 962, i16 2127, i16 1855, i16 1468, i16 573, i16 2004, i16 264, i16 383, i16 2500, i16 1458, i16 1727, i16 3199, i16 2648, i16 1017, i16 732, i16 608, i16 1787, i16 411, i16 3124, i16 1758, i16 1223, i16 652, i16 2777, i16 1015, i16 2036, i16 1491, i16 3047, i16 1785, i16 516, i16 3321, i16 3009, i16 2663, i16 1711, i16 2167, i16 126, i16 1469, i16 2476, i16 3239, i16 3058, i16 830, i16 107, i16 1908, i16 3082, i16 2378, i16 2931, i16 961, i16 1821, i16 2604, i16 448, i16 2264, i16 677, i16 2054, i16 2226, i16 430, i16 555, i16 843, i16 2078, i16 871, i16 1550, i16 105, i16 422, i16 587, i16 177, i16 3094, i16 3038, i16 2869, i16 1574, i16 1653, i16 3083, i16 778, i16 1159, i16 3182, i16 2552, i16 1483, i16 2727, i16 1119, i16 1739, i16 644, i16 2457, i16 349, i16 418, i16 329, i16 3173, i16 3254, i16 817, i16 1097, i16 603, i16 610, i16 1322, i16 2044, i16 1864, i16 384, i16 2114, i16 3193, i16 1218, i16 1994, i16 2455, i16 220, i16 2142, i16 1670, i16 2144, i16 1799, i16 2051, i16 794, i16 1819, i16 2475, i16 2459, i16 478, i16 3221, i16 3021, i16 996, i16 991, i16 958, i16 1869, i16 1522, i16 1628], align 16
@zetas_inv = local_unnamed_addr constant [128 x i16] [i16 1701, i16 1807, i16 1460, i16 2371, i16 2338, i16 2333, i16 308, i16 108, i16 2851, i16 870, i16 854, i16 1510, i16 2535, i16 1278, i16 1530, i16 1185, i16 1659, i16 1187, i16 3109, i16 874, i16 1335, i16 2111, i16 136, i16 1215, i16 2945, i16 1465, i16 1285, i16 2007, i16 2719, i16 2726, i16 2232, i16 2512, i16 75, i16 156, i16 3000, i16 2911, i16 2980, i16 872, i16 2685, i16 1590, i16 2210, i16 602, i16 1846, i16 777, i16 147, i16 2170, i16 2551, i16 246, i16 1676, i16 1755, i16 460, i16 291, i16 235, i16 3152, i16 2742, i16 2907, i16 3224, i16 1779, i16 2458, i16 1251, i16 2486, i16 2774, i16 2899, i16 1103, i16 1275, i16 2652, i16 1065, i16 2881, i16 725, i16 1508, i16 2368, i16 398, i16 951, i16 247, i16 1421, i16 3222, i16 2499, i16 271, i16 90, i16 853, i16 1860, i16 3203, i16 1162, i16 1618, i16 666, i16 320, i16 8, i16 2813, i16 1544, i16 282, i16 1838, i16 1293, i16 2314, i16 552, i16 2677, i16 2106, i16 1571, i16 205, i16 2918, i16 1542, i16 2721, i16 2597, i16 2312, i16 681, i16 130, i16 1602, i16 1871, i16 829, i16 2946, i16 3065, i16 1325, i16 2756, i16 1861, i16 1474, i16 1202, i16 2367, i16 3147, i16 1752, i16 2707, i16 171, i16 3127, i16 3042, i16 1907, i16 1836, i16 1517, i16 359, i16 758, i16 1441], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @mlkem_init() local_unnamed_addr #0 {
bb.a:
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @mlkem_keygen(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %.lr.ph.preheader.i, label %mlkem_keygen_c.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %4 to i64    ; 3 uses
  br label %.lr.ph.i

.lr.ph33.i:                                       ; preds = %.lr.ph.i
  %i.b = shl i32 %4, 8
  %5 = shl nuw nsw i64 %wide.trip.count.i, 9      ; 2 uses
  %scevgep.a = getelementptr i8, ptr %2, i64 %5
  %scevgep8 = getelementptr i8, ptr %1, i64 %5    ; 2 uses
  %bound0 = icmp ult ptr %1, getelementptr inbounds nuw (i8, ptr @zetas, i64 256)
  %bound1 = icmp ugt ptr %scevgep8, getelementptr inbounds nuw (i8, ptr @zetas, i64 64)
  %found.conflict = and i1 %bound0, %bound1
  %bound09 = icmp ult ptr %1, %scevgep.a
  %bound110 = icmp ult ptr %2, %scevgep8
  %found.conflict11 = and i1 %bound09, %bound110
  %conflict.rdx = or i1 %found.conflict, %found.conflict11
  br label %vector.ph51

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %.idx.i = shl nuw nsw i64 %indvars.iv.i, 9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i
  tail call fastcc void @mlkem_ntt(ptr noundef %i.c)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph33.i, label %.lr.ph.i, !llvm.loop !15

vector.ph51:                                      ; preds = %mlkem_ntt_add_to.exit.i, %.lr.ph33.i
  %indvars.iv39.i = phi i64 [ 0, %.lr.ph33.i ], [ %indvars.iv.next40.i, %mlkem_ntt_add_to.exit.i ] ; 3 uses
  %i.d = shl nuw nsw i64 %indvars.iv39.i, 8       ; 2 uses
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.d ; 73 uses
  %i.f = trunc nuw nsw i64 %indvars.iv39.i to i32
  %i.g = mul i32 %i.b, %i.f
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [2 x i8], ptr %3, i64 %i.h
  tail call fastcc void @mlkem_pointwise_acc_mont(ptr noundef %i.e, ptr noundef readonly %i.i, ptr noundef %0, i32 noundef %4)
  br label %vector.body52

vector.body52:                                    ; preds = %vector.body52, %vector.ph51
  %index53 = phi i64 [ 0, %vector.ph51 ], [ %index.next55, %vector.body52 ] ; 2 uses
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %index53 ; 2 uses
  %wide.load54 = load <8 x i16>, ptr %i.j, align 2, !tbaa !10 ; 2 uses
  %i.k = sext <8 x i16> %wide.load54 to <8 x i32>
  %i.l = mul nsw <8 x i32> %i.k, splat (i32 1353)
  %i.m = mul <8 x i16> %wide.load54, splat (i16 20553)
  %i.n = sext <8 x i16> %i.m to <8 x i32>
  %i.o = mul nsw <8 x i32> %i.n, splat (i32 -3329)
  %i.p = add nsw <8 x i32> %i.o, %i.l
  %i.q = lshr <8 x i32> %i.p, splat (i32 16)
  %i.r = trunc nuw <8 x i32> %i.q to <8 x i16>
  store <8 x i16> %i.r, ptr %i.j, align 2, !tbaa !10
  %index.next55 = add nuw i64 %index53, 8         ; 2 uses
  %i.s = icmp eq i64 %index.next55, 256
  br i1 %i.s, label %middle.block56, label %vector.body52, !llvm.loop !16

middle.block56:                                   ; preds = %vector.body52
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.d ; 74 uses
  br label %vector.body38

vector.body38:                                    ; preds = %vector.body38, %middle.block56
  %index39 = phi i64 [ 0, %middle.block56 ], [ %index.next48, %vector.body38 ] ; 2 uses
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %index39 ; 9 uses
  %wide.load40 = load <8 x i16>, ptr %i.u, align 2, !tbaa !10 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 64 ; 2 uses
  %wide.load41 = load <8 x i16>, ptr %i.v, align 2, !tbaa !10 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 128 ; 2 uses
  %wide.load42 = load <8 x i16>, ptr %i.w, align 2, !tbaa !10 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 192 ; 2 uses
  %wide.load43 = load <8 x i16>, ptr %i.x, align 2, !tbaa !10 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 256 ; 2 uses
  %wide.load44 = load <8 x i16>, ptr %i.y, align 2, !tbaa !10 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 320 ; 2 uses
  %wide.load45 = load <8 x i16>, ptr %i.z, align 2, !tbaa !10 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 384 ; 2 uses
  %wide.load46 = load <8 x i16>, ptr %i.aa, align 2, !tbaa !10 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 448 ; 2 uses
  %wide.load47 = load <8 x i16>, ptr %i.ab, align 2, !tbaa !10 ; 2 uses
  %i.ac = sext <8 x i16> %wide.load44 to <8 x i32>
  %i.ad = mul nsw <8 x i32> %i.ac, splat (i32 2571)
  %i.ae = mul <8 x i16> %wide.load44, splat (i16 31499)
  %i.af = sext <8 x i16> %i.ae to <8 x i32>
  %i.ag = mul nsw <8 x i32> %i.af, splat (i32 -3329)
  %i.ah = add nsw <8 x i32> %i.ag, %i.ad
  %i.ai = sext <8 x i16> %wide.load45 to <8 x i32>
  %i.aj = mul nsw <8 x i32> %i.ai, splat (i32 2571)
  %i.ak = mul <8 x i16> %wide.load45, splat (i16 31499)
  %i.al = sext <8 x i16> %i.ak to <8 x i32>
  %i.am = mul nsw <8 x i32> %i.al, splat (i32 -3329)
  %i.an = add nsw <8 x i32> %i.am, %i.aj
  %i.ao = sext <8 x i16> %wide.load46 to <8 x i32>
  %i.ap = mul nsw <8 x i32> %i.ao, splat (i32 2571)
  %i.aq = mul <8 x i16> %wide.load46, splat (i16 31499)
  %i.ar = sext <8 x i16> %i.aq to <8 x i32>
  %i.as = mul nsw <8 x i32> %i.ar, splat (i32 -3329)
  %i.at = add nsw <8 x i32> %i.as, %i.ap
  %i.au = sext <8 x i16> %wide.load47 to <8 x i32>
  %i.av = mul nsw <8 x i32> %i.au, splat (i32 2571)
  %i.aw = mul <8 x i16> %wide.load47, splat (i16 31499)
  %i.ax = sext <8 x i16> %i.aw to <8 x i32>
  %i.ay = mul nsw <8 x i32> %i.ax, splat (i32 -3329)
  %i.az = add nsw <8 x i32> %i.ay, %i.av
  %i.ba = lshr <8 x i32> %i.ah, splat (i32 16)
  %i.bb = trunc nuw <8 x i32> %i.ba to <8 x i16>  ; 2 uses
  %i.bc = sub <8 x i16> %wide.load40, %i.bb       ; 2 uses
  %i.bd = lshr <8 x i32> %i.an, splat (i32 16)
  %i.be = trunc nuw <8 x i32> %i.bd to <8 x i16>  ; 2 uses
  %i.bf = sub <8 x i16> %wide.load41, %i.be       ; 2 uses
  %i.bg = lshr <8 x i32> %i.at, splat (i32 16)
  %i.bh = trunc nuw <8 x i32> %i.bg to <8 x i16>  ; 2 uses
  %i.bi = sub <8 x i16> %wide.load42, %i.bh       ; 2 uses
  %i.bj = lshr <8 x i32> %i.az, splat (i32 16)
  %i.bk = trunc nuw <8 x i32> %i.bj to <8 x i16>  ; 2 uses
  %i.bl = sub <8 x i16> %wide.load43, %i.bk       ; 2 uses
  %i.bm = add <8 x i16> %wide.load40, %i.bb       ; 2 uses
  %i.bn = add <8 x i16> %wide.load41, %i.be       ; 2 uses
  %i.bo = add <8 x i16> %wide.load42, %i.bh       ; 2 uses
  %i.bp = add <8 x i16> %wide.load43, %i.bk       ; 2 uses
  %i.bq = sext <8 x i16> %i.bo to <8 x i32>
  %i.br = mul nsw <8 x i32> %i.bq, splat (i32 2970)
  %i.bs = mul <8 x i16> %i.bo, splat (i16 14746)
  %i.bt = sext <8 x i16> %i.bs to <8 x i32>
  %i.bu = mul nsw <8 x i32> %i.bt, splat (i32 -3329)
  %i.bv = add nsw <8 x i32> %i.bu, %i.br
  %i.bw = sext <8 x i16> %i.bp to <8 x i32>
  %i.bx = mul nsw <8 x i32> %i.bw, splat (i32 2970)
  %i.by = mul <8 x i16> %i.bp, splat (i16 14746)
  %i.bz = sext <8 x i16> %i.by to <8 x i32>
  %i.ca = mul nsw <8 x i32> %i.bz, splat (i32 -3329)
  %i.cb = add nsw <8 x i32> %i.ca, %i.bx
  %i.cc = sext <8 x i16> %i.bi to <8 x i32>
  %i.cd = mul nsw <8 x i32> %i.cc, splat (i32 1812)
  %i.ce = mul <8 x i16> %i.bi, splat (i16 788)
  %i.cf = sext <8 x i16> %i.ce to <8 x i32>
  %i.cg = mul nsw <8 x i32> %i.cf, splat (i32 -3329)
  %i.ch = add nsw <8 x i32> %i.cg, %i.cd
  %i.ci = sext <8 x i16> %i.bl to <8 x i32>
  %i.cj = mul nsw <8 x i32> %i.ci, splat (i32 1812)
  %i.ck = mul <8 x i16> %i.bl, splat (i16 788)
  %i.cl = sext <8 x i16> %i.ck to <8 x i32>
  %i.cm = mul nsw <8 x i32> %i.cl, splat (i32 -3329)
  %i.cn = add nsw <8 x i32> %i.cm, %i.cj
  %i.co = lshr <8 x i32> %i.bv, splat (i32 16)
  %i.cp = trunc nuw <8 x i32> %i.co to <8 x i16>  ; 2 uses
  %i.cq = sub <8 x i16> %i.bm, %i.cp
  %i.cr = lshr <8 x i32> %i.cb, splat (i32 16)
  %i.cs = trunc nuw <8 x i32> %i.cr to <8 x i16>  ; 2 uses
  %i.ct = sub <8 x i16> %i.bn, %i.cs
  %i.cu = lshr <8 x i32> %i.ch, splat (i32 16)
  %i.cv = trunc nuw <8 x i32> %i.cu to <8 x i16>  ; 2 uses
  %i.cw = sub <8 x i16> %i.bc, %i.cv
  %i.cx = lshr <8 x i32> %i.cn, splat (i32 16)
  %i.cy = trunc nuw <8 x i32> %i.cx to <8 x i16>  ; 2 uses
  %i.cz = sub <8 x i16> %i.bf, %i.cy
  %i.da = add <8 x i16> %i.bm, %i.cp
  %i.db = add <8 x i16> %i.bn, %i.cs
  %i.dc = add <8 x i16> %i.bc, %i.cv
  %i.dd = add <8 x i16> %i.bf, %i.cy
  store <8 x i16> %i.da, ptr %i.u, align 2, !tbaa !10
  store <8 x i16> %i.db, ptr %i.v, align 2, !tbaa !10
  store <8 x i16> %i.cq, ptr %i.w, align 2, !tbaa !10
  store <8 x i16> %i.ct, ptr %i.x, align 2, !tbaa !10
  store <8 x i16> %i.dc, ptr %i.y, align 2, !tbaa !10
  store <8 x i16> %i.dd, ptr %i.z, align 2, !tbaa !10
  store <8 x i16> %i.cw, ptr %i.aa, align 2, !tbaa !10
  store <8 x i16> %i.cz, ptr %i.ab, align 2, !tbaa !10
  %index.next48 = add nuw i64 %index39, 8         ; 2 uses
  %i.de = icmp eq i64 %index.next48, 32
  br i1 %i.de, label %.preheader472.i.i, label %vector.body38, !llvm.loop !17

.preheader472.i.i:                                ; preds = %vector.body38, %.preheader472.i.i
  %indvars.iv482.i.i = phi i64 [ %indvars.iv.next483.i.i, %.preheader472.i.i ], [ 0, %vector.body38 ] ; 6 uses
  %invariant.gep.i.i = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %indvars.iv482.i.i ; 9 uses
  %i.df = lshr exact i64 %indvars.iv482.i.i, 3
  %i.dg = getelementptr inbounds nuw i8, ptr @zetas, i64 %i.df ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 38
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !10
  %i.dj = sext i16 %i.di to i32
  %broadcast.splatinsert24.a = insertelement <8 x i32> poison, i32 %i.dj, i64 0
  %broadcast.splat25.a = shufflevector <8 x i32> %broadcast.splatinsert24.a, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 36
  %i.dl = load i16, ptr %i.dk, align 4, !tbaa !10
  %i.dm = sext i16 %i.dl to i32
  %broadcast.splatinsert22.a = insertelement <8 x i32> poison, i32 %i.dm, i64 0
  %broadcast.splat23.a = shufflevector <8 x i32> %broadcast.splatinsert22.a, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dg, i64 34
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !10
  %i.dp = sext i16 %i.do to i32
  %broadcast.splatinsert20.a = insertelement <8 x i32> poison, i32 %i.dp, i64 0
  %broadcast.splat21.a = shufflevector <8 x i32> %broadcast.splatinsert20.a, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  %i.dr = load i16, ptr %i.dq, align 8, !tbaa !10
  %i.ds = sext i16 %i.dr to i32
  %broadcast.splatinsert18.a = insertelement <8 x i32> poison, i32 %i.ds, i64 0
  %broadcast.splat19.a = shufflevector <8 x i32> %broadcast.splatinsert18.a, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.dt = lshr exact i64 %indvars.iv482.i.i, 4
  %i.du = getelementptr inbounds nuw i8, ptr @zetas, i64 %i.dt ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 18
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !10
  %i.dx = sext i16 %i.dw to i32
  %broadcast.splatinsert16.a = insertelement <8 x i32> poison, i32 %i.dx, i64 0
  %broadcast.splat17.a = shufflevector <8 x i32> %broadcast.splatinsert16.a, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dz = load i16, ptr %i.dy, align 4, !tbaa !10
  %i.ea = sext i16 %i.dz to i32
  %broadcast.splatinsert14 = insertelement <8 x i32> poison, i32 %i.ea, i64 0
  %broadcast.splat15 = shufflevector <8 x i32> %broadcast.splatinsert14, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.eb = lshr exact i64 %indvars.iv482.i.i, 5
  %i.ec = getelementptr inbounds nuw i8, ptr @zetas, i64 %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !10
  %i.ef = sext i16 %i.ee to i32
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ef, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %wide.load27 = load <8 x i16>, ptr %invariant.gep.i.i, align 2, !tbaa !10 ; 2 uses
end_hunk_0
begin_hunk_1_@mlkem_keygen:bb.a
  %i.ago = shufflevector <16 x i16> %i.agm, <16 x i16> %i.agn, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.agp = sext <32 x i16> %i.ago to <32 x i32>
  %i.agq = mul nsw <32 x i32> %i.agp, splat (i32 20159)
  %i.agr = ashr <32 x i32> %i.agq, splat (i32 26)
  %i.ags = trunc nsw <32 x i32> %i.agr to <32 x i16>
  %i.agt = mul <32 x i16> %i.ags, splat (i16 -3329)
  %i.agu = shufflevector <8 x i16> %i.zp, <8 x i16> %i.aap, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.agv = shufflevector <8 x i16> %i.abo, <8 x i16> %i.acn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.agw = shufflevector <16 x i16> %i.agu, <16 x i16> %i.agv, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.agx = add <32 x i16> %i.agt, %i.agw
  %i.agy = shufflevector <8 x i16> %i.adn, <8 x i16> %i.aen, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.agz = shufflevector <8 x i16> %i.afm, <8 x i16> %i.agl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aha = shufflevector <16 x i16> %i.agy, <16 x i16> %i.agz, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ahb = sext <32 x i16> %i.aha to <32 x i32>
  %i.ahc = mul nsw <32 x i32> %i.ahb, splat (i32 20159)
  %i.ahd = ashr <32 x i32> %i.ahc, splat (i32 26)
  %i.ahe = trunc nsw <32 x i32> %i.ahd to <32 x i16>
  %i.ahf = mul <32 x i16> %i.ahe, splat (i16 -3329)
  %i.ahg = shufflevector <8 x i16> %i.adn, <8 x i16> %i.aen, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ahh = shufflevector <8 x i16> %i.afm, <8 x i16> %i.agl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ahi = shufflevector <16 x i16> %i.ahg, <16 x i16> %i.ahh, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ahj = add <32 x i16> %i.ahf, %i.ahi
  %interleaved.vec = shufflevector <32 x i16> %i.agx, <32 x i16> %i.ahj, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <64 x i16> %interleaved.vec, ptr %i.yq, align 2, !tbaa !10, !alias.scope !28, !noalias !29
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ahk = icmp eq i64 %index.next, 32
  br i1 %i.ahk, label %mlkem_ntt_add_to.exit.i, label %vector.body, !llvm.loop !23

.preheader.i.i:                                   ; preds = %vector.memcheck, %.preheader.i.i
  %indvars.iv485.i.i = phi i64 [ %indvars.iv.next486.i.i, %.preheader.i.i ], [ 0, %vector.memcheck ] ; 13 uses
  %i.ahl = lshr exact i64 %indvars.iv485.i.i, 2
  %i.ahm = getelementptr inbounds nuw i8, ptr @zetas, i64 %i.ahl
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahm, i64 64
  %i.aho = load i16, ptr %i.ahn, align 2, !tbaa !10
  %i.ahp = lshr exact i64 %indvars.iv485.i.i, 1
  %i.ahq = getelementptr inbounds nuw i8, ptr @zetas, i64 %i.ahp ; 2 uses
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahq, i64 128
  %i.ahs = load i16, ptr %i.ahr, align 4, !tbaa !10
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahq, i64 130
  %i.ahu = load i16, ptr %i.aht, align 2, !tbaa !10
  %i.ahv = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %indvars.iv485.i.i
  %i.ahw = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %indvars.iv485.i.i
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.ahw, i64 2
  %i.ahy = or disjoint i64 %indvars.iv485.i.i, 2  ; 2 uses
  %i.ahz = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.ahy
  %i.aia = load i16, ptr %i.ahz, align 2, !tbaa !10 ; 2 uses
  %i.aib = or disjoint i64 %indvars.iv485.i.i, 3  ; 2 uses
  %i.aic = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.aib
  %i.aid = load i16, ptr %i.aic, align 2, !tbaa !10 ; 2 uses
  %i.aie = or disjoint i64 %indvars.iv485.i.i, 4  ; 2 uses
  %i.aif = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.aie
  %i.aig = or disjoint i64 %indvars.iv485.i.i, 5  ; 2 uses
  %i.aih = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.aig
  %i.aii = or disjoint i64 %indvars.iv485.i.i, 6  ; 2 uses
  %i.aij = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.aii
  %i.aik = load i16, ptr %i.aij, align 2, !tbaa !10
  %i.ail = or disjoint i64 %indvars.iv485.i.i, 7  ; 2 uses
  %i.aim = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.ail
  %i.ain = load i16, ptr %i.aim, align 2, !tbaa !10
  %i.aio = sext i16 %i.aho to i32                 ; 4 uses
  %i.aip = sext i16 %i.aik to i32
  %i.aiq = mul nsw i32 %i.aip, %i.aio             ; 2 uses
  %sext412.i.i = mul i32 %i.aiq, -218038272
  %i.air = ashr exact i32 %sext412.i.i, 16
  %.neg413.i.i = mul nsw i32 %i.air, -3329
  %i.ais = add nsw i32 %.neg413.i.i, %i.aiq
  %i.ait = sext i16 %i.ain to i32
  %i.aiu = mul nsw i32 %i.ait, %i.aio             ; 2 uses
  %sext414.i.i = mul i32 %i.aiu, -218038272
  %i.aiv = ashr exact i32 %sext414.i.i, 16
  %.neg415.i.i = mul nsw i32 %i.aiv, -3329
  %i.aiw = add nsw i32 %.neg415.i.i, %i.aiu
  %i.aix = lshr i32 %i.ais, 16
  %i.aiy = trunc nuw i32 %i.aix to i16            ; 2 uses
  %i.aiz = sub i16 %i.aia, %i.aiy
  %i.aja = lshr i32 %i.aiw, 16
  %i.ajb = trunc nuw i32 %i.aja to i16            ; 2 uses
  %i.ajc = sub i16 %i.aid, %i.ajb
  %i.ajd = add i16 %i.aia, %i.aiy
  %i.aje = add i16 %i.aid, %i.ajb
  %i.ajf = sext i16 %i.ahs to i32                 ; 2 uses
  %i.ajg = sext i16 %i.ajd to i32
  %i.ajh = mul nsw i32 %i.ajg, %i.ajf             ; 2 uses
  %sext416.i.i = mul i32 %i.ajh, -218038272
  %i.aji = ashr exact i32 %sext416.i.i, 16
  %.neg417.i.i = mul nsw i32 %i.aji, -3329
  %i.ajj = add nsw i32 %.neg417.i.i, %i.ajh
  %i.ajk = sext i16 %i.aje to i32
  %i.ajl = mul nsw i32 %i.ajk, %i.ajf             ; 2 uses
  %sext418.i.i = mul i32 %i.ajl, -218038272
  %i.ajm = ashr exact i32 %sext418.i.i, 16
  %.neg419.i.i = mul nsw i32 %i.ajm, -3329
  %i.ajn = add nsw i32 %.neg419.i.i, %i.ajl
  %i.ajo = sext i16 %i.ahu to i32                 ; 2 uses
  %i.ajp = sext i16 %i.aiz to i32
  %i.ajq = mul nsw i32 %i.ajp, %i.ajo             ; 2 uses
  %sext420.i.i = mul i32 %i.ajq, -218038272
  %i.ajr = ashr exact i32 %sext420.i.i, 16
  %.neg421.i.i = mul nsw i32 %i.ajr, -3329
  %i.ajs = add nsw i32 %.neg421.i.i, %i.ajq
  %i.ajt = sext i16 %i.ajc to i32
  %i.aju = mul nsw i32 %i.ajt, %i.ajo             ; 2 uses
  %sext422.i.i = mul i32 %i.aju, -218038272
  %i.ajv = ashr exact i32 %sext422.i.i, 16
  %.neg423.i.i = mul nsw i32 %i.ajv, -3329
  %i.ajw = add nsw i32 %.neg423.i.i, %i.aju
  %i.ajx = lshr i32 %i.ajj, 16
  %i.ajy = trunc nuw i32 %i.ajx to i16
  %i.ajz = lshr i32 %i.ajn, 16
  %i.aka = trunc nuw i32 %i.ajz to i16
  %i.akb = lshr i32 %i.ajs, 16
  %i.akc = trunc nuw i32 %i.akb to i16
  %i.akd = lshr i32 %i.ajw, 16
  %i.ake = trunc nuw i32 %i.akd to i16
  %i.akf = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv485.i.i ; 2 uses
  %i.akg = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.ahy
  %i.akh = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.aib
  %i.aki = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.aie
  %i.akj = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.aig
  %i.akk = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.aii
  %i.akl = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.ail
  %i.akm = load i16, ptr %i.ahv, align 2, !tbaa !10 ; 2 uses
  %i.akn = load i16, ptr %i.ahx, align 2, !tbaa !10 ; 2 uses
  %i.ako = load i16, ptr %i.aif, align 2, !tbaa !10
  %i.akp = load i16, ptr %i.aih, align 2, !tbaa !10
  %i.akq = sext i16 %i.ako to i32
  %i.akr = mul nsw i32 %i.akq, %i.aio             ; 2 uses
  %sext.i.i = mul i32 %i.akr, -218038272
  %i.aks = ashr exact i32 %sext.i.i, 16
  %.neg.i.i = mul nsw i32 %i.aks, -3329
  %i.akt = add nsw i32 %.neg.i.i, %i.akr
  %i.aku = sext i16 %i.akp to i32
  %i.akv = mul nsw i32 %i.aku, %i.aio             ; 2 uses
  %sext410.i.i = mul i32 %i.akv, -218038272
  %i.akw = ashr exact i32 %sext410.i.i, 16
  %.neg411.i.i = mul nsw i32 %i.akw, -3329
  %i.akx = add nsw i32 %.neg411.i.i, %i.akv
  %i.aky = lshr i32 %i.akt, 16
  %i.akz = trunc nuw i32 %i.aky to i16            ; 2 uses
  %i.ala = sub i16 %i.akm, %i.akz
  %i.alb = lshr i32 %i.akx, 16
  %i.alc = trunc nuw i32 %i.alb to i16            ; 2 uses
  %i.ald = sub i16 %i.akn, %i.alc
  %i.ale = add i16 %i.akm, %i.akz
  %i.alf = add i16 %i.akn, %i.alc
  %i.alg = load <2 x i16>, ptr %i.akf, align 2, !tbaa !10
  %i.alh = load i16, ptr %i.akg, align 2, !tbaa !10
  %i.ali = load i16, ptr %i.akh, align 2, !tbaa !10
  %i.alj = load i16, ptr %i.aki, align 2, !tbaa !10
  %i.alk = load i16, ptr %i.akj, align 2, !tbaa !10
  %i.all = insertelement <8 x i16> poison, i16 %i.ale, i64 0
  %i.alm = insertelement <8 x i16> %i.all, i16 %i.alf, i64 1
  %i.aln = insertelement <8 x i16> %i.alm, i16 %i.ala, i64 2
  %i.alo = insertelement <8 x i16> %i.aln, i16 %i.ald, i64 3
  %i.alp = shufflevector <8 x i16> %i.alo, <8 x i16> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 2, i32 3, i32 2, i32 3> ; 2 uses
  %i.alq = shufflevector <2 x i16> %i.alg, <2 x i16> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.alr = insertelement <8 x i16> %i.alq, i16 %i.ajy, i64 2
  %i.als = insertelement <8 x i16> %i.alr, i16 %i.aka, i64 3
  %i.alt = insertelement <8 x i16> %i.als, i16 %i.alj, i64 4
  %i.alu = insertelement <8 x i16> %i.alt, i16 %i.alk, i64 5
  %i.alv = insertelement <8 x i16> %i.alu, i16 %i.akc, i64 6
  %i.alw = insertelement <8 x i16> %i.alv, i16 %i.ake, i64 7 ; 3 uses
  %i.alx = add <8 x i16> %i.alp, %i.alw
  %i.aly = sub <8 x i16> %i.alp, %i.alw
  %i.alz = shufflevector <8 x i16> %i.alx, <8 x i16> %i.aly, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.ama = load i16, ptr %i.akk, align 2, !tbaa !10
  %i.amb = load i16, ptr %i.akl, align 2, !tbaa !10
  %i.amc = shufflevector <8 x i16> %i.alw, <8 x i16> poison, <8 x i32> <i32 2, i32 3, i32 poison, i32 poison, i32 6, i32 7, i32 poison, i32 poison>
  %i.amd = insertelement <8 x i16> %i.amc, i16 %i.alh, i64 2
  %i.ame = insertelement <8 x i16> %i.amd, i16 %i.ali, i64 3
  %i.amf = insertelement <8 x i16> %i.ame, i16 %i.ama, i64 6
  %i.amg = insertelement <8 x i16> %i.amf, i16 %i.amb, i64 7
  %i.amh = add <8 x i16> %i.alz, %i.amg           ; 2 uses
  %i.ami = sext <8 x i16> %i.amh to <8 x i32>
  %i.amj = mul nsw <8 x i32> %i.ami, splat (i32 20159)
  %i.amk = ashr <8 x i32> %i.amj, splat (i32 26)
  %i.aml = trunc nsw <8 x i32> %i.amk to <8 x i16>
  %i.amm = mul <8 x i16> %i.aml, splat (i16 -3329)
  %i.amn = add <8 x i16> %i.amm, %i.amh
  store <8 x i16> %i.amn, ptr %i.akf, align 2, !tbaa !10
  %indvars.iv.next486.i.i = add nuw nsw i64 %indvars.iv485.i.i, 8
  %i.amo = icmp samesign ult i64 %indvars.iv485.i.i, 248
  br i1 %i.amo, label %.preheader.i.i, label %mlkem_ntt_add_to.exit.i, !llvm.loop !24

mlkem_ntt_add_to.exit.i:                          ; preds = %vector.body, %.preheader.i.i
  %indvars.iv.next40.i = add nuw nsw i64 %indvars.iv39.i, 1 ; 2 uses
  %exitcond43.not.i = icmp eq i64 %indvars.iv.next40.i, %wide.trip.count.i
  br i1 %exitcond43.not.i, label %mlkem_keygen_c.exit, label %vector.ph51, !llvm.loop !25

mlkem_keygen_c.exit:                              ; preds = %mlkem_ntt_add_to.exit.i, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @mlkem_encapsulate(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7, i32 noundef %8) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp sgt i32 %8, 0
  br i1 %i.a, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %8 to i64    ; 3 uses
  br label %.lr.ph.i

.lr.ph128.i:                                      ; preds = %.lr.ph.i
  %i.b = shl i32 %8, 8
  %9 = shl nuw nsw i64 %wide.trip.count.i, 9      ; 2 uses
  %scevgep = getelementptr i8, ptr %5, i64 %9
  %scevgep9 = getelementptr i8, ptr %1, i64 %9
  %bound0 = icmp ult ptr %1, %scevgep
  %bound1 = icmp ult ptr %5, %scevgep9
  %found.conflict = and i1 %bound0, %bound1
  br label %vector.memcheck

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %.idx.i = shl nuw nsw i64 %indvars.iv.i, 9
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 %.idx.i
  tail call fastcc void @mlkem_ntt(ptr noundef %i.c)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph128.i, label %.lr.ph.i, !llvm.loop !30

vector.memcheck:                                  ; preds = %middle.block, %.lr.ph128.i
  %indvars.iv134.i = phi i64 [ 0, %.lr.ph128.i ], [ %indvars.iv.next135.i, %middle.block ] ; 3 uses
  %i.d = shl nuw nsw i64 %indvars.iv134.i, 8      ; 10 uses
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.d ; 2 uses
  %i.f = trunc nuw nsw i64 %indvars.iv134.i to i32
  %i.g = mul i32 %i.b, %i.f
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [2 x i8], ptr %3, i64 %i.h
  tail call fastcc void @mlkem_pointwise_acc_mont(ptr noundef %i.e, ptr noundef readonly %i.i, ptr noundef %4, i32 noundef %8)
  tail call fastcc void @mlkem_invntt(ptr noundef %i.e)
  br i1 %found.conflict, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 2 uses
  %i.j = shl nuw i64 %index, 3                    ; 8 uses
  %i.k = or disjoint i64 %i.j, %i.d               ; 9 uses
  %i.l = or disjoint i64 %i.j, %i.d               ; 8 uses
  %i.m = or disjoint i64 %i.l, 8                  ; 2 uses
  %i.n = or disjoint i64 %i.j, %i.d               ; 8 uses
  %i.o = or disjoint i64 %i.n, 16                 ; 2 uses
  %i.p = or disjoint i64 %i.j, %i.d               ; 8 uses
  %i.q = or disjoint i64 %i.p, 24                 ; 2 uses
  %i.r = or disjoint i64 %i.j, %i.d               ; 8 uses
  %i.s = or disjoint i64 %i.r, 32                 ; 2 uses
  %i.t = or disjoint i64 %i.j, %i.d               ; 8 uses
  %i.u = or disjoint i64 %i.t, 40                 ; 2 uses
  %i.v = or disjoint i64 %i.j, %i.d               ; 8 uses
  %i.w = or disjoint i64 %i.v, 48                 ; 2 uses
  %i.x = or disjoint i64 %i.j, %i.d               ; 8 uses
  %i.y = or disjoint i64 %i.x, 56                 ; 2 uses
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.k ; 2 uses
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.m
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.o
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.q
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.s
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.u
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.w
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.y
  %i.ah = load i16, ptr %i.z, align 2, !tbaa !10, !alias.scope !43, !noalias !44
  %i.ai = load i16, ptr %i.aa, align 2, !tbaa !10, !alias.scope !43, !noalias !44
  %i.aj = load i16, ptr %i.ab, align 2, !tbaa !10, !alias.scope !43, !noalias !44
  %i.ak = load i16, ptr %i.ac, align 2, !tbaa !10, !alias.scope !43, !noalias !44
  %i.al = load i16, ptr %i.ad, align 2, !tbaa !10, !alias.scope !43, !noalias !44
  %i.am = load i16, ptr %i.ae, align 2, !tbaa !10, !alias.scope !43, !noalias !44
  %i.an = load i16, ptr %i.af, align 2, !tbaa !10, !alias.scope !43, !noalias !44
  %i.ao = load i16, ptr %i.ag, align 2, !tbaa !10, !alias.scope !43, !noalias !44
  %i.ap = insertelement <8 x i16> poison, i16 %i.ah, i64 0
  %i.aq = insertelement <8 x i16> %i.ap, i16 %i.ai, i64 1
  %i.ar = insertelement <8 x i16> %i.aq, i16 %i.aj, i64 2
  %i.as = insertelement <8 x i16> %i.ar, i16 %i.ak, i64 3
  %i.at = insertelement <8 x i16> %i.as, i16 %i.al, i64 4
  %i.au = insertelement <8 x i16> %i.at, i16 %i.am, i64 5
  %i.av = insertelement <8 x i16> %i.au, i16 %i.an, i64 6
  %i.aw = insertelement <8 x i16> %i.av, i16 %i.ao, i64 7
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.k
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.m
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.o
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.q
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.s
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.u
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.w
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.y
  %i.bf = load i16, ptr %i.ax, align 2, !tbaa !10, !alias.scope !44
  %i.bg = load i16, ptr %i.ay, align 2, !tbaa !10, !alias.scope !44
  %i.bh = load i16, ptr %i.az, align 2, !tbaa !10, !alias.scope !44
  %i.bi = load i16, ptr %i.ba, align 2, !tbaa !10, !alias.scope !44
  %i.bj = load i16, ptr %i.bb, align 2, !tbaa !10, !alias.scope !44
  %i.bk = load i16, ptr %i.bc, align 2, !tbaa !10, !alias.scope !44
  %i.bl = load i16, ptr %i.bd, align 2, !tbaa !10, !alias.scope !44
  %i.bm = load i16, ptr %i.be, align 2, !tbaa !10, !alias.scope !44
  %i.bn = insertelement <8 x i16> poison, i16 %i.bf, i64 0
  %i.bo = insertelement <8 x i16> %i.bn, i16 %i.bg, i64 1
  %i.bp = insertelement <8 x i16> %i.bo, i16 %i.bh, i64 2
  %i.bq = insertelement <8 x i16> %i.bp, i16 %i.bi, i64 3
  %i.br = insertelement <8 x i16> %i.bq, i16 %i.bj, i64 4
  %i.bs = insertelement <8 x i16> %i.br, i16 %i.bk, i64 5
  %i.bt = insertelement <8 x i16> %i.bs, i16 %i.bl, i64 6
  %i.bu = insertelement <8 x i16> %i.bt, i16 %i.bm, i64 7
  %i.bv = add <8 x i16> %i.bu, %i.aw              ; 2 uses
  %i.bw = or disjoint i64 %i.k, 1                 ; 2 uses
  %i.bx = or disjoint i64 %i.l, 9                 ; 2 uses
  %i.by = or disjoint i64 %i.n, 17                ; 2 uses
  %i.bz = or disjoint i64 %i.p, 25                ; 2 uses
  %i.ca = or disjoint i64 %i.r, 33                ; 2 uses
  %i.cb = or disjoint i64 %i.t, 41                ; 2 uses
  %i.cc = or disjoint i64 %i.v, 49                ; 2 uses
  %i.cd = or disjoint i64 %i.x, 57                ; 2 uses
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.bw
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.bx
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.by
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.bz
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ca
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.cb
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.cc
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.cd
  %i.cm = load i16, ptr %i.ce, align 2, !tbaa !10, !alias.scope !43, !noalias !44
  %i.cn = load i16, ptr %i.cf, align 2, !tbaa !10, !alias.scope !43, !noalias !44
  %i.co = load i16, ptr %i.cg, align 2, !tbaa !10, !alias.scope !43, !noalias !44
  %i.cp = load i16, ptr %i.ch, align 2, !tbaa !10, !alias.scope !43, !noalias !44
  %i.cq = load i16, ptr %i.ci, align 2, !tbaa !10, !alias.scope !43, !noalias !44
  %i.cr = load i16, ptr %i.cj, align 2, !tbaa !10, !alias.scope !43, !noalias !44
  %i.cs = load i16, ptr %i.ck, align 2, !tbaa !10, !alias.scope !43, !noalias !44
  %i.ct = load i16, ptr %i.cl, align 2, !tbaa !10, !alias.scope !43, !noalias !44
  %i.cu = insertelement <8 x i16> poison, i16 %i.cm, i64 0
  %i.cv = insertelement <8 x i16> %i.cu, i16 %i.cn, i64 1
  %i.cw = insertelement <8 x i16> %i.cv, i16 %i.co, i64 2
  %i.cx = insertelement <8 x i16> %i.cw, i16 %i.cp, i64 3
  %i.cy = insertelement <8 x i16> %i.cx, i16 %i.cq, i64 4
  %i.cz = insertelement <8 x i16> %i.cy, i16 %i.cr, i64 5
  %i.da = insertelement <8 x i16> %i.cz, i16 %i.cs, i64 6
  %i.db = insertelement <8 x i16> %i.da, i16 %i.ct, i64 7
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.bw
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.bx
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.by
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.bz
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.ca
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.cb
  %i.di = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.cc
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.cd
  %i.dk = load i16, ptr %i.dc, align 2, !tbaa !10, !alias.scope !44
  %i.dl = load i16, ptr %i.dd, align 2, !tbaa !10, !alias.scope !44
  %i.dm = load i16, ptr %i.de, align 2, !tbaa !10, !alias.scope !44
  %i.dn = load i16, ptr %i.df, align 2, !tbaa !10, !alias.scope !44
  %i.do = load i16, ptr %i.dg, align 2, !tbaa !10, !alias.scope !44
  %i.dp = load i16, ptr %i.dh, align 2, !tbaa !10, !alias.scope !44
  %i.dq = load i16, ptr %i.di, align 2, !tbaa !10, !alias.scope !44
  %i.dr = load i16, ptr %i.dj, align 2, !tbaa !10, !alias.scope !44
  %i.ds = insertelement <8 x i16> poison, i16 %i.dk, i64 0
  %i.dt = insertelement <8 x i16> %i.ds, i16 %i.dl, i64 1
  %i.du = insertelement <8 x i16> %i.dt, i16 %i.dm, i64 2
  %i.dv = insertelement <8 x i16> %i.du, i16 %i.dn, i64 3
  %i.dw = insertelement <8 x i16> %i.dv, i16 %i.do, i64 4
  %i.dx = insertelement <8 x i16> %i.dw, i16 %i.dp, i64 5
  %i.dy = insertelement <8 x i16> %i.dx, i16 %i.dq, i64 6
  %i.dz = insertelement <8 x i16> %i.dy, i16 %i.dr, i64 7
  %i.ea = add <8 x i16> %i.dz, %i.db              ; 2 uses
  %i.eb = or disjoint i64 %i.k, 2                 ; 2 uses
  %i.ec = or disjoint i64 %i.l, 10                ; 2 uses
  %i.ed = or disjoint i64 %i.n, 18                ; 2 uses
  %i.ee = or disjoint i64 %i.p, 26                ; 2 uses
  %i.ef = or disjoint i64 %i.r, 34                ; 2 uses
  %i.eg = or disjoint i64 %i.t, 42                ; 2 uses
  %i.eh = or disjoint i64 %i.v, 50                ; 2 uses
  %i.ei = or disjoint i64 %i.x, 58                ; 2 uses
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.eb
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ec
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ed
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ee
  %i.en = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ef
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.eg
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.eh
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ei
  %i.er = load i16, ptr %i.ej, align 2, !tbaa !10, !alias.scope !43, !noalias !44
  %i.es = load i16, ptr %i.ek, align 2, !tbaa !10, !alias.scope !43, !noalias !44
  %i.et = load i16, ptr %i.el, align 2, !tbaa !10, !alias.scope !43, !noalias !44
  %i.eu = load i16, ptr %i.em, align 2, !tbaa !10, !alias.scope !43, !noalias !44
  %i.ev = load i16, ptr %i.en, align 2, !tbaa !10, !alias.scope !43, !noalias !44
  %i.ew = load i16, ptr %i.eo, align 2, !tbaa !10, !alias.scope !43, !noalias !44
  %i.ex = load i16, ptr %i.ep, align 2, !tbaa !10, !alias.scope !43, !noalias !44
  %i.ey = load i16, ptr %i.eq, align 2, !tbaa !10, !alias.scope !43, !noalias !44
  %i.ez = insertelement <8 x i16> poison, i16 %i.er, i64 0
  %i.fa = insertelement <8 x i16> %i.ez, i16 %i.es, i64 1
  %i.fb = insertelement <8 x i16> %i.fa, i16 %i.et, i64 2
  %i.fc = insertelement <8 x i16> %i.fb, i16 %i.eu, i64 3
  %i.fd = insertelement <8 x i16> %i.fc, i16 %i.ev, i64 4
  %i.fe = insertelement <8 x i16> %i.fd, i16 %i.ew, i64 5
  %i.ff = insertelement <8 x i16> %i.fe, i16 %i.ex, i64 6
  %i.fg = insertelement <8 x i16> %i.ff, i16 %i.ey, i64 7
  %i.fh = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.eb
  %i.fi = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.ec
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.ed
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.ee
  %i.fl = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.ef
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.eg
  %i.fn = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.eh
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.ei
  %i.fp = load i16, ptr %i.fh, align 2, !tbaa !10, !alias.scope !44
  %i.fq = load i16, ptr %i.fi, align 2, !tbaa !10, !alias.scope !44
  %i.fr = load i16, ptr %i.fj, align 2, !tbaa !10, !alias.scope !44
  %i.fs = load i16, ptr %i.fk, align 2, !tbaa !10, !alias.scope !44
  %i.ft = load i16, ptr %i.fl, align 2, !tbaa !10, !alias.scope !44
  %i.fu = load i16, ptr %i.fm, align 2, !tbaa !10, !alias.scope !44
  %i.fv = load i16, ptr %i.fn, align 2, !tbaa !10, !alias.scope !44
  %i.fw = load i16, ptr %i.fo, align 2, !tbaa !10, !alias.scope !44
  %i.fx = insertelement <8 x i16> poison, i16 %i.fp, i64 0
  %i.fy = insertelement <8 x i16> %i.fx, i16 %i.fq, i64 1
end_hunk_1
