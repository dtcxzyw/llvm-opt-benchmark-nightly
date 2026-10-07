Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng/original/crc32_pclmulqdq?download=true
inline.NumInlined: 31
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.crc32_fold_s = type { [64 x i8], i32 }

@pshufb_shf_table = internal unnamed_addr constant [60 x i32] [i32 -2071756159, i32 -2004384123, i32 -1937012087, i32 9408141, i32 -2054913150, i32 -1987541114, i32 -1920169078, i32 16813966, i32 -2038070141, i32 -1970698105, i32 -1903326069, i32 33620111, i32 -2021227132, i32 -1953855096, i32 -1886483060, i32 50462976, i32 -2004384123, i32 -1937012087, i32 9408141, i32 67305985, i32 -1987541114, i32 -1920169078, i32 16813966, i32 84148994, i32 -1970698105, i32 -1903326069, i32 33620111, i32 100992003, i32 -1953855096, i32 -1886483060, i32 50462976, i32 117835012, i32 -1937012087, i32 9408141, i32 67305985, i32 134678021, i32 -1920169078, i32 16813966, i32 84148994, i32 151521030, i32 -1903326069, i32 33620111, i32 100992003, i32 168364039, i32 -1886483060, i32 50462976, i32 117835012, i32 185207048, i32 9408141, i32 67305985, i32 134678021, i32 202050057, i32 16813966, i32 84148994, i32 151521030, i32 218893066, i32 33620111, i32 100992003, i32 168364039, i32 235736075], align 32
@crc_table = internal unnamed_addr constant [256 x i32] [i32 0, i32 1996959894, i32 -301047508, i32 -1727442502, i32 124634137, i32 1886057615, i32 -379345611, i32 -1637575261, i32 249268274, i32 2044508324, i32 -522852066, i32 -1747789432, i32 162941995, i32 2125561021, i32 -407360249, i32 -1866523247, i32 498536548, i32 1789927666, i32 -205950648, i32 -2067906082, i32 450548861, i32 1843258603, i32 -187386543, i32 -2083289657, i32 325883990, i32 1684777152, i32 -43845254, i32 -1973040660, i32 335633487, i32 1661365465, i32 -99664541, i32 -1928851979, i32 997073096, i32 1281953886, i32 -715111964, i32 -1570279054, i32 1006888145, i32 1258607687, i32 -770865667, i32 -1526024853, i32 901097722, i32 1119000684, i32 -608450090, i32 -1396901568, i32 853044451, i32 1172266101, i32 -589951537, i32 -1412350631, i32 651767980, i32 1373503546, i32 -925412992, i32 -1076862698, i32 565507253, i32 1454621731, i32 -809855591, i32 -1195530993, i32 671266974, i32 1594198024, i32 -972236366, i32 -1324619484, i32 795835527, i32 1483230225, i32 -1050600021, i32 -1234817731, i32 1994146192, i32 31158534, i32 -1731059524, i32 -271249366, i32 1907459465, i32 112637215, i32 -1614814043, i32 -390540237, i32 2013776290, i32 251722036, i32 -1777751922, i32 -519137256, i32 2137656763, i32 141376813, i32 -1855689577, i32 -429695999, i32 1802195444, i32 476864866, i32 -2056965928, i32 -228458418, i32 1812370925, i32 453092731, i32 -2113342271, i32 -183516073, i32 1706088902, i32 314042704, i32 -1950435094, i32 -54949764, i32 1658658271, i32 366619977, i32 -1932296973, i32 -69972891, i32 1303535960, i32 984961486, i32 -1547960204, i32 -725929758, i32 1256170817, i32 1037604311, i32 -1529756563, i32 -740887301, i32 1131014506, i32 879679996, i32 -1385723834, i32 -631195440, i32 1141124467, i32 855842277, i32 -1442165665, i32 -586318647, i32 1342533948, i32 654459306, i32 -1106571248, i32 -921952122, i32 1466479909, i32 544179635, i32 -1184443383, i32 -832445281, i32 1591671054, i32 702138776, i32 -1328506846, i32 -942167884, i32 1504918807, i32 783551873, i32 -1212326853, i32 -1061524307, i32 -306674912, i32 -1698712650, i32 62317068, i32 1957810842, i32 -355121351, i32 -1647151185, i32 81470997, i32 1943803523, i32 -480048366, i32 -1805370492, i32 225274430, i32 2053790376, i32 -468791541, i32 -1828061283, i32 167816743, i32 2097651377, i32 -267414716, i32 -2029476910, i32 503444072, i32 1762050814, i32 -144550051, i32 -2140837941, i32 426522225, i32 1852507879, i32 -19653770, i32 -1982649376, i32 282753626, i32 1742555852, i32 -105259153, i32 -1900089351, i32 397917763, i32 1622183637, i32 -690576408, i32 -1580100738, i32 953729732, i32 1340076626, i32 -776247311, i32 -1497606297, i32 1068828381, i32 1219638859, i32 -670225446, i32 -1358292148, i32 906185462, i32 1090812512, i32 -547295293, i32 -1469587627, i32 829329135, i32 1181335161, i32 -882789492, i32 -1134132454, i32 628085408, i32 1382605366, i32 -871598187, i32 -1156888829, i32 570562233, i32 1426400815, i32 -977650754, i32 -1296233688, i32 733239954, i32 1555261956, i32 -1026031705, i32 -1244606671, i32 752459403, i32 1541320221, i32 -1687895376, i32 -328994266, i32 1969922972, i32 40735498, i32 -1677130071, i32 -351390145, i32 1913087877, i32 83908371, i32 -1782625662, i32 -491226604, i32 2075208622, i32 213261112, i32 -1831694693, i32 -438977011, i32 2094854071, i32 198958881, i32 -2032938284, i32 -237706686, i32 1759359992, i32 534414190, i32 -2118248755, i32 -155638181, i32 1873836001, i32 414664567, i32 -2012718362, i32 -15766928, i32 1711684554, i32 285281116, i32 -1889165569, i32 -127750551, i32 1634467795, i32 376229701, i32 -1609899400, i32 -686959890, i32 1308918612, i32 956543938, i32 -1486412191, i32 -799009033, i32 1231636301, i32 1047427035, i32 -1362007478, i32 -640263460, i32 1088359270, i32 936918000, i32 -1447252397, i32 -558129467, i32 1202900863, i32 817233897, i32 -1111625188, i32 -893730166, i32 1404277552, i32 615818150, i32 -1160759803, i32 -841546093, i32 1423857449, i32 601450431, i32 -1285129682, i32 -1000256840, i32 1567103746, i32 711928724, i32 -1274298825, i32 -1022587231, i32 1510334235, i32 755167117], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden noundef i32 @crc32_fold_pclmulqdq_reset(ptr nofree noundef writeonly captures(none) initializes((0, 64)) %0) local_unnamed_addr #0 {
bb.a:
  store <2 x i64> <i64 2645828743, i64 0>, ptr %0, align 1, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.a, i8 0, i64 48, i1 false)
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @crc32_fold_pclmulqdq(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca <2 x i64>, align 16               ; 8 uses
  %.sroa.0 = alloca <2 x i64>, align 16           ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store <2 x i64> zeroinitializer, ptr %i.a, align 16, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  store <2 x i64> zeroinitializer, ptr %.sroa.0, align 16
  %i.b = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %3, i64 0
  %i.c = bitcast <4 x i32> %i.b to <2 x i64>      ; 6 uses
  %i.d = icmp ne i32 %3, 0                        ; 2 uses
  %i.e = load <2 x i64>, ptr %0, align 16, !tbaa !8 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load <2 x i64>, ptr %i.f, align 16, !tbaa !8 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = load <2 x i64>, ptr %i.h, align 16, !tbaa !8 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.k = load <2 x i64>, ptr %i.j, align 16, !tbaa !8 ; 6 uses
  %i.l = icmp ult i64 %2, 16
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = icmp eq i64 %2, 0
  br i1 %i.m, label %bb.r, label %.thread533

.thread533:                                       ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %.sroa.0, ptr align 1 %1, i64 %2, i1 false)
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.329 = load <2 x i64>, ptr %.sroa.0, align 16, !tbaa !8
  store <2 x i64> %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.329, ptr %i.a, align 16, !tbaa !8
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.n = zext i1 %i.d to i32
  %i.o = ptrtoint ptr %1 to i64
  %i.p = sub i64 0, %i.o
  %i.q = and i64 %i.p, 15                         ; 5 uses
  %.not = icmp eq i64 %i.q, 0
  br i1 %.not, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load <2 x i64>, ptr %1, align 1, !tbaa !8 ; 2 uses
  br i1 %i.d, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.s = xor <2 x i64> %i.r, %i.c                 ; 3 uses
  %i.t = icmp samesign ult i64 %i.q, 4
  br i1 %i.t, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.u = icmp ugt i64 %2, 31
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = load <2 x i64>, ptr %i.v, align 1, !tbaa !8
  %i.x = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.e, <2 x i64> <i64 7631803798, i64 poison>, i8 1)
  %i.y = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.e, <2 x i64> <i64 poison, i64 5708721108>, i8 16)
  %i.z = xor <2 x i64> %i.x, %i.y
  %i.aa = xor <2 x i64> %i.z, %i.s
  %i.ab = add i64 %2, -16
  br label %.thread

