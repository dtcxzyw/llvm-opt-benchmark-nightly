Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng/original/crc32_vpclmulqdq?download=true
inline.NumInlined: 41
inline.NumDeleted: 11
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.crc32_fold_s = type { [64 x i8], i32 }

@pshufb_shf_table = internal unnamed_addr constant [60 x i32] [i32 -2071756159, i32 -2004384123, i32 -1937012087, i32 9408141, i32 -2054913150, i32 -1987541114, i32 -1920169078, i32 16813966, i32 -2038070141, i32 -1970698105, i32 -1903326069, i32 33620111, i32 -2021227132, i32 -1953855096, i32 -1886483060, i32 50462976, i32 -2004384123, i32 -1937012087, i32 9408141, i32 67305985, i32 -1987541114, i32 -1920169078, i32 16813966, i32 84148994, i32 -1970698105, i32 -1903326069, i32 33620111, i32 100992003, i32 -1953855096, i32 -1886483060, i32 50462976, i32 117835012, i32 -1937012087, i32 9408141, i32 67305985, i32 134678021, i32 -1920169078, i32 16813966, i32 84148994, i32 151521030, i32 -1903326069, i32 33620111, i32 100992003, i32 168364039, i32 -1886483060, i32 50462976, i32 117835012, i32 185207048, i32 9408141, i32 67305985, i32 134678021, i32 202050057, i32 16813966, i32 84148994, i32 151521030, i32 218893066, i32 33620111, i32 100992003, i32 168364039, i32 235736075], align 32
@crc_table = internal unnamed_addr constant [256 x i32] [i32 0, i32 1996959894, i32 -301047508, i32 -1727442502, i32 124634137, i32 1886057615, i32 -379345611, i32 -1637575261, i32 249268274, i32 2044508324, i32 -522852066, i32 -1747789432, i32 162941995, i32 2125561021, i32 -407360249, i32 -1866523247, i32 498536548, i32 1789927666, i32 -205950648, i32 -2067906082, i32 450548861, i32 1843258603, i32 -187386543, i32 -2083289657, i32 325883990, i32 1684777152, i32 -43845254, i32 -1973040660, i32 335633487, i32 1661365465, i32 -99664541, i32 -1928851979, i32 997073096, i32 1281953886, i32 -715111964, i32 -1570279054, i32 1006888145, i32 1258607687, i32 -770865667, i32 -1526024853, i32 901097722, i32 1119000684, i32 -608450090, i32 -1396901568, i32 853044451, i32 1172266101, i32 -589951537, i32 -1412350631, i32 651767980, i32 1373503546, i32 -925412992, i32 -1076862698, i32 565507253, i32 1454621731, i32 -809855591, i32 -1195530993, i32 671266974, i32 1594198024, i32 -972236366, i32 -1324619484, i32 795835527, i32 1483230225, i32 -1050600021, i32 -1234817731, i32 1994146192, i32 31158534, i32 -1731059524, i32 -271249366, i32 1907459465, i32 112637215, i32 -1614814043, i32 -390540237, i32 2013776290, i32 251722036, i32 -1777751922, i32 -519137256, i32 2137656763, i32 141376813, i32 -1855689577, i32 -429695999, i32 1802195444, i32 476864866, i32 -2056965928, i32 -228458418, i32 1812370925, i32 453092731, i32 -2113342271, i32 -183516073, i32 1706088902, i32 314042704, i32 -1950435094, i32 -54949764, i32 1658658271, i32 366619977, i32 -1932296973, i32 -69972891, i32 1303535960, i32 984961486, i32 -1547960204, i32 -725929758, i32 1256170817, i32 1037604311, i32 -1529756563, i32 -740887301, i32 1131014506, i32 879679996, i32 -1385723834, i32 -631195440, i32 1141124467, i32 855842277, i32 -1442165665, i32 -586318647, i32 1342533948, i32 654459306, i32 -1106571248, i32 -921952122, i32 1466479909, i32 544179635, i32 -1184443383, i32 -832445281, i32 1591671054, i32 702138776, i32 -1328506846, i32 -942167884, i32 1504918807, i32 783551873, i32 -1212326853, i32 -1061524307, i32 -306674912, i32 -1698712650, i32 62317068, i32 1957810842, i32 -355121351, i32 -1647151185, i32 81470997, i32 1943803523, i32 -480048366, i32 -1805370492, i32 225274430, i32 2053790376, i32 -468791541, i32 -1828061283, i32 167816743, i32 2097651377, i32 -267414716, i32 -2029476910, i32 503444072, i32 1762050814, i32 -144550051, i32 -2140837941, i32 426522225, i32 1852507879, i32 -19653770, i32 -1982649376, i32 282753626, i32 1742555852, i32 -105259153, i32 -1900089351, i32 397917763, i32 1622183637, i32 -690576408, i32 -1580100738, i32 953729732, i32 1340076626, i32 -776247311, i32 -1497606297, i32 1068828381, i32 1219638859, i32 -670225446, i32 -1358292148, i32 906185462, i32 1090812512, i32 -547295293, i32 -1469587627, i32 829329135, i32 1181335161, i32 -882789492, i32 -1134132454, i32 628085408, i32 1382605366, i32 -871598187, i32 -1156888829, i32 570562233, i32 1426400815, i32 -977650754, i32 -1296233688, i32 733239954, i32 1555261956, i32 -1026031705, i32 -1244606671, i32 752459403, i32 1541320221, i32 -1687895376, i32 -328994266, i32 1969922972, i32 40735498, i32 -1677130071, i32 -351390145, i32 1913087877, i32 83908371, i32 -1782625662, i32 -491226604, i32 2075208622, i32 213261112, i32 -1831694693, i32 -438977011, i32 2094854071, i32 198958881, i32 -2032938284, i32 -237706686, i32 1759359992, i32 534414190, i32 -2118248755, i32 -155638181, i32 1873836001, i32 414664567, i32 -2012718362, i32 -15766928, i32 1711684554, i32 285281116, i32 -1889165569, i32 -127750551, i32 1634467795, i32 376229701, i32 -1609899400, i32 -686959890, i32 1308918612, i32 956543938, i32 -1486412191, i32 -799009033, i32 1231636301, i32 1047427035, i32 -1362007478, i32 -640263460, i32 1088359270, i32 936918000, i32 -1447252397, i32 -558129467, i32 1202900863, i32 817233897, i32 -1111625188, i32 -893730166, i32 1404277552, i32 615818150, i32 -1160759803, i32 -841546093, i32 1423857449, i32 601450431, i32 -1285129682, i32 -1000256840, i32 1567103746, i32 711928724, i32 -1274298825, i32 -1022587231, i32 1510334235, i32 755167117], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden noundef i32 @crc32_fold_vpclmulqdq_reset(ptr nofree noundef writeonly captures(none) initializes((0, 64)) %0) local_unnamed_addr #0 {
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
define hidden void @crc32_fold_vpclmulqdq(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
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
  br i1 %i.m, label %bb.s, label %.thread557

.thread557:                                       ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %.sroa.0, ptr align 1 %1, i64 %2, i1 false)
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.340 = load <2 x i64>, ptr %.sroa.0, align 16, !tbaa !8
  store <2 x i64> %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.340, ptr %i.a, align 16, !tbaa !8
  br label %bb.q

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
  br label %bb.p

.thread:                                          ; preds = %bb.d, %bb.g, %bb.e
  %.0..0.341575 = phi <2 x i64> [ %i.w, %bb.g ], [ %i.s, %bb.e ], [ %i.r, %bb.d ]
  %.0547 = phi <2 x i64> [ %i.g, %bb.g ], [ %i.e, %bb.e ], [ %i.e, %bb.d ]
  %.0540 = phi <2 x i64> [ %i.i, %bb.g ], [ %i.g, %bb.e ], [ %i.g, %bb.d ]
  %.0533 = phi <2 x i64> [ %i.k, %bb.g ], [ %i.i, %bb.e ], [ %i.i, %bb.d ]
  %.0527 = phi <2 x i64> [ %i.aa, %bb.g ], [ %i.k, %bb.e ], [ %i.k, %bb.d ]
  %.0324 = phi i64 [ %i.ab, %bb.g ], [ %2, %bb.e ], [ %2, %bb.d ]
  %.0313 = phi ptr [ %i.v, %bb.g ], [ %1, %bb.e ], [ %1, %bb.d ]
  %.idx.i = shl nuw nsw i64 %i.q, 4
  %i.ah = getelementptr i8, ptr @pshufb_shf_table, i64 %.idx.i
  %i.ai = getelementptr i8, ptr %i.ah, i64 -16
  %i.aj = load <16 x i8>, ptr %i.ai, align 16, !tbaa !8 ; 6 uses
  %i.ak = bitcast <2 x i64> %.0547 to <16 x i8>   ; 2 uses
  %i.al = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.ak, <16 x i8> %i.aj)
  %i.am = bitcast <16 x i8> %i.al to <2 x i64>    ; 2 uses
  %i.an = xor <16 x i8> %i.aj, splat (i8 -128)    ; 4 uses
  %i.ao = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.ak, <16 x i8> %i.an)
  %i.ap = bitcast <2 x i64> %.0540 to <16 x i8>   ; 2 uses
  %i.aq = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.ap, <16 x i8> %i.aj)
  %i.ar = or <16 x i8> %i.aq, %i.ao
  %i.as = bitcast <16 x i8> %i.ar to <2 x i64>
  %i.at = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.ap, <16 x i8> %i.an)
  %i.au = bitcast <2 x i64> %.0533 to <16 x i8>   ; 2 uses
  %i.av = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.au, <16 x i8> %i.aj)
  %i.aw = or <16 x i8> %i.av, %i.at
  %i.ax = bitcast <16 x i8> %i.aw to <2 x i64>
  %i.ay = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.au, <16 x i8> %i.an)
  %i.az = bitcast <2 x i64> %.0527 to <16 x i8>   ; 2 uses
  %i.ba = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.az, <16 x i8> %i.aj)
  %i.bb = or <16 x i8> %i.ba, %i.ay
  %i.bc = bitcast <16 x i8> %i.bb to <2 x i64>
  %i.bd = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.az, <16 x i8> %i.an)
  %i.be = bitcast <2 x i64> %.0..0.341575 to <16 x i8>
  %i.bf = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.be, <16 x i8> %i.aj) ; 2 uses
  store <16 x i8> %i.bf, ptr %i.a, align 16, !tbaa !8
  %i.bg = or <16 x i8> %i.bf, %i.bd
  %i.bh = bitcast <16 x i8> %i.bg to <2 x i64>
  %i.bi = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.am, <2 x i64> <i64 poison, i64 5708721108>, i8 16)
  %i.bj = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.am, <2 x i64> <i64 7631803798, i64 poison>, i8 1)
  %i.bk = xor <2 x i64> %i.bi, %i.bh
  %i.bl = xor <2 x i64> %i.bk, %i.bj
  %i.bm = getelementptr inbounds nuw i8, ptr %.0313, i64 %i.q
  %i.bn = sub nuw i64 %.0324, %i.q
  br label %bb.i

bb.i:                                             ; preds = %.thread, %bb.c
  %.1548 = phi <2 x i64> [ %i.e, %bb.c ], [ %i.as, %.thread ] ; 2 uses
  %.1541 = phi <2 x i64> [ %i.g, %bb.c ], [ %i.ax, %.thread ] ; 2 uses
  %.1534 = phi <2 x i64> [ %i.i, %bb.c ], [ %i.bc, %.thread ] ; 2 uses
  %.1528 = phi <2 x i64> [ %i.k, %bb.c ], [ %i.bl, %.thread ] ; 2 uses
  %.1325 = phi i64 [ %2, %bb.c ], [ %i.bn, %.thread ] ; 7 uses
  %.1315 = phi i32 [ %i.n, %bb.c ], [ 0, %.thread ] ; 2 uses
  %.1 = phi ptr [ %1, %bb.c ], [ %i.bm, %.thread ] ; 11 uses
  %i.bo = icmp ugt i64 %.1325, 255
  br i1 %i.bo, label %bb.j, label %.preheader

