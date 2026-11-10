Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng/original/chorba_sse41?download=true
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@crc_table = internal unnamed_addr constant [256 x i32] [i32 0, i32 1996959894, i32 -301047508, i32 -1727442502, i32 124634137, i32 1886057615, i32 -379345611, i32 -1637575261, i32 249268274, i32 2044508324, i32 -522852066, i32 -1747789432, i32 162941995, i32 2125561021, i32 -407360249, i32 -1866523247, i32 498536548, i32 1789927666, i32 -205950648, i32 -2067906082, i32 450548861, i32 1843258603, i32 -187386543, i32 -2083289657, i32 325883990, i32 1684777152, i32 -43845254, i32 -1973040660, i32 335633487, i32 1661365465, i32 -99664541, i32 -1928851979, i32 997073096, i32 1281953886, i32 -715111964, i32 -1570279054, i32 1006888145, i32 1258607687, i32 -770865667, i32 -1526024853, i32 901097722, i32 1119000684, i32 -608450090, i32 -1396901568, i32 853044451, i32 1172266101, i32 -589951537, i32 -1412350631, i32 651767980, i32 1373503546, i32 -925412992, i32 -1076862698, i32 565507253, i32 1454621731, i32 -809855591, i32 -1195530993, i32 671266974, i32 1594198024, i32 -972236366, i32 -1324619484, i32 795835527, i32 1483230225, i32 -1050600021, i32 -1234817731, i32 1994146192, i32 31158534, i32 -1731059524, i32 -271249366, i32 1907459465, i32 112637215, i32 -1614814043, i32 -390540237, i32 2013776290, i32 251722036, i32 -1777751922, i32 -519137256, i32 2137656763, i32 141376813, i32 -1855689577, i32 -429695999, i32 1802195444, i32 476864866, i32 -2056965928, i32 -228458418, i32 1812370925, i32 453092731, i32 -2113342271, i32 -183516073, i32 1706088902, i32 314042704, i32 -1950435094, i32 -54949764, i32 1658658271, i32 366619977, i32 -1932296973, i32 -69972891, i32 1303535960, i32 984961486, i32 -1547960204, i32 -725929758, i32 1256170817, i32 1037604311, i32 -1529756563, i32 -740887301, i32 1131014506, i32 879679996, i32 -1385723834, i32 -631195440, i32 1141124467, i32 855842277, i32 -1442165665, i32 -586318647, i32 1342533948, i32 654459306, i32 -1106571248, i32 -921952122, i32 1466479909, i32 544179635, i32 -1184443383, i32 -832445281, i32 1591671054, i32 702138776, i32 -1328506846, i32 -942167884, i32 1504918807, i32 783551873, i32 -1212326853, i32 -1061524307, i32 -306674912, i32 -1698712650, i32 62317068, i32 1957810842, i32 -355121351, i32 -1647151185, i32 81470997, i32 1943803523, i32 -480048366, i32 -1805370492, i32 225274430, i32 2053790376, i32 -468791541, i32 -1828061283, i32 167816743, i32 2097651377, i32 -267414716, i32 -2029476910, i32 503444072, i32 1762050814, i32 -144550051, i32 -2140837941, i32 426522225, i32 1852507879, i32 -19653770, i32 -1982649376, i32 282753626, i32 1742555852, i32 -105259153, i32 -1900089351, i32 397917763, i32 1622183637, i32 -690576408, i32 -1580100738, i32 953729732, i32 1340076626, i32 -776247311, i32 -1497606297, i32 1068828381, i32 1219638859, i32 -670225446, i32 -1358292148, i32 906185462, i32 1090812512, i32 -547295293, i32 -1469587627, i32 829329135, i32 1181335161, i32 -882789492, i32 -1134132454, i32 628085408, i32 1382605366, i32 -871598187, i32 -1156888829, i32 570562233, i32 1426400815, i32 -977650754, i32 -1296233688, i32 733239954, i32 1555261956, i32 -1026031705, i32 -1244606671, i32 752459403, i32 1541320221, i32 -1687895376, i32 -328994266, i32 1969922972, i32 40735498, i32 -1677130071, i32 -351390145, i32 1913087877, i32 83908371, i32 -1782625662, i32 -491226604, i32 2075208622, i32 213261112, i32 -1831694693, i32 -438977011, i32 2094854071, i32 198958881, i32 -2032938284, i32 -237706686, i32 1759359992, i32 534414190, i32 -2118248755, i32 -155638181, i32 1873836001, i32 414664567, i32 -2012718362, i32 -15766928, i32 1711684554, i32 285281116, i32 -1889165569, i32 -127750551, i32 1634467795, i32 376229701, i32 -1609899400, i32 -686959890, i32 1308918612, i32 956543938, i32 -1486412191, i32 -799009033, i32 1231636301, i32 1047427035, i32 -1362007478, i32 -640263460, i32 1088359270, i32 936918000, i32 -1447252397, i32 -558129467, i32 1202900863, i32 817233897, i32 -1111625188, i32 -893730166, i32 1404277552, i32 615818150, i32 -1160759803, i32 -841546093, i32 1423857449, i32 601450431, i32 -1285129682, i32 -1000256840, i32 1567103746, i32 711928724, i32 -1274298825, i32 -1022587231, i32 1510334235, i32 755167117], align 16

; Function Attrs: nounwind uwtable
define hidden i32 @crc32_chorba_sse41(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4096 x i64], align 16            ; 187 uses
  %i.b = alloca [9 x i64], align 16               ; 11 uses
  %i.c = xor i32 %0, -1                           ; 3 uses
  %i.d = ptrtoint ptr %1 to i64
  %i.e = sub i64 0, %i.d
  %i.f = and i64 %i.e, 15                         ; 5 uses
  %i.g = add nuw nsw i64 %i.f, 72
  %i.h = icmp ugt i64 %2, %i.g
  br i1 %i.h, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i32 @crc32_braid_internal(i32 noundef %i.c, ptr noundef %1, i64 noundef %i.f) #5
  %i.j = sub nuw i64 %2, %i.f
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.028 = phi i64 [ %i.j, %bb.c ], [ %2, %bb.b ]  ; 12 uses
  %.0 = phi i32 [ %i.i, %bb.c ], [ %i.c, %bb.b ]  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.f ; 49 uses
  %i.l = icmp ugt i64 %.028, 524288
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = tail call i32 @crc32_chorba_118960_nondestructive(i32 noundef %.0, ptr noundef %i.k, i64 noundef %.028) #5
  br label %bb.n

bb.f:                                             ; preds = %bb.d
  %i.n = add nsw i64 %.028, -8193
  %or.cond = icmp ult i64 %i.n, 24576
  br i1 %or.cond, label %.lr.ph.peel.next, label %bb.l

