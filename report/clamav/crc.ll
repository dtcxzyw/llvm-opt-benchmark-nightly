Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/crc?download=true
inline.NumInlined: 4
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZL10crc_tables = internal unnamed_addr global [8 x [256 x i32]] zeroinitializer, align 16
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_crc.cpp, ptr null }]
@.crctable = private unnamed_addr constant [256 x i32] [i32 0, i32 1996959894, i32 -301047508, i32 -1727442502, i32 124634137, i32 1886057615, i32 -379345611, i32 -1637575261, i32 249268274, i32 2044508324, i32 -522852066, i32 -1747789432, i32 162941995, i32 2125561021, i32 -407360249, i32 -1866523247, i32 498536548, i32 1789927666, i32 -205950648, i32 -2067906082, i32 450548861, i32 1843258603, i32 -187386543, i32 -2083289657, i32 325883990, i32 1684777152, i32 -43845254, i32 -1973040660, i32 335633487, i32 1661365465, i32 -99664541, i32 -1928851979, i32 997073096, i32 1281953886, i32 -715111964, i32 -1570279054, i32 1006888145, i32 1258607687, i32 -770865667, i32 -1526024853, i32 901097722, i32 1119000684, i32 -608450090, i32 -1396901568, i32 853044451, i32 1172266101, i32 -589951537, i32 -1412350631, i32 651767980, i32 1373503546, i32 -925412992, i32 -1076862698, i32 565507253, i32 1454621731, i32 -809855591, i32 -1195530993, i32 671266974, i32 1594198024, i32 -972236366, i32 -1324619484, i32 795835527, i32 1483230225, i32 -1050600021, i32 -1234817731, i32 1994146192, i32 31158534, i32 -1731059524, i32 -271249366, i32 1907459465, i32 112637215, i32 -1614814043, i32 -390540237, i32 2013776290, i32 251722036, i32 -1777751922, i32 -519137256, i32 2137656763, i32 141376813, i32 -1855689577, i32 -429695999, i32 1802195444, i32 476864866, i32 -2056965928, i32 -228458418, i32 1812370925, i32 453092731, i32 -2113342271, i32 -183516073, i32 1706088902, i32 314042704, i32 -1950435094, i32 -54949764, i32 1658658271, i32 366619977, i32 -1932296973, i32 -69972891, i32 1303535960, i32 984961486, i32 -1547960204, i32 -725929758, i32 1256170817, i32 1037604311, i32 -1529756563, i32 -740887301, i32 1131014506, i32 879679996, i32 -1385723834, i32 -631195440, i32 1141124467, i32 855842277, i32 -1442165665, i32 -586318647, i32 1342533948, i32 654459306, i32 -1106571248, i32 -921952122, i32 1466479909, i32 544179635, i32 -1184443383, i32 -832445281, i32 1591671054, i32 702138776, i32 -1328506846, i32 -942167884, i32 1504918807, i32 783551873, i32 -1212326853, i32 -1061524307, i32 -306674912, i32 -1698712650, i32 62317068, i32 1957810842, i32 -355121351, i32 -1647151185, i32 81470997, i32 1943803523, i32 -480048366, i32 -1805370492, i32 225274430, i32 2053790376, i32 -468791541, i32 -1828061283, i32 167816743, i32 2097651377, i32 -267414716, i32 -2029476910, i32 503444072, i32 1762050814, i32 -144550051, i32 -2140837941, i32 426522225, i32 1852507879, i32 -19653770, i32 -1982649376, i32 282753626, i32 1742555852, i32 -105259153, i32 -1900089351, i32 397917763, i32 1622183637, i32 -690576408, i32 -1580100738, i32 953729732, i32 1340076626, i32 -776247311, i32 -1497606297, i32 1068828381, i32 1219638859, i32 -670225446, i32 -1358292148, i32 906185462, i32 1090812512, i32 -547295293, i32 -1469587627, i32 829329135, i32 1181335161, i32 -882789492, i32 -1134132454, i32 628085408, i32 1382605366, i32 -871598187, i32 -1156888829, i32 570562233, i32 1426400815, i32 -977650754, i32 -1296233688, i32 733239954, i32 1555261956, i32 -1026031705, i32 -1244606671, i32 752459403, i32 1541320221, i32 -1687895376, i32 -328994266, i32 1969922972, i32 40735498, i32 -1677130071, i32 -351390145, i32 1913087877, i32 83908371, i32 -1782625662, i32 -491226604, i32 2075208622, i32 213261112, i32 -1831694693, i32 -438977011, i32 2094854071, i32 198958881, i32 -2032938284, i32 -237706686, i32 1759359992, i32 534414190, i32 -2118248755, i32 -155638181, i32 1873836001, i32 414664567, i32 -2012718362, i32 -15766928, i32 1711684554, i32 285281116, i32 -1889165569, i32 -127750551, i32 1634467795, i32 376229701, i32 -1609899400, i32 -686959890, i32 1308918612, i32 956543938, i32 -1486412191, i32 -799009033, i32 1231636301, i32 1047427035, i32 -1362007478, i32 -640263460, i32 1088359270, i32 936918000, i32 -1447252397, i32 -558129467, i32 1202900863, i32 817233897, i32 -1111625188, i32 -893730166, i32 1404277552, i32 615818150, i32 -1160759803, i32 -841546093, i32 1423857449, i32 601450431, i32 -1285129682, i32 -1000256840, i32 1567103746, i32 711928724, i32 -1274298825, i32 -1022587231, i32 1510334235, i32 755167117]

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_Z9InitCRC32Pj(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %vector.body, label %.loopexit

vector.body:                                      ; preds = %bb.a, %vector.body
  %index = phi i64 [ %index.next.1, %vector.body ], [ 0, %bb.a ] ; 4 uses
  %vec.ind = phi <4 x i32> [ %vec.ind.next.1, %vector.body ], [ <i32 0, i32 1, i32 2, i32 3>, %bb.a ] ; 5 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.c = lshr <4 x i32> %vec.ind, splat (i32 8)
  %i.d = lshr <4 x i32> %step.add, splat (i32 8)
  %i.e = getelementptr inbounds nuw [4 x i8], ptr @.crctable, i64 %index ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %wide.load = load <4 x i32>, ptr %i.e, align 16
  %wide.load19 = load <4 x i32>, ptr %i.f, align 16
  %i.g = xor <4 x i32> %i.c, %wide.load
  %i.h = xor <4 x i32> %i.d, %wide.load19
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store <4 x i32> %i.g, ptr %i.i, align 4, !tbaa !8
  store <4 x i32> %i.h, ptr %i.j, align 4, !tbaa !8
  %index.next = or disjoint i64 %index, 8         ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %step.add.1 = add <4 x i32> %vec.ind, splat (i32 12)
  %i.k = lshr <4 x i32> %vec.ind.next, splat (i32 8)
  %i.l = lshr <4 x i32> %step.add.1, splat (i32 8)
  %i.m = getelementptr inbounds nuw [4 x i8], ptr @.crctable, i64 %index.next ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %wide.load.1 = load <4 x i32>, ptr %i.m, align 16
  %wide.load19.1 = load <4 x i32>, ptr %i.n, align 16
  %i.o = xor <4 x i32> %i.k, %wide.load.1
  %i.p = xor <4 x i32> %i.l, %wide.load19.1
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index.next ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store <4 x i32> %i.o, ptr %i.q, align 4, !tbaa !8
  store <4 x i32> %i.p, ptr %i.r, align 4, !tbaa !8
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
  %vec.ind.next.1 = add <4 x i32> %vec.ind, splat (i32 16)
  %i.s = icmp eq i64 %index.next.1, 256
  br i1 %i.s, label %.loopexit, label %vector.body, !llvm.loop !9

.loopexit:                                        ; preds = %vector.body, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_Z5CRC32jPKvm(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ne i64 %2, 0
  %i.b = ptrtoint ptr %1 to i64
  %i.c = and i64 %i.b, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = and i1 %i.a, %i.d
  br i1 %i.e, label %.lr.ph.6, label %.preheader34

.preheader34:                                     ; preds = %.lr.ph.6, %bb.a
  %.031.lcssa = phi i64 [ %2, %bb.a ], [ %i.o, %.lr.ph.6 ] ; 3 uses
  %.028.lcssa = phi ptr [ %1, %bb.a ], [ %i.p, %.lr.ph.6 ] ; 2 uses
  %.0.lcssa = phi i32 [ %0, %bb.a ], [ %i.n, %.lr.ph.6 ] ; 2 uses
  %i.f = icmp ugt i64 %.031.lcssa, 7
  br i1 %i.f, label %.lr.ph43, label %.preheader

.lr.ph.6:                                         ; preds = %bb.a, %.lr.ph.6
  %.037 = phi i32 [ %i.n, %.lr.ph.6 ], [ %0, %bb.a ] ; 2 uses
  %.02836 = phi ptr [ %i.p, %.lr.ph.6 ], [ %1, %bb.a ] ; 2 uses
  %.03135 = phi i64 [ %i.o, %.lr.ph.6 ], [ %2, %bb.a ]
  %i.g = load i8, ptr %.02836, align 1, !tbaa !13
  %i.h = trunc i32 %.037 to i8
  %i.i = xor i8 %i.g, %i.h
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr @_ZL10crc_tables, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !8
  %i.m = lshr i32 %.037, 8
  %i.n = xor i32 %i.l, %i.m                       ; 2 uses
  %i.o = add i64 %.03135, -1                      ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.02836, i64 1 ; 3 uses
  %i.q = icmp ne i64 %i.o, 0
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = and i64 %i.r, 7
  %i.t = icmp ne i64 %i.s, 0
  %i.u = select i1 %i.q, i1 %i.t, i1 false
  br i1 %i.u, label %.lr.ph.6, label %.preheader34, !llvm.loop !14

.preheader:                                       ; preds = %.lr.ph43, %.preheader34
  %.132.lcssa = phi i64 [ %.031.lcssa, %.preheader34 ], [ %i.bq, %.lr.ph43 ] ; 7 uses
  %.129.lcssa = phi ptr [ %.028.lcssa, %.preheader34 ], [ %i.br, %.lr.ph43 ] ; 7 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader34 ], [ %i.bp, %.lr.ph43 ] ; 3 uses
  %.not47 = icmp eq i64 %.132.lcssa, 0
  br i1 %.not47, label %._crit_edge, label %.lr.ph51

.lr.ph43:                                         ; preds = %.preheader34, %.lr.ph43
  %.142 = phi i32 [ %i.bp, %.lr.ph43 ], [ %.0.lcssa, %.preheader34 ]
  %.12941 = phi ptr [ %i.br, %.lr.ph43 ], [ %.028.lcssa, %.preheader34 ] ; 3 uses
  %.13240 = phi i64 [ %i.bq, %.lr.ph43 ], [ %.031.lcssa, %.preheader34 ]
  %i.v = load i32, ptr %.12941, align 4, !tbaa !8
  %i.w = xor i32 %i.v, %.142                      ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.12941, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !8    ; 4 uses
  %i.z = and i32 %i.w, 255
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL10crc_tables, i64 7168), i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !8
  %i.ad = lshr i32 %i.w, 8
  %i.ae = and i32 %i.ad, 255
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL10crc_tables, i64 6144), i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !8
  %i.ai = xor i32 %i.ah, %i.ac
  %i.aj = lshr i32 %i.w, 16
  %i.ak = and i32 %i.aj, 255
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL10crc_tables, i64 5120), i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !8
  %i.ao = xor i32 %i.ai, %i.an
  %i.ap = lshr i32 %i.w, 24
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL10crc_tables, i64 4096), i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !8
  %i.at = xor i32 %i.ao, %i.as
  %i.au = and i32 %i.y, 255
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL10crc_tables, i64 3072), i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !8
  %i.ay = xor i32 %i.at, %i.ax
  %i.az = lshr i32 %i.y, 8
  %i.ba = and i32 %i.az, 255
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL10crc_tables, i64 2048), i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !8
  %i.be = xor i32 %i.ay, %i.bd
  %i.bf = lshr i32 %i.y, 16
  %i.bg = and i32 %i.bf, 255
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL10crc_tables, i64 1024), i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !8
  %i.bk = xor i32 %i.be, %i.bj
  %i.bl = lshr i32 %i.y, 24
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr @_ZL10crc_tables, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !8
  %i.bp = xor i32 %i.bk, %i.bo                    ; 2 uses
  %i.bq = add i64 %.13240, -8                     ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.12941, i64 8 ; 2 uses
  %i.bs = icmp ugt i64 %i.bq, 7
  br i1 %i.bs, label %.lr.ph43, label %.preheader, !llvm.loop !15