bb.h:                                             ; preds = %bb.f
  %i.ac = add nsw i64 %2, -16                     ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %.sroa.0, ptr nonnull align 1 %i.v, i64 %i.ac, i1 false)
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0. = load <2 x i64>, ptr %.sroa.0, align 16, !tbaa !8
  store <2 x i64> %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0., ptr %i.a, align 16, !tbaa !8
  %i.ad = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.e, <2 x i64> <i64 7631803798, i64 poison>, i8 1)
  %i.ae = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.e, <2 x i64> <i64 poison, i64 5708721108>, i8 16)
  %i.af = xor <2 x i64> %i.ad, %i.ae
  %i.ag = xor <2 x i64> %i.af, %i.s
  br label %bb.o

.thread:                                          ; preds = %bb.d, %bb.g, %bb.e
  %.0..0.330551 = phi <2 x i64> [ %i.w, %bb.g ], [ %i.s, %bb.e ], [ %i.r, %bb.d ]
  %.0524 = phi <2 x i64> [ %i.g, %bb.g ], [ %i.e, %bb.e ], [ %i.e, %bb.d ]
  %.0518 = phi <2 x i64> [ %i.i, %bb.g ], [ %i.g, %bb.e ], [ %i.g, %bb.d ]
  %.0512 = phi <2 x i64> [ %i.k, %bb.g ], [ %i.i, %bb.e ], [ %i.i, %bb.d ]
  %.0508 = phi <2 x i64> [ %i.aa, %bb.g ], [ %i.k, %bb.e ], [ %i.k, %bb.d ]
  %.0314 = phi i64 [ %i.ab, %bb.g ], [ %2, %bb.e ], [ %2, %bb.d ]
  %.0309 = phi ptr [ %i.v, %bb.g ], [ %1, %bb.e ], [ %1, %bb.d ]
  %.idx.i = shl nuw nsw i64 %i.q, 4
  %i.ah = getelementptr i8, ptr @pshufb_shf_table, i64 %.idx.i
  %i.ai = getelementptr i8, ptr %i.ah, i64 -16
  %i.aj = load <16 x i8>, ptr %i.ai, align 16, !tbaa !8 ; 6 uses
  %i.ak = bitcast <2 x i64> %.0524 to <16 x i8>   ; 2 uses
  %i.al = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.ak, <16 x i8> %i.aj)
  %i.am = bitcast <16 x i8> %i.al to <2 x i64>    ; 2 uses
  %i.an = xor <16 x i8> %i.aj, splat (i8 -128)    ; 4 uses
  %i.ao = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.ak, <16 x i8> %i.an)
  %i.ap = bitcast <2 x i64> %.0518 to <16 x i8>   ; 2 uses
  %i.aq = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.ap, <16 x i8> %i.aj)
  %i.ar = or <16 x i8> %i.aq, %i.ao
  %i.as = bitcast <16 x i8> %i.ar to <2 x i64>
  %i.at = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.ap, <16 x i8> %i.an)
  %i.au = bitcast <2 x i64> %.0512 to <16 x i8>   ; 2 uses
  %i.av = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.au, <16 x i8> %i.aj)
  %i.aw = or <16 x i8> %i.av, %i.at
  %i.ax = bitcast <16 x i8> %i.aw to <2 x i64>
  %i.ay = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.au, <16 x i8> %i.an)
  %i.az = bitcast <2 x i64> %.0508 to <16 x i8>   ; 2 uses
  %i.ba = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.az, <16 x i8> %i.aj)
  %i.bb = or <16 x i8> %i.ba, %i.ay
  %i.bc = bitcast <16 x i8> %i.bb to <2 x i64>
  %i.bd = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.az, <16 x i8> %i.an)
  %i.be = bitcast <2 x i64> %.0..0.330551 to <16 x i8>
  %i.bf = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.be, <16 x i8> %i.aj) ; 2 uses
  store <16 x i8> %i.bf, ptr %i.a, align 16, !tbaa !8
  %i.bg = or <16 x i8> %i.bf, %i.bd
  %i.bh = bitcast <16 x i8> %i.bg to <2 x i64>
  %i.bi = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.am, <2 x i64> <i64 poison, i64 5708721108>, i8 16)
  %i.bj = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.am, <2 x i64> <i64 7631803798, i64 poison>, i8 1)
  %i.bk = xor <2 x i64> %i.bi, %i.bh
  %i.bl = xor <2 x i64> %i.bk, %i.bj
  %i.bm = getelementptr inbounds nuw i8, ptr %.0309, i64 %i.q
  %i.bn = sub nuw i64 %.0314, %i.q
  br label %bb.i