.lr.ph.peel.next:                                 ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 1024 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.o, i8 0, i64 128, i1 false), !tbaa !11
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 1280
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 1456
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 1152
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 1680
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 2400 ; 2 uses
  %i.u = zext i32 %.0 to i64
  %i.v = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.u, i64 0
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) %i.p, i8 0, i64 400, i1 false)
  %i.x = load <2 x i64>, ptr %i.k, align 16, !tbaa !11
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.z = load <2 x i64>, ptr %i.w, align 16, !tbaa !11 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.ab = load <2 x i64>, ptr %i.y, align 16, !tbaa !11 ; 3 uses
  %i.ac = load <2 x i64>, ptr %i.aa, align 16, !tbaa !11 ; 3 uses
  %spec.select.peel = xor <2 x i64> %i.x, %i.v    ; 3 uses
  %i.ad = bitcast <2 x i64> %spec.select.peel to <16 x i8>
  %3 = shufflevector <16 x i8> %i.ad, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 3 uses
  %i.ae = shufflevector <2 x i64> %spec.select.peel, <2 x i64> %i.z, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.af = shufflevector <2 x i64> %i.z, <2 x i64> %i.ab, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.ag = shufflevector <2 x i64> %i.ab, <2 x i64> %i.ac, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 1168
  store <16 x i8> %3, ptr %i.r, align 16, !tbaa !11
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 1184
  store <2 x i64> %i.ae, ptr %i.ah, align 16, !tbaa !11
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 1200
  store <2 x i64> %i.af, ptr %i.ai, align 16, !tbaa !11
  store <2 x i64> %i.ag, ptr %i.aj, align 16, !tbaa !11
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 1472
  store <16 x i8> %3, ptr %i.q, align 16, !tbaa !11
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 1488
  store <2 x i64> %i.ae, ptr %i.ak, align 16, !tbaa !11
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 1504
  store <2 x i64> %i.af, ptr %i.al, align 16, !tbaa !11
  store <2 x i64> %i.ag, ptr %i.am, align 16, !tbaa !11
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 1696
  store <16 x i8> %3, ptr %i.s, align 16, !tbaa !11
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 1712
  store <2 x i64> %i.ae, ptr %i.an, align 16, !tbaa !11
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 1728
  store <2 x i64> %i.af, ptr %i.ao, align 16, !tbaa !11
  store <2 x i64> %i.ag, ptr %i.ap, align 16, !tbaa !11
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 2416
  store <2 x i64> %spec.select.peel, ptr %i.t, align 16, !tbaa !11
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 2432
  store <2 x i64> %i.z, ptr %i.aq, align 16, !tbaa !11
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 2448
  store <2 x i64> %i.ab, ptr %i.ar, align 16, !tbaa !11
  store <2 x i64> %i.ac, ptr %i.as, align 16, !tbaa !11
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 2464
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 1744
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 1520
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 1216
  %i.ax = shufflevector <2 x i64> %i.ac, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.ay = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.az = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %i.ba = load <2 x i64>, ptr %i.ay, align 16, !tbaa !11 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %i.bc = load <2 x i64>, ptr %i.az, align 16, !tbaa !11 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  %i.be = load <2 x i64>, ptr %i.bb, align 16, !tbaa !11 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  %i.bg = load <2 x i64>, ptr %i.bd, align 16, !tbaa !11 ; 3 uses
  %4 = shufflevector <2 x i64> %i.ba, <2 x i64> <i64 poison, i64 0>, <2 x i32> <i32 3, i32 0>
  %i.bh = shufflevector <2 x i64> %i.ba, <2 x i64> %i.bc, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.bi = shufflevector <2 x i64> %i.bc, <2 x i64> %i.be, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.bj = shufflevector <2 x i64> %i.be, <2 x i64> %i.bg, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.bk = shufflevector <2 x i64> %i.bg, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.bl = xor <2 x i64> %i.ax, %4                 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 1232
  store <2 x i64> %i.bl, ptr %i.aw, align 16, !tbaa !11
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 1248
  store <2 x i64> %i.bh, ptr %i.bm, align 16, !tbaa !11
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 1264
  store <2 x i64> %i.bi, ptr %i.bn, align 16, !tbaa !11
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 1280
  store <2 x i64> %i.bj, ptr %i.bo, align 16, !tbaa !11
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 1536
  store <2 x i64> %i.bl, ptr %i.av, align 16, !tbaa !11
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 1552
  store <2 x i64> %i.bh, ptr %i.bq, align 16, !tbaa !11
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 1568
  store <2 x i64> %i.bi, ptr %i.br, align 16, !tbaa !11
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 1584
  store <2 x i64> %i.bj, ptr %i.bs, align 16, !tbaa !11
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 1760
  store <2 x i64> %i.bl, ptr %i.au, align 16, !tbaa !11
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 1776
  store <2 x i64> %i.bh, ptr %i.bu, align 16, !tbaa !11
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 1792
  store <2 x i64> %i.bi, ptr %i.bv, align 16, !tbaa !11
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 1808
  store <2 x i64> %i.bj, ptr %i.bw, align 16, !tbaa !11
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 2480
  store <2 x i64> %i.ba, ptr %i.at, align 16, !tbaa !11
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 2496
  store <2 x i64> %i.bc, ptr %i.by, align 16, !tbaa !11
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 2512
  store <2 x i64> %i.be, ptr %i.bz, align 16, !tbaa !11
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 2528
  store <2 x i64> %i.bg, ptr %i.ca, align 16, !tbaa !11
  %i.cc = getelementptr inbounds nuw i8, ptr %i.k, i64 144
  %i.cd = load <2 x i64>, ptr %i.bf, align 16, !tbaa !11 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.k, i64 160
  %i.cf = load <2 x i64>, ptr %i.cc, align 16, !tbaa !11 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.k, i64 176
  %i.ch = load <2 x i64>, ptr %i.ce, align 16, !tbaa !11 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.k, i64 192
  %i.cj = load <2 x i64>, ptr %i.cg, align 16, !tbaa !11 ; 3 uses
  %5 = shufflevector <2 x i64> %i.cd, <2 x i64> <i64 poison, i64 0>, <2 x i32> <i32 3, i32 0>
  %i.ck = shufflevector <2 x i64> %i.cd, <2 x i64> %i.cf, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.cl = shufflevector <2 x i64> %i.cf, <2 x i64> %i.ch, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.cm = shufflevector <2 x i64> %i.ch, <2 x i64> %i.cj, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.cn = shufflevector <2 x i64> %i.cj, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.co = xor <2 x i64> %i.bk, %5                 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 1296
  store <2 x i64> %i.co, ptr %i.bp, align 16, !tbaa !11
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 1312
  store <2 x i64> %i.ck, ptr %i.cp, align 16, !tbaa !11
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 1328
  store <2 x i64> %i.cl, ptr %i.cq, align 16, !tbaa !11
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 1344
  store <2 x i64> %i.cm, ptr %i.cr, align 16, !tbaa !11
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 1600
  store <2 x i64> %i.co, ptr %i.bt, align 16, !tbaa !11
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 1616
  store <2 x i64> %i.ck, ptr %i.ct, align 16, !tbaa !11
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 1632
  store <2 x i64> %i.cl, ptr %i.cu, align 16, !tbaa !11
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 1648
  store <2 x i64> %i.cm, ptr %i.cv, align 16, !tbaa !11
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 1824
  store <2 x i64> %i.co, ptr %i.bx, align 16, !tbaa !11
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 1840
  store <2 x i64> %i.ck, ptr %i.cx, align 16, !tbaa !11
  %i.cz = getelementptr inbounds nuw i8, ptr %i.a, i64 1856
  store <2 x i64> %i.cl, ptr %i.cy, align 16, !tbaa !11
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 1872
  store <2 x i64> %i.cm, ptr %i.cz, align 16, !tbaa !11
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 2544
  store <2 x i64> %i.cd, ptr %i.cb, align 16, !tbaa !11
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 2560
  store <2 x i64> %i.cf, ptr %i.db, align 16, !tbaa !11
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 2576
  store <2 x i64> %i.ch, ptr %i.dc, align 16, !tbaa !11
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 2592
  store <2 x i64> %i.cj, ptr %i.dd, align 16, !tbaa !11
  %i.df = getelementptr inbounds nuw i8, ptr %i.k, i64 208
  %i.dg = load <2 x i64>, ptr %i.ci, align 16, !tbaa !11 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.k, i64 224
  %i.di = load <2 x i64>, ptr %i.df, align 16, !tbaa !11 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.k, i64 240
  %i.dk = load <2 x i64>, ptr %i.dh, align 16, !tbaa !11 ; 3 uses
  %i.dl = load <2 x i64>, ptr %i.dj, align 16, !tbaa !11 ; 3 uses
  %6 = shufflevector <2 x i64> %i.dg, <2 x i64> <i64 poison, i64 0>, <2 x i32> <i32 3, i32 0> ; 2 uses
  %i.dm = shufflevector <2 x i64> %i.dg, <2 x i64> %i.di, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.dn = shufflevector <2 x i64> %i.di, <2 x i64> %i.dk, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.do = shufflevector <2 x i64> %i.dk, <2 x i64> %i.dl, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.dp = xor <2 x i64> %i.cn, %6                 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 1360
  store <2 x i64> %i.dp, ptr %i.cs, align 16, !tbaa !11
  %i.dr = getelementptr inbounds nuw i8, ptr %i.a, i64 1376
  store <2 x i64> %i.dm, ptr %i.dq, align 16, !tbaa !11
  %i.ds = getelementptr inbounds nuw i8, ptr %i.a, i64 1392
  store <2 x i64> %i.dn, ptr %i.dr, align 16, !tbaa !11
  store <2 x i64> %i.do, ptr %i.ds, align 16, !tbaa !11
  %i.dt = xor <2 x i64> %i.cn, %6
  %i.du = getelementptr inbounds nuw i8, ptr %i.a, i64 1664 ; 2 uses
  %i.dv = load <2 x i64>, ptr %i.du, align 16, !tbaa !11
  %i.dw = xor <2 x i64> %i.dv, %i.dm
  %i.dx = getelementptr inbounds nuw i8, ptr %i.a, i64 1680 ; 2 uses
  %i.dy = load <2 x i64>, ptr %i.dx, align 16, !tbaa !11
  %i.dz = xor <2 x i64> %i.dy, %i.dn
  %i.ea = getelementptr inbounds nuw i8, ptr %i.a, i64 1696 ; 2 uses
  %i.eb = load <2 x i64>, ptr %i.ea, align 16, !tbaa !11
  %i.ec = xor <2 x i64> %i.eb, %i.do
  %i.ed = getelementptr inbounds nuw i8, ptr %i.a, i64 1712 ; 2 uses
  %i.ee = load <2 x i64>, ptr %i.ed, align 16, !tbaa !11
  store <2 x i64> %i.dt, ptr %i.cw, align 16, !tbaa !11
  store <2 x i64> %i.dw, ptr %i.du, align 16, !tbaa !11
  store <2 x i64> %i.dz, ptr %i.dx, align 16, !tbaa !11
  store <2 x i64> %i.ec, ptr %i.ea, align 16, !tbaa !11
  %i.ef = getelementptr inbounds nuw i8, ptr %i.a, i64 1888
  store <2 x i64> %i.dp, ptr %i.da, align 16, !tbaa !11
  %i.eg = getelementptr inbounds nuw i8, ptr %i.a, i64 1904
  store <2 x i64> %i.dm, ptr %i.ef, align 16, !tbaa !11
  %i.eh = getelementptr inbounds nuw i8, ptr %i.a, i64 1920
  store <2 x i64> %i.dn, ptr %i.eg, align 16, !tbaa !11
  store <2 x i64> %i.do, ptr %i.eh, align 16, !tbaa !11
  %i.ei = getelementptr inbounds nuw i8, ptr %i.a, i64 2608
  store <2 x i64> %i.dg, ptr %i.de, align 16, !tbaa !11
  %i.ej = getelementptr inbounds nuw i8, ptr %i.a, i64 2624
  store <2 x i64> %i.di, ptr %i.ei, align 16, !tbaa !11
  %i.ek = getelementptr inbounds nuw i8, ptr %i.a, i64 2640
  store <2 x i64> %i.dk, ptr %i.ej, align 16, !tbaa !11
  store <2 x i64> %i.dl, ptr %i.ek, align 16, !tbaa !11
  %i.el = getelementptr inbounds nuw i8, ptr %i.k, i64 256
  %i.em = getelementptr inbounds nuw i8, ptr %i.a, i64 1408
  %i.en = shufflevector <2 x i64> %i.dl, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.eo = xor <2 x i64> %i.ee, %i.en
  %i.ep = getelementptr inbounds nuw i8, ptr %i.a, i64 1936
  %i.eq = getelementptr inbounds nuw i8, ptr %i.a, i64 2656
  %i.er = getelementptr inbounds nuw i8, ptr %i.k, i64 272
  %i.es = load <2 x i64>, ptr %i.el, align 16, !tbaa !11 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.k, i64 288
  %i.eu = load <2 x i64>, ptr %i.er, align 16, !tbaa !11 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.k, i64 304
  %i.ew = load <2 x i64>, ptr %i.et, align 16, !tbaa !11 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.k, i64 320
  %i.ey = load <2 x i64>, ptr %i.ev, align 16, !tbaa !11 ; 3 uses
  %7 = shufflevector <2 x i64> %i.es, <2 x i64> <i64 poison, i64 0>, <2 x i32> <i32 3, i32 0> ; 3 uses
  %i.ez = shufflevector <2 x i64> %i.es, <2 x i64> %i.eu, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.fa = shufflevector <2 x i64> %i.eu, <2 x i64> %i.ew, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.fb = shufflevector <2 x i64> %i.ew, <2 x i64> %i.ey, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.fc = shufflevector <2 x i64> %i.ey, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.fd = xor <2 x i64> %i.en, %7
  %i.fe = getelementptr inbounds nuw i8, ptr %i.a, i64 1424 ; 2 uses
  %i.ff = load <2 x i64>, ptr %i.fe, align 16, !tbaa !11
  %i.fg = xor <2 x i64> %i.ff, %i.ez
  %i.fh = getelementptr inbounds nuw i8, ptr %i.a, i64 1440 ; 2 uses
  %i.fi = load <2 x i64>, ptr %i.fh, align 16, !tbaa !11
  %i.fj = xor <2 x i64> %i.fi, %i.fa
  %i.fk = getelementptr inbounds nuw i8, ptr %i.a, i64 1456 ; 2 uses
  %i.fl = load <2 x i64>, ptr %i.fk, align 16, !tbaa !11
  %i.fm = xor <2 x i64> %i.fl, %i.fb
  %i.fn = getelementptr inbounds nuw i8, ptr %i.a, i64 1472 ; 2 uses
  %i.fo = load <2 x i64>, ptr %i.fn, align 16, !tbaa !11
  %i.fp = xor <2 x i64> %i.fo, %i.fc
  store <2 x i64> %i.fd, ptr %i.em, align 16, !tbaa !11
  store <2 x i64> %i.fg, ptr %i.fe, align 16, !tbaa !11
  store <2 x i64> %i.fj, ptr %i.fh, align 16, !tbaa !11
  store <2 x i64> %i.fm, ptr %i.fk, align 16, !tbaa !11
  %i.fq = xor <2 x i64> %i.eo, %7
  %i.fr = getelementptr inbounds nuw i8, ptr %i.a, i64 1728 ; 2 uses
  %i.fs = load <2 x i64>, ptr %i.fr, align 16, !tbaa !11
  %i.ft = xor <2 x i64> %i.fs, %i.ez
  %i.fu = getelementptr inbounds nuw i8, ptr %i.a, i64 1744 ; 2 uses
  %i.fv = load <2 x i64>, ptr %i.fu, align 16, !tbaa !11
  %i.fw = xor <2 x i64> %i.fv, %i.fa
  %i.fx = getelementptr inbounds nuw i8, ptr %i.a, i64 1760 ; 2 uses
  %i.fy = load <2 x i64>, ptr %i.fx, align 16, !tbaa !11
  %i.fz = xor <2 x i64> %i.fy, %i.fb
  %i.ga = getelementptr inbounds nuw i8, ptr %i.a, i64 1776 ; 2 uses
  %i.gb = load <2 x i64>, ptr %i.ga, align 16, !tbaa !11
  %i.gc = xor <2 x i64> %i.gb, %i.fc
  store <2 x i64> %i.fq, ptr %i.ed, align 16, !tbaa !11
  store <2 x i64> %i.ft, ptr %i.fr, align 16, !tbaa !11
  store <2 x i64> %i.fw, ptr %i.fu, align 16, !tbaa !11
  store <2 x i64> %i.fz, ptr %i.fx, align 16, !tbaa !11
  %i.gd = xor <2 x i64> %i.en, %7
  %i.ge = getelementptr inbounds nuw i8, ptr %i.a, i64 1952
  store <2 x i64> %i.gd, ptr %i.ep, align 16, !tbaa !11
  %i.gf = getelementptr inbounds nuw i8, ptr %i.a, i64 1968
  store <2 x i64> %i.ez, ptr %i.ge, align 16, !tbaa !11
  %i.gg = getelementptr inbounds nuw i8, ptr %i.a, i64 1984
  store <2 x i64> %i.fa, ptr %i.gf, align 16, !tbaa !11
  %i.gh = getelementptr inbounds nuw i8, ptr %i.a, i64 2000
  store <2 x i64> %i.fb, ptr %i.gg, align 16, !tbaa !11
  %i.gi = getelementptr inbounds nuw i8, ptr %i.a, i64 2672
  store <2 x i64> %i.es, ptr %i.eq, align 16, !tbaa !11
  %i.gj = getelementptr inbounds nuw i8, ptr %i.a, i64 2688
  store <2 x i64> %i.eu, ptr %i.gi, align 16, !tbaa !11
  %i.gk = getelementptr inbounds nuw i8, ptr %i.a, i64 2704
  store <2 x i64> %i.ew, ptr %i.gj, align 16, !tbaa !11
  %i.gl = getelementptr inbounds nuw i8, ptr %i.a, i64 2720
  store <2 x i64> %i.ey, ptr %i.gk, align 16, !tbaa !11
  %i.gm = getelementptr inbounds nuw i8, ptr %i.k, i64 336
  %i.gn = load <2 x i64>, ptr %i.ex, align 16, !tbaa !11 ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.k, i64 352
  %i.gp = load <2 x i64>, ptr %i.gm, align 16, !tbaa !11 ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.k, i64 368
  %i.gr = load <2 x i64>, ptr %i.go, align 16, !tbaa !11 ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.k, i64 384
  %i.gt = load <2 x i64>, ptr %i.gq, align 16, !tbaa !11 ; 3 uses
  %8 = shufflevector <2 x i64> %i.gn, <2 x i64> <i64 poison, i64 0>, <2 x i32> <i32 3, i32 0> ; 3 uses
  %i.gu = shufflevector <2 x i64> %i.gn, <2 x i64> %i.gp, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.gv = shufflevector <2 x i64> %i.gp, <2 x i64> %i.gr, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.gw = shufflevector <2 x i64> %i.gr, <2 x i64> %i.gt, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.gx = shufflevector <2 x i64> %i.gt, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.gy = xor <2 x i64> %i.fp, %8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.a, i64 1488 ; 2 uses
  %i.ha = load <2 x i64>, ptr %i.gz, align 16, !tbaa !11
  %i.hb = xor <2 x i64> %i.ha, %i.gu
  %i.hc = getelementptr inbounds nuw i8, ptr %i.a, i64 1504 ; 2 uses
  %i.hd = load <2 x i64>, ptr %i.hc, align 16, !tbaa !11
  %i.he = xor <2 x i64> %i.hd, %i.gv
  %i.hf = getelementptr inbounds nuw i8, ptr %i.a, i64 1520 ; 2 uses
  %i.hg = load <2 x i64>, ptr %i.hf, align 16, !tbaa !11
  %i.hh = xor <2 x i64> %i.hg, %i.gw
  %i.hi = getelementptr inbounds nuw i8, ptr %i.a, i64 1536 ; 2 uses
  %i.hj = load <2 x i64>, ptr %i.hi, align 16, !tbaa !11
  %i.hk = xor <2 x i64> %i.hj, %i.gx
  store <2 x i64> %i.gy, ptr %i.fn, align 16, !tbaa !11
  store <2 x i64> %i.hb, ptr %i.gz, align 16, !tbaa !11
  store <2 x i64> %i.he, ptr %i.hc, align 16, !tbaa !11
  store <2 x i64> %i.hh, ptr %i.hf, align 16, !tbaa !11
  %i.hl = xor <2 x i64> %i.gc, %8
  %i.hm = getelementptr inbounds nuw i8, ptr %i.a, i64 1792 ; 2 uses
  %i.hn = load <2 x i64>, ptr %i.hm, align 16, !tbaa !11
  %i.ho = xor <2 x i64> %i.hn, %i.gu
  %i.hp = getelementptr inbounds nuw i8, ptr %i.a, i64 1808 ; 2 uses
  %i.hq = load <2 x i64>, ptr %i.hp, align 16, !tbaa !11
  %i.hr = xor <2 x i64> %i.hq, %i.gv
  %i.hs = getelementptr inbounds nuw i8, ptr %i.a, i64 1824 ; 2 uses
  %i.ht = load <2 x i64>, ptr %i.hs, align 16, !tbaa !11
  %i.hu = xor <2 x i64> %i.ht, %i.gw
  %i.hv = getelementptr inbounds nuw i8, ptr %i.a, i64 1840 ; 2 uses
  %i.hw = load <2 x i64>, ptr %i.hv, align 16, !tbaa !11
  %i.hx = xor <2 x i64> %i.hw, %i.gx
  store <2 x i64> %i.hl, ptr %i.ga, align 16, !tbaa !11
  store <2 x i64> %i.ho, ptr %i.hm, align 16, !tbaa !11
  store <2 x i64> %i.hr, ptr %i.hp, align 16, !tbaa !11
  store <2 x i64> %i.hu, ptr %i.hs, align 16, !tbaa !11
  %i.hy = xor <2 x i64> %i.fc, %8
  %i.hz = getelementptr inbounds nuw i8, ptr %i.a, i64 2016
  store <2 x i64> %i.hy, ptr %i.gh, align 16, !tbaa !11
  %i.ia = getelementptr inbounds nuw i8, ptr %i.a, i64 2032
  store <2 x i64> %i.gu, ptr %i.hz, align 16, !tbaa !11
  %i.ib = getelementptr inbounds nuw i8, ptr %i.a, i64 2048
  store <2 x i64> %i.gv, ptr %i.ia, align 16, !tbaa !11
  %i.ic = getelementptr inbounds nuw i8, ptr %i.a, i64 2064
  store <2 x i64> %i.gw, ptr %i.ib, align 16, !tbaa !11
  %i.id = getelementptr inbounds nuw i8, ptr %i.a, i64 2736
  store <2 x i64> %i.gn, ptr %i.gl, align 16, !tbaa !11
  %i.ie = getelementptr inbounds nuw i8, ptr %i.a, i64 2752
  store <2 x i64> %i.gp, ptr %i.id, align 16, !tbaa !11
  %i.if = getelementptr inbounds nuw i8, ptr %i.a, i64 2768
  store <2 x i64> %i.gr, ptr %i.ie, align 16, !tbaa !11
  %i.ig = getelementptr inbounds nuw i8, ptr %i.a, i64 2784
  store <2 x i64> %i.gt, ptr %i.if, align 16, !tbaa !11
  %i.ih = getelementptr inbounds nuw i8, ptr %i.k, i64 400
  %i.ii = load <2 x i64>, ptr %i.gs, align 16, !tbaa !11 ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.k, i64 416
  %i.ik = load <2 x i64>, ptr %i.ih, align 16, !tbaa !11 ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.k, i64 432
  %i.im = load <2 x i64>, ptr %i.ij, align 16, !tbaa !11 ; 3 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.k, i64 448
  %i.io = load <2 x i64>, ptr %i.il, align 16, !tbaa !11 ; 3 uses
  %9 = shufflevector <2 x i64> %i.ii, <2 x i64> <i64 poison, i64 0>, <2 x i32> <i32 3, i32 0> ; 3 uses
  %i.ip = shufflevector <2 x i64> %i.ii, <2 x i64> %i.ik, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.iq = shufflevector <2 x i64> %i.ik, <2 x i64> %i.im, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.ir = shufflevector <2 x i64> %i.im, <2 x i64> %i.io, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.is = shufflevector <2 x i64> %i.io, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.it = xor <2 x i64> %i.hk, %9
  %i.iu = getelementptr inbounds nuw i8, ptr %i.a, i64 1552 ; 2 uses
  %i.iv = load <2 x i64>, ptr %i.iu, align 16, !tbaa !11
  %i.iw = xor <2 x i64> %i.iv, %i.ip
  %i.ix = getelementptr inbounds nuw i8, ptr %i.a, i64 1568 ; 2 uses
  %i.iy = load <2 x i64>, ptr %i.ix, align 16, !tbaa !11
  %i.iz = xor <2 x i64> %i.iy, %i.iq
  %i.ja = getelementptr inbounds nuw i8, ptr %i.a, i64 1584 ; 2 uses
  %i.jb = load <2 x i64>, ptr %i.ja, align 16, !tbaa !11
  %i.jc = xor <2 x i64> %i.jb, %i.ir
  %i.jd = getelementptr inbounds nuw i8, ptr %i.a, i64 1600 ; 2 uses
  %i.je = load <2 x i64>, ptr %i.jd, align 16, !tbaa !11
  %i.jf = xor <2 x i64> %i.je, %i.is
  store <2 x i64> %i.it, ptr %i.hi, align 16, !tbaa !11
  store <2 x i64> %i.iw, ptr %i.iu, align 16, !tbaa !11
  store <2 x i64> %i.iz, ptr %i.ix, align 16, !tbaa !11
  store <2 x i64> %i.jc, ptr %i.ja, align 16, !tbaa !11
  %i.jg = xor <2 x i64> %i.hx, %9
  %i.jh = getelementptr inbounds nuw i8, ptr %i.a, i64 1856 ; 2 uses
  %i.ji = load <2 x i64>, ptr %i.jh, align 16, !tbaa !11
  %i.jj = xor <2 x i64> %i.ji, %i.ip
  %i.jk = getelementptr inbounds nuw i8, ptr %i.a, i64 1872 ; 2 uses
  %i.jl = load <2 x i64>, ptr %i.jk, align 16, !tbaa !11
  %i.jm = xor <2 x i64> %i.jl, %i.iq
  %i.jn = getelementptr inbounds nuw i8, ptr %i.a, i64 1888 ; 2 uses
  %i.jo = load <2 x i64>, ptr %i.jn, align 16, !tbaa !11
  %i.jp = xor <2 x i64> %i.jo, %i.ir
  %i.jq = getelementptr inbounds nuw i8, ptr %i.a, i64 1904 ; 2 uses
  %i.jr = load <2 x i64>, ptr %i.jq, align 16, !tbaa !11
  %i.js = xor <2 x i64> %i.jr, %i.is
  store <2 x i64> %i.jg, ptr %i.hv, align 16, !tbaa !11
  store <2 x i64> %i.jj, ptr %i.jh, align 16, !tbaa !11
  store <2 x i64> %i.jm, ptr %i.jk, align 16, !tbaa !11
  store <2 x i64> %i.jp, ptr %i.jn, align 16, !tbaa !11
  %i.jt = xor <2 x i64> %i.gx, %9
  %i.ju = getelementptr inbounds nuw i8, ptr %i.a, i64 2080
  store <2 x i64> %i.jt, ptr %i.ic, align 16, !tbaa !11
  %i.jv = getelementptr inbounds nuw i8, ptr %i.a, i64 2096
  store <2 x i64> %i.ip, ptr %i.ju, align 16, !tbaa !11
  %i.jw = getelementptr inbounds nuw i8, ptr %i.a, i64 2112
  store <2 x i64> %i.iq, ptr %i.jv, align 16, !tbaa !11
  %i.jx = getelementptr inbounds nuw i8, ptr %i.a, i64 2128
  store <2 x i64> %i.ir, ptr %i.jw, align 16, !tbaa !11
  %i.jy = getelementptr inbounds nuw i8, ptr %i.a, i64 2800
  store <2 x i64> %i.ii, ptr %i.ig, align 16, !tbaa !11
  %i.jz = getelementptr inbounds nuw i8, ptr %i.a, i64 2816
  store <2 x i64> %i.ik, ptr %i.jy, align 16, !tbaa !11
  %i.ka = getelementptr inbounds nuw i8, ptr %i.a, i64 2832
  store <2 x i64> %i.im, ptr %i.jz, align 16, !tbaa !11
  %i.kb = getelementptr inbounds nuw i8, ptr %i.a, i64 2848
  store <2 x i64> %i.io, ptr %i.ka, align 16, !tbaa !11
  %i.kc = getelementptr inbounds nuw i8, ptr %i.k, i64 464
  %i.kd = load <2 x i64>, ptr %i.in, align 16, !tbaa !11 ; 3 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.k, i64 480
  %i.kf = load <2 x i64>, ptr %i.kc, align 16, !tbaa !11 ; 3 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.k, i64 496
  %i.kh = load <2 x i64>, ptr %i.ke, align 16, !tbaa !11 ; 3 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.k, i64 512
  %i.kj = load <2 x i64>, ptr %i.kg, align 16, !tbaa !11 ; 3 uses
  %10 = shufflevector <2 x i64> %i.kd, <2 x i64> <i64 poison, i64 0>, <2 x i32> <i32 3, i32 0> ; 3 uses
  %i.kk = shufflevector <2 x i64> %i.kd, <2 x i64> %i.kf, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.kl = shufflevector <2 x i64> %i.kf, <2 x i64> %i.kh, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.km = shufflevector <2 x i64> %i.kh, <2 x i64> %i.kj, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.kn = shufflevector <2 x i64> %i.kj, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.ko = xor <2 x i64> %i.jf, %10
  %i.kp = getelementptr inbounds nuw i8, ptr %i.a, i64 1616 ; 2 uses
  %i.kq = load <2 x i64>, ptr %i.kp, align 16, !tbaa !11
  %i.kr = xor <2 x i64> %i.kq, %i.kk
  %i.ks = getelementptr inbounds nuw i8, ptr %i.a, i64 1632 ; 2 uses
  %i.kt = load <2 x i64>, ptr %i.ks, align 16, !tbaa !11
  %i.ku = xor <2 x i64> %i.kt, %i.kl
  %i.kv = getelementptr inbounds nuw i8, ptr %i.a, i64 1648 ; 2 uses
  %i.kw = load <2 x i64>, ptr %i.kv, align 16, !tbaa !11
  %i.kx = xor <2 x i64> %i.kw, %i.km
  %i.ky = getelementptr inbounds nuw i8, ptr %i.a, i64 1664 ; 2 uses
  %i.kz = load <2 x i64>, ptr %i.ky, align 16, !tbaa !11
  %i.la = xor <2 x i64> %i.kz, %i.kn
  store <2 x i64> %i.ko, ptr %i.jd, align 16, !tbaa !11
  store <2 x i64> %i.kr, ptr %i.kp, align 16, !tbaa !11
  store <2 x i64> %i.ku, ptr %i.ks, align 16, !tbaa !11
  store <2 x i64> %i.kx, ptr %i.kv, align 16, !tbaa !11
  %i.lb = xor <2 x i64> %i.js, %10
  %i.lc = getelementptr inbounds nuw i8, ptr %i.a, i64 1920 ; 2 uses
  %i.ld = load <2 x i64>, ptr %i.lc, align 16, !tbaa !11
  %i.le = xor <2 x i64> %i.ld, %i.kk
  %i.lf = getelementptr inbounds nuw i8, ptr %i.a, i64 1936 ; 2 uses
  %i.lg = load <2 x i64>, ptr %i.lf, align 16, !tbaa !11
  %i.lh = xor <2 x i64> %i.lg, %i.kl
  %i.li = getelementptr inbounds nuw i8, ptr %i.a, i64 1952 ; 2 uses
  %i.lj = load <2 x i64>, ptr %i.li, align 16, !tbaa !11
  %i.lk = xor <2 x i64> %i.lj, %i.km
  %i.ll = getelementptr inbounds nuw i8, ptr %i.a, i64 1968 ; 2 uses
  %i.lm = load <2 x i64>, ptr %i.ll, align 16, !tbaa !11
  %i.ln = xor <2 x i64> %i.lm, %i.kn
  store <2 x i64> %i.lb, ptr %i.jq, align 16, !tbaa !11
  store <2 x i64> %i.le, ptr %i.lc, align 16, !tbaa !11
  store <2 x i64> %i.lh, ptr %i.lf, align 16, !tbaa !11
  store <2 x i64> %i.lk, ptr %i.li, align 16, !tbaa !11
  %i.lo = xor <2 x i64> %i.is, %10
  %i.lp = getelementptr inbounds nuw i8, ptr %i.a, i64 2144
  store <2 x i64> %i.lo, ptr %i.jx, align 16, !tbaa !11
  %i.lq = getelementptr inbounds nuw i8, ptr %i.a, i64 2160
  store <2 x i64> %i.kk, ptr %i.lp, align 16, !tbaa !11
  %i.lr = getelementptr inbounds nuw i8, ptr %i.a, i64 2176
  store <2 x i64> %i.kl, ptr %i.lq, align 16, !tbaa !11
  %i.ls = getelementptr inbounds nuw i8, ptr %i.a, i64 2192
  store <2 x i64> %i.km, ptr %i.lr, align 16, !tbaa !11
  %i.lt = getelementptr inbounds nuw i8, ptr %i.a, i64 2864
  store <2 x i64> %i.kd, ptr %i.kb, align 16, !tbaa !11
  %i.lu = getelementptr inbounds nuw i8, ptr %i.a, i64 2880
  store <2 x i64> %i.kf, ptr %i.lt, align 16, !tbaa !11
  %i.lv = getelementptr inbounds nuw i8, ptr %i.a, i64 2896
  store <2 x i64> %i.kh, ptr %i.lu, align 16, !tbaa !11
  %i.lw = getelementptr inbounds nuw i8, ptr %i.a, i64 2912
  store <2 x i64> %i.kj, ptr %i.lv, align 16, !tbaa !11
  %i.lx = getelementptr inbounds nuw i8, ptr %i.k, i64 528
  %i.ly = load <2 x i64>, ptr %i.ki, align 16, !tbaa !11 ; 3 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.k, i64 544
  %i.ma = load <2 x i64>, ptr %i.lx, align 16, !tbaa !11 ; 3 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.k, i64 560
  %i.mc = load <2 x i64>, ptr %i.lz, align 16, !tbaa !11 ; 3 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.k, i64 576
  %i.me = load <2 x i64>, ptr %i.mb, align 16, !tbaa !11 ; 3 uses
  %11 = shufflevector <2 x i64> %i.ly, <2 x i64> <i64 poison, i64 0>, <2 x i32> <i32 3, i32 0> ; 3 uses
  %i.mf = shufflevector <2 x i64> %i.ly, <2 x i64> %i.ma, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.mg = shufflevector <2 x i64> %i.ma, <2 x i64> %i.mc, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.mh = shufflevector <2 x i64> %i.mc, <2 x i64> %i.me, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.mi = shufflevector <2 x i64> %i.me, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.mj = xor <2 x i64> %i.la, %11
  %i.mk = getelementptr inbounds nuw i8, ptr %i.a, i64 1680 ; 2 uses
  %i.ml = load <2 x i64>, ptr %i.mk, align 16, !tbaa !11
  %i.mm = xor <2 x i64> %i.ml, %i.mf
  %i.mn = getelementptr inbounds nuw i8, ptr %i.a, i64 1696 ; 2 uses
  %i.mo = load <2 x i64>, ptr %i.mn, align 16, !tbaa !11
  %i.mp = xor <2 x i64> %i.mo, %i.mg
  %i.mq = getelementptr inbounds nuw i8, ptr %i.a, i64 1712 ; 2 uses
  %i.mr = load <2 x i64>, ptr %i.mq, align 16, !tbaa !11
  %i.ms = xor <2 x i64> %i.mr, %i.mh
  %i.mt = getelementptr inbounds nuw i8, ptr %i.a, i64 1728 ; 2 uses
  %i.mu = load <2 x i64>, ptr %i.mt, align 16, !tbaa !11
  %i.mv = xor <2 x i64> %i.mu, %i.mi
  store <2 x i64> %i.mj, ptr %i.ky, align 16, !tbaa !11
  store <2 x i64> %i.mm, ptr %i.mk, align 16, !tbaa !11
  store <2 x i64> %i.mp, ptr %i.mn, align 16, !tbaa !11
  store <2 x i64> %i.ms, ptr %i.mq, align 16, !tbaa !11
  %i.mw = xor <2 x i64> %i.ln, %11
  %i.mx = getelementptr inbounds nuw i8, ptr %i.a, i64 1984 ; 2 uses
  %i.my = load <2 x i64>, ptr %i.mx, align 16, !tbaa !11
  %i.mz = xor <2 x i64> %i.my, %i.mf
  %i.na = getelementptr inbounds nuw i8, ptr %i.a, i64 2000 ; 2 uses
  %i.nb = load <2 x i64>, ptr %i.na, align 16, !tbaa !11
  %i.nc = xor <2 x i64> %i.nb, %i.mg
  %i.nd = getelementptr inbounds nuw i8, ptr %i.a, i64 2016 ; 2 uses
  %i.ne = load <2 x i64>, ptr %i.nd, align 16, !tbaa !11
  %i.nf = xor <2 x i64> %i.ne, %i.mh
  %i.ng = getelementptr inbounds nuw i8, ptr %i.a, i64 2032 ; 2 uses
  %i.nh = load <2 x i64>, ptr %i.ng, align 16, !tbaa !11
  %i.ni = xor <2 x i64> %i.nh, %i.mi
  store <2 x i64> %i.mw, ptr %i.ll, align 16, !tbaa !11
  store <2 x i64> %i.mz, ptr %i.mx, align 16, !tbaa !11
  store <2 x i64> %i.nc, ptr %i.na, align 16, !tbaa !11
  store <2 x i64> %i.nf, ptr %i.nd, align 16, !tbaa !11
  %i.nj = xor <2 x i64> %i.kn, %11
  %i.nk = getelementptr inbounds nuw i8, ptr %i.a, i64 2208
  store <2 x i64> %i.nj, ptr %i.ls, align 16, !tbaa !11
  %i.nl = getelementptr inbounds nuw i8, ptr %i.a, i64 2224
  store <2 x i64> %i.mf, ptr %i.nk, align 16, !tbaa !11
  %i.nm = getelementptr inbounds nuw i8, ptr %i.a, i64 2240
  store <2 x i64> %i.mg, ptr %i.nl, align 16, !tbaa !11
  %i.nn = getelementptr inbounds nuw i8, ptr %i.a, i64 2256
  store <2 x i64> %i.mh, ptr %i.nm, align 16, !tbaa !11
  %i.no = getelementptr inbounds nuw i8, ptr %i.a, i64 2928
  store <2 x i64> %i.ly, ptr %i.lw, align 16, !tbaa !11
  %i.np = getelementptr inbounds nuw i8, ptr %i.a, i64 2944
  store <2 x i64> %i.ma, ptr %i.no, align 16, !tbaa !11
  %i.nq = getelementptr inbounds nuw i8, ptr %i.a, i64 2960
  store <2 x i64> %i.mc, ptr %i.np, align 16, !tbaa !11
  %i.nr = getelementptr inbounds nuw i8, ptr %i.a, i64 2976
  store <2 x i64> %i.me, ptr %i.nq, align 16, !tbaa !11
  %i.ns = getelementptr inbounds nuw i8, ptr %i.k, i64 592
  %i.nt = load <2 x i64>, ptr %i.md, align 16, !tbaa !11 ; 3 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.k, i64 608
  %i.nv = load <2 x i64>, ptr %i.ns, align 16, !tbaa !11 ; 3 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.k, i64 624
  %i.nx = load <2 x i64>, ptr %i.nu, align 16, !tbaa !11 ; 3 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.k, i64 640
  %i.nz = load <2 x i64>, ptr %i.nw, align 16, !tbaa !11 ; 3 uses
  %12 = shufflevector <2 x i64> %i.nt, <2 x i64> <i64 poison, i64 0>, <2 x i32> <i32 3, i32 0> ; 3 uses
  %i.oa = shufflevector <2 x i64> %i.nt, <2 x i64> %i.nv, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.ob = shufflevector <2 x i64> %i.nv, <2 x i64> %i.nx, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.oc = shufflevector <2 x i64> %i.nx, <2 x i64> %i.nz, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.od = shufflevector <2 x i64> %i.nz, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.oe = xor <2 x i64> %i.mv, %12
  %i.of = getelementptr inbounds nuw i8, ptr %i.a, i64 1744 ; 2 uses
  %i.og = load <2 x i64>, ptr %i.of, align 16, !tbaa !11
  %i.oh = xor <2 x i64> %i.og, %i.oa
  %i.oi = getelementptr inbounds nuw i8, ptr %i.a, i64 1760 ; 2 uses
  %i.oj = load <2 x i64>, ptr %i.oi, align 16, !tbaa !11
  %i.ok = xor <2 x i64> %i.oj, %i.ob
  %i.ol = getelementptr inbounds nuw i8, ptr %i.a, i64 1776 ; 2 uses
  %i.om = load <2 x i64>, ptr %i.ol, align 16, !tbaa !11
  %i.on = xor <2 x i64> %i.om, %i.oc
  %i.oo = getelementptr inbounds nuw i8, ptr %i.a, i64 1792 ; 2 uses
  %i.op = load <2 x i64>, ptr %i.oo, align 16, !tbaa !11
  %i.oq = xor <2 x i64> %i.op, %i.od
  store <2 x i64> %i.oe, ptr %i.mt, align 16, !tbaa !11
  store <2 x i64> %i.oh, ptr %i.of, align 16, !tbaa !11
  store <2 x i64> %i.ok, ptr %i.oi, align 16, !tbaa !11
  store <2 x i64> %i.on, ptr %i.ol, align 16, !tbaa !11
  %i.or = xor <2 x i64> %i.ni, %12
  %i.os = getelementptr inbounds nuw i8, ptr %i.a, i64 2048 ; 2 uses
  %i.ot = load <2 x i64>, ptr %i.os, align 16, !tbaa !11
  %i.ou = xor <2 x i64> %i.ot, %i.oa
  %i.ov = getelementptr inbounds nuw i8, ptr %i.a, i64 2064 ; 2 uses
  %i.ow = load <2 x i64>, ptr %i.ov, align 16, !tbaa !11
  %i.ox = xor <2 x i64> %i.ow, %i.ob
  %i.oy = getelementptr inbounds nuw i8, ptr %i.a, i64 2080 ; 2 uses
  %i.oz = load <2 x i64>, ptr %i.oy, align 16, !tbaa !11
  %i.pa = xor <2 x i64> %i.oz, %i.oc
  %i.pb = getelementptr inbounds nuw i8, ptr %i.a, i64 2096 ; 2 uses
  %i.pc = load <2 x i64>, ptr %i.pb, align 16, !tbaa !11
  %i.pd = xor <2 x i64> %i.pc, %i.od
  store <2 x i64> %i.or, ptr %i.ng, align 16, !tbaa !11
  store <2 x i64> %i.ou, ptr %i.os, align 16, !tbaa !11
  store <2 x i64> %i.ox, ptr %i.ov, align 16, !tbaa !11
  store <2 x i64> %i.pa, ptr %i.oy, align 16, !tbaa !11
  %i.pe = xor <2 x i64> %i.mi, %12
  %i.pf = getelementptr inbounds nuw i8, ptr %i.a, i64 2272
  store <2 x i64> %i.pe, ptr %i.nn, align 16, !tbaa !11
  %i.pg = getelementptr inbounds nuw i8, ptr %i.a, i64 2288
  store <2 x i64> %i.oa, ptr %i.pf, align 16, !tbaa !11
  %i.ph = getelementptr inbounds nuw i8, ptr %i.a, i64 2304
  store <2 x i64> %i.ob, ptr %i.pg, align 16, !tbaa !11
  %i.pi = getelementptr inbounds nuw i8, ptr %i.a, i64 2320
  store <2 x i64> %i.oc, ptr %i.ph, align 16, !tbaa !11
  %i.pj = getelementptr inbounds nuw i8, ptr %i.a, i64 2992
  store <2 x i64> %i.nt, ptr %i.nr, align 16, !tbaa !11
  %i.pk = getelementptr inbounds nuw i8, ptr %i.a, i64 3008
  store <2 x i64> %i.nv, ptr %i.pj, align 16, !tbaa !11
  %i.pl = getelementptr inbounds nuw i8, ptr %i.a, i64 3024
  store <2 x i64> %i.nx, ptr %i.pk, align 16, !tbaa !11
  %i.pm = getelementptr inbounds nuw i8, ptr %i.a, i64 3040
  store <2 x i64> %i.nz, ptr %i.pl, align 16, !tbaa !11
  %i.pn = getelementptr inbounds nuw i8, ptr %i.k, i64 656
  %i.po = load <2 x i64>, ptr %i.ny, align 16, !tbaa !11 ; 3 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.k, i64 672
  %i.pq = load <2 x i64>, ptr %i.pn, align 16, !tbaa !11 ; 3 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.k, i64 688
  %i.ps = load <2 x i64>, ptr %i.pp, align 16, !tbaa !11 ; 3 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.k, i64 704
  %i.pu = load <2 x i64>, ptr %i.pr, align 16, !tbaa !11 ; 3 uses
  %13 = shufflevector <2 x i64> %i.po, <2 x i64> <i64 poison, i64 0>, <2 x i32> <i32 3, i32 0> ; 3 uses
  %i.pv = shufflevector <2 x i64> %i.po, <2 x i64> %i.pq, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.pw = shufflevector <2 x i64> %i.pq, <2 x i64> %i.ps, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.px = shufflevector <2 x i64> %i.ps, <2 x i64> %i.pu, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.py = shufflevector <2 x i64> %i.pu, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.pz = xor <2 x i64> %i.oq, %13
  %i.qa = getelementptr inbounds nuw i8, ptr %i.a, i64 1808 ; 2 uses
  %i.qb = load <2 x i64>, ptr %i.qa, align 16, !tbaa !11
  %i.qc = xor <2 x i64> %i.qb, %i.pv
  %i.qd = getelementptr inbounds nuw i8, ptr %i.a, i64 1824 ; 2 uses
  %i.qe = load <2 x i64>, ptr %i.qd, align 16, !tbaa !11
  %i.qf = xor <2 x i64> %i.qe, %i.pw
  %i.qg = getelementptr inbounds nuw i8, ptr %i.a, i64 1840 ; 2 uses
  %i.qh = load <2 x i64>, ptr %i.qg, align 16, !tbaa !11
  %i.qi = xor <2 x i64> %i.qh, %i.px
  %i.qj = getelementptr inbounds nuw i8, ptr %i.a, i64 1856 ; 2 uses
  %i.qk = load <2 x i64>, ptr %i.qj, align 16, !tbaa !11
  %i.ql = xor <2 x i64> %i.qk, %i.py
  store <2 x i64> %i.pz, ptr %i.oo, align 16, !tbaa !11
  store <2 x i64> %i.qc, ptr %i.qa, align 16, !tbaa !11
  store <2 x i64> %i.qf, ptr %i.qd, align 16, !tbaa !11
  store <2 x i64> %i.qi, ptr %i.qg, align 16, !tbaa !11
  %i.qm = xor <2 x i64> %i.pd, %13
  %i.qn = getelementptr inbounds nuw i8, ptr %i.a, i64 2112 ; 2 uses
  %i.qo = load <2 x i64>, ptr %i.qn, align 16, !tbaa !11
  %i.qp = xor <2 x i64> %i.qo, %i.pv
  %i.qq = getelementptr inbounds nuw i8, ptr %i.a, i64 2128 ; 2 uses
  %i.qr = load <2 x i64>, ptr %i.qq, align 16, !tbaa !11
  %i.qs = xor <2 x i64> %i.qr, %i.pw
  %i.qt = getelementptr inbounds nuw i8, ptr %i.a, i64 2144 ; 2 uses
  %i.qu = load <2 x i64>, ptr %i.qt, align 16, !tbaa !11
  %i.qv = xor <2 x i64> %i.qu, %i.px
  %i.qw = getelementptr inbounds nuw i8, ptr %i.a, i64 2160 ; 2 uses
  %i.qx = load <2 x i64>, ptr %i.qw, align 16, !tbaa !11
  %i.qy = xor <2 x i64> %i.qx, %i.py
  store <2 x i64> %i.qm, ptr %i.pb, align 16, !tbaa !11
  store <2 x i64> %i.qp, ptr %i.qn, align 16, !tbaa !11
  store <2 x i64> %i.qs, ptr %i.qq, align 16, !tbaa !11
  store <2 x i64> %i.qv, ptr %i.qt, align 16, !tbaa !11
  %i.qz = xor <2 x i64> %i.od, %13
  %i.ra = getelementptr inbounds nuw i8, ptr %i.a, i64 2336
  store <2 x i64> %i.qz, ptr %i.pi, align 16, !tbaa !11
  %i.rb = getelementptr inbounds nuw i8, ptr %i.a, i64 2352
  store <2 x i64> %i.pv, ptr %i.ra, align 16, !tbaa !11
  %i.rc = getelementptr inbounds nuw i8, ptr %i.a, i64 2368
  store <2 x i64> %i.pw, ptr %i.rb, align 16, !tbaa !11
  %i.rd = getelementptr inbounds nuw i8, ptr %i.a, i64 2384
  store <2 x i64> %i.px, ptr %i.rc, align 16, !tbaa !11
  %i.re = getelementptr inbounds nuw i8, ptr %i.a, i64 3056
  store <2 x i64> %i.po, ptr %i.pm, align 16, !tbaa !11
  %i.rf = getelementptr inbounds nuw i8, ptr %i.a, i64 3072
  store <2 x i64> %i.pq, ptr %i.re, align 16, !tbaa !11
  %i.rg = getelementptr inbounds nuw i8, ptr %i.a, i64 3088
  store <2 x i64> %i.ps, ptr %i.rf, align 16, !tbaa !11
  %i.rh = getelementptr inbounds nuw i8, ptr %i.a, i64 3104
  store <2 x i64> %i.pu, ptr %i.rg, align 16, !tbaa !11
  br label %.lr.ph102