.lr.ph51:                                         ; preds = %.preheader
  %i.bt = load i8, ptr %.129.lcssa, align 1, !tbaa !13
  %i.bu = trunc i32 %.1.lcssa to i8
  %i.bv = xor i8 %i.bt, %i.bu
  %i.bw = zext i8 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr @_ZL10crc_tables, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !8
  %i.bz = lshr i32 %.1.lcssa, 8
  %i.ca = xor i32 %i.by, %i.bz                    ; 3 uses
  %.not = icmp eq i64 %.132.lcssa, 1
  br i1 %.not, label %._crit_edge, label %.lr.ph51.1

.lr.ph51.1:                                       ; preds = %.lr.ph51
  %i.cb = getelementptr inbounds nuw i8, ptr %.129.lcssa, i64 1
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !13
  %i.cd = trunc i32 %i.ca to i8
  %i.ce = xor i8 %i.cc, %i.cd
  %i.cf = zext i8 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr @_ZL10crc_tables, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !8
  %i.ci = lshr i32 %i.ca, 8
  %i.cj = xor i32 %i.ch, %i.ci                    ; 3 uses
  %.not.1 = icmp eq i64 %.132.lcssa, 2
  br i1 %.not.1, label %._crit_edge, label %.lr.ph51.2

.lr.ph51.2:                                       ; preds = %.lr.ph51.1
  %i.ck = getelementptr inbounds nuw i8, ptr %.129.lcssa, i64 2
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !13
  %i.cm = trunc i32 %i.cj to i8
  %i.cn = xor i8 %i.cl, %i.cm
  %i.co = zext i8 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr @_ZL10crc_tables, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !8
  %i.cr = lshr i32 %i.cj, 8
  %i.cs = xor i32 %i.cq, %i.cr                    ; 3 uses
  %.not.2 = icmp eq i64 %.132.lcssa, 3
  br i1 %.not.2, label %._crit_edge, label %.lr.ph51.3