bb.j:                                             ; preds = %bb.i
  %i.bp = shufflevector <2 x i64> %i.c, <2 x i64> zeroinitializer, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3>
  %i.bq = load <8 x i64>, ptr %.1, align 1, !tbaa !8
  %.not.i = icmp eq i32 %.1315, 0
  %i.br = select i1 %.not.i, <8 x i64> zeroinitializer, <8 x i64> %i.bp
  %.094.i = xor <8 x i64> %i.bq, %i.br
  %i.bs = getelementptr inbounds nuw i8, ptr %.1, i64 64
  %i.bt = load <8 x i64>, ptr %i.bs, align 1, !tbaa !8 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.1, i64 128
  %i.bv = load <8 x i64>, ptr %i.bu, align 1, !tbaa !8 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.1, i64 192
  %i.bx = load <8 x i64>, ptr %i.bw, align 1, !tbaa !8 ; 4 uses
  %i.by = shufflevector <2 x i64> %.1548, <2 x i64> %.1541, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bz = bitcast <8 x i64> %i.by to <16 x i32>
  %i.ca = bitcast <2 x i64> %.1534 to <4 x i32>
  %i.cb = shufflevector <4 x i32> %i.ca, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cc = shufflevector <16 x i32> %i.bz, <16 x i32> %i.cb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cd = bitcast <2 x i64> %.1528 to <4 x i32>
  %i.ce = shufflevector <4 x i32> %i.cd, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cf = shufflevector <16 x i32> %i.cc, <16 x i32> %i.ce, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19>
  %i.cg = bitcast <16 x i32> %i.cf to <8 x i64>   ; 2 uses
  %i.ch = tail call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %i.cg, <8 x i64> <i64 7631803798, i64 poison, i64 7631803798, i64 poison, i64 7631803798, i64 poison, i64 7631803798, i64 poison>, i8 1)
  %i.ci = tail call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %i.cg, <8 x i64> <i64 poison, i64 5708721108, i64 poison, i64 5708721108, i64 poison, i64 5708721108, i64 poison, i64 5708721108>, i8 16)
  %i.cj = bitcast <8 x i64> %i.ci to <16 x i32>
  %i.ck = bitcast <8 x i64> %i.ch to <16 x i32>
  %i.cl = bitcast <8 x i64> %.094.i to <16 x i32>
  %i.cm = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.cj, <16 x i32> %i.ck, <16 x i32> %i.cl, i32 150)
  %.09697.i = add i64 %.1325, -256                ; 3 uses
  %.09398.i = bitcast <16 x i32> %i.cm to <8 x i64> ; 4 uses
  %i.cn = icmp ugt i64 %.09697.i, 255
  br i1 %i.cn, label %.lr.ph.i.preheader, label %fold_16_vpclmulqdq.exit

.lr.ph.i.preheader:                               ; preds = %bb.j
  %i.co = and i64 %.1325, 256
  %lcmp.mod.not.not = icmp eq i64 %i.co, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %.095.i.prol = getelementptr inbounds nuw i8, ptr %.1, i64 256 ; 2 uses
  %i.cp = load <16 x i32>, ptr %.095.i.prol, align 1, !tbaa !8
  %i.cq = getelementptr inbounds nuw i8, ptr %.1, i64 320
  %i.cr = load <16 x i32>, ptr %i.cq, align 1, !tbaa !8
  %i.cs = getelementptr inbounds nuw i8, ptr %.1, i64 384
  %i.ct = load <16 x i32>, ptr %i.cs, align 1, !tbaa !8
  %i.cu = getelementptr inbounds nuw i8, ptr %.1, i64 448
  %i.cv = load <16 x i32>, ptr %i.cu, align 1, !tbaa !8
  %i.cw = tail call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %.09398.i, <8 x i64> <i64 5136782384, i64 poison, i64 5136782384, i64 poison, i64 5136782384, i64 poison, i64 5136782384, i64 poison>, i8 1)
  %i.cx = tail call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %i.bt, <8 x i64> <i64 5136782384, i64 poison, i64 5136782384, i64 poison, i64 5136782384, i64 poison, i64 5136782384, i64 poison>, i8 1)
  %i.cy = tail call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %i.bv, <8 x i64> <i64 5136782384, i64 poison, i64 5136782384, i64 poison, i64 5136782384, i64 poison, i64 5136782384, i64 poison>, i8 1)
  %i.cz = tail call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %i.bx, <8 x i64> <i64 5136782384, i64 poison, i64 5136782384, i64 poison, i64 5136782384, i64 poison, i64 5136782384, i64 poison>, i8 1)
  %i.da = tail call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %.09398.i, <8 x i64> <i64 poison, i64 4651644810, i64 poison, i64 4651644810, i64 poison, i64 4651644810, i64 poison, i64 4651644810>, i8 16)
  %i.db = tail call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %i.bt, <8 x i64> <i64 poison, i64 4651644810, i64 poison, i64 4651644810, i64 poison, i64 4651644810, i64 poison, i64 4651644810>, i8 16)
  %i.dc = tail call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %i.bv, <8 x i64> <i64 poison, i64 4651644810, i64 poison, i64 4651644810, i64 poison, i64 4651644810, i64 poison, i64 4651644810>, i8 16)
  %i.dd = tail call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %i.bx, <8 x i64> <i64 poison, i64 4651644810, i64 poison, i64 4651644810, i64 poison, i64 4651644810, i64 poison, i64 4651644810>, i8 16)
  %i.de = bitcast <8 x i64> %i.da to <16 x i32>
  %i.df = bitcast <8 x i64> %i.cw to <16 x i32>
  %i.dg = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.de, <16 x i32> %i.df, <16 x i32> %i.cp, i32 150)
  %i.dh = bitcast <8 x i64> %i.db to <16 x i32>
  %i.di = bitcast <8 x i64> %i.cx to <16 x i32>
  %i.dj = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.dh, <16 x i32> %i.di, <16 x i32> %i.cr, i32 150)
  %i.dk = bitcast <16 x i32> %i.dj to <8 x i64>   ; 2 uses
  %i.dl = bitcast <8 x i64> %i.dc to <16 x i32>
  %i.dm = bitcast <8 x i64> %i.cy to <16 x i32>
  %i.dn = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.dl, <16 x i32> %i.dm, <16 x i32> %i.ct, i32 150)
  %i.do = bitcast <16 x i32> %i.dn to <8 x i64>   ; 2 uses
  %i.dp = bitcast <8 x i64> %i.dd to <16 x i32>
  %i.dq = bitcast <8 x i64> %i.cz to <16 x i32>
  %i.dr = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.dp, <16 x i32> %i.dq, <16 x i32> %i.cv, i32 150)
  %i.ds = bitcast <16 x i32> %i.dr to <8 x i64>   ; 2 uses
  %.096.i.prol = add i64 %.1325, -512             ; 2 uses
  %.093.i.prol = bitcast <16 x i32> %i.dg to <8 x i64> ; 2 uses
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.093104.i.unr = phi <8 x i64> [ %.09398.i, %.lr.ph.i.preheader ], [ %.093.i.prol, %.lr.ph.i.prol ]
  %.096103.i.unr = phi i64 [ %.09697.i, %.lr.ph.i.preheader ], [ %.096.i.prol, %.lr.ph.i.prol ]
  %.0102.i.unr = phi <8 x i64> [ %i.bx, %.lr.ph.i.preheader ], [ %i.ds, %.lr.ph.i.prol ]
  %.091101.i.unr = phi <8 x i64> [ %i.bv, %.lr.ph.i.preheader ], [ %i.do, %.lr.ph.i.prol ]
  %.092100.i.unr = phi <8 x i64> [ %i.bt, %.lr.ph.i.preheader ], [ %i.dk, %.lr.ph.i.prol ]
  %.pn99.i.unr = phi ptr [ %.1, %.lr.ph.i.preheader ], [ %.095.i.prol, %.lr.ph.i.prol ]
  %.lcssa655.unr = phi <8 x i64> [ poison, %.lr.ph.i.preheader ], [ %i.dk, %.lr.ph.i.prol ]
  %.lcssa654.unr = phi <8 x i64> [ poison, %.lr.ph.i.preheader ], [ %i.do, %.lr.ph.i.prol ]
  %.lcssa653.unr = phi <8 x i64> [ poison, %.lr.ph.i.preheader ], [ %i.ds, %.lr.ph.i.prol ]
  %.096.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.preheader ], [ %.096.i.prol, %.lr.ph.i.prol ]
  %.093.i.lcssa.unr = phi <8 x i64> [ poison, %.lr.ph.i.preheader ], [ %.093.i.prol, %.lr.ph.i.prol ]
  %i.dt = and i64 %.1325, -256
  %i.du = icmp eq i64 %i.dt, 512
  br i1 %i.du, label %fold_16_vpclmulqdq.exit, label %.lr.ph.i
end_hunk_0
begin_hunk_1_@crc32_fold_vpclmulqdq:bb.a
  %.lcssa650.unr = phi <2 x i64> [ poison, %.lr.ph599.preheader647 ], [ %i.jc, %.lr.ph599.prol ]
  %.lcssa649.unr = phi <2 x i64> [ poison, %.lr.ph599.preheader647 ], [ %i.je, %.lr.ph599.prol ]
  %.lcssa648.unr = phi <2 x i64> [ poison, %.lr.ph599.preheader647 ], [ %i.jg, %.lr.ph599.prol ]
  %.lcssa.unr = phi <2 x i64> [ poison, %.lr.ph599.preheader647 ], [ %i.ji, %.lr.ph599.prol ]
  %i.jj = and i64 %.2326, 9223372036854775744
  %i.jk = icmp eq i64 %i.jj, 128
  br i1 %i.jk, label %._crit_edge, label %.lr.ph599