bb.i:                                             ; preds = %.thread, %bb.c
  %.1525 = phi <2 x i64> [ %i.e, %bb.c ], [ %i.as, %.thread ] ; 3 uses
  %.1519 = phi <2 x i64> [ %i.g, %bb.c ], [ %i.ax, %.thread ] ; 3 uses
  %.1513 = phi <2 x i64> [ %i.i, %bb.c ], [ %i.bc, %.thread ] ; 3 uses
  %.1509 = phi <2 x i64> [ %i.k, %bb.c ], [ %i.bl, %.thread ] ; 3 uses
  %.1315 = phi i64 [ %2, %bb.c ], [ %i.bn, %.thread ] ; 5 uses
  %.1310 = phi ptr [ %1, %bb.c ], [ %i.bm, %.thread ] ; 3 uses
  %.1 = phi i32 [ %i.n, %bb.c ], [ 0, %.thread ]  ; 3 uses
  %i.bo = icmp ugt i64 %.1315, 703
  br i1 %i.bo, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.i
  %4 = trunc nuw i32 %.1 to i1
  %i.bp = select i1 %4, <2 x i64> %i.c, <2 x i64> zeroinitializer
  br label %.lr.ph

.preheader:                                       ; preds = %bb.i
  %i.bq = icmp samesign ugt i64 %.1315, 63
  br i1 %i.bq, label %.lr.ph573.preheader, label %._crit_edge