.lr.ph51.3:                                       ; preds = %.lr.ph51.2
  %i.ct = getelementptr inbounds nuw i8, ptr %.129.lcssa, i64 3
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !13
  %i.cv = trunc i32 %i.cs to i8
  %i.cw = xor i8 %i.cu, %i.cv
  %i.cx = zext i8 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr @_ZL10crc_tables, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !8
  %i.da = lshr i32 %i.cs, 8
  %i.db = xor i32 %i.cz, %i.da                    ; 3 uses
  %.not.3 = icmp eq i64 %.132.lcssa, 4
  br i1 %.not.3, label %._crit_edge, label %.lr.ph51.4

.lr.ph51.4:                                       ; preds = %.lr.ph51.3
  %i.dc = getelementptr inbounds nuw i8, ptr %.129.lcssa, i64 4
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !13
  %i.de = trunc i32 %i.db to i8
  %i.df = xor i8 %i.dd, %i.de
  %i.dg = zext i8 %i.df to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr @_ZL10crc_tables, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !8
  %i.dj = lshr i32 %i.db, 8
  %i.dk = xor i32 %i.di, %i.dj                    ; 3 uses
  %.not.4 = icmp eq i64 %.132.lcssa, 5
  br i1 %.not.4, label %._crit_edge, label %.lr.ph51.5