.lr.ph102:                                        ; preds = %.lr.ph.peel.next, %bb.k
  %.3.i101 = phi ptr [ %i.sv, %bb.k ], [ %i.qj, %.lr.ph.peel.next ] ; 5 uses
  %.3440.i100 = phi ptr [ %i.ti, %bb.k ], [ %i.qw, %.lr.ph.peel.next ] ; 5 uses
  %.3444.i99 = phi ptr [ %i.uc, %bb.k ], [ %i.rd, %.lr.ph.peel.next ] ; 9 uses
  %.3448.i98 = phi ptr [ %i.ug, %bb.k ], [ %i.rh, %.lr.ph.peel.next ] ; 5 uses
  %.0449.i97 = phi ptr [ %.1450.i, %bb.k ], [ %i.o, %.lr.ph.peel.next ] ; 6 uses
  %.3454.i96 = phi ptr [ %.4.i, %bb.k ], [ %i.pt, %.lr.ph.peel.next ] ; 7 uses
  %.3464.i95 = phi i64 [ %i.uh, %bb.k ], [ 704, %.lr.ph.peel.next ] ; 5 uses
  %.3485.i94 = phi <2 x i64> [ %i.sx, %bb.k ], [ %i.ql, %.lr.ph.peel.next ]
  %.3489.i93 = phi <2 x i64> [ %i.tk, %bb.k ], [ %i.qy, %.lr.ph.peel.next ]
  %.3493.i92 = phi <2 x i64> [ %.4494.i, %bb.k ], [ %i.py, %.lr.ph.peel.next ]
  %i.ri = icmp ult i64 %.3464.i95, 1024
  %i.rj = getelementptr inbounds nuw i8, ptr %.3454.i96, i64 16 ; 2 uses
  %i.rk = load <2 x i64>, ptr %.3454.i96, align 16, !tbaa !11 ; 2 uses
  br i1 %i.ri, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph102
  %i.rl = getelementptr inbounds nuw i8, ptr %.3454.i96, i64 32
  %i.rm = load <2 x i64>, ptr %i.rj, align 16, !tbaa !11
  %i.rn = getelementptr inbounds nuw i8, ptr %.3454.i96, i64 48
  %i.ro = load <2 x i64>, ptr %i.rl, align 16, !tbaa !11
  %i.rp = load <2 x i64>, ptr %i.rn, align 16, !tbaa !11
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph102
  %i.rq = getelementptr inbounds nuw i8, ptr %.0449.i97, i64 16
  %i.rr = load <2 x i64>, ptr %.0449.i97, align 16, !tbaa !11
  %i.rs = xor <2 x i64> %i.rr, %i.rk
  %i.rt = getelementptr inbounds nuw i8, ptr %.3454.i96, i64 32
  %i.ru = load <2 x i64>, ptr %i.rj, align 16, !tbaa !11
  %i.rv = getelementptr inbounds nuw i8, ptr %.0449.i97, i64 32
  %i.rw = load <2 x i64>, ptr %i.rq, align 16, !tbaa !11
  %i.rx = xor <2 x i64> %i.rw, %i.ru
  %i.ry = getelementptr inbounds nuw i8, ptr %.3454.i96, i64 48
  %i.rz = load <2 x i64>, ptr %i.rt, align 16, !tbaa !11
  %i.sa = getelementptr inbounds nuw i8, ptr %.0449.i97, i64 48
  %i.sb = load <2 x i64>, ptr %i.rv, align 16, !tbaa !11
  %i.sc = xor <2 x i64> %i.sb, %i.rz
  %i.sd = load <2 x i64>, ptr %i.ry, align 16, !tbaa !11
  %i.se = getelementptr inbounds nuw i8, ptr %.0449.i97, i64 64
  %i.sf = load <2 x i64>, ptr %i.sa, align 16, !tbaa !11
  %i.sg = xor <2 x i64> %i.sf, %i.sd
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0481.i = phi <2 x i64> [ %i.rk, %bb.g ], [ %i.rs, %bb.h ] ; 3 uses
  %.0480.i = phi <2 x i64> [ %i.rm, %bb.g ], [ %i.rx, %bb.h ] ; 3 uses
  %.0479.i = phi <2 x i64> [ %i.ro, %bb.g ], [ %i.sc, %bb.h ] ; 3 uses
  %.0478.i = phi <2 x i64> [ %i.rp, %bb.g ], [ %i.sg, %bb.h ] ; 3 uses
  %.1450.i = phi ptr [ %.0449.i97, %bb.g ], [ %i.se, %bb.h ]
  %.4.i = getelementptr inbounds nuw i8, ptr %.3454.i96, i64 64
  %14 = shufflevector <2 x i64> %.0481.i, <2 x i64> <i64 poison, i64 0>, <2 x i32> <i32 3, i32 0> ; 3 uses
  %i.sh = shufflevector <2 x i64> %.0481.i, <2 x i64> %.0480.i, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.si = shufflevector <2 x i64> %.0480.i, <2 x i64> %.0479.i, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.sj = shufflevector <2 x i64> %.0479.i, <2 x i64> %.0478.i, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.sk = shufflevector <2 x i64> %.0478.i, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.sl = xor <2 x i64> %.3485.i94, %14
  %i.sm = getelementptr inbounds nuw i8, ptr %.3.i101, i64 16 ; 2 uses
  %i.sn = load <2 x i64>, ptr %i.sm, align 16, !tbaa !11
  %i.so = xor <2 x i64> %i.sn, %i.sh
  %i.sp = getelementptr inbounds nuw i8, ptr %.3.i101, i64 32 ; 2 uses
  %i.sq = load <2 x i64>, ptr %i.sp, align 16, !tbaa !11
  %i.sr = xor <2 x i64> %i.sq, %i.si
  %i.ss = getelementptr inbounds nuw i8, ptr %.3.i101, i64 48 ; 2 uses
  %i.st = load <2 x i64>, ptr %i.ss, align 16, !tbaa !11
  %i.su = xor <2 x i64> %i.st, %i.sj
  %i.sv = getelementptr inbounds nuw i8, ptr %.3.i101, i64 64 ; 3 uses
  %i.sw = load <2 x i64>, ptr %i.sv, align 16, !tbaa !11
  %i.sx = xor <2 x i64> %i.sw, %i.sk              ; 2 uses
  store <2 x i64> %i.sl, ptr %.3.i101, align 16, !tbaa !11
  store <2 x i64> %i.so, ptr %i.sm, align 16, !tbaa !11
  store <2 x i64> %i.sr, ptr %i.sp, align 16, !tbaa !11
  store <2 x i64> %i.su, ptr %i.ss, align 16, !tbaa !11
  %i.sy = xor <2 x i64> %.3489.i93, %14
  %i.sz = getelementptr inbounds nuw i8, ptr %.3440.i100, i64 16 ; 2 uses
  %i.ta = load <2 x i64>, ptr %i.sz, align 16, !tbaa !11
  %i.tb = xor <2 x i64> %i.ta, %i.sh
  %i.tc = getelementptr inbounds nuw i8, ptr %.3440.i100, i64 32 ; 2 uses
  %i.td = load <2 x i64>, ptr %i.tc, align 16, !tbaa !11
  %i.te = xor <2 x i64> %i.td, %i.si
  %i.tf = getelementptr inbounds nuw i8, ptr %.3440.i100, i64 48 ; 2 uses
  %i.tg = load <2 x i64>, ptr %i.tf, align 16, !tbaa !11
  %i.th = xor <2 x i64> %i.tg, %i.sj
  %i.ti = getelementptr inbounds nuw i8, ptr %.3440.i100, i64 64 ; 3 uses
  %i.tj = load <2 x i64>, ptr %i.ti, align 16, !tbaa !11
  %i.tk = xor <2 x i64> %i.tj, %i.sk              ; 2 uses
  store <2 x i64> %i.sy, ptr %.3440.i100, align 16, !tbaa !11
  store <2 x i64> %i.tb, ptr %i.sz, align 16, !tbaa !11
  store <2 x i64> %i.te, ptr %i.tc, align 16, !tbaa !11
  store <2 x i64> %i.th, ptr %i.tf, align 16, !tbaa !11
  %i.tl = xor <2 x i64> %.3493.i92, %14
  %i.tm = icmp ult i64 %.3464.i95, 672
  br i1 %i.tm, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.tn = getelementptr inbounds nuw i8, ptr %.3444.i99, i64 16
  %i.to = load <2 x i64>, ptr %i.tn, align 16, !tbaa !11
  %i.tp = xor <2 x i64> %i.to, %i.sh
  %i.tq = getelementptr inbounds nuw i8, ptr %.3444.i99, i64 32
  %i.tr = load <2 x i64>, ptr %i.tq, align 16, !tbaa !11
  %i.ts = xor <2 x i64> %i.tr, %i.si
  %i.tt = getelementptr inbounds nuw i8, ptr %.3444.i99, i64 48
  %i.tu = load <2 x i64>, ptr %i.tt, align 16, !tbaa !11
  %i.tv = xor <2 x i64> %i.tu, %i.sj
  %i.tw = getelementptr inbounds nuw i8, ptr %.3444.i99, i64 64
  %i.tx = load <2 x i64>, ptr %i.tw, align 16, !tbaa !11
  %i.ty = xor <2 x i64> %i.tx, %i.sk
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.4494.i = phi <2 x i64> [ %i.ty, %bb.j ], [ %i.sk, %bb.i ] ; 2 uses
  %.0477.i = phi <2 x i64> [ %i.tp, %bb.j ], [ %i.sh, %bb.i ]
  %.0476.i = phi <2 x i64> [ %i.ts, %bb.j ], [ %i.si, %bb.i ]
  %.0475.i = phi <2 x i64> [ %i.tv, %bb.j ], [ %i.sj, %bb.i ]
  %i.tz = getelementptr inbounds nuw i8, ptr %.3444.i99, i64 16
  store <2 x i64> %i.tl, ptr %.3444.i99, align 16, !tbaa !11
  %i.ua = getelementptr inbounds nuw i8, ptr %.3444.i99, i64 32
  store <2 x i64> %.0477.i, ptr %i.tz, align 16, !tbaa !11
  %i.ub = getelementptr inbounds nuw i8, ptr %.3444.i99, i64 48
  store <2 x i64> %.0476.i, ptr %i.ua, align 16, !tbaa !11
  %i.uc = getelementptr inbounds nuw i8, ptr %.3444.i99, i64 64 ; 2 uses
  store <2 x i64> %.0475.i, ptr %i.ub, align 16, !tbaa !11
  %i.ud = getelementptr inbounds nuw i8, ptr %.3448.i98, i64 16
  store <2 x i64> %.0481.i, ptr %.3448.i98, align 16, !tbaa !11
  %i.ue = getelementptr inbounds nuw i8, ptr %.3448.i98, i64 32
  store <2 x i64> %.0480.i, ptr %i.ud, align 16, !tbaa !11
  %i.uf = getelementptr inbounds nuw i8, ptr %.3448.i98, i64 48
  store <2 x i64> %.0479.i, ptr %i.ue, align 16, !tbaa !11
  %i.ug = getelementptr inbounds nuw i8, ptr %.3448.i98, i64 64
  store <2 x i64> %.0478.i, ptr %i.uf, align 16, !tbaa !11
  %i.uh = add nuw i64 %.3464.i95, 64              ; 7 uses
  %i.ui = add nuw i64 %.3464.i95, 2528
  %i.uj = icmp ult i64 %i.ui, %.028
  br i1 %i.uj, label %.lr.ph102, label %._crit_edge, !llvm.loop !8