.lr.ph573.preheader:                              ; preds = %.lr.ph, %.preheader
  %.2.lcssa613 = phi i32 [ %.1, %.preheader ], [ 0, %.lr.ph ]
  %.2311.lcssa612 = phi ptr [ %.1310, %.preheader ], [ %i.ov, %.lr.ph ] ; 5 uses
  %.2316.lcssa611 = phi i64 [ %.1315, %.preheader ], [ %i.ou, %.lr.ph ] ; 2 uses
  %.2510.lcssa610 = phi <2 x i64> [ %.1509, %.preheader ], [ %i.ot, %.lr.ph ] ; 2 uses
  %.2514.lcssa609 = phi <2 x i64> [ %.1513, %.preheader ], [ %i.oq, %.lr.ph ] ; 2 uses
  %.2520.lcssa608 = phi <2 x i64> [ %.1519, %.preheader ], [ %i.om, %.lr.ph ] ; 2 uses
  %.2526.lcssa607 = phi <2 x i64> [ %.1525, %.preheader ], [ %i.oh, %.lr.ph ] ; 2 uses
  %i.br = add nsw i64 %.2316.lcssa611, -64        ; 2 uses
  %i.bs = load <2 x i64>, ptr %.2311.lcssa612, align 16, !tbaa !8
  %i.bt = getelementptr inbounds nuw i8, ptr %.2311.lcssa612, i64 16
  %i.bu = load <2 x i64>, ptr %i.bt, align 16, !tbaa !8
  %i.bv = getelementptr inbounds nuw i8, ptr %.2311.lcssa612, i64 32
  %i.bw = load <2 x i64>, ptr %i.bv, align 16, !tbaa !8
  %i.bx = getelementptr inbounds nuw i8, ptr %.2311.lcssa612, i64 48
  %i.by = load <2 x i64>, ptr %i.bx, align 16, !tbaa !8
  %i.bz = getelementptr inbounds nuw i8, ptr %.2311.lcssa612, i64 64 ; 2 uses
  %i.ca = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.2526.lcssa607, <2 x i64> <i64 7631803798, i64 poison>, i8 1)
  %i.cb = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.2526.lcssa607, <2 x i64> <i64 poison, i64 5708721108>, i8 16)
  %i.cc = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.2520.lcssa608, <2 x i64> <i64 7631803798, i64 poison>, i8 1)
  %i.cd = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.2520.lcssa608, <2 x i64> <i64 poison, i64 5708721108>, i8 16)
  %i.ce = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.2514.lcssa609, <2 x i64> <i64 7631803798, i64 poison>, i8 1)
  %i.cf = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.2514.lcssa609, <2 x i64> <i64 poison, i64 5708721108>, i8 16)
  %i.cg = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.2510.lcssa610, <2 x i64> <i64 7631803798, i64 poison>, i8 1)
  %i.ch = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.2510.lcssa610, <2 x i64> <i64 poison, i64 5708721108>, i8 16)
  %.not325.peel = icmp eq i32 %.2.lcssa613, 0
  %spec.select625 = select i1 %.not325.peel, <2 x i64> zeroinitializer, <2 x i64> %i.c
  %i.ci = xor <2 x i64> %i.bs, %spec.select625
  %spec.select547.peel = xor <2 x i64> %i.ci, %i.ca
  %i.cj = xor <2 x i64> %spec.select547.peel, %i.cb ; 2 uses
  %i.ck = xor <2 x i64> %i.cc, %i.bu
  %i.cl = xor <2 x i64> %i.ck, %i.cd              ; 2 uses
  %i.cm = xor <2 x i64> %i.ce, %i.bw
  %i.cn = xor <2 x i64> %i.cm, %i.cf              ; 2 uses
  %i.co = xor <2 x i64> %i.cg, %i.by
  %i.cp = xor <2 x i64> %i.co, %i.ch              ; 2 uses
  %i.cq = icmp sgt i64 %.2316.lcssa611, 127
  br i1 %i.cq, label %.lr.ph573, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.2559 = phi <2 x i64> [ zeroinitializer, %.lr.ph ], [ %i.bp, %.lr.ph.preheader ]
  %.2311558 = phi ptr [ %i.ov, %.lr.ph ], [ %.1310, %.lr.ph.preheader ] ; 41 uses
  %.2316557 = phi i64 [ %i.ou, %.lr.ph ], [ %.1315, %.lr.ph.preheader ]
  %.2510556 = phi <2 x i64> [ %i.ot, %.lr.ph ], [ %.1509, %.lr.ph.preheader ] ; 2 uses
  %.2514555 = phi <2 x i64> [ %i.oq, %.lr.ph ], [ %.1513, %.lr.ph.preheader ] ; 2 uses
  %.2520554 = phi <2 x i64> [ %i.om, %.lr.ph ], [ %.1519, %.lr.ph.preheader ] ; 2 uses
  %.2526553 = phi <2 x i64> [ %i.oh, %.lr.ph ], [ %.1525, %.lr.ph.preheader ] ; 2 uses
  %i.cr = load <2 x i64>, ptr %.2311558, align 16, !tbaa !8
  %i.cs = getelementptr inbounds nuw i8, ptr %.2311558, i64 16
  %i.ct = load <2 x i64>, ptr %i.cs, align 16, !tbaa !8 ; 12 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.2311558, i64 32
  %i.cv = load <2 x i64>, ptr %i.cu, align 16, !tbaa !8 ; 14 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.2311558, i64 48
  %i.cx = load <2 x i64>, ptr %i.cw, align 16, !tbaa !8 ; 14 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.2311558, i64 64
  %i.cz = load <2 x i64>, ptr %i.cy, align 16, !tbaa !8 ; 14 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.2311558, i64 80
  %i.db = load <2 x i64>, ptr %i.da, align 16, !tbaa !8 ; 14 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.2311558, i64 96
  %i.dd = load <2 x i64>, ptr %i.dc, align 16, !tbaa !8 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.2311558, i64 112
  %i.df = load <2 x i64>, ptr %i.de, align 16, !tbaa !8 ; 3 uses
  %spec.select = xor <2 x i64> %i.cr, %.2559      ; 12 uses
  %i.dg = xor <2 x i64> %i.dd, %spec.select       ; 12 uses
  %i.dh = xor <2 x i64> %i.df, %i.ct              ; 12 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.2311558, i64 128
  %i.dj = load <2 x i64>, ptr %i.di, align 16, !tbaa !8
  %i.dk = getelementptr inbounds nuw i8, ptr %.2311558, i64 144
  %i.dl = load <2 x i64>, ptr %i.dk, align 16, !tbaa !8
  %i.dm = getelementptr inbounds nuw i8, ptr %.2311558, i64 160
  %i.dn = load <2 x i64>, ptr %i.dm, align 16, !tbaa !8
  %i.do = getelementptr inbounds nuw i8, ptr %.2311558, i64 176
  %i.dp = load <2 x i64>, ptr %i.do, align 16, !tbaa !8
  %i.dq = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.2526553, <2 x i64> <i64 4125396101, i64 poison>, i8 1)
  %i.dr = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.2526553, <2 x i64> <i64 poison, i64 1500286337>, i8 16)
  %i.ds = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.2520554, <2 x i64> <i64 4125396101, i64 poison>, i8 1)
  %i.dt = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.2520554, <2 x i64> <i64 poison, i64 1500286337>, i8 16)
  %i.du = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.2514555, <2 x i64> <i64 4125396101, i64 poison>, i8 1)
  %i.dv = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.2514555, <2 x i64> <i64 poison, i64 1500286337>, i8 16)
  %i.dw = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.2510556, <2 x i64> <i64 4125396101, i64 poison>, i8 1)
  %i.dx = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.2510556, <2 x i64> <i64 poison, i64 1500286337>, i8 16)
  %i.dy = xor <2 x i64> %i.dj, %i.dq
  %i.dz = xor <2 x i64> %i.dy, %i.dr
  %i.ea = xor <2 x i64> %i.dz, %i.cv              ; 2 uses
  %i.eb = xor <2 x i64> %i.dl, %i.ds
  %i.ec = xor <2 x i64> %i.eb, %i.dt
  %i.ed = xor <2 x i64> %i.ec, %spec.select
  %i.ee = xor <2 x i64> %i.ed, %i.cx              ; 2 uses
  %i.ef = xor <2 x i64> %i.dn, %i.du
  %i.eg = xor <2 x i64> %i.ef, %i.dv
  %i.eh = xor <2 x i64> %i.eg, %spec.select
  %i.ei = xor <2 x i64> %i.eh, %i.cz
  %i.ej = xor <2 x i64> %i.ei, %i.ct              ; 2 uses
  %i.ek = xor <2 x i64> %i.dp, %i.dw
  %i.el = xor <2 x i64> %i.ek, %i.dx
  %i.em = xor <2 x i64> %i.el, %i.ct
  %i.en = xor <2 x i64> %i.em, %i.db
  %i.eo = xor <2 x i64> %i.en, %i.cv              ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.2311558, i64 192
  %i.eq = load <2 x i64>, ptr %i.ep, align 16, !tbaa !8
  %i.er = getelementptr inbounds nuw i8, ptr %.2311558, i64 208
  %i.es = load <2 x i64>, ptr %i.er, align 16, !tbaa !8
  %i.et = getelementptr inbounds nuw i8, ptr %.2311558, i64 224
  %i.eu = load <2 x i64>, ptr %i.et, align 16, !tbaa !8
  %i.ev = getelementptr inbounds nuw i8, ptr %.2311558, i64 240
  %i.ew = load <2 x i64>, ptr %i.ev, align 16, !tbaa !8
  %i.ex = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.ea, <2 x i64> <i64 7631803798, i64 poison>, i8 1)
  %i.ey = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.ea, <2 x i64> <i64 poison, i64 5708721108>, i8 16)
  %i.ez = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.ee, <2 x i64> <i64 7631803798, i64 poison>, i8 1)
  %i.fa = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.ee, <2 x i64> <i64 poison, i64 5708721108>, i8 16)
  %i.fb = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.ej, <2 x i64> <i64 7631803798, i64 poison>, i8 1)
  %i.fc = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.ej, <2 x i64> <i64 poison, i64 5708721108>, i8 16)
  %i.fd = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.eo, <2 x i64> <i64 7631803798, i64 poison>, i8 1)
  %i.fe = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.eo, <2 x i64> <i64 poison, i64 5708721108>, i8 16)
  %i.ff = xor <2 x i64> %i.eq, %i.ex
  %i.fg = xor <2 x i64> %i.ff, %i.ey
  %i.fh = xor <2 x i64> %i.fg, %i.cv
  %i.fi = xor <2 x i64> %i.fh, %i.cx
  %i.fj = xor <2 x i64> %i.fi, %i.dg              ; 2 uses
  %i.fk = xor <2 x i64> %i.es, %i.ez
  %i.fl = xor <2 x i64> %i.fk, %i.fa
  %i.fm = xor <2 x i64> %i.fl, %i.cx
  %i.fn = xor <2 x i64> %i.fm, %i.cz
  %i.fo = xor <2 x i64> %i.fn, %i.dh              ; 2 uses
  %i.fp = xor <2 x i64> %i.eu, %i.fb
  %i.fq = xor <2 x i64> %i.fp, %i.fc
  %i.fr = xor <2 x i64> %i.fq, %i.cz
  %i.fs = xor <2 x i64> %i.fr, %i.db              ; 2 uses
  %i.ft = xor <2 x i64> %i.ew, %i.fd
  %i.fu = xor <2 x i64> %i.ft, %i.fe
  %i.fv = xor <2 x i64> %i.fu, %i.db
  %i.fw = xor <2 x i64> %i.fv, %i.dg              ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.2311558, i64 256
  %i.fy = load <2 x i64>, ptr %i.fx, align 16, !tbaa !8
  %i.fz = getelementptr inbounds nuw i8, ptr %.2311558, i64 272
  %i.ga = load <2 x i64>, ptr %i.fz, align 16, !tbaa !8
  %i.gb = getelementptr inbounds nuw i8, ptr %.2311558, i64 288
  %i.gc = load <2 x i64>, ptr %i.gb, align 16, !tbaa !8
  %i.gd = getelementptr inbounds nuw i8, ptr %.2311558, i64 304
  %i.ge = load <2 x i64>, ptr %i.gd, align 16, !tbaa !8
  %i.gf = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.fj, <2 x i64> <i64 7631803798, i64 poison>, i8 1)
  %i.gg = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.fj, <2 x i64> <i64 poison, i64 5708721108>, i8 16)
  %i.gh = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.fo, <2 x i64> <i64 7631803798, i64 poison>, i8 1)
  %i.gi = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.fo, <2 x i64> <i64 poison, i64 5708721108>, i8 16)
  %i.gj = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.fs, <2 x i64> <i64 7631803798, i64 poison>, i8 1)
  %i.gk = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.fs, <2 x i64> <i64 poison, i64 5708721108>, i8 16)
  %i.gl = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.fw, <2 x i64> <i64 7631803798, i64 poison>, i8 1)
  %i.gm = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.fw, <2 x i64> <i64 poison, i64 5708721108>, i8 16)
  %i.gn = xor <2 x i64> %i.fy, %i.gf
  %i.go = xor <2 x i64> %i.gn, %i.gg
  %i.gp = xor <2 x i64> %i.go, %i.dd
  %i.gq = xor <2 x i64> %i.gp, %i.dh              ; 2 uses
  %i.gr = xor <2 x i64> %i.ga, %i.gh
  %i.gs = xor <2 x i64> %i.gr, %i.gi
  %i.gt = xor <2 x i64> %i.gs, %i.df              ; 2 uses
  %i.gu = xor <2 x i64> %i.gc, %i.gj
  %i.gv = xor <2 x i64> %i.gu, %i.gk
  %i.gw = xor <2 x i64> %i.gv, %i.cv              ; 2 uses
  %i.gx = xor <2 x i64> %i.ge, %i.gl
  %i.gy = xor <2 x i64> %i.gx, %i.gm
  %i.gz = xor <2 x i64> %i.gy, %i.cx              ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.2311558, i64 320
  %i.hb = load <2 x i64>, ptr %i.ha, align 16, !tbaa !8
  %i.hc = getelementptr inbounds nuw i8, ptr %.2311558, i64 336
  %i.hd = load <2 x i64>, ptr %i.hc, align 16, !tbaa !8
  %i.he = getelementptr inbounds nuw i8, ptr %.2311558, i64 352
  %i.hf = load <2 x i64>, ptr %i.he, align 16, !tbaa !8
  %i.hg = getelementptr inbounds nuw i8, ptr %.2311558, i64 368
  %i.hh = load <2 x i64>, ptr %i.hg, align 16, !tbaa !8
  %i.hi = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.gq, <2 x i64> <i64 7631803798, i64 poison>, i8 1)
  %i.hj = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.gq, <2 x i64> <i64 poison, i64 5708721108>, i8 16)
  %i.hk = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.gt, <2 x i64> <i64 7631803798, i64 poison>, i8 1)
  %i.hl = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.gt, <2 x i64> <i64 poison, i64 5708721108>, i8 16)
  %i.hm = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.gw, <2 x i64> <i64 7631803798, i64 poison>, i8 1)
  %i.hn = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.gw, <2 x i64> <i64 poison, i64 5708721108>, i8 16)
  %i.ho = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.gz, <2 x i64> <i64 7631803798, i64 poison>, i8 1)
  %i.hp = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.gz, <2 x i64> <i64 poison, i64 5708721108>, i8 16)
  %i.hq = xor <2 x i64> %i.hb, %i.hi
  %i.hr = xor <2 x i64> %i.hq, %i.hj
  %i.hs = xor <2 x i64> %i.hr, %spec.select
  %i.ht = xor <2 x i64> %i.hs, %i.cz              ; 2 uses
  %i.hu = xor <2 x i64> %i.hd, %i.hk
  %i.hv = xor <2 x i64> %i.hu, %i.hl
  %i.hw = xor <2 x i64> %i.hv, %i.ct
  %i.hx = xor <2 x i64> %i.hw, %i.db
  %i.hy = xor <2 x i64> %i.hx, %spec.select       ; 2 uses
  %i.hz = xor <2 x i64> %i.hf, %i.hm
  %i.ia = xor <2 x i64> %i.hz, %i.hn
  %i.ib = xor <2 x i64> %i.ia, %i.ct
  %i.ic = xor <2 x i64> %i.ib, %i.cv
  %i.id = xor <2 x i64> %i.ic, %i.dd              ; 2 uses
  %i.ie = xor <2 x i64> %i.hh, %i.ho
  %i.if = xor <2 x i64> %i.ie, %i.hp
  %i.ig = xor <2 x i64> %i.if, %i.cv