.lr.ph599:                                        ; preds = %.lr.ph599.prol.loopexit, %.lr.ph599
  %.4598 = phi ptr [ %i.kq, %.lr.ph599 ], [ %.4598.unr, %.lr.ph599.prol.loopexit ] ; 9 uses
  %.4328596 = phi i64 [ %i.ki, %.lr.ph599 ], [ %.4328596.unr, %.lr.ph599.prol.loopexit ]
  %.4531595 = phi <2 x i64> [ %i.lf, %.lr.ph599 ], [ %.4531595.unr, %.lr.ph599.prol.loopexit ] ; 2 uses
  %.4537594 = phi <2 x i64> [ %i.ld, %.lr.ph599 ], [ %.4537594.unr, %.lr.ph599.prol.loopexit ] ; 2 uses
  %.4544593 = phi <2 x i64> [ %i.lb, %.lr.ph599 ], [ %.4544593.unr, %.lr.ph599.prol.loopexit ] ; 2 uses
  %.4551592 = phi <2 x i64> [ %i.kz, %.lr.ph599 ], [ %.4551592.unr, %.lr.ph599.prol.loopexit ] ; 2 uses
  %i.jl = load <2 x i64>, ptr %.4598, align 16, !tbaa !8
  %i.jm = getelementptr inbounds nuw i8, ptr %.4598, i64 16
  %i.jn = load <2 x i64>, ptr %i.jm, align 16, !tbaa !8
  %i.jo = getelementptr inbounds nuw i8, ptr %.4598, i64 32
  %i.jp = load <2 x i64>, ptr %i.jo, align 16, !tbaa !8
  %i.jq = getelementptr inbounds nuw i8, ptr %.4598, i64 48
  %i.jr = load <2 x i64>, ptr %i.jq, align 16, !tbaa !8
  %i.js = getelementptr inbounds nuw i8, ptr %.4598, i64 64
  %i.jt = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.4551592, <2 x i64> <i64 7631803798, i64 poison>, i8 1)
  %i.ju = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.4551592, <2 x i64> <i64 poison, i64 5708721108>, i8 16)
  %i.jv = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.4544593, <2 x i64> <i64 7631803798, i64 poison>, i8 1)
  %i.jw = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.4544593, <2 x i64> <i64 poison, i64 5708721108>, i8 16)
  %i.jx = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.4537594, <2 x i64> <i64 7631803798, i64 poison>, i8 1)
  %i.jy = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.4537594, <2 x i64> <i64 poison, i64 5708721108>, i8 16)
  %i.jz = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.4531595, <2 x i64> <i64 7631803798, i64 poison>, i8 1)
  %i.ka = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.4531595, <2 x i64> <i64 poison, i64 5708721108>, i8 16)
  %spec.select571 = xor <2 x i64> %i.jl, %i.jt
  %i.kb = xor <2 x i64> %spec.select571, %i.ju    ; 2 uses
  %i.kc = xor <2 x i64> %i.jv, %i.jn
  %i.kd = xor <2 x i64> %i.kc, %i.jw              ; 2 uses
  %i.ke = xor <2 x i64> %i.jx, %i.jp
  %i.kf = xor <2 x i64> %i.ke, %i.jy              ; 2 uses
  %i.kg = xor <2 x i64> %i.jz, %i.jr
  %i.kh = xor <2 x i64> %i.kg, %i.ka              ; 2 uses
  %i.ki = add nsw i64 %.4328596, -128             ; 3 uses
  %i.kj = load <2 x i64>, ptr %i.js, align 16, !tbaa !8
  %i.kk = getelementptr inbounds nuw i8, ptr %.4598, i64 80
  %i.kl = load <2 x i64>, ptr %i.kk, align 16, !tbaa !8
  %i.km = getelementptr inbounds nuw i8, ptr %.4598, i64 96
  %i.kn = load <2 x i64>, ptr %i.km, align 16, !tbaa !8
  %i.ko = getelementptr inbounds nuw i8, ptr %.4598, i64 112
  %i.kp = load <2 x i64>, ptr %i.ko, align 16, !tbaa !8
  %i.kq = getelementptr inbounds nuw i8, ptr %.4598, i64 128 ; 2 uses
  %i.kr = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.kb, <2 x i64> <i64 7631803798, i64 poison>, i8 1)
  %i.ks = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.kb, <2 x i64> <i64 poison, i64 5708721108>, i8 16)
  %i.kt = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.kd, <2 x i64> <i64 7631803798, i64 poison>, i8 1)
  %i.ku = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.kd, <2 x i64> <i64 poison, i64 5708721108>, i8 16)
  %i.kv = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.kf, <2 x i64> <i64 7631803798, i64 poison>, i8 1)
  %i.kw = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.kf, <2 x i64> <i64 poison, i64 5708721108>, i8 16)
  %i.kx = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.kh, <2 x i64> <i64 7631803798, i64 poison>, i8 1)
  %i.ky = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.kh, <2 x i64> <i64 poison, i64 5708721108>, i8 16)
  %spec.select571.1 = xor <2 x i64> %i.kj, %i.kr
  %i.kz = xor <2 x i64> %spec.select571.1, %i.ks  ; 2 uses
  %i.la = xor <2 x i64> %i.kt, %i.kl
  %i.lb = xor <2 x i64> %i.la, %i.ku              ; 2 uses
  %i.lc = xor <2 x i64> %i.kv, %i.kn
  %i.ld = xor <2 x i64> %i.lc, %i.kw              ; 2 uses
  %i.le = xor <2 x i64> %i.kx, %i.kp
  %i.lf = xor <2 x i64> %i.le, %i.ky              ; 2 uses
  %i.lg = icmp ugt i64 %i.ki, 63
  br i1 %i.lg, label %.lr.ph599, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %.lr.ph599.prol.loopexit, %.lr.ph599, %.lr.ph599.preheader, %.preheader
  %.4551.lcssa = phi <2 x i64> [ %.2549, %.preheader ], [ %i.ic, %.lr.ph599.preheader ], [ %.lcssa650.unr, %.lr.ph599.prol.loopexit ], [ %i.kz, %.lr.ph599 ] ; 7 uses
  %.4544.lcssa = phi <2 x i64> [ %.2542, %.preheader ], [ %i.ie, %.lr.ph599.preheader ], [ %.lcssa649.unr, %.lr.ph599.prol.loopexit ], [ %i.lb, %.lr.ph599 ] ; 6 uses
  %.4537.lcssa = phi <2 x i64> [ %.2535, %.preheader ], [ %i.ig, %.lr.ph599.preheader ], [ %.lcssa648.unr, %.lr.ph599.prol.loopexit ], [ %i.ld, %.lr.ph599 ] ; 5 uses
  %.4531.lcssa = phi <2 x i64> [ %.2529, %.preheader ], [ %i.ii, %.lr.ph599.preheader ], [ %.lcssa.unr, %.lr.ph599.prol.loopexit ], [ %i.lf, %.lr.ph599 ] ; 4 uses
  %.4328.lcssa = phi i64 [ %.2326, %.preheader ], [ %i.hj, %.lr.ph599.preheader ], [ %.lcssa652.unr, %.lr.ph599.prol.loopexit ], [ %i.ki, %.lr.ph599 ] ; 7 uses
  %.5319.lcssa = phi i32 [ %.2316, %.preheader ], [ 0, %.lr.ph599.preheader ], [ 0, %.lr.ph599 ], [ 0, %.lr.ph599.prol.loopexit ] ; 3 uses
  %.4.lcssa = phi ptr [ %.2, %.preheader ], [ %i.hr, %.lr.ph599.preheader ], [ %.lcssa651.unr, %.lr.ph599.prol.loopexit ], [ %i.kq, %.lr.ph599 ] ; 10 uses
  %i.lh = icmp samesign ugt i64 %.4328.lcssa, 47
  br i1 %i.lh, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge
  %i.li = add nsw i64 %.4328.lcssa, -48
  %i.lj = load <2 x i64>, ptr %.4.lcssa, align 16, !tbaa !8
  %i.lk = getelementptr inbounds nuw i8, ptr %.4.lcssa, i64 16
  %i.ll = load <2 x i64>, ptr %i.lk, align 16, !tbaa !8
  %i.lm = getelementptr inbounds nuw i8, ptr %.4.lcssa, i64 32
  %i.ln = load <2 x i64>, ptr %i.lm, align 16, !tbaa !8
  %i.lo = getelementptr inbounds nuw i8, ptr %.4.lcssa, i64 48
  %.not335 = icmp eq i32 %.5319.lcssa, 0
  %i.lp = select i1 %.not335, <2 x i64> zeroinitializer, <2 x i64> %i.c
  %i.lq = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.4537.lcssa, <2 x i64> <i64 7631803798, i64 poison>, i8 1)
  %i.lr = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.4537.lcssa, <2 x i64> <i64 poison, i64 5708721108>, i8 16)
  %i.ls = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.4544.lcssa, <2 x i64> <i64 7631803798, i64 poison>, i8 1)
  %i.lt = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.4544.lcssa, <2 x i64> <i64 poison, i64 5708721108>, i8 16)
  %i.lu = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.4551.lcssa, <2 x i64> <i64 7631803798, i64 poison>, i8 1)
  %i.lv = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.4551.lcssa, <2 x i64> <i64 poison, i64 5708721108>, i8 16)
  %i.lw = xor <2 x i64> %i.lj, %i.lp
  %spec.select572 = xor <2 x i64> %i.lw, %i.lu
  %i.lx = xor <2 x i64> %spec.select572, %i.lv
  %i.ly = xor <2 x i64> %i.ls, %i.ll
  %i.lz = xor <2 x i64> %i.ly, %i.lt
  %i.ma = xor <2 x i64> %i.lq, %i.ln
  %i.mb = xor <2 x i64> %i.ma, %i.lr
  br label %bb.p

bb.l:                                             ; preds = %._crit_edge
  %i.mc = icmp samesign ugt i64 %.4328.lcssa, 31
  br i1 %i.mc, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.md = add nsw i64 %.4328.lcssa, -32
  %i.me = load <2 x i64>, ptr %.4.lcssa, align 16, !tbaa !8
  %i.mf = getelementptr inbounds nuw i8, ptr %.4.lcssa, i64 16
  %i.mg = load <2 x i64>, ptr %i.mf, align 16, !tbaa !8
  %i.mh = getelementptr inbounds nuw i8, ptr %.4.lcssa, i64 32
  %.not334 = icmp eq i32 %.5319.lcssa, 0
  %i.mi = select i1 %.not334, <2 x i64> zeroinitializer, <2 x i64> %i.c
  %i.mj = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.4544.lcssa, <2 x i64> <i64 7631803798, i64 poison>, i8 1)
  %i.mk = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.4544.lcssa, <2 x i64> <i64 poison, i64 5708721108>, i8 16)
  %i.ml = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.4551.lcssa, <2 x i64> <i64 7631803798, i64 poison>, i8 1)
  %i.mm = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.4551.lcssa, <2 x i64> <i64 poison, i64 5708721108>, i8 16)
  %i.mn = xor <2 x i64> %i.me, %i.mi
  %spec.select573 = xor <2 x i64> %i.mn, %i.ml
  %i.mo = xor <2 x i64> %spec.select573, %i.mm
  %i.mp = xor <2 x i64> %i.mj, %i.mg
  %i.mq = xor <2 x i64> %i.mp, %i.mk
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.mr = icmp samesign ugt i64 %.4328.lcssa, 15
  br i1 %i.mr, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ms = add nsw i64 %.4328.lcssa, -16
  %i.mt = load <2 x i64>, ptr %.4.lcssa, align 16, !tbaa !8
  %i.mu = getelementptr inbounds nuw i8, ptr %.4.lcssa, i64 16
  %.not333 = icmp eq i32 %.5319.lcssa, 0
  %i.mv = select i1 %.not333, <2 x i64> zeroinitializer, <2 x i64> %i.c
  %i.mw = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.4551.lcssa, <2 x i64> <i64 7631803798, i64 poison>, i8 1)
  %i.mx = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.4551.lcssa, <2 x i64> <i64 poison, i64 5708721108>, i8 16)
  %i.my = xor <2 x i64> %i.mt, %i.mv
  %spec.select574 = xor <2 x i64> %i.my, %i.mw
  %i.mz = xor <2 x i64> %spec.select574, %i.mx
  br label %bb.p