._crit_edge:                                      ; preds = %bb.k
  store <2 x i64> %i.sx, ptr %i.sv, align 16, !tbaa !11
  store <2 x i64> %i.tk, ptr %i.ti, align 16, !tbaa !11
  store <2 x i64> %.4494.i, ptr %i.uc, align 16, !tbaa !11
  %.neg = add nsw i64 %.028, -2400
  %i.uk = sub i64 %.neg, %i.uh                    ; 2 uses
  %i.ul = getelementptr i8, ptr %i.t, i64 %i.uh   ; 2 uses
  %i.um = icmp ugt i64 %i.uk, 63
  br i1 %i.um, label %.lr.ph113.preheader, label %.preheader32

.lr.ph113.preheader:                              ; preds = %._crit_edge
  %i.un = add nsw i64 %.028, -2464                ; 2 uses
  %i.uo = sub i64 %i.un, %i.uh
  %i.up = and i64 %i.uo, -64                      ; 2 uses
  %i.uq = add i64 %i.up, 64
  call void @llvm.memset.p0.i64(ptr align 16 %i.ul, i8 0, i64 %i.uq, i1 false), !tbaa !11
  %i.ur = getelementptr i8, ptr %i.a, i64 %i.uh
  %i.us = getelementptr i8, ptr %i.ur, i64 %i.up
  %scevgep = getelementptr i8, ptr %i.us, i64 2464
  %i.ut = and i64 %i.un, 63
  br label %.preheader32