end_hunk_0
begin_hunk_1_@crc32_fold_pclmulqdq_copy:bb.a
  %i.ce = getelementptr inbounds nuw i8, ptr %.181.lcssa, i64 16
  %i.cf = load <2 x i64>, ptr %i.ce, align 16, !tbaa !8 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.181.lcssa, i64 32
  %i.ch = load <2 x i64>, ptr %i.cg, align 16, !tbaa !8 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.181.lcssa, i64 48
  store <2 x i64> %i.cd, ptr %.184.lcssa, align 1, !tbaa !8
  %i.cj = getelementptr inbounds nuw i8, ptr %.184.lcssa, i64 16
  store <2 x i64> %i.cf, ptr %i.cj, align 1, !tbaa !8
  %i.ck = getelementptr inbounds nuw i8, ptr %.184.lcssa, i64 32
  store <2 x i64> %i.ch, ptr %i.ck, align 1, !tbaa !8
  %i.cl = getelementptr inbounds nuw i8, ptr %.184.lcssa, i64 48
  %i.cm = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.1171.lcssa, <2 x i64> <i64 7631803798, i64 poison>, i8 1)
  %i.cn = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.1171.lcssa, <2 x i64> <i64 poison, i64 5708721108>, i8 16)
  %i.co = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.1175.lcssa, <2 x i64> <i64 7631803798, i64 poison>, i8 1)
  %i.cp = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.1175.lcssa, <2 x i64> <i64 poison, i64 5708721108>, i8 16)
  %i.cq = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.1179.lcssa, <2 x i64> <i64 7631803798, i64 poison>, i8 1)
  %i.cr = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.1179.lcssa, <2 x i64> <i64 poison, i64 5708721108>, i8 16)
  %i.cs = xor <2 x i64> %i.cq, %i.cr
  %i.ct = xor <2 x i64> %i.cs, %i.cd
  %i.cu = xor <2 x i64> %i.co, %i.cp
  %i.cv = xor <2 x i64> %i.cu, %i.cf
  %i.cw = xor <2 x i64> %i.cm, %i.cn
  %i.cx = xor <2 x i64> %i.cw, %i.ch
  br label %bb.k