bb.p:                                             ; preds = %bb.k, %bb.n, %bb.o, %bb.m, %bb.h
  %.5552 = phi <2 x i64> [ %i.g, %bb.h ], [ %.4531.lcssa, %bb.k ], [ %.4537.lcssa, %bb.m ], [ %.4544.lcssa, %bb.o ], [ %.4551.lcssa, %bb.n ] ; 2 uses
  %.5545 = phi <2 x i64> [ %i.i, %bb.h ], [ %i.lx, %bb.k ], [ %.4531.lcssa, %bb.m ], [ %.4537.lcssa, %bb.o ], [ %.4544.lcssa, %bb.n ] ; 2 uses
  %.5538 = phi <2 x i64> [ %i.k, %bb.h ], [ %i.lz, %bb.k ], [ %i.mo, %bb.m ], [ %.4531.lcssa, %bb.o ], [ %.4537.lcssa, %bb.n ] ; 2 uses
  %.5532 = phi <2 x i64> [ %i.ag, %bb.h ], [ %i.mb, %bb.k ], [ %i.mq, %bb.m ], [ %i.mz, %bb.o ], [ %.4531.lcssa, %bb.n ] ; 2 uses
  %.5329 = phi i64 [ %i.ac, %bb.h ], [ %i.li, %bb.k ], [ %i.md, %bb.m ], [ %i.ms, %bb.o ], [ %.4328.lcssa, %bb.n ] ; 2 uses
  %.5 = phi ptr [ %i.v, %bb.h ], [ %i.lo, %bb.k ], [ %i.mh, %bb.m ], [ %i.mu, %bb.o ], [ %.4.lcssa, %bb.n ]
  %.not338 = icmp eq i64 %.5329, 0
  br i1 %.not338, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.thread557, %bb.p
  %.5570 = phi ptr [ %1, %.thread557 ], [ %.5, %bb.p ]
  %.5329569 = phi i64 [ %2, %.thread557 ], [ %.5329, %bb.p ] ; 2 uses
  %.5532568 = phi <2 x i64> [ %i.k, %.thread557 ], [ %.5532, %bb.p ]
  %.5538567 = phi <2 x i64> [ %i.i, %.thread557 ], [ %.5538, %bb.p ]
  %.5545566 = phi <2 x i64> [ %i.g, %.thread557 ], [ %.5545, %bb.p ]
  %.5552565 = phi <2 x i64> [ %i.e, %.thread557 ], [ %.5552, %bb.p ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %.5570, i64 %.5329569, i1 false)
  %.idx.i339 = shl nuw nsw i64 %.5329569, 4
  %i.na = getelementptr i8, ptr @pshufb_shf_table, i64 %.idx.i339
  %i.nb = getelementptr i8, ptr %i.na, i64 -16
  %i.nc = load <16 x i8>, ptr %i.nb, align 16, !tbaa !8 ; 6 uses
  %i.nd = bitcast <2 x i64> %.5552565 to <16 x i8> ; 2 uses
  %i.ne = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.nd, <16 x i8> %i.nc)
  %i.nf = bitcast <16 x i8> %i.ne to <2 x i64>    ; 2 uses
  %i.ng = xor <16 x i8> %i.nc, splat (i8 -128)    ; 4 uses
  %i.nh = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.nd, <16 x i8> %i.ng)
  %i.ni = bitcast <2 x i64> %.5545566 to <16 x i8> ; 2 uses
  %i.nj = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.ni, <16 x i8> %i.nc)
  %i.nk = or <16 x i8> %i.nj, %i.nh
  %i.nl = bitcast <16 x i8> %i.nk to <2 x i64>
  %i.nm = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.ni, <16 x i8> %i.ng)
  %i.nn = bitcast <2 x i64> %.5538567 to <16 x i8> ; 2 uses
  %i.no = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.nn, <16 x i8> %i.nc)
  %i.np = or <16 x i8> %i.no, %i.nm
  %i.nq = bitcast <16 x i8> %i.np to <2 x i64>
  %i.nr = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.nn, <16 x i8> %i.ng)
  %i.ns = bitcast <2 x i64> %.5532568 to <16 x i8> ; 2 uses
  %i.nt = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.ns, <16 x i8> %i.nc)
  %i.nu = or <16 x i8> %i.nt, %i.nr
  %i.nv = bitcast <16 x i8> %i.nu to <2 x i64>
  %i.nw = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.ns, <16 x i8> %i.ng)
  %.0..0..0.342576629658 = load <16 x i8>, ptr %i.a, align 16, !tbaa !8
  %i.nx = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %.0..0..0.342576629658, <16 x i8> %i.nc)
  %i.ny = or <16 x i8> %i.nx, %i.nw
  %i.nz = bitcast <16 x i8> %i.ny to <2 x i64>
  %i.oa = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.nf, <2 x i64> <i64 poison, i64 5708721108>, i8 16)
  %i.ob = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.nf, <2 x i64> <i64 7631803798, i64 poison>, i8 1)
  %i.oc = xor <2 x i64> %i.oa, %i.nz
  %i.od = xor <2 x i64> %i.oc, %i.ob
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.6553 = phi <2 x i64> [ %.5552, %bb.p ], [ %i.nl, %bb.q ]
  %.6546 = phi <2 x i64> [ %.5545, %bb.p ], [ %i.nq, %bb.q ]
  %.6539 = phi <2 x i64> [ %.5538, %bb.p ], [ %i.nv, %bb.q ]
  %.6 = phi <2 x i64> [ %.5532, %bb.p ], [ %i.od, %bb.q ]
  store <2 x i64> %.6553, ptr %0, align 16, !tbaa !8
  store <2 x i64> %.6546, ptr %i.f, align 16, !tbaa !8
  store <2 x i64> %.6539, ptr %i.h, align 16, !tbaa !8
  store <2 x i64> %.6, ptr %i.j, align 16, !tbaa !8
  br label %bb.s

bb.s:                                             ; preds = %bb.b, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @crc32_fold_vpclmulqdq_copy(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca <2 x i64>, align 16               ; 8 uses
  %.sroa.0 = alloca <2 x i64>, align 16           ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store <2 x i64> zeroinitializer, ptr %i.a, align 16, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  store <2 x i64> zeroinitializer, ptr %.sroa.0, align 16
  %i.b = load <2 x i64>, ptr %0, align 16, !tbaa !8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load <2 x i64>, ptr %i.c, align 16, !tbaa !8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load <2 x i64>, ptr %i.e, align 16, !tbaa !8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.h = load <2 x i64>, ptr %i.g, align 16, !tbaa !8 ; 3 uses
  %i.i = icmp ult i64 %3, 16
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = icmp eq i64 %3, 0
  br i1 %i.j, label %bb.o, label %.thread

.thread:                                          ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %.sroa.0, ptr align 1 %2, i64 %3, i1 false)
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0. = load <2 x i64>, ptr %.sroa.0, align 16, !tbaa !8
  store <2 x i64> %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0., ptr %i.a, align 16, !tbaa !8
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %3, i1 false)
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.k = ptrtoint ptr %2 to i64
  %i.l = sub i64 0, %i.k
  %i.m = and i64 %i.l, 15                         ; 5 uses
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load <2 x i64>, ptr %2, align 1, !tbaa !8 ; 2 uses
  store <2 x i64> %i.n, ptr %1, align 1, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %i.m
  %.idx.i = shl nuw nsw i64 %i.m, 4
  %i.p = getelementptr i8, ptr @pshufb_shf_table, i64 %.idx.i
  %i.q = getelementptr i8, ptr %i.p, i64 -16
  %i.r = load <16 x i8>, ptr %i.q, align 16, !tbaa !8 ; 6 uses
  %i.s = bitcast <2 x i64> %i.b to <16 x i8>      ; 2 uses
  %i.t = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.s, <16 x i8> %i.r)
  %i.u = bitcast <16 x i8> %i.t to <2 x i64>      ; 2 uses
  %i.v = xor <16 x i8> %i.r, splat (i8 -128)      ; 4 uses
  %i.w = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.s, <16 x i8> %i.v)
  %i.x = bitcast <2 x i64> %i.d to <16 x i8>      ; 2 uses
  %i.y = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.x, <16 x i8> %i.r)
  %i.z = or <16 x i8> %i.y, %i.w
  %i.aa = bitcast <16 x i8> %i.z to <2 x i64>
  %i.ab = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.x, <16 x i8> %i.v)
  %i.ac = bitcast <2 x i64> %i.f to <16 x i8>     ; 2 uses
  %i.ad = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.ac, <16 x i8> %i.r)
  %i.ae = or <16 x i8> %i.ad, %i.ab
  %i.af = bitcast <16 x i8> %i.ae to <2 x i64>
  %i.ag = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.ac, <16 x i8> %i.v)
  %i.ah = bitcast <2 x i64> %i.h to <16 x i8>     ; 2 uses
  %i.ai = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.ah, <16 x i8> %i.r)
  %i.aj = or <16 x i8> %i.ai, %i.ag
  %i.ak = bitcast <16 x i8> %i.aj to <2 x i64>
  %i.al = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.ah, <16 x i8> %i.v)
  %i.am = bitcast <2 x i64> %i.n to <16 x i8>
  %i.an = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.am, <16 x i8> %i.r) ; 2 uses
  store <16 x i8> %i.an, ptr %i.a, align 16, !tbaa !8
  %i.ao = or <16 x i8> %i.an, %i.al
  %i.ap = bitcast <16 x i8> %i.ao to <2 x i64>
  %i.aq = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.u, <2 x i64> <i64 poison, i64 5708721108>, i8 16)
  %i.ar = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.u, <2 x i64> <i64 7631803798, i64 poison>, i8 1)
  %i.as = xor <2 x i64> %i.aq, %i.ap
  %i.at = xor <2 x i64> %i.as, %i.ar
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 %i.m
  %i.av = sub nuw i64 %3, %i.m
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0606 = phi <2 x i64> [ %i.b, %bb.c ], [ %i.aa, %bb.d ] ; 2 uses
  %.0600 = phi <2 x i64> [ %i.d, %bb.c ], [ %i.af, %bb.d ] ; 2 uses
  %.0594 = phi <2 x i64> [ %i.f, %bb.c ], [ %i.ak, %bb.d ] ; 2 uses
  %.0589 = phi <2 x i64> [ %i.h, %bb.c ], [ %i.at, %bb.d ] ; 2 uses
  %.0407 = phi i64 [ %3, %bb.c ], [ %i.av, %bb.d ] ; 7 uses
  %.0402 = phi ptr [ %2, %bb.c ], [ %i.au, %bb.d ] ; 11 uses
  %.0 = phi ptr [ %1, %bb.c ], [ %i.o, %bb.d ]    ; 11 uses
  %i.aw = icmp ugt i64 %.0407, 255
  br i1 %i.aw, label %bb.f, label %.preheader

bb.f:                                             ; preds = %bb.e
  %i.ax = load <8 x i64>, ptr %.0402, align 1, !tbaa !8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0402, i64 64
  %i.az = load <8 x i64>, ptr %i.ay, align 1, !tbaa !8 ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0402, i64 128
  %i.bb = load <8 x i64>, ptr %i.ba, align 1, !tbaa !8 ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0402, i64 192
  %i.bd = load <8 x i64>, ptr %i.bc, align 1, !tbaa !8 ; 5 uses
  %i.be = shufflevector <2 x i64> %.0606, <2 x i64> %.0600, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bf = bitcast <8 x i64> %i.be to <16 x i32>
  %i.bg = bitcast <2 x i64> %.0594 to <4 x i32>
  %i.bh = shufflevector <4 x i32> %i.bg, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bi = shufflevector <16 x i32> %i.bf, <16 x i32> %i.bh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bj = bitcast <2 x i64> %.0589 to <4 x i32>
  %i.bk = shufflevector <4 x i32> %i.bj, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bl = shufflevector <16 x i32> %i.bi, <16 x i32> %i.bk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19>
  %i.bm = bitcast <16 x i32> %i.bl to <8 x i64>   ; 2 uses
  %i.bn = tail call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %i.bm, <8 x i64> <i64 7631803798, i64 poison, i64 7631803798, i64 poison, i64 7631803798, i64 poison, i64 7631803798, i64 poison>, i8 1)
  %i.bo = tail call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %i.bm, <8 x i64> <i64 poison, i64 5708721108, i64 poison, i64 5708721108, i64 poison, i64 5708721108, i64 poison, i64 5708721108>, i8 16)
  %i.bp = bitcast <8 x i64> %i.bo to <16 x i32>
  %i.bq = bitcast <8 x i64> %i.bn to <16 x i32>
  %i.br = bitcast <8 x i64> %i.ax to <16 x i32>
  %i.bs = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.bp, <16 x i32> %i.bq, <16 x i32> %i.br, i32 150)
  store <8 x i64> %i.ax, ptr %.0, align 1, !tbaa !8
  %i.bt = getelementptr inbounds nuw i8, ptr %.0, i64 64
  store <8 x i64> %i.az, ptr %i.bt, align 1, !tbaa !8
  %i.bu = getelementptr inbounds nuw i8, ptr %.0, i64 128
  store <8 x i64> %i.bb, ptr %i.bu, align 1, !tbaa !8
  %i.bv = getelementptr inbounds nuw i8, ptr %.0, i64 192
  store <8 x i64> %i.bd, ptr %i.bv, align 1, !tbaa !8
  %.0108112.i = add i64 %.0407, -256              ; 3 uses
  %.0107113.i = bitcast <16 x i32> %i.bs to <8 x i64> ; 4 uses
  %i.bw = icmp ugt i64 %.0108112.i, 255
  br i1 %i.bw, label %.lr.ph.i.preheader, label %fold_16_vpclmulqdq_copy.exit