.preheader32:                                     ; preds = %.lr.ph113.preheader, %._crit_edge
  %.0472.i.lcssa = phi i64 [ %i.uk, %._crit_edge ], [ %i.ut, %.lr.ph113.preheader ] ; 4 uses
  %.0470.i.lcssa = phi ptr [ %i.ul, %._crit_edge ], [ %scevgep, %.lr.ph113.preheader ] ; 3 uses
  %i.uu = icmp samesign ugt i64 %.0472.i.lcssa, 15
  br i1 %i.uu, label %.lr.ph118.preheader, label %.preheader

.lr.ph118.preheader:                              ; preds = %.preheader32
  %i.uv = and i64 %.0472.i.lcssa, 48              ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %.0470.i.lcssa, i8 0, i64 %i.uv, i1 false), !tbaa !11
  %scevgep182 = getelementptr i8, ptr %.0470.i.lcssa, i64 %i.uv
  %i.uw = and i64 %.0472.i.lcssa, 15
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph118.preheader, %.preheader32
  %.1473.i.lcssa = phi i64 [ %.0472.i.lcssa, %.preheader32 ], [ %i.uw, %.lr.ph118.preheader ] ; 2 uses
  %.1471.i.lcssa = phi ptr [ %.0470.i.lcssa, %.preheader32 ], [ %scevgep182, %.lr.ph118.preheader ]
  %.not.i121 = icmp eq i64 %.1473.i.lcssa, 0
  br i1 %.not.i121, label %._crit_edge125, label %.lr.ph124.preheader