bb.g:                                             ; preds = %._crit_edge
  %i.cy = icmp samesign ugt i64 %.1.lcssa, 31
  br i1 %i.cy, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cz = add nsw i64 %.1.lcssa, -32
  %i.da = load <2 x i64>, ptr %.181.lcssa, align 16, !tbaa !8 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.181.lcssa, i64 16
  %i.dc = load <2 x i64>, ptr %i.db, align 16, !tbaa !8 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.181.lcssa, i64 32
  store <2 x i64> %i.da, ptr %.184.lcssa, align 1, !tbaa !8
  %i.de = getelementptr inbounds nuw i8, ptr %.184.lcssa, i64 16
  store <2 x i64> %i.dc, ptr %i.de, align 1, !tbaa !8
  %i.df = getelementptr inbounds nuw i8, ptr %.184.lcssa, i64 32
  %i.dg = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.1175.lcssa, <2 x i64> <i64 7631803798, i64 poison>, i8 1)
  %i.dh = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.1175.lcssa, <2 x i64> <i64 poison, i64 5708721108>, i8 16)
  %i.di = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.1179.lcssa, <2 x i64> <i64 7631803798, i64 poison>, i8 1)
  %i.dj = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.1179.lcssa, <2 x i64> <i64 poison, i64 5708721108>, i8 16)
  %i.dk = xor <2 x i64> %i.di, %i.dj
  %i.dl = xor <2 x i64> %i.dk, %i.da
  %i.dm = xor <2 x i64> %i.dg, %i.dh
  %i.dn = xor <2 x i64> %i.dm, %i.dc
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.do = icmp samesign ugt i64 %.1.lcssa, 15
  br i1 %i.do, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.dp = add nsw i64 %.1.lcssa, -16
  %i.dq = load <2 x i64>, ptr %.181.lcssa, align 16, !tbaa !8 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.181.lcssa, i64 16
  store <2 x i64> %i.dq, ptr %.184.lcssa, align 1, !tbaa !8
  %i.ds = getelementptr inbounds nuw i8, ptr %.184.lcssa, i64 16
  %i.dt = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.1179.lcssa, <2 x i64> <i64 7631803798, i64 poison>, i8 1)
  %i.du = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.1179.lcssa, <2 x i64> <i64 poison, i64 5708721108>, i8 16)
  %i.dv = xor <2 x i64> %i.dt, %i.du
  %i.dw = xor <2 x i64> %i.dv, %i.dq
  br label %bb.k