.lr.ph.i.preheader:                               ; preds = %bb.f
  %i.bx = and i64 %.0407, 256
  %lcmp.mod.not.not = icmp eq i64 %i.bx, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %.0109.i.prol = getelementptr inbounds nuw i8, ptr %.0402, i64 256 ; 2 uses
  %.0110.i.prol = getelementptr inbounds nuw i8, ptr %.0, i64 256 ; 2 uses
  %i.by = load <8 x i64>, ptr %.0109.i.prol, align 1, !tbaa !8 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.0402, i64 320
  %i.ca = load <8 x i64>, ptr %i.bz, align 1, !tbaa !8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.0402, i64 384
  %i.cc = load <8 x i64>, ptr %i.cb, align 1, !tbaa !8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.0402, i64 448
  %i.ce = load <8 x i64>, ptr %i.cd, align 1, !tbaa !8 ; 2 uses
  %i.cf = tail call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %.0107113.i, <8 x i64> <i64 5136782384, i64 poison, i64 5136782384, i64 poison, i64 5136782384, i64 poison, i64 5136782384, i64 poison>, i8 1)
  %i.cg = tail call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %i.az, <8 x i64> <i64 5136782384, i64 poison, i64 5136782384, i64 poison, i64 5136782384, i64 poison, i64 5136782384, i64 poison>, i8 1)
  %i.ch = tail call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %i.bb, <8 x i64> <i64 5136782384, i64 poison, i64 5136782384, i64 poison, i64 5136782384, i64 poison, i64 5136782384, i64 poison>, i8 1)
  %i.ci = tail call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %i.bd, <8 x i64> <i64 5136782384, i64 poison, i64 5136782384, i64 poison, i64 5136782384, i64 poison, i64 5136782384, i64 poison>, i8 1)
  %i.cj = tail call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %.0107113.i, <8 x i64> <i64 poison, i64 4651644810, i64 poison, i64 4651644810, i64 poison, i64 4651644810, i64 poison, i64 4651644810>, i8 16)
  %i.ck = tail call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %i.az, <8 x i64> <i64 poison, i64 4651644810, i64 poison, i64 4651644810, i64 poison, i64 4651644810, i64 poison, i64 4651644810>, i8 16)
  %i.cl = tail call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %i.bb, <8 x i64> <i64 poison, i64 4651644810, i64 poison, i64 4651644810, i64 poison, i64 4651644810, i64 poison, i64 4651644810>, i8 16)
  %i.cm = tail call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %i.bd, <8 x i64> <i64 poison, i64 4651644810, i64 poison, i64 4651644810, i64 poison, i64 4651644810, i64 poison, i64 4651644810>, i8 16)
  %i.cn = bitcast <8 x i64> %i.cj to <16 x i32>
  %i.co = bitcast <8 x i64> %i.cf to <16 x i32>
  %i.cp = bitcast <8 x i64> %i.by to <16 x i32>
  %i.cq = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.cn, <16 x i32> %i.co, <16 x i32> %i.cp, i32 150)
  %i.cr = bitcast <8 x i64> %i.ck to <16 x i32>
  %i.cs = bitcast <8 x i64> %i.cg to <16 x i32>
  %i.ct = bitcast <8 x i64> %i.ca to <16 x i32>
  %i.cu = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.cr, <16 x i32> %i.cs, <16 x i32> %i.ct, i32 150)
  %i.cv = bitcast <16 x i32> %i.cu to <8 x i64>   ; 2 uses
  %i.cw = bitcast <8 x i64> %i.cl to <16 x i32>
  %i.cx = bitcast <8 x i64> %i.ch to <16 x i32>
  %i.cy = bitcast <8 x i64> %i.cc to <16 x i32>
  %i.cz = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.cw, <16 x i32> %i.cx, <16 x i32> %i.cy, i32 150)
  %i.da = bitcast <16 x i32> %i.cz to <8 x i64>   ; 2 uses
  %i.db = bitcast <8 x i64> %i.cm to <16 x i32>
  %i.dc = bitcast <8 x i64> %i.ci to <16 x i32>
  %i.dd = bitcast <8 x i64> %i.ce to <16 x i32>
  %i.de = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.db, <16 x i32> %i.dc, <16 x i32> %i.dd, i32 150)
  %i.df = bitcast <16 x i32> %i.de to <8 x i64>   ; 2 uses
  store <8 x i64> %i.by, ptr %.0110.i.prol, align 1, !tbaa !8
  %i.dg = getelementptr inbounds nuw i8, ptr %.0, i64 320
  store <8 x i64> %i.ca, ptr %i.dg, align 1, !tbaa !8
  %i.dh = getelementptr inbounds nuw i8, ptr %.0, i64 384
  store <8 x i64> %i.cc, ptr %i.dh, align 1, !tbaa !8
  %i.di = getelementptr inbounds nuw i8, ptr %.0, i64 448
  store <8 x i64> %i.ce, ptr %i.di, align 1, !tbaa !8
  %.0108.i.prol = add i64 %.0407, -512            ; 2 uses
  %.0107.i.prol = bitcast <16 x i32> %i.cq to <8 x i64> ; 2 uses
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.0107120.i.unr = phi <8 x i64> [ %.0107113.i, %.lr.ph.i.preheader ], [ %.0107.i.prol, %.lr.ph.i.prol ]
  %.0108119.i.unr = phi i64 [ %.0108112.i, %.lr.ph.i.preheader ], [ %.0108.i.prol, %.lr.ph.i.prol ]
  %.0118.i.unr = phi <8 x i64> [ %i.bd, %.lr.ph.i.preheader ], [ %i.df, %.lr.ph.i.prol ]
  %.0105117.i.unr = phi <8 x i64> [ %i.bb, %.lr.ph.i.preheader ], [ %i.da, %.lr.ph.i.prol ]
  %.0106116.i.unr = phi <8 x i64> [ %i.az, %.lr.ph.i.preheader ], [ %i.cv, %.lr.ph.i.prol ]
  %.pn111115.i.unr = phi ptr [ %.0402, %.lr.ph.i.preheader ], [ %.0109.i.prol, %.lr.ph.i.prol ]
  %.pn114.i.unr = phi ptr [ %.0, %.lr.ph.i.preheader ], [ %.0110.i.prol, %.lr.ph.i.prol ]
  %.lcssa705.unr = phi <8 x i64> [ poison, %.lr.ph.i.preheader ], [ %i.cv, %.lr.ph.i.prol ]
  %.lcssa704.unr = phi <8 x i64> [ poison, %.lr.ph.i.preheader ], [ %i.da, %.lr.ph.i.prol ]
  %.lcssa703.unr = phi <8 x i64> [ poison, %.lr.ph.i.preheader ], [ %i.df, %.lr.ph.i.prol ]
  %.0108.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.preheader ], [ %.0108.i.prol, %.lr.ph.i.prol ]
  %.0107.i.lcssa.unr = phi <8 x i64> [ poison, %.lr.ph.i.preheader ], [ %.0107.i.prol, %.lr.ph.i.prol ]
  %i.dj = and i64 %.0407, -256
  %i.dk = icmp eq i64 %i.dj, 512
  br i1 %i.dk, label %fold_16_vpclmulqdq_copy.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.0107120.i = phi <8 x i64> [ %.0107.i.1, %.lr.ph.i ], [ %.0107120.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %.0108119.i = phi i64 [ %.0108.i.1, %.lr.ph.i ], [ %.0108119.i.unr, %.lr.ph.i.prol.loopexit ]
  %.0118.i = phi <8 x i64> [ %i.gd, %.lr.ph.i ], [ %.0118.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %.0105117.i = phi <8 x i64> [ %i.fy, %.lr.ph.i ], [ %.0105117.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %.0106116.i = phi <8 x i64> [ %i.ft, %.lr.ph.i ], [ %.0106116.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %.pn111115.i = phi ptr [ %.0109.i.1, %.lr.ph.i ], [ %.pn111115.i.unr, %.lr.ph.i.prol.loopexit ] ; 8 uses
  %.pn114.i = phi ptr [ %.0110.i.1, %.lr.ph.i ], [ %.pn114.i.unr, %.lr.ph.i.prol.loopexit ] ; 8 uses
  %.0109.i = getelementptr inbounds nuw i8, ptr %.pn111115.i, i64 256
  %.0110.i = getelementptr inbounds nuw i8, ptr %.pn114.i, i64 256
  %i.dl = load <8 x i64>, ptr %.0109.i, align 1, !tbaa !8 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.pn111115.i, i64 320
  %i.dn = load <8 x i64>, ptr %i.dm, align 1, !tbaa !8 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.pn111115.i, i64 384
  %i.dp = load <8 x i64>, ptr %i.do, align 1, !tbaa !8 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.pn111115.i, i64 448
  %i.dr = load <8 x i64>, ptr %i.dq, align 1, !tbaa !8 ; 2 uses
  %i.ds = tail call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %.0107120.i, <8 x i64> <i64 5136782384, i64 poison, i64 5136782384, i64 poison, i64 5136782384, i64 poison, i64 5136782384, i64 poison>, i8 1)
  %i.dt = tail call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %.0106116.i, <8 x i64> <i64 5136782384, i64 poison, i64 5136782384, i64 poison, i64 5136782384, i64 poison, i64 5136782384, i64 poison>, i8 1)
  %i.du = tail call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %.0105117.i, <8 x i64> <i64 5136782384, i64 poison, i64 5136782384, i64 poison, i64 5136782384, i64 poison, i64 5136782384, i64 poison>, i8 1)
  %i.dv = tail call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %.0118.i, <8 x i64> <i64 5136782384, i64 poison, i64 5136782384, i64 poison, i64 5136782384, i64 poison, i64 5136782384, i64 poison>, i8 1)
  %i.dw = tail call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %.0107120.i, <8 x i64> <i64 poison, i64 4651644810, i64 poison, i64 4651644810, i64 poison, i64 4651644810, i64 poison, i64 4651644810>, i8 16)
  %i.dx = tail call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %.0106116.i, <8 x i64> <i64 poison, i64 4651644810, i64 poison, i64 4651644810, i64 poison, i64 4651644810, i64 poison, i64 4651644810>, i8 16)
  %i.dy = tail call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %.0105117.i, <8 x i64> <i64 poison, i64 4651644810, i64 poison, i64 4651644810, i64 poison, i64 4651644810, i64 poison, i64 4651644810>, i8 16)
  %i.dz = tail call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %.0118.i, <8 x i64> <i64 poison, i64 4651644810, i64 poison, i64 4651644810, i64 poison, i64 4651644810, i64 poison, i64 4651644810>, i8 16)
  %i.ea = bitcast <8 x i64> %i.dw to <16 x i32>
  %i.eb = bitcast <8 x i64> %i.ds to <16 x i32>
  %i.ec = bitcast <8 x i64> %i.dl to <16 x i32>
  %i.ed = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.ea, <16 x i32> %i.eb, <16 x i32> %i.ec, i32 150)
  %i.ee = bitcast <8 x i64> %i.dx to <16 x i32>
  %i.ef = bitcast <8 x i64> %i.dt to <16 x i32>
  %i.eg = bitcast <8 x i64> %i.dn to <16 x i32>
  %i.eh = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.ee, <16 x i32> %i.ef, <16 x i32> %i.eg, i32 150)
  %i.ei = bitcast <16 x i32> %i.eh to <8 x i64>   ; 2 uses
  %i.ej = bitcast <8 x i64> %i.dy to <16 x i32>
  %i.ek = bitcast <8 x i64> %i.du to <16 x i32>
  %i.el = bitcast <8 x i64> %i.dp to <16 x i32>
  %i.em = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.ej, <16 x i32> %i.ek, <16 x i32> %i.el, i32 150)
  %i.en = bitcast <16 x i32> %i.em to <8 x i64>   ; 2 uses
  %i.eo = bitcast <8 x i64> %i.dz to <16 x i32>
  %i.ep = bitcast <8 x i64> %i.dv to <16 x i32>
  %i.eq = bitcast <8 x i64> %i.dr to <16 x i32>
  %i.er = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.eo, <16 x i32> %i.ep, <16 x i32> %i.eq, i32 150)
  %i.es = bitcast <16 x i32> %i.er to <8 x i64>   ; 2 uses
  store <8 x i64> %i.dl, ptr %.0110.i, align 1, !tbaa !8
  %i.et = getelementptr inbounds nuw i8, ptr %.pn114.i, i64 320
  store <8 x i64> %i.dn, ptr %i.et, align 1, !tbaa !8
  %i.eu = getelementptr inbounds nuw i8, ptr %.pn114.i, i64 384
  store <8 x i64> %i.dp, ptr %i.eu, align 1, !tbaa !8
  %i.ev = getelementptr inbounds nuw i8, ptr %.pn114.i, i64 448
  store <8 x i64> %i.dr, ptr %i.ev, align 1, !tbaa !8
  %.0107.i = bitcast <16 x i32> %i.ed to <8 x i64> ; 2 uses
  %.0109.i.1 = getelementptr inbounds nuw i8, ptr %.pn111115.i, i64 512 ; 2 uses
  %.0110.i.1 = getelementptr inbounds nuw i8, ptr %.pn114.i, i64 512 ; 2 uses
  %i.ew = load <8 x i64>, ptr %.0109.i.1, align 1, !tbaa !8 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.pn111115.i, i64 576
  %i.ey = load <8 x i64>, ptr %i.ex, align 1, !tbaa !8 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.pn111115.i, i64 640
  %i.fa = load <8 x i64>, ptr %i.ez, align 1, !tbaa !8 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.pn111115.i, i64 704
  %i.fc = load <8 x i64>, ptr %i.fb, align 1, !tbaa !8 ; 2 uses
  %i.fd = tail call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %.0107.i, <8 x i64> <i64 5136782384, i64 poison, i64 5136782384, i64 poison, i64 5136782384, i64 poison, i64 5136782384, i64 poison>, i8 1)
  %i.fe = tail call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %i.ei, <8 x i64> <i64 5136782384, i64 poison, i64 5136782384, i64 poison, i64 5136782384, i64 poison, i64 5136782384, i64 poison>, i8 1)
  %i.ff = tail call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %i.en, <8 x i64> <i64 5136782384, i64 poison, i64 5136782384, i64 poison, i64 5136782384, i64 poison, i64 5136782384, i64 poison>, i8 1)
  %i.fg = tail call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %i.es, <8 x i64> <i64 5136782384, i64 poison, i64 5136782384, i64 poison, i64 5136782384, i64 poison, i64 5136782384, i64 poison>, i8 1)
  %i.fh = tail call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %.0107.i, <8 x i64> <i64 poison, i64 4651644810, i64 poison, i64 4651644810, i64 poison, i64 4651644810, i64 poison, i64 4651644810>, i8 16)
  %i.fi = tail call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %i.ei, <8 x i64> <i64 poison, i64 4651644810, i64 poison, i64 4651644810, i64 poison, i64 4651644810, i64 poison, i64 4651644810>, i8 16)
  %i.fj = tail call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %i.en, <8 x i64> <i64 poison, i64 4651644810, i64 poison, i64 4651644810, i64 poison, i64 4651644810, i64 poison, i64 4651644810>, i8 16)
  %i.fk = tail call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %i.es, <8 x i64> <i64 poison, i64 4651644810, i64 poison, i64 4651644810, i64 poison, i64 4651644810, i64 poison, i64 4651644810>, i8 16)
  %i.fl = bitcast <8 x i64> %i.fh to <16 x i32>
  %i.fm = bitcast <8 x i64> %i.fd to <16 x i32>
  %i.fn = bitcast <8 x i64> %i.ew to <16 x i32>
  %i.fo = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.fl, <16 x i32> %i.fm, <16 x i32> %i.fn, i32 150)
  %i.fp = bitcast <8 x i64> %i.fi to <16 x i32>
  %i.fq = bitcast <8 x i64> %i.fe to <16 x i32>
  %i.fr = bitcast <8 x i64> %i.ey to <16 x i32>
  %i.fs = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.fp, <16 x i32> %i.fq, <16 x i32> %i.fr, i32 150)
  %i.ft = bitcast <16 x i32> %i.fs to <8 x i64>   ; 2 uses
  %i.fu = bitcast <8 x i64> %i.fj to <16 x i32>
  %i.fv = bitcast <8 x i64> %i.ff to <16 x i32>
  %i.fw = bitcast <8 x i64> %i.fa to <16 x i32>
  %i.fx = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.fu, <16 x i32> %i.fv, <16 x i32> %i.fw, i32 150)
  %i.fy = bitcast <16 x i32> %i.fx to <8 x i64>   ; 2 uses
  %i.fz = bitcast <8 x i64> %i.fk to <16 x i32>
  %i.ga = bitcast <8 x i64> %i.fg to <16 x i32>
  %i.gb = bitcast <8 x i64> %i.fc to <16 x i32>
  %i.gc = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.fz, <16 x i32> %i.ga, <16 x i32> %i.gb, i32 150)
  %i.gd = bitcast <16 x i32> %i.gc to <8 x i64>   ; 2 uses
  store <8 x i64> %i.ew, ptr %.0110.i.1, align 1, !tbaa !8
  %i.ge = getelementptr inbounds nuw i8, ptr %.pn114.i, i64 576
  store <8 x i64> %i.ey, ptr %i.ge, align 1, !tbaa !8
  %i.gf = getelementptr inbounds nuw i8, ptr %.pn114.i, i64 640
  store <8 x i64> %i.fa, ptr %i.gf, align 1, !tbaa !8
  %i.gg = getelementptr inbounds nuw i8, ptr %.pn114.i, i64 704
  store <8 x i64> %i.fc, ptr %i.gg, align 1, !tbaa !8
  %.0108.i.1 = add i64 %.0108119.i, -512          ; 3 uses
  %.0107.i.1 = bitcast <16 x i32> %i.fo to <8 x i64> ; 2 uses
  %i.gh = icmp ugt i64 %.0108.i.1, 255
  br i1 %i.gh, label %.lr.ph.i, label %fold_16_vpclmulqdq_copy.exit, !llvm.loop !13