.lr.ph124.preheader:                              ; preds = %.preheader
  call void @llvm.memset.p0.i64(ptr align 1 %.1471.i.lcssa, i8 0, i64 %.1473.i.lcssa, i1 false), !tbaa !11
  br label %._crit_edge125

._crit_edge125:                                   ; preds = %.lr.ph124.preheader, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.b, i8 0, i64 72, i1 false)
  %i.ux = add i64 %.3464.i95, 136
  %i.uy = icmp ult i64 %i.ux, %.028
  br i1 %i.uy, label %.lr.ph131, label %._crit_edge132

.lr.ph131:                                        ; preds = %._crit_edge125, %.lr.ph131
  %.4465.i129 = phi i64 [ %i.wz, %.lr.ph131 ], [ %i.uh, %._crit_edge125 ] ; 4 uses
  %.0466.i128 = phi <2 x i64> [ %i.wy, %.lr.ph131 ], [ zeroinitializer, %._crit_edge125 ]
  %.0467.i127 = phi <2 x i64> [ %i.wx, %.lr.ph131 ], [ zeroinitializer, %._crit_edge125 ]
  %.0468.i126 = phi <2 x i64> [ %i.wu, %.lr.ph131 ], [ zeroinitializer, %._crit_edge125 ]
  %i.uz = getelementptr inbounds nuw i8, ptr %i.k, i64 %.4465.i129 ; 2 uses
  %i.va = load <2 x i64>, ptr %i.uz, align 16, !tbaa !11
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uz, i64 16
  %i.vc = load <2 x i64>, ptr %i.vb, align 16, !tbaa !11
  %i.vd = getelementptr inbounds nuw i8, ptr %i.a, i64 %.4465.i129 ; 2 uses
  %i.ve = load <2 x i64>, ptr %i.vd, align 16, !tbaa !11
  %i.vf = getelementptr inbounds nuw i8, ptr %i.vd, i64 16
  %i.vg = load <2 x i64>, ptr %i.vf, align 16, !tbaa !11
  %i.vh = xor <2 x i64> %i.va, %.0468.i126
  %i.vi = xor <2 x i64> %i.vh, %i.ve              ; 8 uses
  %i.vj = shl <2 x i64> %i.vi, splat (i64 17)
  %i.vk = shl <2 x i64> %i.vi, splat (i64 55)
  %i.vl = lshr <2 x i64> %i.vi, splat (i64 47)
  %i.vm = lshr <2 x i64> %i.vi, splat (i64 9)
  %i.vn = xor <2 x i64> %i.vl, %i.vm
  %i.vo = shl <2 x i64> %i.vi, splat (i64 19)
  %i.vp = xor <2 x i64> %i.vn, %i.vo              ; 2 uses
  %i.vq = lshr <2 x i64> %i.vi, splat (i64 45)
  %i.vr = shl <2 x i64> %i.vi, splat (i64 44)
  %i.vs = or disjoint <2 x i64> %i.vq, %i.vr
  %i.vt = lshr <2 x i64> %i.vi, splat (i64 20)    ; 2 uses
  %15 = shufflevector <2 x i64> %i.vp, <2 x i64> <i64 poison, i64 0>, <2 x i32> <i32 3, i32 0>
  %i.vu = xor <2 x i64> %i.vc, %.0467.i127
  %i.vv = xor <2 x i64> %i.vu, %i.vg
  %i.vw = xor <2 x i64> %i.vv, %i.vk
  %i.vx = xor <2 x i64> %i.vw, %i.vj
  %i.vy = xor <2 x i64> %i.vx, %15                ; 8 uses
  %i.vz = shl <2 x i64> %i.vy, splat (i64 17)
  %i.wa = shl <2 x i64> %i.vy, splat (i64 55)
  %i.wb = lshr <2 x i64> %i.vy, splat (i64 47)
  %i.wc = lshr <2 x i64> %i.vy, splat (i64 9)
  %i.wd = xor <2 x i64> %i.wb, %i.wc
  %i.we = shl <2 x i64> %i.vy, splat (i64 19)
  %i.wf = xor <2 x i64> %i.wd, %i.we              ; 2 uses
  %i.wg = lshr <2 x i64> %i.vy, splat (i64 45)
  %i.wh = shl <2 x i64> %i.vy, splat (i64 44)
  %i.wi = or disjoint <2 x i64> %i.wg, %i.wh
  %i.wj = lshr <2 x i64> %i.vy, splat (i64 20)    ; 2 uses
  %i.wk = bitcast <2 x i64> %i.wf to <16 x i8>
  %i.wl = shufflevector <2 x i64> %i.vp, <2 x i64> %i.wf, <2 x i32> <i32 1, i32 2>
  %i.wm = bitcast <2 x i64> %i.vt to <16 x i8>
  %16 = shufflevector <16 x i8> %i.wm, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.wn = bitcast <16 x i8> %16 to <2 x i64>
  %i.wo = xor <2 x i64> %i.wl, %i.wn
  %i.wp = shufflevector <16 x i8> %i.wk, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.wq = shufflevector <2 x i64> %i.vt, <2 x i64> %i.wj, <2 x i32> <i32 1, i32 2>
  %i.wr = xor <2 x i64> %i.vs, %.0466.i128
  %i.ws = xor <2 x i64> %i.wr, %i.wa
  %i.wt = xor <2 x i64> %i.ws, %i.vz
  %i.wu = xor <2 x i64> %i.wt, %i.wo              ; 2 uses
  %i.wv = bitcast <16 x i8> %i.wp to <2 x i64>
  %i.ww = xor <2 x i64> %i.wq, %i.wv
  %i.wx = xor <2 x i64> %i.wi, %i.ww              ; 2 uses
  %i.wy = shufflevector <2 x i64> %i.wj, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.wz = add nuw nsw i64 %.4465.i129, 32         ; 2 uses
  %i.xa = add nuw i64 %.4465.i129, 104
  %i.xb = icmp ult i64 %i.xa, %.028
  br i1 %i.xb, label %.lr.ph131, label %._crit_edge132, !llvm.loop !9