bb.k:                                             ; preds = %bb.f, %bb.i, %bb.j, %bb.h
  %.2180 = phi <2 x i64> [ %.1179.lcssa, %bb.i ], [ %.1168.lcssa, %bb.f ], [ %.1171.lcssa, %bb.h ], [ %.1175.lcssa, %bb.j ] ; 2 uses
  %.2176 = phi <2 x i64> [ %.1175.lcssa, %bb.i ], [ %i.ct, %bb.f ], [ %.1168.lcssa, %bb.h ], [ %.1171.lcssa, %bb.j ] ; 2 uses
  %.2172 = phi <2 x i64> [ %.1171.lcssa, %bb.i ], [ %i.cv, %bb.f ], [ %i.dl, %bb.h ], [ %.1168.lcssa, %bb.j ] ; 2 uses
  %.2169 = phi <2 x i64> [ %.1168.lcssa, %bb.i ], [ %i.cx, %bb.f ], [ %i.dn, %bb.h ], [ %i.dw, %bb.j ] ; 2 uses
  %.285 = phi ptr [ %.184.lcssa, %bb.i ], [ %i.cl, %bb.f ], [ %i.df, %bb.h ], [ %i.ds, %bb.j ]
  %.282 = phi ptr [ %.181.lcssa, %bb.i ], [ %i.ci, %bb.f ], [ %i.dd, %bb.h ], [ %i.dr, %bb.j ]
  %.2 = phi i64 [ %.1.lcssa, %bb.i ], [ %i.cc, %bb.f ], [ %i.cz, %bb.h ], [ %i.dp, %bb.j ] ; 2 uses
  %.not89 = icmp eq i64 %.2, 0
  br i1 %.not89, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.thread, %bb.k
  %.2196 = phi i64 [ %3, %.thread ], [ %.2, %bb.k ] ; 3 uses
  %.282195 = phi ptr [ %2, %.thread ], [ %.282, %bb.k ]
  %.285194 = phi ptr [ %1, %.thread ], [ %.285, %bb.k ]
  %.2169193 = phi <2 x i64> [ %i.h, %.thread ], [ %.2169, %bb.k ]
  %.2172192 = phi <2 x i64> [ %i.f, %.thread ], [ %.2172, %bb.k ]
  %.2176191 = phi <2 x i64> [ %i.d, %.thread ], [ %.2176, %bb.k ]
  %.2180190 = phi <2 x i64> [ %i.b, %.thread ], [ %.2180, %bb.k ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %.282195, i64 %.2196, i1 false)
  %.0..0..0. = load <2 x i64>, ptr %i.a, align 16, !tbaa !8
  store <2 x i64> %.0..0..0., ptr %.sroa.0, align 16, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.285194, ptr nonnull align 16 %.sroa.0, i64 %.2196, i1 false)
  %.idx.i90 = shl nuw nsw i64 %.2196, 4
  %i.dx = getelementptr i8, ptr @pshufb_shf_table, i64 %.idx.i90
  %i.dy = getelementptr i8, ptr %i.dx, i64 -16
  %i.dz = load <16 x i8>, ptr %i.dy, align 16, !tbaa !8 ; 6 uses
  %i.ea = bitcast <2 x i64> %.2180190 to <16 x i8> ; 2 uses
  %i.eb = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.ea, <16 x i8> %i.dz)
  %i.ec = bitcast <16 x i8> %i.eb to <2 x i64>    ; 2 uses
  %i.ed = xor <16 x i8> %i.dz, splat (i8 -128)    ; 4 uses
  %i.ee = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.ea, <16 x i8> %i.ed)
  %i.ef = bitcast <2 x i64> %.2176191 to <16 x i8> ; 2 uses
  %i.eg = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.ef, <16 x i8> %i.dz)
  %i.eh = or <16 x i8> %i.eg, %i.ee
  %i.ei = bitcast <16 x i8> %i.eh to <2 x i64>
  %i.ej = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.ef, <16 x i8> %i.ed)
  %i.ek = bitcast <2 x i64> %.2172192 to <16 x i8> ; 2 uses
  %i.el = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.ek, <16 x i8> %i.dz)
  %i.em = or <16 x i8> %i.el, %i.ej
  %i.en = bitcast <16 x i8> %i.em to <2 x i64>
  %i.eo = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.ek, <16 x i8> %i.ed)
  %i.ep = bitcast <2 x i64> %.2169193 to <16 x i8> ; 2 uses
  %i.eq = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.ep, <16 x i8> %i.dz)
  %i.er = or <16 x i8> %i.eq, %i.eo
  %i.es = bitcast <16 x i8> %i.er to <2 x i64>
  %i.et = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.ep, <16 x i8> %i.ed)
  %.0..0..0.92197221240 = load <16 x i8>, ptr %i.a, align 16, !tbaa !8
  %i.eu = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %.0..0..0.92197221240, <16 x i8> %i.dz)
  %i.ev = or <16 x i8> %i.eu, %i.et
  %i.ew = bitcast <16 x i8> %i.ev to <2 x i64>
  %i.ex = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.ec, <2 x i64> <i64 poison, i64 5708721108>, i8 16)
  %i.ey = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.ec, <2 x i64> <i64 7631803798, i64 poison>, i8 1)
  %i.ez = xor <2 x i64> %i.ex, %i.ew
  %i.fa = xor <2 x i64> %i.ez, %i.ey
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.3181 = phi <2 x i64> [ %.2180, %bb.k ], [ %i.ei, %bb.l ]
  %.3177 = phi <2 x i64> [ %.2176, %bb.k ], [ %i.en, %bb.l ]
  %.3173 = phi <2 x i64> [ %.2172, %bb.k ], [ %i.es, %bb.l ]
  %.3 = phi <2 x i64> [ %.2169, %bb.k ], [ %i.fa, %bb.l ]
  store <2 x i64> %.3181, ptr %0, align 16, !tbaa !8
  store <2 x i64> %.3177, ptr %i.c, align 16, !tbaa !8
  store <2 x i64> %.3173, ptr %i.e, align 16, !tbaa !8
  store <2 x i64> %.3, ptr %i.g, align 16, !tbaa !8
  br label %bb.n