fold_16_vpclmulqdq_copy.exit:                     ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.f
  %.0106.lcssa.i = phi <8 x i64> [ %i.az, %bb.f ], [ %.lcssa705.unr, %.lr.ph.i.prol.loopexit ], [ %i.ft, %.lr.ph.i ]
  %.0105.lcssa.i = phi <8 x i64> [ %i.bb, %bb.f ], [ %.lcssa704.unr, %.lr.ph.i.prol.loopexit ], [ %i.fy, %.lr.ph.i ]
  %.0.lcssa.i = phi <8 x i64> [ %i.bd, %bb.f ], [ %.lcssa703.unr, %.lr.ph.i.prol.loopexit ], [ %i.gd, %.lr.ph.i ]
  %.0108.lcssa.i = phi i64 [ %.0108112.i, %bb.f ], [ %.0108.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.0108.i.1, %.lr.ph.i ] ; 2 uses
  %.0107.lcssa.i = phi <8 x i64> [ %.0107113.i, %bb.f ], [ %.0107.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.0107.i.1, %.lr.ph.i ] ; 2 uses
  %i.gi = tail call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %.0107.lcssa.i, <8 x i64> <i64 7631803798, i64 poison, i64 7631803798, i64 poison, i64 7631803798, i64 poison, i64 7631803798, i64 poison>, i8 1)
  %i.gj = tail call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %.0107.lcssa.i, <8 x i64> <i64 poison, i64 5708721108, i64 poison, i64 5708721108, i64 poison, i64 5708721108, i64 poison, i64 5708721108>, i8 16)
  %i.gk = bitcast <8 x i64> %i.gj to <16 x i32>
  %i.gl = bitcast <8 x i64> %i.gi to <16 x i32>
  %i.gm = bitcast <8 x i64> %.0106.lcssa.i to <16 x i32>
  %i.gn = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.gk, <16 x i32> %i.gl, <16 x i32> %i.gm, i32 150)
  %i.go = bitcast <16 x i32> %i.gn to <8 x i64>   ; 2 uses
  %i.gp = tail call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %i.go, <8 x i64> <i64 7631803798, i64 poison, i64 7631803798, i64 poison, i64 7631803798, i64 poison, i64 7631803798, i64 poison>, i8 1)
  %i.gq = tail call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %i.go, <8 x i64> <i64 poison, i64 5708721108, i64 poison, i64 5708721108, i64 poison, i64 5708721108, i64 poison, i64 5708721108>, i8 16)
  %i.gr = bitcast <8 x i64> %i.gq to <16 x i32>
  %i.gs = bitcast <8 x i64> %i.gp to <16 x i32>
  %i.gt = bitcast <8 x i64> %.0105.lcssa.i to <16 x i32>
  %i.gu = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.gr, <16 x i32> %i.gs, <16 x i32> %i.gt, i32 150)
  %i.gv = bitcast <16 x i32> %i.gu to <8 x i64>   ; 2 uses
  %i.gw = tail call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %i.gv, <8 x i64> <i64 7631803798, i64 poison, i64 7631803798, i64 poison, i64 7631803798, i64 poison, i64 7631803798, i64 poison>, i8 1)
  %i.gx = tail call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %i.gv, <8 x i64> <i64 poison, i64 5708721108, i64 poison, i64 5708721108, i64 poison, i64 5708721108, i64 poison, i64 5708721108>, i8 16)
  %i.gy = bitcast <8 x i64> %i.gx to <16 x i32>
  %i.gz = bitcast <8 x i64> %i.gw to <16 x i32>
  %i.ha = bitcast <8 x i64> %.0.lcssa.i to <16 x i32>
  %i.hb = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.gy, <16 x i32> %i.gz, <16 x i32> %i.ha, i32 150) ; 4 uses
  %i.hc = bitcast <16 x i32> %i.hb to <8 x i64>
  %i.hd = shufflevector <8 x i64> %i.hc, <8 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.he = bitcast <16 x i32> %i.hb to <8 x i64>
  %i.hf = shufflevector <8 x i64> %i.he, <8 x i64> poison, <2 x i32> <i32 2, i32 3>
  %i.hg = bitcast <16 x i32> %i.hb to <8 x i64>
  %i.hh = shufflevector <8 x i64> %i.hg, <8 x i64> poison, <2 x i32> <i32 4, i32 5>
  %i.hi = bitcast <16 x i32> %i.hb to <8 x i64>
  %i.hj = shufflevector <8 x i64> %i.hi, <8 x i64> poison, <2 x i32> <i32 6, i32 7>
  %i.hk = sub nuw i64 %.0407, %.0108.lcssa.i      ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.0, i64 %i.hk
  %i.hm = getelementptr inbounds nuw i8, ptr %.0402, i64 %i.hk
  br label %.preheader

.preheader:                                       ; preds = %bb.e, %fold_16_vpclmulqdq_copy.exit
  %.1607 = phi <2 x i64> [ %i.hd, %fold_16_vpclmulqdq_copy.exit ], [ %.0606, %bb.e ] ; 2 uses
  %.1601 = phi <2 x i64> [ %i.hf, %fold_16_vpclmulqdq_copy.exit ], [ %.0600, %bb.e ] ; 2 uses
  %.1595 = phi <2 x i64> [ %i.hh, %fold_16_vpclmulqdq_copy.exit ], [ %.0594, %bb.e ] ; 2 uses
  %.1590 = phi <2 x i64> [ %i.hj, %fold_16_vpclmulqdq_copy.exit ], [ %.0589, %bb.e ] ; 2 uses
  %.1408 = phi i64 [ %.0108.lcssa.i, %fold_16_vpclmulqdq_copy.exit ], [ %.0407, %bb.e ] ; 3 uses
  %.1403 = phi ptr [ %i.hm, %fold_16_vpclmulqdq_copy.exit ], [ %.0402, %bb.e ] ; 2 uses
  %.1 = phi ptr [ %i.hl, %fold_16_vpclmulqdq_copy.exit ], [ %.0, %bb.e ] ; 2 uses
  %i.hn = icmp samesign ugt i64 %.1408, 63
  br i1 %i.hn, label %.lr.ph650, label %._crit_edge