._crit_edge132:                                   ; preds = %.lr.ph131, %._crit_edge125
  %.0468.i.lcssa = phi <2 x i64> [ zeroinitializer, %._crit_edge125 ], [ %i.wu, %.lr.ph131 ]
  %.0467.i.lcssa = phi <2 x i64> [ zeroinitializer, %._crit_edge125 ], [ %i.wx, %.lr.ph131 ]
  %.0466.i.lcssa = phi <2 x i64> [ zeroinitializer, %._crit_edge125 ], [ %i.wy, %.lr.ph131 ]
  %.4465.i.lcssa = phi i64 [ %i.uh, %._crit_edge125 ], [ %i.wz, %.lr.ph131 ] ; 5 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %i.k, i64 %.4465.i.lcssa
  %i.xd = sub i64 %.028, %.4465.i.lcssa           ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr nonnull align 8 %i.xc, i64 %i.xd, i1 false)
  %i.xe = load <2 x i64>, ptr %i.b, align 16, !tbaa !11
  %i.xf = xor <2 x i64> %i.xe, %.0468.i.lcssa
  store <2 x i64> %i.xf, ptr %i.b, align 16, !tbaa !11
  %i.xg = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.xh = load <2 x i64>, ptr %i.xg, align 16, !tbaa !11
  %i.xi = xor <2 x i64> %i.xh, %.0467.i.lcssa
  store <2 x i64> %i.xi, ptr %i.xg, align 16, !tbaa !11
  %i.xj = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.xk = load <2 x i64>, ptr %i.xj, align 16, !tbaa !11
  %i.xl = xor <2 x i64> %i.xk, %.0466.i.lcssa
  store <2 x i64> %i.xl, ptr %i.xj, align 16, !tbaa !11
  %invariant.gep = getelementptr i8, ptr %i.a, i64 %.4465.i.lcssa ; 3 uses
  %.not142 = icmp eq i64 %.028, %.4465.i.lcssa
  br i1 %.not142, label %crc32_chorba_32768_nondestructive_sse41.exit, label %.lr.ph140.preheader