bb.n:                                             ; preds = %bb.b, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden i32 @crc32_fold_pclmulqdq_final(ptr nofree noundef captures(none) initializes((64, 68)) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load <2 x i64>, ptr %0, align 16, !tbaa !8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load <2 x i64>, ptr %i.b, align 16, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load <2 x i64>, ptr %i.d, align 16, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load <2 x i64>, ptr %i.f, align 16, !tbaa !8
  %i.h = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.a, <2 x i64> <i64 poison, i64 6259578832>, i8 16)
  %i.i = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.a, <2 x i64> <i64 3433693342, i64 poison>, i8 1)
  %i.j = xor <2 x i64> %i.h, %i.c
  %i.k = xor <2 x i64> %i.j, %i.i                 ; 2 uses
  %i.l = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.k, <2 x i64> <i64 poison, i64 6259578832>, i8 16)
  %i.m = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.k, <2 x i64> <i64 3433693342, i64 poison>, i8 1)
  %i.n = xor <2 x i64> %i.l, %i.e
  %i.o = xor <2 x i64> %i.n, %i.m                 ; 2 uses
  %i.p = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.o, <2 x i64> <i64 poison, i64 6259578832>, i8 16)
  %i.q = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.o, <2 x i64> <i64 3433693342, i64 poison>, i8 1)
  %i.r = xor <2 x i64> %i.p, %i.g
  %i.s = xor <2 x i64> %i.r, %i.q                 ; 2 uses
  %i.t = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.s, <2 x i64> <i64 3433693342, i64 poison>, i8 0)
  %i.u = shufflevector <2 x i64> %i.s, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.v = xor <2 x i64> %i.t, %i.u                 ; 2 uses
  %.cast17 = bitcast <2 x i64> %i.v to <16 x i8>
  %i.w = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %.cast17, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.x = bitcast <16 x i8> %i.w to <2 x i64>
  %i.y = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.x, <2 x i64> <i64 poison, i64 5969371428>, i8 16)
  %i.z = xor <2 x i64> %i.v, %i.y
  %i.aa = and <2 x i64> %i.z, <i64 -4294967296, i64 -1> ; 3 uses
  %i.ab = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.aa, <2 x i64> <i64 8439010880, i64 poison>, i8 0)
  %i.ac = xor <2 x i64> %i.aa, %i.ab
  %i.ad = and <2 x i64> %i.ac, <i64 -1, i64 0>    ; 2 uses
  %i.ae = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.ad, <2 x i64> <i64 poison, i64 7976584768>, i8 16)
  %i.af = xor <2 x i64> %i.aa, %i.ae
  %i.ag = xor <2 x i64> %i.af, %i.ad
  %i.ah = bitcast <2 x i64> %i.ag to <4 x i32>
  %i.ai = extractelement <4 x i32> %i.ah, i64 2
  %i.aj = xor i32 %i.ai, -1                       ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.aj, ptr %i.ak, align 16, !tbaa !15
  ret i32 %i.aj
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.pclmulqdq(<2 x i64>, <2 x i64>, i8 immarg) #6

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @crc32_pclmulqdq(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %3 = alloca %struct.crc32_fold_s, align 16      ; 8 uses
  %i.a = icmp ult i64 %2, 16
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not8.i = icmp eq i64 %2, 0
  br i1 %.not8.i, label %crc32_small.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.b = xor i32 %0, -1                           ; 3 uses
  %lcmp.mod.not = trunc i64 %2 to i1
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i
  %i.c = add nsw i64 %2, -1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.e = load i8, ptr %1, align 1, !tbaa !8
  %.0.tr.i.prol = trunc i32 %i.b to i8
  %.narrow.i.prol = xor i8 %i.e, %.0.tr.i.prol
  %i.f = zext i8 %.narrow.i.prol to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr @crc_table, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !17
  %i.i = lshr i32 %i.b, 8
  %i.j = xor i32 %i.h, %i.i                       ; 2 uses
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader.i ], [ %i.j, %.lr.ph.i.prol ]
  %.011.i.unr = phi i32 [ %i.b, %.lr.ph.preheader.i ], [ %i.j, %.lr.ph.i.prol ]
  %.0610.i.unr = phi i64 [ %2, %.lr.ph.preheader.i ], [ %i.c, %.lr.ph.i.prol ]
  %.079.i.unr = phi ptr [ %1, %.lr.ph.preheader.i ], [ %i.d, %.lr.ph.i.prol ]
  %i.k = icmp eq i64 %2, 1
  br i1 %i.k, label %._crit_edge.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.011.i = phi i32 [ %i.z, %.lr.ph.i ], [ %.011.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %.0610.i = phi i64 [ %i.s, %.lr.ph.i ], [ %.0610.i.unr, %.lr.ph.i.prol.loopexit ]
  %.079.i = phi ptr [ %i.t, %.lr.ph.i ], [ %.079.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.079.i, i64 1
  %i.m = load i8, ptr %.079.i, align 1, !tbaa !8
  %.0.tr.i = trunc i32 %.011.i to i8
  %.narrow.i = xor i8 %i.m, %.0.tr.i
  %i.n = zext i8 %.narrow.i to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr @crc_table, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !17
  %i.q = lshr i32 %.011.i, 8
  %i.r = xor i32 %i.p, %i.q                       ; 2 uses
  %i.s = add nsw i64 %.0610.i, -2                 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.079.i, i64 2
  %i.u = load i8, ptr %i.l, align 1, !tbaa !8
  %.0.tr.i.1 = trunc i32 %i.r to i8
  %.narrow.i.1 = xor i8 %i.u, %.0.tr.i.1
  %i.v = zext i8 %.narrow.i.1 to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr @crc_table, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !17
  %i.y = lshr i32 %i.r, 8
  %i.z = xor i32 %i.x, %i.y                       ; 2 uses
  %.not.i.1 = icmp eq i64 %i.s, 0
  br i1 %.not.i.1, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !16

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %.lcssa = phi i32 [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.z, %.lr.ph.i ]
  %i.aa = xor i32 %.lcssa, -1
  br label %crc32_small.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  store <2 x i64> <i64 2645828743, i64 0>, ptr %3, align 16, !tbaa !8
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.ab, i8 0, i64 48, i1 false)
  call void @crc32_fold_pclmulqdq(ptr noundef nonnull %3, ptr noundef %1, i64 noundef %2, i32 noundef %0)
  %i.ac = load <2 x i64>, ptr %3, align 16, !tbaa !8 ; 2 uses
  %i.ad = load <2 x i64>, ptr %i.ab, align 16, !tbaa !8
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.af = load <2 x i64>, ptr %i.ae, align 16, !tbaa !8
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ah = load <2 x i64>, ptr %i.ag, align 16, !tbaa !8
  %i.ai = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.ac, <2 x i64> <i64 poison, i64 6259578832>, i8 16)
  %i.aj = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.ac, <2 x i64> <i64 3433693342, i64 poison>, i8 1)
  %i.ak = xor <2 x i64> %i.ai, %i.ad
  %i.al = xor <2 x i64> %i.ak, %i.aj              ; 2 uses
  %i.am = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.al, <2 x i64> <i64 poison, i64 6259578832>, i8 16)
  %i.an = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.al, <2 x i64> <i64 3433693342, i64 poison>, i8 1)
  %i.ao = xor <2 x i64> %i.am, %i.af
  %i.ap = xor <2 x i64> %i.ao, %i.an              ; 2 uses
  %i.aq = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.ap, <2 x i64> <i64 poison, i64 6259578832>, i8 16)
  %i.ar = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.ap, <2 x i64> <i64 3433693342, i64 poison>, i8 1)
  %i.as = xor <2 x i64> %i.aq, %i.ah
  %i.at = xor <2 x i64> %i.as, %i.ar              ; 2 uses
  %i.au = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.at, <2 x i64> <i64 3433693342, i64 poison>, i8 0)
  %i.av = shufflevector <2 x i64> %i.at, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.aw = xor <2 x i64> %i.au, %i.av              ; 2 uses
  %.cast17.i = bitcast <2 x i64> %i.aw to <16 x i8>
  %i.ax = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %.cast17.i, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ay = bitcast <16 x i8> %i.ax to <2 x i64>
  %i.az = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.ay, <2 x i64> <i64 poison, i64 5969371428>, i8 16)
  %i.ba = xor <2 x i64> %i.aw, %i.az
  %i.bb = and <2 x i64> %i.ba, <i64 -4294967296, i64 -1> ; 3 uses
  %i.bc = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.bb, <2 x i64> <i64 8439010880, i64 poison>, i8 0)
  %i.bd = xor <2 x i64> %i.bb, %i.bc
  %i.be = and <2 x i64> %i.bd, <i64 -1, i64 0>    ; 2 uses
  %i.bf = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.be, <2 x i64> <i64 poison, i64 7976584768>, i8 16)
  %i.bg = xor <2 x i64> %i.bb, %i.bf
  %i.bh = xor <2 x i64> %i.bg, %i.be
  %i.bi = bitcast <2 x i64> %i.bh to <4 x i32>
  %i.bj = extractelement <4 x i32> %i.bi, i64 2
  %i.bk = xor i32 %i.bj, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  br label %crc32_small.exit

crc32_small.exit:                                 ; preds = %._crit_edge.loopexit.i, %bb.b, %bb.c
  %.0 = phi i32 [ %i.bk, %bb.c ], [ %0, %bb.b ], [ %i.aa, %._crit_edge.loopexit.i ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8>, <16 x i8>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nounwind }

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
!8 = !{!4, !4, i64 0}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
!11 = distinct !{!11, !9, !12}
!12 = !{!"llvm.loop.peeled.count", i32 1}
!13 = distinct !{!13, !9}
!14 = !{!"crc32_fold_s", !4, i64 0, !5, i64 64}
!15 = !{!14, !5, i64 64}
!16 = distinct !{!16, !9}
!17 = !{!5, !5, i64 0}
end_hunk_1