.lr.ph650:                                        ; preds = %.preheader, %.lr.ph650
  %.3649 = phi ptr [ %i.ig, %.lr.ph650 ], [ %.1, %.preheader ] ; 5 uses
  %.3405648 = phi ptr [ %i.hw, %.lr.ph650 ], [ %.1403, %.preheader ] ; 5 uses
  %.3410647 = phi i64 [ %i.ho, %.lr.ph650 ], [ %.1408, %.preheader ]
  %.3592646 = phi <2 x i64> [ %i.io, %.lr.ph650 ], [ %.1590, %.preheader ] ; 2 uses
  %.3597645 = phi <2 x i64> [ %i.im, %.lr.ph650 ], [ %.1595, %.preheader ] ; 2 uses
  %.3603644 = phi <2 x i64> [ %i.ik, %.lr.ph650 ], [ %.1601, %.preheader ] ; 2 uses
  %.3609643 = phi <2 x i64> [ %i.ii, %.lr.ph650 ], [ %.1607, %.preheader ] ; 2 uses
  %i.ho = add nsw i64 %.3410647, -64              ; 3 uses
  %i.hp = load <2 x i64>, ptr %.3405648, align 16, !tbaa !8 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.3405648, i64 16
  %i.hr = load <2 x i64>, ptr %i.hq, align 16, !tbaa !8 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.3405648, i64 32
  %i.ht = load <2 x i64>, ptr %i.hs, align 16, !tbaa !8 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.3405648, i64 48
  %i.hv = load <2 x i64>, ptr %i.hu, align 16, !tbaa !8 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.3405648, i64 64 ; 2 uses
  %i.hx = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.3609643, <2 x i64> <i64 7631803798, i64 poison>, i8 1)
  %i.hy = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.3609643, <2 x i64> <i64 poison, i64 5708721108>, i8 16)
  %i.hz = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.3603644, <2 x i64> <i64 7631803798, i64 poison>, i8 1)
  %i.ia = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.3603644, <2 x i64> <i64 poison, i64 5708721108>, i8 16)
  %i.ib = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.3597645, <2 x i64> <i64 7631803798, i64 poison>, i8 1)
  %i.ic = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.3597645, <2 x i64> <i64 poison, i64 5708721108>, i8 16)
  %i.id = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.3592646, <2 x i64> <i64 7631803798, i64 poison>, i8 1)
  %i.ie = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.3592646, <2 x i64> <i64 poison, i64 5708721108>, i8 16)
  store <2 x i64> %i.hp, ptr %.3649, align 1, !tbaa !8
  %4 = getelementptr inbounds nuw i8, ptr %.3649, i64 16
  store <2 x i64> %i.hr, ptr %4, align 1, !tbaa !8
  %i.if = getelementptr inbounds nuw i8, ptr %.3649, i64 32
  store <2 x i64> %i.ht, ptr %i.if, align 1, !tbaa !8
  %5 = getelementptr inbounds nuw i8, ptr %.3649, i64 48
  store <2 x i64> %i.hv, ptr %5, align 1, !tbaa !8
  %i.ig = getelementptr inbounds nuw i8, ptr %.3649, i64 64 ; 2 uses
  %i.ih = xor <2 x i64> %i.hx, %i.hy
  %i.ii = xor <2 x i64> %i.ih, %i.hp              ; 2 uses
  %i.ij = xor <2 x i64> %i.hz, %i.ia
  %i.ik = xor <2 x i64> %i.ij, %i.hr              ; 2 uses
  %i.il = xor <2 x i64> %i.ib, %i.ic
  %i.im = xor <2 x i64> %i.il, %i.ht              ; 2 uses
  %i.in = xor <2 x i64> %i.id, %i.ie
  %i.io = xor <2 x i64> %i.in, %i.hv              ; 2 uses
  %i.ip = icmp ugt i64 %i.ho, 63
  br i1 %i.ip, label %.lr.ph650, label %._crit_edge, !llvm.loop !14

._crit_edge:                                      ; preds = %.lr.ph650, %.preheader
  %.3609.lcssa = phi <2 x i64> [ %.1607, %.preheader ], [ %i.ii, %.lr.ph650 ] ; 7 uses
  %.3603.lcssa = phi <2 x i64> [ %.1601, %.preheader ], [ %i.ik, %.lr.ph650 ] ; 6 uses
  %.3597.lcssa = phi <2 x i64> [ %.1595, %.preheader ], [ %i.im, %.lr.ph650 ] ; 5 uses
  %.3592.lcssa = phi <2 x i64> [ %.1590, %.preheader ], [ %i.io, %.lr.ph650 ] ; 4 uses
  %.3410.lcssa = phi i64 [ %.1408, %.preheader ], [ %i.ho, %.lr.ph650 ] ; 7 uses
  %.3405.lcssa = phi ptr [ %.1403, %.preheader ], [ %i.hw, %.lr.ph650 ] ; 10 uses
  %.3.lcssa = phi ptr [ %.1, %.preheader ], [ %i.ig, %.lr.ph650 ] ; 10 uses
  %i.iq = icmp samesign ugt i64 %.3410.lcssa, 47
  br i1 %i.iq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge
  %i.ir = add nsw i64 %.3410.lcssa, -48
  %i.is = load <2 x i64>, ptr %.3405.lcssa, align 16, !tbaa !8 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.3405.lcssa, i64 16
  %i.iu = load <2 x i64>, ptr %i.it, align 16, !tbaa !8 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.3405.lcssa, i64 32
  %i.iw = load <2 x i64>, ptr %i.iv, align 16, !tbaa !8 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.3405.lcssa, i64 48
  store <2 x i64> %i.is, ptr %.3.lcssa, align 1, !tbaa !8
  %6 = getelementptr inbounds nuw i8, ptr %.3.lcssa, i64 16
  store <2 x i64> %i.iu, ptr %6, align 1, !tbaa !8
  %i.iy = getelementptr inbounds nuw i8, ptr %.3.lcssa, i64 32
  store <2 x i64> %i.iw, ptr %i.iy, align 1, !tbaa !8
  %i.iz = getelementptr inbounds nuw i8, ptr %.3.lcssa, i64 48
  %i.ja = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.3597.lcssa, <2 x i64> <i64 7631803798, i64 poison>, i8 1)
  %i.jb = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.3597.lcssa, <2 x i64> <i64 poison, i64 5708721108>, i8 16)
  %i.jc = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.3603.lcssa, <2 x i64> <i64 7631803798, i64 poison>, i8 1)
  %i.jd = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.3603.lcssa, <2 x i64> <i64 poison, i64 5708721108>, i8 16)
  %i.je = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.3609.lcssa, <2 x i64> <i64 7631803798, i64 poison>, i8 1)
  %i.jf = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.3609.lcssa, <2 x i64> <i64 poison, i64 5708721108>, i8 16)
  %i.jg = xor <2 x i64> %i.je, %i.jf
  %i.jh = xor <2 x i64> %i.jg, %i.is
  %i.ji = xor <2 x i64> %i.jc, %i.jd
  %i.jj = xor <2 x i64> %i.ji, %i.iu
  %i.jk = xor <2 x i64> %i.ja, %i.jb
  %i.jl = xor <2 x i64> %i.jk, %i.iw
  br label %bb.l

bb.h:                                             ; preds = %._crit_edge
  %i.jm = icmp samesign ugt i64 %.3410.lcssa, 31
  br i1 %i.jm, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.jn = add nsw i64 %.3410.lcssa, -32
  %i.jo = load <2 x i64>, ptr %.3405.lcssa, align 16, !tbaa !8 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %.3405.lcssa, i64 16
  %i.jq = load <2 x i64>, ptr %i.jp, align 16, !tbaa !8 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.3405.lcssa, i64 32
  store <2 x i64> %i.jo, ptr %.3.lcssa, align 1, !tbaa !8
  %7 = getelementptr inbounds nuw i8, ptr %.3.lcssa, i64 16
  store <2 x i64> %i.jq, ptr %7, align 1, !tbaa !8
  %i.js = getelementptr inbounds nuw i8, ptr %.3.lcssa, i64 32
  %i.jt = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.3603.lcssa, <2 x i64> <i64 7631803798, i64 poison>, i8 1)
  %i.ju = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.3603.lcssa, <2 x i64> <i64 poison, i64 5708721108>, i8 16)
  %i.jv = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.3609.lcssa, <2 x i64> <i64 7631803798, i64 poison>, i8 1)
  %i.jw = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.3609.lcssa, <2 x i64> <i64 poison, i64 5708721108>, i8 16)
  %i.jx = xor <2 x i64> %i.jv, %i.jw
  %i.jy = xor <2 x i64> %i.jx, %i.jo
  %i.jz = xor <2 x i64> %i.jt, %i.ju
  %i.ka = xor <2 x i64> %i.jz, %i.jq
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.kb = icmp samesign ugt i64 %.3410.lcssa, 15
  br i1 %i.kb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.kc = add nsw i64 %.3410.lcssa, -16
  %i.kd = load <2 x i64>, ptr %.3405.lcssa, align 16, !tbaa !8 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.3405.lcssa, i64 16
  store <2 x i64> %i.kd, ptr %.3.lcssa, align 1, !tbaa !8
  %i.kf = getelementptr inbounds nuw i8, ptr %.3.lcssa, i64 16
  %i.kg = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.3609.lcssa, <2 x i64> <i64 7631803798, i64 poison>, i8 1)
  %i.kh = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.3609.lcssa, <2 x i64> <i64 poison, i64 5708721108>, i8 16)
  %i.ki = xor <2 x i64> %i.kg, %i.kh
  %i.kj = xor <2 x i64> %i.ki, %i.kd
  br label %bb.l