.lr.ph140.preheader:                              ; preds = %._crit_edge132
  %.neg284 = add i64 %.4465.i.lcssa, 1
  %xtraiter = and i64 %i.xd, 1
  %i.xm = icmp eq i64 %.028, %.neg284
  br i1 %i.xm, label %.lr.ph140.epil.preheader, label %.lr.ph140.preheader.new

.lr.ph140.preheader.new:                          ; preds = %.lr.ph140.preheader
  %unroll_iter = and i64 %i.xd, -2
  br label %.lr.ph140

.lr.ph140:                                        ; preds = %.lr.ph140, %.lr.ph140.preheader.new
  %.0.i138 = phi i64 [ 0, %.lr.ph140.preheader.new ], [ %i.yg, %.lr.ph140 ] ; 4 uses
  %.0435.i137 = phi i32 [ 0, %.lr.ph140.preheader.new ], [ %i.yf, %.lr.ph140 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph140.preheader.new ], [ %niter.next.1, %.lr.ph140 ]
  %i.xn = getelementptr inbounds nuw i8, ptr %i.b, i64 %.0.i138
  %i.xo = load i8, ptr %i.xn, align 2, !tbaa !11
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.0.i138
  %i.xp = load i8, ptr %gep, align 1, !tbaa !11
  %.0435.tr.i = trunc i32 %.0435.i137 to i8
  %i.xq = xor i8 %i.xo, %.0435.tr.i
  %.narrow.i = xor i8 %i.xq, %i.xp
  %i.xr = zext i8 %.narrow.i to i64
  %i.xs = getelementptr inbounds nuw [4 x i8], ptr @crc_table, i64 %i.xr
  %i.xt = load i32, ptr %i.xs, align 4, !tbaa !13
  %i.xu = lshr i32 %.0435.i137, 8
  %i.xv = xor i32 %i.xt, %i.xu                    ; 2 uses
  %i.xw = or disjoint i64 %.0.i138, 1             ; 2 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.xw
  %i.xy = load i8, ptr %i.xx, align 1, !tbaa !11
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %i.xw
  %i.xz = load i8, ptr %gep.1, align 1, !tbaa !11
  %.0435.tr.i.1 = trunc i32 %i.xv to i8
  %i.ya = xor i8 %i.xy, %.0435.tr.i.1
  %.narrow.i.1 = xor i8 %i.ya, %i.xz
  %i.yb = zext i8 %.narrow.i.1 to i64
  %i.yc = getelementptr inbounds nuw [4 x i8], ptr @crc_table, i64 %i.yb
  %i.yd = load i32, ptr %i.yc, align 4, !tbaa !13
  %i.ye = lshr i32 %i.xv, 8
  %i.yf = xor i32 %i.yd, %i.ye                    ; 3 uses
  %i.yg = add nuw nsw i64 %.0.i138, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %crc32_chorba_32768_nondestructive_sse41.exit.loopexit.unr-lcssa, label %.lr.ph140, !llvm.loop !10

crc32_chorba_32768_nondestructive_sse41.exit.loopexit.unr-lcssa: ; preds = %.lr.ph140
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %crc32_chorba_32768_nondestructive_sse41.exit, label %.lr.ph140.epil.preheader

.lr.ph140.epil.preheader:                         ; preds = %crc32_chorba_32768_nondestructive_sse41.exit.loopexit.unr-lcssa, %.lr.ph140.preheader
  %.0.i138.epil.init = phi i64 [ 0, %.lr.ph140.preheader ], [ %i.yg, %crc32_chorba_32768_nondestructive_sse41.exit.loopexit.unr-lcssa ] ; 2 uses
  %.0435.i137.epil.init = phi i32 [ 0, %.lr.ph140.preheader ], [ %i.yf, %crc32_chorba_32768_nondestructive_sse41.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod283 = trunc i64 %i.xd to i1
  tail call void @llvm.assume(i1 %lcmp.mod283)
  %i.yh = getelementptr inbounds nuw i8, ptr %i.b, i64 %.0.i138.epil.init
  %i.yi = load i8, ptr %i.yh, align 1, !tbaa !11
  %gep.epil = getelementptr i8, ptr %invariant.gep, i64 %.0.i138.epil.init
  %i.yj = load i8, ptr %gep.epil, align 1, !tbaa !11
  %.0435.tr.i.epil = trunc i32 %.0435.i137.epil.init to i8
  %i.yk = xor i8 %i.yi, %.0435.tr.i.epil
  %.narrow.i.epil = xor i8 %i.yk, %i.yj
  %i.yl = zext i8 %.narrow.i.epil to i64
  %i.ym = getelementptr inbounds nuw [4 x i8], ptr @crc_table, i64 %i.yl
  %i.yn = load i32, ptr %i.ym, align 4, !tbaa !13
  %i.yo = lshr i32 %.0435.i137.epil.init, 8
  %i.yp = xor i32 %i.yn, %i.yo
  br label %crc32_chorba_32768_nondestructive_sse41.exit

crc32_chorba_32768_nondestructive_sse41.exit:     ; preds = %.lr.ph140.epil.preheader, %crc32_chorba_32768_nondestructive_sse41.exit.loopexit.unr-lcssa, %._crit_edge132
  %.0435.i.lcssa = phi i32 [ 0, %._crit_edge132 ], [ %i.yf, %crc32_chorba_32768_nondestructive_sse41.exit.loopexit.unr-lcssa ], [ %i.yp, %.lr.ph140.epil.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.n

bb.l:                                             ; preds = %bb.f
  %i.yq = tail call i32 @chorba_small_nondestructive_sse2(i32 noundef %.0, ptr noundef %i.k, i64 noundef %.028) #5
  br label %bb.n

bb.m:                                             ; preds = %bb.a
  %i.yr = tail call i32 @crc32_braid_internal(i32 noundef %i.c, ptr noundef %1, i64 noundef %2) #5
  br label %bb.n

bb.n:                                             ; preds = %bb.e, %bb.l, %crc32_chorba_32768_nondestructive_sse41.exit, %bb.m
  %.1 = phi i32 [ %i.m, %bb.e ], [ %.0435.i.lcssa, %crc32_chorba_32768_nondestructive_sse41.exit ], [ %i.yq, %bb.l ], [ %i.yr, %bb.m ]
  %i.ys = xor i32 %.1, -1
  ret i32 %i.ys
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @crc32_braid_internal(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @crc32_chorba_118960_nondestructive(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @chorba_small_nondestructive_sse2(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !12}
!9 = distinct !{!9, !12}
!10 = distinct !{!10, !12}
!11 = !{!4, !4, i64 0}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!5, !5, i64 0}
end_hunk_0