.lr.ph51.5:                                       ; preds = %.lr.ph51.4
  %i.dl = getelementptr inbounds nuw i8, ptr %.129.lcssa, i64 5
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !13
  %i.dn = trunc i32 %i.dk to i8
  %i.do = xor i8 %i.dm, %i.dn
  %i.dp = zext i8 %i.do to i64
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr @_ZL10crc_tables, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !8
  %i.ds = lshr i32 %i.dk, 8
  %i.dt = xor i32 %i.dr, %i.ds                    ; 3 uses
  %.not.5 = icmp eq i64 %.132.lcssa, 6
  br i1 %.not.5, label %._crit_edge, label %.lr.ph51.6

.lr.ph51.6:                                       ; preds = %.lr.ph51.5
  %i.du = getelementptr inbounds nuw i8, ptr %.129.lcssa, i64 6
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !13
  %i.dw = trunc i32 %i.dt to i8
  %i.dx = xor i8 %i.dv, %i.dw
  %i.dy = zext i8 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr @_ZL10crc_tables, i64 %i.dy
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !8
  %i.eb = lshr i32 %i.dt, 8
  %i.ec = xor i32 %i.ea, %i.eb
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph51, %.lr.ph51.1, %.lr.ph51.2, %.lr.ph51.3, %.lr.ph51.4, %.lr.ph51.5, %.lr.ph51.6, %.preheader
  %.2.lcssa = phi i32 [ %.1.lcssa, %.preheader ], [ %i.ca, %.lr.ph51 ], [ %i.cj, %.lr.ph51.1 ], [ %i.cs, %.lr.ph51.2 ], [ %i.db, %.lr.ph51.3 ], [ %i.dk, %.lr.ph51.4 ], [ %i.dt, %.lr.ph51.5 ], [ %i.ec, %.lr.ph51.6 ]
  ret i32 %.2.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i16 @_Z10Checksum14tPKvm(i16 noundef zeroext %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %2, 3                       ; 3 uses
  %i.a = icmp ult i64 %2, 4
  br i1 %i.a, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %2, -4
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.011.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.u, %._crit_edge.loopexit.unr-lcssa ]
  %.0910.epil.init = phi i16 [ %0, %.lr.ph.preheader ], [ %i.t, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod13 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod13)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.011.epil = phi i64 [ %i.e, %.lr.ph.epil ], [ %.011.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.0910.epil = phi i16 [ %i.d, %.lr.ph.epil ], [ %.0910.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.011.epil
  %i.c = load i8, ptr %i.b, align 1, !tbaa !13
  %.tr.epil = zext i8 %i.c to i16
  %.narrow.epil = add i16 %.0910.epil, %.tr.epil  ; 2 uses
  %i.d = tail call i16 @llvm.fshl.i16(i16 %.narrow.epil, i16 %.narrow.epil, i16 1) ; 2 uses
  %i.e = add nuw i64 %.011.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !16

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %.09.lcssa = phi i16 [ %0, %bb.a ], [ %i.t, %._crit_edge.loopexit.unr-lcssa ], [ %i.d, %.lr.ph.epil ]
  ret i16 %.09.lcssa

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.011 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.u, %.lr.ph ] ; 5 uses
  %.0910 = phi i16 [ %0, %.lr.ph.preheader.new ], [ %i.t, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %.011
  %i.g = load i8, ptr %i.f, align 1, !tbaa !13
  %.tr = zext i8 %i.g to i16
  %.narrow = add i16 %.0910, %.tr                 ; 2 uses
  %i.h = tail call i16 @llvm.fshl.i16(i16 %.narrow, i16 %.narrow, i16 1)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.011
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !13
  %.tr.1 = zext i8 %i.k to i16
  %.narrow.1 = add i16 %i.h, %.tr.1               ; 2 uses
  %i.l = tail call i16 @llvm.fshl.i16(i16 %.narrow.1, i16 %.narrow.1, i16 1)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %.011
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.o = load i8, ptr %i.n, align 1, !tbaa !13
  %.tr.2 = zext i8 %i.o to i16
  %.narrow.2 = add i16 %i.l, %.tr.2               ; 2 uses
  %i.p = tail call i16 @llvm.fshl.i16(i16 %.narrow.2, i16 %.narrow.2, i16 1)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %.011
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 3
  %i.s = load i8, ptr %i.r, align 1, !tbaa !13
  %.tr.3 = zext i8 %i.s to i16
  %.narrow.3 = add i16 %i.p, %.tr.3               ; 2 uses
  %i.t = tail call i16 @llvm.fshl.i16(i16 %.narrow.3, i16 %.narrow.3, i16 1) ; 3 uses
  %i.u = add nuw i64 %.011, 4                     ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !18
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_GLOBAL__sub_I_crc.cpp() #3 section ".text.startup" {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL10crc_tables, i64 4), align 4, !tbaa !8
  %.not.i.i.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i.i.i, label %vector.body, label %_Z9InitCRC32Pj.exit.i.i.i.preheader

vector.body:                                      ; preds = %bb.a, %vector.body
  %index = phi i64 [ %index.next.1, %vector.body ], [ 0, %bb.a ] ; 4 uses
  %vec.ind = phi <4 x i32> [ %vec.ind.next.1, %vector.body ], [ <i32 0, i32 1, i32 2, i32 3>, %bb.a ] ; 5 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.b = lshr <4 x i32> %vec.ind, splat (i32 8)
  %i.c = lshr <4 x i32> %step.add, splat (i32 8)
  %i.d = getelementptr inbounds nuw [4 x i8], ptr @.crctable, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %wide.load = load <4 x i32>, ptr %i.d, align 16
  %wide.load1 = load <4 x i32>, ptr %i.e, align 16
  %i.f = xor <4 x i32> %i.b, %wide.load
  %i.g = xor <4 x i32> %i.c, %wide.load1
  %i.h = getelementptr inbounds nuw [4 x i8], ptr @_ZL10crc_tables, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store <4 x i32> %i.f, ptr %i.h, align 16, !tbaa !8
  store <4 x i32> %i.g, ptr %i.i, align 16, !tbaa !8
  %index.next = or disjoint i64 %index, 8         ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %step.add.1 = add <4 x i32> %vec.ind, splat (i32 12)
  %i.j = lshr <4 x i32> %vec.ind.next, splat (i32 8)
  %i.k = lshr <4 x i32> %step.add.1, splat (i32 8)
  %i.l = getelementptr inbounds nuw [4 x i8], ptr @.crctable, i64 %index.next ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %wide.load.1 = load <4 x i32>, ptr %i.l, align 16
  %wide.load1.1 = load <4 x i32>, ptr %i.m, align 16
  %i.n = xor <4 x i32> %i.j, %wide.load.1
  %i.o = xor <4 x i32> %i.k, %wide.load1.1
  %i.p = getelementptr inbounds nuw [4 x i8], ptr @_ZL10crc_tables, i64 %index.next ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store <4 x i32> %i.n, ptr %i.p, align 16, !tbaa !8
  store <4 x i32> %i.o, ptr %i.q, align 16, !tbaa !8
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
  %vec.ind.next.1 = add <4 x i32> %vec.ind, splat (i32 16)
  %i.r = icmp eq i64 %index.next.1, 256
  br i1 %i.r, label %_Z9InitCRC32Pj.exit.i.i.i.preheader, label %vector.body, !llvm.loop !19

_Z9InitCRC32Pj.exit.i.i.i.preheader:              ; preds = %vector.body, %bb.a
  br label %_Z9InitCRC32Pj.exit.i.i.i

_Z9InitCRC32Pj.exit.i.i.i:                        ; preds = %_Z9InitCRC32Pj.exit.i.i.i.preheader, %_Z9InitCRC32Pj.exit.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %_Z9InitCRC32Pj.exit.i.i.i ], [ 0, %_Z9InitCRC32Pj.exit.i.i.i.preheader ] ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr @_ZL10crc_tables, i64 %indvars.iv.i.i.i ; 8 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !8    ; 2 uses
  %i.u = and i32 %i.t, 255
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr @_ZL10crc_tables, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !8
  %i.y = lshr i32 %i.t, 8
  %i.z = xor i32 %i.x, %i.y                       ; 3 uses
  %gep.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 1024
  store i32 %i.z, ptr %gep.i.i.i, align 4, !tbaa !8
  %i.aa = and i32 %i.z, 255
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr @_ZL10crc_tables, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !8
  %i.ae = lshr i32 %i.z, 8
  %i.af = xor i32 %i.ad, %i.ae                    ; 3 uses
  %gep.1.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 2048
  store i32 %i.af, ptr %gep.1.i.i.i, align 4, !tbaa !8
  %i.ag = and i32 %i.af, 255
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr @_ZL10crc_tables, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !8
  %i.ak = lshr i32 %i.af, 8
  %i.al = xor i32 %i.aj, %i.ak                    ; 3 uses
  %gep.2.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 3072
  store i32 %i.al, ptr %gep.2.i.i.i, align 4, !tbaa !8
  %i.am = and i32 %i.al, 255
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr @_ZL10crc_tables, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !8
  %i.aq = lshr i32 %i.al, 8
  %i.ar = xor i32 %i.ap, %i.aq                    ; 3 uses
  %gep.3.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 4096
  store i32 %i.ar, ptr %gep.3.i.i.i, align 4, !tbaa !8
  %i.as = and i32 %i.ar, 255
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr @_ZL10crc_tables, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !8
  %i.aw = lshr i32 %i.ar, 8
  %i.ax = xor i32 %i.av, %i.aw                    ; 3 uses
  %gep.4.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 5120
  store i32 %i.ax, ptr %gep.4.i.i.i, align 4, !tbaa !8
  %i.ay = and i32 %i.ax, 255
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr @_ZL10crc_tables, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !8
  %i.bc = lshr i32 %i.ax, 8
  %i.bd = xor i32 %i.bb, %i.bc                    ; 3 uses
  %gep.5.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 6144
  store i32 %i.bd, ptr %gep.5.i.i.i, align 4, !tbaa !8
  %i.be = and i32 %i.bd, 255
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr @_ZL10crc_tables, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !8
  %i.bi = lshr i32 %i.bd, 8
  %i.bj = xor i32 %i.bh, %i.bi
  %gep.6.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 7168
  store i32 %i.bj, ptr %gep.6.i.i.i, align 4, !tbaa !8
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, 256
  br i1 %exitcond.not.i.i.i, label %__cxx_global_var_init.exit, label %_Z9InitCRC32Pj.exit.i.i.i, !llvm.loop !20

__cxx_global_var_init.exit:                       ; preds = %_Z9InitCRC32Pj.exit.i.i.i
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.fshl.i16(i16, i16, i16) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!5, !5, i64 0}
!9 = distinct !{!9, !10, !11, !12}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = !{!6, !6, i64 0}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.unroll.disable"}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10, !11, !12}
!20 = distinct !{!20, !10}
end_hunk_0