bb.l:                                             ; preds = %bb.g, %bb.j, %bb.k, %bb.i
  %.4610 = phi <2 x i64> [ %.3609.lcssa, %bb.j ], [ %.3592.lcssa, %bb.g ], [ %.3597.lcssa, %bb.i ], [ %.3603.lcssa, %bb.k ] ; 2 uses
  %.4604 = phi <2 x i64> [ %.3603.lcssa, %bb.j ], [ %i.jh, %bb.g ], [ %.3592.lcssa, %bb.i ], [ %.3597.lcssa, %bb.k ] ; 2 uses
  %.4598 = phi <2 x i64> [ %.3597.lcssa, %bb.j ], [ %i.jj, %bb.g ], [ %i.jy, %bb.i ], [ %.3592.lcssa, %bb.k ] ; 2 uses
  %.4593 = phi <2 x i64> [ %.3592.lcssa, %bb.j ], [ %i.jl, %bb.g ], [ %i.ka, %bb.i ], [ %i.kj, %bb.k ] ; 2 uses
  %.4411 = phi i64 [ %.3410.lcssa, %bb.j ], [ %i.ir, %bb.g ], [ %i.jn, %bb.i ], [ %i.kc, %bb.k ] ; 2 uses
  %.4406 = phi ptr [ %.3405.lcssa, %bb.j ], [ %i.ix, %bb.g ], [ %i.jr, %bb.i ], [ %i.ke, %bb.k ]
  %.4 = phi ptr [ %.3.lcssa, %bb.j ], [ %i.iz, %bb.g ], [ %i.js, %bb.i ], [ %i.kf, %bb.k ]
  %.not415 = icmp eq i64 %.4411, 0
  br i1 %.not415, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.thread, %bb.l
  %.4626 = phi ptr [ %1, %.thread ], [ %.4, %bb.l ]
  %.4406625 = phi ptr [ %2, %.thread ], [ %.4406, %bb.l ]
  %.4411624 = phi i64 [ %3, %.thread ], [ %.4411, %bb.l ] ; 3 uses
  %.4593623 = phi <2 x i64> [ %i.h, %.thread ], [ %.4593, %bb.l ]
  %.4598622 = phi <2 x i64> [ %i.f, %.thread ], [ %.4598, %bb.l ]
  %.4604621 = phi <2 x i64> [ %i.d, %.thread ], [ %.4604, %bb.l ]
  %.4610620 = phi <2 x i64> [ %i.b, %.thread ], [ %.4610, %bb.l ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %.4406625, i64 %.4411624, i1 false)
  %.0..0..0. = load <2 x i64>, ptr %i.a, align 16, !tbaa !8
  store <2 x i64> %.0..0..0., ptr %.sroa.0, align 16, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.4626, ptr nonnull align 16 %.sroa.0, i64 %.4411624, i1 false)
  %.idx.i416 = shl nuw nsw i64 %.4411624, 4
  %i.kk = getelementptr i8, ptr @pshufb_shf_table, i64 %.idx.i416
  %i.kl = getelementptr i8, ptr %i.kk, i64 -16
  %i.km = load <16 x i8>, ptr %i.kl, align 16, !tbaa !8 ; 6 uses
  %i.kn = bitcast <2 x i64> %.4610620 to <16 x i8> ; 2 uses
  %i.ko = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.kn, <16 x i8> %i.km)
  %i.kp = bitcast <16 x i8> %i.ko to <2 x i64>    ; 2 uses
  %i.kq = xor <16 x i8> %i.km, splat (i8 -128)    ; 4 uses
  %i.kr = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.kn, <16 x i8> %i.kq)
  %i.ks = bitcast <2 x i64> %.4604621 to <16 x i8> ; 2 uses
  %i.kt = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.ks, <16 x i8> %i.km)
  %i.ku = or <16 x i8> %i.kt, %i.kr
  %i.kv = bitcast <16 x i8> %i.ku to <2 x i64>
  %i.kw = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.ks, <16 x i8> %i.kq)
  %i.kx = bitcast <2 x i64> %.4598622 to <16 x i8> ; 2 uses
  %i.ky = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.kx, <16 x i8> %i.km)
  %i.kz = or <16 x i8> %i.ky, %i.kw
  %i.la = bitcast <16 x i8> %i.kz to <2 x i64>
  %i.lb = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.kx, <16 x i8> %i.kq)
  %i.lc = bitcast <2 x i64> %.4593623 to <16 x i8> ; 2 uses
  %i.ld = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.lc, <16 x i8> %i.km)
  %i.le = or <16 x i8> %i.ld, %i.lb
  %i.lf = bitcast <16 x i8> %i.le to <2 x i64>
  %i.lg = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.lc, <16 x i8> %i.kq)
  %.0..0..0.418627678706 = load <16 x i8>, ptr %i.a, align 16, !tbaa !8
  %i.lh = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %.0..0..0.418627678706, <16 x i8> %i.km)
  %i.li = or <16 x i8> %i.lh, %i.lg
  %i.lj = bitcast <16 x i8> %i.li to <2 x i64>
  %i.lk = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.kp, <2 x i64> <i64 poison, i64 5708721108>, i8 16)
  %i.ll = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.kp, <2 x i64> <i64 7631803798, i64 poison>, i8 1)
  %i.lm = xor <2 x i64> %i.lk, %i.lj
  %i.ln = xor <2 x i64> %i.lm, %i.ll
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.5611 = phi <2 x i64> [ %.4610, %bb.l ], [ %i.kv, %bb.m ]
  %.5605 = phi <2 x i64> [ %.4604, %bb.l ], [ %i.la, %bb.m ]
  %.5599 = phi <2 x i64> [ %.4598, %bb.l ], [ %i.lf, %bb.m ]
  %.5 = phi <2 x i64> [ %.4593, %bb.l ], [ %i.ln, %bb.m ]
  store <2 x i64> %.5611, ptr %0, align 16, !tbaa !8
  store <2 x i64> %.5605, ptr %i.c, align 16, !tbaa !8
  store <2 x i64> %.5599, ptr %i.e, align 16, !tbaa !8
  store <2 x i64> %.5, ptr %i.g, align 16, !tbaa !8
  br label %bb.o

bb.o:                                             ; preds = %bb.b, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden i32 @crc32_fold_vpclmulqdq_final(ptr nofree noundef captures(none) initializes((64, 68)) %0) local_unnamed_addr #5 {
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
  store i32 %i.aj, ptr %i.ak, align 16, !tbaa !16
  ret i32 %i.aj
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.pclmulqdq(<2 x i64>, <2 x i64>, i8 immarg) #6

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @crc32_vpclmulqdq(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #7 {
bb.a:
  %3 = alloca %struct.crc32_fold_s, align 16      ; 8 uses
  %i.a = icmp ult i64 %2, 16
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not8.i = icmp eq i64 %2, 0
  br i1 %.not8.i, label %crc32_small.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.b = xor i32 %0, -1                           ; 2 uses
  %xtraiter = and i64 %2, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i, %.lr.ph.i.prol
  %.011.i.prol = phi i32 [ %i.j, %.lr.ph.i.prol ], [ %i.b, %.lr.ph.preheader.i ] ; 2 uses
  %.0610.i.prol = phi i64 [ %i.c, %.lr.ph.i.prol ], [ %2, %.lr.ph.preheader.i ]
  %.079.i.prol = phi ptr [ %i.d, %.lr.ph.i.prol ], [ %1, %.lr.ph.preheader.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.preheader.i ]
  %i.c = add nsw i64 %.0610.i.prol, -1            ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.079.i.prol, i64 1 ; 2 uses
  %i.e = load i8, ptr %.079.i.prol, align 1, !tbaa !8
  %.0.tr.i.prol = trunc i32 %.011.i.prol to i8
  %.narrow.i.prol = xor i8 %i.e, %.0.tr.i.prol
  %i.f = zext i8 %.narrow.i.prol to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr @crc_table, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !19
  %i.i = lshr i32 %.011.i.prol, 8
  %i.j = xor i32 %i.h, %i.i                       ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !17

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader.i ], [ %i.j, %.lr.ph.i.prol ]
  %.011.i.unr = phi i32 [ %i.b, %.lr.ph.preheader.i ], [ %i.j, %.lr.ph.i.prol ]
  %.0610.i.unr = phi i64 [ %2, %.lr.ph.preheader.i ], [ %i.c, %.lr.ph.i.prol ]
  %.079.i.unr = phi ptr [ %1, %.lr.ph.preheader.i ], [ %i.d, %.lr.ph.i.prol ]
  %i.k = icmp ult i64 %2, 4
  br i1 %i.k, label %._crit_edge.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.011.i = phi i32 [ %i.an, %.lr.ph.i ], [ %.011.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %.0610.i = phi i64 [ %i.ag, %.lr.ph.i ], [ %.0610.i.unr, %.lr.ph.i.prol.loopexit ]
  %.079.i = phi ptr [ %i.ah, %.lr.ph.i ], [ %.079.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.079.i, i64 1
  %i.m = load i8, ptr %.079.i, align 1, !tbaa !8
  %.0.tr.i = trunc i32 %.011.i to i8
  %.narrow.i = xor i8 %i.m, %.0.tr.i
  %i.n = zext i8 %.narrow.i to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr @crc_table, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !19
  %i.q = lshr i32 %.011.i, 8
  %i.r = xor i32 %i.p, %i.q                       ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.079.i, i64 2
  %i.t = load i8, ptr %i.l, align 1, !tbaa !8
  %.0.tr.i.1 = trunc i32 %i.r to i8
  %.narrow.i.1 = xor i8 %i.t, %.0.tr.i.1
  %i.u = zext i8 %.narrow.i.1 to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr @crc_table, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !19
  %i.x = lshr i32 %i.r, 8
  %i.y = xor i32 %i.w, %i.x                       ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.079.i, i64 3
  %i.aa = load i8, ptr %i.s, align 1, !tbaa !8
  %.0.tr.i.2 = trunc i32 %i.y to i8
  %.narrow.i.2 = xor i8 %i.aa, %.0.tr.i.2
  %i.ab = zext i8 %.narrow.i.2 to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr @crc_table, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !19
  %i.ae = lshr i32 %i.y, 8
  %i.af = xor i32 %i.ad, %i.ae                    ; 2 uses
  %i.ag = add nsw i64 %.0610.i, -4                ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.079.i, i64 4
  %i.ai = load i8, ptr %i.z, align 1, !tbaa !8
  %.0.tr.i.3 = trunc i32 %i.af to i8
  %.narrow.i.3 = xor i8 %i.ai, %.0.tr.i.3
  %i.aj = zext i8 %.narrow.i.3 to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr @crc_table, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !19
  %i.am = lshr i32 %i.af, 8
  %i.an = xor i32 %i.al, %i.am                    ; 2 uses
  %.not.i.3 = icmp eq i64 %i.ag, 0
  br i1 %.not.i.3, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !18

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %.lcssa = phi i32 [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.an, %.lr.ph.i ]
  %i.ao = xor i32 %.lcssa, -1
  br label %crc32_small.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  store <2 x i64> <i64 2645828743, i64 0>, ptr %3, align 16, !tbaa !8
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.ap, i8 0, i64 48, i1 false)
  call void @crc32_fold_vpclmulqdq(ptr noundef nonnull %3, ptr noundef %1, i64 noundef %2, i32 noundef %0)
  %i.aq = load <2 x i64>, ptr %3, align 16, !tbaa !8 ; 2 uses
  %i.ar = load <2 x i64>, ptr %i.ap, align 16, !tbaa !8
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.at = load <2 x i64>, ptr %i.as, align 16, !tbaa !8
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.av = load <2 x i64>, ptr %i.au, align 16, !tbaa !8
  %i.aw = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.aq, <2 x i64> <i64 poison, i64 6259578832>, i8 16)
  %i.ax = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.aq, <2 x i64> <i64 3433693342, i64 poison>, i8 1)
  %i.ay = xor <2 x i64> %i.aw, %i.ar
  %i.az = xor <2 x i64> %i.ay, %i.ax              ; 2 uses
  %i.ba = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.az, <2 x i64> <i64 poison, i64 6259578832>, i8 16)
  %i.bb = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.az, <2 x i64> <i64 3433693342, i64 poison>, i8 1)
  %i.bc = xor <2 x i64> %i.ba, %i.at
  %i.bd = xor <2 x i64> %i.bc, %i.bb              ; 2 uses
  %i.be = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.bd, <2 x i64> <i64 poison, i64 6259578832>, i8 16)
  %i.bf = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.bd, <2 x i64> <i64 3433693342, i64 poison>, i8 1)
  %i.bg = xor <2 x i64> %i.be, %i.av
  %i.bh = xor <2 x i64> %i.bg, %i.bf              ; 2 uses
  %i.bi = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.bh, <2 x i64> <i64 3433693342, i64 poison>, i8 0)
  %i.bj = shufflevector <2 x i64> %i.bh, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.bk = xor <2 x i64> %i.bi, %i.bj              ; 2 uses
  %.cast17.i = bitcast <2 x i64> %i.bk to <16 x i8>
  %i.bl = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %.cast17.i, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bm = bitcast <16 x i8> %i.bl to <2 x i64>
  %i.bn = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.bm, <2 x i64> <i64 poison, i64 5969371428>, i8 16)
  %i.bo = xor <2 x i64> %i.bk, %i.bn
  %i.bp = and <2 x i64> %i.bo, <i64 -4294967296, i64 -1> ; 3 uses
  %i.bq = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.bp, <2 x i64> <i64 8439010880, i64 poison>, i8 0)
  %i.br = xor <2 x i64> %i.bp, %i.bq
  %i.bs = and <2 x i64> %i.br, <i64 -1, i64 0>    ; 2 uses
  %i.bt = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.bs, <2 x i64> <i64 poison, i64 7976584768>, i8 16)
  %i.bu = xor <2 x i64> %i.bp, %i.bt
  %i.bv = xor <2 x i64> %i.bu, %i.bs
  %i.bw = bitcast <2 x i64> %i.bv to <4 x i32>
  %i.bx = extractelement <4 x i32> %i.bw, i64 2
  %i.by = xor i32 %i.bx, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br label %crc32_small.exit

crc32_small.exit:                                 ; preds = %._crit_edge.loopexit.i, %bb.b, %bb.c
  %.0 = phi i32 [ %i.by, %bb.c ], [ %0, %bb.b ], [ %i.ao, %._crit_edge.loopexit.i ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
end_hunk_1
