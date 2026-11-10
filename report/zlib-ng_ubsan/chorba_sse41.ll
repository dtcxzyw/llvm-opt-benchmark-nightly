Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng_ubsan/original/chorba_sse41?download=true
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
@106 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 291, i32 52 }, ptr @7 }
@.src.1 = private unnamed_addr constant [22 x i8] c"/usr/include/string.h\00", align 1
@107 = private unnamed_addr global { { ptr, i32, i32 }, { ptr, i32, i32 }, i32 } { { ptr, i32, i32 } { ptr @.src, i32 291, i32 19 }, { ptr, i32, i32 } { ptr @.src.1, i32 44, i32 28 }, i32 2 }
@108 = private unnamed_addr constant { i16, i16, [49 x i8] } { i16 -1, i16 0, [49 x i8] c"'const uint64_t *' (aka 'const unsigned long *')\00" }
@109 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 291, i32 19 }, ptr @108, i8 3, i8 0 }
@110 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 294, i32 5 } }
@111 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 296, i32 5 } }
@112 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 301, i32 31 }, ptr @7 }
@crc_table = internal constant [256 x i32] [i32 0, i32 1996959894, i32 -301047508, i32 -1727442502, i32 124634137, i32 1886057615, i32 -379345611, i32 -1637575261, i32 249268274, i32 2044508324, i32 -522852066, i32 -1747789432, i32 162941995, i32 2125561021, i32 -407360249, i32 -1866523247, i32 498536548, i32 1789927666, i32 -205950648, i32 -2067906082, i32 450548861, i32 1843258603, i32 -187386543, i32 -2083289657, i32 325883990, i32 1684777152, i32 -43845254, i32 -1973040660, i32 335633487, i32 1661365465, i32 -99664541, i32 -1928851979, i32 997073096, i32 1281953886, i32 -715111964, i32 -1570279054, i32 1006888145, i32 1258607687, i32 -770865667, i32 -1526024853, i32 901097722, i32 1119000684, i32 -608450090, i32 -1396901568, i32 853044451, i32 1172266101, i32 -589951537, i32 -1412350631, i32 651767980, i32 1373503546, i32 -925412992, i32 -1076862698, i32 565507253, i32 1454621731, i32 -809855591, i32 -1195530993, i32 671266974, i32 1594198024, i32 -972236366, i32 -1324619484, i32 795835527, i32 1483230225, i32 -1050600021, i32 -1234817731, i32 1994146192, i32 31158534, i32 -1731059524, i32 -271249366, i32 1907459465, i32 112637215, i32 -1614814043, i32 -390540237, i32 2013776290, i32 251722036, i32 -1777751922, i32 -519137256, i32 2137656763, i32 141376813, i32 -1855689577, i32 -429695999, i32 1802195444, i32 476864866, i32 -2056965928, i32 -228458418, i32 1812370925, i32 453092731, i32 -2113342271, i32 -183516073, i32 1706088902, i32 314042704, i32 -1950435094, i32 -54949764, i32 1658658271, i32 366619977, i32 -1932296973, i32 -69972891, i32 1303535960, i32 984961486, i32 -1547960204, i32 -725929758, i32 1256170817, i32 1037604311, i32 -1529756563, i32 -740887301, i32 1131014506, i32 879679996, i32 -1385723834, i32 -631195440, i32 1141124467, i32 855842277, i32 -1442165665, i32 -586318647, i32 1342533948, i32 654459306, i32 -1106571248, i32 -921952122, i32 1466479909, i32 544179635, i32 -1184443383, i32 -832445281, i32 1591671054, i32 702138776, i32 -1328506846, i32 -942167884, i32 1504918807, i32 783551873, i32 -1212326853, i32 -1061524307, i32 -306674912, i32 -1698712650, i32 62317068, i32 1957810842, i32 -355121351, i32 -1647151185, i32 81470997, i32 1943803523, i32 -480048366, i32 -1805370492, i32 225274430, i32 2053790376, i32 -468791541, i32 -1828061283, i32 167816743, i32 2097651377, i32 -267414716, i32 -2029476910, i32 503444072, i32 1762050814, i32 -144550051, i32 -2140837941, i32 426522225, i32 1852507879, i32 -19653770, i32 -1982649376, i32 282753626, i32 1742555852, i32 -105259153, i32 -1900089351, i32 397917763, i32 1622183637, i32 -690576408, i32 -1580100738, i32 953729732, i32 1340076626, i32 -776247311, i32 -1497606297, i32 1068828381, i32 1219638859, i32 -670225446, i32 -1358292148, i32 906185462, i32 1090812512, i32 -547295293, i32 -1469587627, i32 829329135, i32 1181335161, i32 -882789492, i32 -1134132454, i32 628085408, i32 1382605366, i32 -871598187, i32 -1156888829, i32 570562233, i32 1426400815, i32 -977650754, i32 -1296233688, i32 733239954, i32 1555261956, i32 -1026031705, i32 -1244606671, i32 752459403, i32 1541320221, i32 -1687895376, i32 -328994266, i32 1969922972, i32 40735498, i32 -1677130071, i32 -351390145, i32 1913087877, i32 83908371, i32 -1782625662, i32 -491226604, i32 2075208622, i32 213261112, i32 -1831694693, i32 -438977011, i32 2094854071, i32 198958881, i32 -2032938284, i32 -237706686, i32 1759359992, i32 534414190, i32 -2118248755, i32 -155638181, i32 1873836001, i32 414664567, i32 -2012718362, i32 -15766928, i32 1711684554, i32 285281116, i32 -1889165569, i32 -127750551, i32 1634467795, i32 376229701, i32 -1609899400, i32 -686959890, i32 1308918612, i32 956543938, i32 -1486412191, i32 -799009033, i32 1231636301, i32 1047427035, i32 -1362007478, i32 -640263460, i32 1088359270, i32 936918000, i32 -1447252397, i32 -558129467, i32 1202900863, i32 817233897, i32 -1111625188, i32 -893730166, i32 1404277552, i32 615818150, i32 -1160759803, i32 -841546093, i32 1423857449, i32 601450431, i32 -1285129682, i32 -1000256840, i32 1567103746, i32 711928724, i32 -1274298825, i32 -1022587231, i32 1510334235, i32 755167117], align 16
@113 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 302, i32 32 } }
@114 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 302, i32 66 }, ptr @7 }
@115 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 302, i32 49 } }
@116 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 302, i32 15 } }
@.src.2 = private unnamed_addr constant [50 x i8] c"/usr/lib/llvm-24/lib/clang/24/include/emmintrin.h\00", align 1
@117 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.2, i32 3905, i32 3 }, ptr @17, i8 4, i8 1 }
@118 = private unnamed_addr constant { i16, i16, [49 x i8] } { i16 -1, i16 0, [49 x i8] c"'const __m128i' (vector of 2 'long long' values)\00" }
@119 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.2, i32 3451, i32 10 }, ptr @118, i8 4, i8 0 }

; Function Attrs: nounwind uwtable
define hidden i32 @crc32_chorba_sse41(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 !func_sanitize !21 {
bb.a:
  %i.a = alloca [4096 x i64], align 16            ; 32 uses
  %i.b = alloca [9 x i64], align 16               ; 11 uses
  %i.c = xor i32 %0, -1                           ; 3 uses
  %i.d = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.e = sub i64 0, %i.d
  %i.f = and i64 %i.e, 15                         ; 6 uses
  %i.g = add nuw nsw i64 %i.f, 72
  %i.h = icmp ugt i64 %2, %i.g
  br i1 %i.h, label %bb.b, label %bb.ij

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = call i32 @crc32_braid_internal(i32 noundef %i.c, ptr noundef %1, i64 noundef %i.f) #6
  %i.j = sub nuw i64 %2, %i.f
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.028 = phi i64 [ %i.j, %bb.c ], [ %2, %bb.b ]  ; 18 uses
  %.0 = phi i32 [ %i.i, %bb.c ], [ %i.c, %bb.b ]  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.f ; 11 uses
  %i.l = add i64 %i.f, %i.d, !nosanitize !22      ; 3 uses
  %i.m = icmp ne ptr %1, null                     ; 6 uses
  %i.n = icmp eq i64 %i.l, 0
  %i.o = xor i1 %i.m, %i.n
  %i.p = icmp uge i64 %i.l, %i.d, !nosanitize !22
  %i.q = and i1 %i.p, %i.o, !nosanitize !22
  br i1 %i.q, label %bb.f, label %bb.e, !prof !23, !nosanitize !22

bb.e:                                             ; preds = %bb.d
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @1, i64 %i.d, i64 %i.l) #6, !nosanitize !22
  br label %bb.f, !nosanitize !22

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = icmp ugt i64 %.028, 524288
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = call i32 @crc32_chorba_118960_nondestructive(i32 noundef %.0, ptr noundef %i.k, i64 noundef %.028) #6
  br label %bb.ik

bb.h:                                             ; preds = %bb.f
  %i.t = add nsw i64 %.028, -8193
  %or.cond = icmp ult i64 %i.t, 24576
  br i1 %or.cond, label %bb.i, label %bb.ii

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 1024 ; 2 uses
  %i.v = ptrtoint ptr %i.a to i64, !nosanitize !22 ; 18 uses
  %.not.i = icmp ugt ptr %i.a, inttoptr (i64 -1025 to ptr)
  br i1 %.not.i, label %bb.j, label %bb.k, !prof !24, !nosanitize !22

bb.j:                                             ; preds = %bb.i
  %i.w = add i64 %i.v, 1024, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @2, i64 %i.v, i64 %i.w) #6, !nosanitize !22
  br label %bb.k, !nosanitize !22

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 1152 ; 3 uses
  %.not700.i = icmp ugt ptr %i.a, inttoptr (i64 -1153 to ptr)
  br i1 %.not700.i, label %bb.l, label %bb.m, !prof !24, !nosanitize !22

bb.l:                                             ; preds = %bb.k
  %i.y = add i64 %i.v, 1152, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @3, i64 %i.v, i64 %i.y) #6, !nosanitize !22
  br label %bb.m, !nosanitize !22

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 1456
  %.not701.i = icmp ugt ptr %i.a, inttoptr (i64 -1457 to ptr)
  br i1 %.not701.i, label %bb.n, label %bb.o, !prof !24, !nosanitize !22

bb.n:                                             ; preds = %bb.m
  %i.aa = add i64 %i.v, 1456, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @4, i64 %i.v, i64 %i.aa) #6, !nosanitize !22
  br label %bb.o, !nosanitize !22

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 1680
  %.not702.i = icmp ugt ptr %i.a, inttoptr (i64 -1681 to ptr)
  br i1 %.not702.i, label %bb.p, label %bb.q, !prof !24, !nosanitize !22

bb.p:                                             ; preds = %bb.o
  %i.ac = add i64 %i.v, 1680, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @5, i64 %i.v, i64 %i.ac) #6, !nosanitize !22
  br label %bb.q, !nosanitize !22

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 2400 ; 3 uses
  %i.ae = add i64 %i.v, 2400, !nosanitize !22     ; 2 uses
  %.not703.i = icmp ugt ptr %i.a, inttoptr (i64 -2401 to ptr) ; 2 uses
  br i1 %.not703.i, label %bb.r, label %_mm_store_si128.exit.1, !prof !24, !nosanitize !22

bb.r:                                             ; preds = %bb.q
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @6, i64 %i.v, i64 %i.ae) #6, !nosanitize !22
  br label %_mm_store_si128.exit.1, !nosanitize !22

_mm_store_si128.exit.1:                           ; preds = %bb.r, %bb.q
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 1280
  %.not704.i = icmp ugt ptr %i.x, inttoptr (i64 -129 to ptr)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.u, i8 0, i64 128, i1 false)
  br i1 %.not704.i, label %bb.s, label %.lr.ph.preheader, !prof !24, !nosanitize !22

bb.s:                                             ; preds = %_mm_store_si128.exit.1
  %i.ag = ptrtoint ptr %i.x to i64, !nosanitize !22 ; 2 uses
  %i.ah = add i64 %i.ag, 128, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @8, i64 %i.ag, i64 %i.ah) #6, !nosanitize !22
  br label %.lr.ph.preheader, !nosanitize !22

.lr.ph.preheader:                                 ; preds = %bb.s, %_mm_store_si128.exit.1
  %i.ai = zext i32 %.0 to i64
  %i.aj = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.ai, i64 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(432) %i.af, i8 0, i64 432, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  %i.al = ptrtoint ptr %i.k to i64, !nosanitize !22 ; 4 uses
  %i.am = add i64 %i.al, 16, !nosanitize !22      ; 2 uses
  %i.an = icmp ne ptr %1, null                    ; 2 uses
  %i.ao = icmp ne i64 %i.am, 0
  %i.ap = icmp ult ptr %i.k, inttoptr (i64 -16 to ptr)
  %i.aq = and i1 %i.ap, %i.ao
  %i.ar = and i1 %i.an, %i.aq
  br i1 %i.ar, label %bb.u, label %bb.t, !prof !23, !nosanitize !22

bb.t:                                             ; preds = %.lr.ph.preheader
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @9, i64 %i.al, i64 %i.am) #6, !nosanitize !22
  br label %bb.u, !nosanitize !22

bb.u:                                             ; preds = %bb.t, %.lr.ph.preheader
  %i.as = and i64 %i.al, 15, !nosanitize !22
  %i.at = icmp eq i64 %i.as, 0, !nosanitize !22
  %i.au = and i1 %i.an, %i.at
  br i1 %i.au, label %_mm_load_si128.exit117.peel, label %bb.v, !prof !23, !nosanitize !22

bb.v:                                             ; preds = %bb.u
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @119, i64 %i.al) #6, !nosanitize !22
  br label %_mm_load_si128.exit117.peel, !nosanitize !22

_mm_load_si128.exit117.peel:                      ; preds = %bb.v, %bb.u
  %i.av = load <2 x i64>, ptr %i.k, align 16, !tbaa !25
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 3 uses
  %.not779.i.peel = icmp ugt ptr %i.ak, inttoptr (i64 -17 to ptr)
  br i1 %.not779.i.peel, label %bb.w, label %_mm_load_si128.exit116.peel, !prof !24, !nosanitize !22

bb.w:                                             ; preds = %_mm_load_si128.exit117.peel
  %i.ax = ptrtoint ptr %i.ak to i64, !nosanitize !22 ; 2 uses
  %i.ay = add i64 %i.ax, 16, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @10, i64 %i.ax, i64 %i.ay) #6, !nosanitize !22
  br label %_mm_load_si128.exit116.peel, !nosanitize !22

_mm_load_si128.exit116.peel:                      ; preds = %bb.w, %_mm_load_si128.exit117.peel
  %i.az = load <2 x i64>, ptr %i.ak, align 16, !tbaa !25 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 3 uses
  %.not780.i.peel = icmp ugt ptr %i.aw, inttoptr (i64 -17 to ptr)
  br i1 %.not780.i.peel, label %bb.x, label %_mm_load_si128.exit115.peel, !prof !24, !nosanitize !22

bb.x:                                             ; preds = %_mm_load_si128.exit116.peel
  %i.bb = ptrtoint ptr %i.aw to i64, !nosanitize !22 ; 2 uses
  %i.bc = add i64 %i.bb, 16, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @11, i64 %i.bb, i64 %i.bc) #6, !nosanitize !22
  br label %_mm_load_si128.exit115.peel, !nosanitize !22

_mm_load_si128.exit115.peel:                      ; preds = %bb.x, %_mm_load_si128.exit116.peel
  %i.bd = load <2 x i64>, ptr %i.aw, align 16, !tbaa !25 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.k, i64 64 ; 2 uses
  %.not781.i.peel = icmp ugt ptr %i.ba, inttoptr (i64 -17 to ptr)
  br i1 %.not781.i.peel, label %bb.y, label %_mm_load_si128.exit115._crit_edge.peel, !prof !24, !nosanitize !22

bb.y:                                             ; preds = %_mm_load_si128.exit115.peel
  %i.bf = ptrtoint ptr %i.ba to i64, !nosanitize !22 ; 2 uses
  %i.bg = add i64 %i.bf, 16, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @12, i64 %i.bf, i64 %i.bg) #6, !nosanitize !22
  br label %_mm_load_si128.exit115._crit_edge.peel, !nosanitize !22

_mm_load_si128.exit115._crit_edge.peel:           ; preds = %bb.y, %_mm_load_si128.exit115.peel
  %i.bh = load <2 x i64>, ptr %i.ba, align 16, !tbaa !25 ; 3 uses
  %spec.select.peel = xor <2 x i64> %i.av, %i.aj  ; 3 uses
  %3 = shufflevector <2 x i64> %spec.select.peel, <2 x i64> <i64 poison, i64 0>, <2 x i32> <i32 3, i32 0> ; 3 uses
  %i.bi = shufflevector <2 x i64> %spec.select.peel, <2 x i64> %i.az, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.bj = shufflevector <2 x i64> %i.az, <2 x i64> %i.bd, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.bk = shufflevector <2 x i64> %i.bd, <2 x i64> %i.bh, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.bl = shufflevector <2 x i64> %i.bh, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 1168
  store <2 x i64> %3, ptr %i.x, align 16, !tbaa !25
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 1184
  store <2 x i64> %i.bi, ptr %i.bm, align 16, !tbaa !25
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 1200
  store <2 x i64> %i.bj, ptr %i.bn, align 16, !tbaa !25
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 1216 ; 2 uses
  store <2 x i64> %i.bk, ptr %i.bo, align 16, !tbaa !25
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 1472
  store <2 x i64> %3, ptr %i.z, align 16, !tbaa !25
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 1488
  store <2 x i64> %i.bi, ptr %i.bq, align 16, !tbaa !25
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 1504
  store <2 x i64> %i.bj, ptr %i.br, align 16, !tbaa !25
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 1520 ; 2 uses
  store <2 x i64> %i.bk, ptr %i.bs, align 16, !tbaa !25
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 1696
  store <2 x i64> %3, ptr %i.ab, align 16, !tbaa !25
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 1712
  store <2 x i64> %i.bi, ptr %i.bu, align 16, !tbaa !25
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 1728
  store <2 x i64> %i.bj, ptr %i.bv, align 16, !tbaa !25
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 1744 ; 2 uses
  store <2 x i64> %i.bk, ptr %i.bw, align 16, !tbaa !25
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 2416
  store <2 x i64> %spec.select.peel, ptr %i.ad, align 16, !tbaa !25
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 2432
  store <2 x i64> %i.az, ptr %i.by, align 16, !tbaa !25
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 2448
  store <2 x i64> %i.bd, ptr %i.bz, align 16, !tbaa !25
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 2464 ; 2 uses
  store <2 x i64> %i.bh, ptr %i.ca, align 16, !tbaa !25
  %i.cc = icmp ugt i64 %.028, 2528
  br i1 %i.cc, label %.lr.ph, label %.preheader150

.preheader150.loopexit:                           ; preds = %_mm_store_si128.exit40
  %i.cd = add nuw nsw i64 %.0462.i164, 2528
  %i.ce = icmp ult i64 %i.cd, %.028
  br label %.preheader150

.preheader150:                                    ; preds = %.preheader150.loopexit, %_mm_load_si128.exit115._crit_edge.peel
  %.lcssa624 = phi ptr [ %i.cb, %_mm_load_si128.exit115._crit_edge.peel ], [ %i.ec, %.preheader150.loopexit ] ; 2 uses
  %.lcssa623 = phi i64 [ 64, %_mm_load_si128.exit115._crit_edge.peel ], [ %i.ed, %.preheader150.loopexit ] ; 2 uses
  %.lcssa622 = phi ptr [ %i.bx, %_mm_load_si128.exit115._crit_edge.peel ], [ %i.dw, %.preheader150.loopexit ] ; 2 uses
  %.lcssa621 = phi ptr [ %i.bt, %_mm_load_si128.exit115._crit_edge.peel ], [ %i.dq, %.preheader150.loopexit ] ; 2 uses
  %.lcssa620 = phi ptr [ %i.bp, %_mm_load_si128.exit115._crit_edge.peel ], [ %i.dk, %.preheader150.loopexit ] ; 2 uses
  %.lcssa619 = phi <2 x i64> [ %i.bl, %_mm_load_si128.exit115._crit_edge.peel ], [ %i.dd, %.preheader150.loopexit ] ; 4 uses
  %.lcssa618 = phi ptr [ %i.be, %_mm_load_si128.exit115._crit_edge.peel ], [ %i.cw, %.preheader150.loopexit ] ; 2 uses
  %.0462.i164.lcssa = phi i1 [ false, %_mm_load_si128.exit115._crit_edge.peel ], [ %i.ce, %.preheader150.loopexit ]
  br i1 %.0462.i164.lcssa, label %.lr.ph180, label %.preheader149

.lr.ph:                                           ; preds = %_mm_load_si128.exit115._crit_edge.peel, %_mm_store_si128.exit40
  %.0451.i165 = phi <2 x i64> [ %i.dd, %_mm_store_si128.exit40 ], [ %i.bl, %_mm_load_si128.exit115._crit_edge.peel ]
  %.0462.i164 = phi i64 [ %i.ed, %_mm_store_si128.exit40 ], [ 64, %_mm_load_si128.exit115._crit_edge.peel ] ; 4 uses
  %.0473.i163 = phi ptr [ %i.cw, %_mm_store_si128.exit40 ], [ %i.be, %_mm_load_si128.exit115._crit_edge.peel ] ; 7 uses
  %.0480.i162 = phi ptr [ %i.ec, %_mm_store_si128.exit40 ], [ %i.cb, %_mm_load_si128.exit115._crit_edge.peel ] ; 6 uses
  %.0484.i161 = phi ptr [ %i.dw, %_mm_store_si128.exit40 ], [ %i.bx, %_mm_load_si128.exit115._crit_edge.peel ] ; 6 uses
  %.0488.i160 = phi ptr [ %i.dq, %_mm_store_si128.exit40 ], [ %i.bt, %_mm_load_si128.exit115._crit_edge.peel ] ; 6 uses
  %.0492.i159 = phi ptr [ %i.dk, %_mm_store_si128.exit40 ], [ %i.bp, %_mm_load_si128.exit115._crit_edge.peel ] ; 6 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.0473.i163, i64 16 ; 3 uses
  %i.cg = ptrtoint ptr %.0473.i163 to i64, !nosanitize !22 ; 4 uses
  %i.ch = add i64 %i.cg, 16, !nosanitize !22      ; 2 uses
  %i.ci = icmp ne i64 %i.ch, 0
  %i.cj = icmp ult ptr %.0473.i163, inttoptr (i64 -16 to ptr)
  %i.ck = and i1 %i.cj, %i.ci
  br i1 %i.ck, label %bb.aa, label %bb.z, !prof !23, !nosanitize !22

bb.z:                                             ; preds = %.lr.ph
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @9, i64 %i.cg, i64 %i.ch) #6, !nosanitize !22
  br label %bb.aa, !nosanitize !22

bb.aa:                                            ; preds = %bb.z, %.lr.ph
  %i.cl = and i64 %i.cg, 15, !nosanitize !22
  %i.cm = icmp eq i64 %i.cl, 0, !nosanitize !22
  br i1 %i.cm, label %_mm_load_si128.exit117, label %bb.ab, !prof !23, !nosanitize !22

bb.ab:                                            ; preds = %bb.aa
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @119, i64 %i.cg) #6, !nosanitize !22
  br label %_mm_load_si128.exit117, !nosanitize !22

_mm_load_si128.exit117:                           ; preds = %bb.aa, %bb.ab
  %i.cn = load <2 x i64>, ptr %.0473.i163, align 16, !tbaa !25 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.0473.i163, i64 32 ; 3 uses
  %.not779.i = icmp ugt ptr %i.cf, inttoptr (i64 -17 to ptr)
  br i1 %.not779.i, label %bb.ac, label %_mm_load_si128.exit116, !prof !24, !nosanitize !22

bb.ac:                                            ; preds = %_mm_load_si128.exit117
  %i.cp = ptrtoint ptr %i.cf to i64, !nosanitize !22 ; 2 uses
  %i.cq = add i64 %i.cp, 16, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @10, i64 %i.cp, i64 %i.cq) #6, !nosanitize !22
  br label %_mm_load_si128.exit116, !nosanitize !22

_mm_load_si128.exit116:                           ; preds = %bb.ac, %_mm_load_si128.exit117
  %i.cr = load <2 x i64>, ptr %i.cf, align 16, !tbaa !25 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.0473.i163, i64 48 ; 3 uses
  %.not780.i = icmp ugt ptr %i.co, inttoptr (i64 -17 to ptr)
  br i1 %.not780.i, label %bb.ad, label %_mm_load_si128.exit115, !prof !24, !nosanitize !22

bb.ad:                                            ; preds = %_mm_load_si128.exit116
  %i.ct = ptrtoint ptr %i.co to i64, !nosanitize !22 ; 2 uses
  %i.cu = add i64 %i.ct, 16, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @11, i64 %i.ct, i64 %i.cu) #6, !nosanitize !22
  br label %_mm_load_si128.exit115, !nosanitize !22

_mm_load_si128.exit115:                           ; preds = %bb.ad, %_mm_load_si128.exit116
  %i.cv = load <2 x i64>, ptr %i.co, align 16, !tbaa !25 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.0473.i163, i64 64 ; 2 uses
  %.not781.i = icmp ugt ptr %i.cs, inttoptr (i64 -17 to ptr)
  br i1 %.not781.i, label %bb.ae, label %_mm_load_si128.exit115._crit_edge, !prof !24, !nosanitize !22

bb.ae:                                            ; preds = %_mm_load_si128.exit115
  %i.cx = ptrtoint ptr %i.cs to i64, !nosanitize !22 ; 2 uses
  %i.cy = add i64 %i.cx, 16, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @12, i64 %i.cx, i64 %i.cy) #6, !nosanitize !22
  br label %_mm_load_si128.exit115._crit_edge, !nosanitize !22

_mm_load_si128.exit115._crit_edge:                ; preds = %bb.ae, %_mm_load_si128.exit115
  %i.cz = load <2 x i64>, ptr %i.cs, align 16, !tbaa !25 ; 3 uses
  %4 = shufflevector <2 x i64> %i.cn, <2 x i64> <i64 poison, i64 0>, <2 x i32> <i32 3, i32 0>
  %i.da = shufflevector <2 x i64> %i.cn, <2 x i64> %i.cr, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.db = shufflevector <2 x i64> %i.cr, <2 x i64> %i.cv, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.dc = shufflevector <2 x i64> %i.cv, <2 x i64> %i.cz, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.dd = shufflevector <2 x i64> %i.cz, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.de = xor <2 x i64> %.0451.i165, %4           ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.0492.i159, i64 16
  %.pre332 = ptrtoint ptr %.0492.i159 to i64, !nosanitize !22 ; 2 uses
  %i.dg = and i64 %.pre332, 15, !nosanitize !22
  %i.dh = icmp eq i64 %i.dg, 0, !nosanitize !22
  br i1 %i.dh, label %bb.ag, label %bb.af, !prof !23, !nosanitize !22

bb.af:                                            ; preds = %_mm_load_si128.exit115._crit_edge
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @117, i64 %.pre332) #6, !nosanitize !22
  br label %bb.ag, !nosanitize !22

bb.ag:                                            ; preds = %_mm_load_si128.exit115._crit_edge, %bb.af
  store <2 x i64> %i.de, ptr %.0492.i159, align 16, !tbaa !25
  %i.di = getelementptr inbounds nuw i8, ptr %.0492.i159, i64 32
  store <2 x i64> %i.da, ptr %i.df, align 16, !tbaa !25
  %i.dj = getelementptr inbounds nuw i8, ptr %.0492.i159, i64 48
  store <2 x i64> %i.db, ptr %i.di, align 16, !tbaa !25
  %i.dk = getelementptr inbounds nuw i8, ptr %.0492.i159, i64 64 ; 2 uses
  store <2 x i64> %i.dc, ptr %i.dj, align 16, !tbaa !25
  %i.dl = getelementptr inbounds nuw i8, ptr %.0488.i160, i64 16
  %.pre340 = ptrtoint ptr %.0488.i160 to i64, !nosanitize !22 ; 2 uses
  %i.dm = and i64 %.pre340, 15, !nosanitize !22
  %i.dn = icmp eq i64 %i.dm, 0, !nosanitize !22
  br i1 %i.dn, label %bb.ai, label %bb.ah, !prof !23, !nosanitize !22

bb.ah:                                            ; preds = %bb.ag
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @117, i64 %.pre340) #6, !nosanitize !22
  br label %bb.ai, !nosanitize !22

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  store <2 x i64> %i.de, ptr %.0488.i160, align 16, !tbaa !25
  %i.do = getelementptr inbounds nuw i8, ptr %.0488.i160, i64 32
  store <2 x i64> %i.da, ptr %i.dl, align 16, !tbaa !25
  %i.dp = getelementptr inbounds nuw i8, ptr %.0488.i160, i64 48
  store <2 x i64> %i.db, ptr %i.do, align 16, !tbaa !25
  %i.dq = getelementptr inbounds nuw i8, ptr %.0488.i160, i64 64 ; 2 uses
  store <2 x i64> %i.dc, ptr %i.dp, align 16, !tbaa !25
  %i.dr = getelementptr inbounds nuw i8, ptr %.0484.i161, i64 16
  %.pre348 = ptrtoint ptr %.0484.i161 to i64, !nosanitize !22 ; 2 uses
  %i.ds = and i64 %.pre348, 15, !nosanitize !22
  %i.dt = icmp eq i64 %i.ds, 0, !nosanitize !22
  br i1 %i.dt, label %bb.ak, label %bb.aj, !prof !23, !nosanitize !22

bb.aj:                                            ; preds = %bb.ai
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @117, i64 %.pre348) #6, !nosanitize !22
  br label %bb.ak, !nosanitize !22

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  store <2 x i64> %i.de, ptr %.0484.i161, align 16, !tbaa !25
  %i.du = getelementptr inbounds nuw i8, ptr %.0484.i161, i64 32
  store <2 x i64> %i.da, ptr %i.dr, align 16, !tbaa !25
  %i.dv = getelementptr inbounds nuw i8, ptr %.0484.i161, i64 48
  store <2 x i64> %i.db, ptr %i.du, align 16, !tbaa !25
  %i.dw = getelementptr inbounds nuw i8, ptr %.0484.i161, i64 64 ; 2 uses
  store <2 x i64> %i.dc, ptr %i.dv, align 16, !tbaa !25
  %i.dx = getelementptr inbounds nuw i8, ptr %.0480.i162, i64 16
  %.pre356 = ptrtoint ptr %.0480.i162 to i64, !nosanitize !22 ; 2 uses
  %i.dy = and i64 %.pre356, 15, !nosanitize !22
  %i.dz = icmp eq i64 %i.dy, 0, !nosanitize !22
  br i1 %i.dz, label %_mm_store_si128.exit40, label %bb.al, !prof !23, !nosanitize !22

bb.al:                                            ; preds = %bb.ak
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @117, i64 %.pre356) #6, !nosanitize !22
  br label %_mm_store_si128.exit40, !nosanitize !22

_mm_store_si128.exit40:                           ; preds = %bb.ak, %bb.al
  store <2 x i64> %i.cn, ptr %.0480.i162, align 16, !tbaa !25
  %i.ea = getelementptr inbounds nuw i8, ptr %.0480.i162, i64 32
  store <2 x i64> %i.cr, ptr %i.dx, align 16, !tbaa !25
  %i.eb = getelementptr inbounds nuw i8, ptr %.0480.i162, i64 48
  store <2 x i64> %i.cv, ptr %i.ea, align 16, !tbaa !25
  %i.ec = getelementptr inbounds nuw i8, ptr %.0480.i162, i64 64 ; 2 uses
  store <2 x i64> %i.cz, ptr %i.eb, align 16, !tbaa !25
  %i.ed = add nuw nsw i64 %.0462.i164, 64         ; 2 uses
  %i.ee = add nuw nsw i64 %.0462.i164, 2528
  %i.ef = icmp ult i64 %i.ee, %.028
  %i.eg = icmp samesign ult i64 %.0462.i164, 112
  %i.eh = select i1 %i.ef, i1 %i.eg, i1 false
  br i1 %i.eh, label %.lr.ph, label %.preheader150.loopexit, !llvm.loop !12

.preheader149.loopexit:                           ; preds = %_mm_store_si128.exit56
  %.pre = add nuw nsw i64 %.1463.i177, 2528
  %i.ei = icmp ult i64 %.pre, %.028
  br label %.preheader149

.preheader149:                                    ; preds = %.preheader149.loopexit, %.preheader150
  %.pre-phi = phi i1 [ %i.ei, %.preheader149.loopexit ], [ false, %.preheader150 ]
  %.1493.i.lcssa = phi ptr [ %i.fo, %.preheader149.loopexit ], [ %.lcssa620, %.preheader150 ] ; 2 uses
  %.1489.i.lcssa = phi ptr [ %i.gc, %.preheader149.loopexit ], [ %.lcssa621, %.preheader150 ] ; 2 uses
  %.1485.i.lcssa = phi ptr [ %i.gk, %.preheader149.loopexit ], [ %.lcssa622, %.preheader150 ] ; 2 uses
  %.1481.i.lcssa = phi ptr [ %i.gq, %.preheader149.loopexit ], [ %.lcssa624, %.preheader150 ] ; 2 uses
  %.1474.i.lcssa = phi ptr [ %i.fa, %.preheader149.loopexit ], [ %.lcssa618, %.preheader150 ] ; 2 uses
  %.1463.i.lcssa = phi i64 [ %i.gr, %.preheader149.loopexit ], [ %.lcssa623, %.preheader150 ] ; 2 uses
  %.1455.i.lcssa = phi <2 x i64> [ %i.ge, %.preheader149.loopexit ], [ %.lcssa619, %.preheader150 ] ; 2 uses
  %.1452.i.lcssa = phi <2 x i64> [ %i.fh, %.preheader149.loopexit ], [ %.lcssa619, %.preheader150 ] ; 4 uses
  br i1 %.pre-phi, label %.lr.ph198, label %.preheader148

.lr.ph180:                                        ; preds = %.preheader150, %_mm_store_si128.exit56
  %.1452.i179 = phi <2 x i64> [ %i.fh, %_mm_store_si128.exit56 ], [ %.lcssa619, %.preheader150 ]
  %.1455.i178 = phi <2 x i64> [ %i.ge, %_mm_store_si128.exit56 ], [ %.lcssa619, %.preheader150 ]
  %.1463.i177 = phi i64 [ %i.gr, %_mm_store_si128.exit56 ], [ %.lcssa623, %.preheader150 ] ; 4 uses
  %.1474.i176 = phi ptr [ %i.fa, %_mm_store_si128.exit56 ], [ %.lcssa618, %.preheader150 ] ; 7 uses
  %.1481.i175 = phi ptr [ %i.gq, %_mm_store_si128.exit56 ], [ %.lcssa624, %.preheader150 ] ; 6 uses
  %.1485.i174 = phi ptr [ %i.gk, %_mm_store_si128.exit56 ], [ %.lcssa622, %.preheader150 ] ; 6 uses
  %.1489.i173 = phi ptr [ %i.gc, %_mm_store_si128.exit56 ], [ %.lcssa621, %.preheader150 ] ; 5 uses
  %.1493.i172 = phi ptr [ %i.fo, %_mm_store_si128.exit56 ], [ %.lcssa620, %.preheader150 ] ; 6 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.1474.i176, i64 16 ; 3 uses
  %i.ek = ptrtoint ptr %.1474.i176 to i64, !nosanitize !22 ; 4 uses
  %i.el = add i64 %i.ek, 16, !nosanitize !22      ; 2 uses
  %i.em = icmp ne i64 %i.el, 0
  %i.en = icmp ult ptr %.1474.i176, inttoptr (i64 -16 to ptr)
  %i.eo = and i1 %i.en, %i.em
  br i1 %i.eo, label %bb.an, label %bb.am, !prof !23, !nosanitize !22

bb.am:                                            ; preds = %.lr.ph180
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @13, i64 %i.ek, i64 %i.el) #6, !nosanitize !22
  br label %bb.an, !nosanitize !22

bb.an:                                            ; preds = %bb.am, %.lr.ph180
  %i.ep = and i64 %i.ek, 15, !nosanitize !22
  %i.eq = icmp eq i64 %i.ep, 0, !nosanitize !22
  br i1 %i.eq, label %_mm_load_si128.exit121, label %bb.ao, !prof !23, !nosanitize !22

bb.ao:                                            ; preds = %bb.an
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @119, i64 %i.ek) #6, !nosanitize !22
  br label %_mm_load_si128.exit121, !nosanitize !22

_mm_load_si128.exit121:                           ; preds = %bb.an, %bb.ao
  %i.er = load <2 x i64>, ptr %.1474.i176, align 16, !tbaa !25 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.1474.i176, i64 32 ; 3 uses
  %.not757.i = icmp ugt ptr %i.ej, inttoptr (i64 -17 to ptr)
  br i1 %.not757.i, label %bb.ap, label %_mm_load_si128.exit120, !prof !24, !nosanitize !22

bb.ap:                                            ; preds = %_mm_load_si128.exit121
  %i.et = ptrtoint ptr %i.ej to i64, !nosanitize !22 ; 2 uses
  %i.eu = add i64 %i.et, 16, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @14, i64 %i.et, i64 %i.eu) #6, !nosanitize !22
  br label %_mm_load_si128.exit120, !nosanitize !22

_mm_load_si128.exit120:                           ; preds = %bb.ap, %_mm_load_si128.exit121
  %i.ev = load <2 x i64>, ptr %i.ej, align 16, !tbaa !25 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.1474.i176, i64 48 ; 3 uses
  %.not758.i = icmp ugt ptr %i.es, inttoptr (i64 -17 to ptr)
  br i1 %.not758.i, label %bb.aq, label %_mm_load_si128.exit119, !prof !24, !nosanitize !22

bb.aq:                                            ; preds = %_mm_load_si128.exit120
  %i.ex = ptrtoint ptr %i.es to i64, !nosanitize !22 ; 2 uses
  %i.ey = add i64 %i.ex, 16, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @15, i64 %i.ex, i64 %i.ey) #6, !nosanitize !22
  br label %_mm_load_si128.exit119, !nosanitize !22

_mm_load_si128.exit119:                           ; preds = %bb.aq, %_mm_load_si128.exit120
  %i.ez = load <2 x i64>, ptr %i.es, align 16, !tbaa !25 ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.1474.i176, i64 64 ; 2 uses
  %.not759.i = icmp ugt ptr %i.ew, inttoptr (i64 -17 to ptr)
  br i1 %.not759.i, label %bb.ar, label %_mm_load_si128.exit119._crit_edge, !prof !24, !nosanitize !22

bb.ar:                                            ; preds = %_mm_load_si128.exit119
  %i.fb = ptrtoint ptr %i.ew to i64, !nosanitize !22 ; 2 uses
  %i.fc = add i64 %i.fb, 16, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @16, i64 %i.fb, i64 %i.fc) #6, !nosanitize !22
  br label %_mm_load_si128.exit119._crit_edge, !nosanitize !22

_mm_load_si128.exit119._crit_edge:                ; preds = %bb.ar, %_mm_load_si128.exit119
  %i.fd = load <2 x i64>, ptr %i.ew, align 16, !tbaa !25 ; 3 uses
  %5 = shufflevector <2 x i64> %i.er, <2 x i64> <i64 poison, i64 0>, <2 x i32> <i32 3, i32 0> ; 2 uses
  %i.fe = shufflevector <2 x i64> %i.er, <2 x i64> %i.ev, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.ff = shufflevector <2 x i64> %i.ev, <2 x i64> %i.ez, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.fg = shufflevector <2 x i64> %i.ez, <2 x i64> %i.fd, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.fh = shufflevector <2 x i64> %i.fd, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.fi = xor <2 x i64> %.1452.i179, %5           ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.1493.i172, i64 16
  %.pre370 = ptrtoint ptr %.1493.i172 to i64, !nosanitize !22 ; 2 uses
  %i.fk = and i64 %.pre370, 15, !nosanitize !22
  %i.fl = icmp eq i64 %i.fk, 0, !nosanitize !22
  br i1 %i.fl, label %bb.at, label %bb.as, !prof !23, !nosanitize !22

bb.as:                                            ; preds = %_mm_load_si128.exit119._crit_edge
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @117, i64 %.pre370) #6, !nosanitize !22
  br label %bb.at, !nosanitize !22

bb.at:                                            ; preds = %_mm_load_si128.exit119._crit_edge, %bb.as
  store <2 x i64> %i.fi, ptr %.1493.i172, align 16, !tbaa !25
  %i.fm = getelementptr inbounds nuw i8, ptr %.1493.i172, i64 32
  store <2 x i64> %i.fe, ptr %i.fj, align 16, !tbaa !25
  %i.fn = getelementptr inbounds nuw i8, ptr %.1493.i172, i64 48
  store <2 x i64> %i.ff, ptr %i.fm, align 16, !tbaa !25
  %i.fo = getelementptr inbounds nuw i8, ptr %.1493.i172, i64 64 ; 2 uses
  store <2 x i64> %i.fg, ptr %i.fn, align 16, !tbaa !25
  %i.fp = xor <2 x i64> %.1455.i178, %5
  %i.fq = getelementptr inbounds nuw i8, ptr %.1489.i173, i64 16 ; 3 uses
  %i.fr = ptrtoint ptr %i.fq to i64, !nosanitize !22 ; 3 uses
  %i.fs = and i64 %i.fr, 15, !nosanitize !22
  %i.ft = icmp eq i64 %i.fs, 0, !nosanitize !22   ; 2 uses
  br i1 %i.ft, label %bb.av, label %bb.au, !prof !23, !nosanitize !22

bb.au:                                            ; preds = %bb.at
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @18, i64 %i.fr) #6, !nosanitize !22
  br label %bb.av, !nosanitize !22

bb.av:                                            ; preds = %bb.at, %bb.au
  %i.fu = load <2 x i64>, ptr %i.fq, align 16, !tbaa !25
  %i.fv = xor <2 x i64> %i.fu, %i.fe
  %i.fw = getelementptr inbounds nuw i8, ptr %.1489.i173, i64 32 ; 2 uses
  %i.fx = load <2 x i64>, ptr %i.fw, align 16, !tbaa !25
  %i.fy = xor <2 x i64> %i.fx, %i.ff
  %i.fz = getelementptr inbounds nuw i8, ptr %.1489.i173, i64 48 ; 2 uses
  %i.ga = load <2 x i64>, ptr %i.fz, align 16, !tbaa !25
  %i.gb = xor <2 x i64> %i.ga, %i.fg
  %i.gc = getelementptr inbounds nuw i8, ptr %.1489.i173, i64 64 ; 3 uses
  %i.gd = load <2 x i64>, ptr %i.gc, align 16, !tbaa !25
  %i.ge = xor <2 x i64> %i.gd, %i.fh              ; 2 uses
  store <2 x i64> %i.fp, ptr %.1489.i173, align 16, !tbaa !25
  br i1 %i.ft, label %bb.ax, label %bb.aw, !prof !23, !nosanitize !22

bb.aw:                                            ; preds = %bb.av
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @117, i64 %i.fr) #6, !nosanitize !22
  br label %bb.ax, !nosanitize !22

bb.ax:                                            ; preds = %bb.aw, %bb.av
  store <2 x i64> %i.fv, ptr %i.fq, align 16, !tbaa !25
  store <2 x i64> %i.fy, ptr %i.fw, align 16, !tbaa !25
  store <2 x i64> %i.gb, ptr %i.fz, align 16, !tbaa !25
  %i.gf = getelementptr inbounds nuw i8, ptr %.1485.i174, i64 16
  %.pre378 = ptrtoint ptr %.1485.i174 to i64, !nosanitize !22 ; 2 uses
  %i.gg = and i64 %.pre378, 15, !nosanitize !22
  %i.gh = icmp eq i64 %i.gg, 0, !nosanitize !22
  br i1 %i.gh, label %bb.az, label %bb.ay, !prof !23, !nosanitize !22

bb.ay:                                            ; preds = %bb.ax
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @117, i64 %.pre378) #6, !nosanitize !22
  br label %bb.az, !nosanitize !22

bb.az:                                            ; preds = %bb.ax, %bb.ay
  store <2 x i64> %i.fi, ptr %.1485.i174, align 16, !tbaa !25
  %i.gi = getelementptr inbounds nuw i8, ptr %.1485.i174, i64 32
  store <2 x i64> %i.fe, ptr %i.gf, align 16, !tbaa !25
  %i.gj = getelementptr inbounds nuw i8, ptr %.1485.i174, i64 48
  store <2 x i64> %i.ff, ptr %i.gi, align 16, !tbaa !25
  %i.gk = getelementptr inbounds nuw i8, ptr %.1485.i174, i64 64 ; 2 uses
  store <2 x i64> %i.fg, ptr %i.gj, align 16, !tbaa !25
  %i.gl = getelementptr inbounds nuw i8, ptr %.1481.i175, i64 16
  %.pre386 = ptrtoint ptr %.1481.i175 to i64, !nosanitize !22 ; 2 uses
  %i.gm = and i64 %.pre386, 15, !nosanitize !22
  %i.gn = icmp eq i64 %i.gm, 0, !nosanitize !22
  br i1 %i.gn, label %_mm_store_si128.exit56, label %bb.ba, !prof !23, !nosanitize !22

bb.ba:                                            ; preds = %bb.az
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @117, i64 %.pre386) #6, !nosanitize !22
  br label %_mm_store_si128.exit56, !nosanitize !22

_mm_store_si128.exit56:                           ; preds = %bb.az, %bb.ba
  store <2 x i64> %i.er, ptr %.1481.i175, align 16, !tbaa !25
  %i.go = getelementptr inbounds nuw i8, ptr %.1481.i175, i64 32
  store <2 x i64> %i.ev, ptr %i.gl, align 16, !tbaa !25
  %i.gp = getelementptr inbounds nuw i8, ptr %.1481.i175, i64 48
  store <2 x i64> %i.ez, ptr %i.go, align 16, !tbaa !25
  %i.gq = getelementptr inbounds nuw i8, ptr %.1481.i175, i64 64 ; 2 uses
  store <2 x i64> %i.fd, ptr %i.gp, align 16, !tbaa !25
  %i.gr = add nuw nsw i64 %.1463.i177, 64         ; 2 uses
  %i.gs = add nuw nsw i64 %.1463.i177, 2528
  %i.gt = icmp ult i64 %i.gs, %.028
  %i.gu = icmp samesign ult i64 %.1463.i177, 192
  %i.gv = and i1 %i.gt, %i.gu
  br i1 %i.gv, label %.lr.ph180, label %.preheader149.loopexit, !llvm.loop !13

.preheader148:                                    ; preds = %_mm_store_si128.exit72, %.preheader149
  %.2494.i.lcssa = phi ptr [ %.1493.i.lcssa, %.preheader149 ], [ %i.ik, %_mm_store_si128.exit72 ]
  %.2490.i.lcssa = phi ptr [ %.1489.i.lcssa, %.preheader149 ], [ %i.jb, %_mm_store_si128.exit72 ]
  %.2486.i.lcssa = phi ptr [ %.1485.i.lcssa, %.preheader149 ], [ %i.jl, %_mm_store_si128.exit72 ]
  %.2482.i.lcssa = phi ptr [ %.1481.i.lcssa, %.preheader149 ], [ %i.js, %_mm_store_si128.exit72 ]
  %.2475.i.lcssa = phi ptr [ %.1474.i.lcssa, %.preheader149 ], [ %i.ho, %_mm_store_si128.exit72 ]
  %.2464.i.lcssa = phi i64 [ %.1463.i.lcssa, %.preheader149 ], [ %i.jt, %_mm_store_si128.exit72 ] ; 2 uses
  %.2460.i.lcssa = phi <2 x i64> [ %.1452.i.lcssa, %.preheader149 ], [ %i.im, %_mm_store_si128.exit72 ]
  %.2456.i.lcssa = phi <2 x i64> [ %.1455.i.lcssa, %.preheader149 ], [ %i.jd, %_mm_store_si128.exit72 ]
  %.2453.i.lcssa = phi <2 x i64> [ %.1452.i.lcssa, %.preheader149 ], [ %i.hv, %_mm_store_si128.exit72 ]
  %i.gw = sub i64 %.028, %.2464.i.lcssa
  br label %bb.cn

.lr.ph198:                                        ; preds = %.preheader149, %_mm_store_si128.exit72
  %.2453.i197 = phi <2 x i64> [ %i.hv, %_mm_store_si128.exit72 ], [ %.1452.i.lcssa, %.preheader149 ]
  %.2456.i196 = phi <2 x i64> [ %i.jd, %_mm_store_si128.exit72 ], [ %.1455.i.lcssa, %.preheader149 ]
  %.2460.i195 = phi <2 x i64> [ %i.im, %_mm_store_si128.exit72 ], [ %.1452.i.lcssa, %.preheader149 ]
  %.2464.i194 = phi i64 [ %i.jt, %_mm_store_si128.exit72 ], [ %.1463.i.lcssa, %.preheader149 ] ; 3 uses
  %.2475.i193 = phi ptr [ %i.ho, %_mm_store_si128.exit72 ], [ %.1474.i.lcssa, %.preheader149 ] ; 7 uses
  %.2482.i192 = phi ptr [ %i.js, %_mm_store_si128.exit72 ], [ %.1481.i.lcssa, %.preheader149 ] ; 7 uses
  %.2486.i191 = phi ptr [ %i.jl, %_mm_store_si128.exit72 ], [ %.1485.i.lcssa, %.preheader149 ] ; 7 uses
  %.2490.i190 = phi ptr [ %i.jb, %_mm_store_si128.exit72 ], [ %.1489.i.lcssa, %.preheader149 ] ; 10 uses
  %.2494.i189 = phi ptr [ %i.ik, %_mm_store_si128.exit72 ], [ %.1493.i.lcssa, %.preheader149 ] ; 10 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.2475.i193, i64 16 ; 3 uses
  %i.gy = ptrtoint ptr %.2475.i193 to i64, !nosanitize !22 ; 4 uses
  %i.gz = add i64 %i.gy, 16, !nosanitize !22      ; 2 uses
  %i.ha = icmp ne i64 %i.gz, 0
  %i.hb = icmp ult ptr %.2475.i193, inttoptr (i64 -16 to ptr)
  %i.hc = and i1 %i.hb, %i.ha
  br i1 %i.hc, label %bb.bc, label %bb.bb, !prof !23, !nosanitize !22

bb.bb:                                            ; preds = %.lr.ph198
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @19, i64 %i.gy, i64 %i.gz) #6, !nosanitize !22
  br label %bb.bc, !nosanitize !22

bb.bc:                                            ; preds = %bb.bb, %.lr.ph198
  %i.hd = and i64 %i.gy, 15, !nosanitize !22
  %i.he = icmp eq i64 %i.hd, 0, !nosanitize !22
  br i1 %i.he, label %_mm_load_si128.exit125, label %bb.bd, !prof !23, !nosanitize !22

bb.bd:                                            ; preds = %bb.bc
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @119, i64 %i.gy) #6, !nosanitize !22
  br label %_mm_load_si128.exit125, !nosanitize !22

_mm_load_si128.exit125:                           ; preds = %bb.bc, %bb.bd
  %i.hf = load <2 x i64>, ptr %.2475.i193, align 16, !tbaa !25 ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.2475.i193, i64 32 ; 3 uses
  %.not742.i = icmp ugt ptr %i.gx, inttoptr (i64 -17 to ptr)
  br i1 %.not742.i, label %bb.be, label %_mm_load_si128.exit124, !prof !24, !nosanitize !22

bb.be:                                            ; preds = %_mm_load_si128.exit125
  %i.hh = ptrtoint ptr %i.gx to i64, !nosanitize !22 ; 2 uses
  %i.hi = add i64 %i.hh, 16, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @20, i64 %i.hh, i64 %i.hi) #6, !nosanitize !22
  br label %_mm_load_si128.exit124, !nosanitize !22

_mm_load_si128.exit124:                           ; preds = %bb.be, %_mm_load_si128.exit125
  %i.hj = load <2 x i64>, ptr %i.gx, align 16, !tbaa !25 ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.2475.i193, i64 48 ; 3 uses
  %.not743.i = icmp ugt ptr %i.hg, inttoptr (i64 -17 to ptr)
  br i1 %.not743.i, label %bb.bf, label %_mm_load_si128.exit123, !prof !24, !nosanitize !22

bb.bf:                                            ; preds = %_mm_load_si128.exit124
  %i.hl = ptrtoint ptr %i.hg to i64, !nosanitize !22 ; 2 uses
  %i.hm = add i64 %i.hl, 16, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @21, i64 %i.hl, i64 %i.hm) #6, !nosanitize !22
  br label %_mm_load_si128.exit123, !nosanitize !22

_mm_load_si128.exit123:                           ; preds = %bb.bf, %_mm_load_si128.exit124
  %i.hn = load <2 x i64>, ptr %i.hg, align 16, !tbaa !25 ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.2475.i193, i64 64 ; 2 uses
  %.not744.i = icmp ugt ptr %i.hk, inttoptr (i64 -17 to ptr)
  br i1 %.not744.i, label %bb.bg, label %_mm_load_si128.exit122, !prof !24, !nosanitize !22

bb.bg:                                            ; preds = %_mm_load_si128.exit123
  %i.hp = ptrtoint ptr %i.hk to i64, !nosanitize !22 ; 2 uses
  %i.hq = add i64 %i.hp, 16, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @22, i64 %i.hp, i64 %i.hq) #6, !nosanitize !22
  br label %_mm_load_si128.exit122, !nosanitize !22

_mm_load_si128.exit122:                           ; preds = %bb.bg, %_mm_load_si128.exit123
  %i.hr = load <2 x i64>, ptr %i.hk, align 16, !tbaa !25 ; 3 uses
  %6 = shufflevector <2 x i64> %i.hf, <2 x i64> <i64 poison, i64 0>, <2 x i32> <i32 3, i32 0> ; 3 uses
  %i.hs = shufflevector <2 x i64> %i.hf, <2 x i64> %i.hj, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.ht = shufflevector <2 x i64> %i.hj, <2 x i64> %i.hn, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.hu = shufflevector <2 x i64> %i.hn, <2 x i64> %i.hr, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.hv = shufflevector <2 x i64> %i.hr, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.hw = xor <2 x i64> %.2460.i195, %6
  %i.hx = getelementptr inbounds nuw i8, ptr %.2494.i189, i64 16 ; 3 uses
  %i.hy = ptrtoint ptr %.2494.i189 to i64, !nosanitize !22 ; 5 uses
  %.not523 = icmp eq ptr %.2494.i189, inttoptr (i64 -16 to ptr) ; 2 uses
  br i1 %.not523, label %bb.bh, label %bb.bi, !prof !24, !nosanitize !22

bb.bh:                                            ; preds = %_mm_load_si128.exit122
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @23, i64 %i.hy, i64 0) #6, !nosanitize !22
  br label %bb.bi, !nosanitize !22

bb.bi:                                            ; preds = %bb.bh, %_mm_load_si128.exit122
  %i.hz = ptrtoint ptr %i.hx to i64, !nosanitize !22 ; 3 uses
  %i.ia = and i64 %i.hz, 15, !nosanitize !22
  %i.ib = icmp eq i64 %i.ia, 0, !nosanitize !22   ; 2 uses
  br i1 %i.ib, label %bb.bk, label %bb.bj, !prof !23, !nosanitize !22

bb.bj:                                            ; preds = %bb.bi
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @24, i64 %i.hz) #6, !nosanitize !22
  br label %bb.bk, !nosanitize !22

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.ic = load <2 x i64>, ptr %i.hx, align 16, !tbaa !25
  %i.id = xor <2 x i64> %i.ic, %i.hs
  %i.ie = getelementptr inbounds nuw i8, ptr %.2494.i189, i64 32 ; 2 uses
  %.not524 = icmp eq ptr %.2494.i189, inttoptr (i64 -32 to ptr)
  br i1 %.not524, label %bb.bl, label %bb.bm, !prof !24, !nosanitize !22

bb.bl:                                            ; preds = %bb.bk
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @25, i64 %i.hy, i64 0) #6, !nosanitize !22
  br label %bb.bm, !nosanitize !22

bb.bm:                                            ; preds = %bb.bk, %bb.bl
  %i.if = load <2 x i64>, ptr %i.ie, align 16, !tbaa !25
  %i.ig = xor <2 x i64> %i.if, %i.ht
  %i.ih = getelementptr inbounds nuw i8, ptr %.2494.i189, i64 48 ; 2 uses
  %.not525 = icmp eq ptr %.2494.i189, inttoptr (i64 -48 to ptr)
  br i1 %.not525, label %bb.bn, label %bb.bo, !prof !24, !nosanitize !22

bb.bn:                                            ; preds = %bb.bm
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @26, i64 %i.hy, i64 0) #6, !nosanitize !22
  br label %bb.bo, !nosanitize !22

bb.bo:                                            ; preds = %bb.bm, %bb.bn
  %i.ii = load <2 x i64>, ptr %i.ih, align 16, !tbaa !25
  %i.ij = xor <2 x i64> %i.ii, %i.hu
  %i.ik = getelementptr inbounds nuw i8, ptr %.2494.i189, i64 64 ; 3 uses
  %.not526 = icmp eq ptr %.2494.i189, inttoptr (i64 -64 to ptr)
  br i1 %.not526, label %bb.bp, label %bb.bq, !prof !24, !nosanitize !22

bb.bp:                                            ; preds = %bb.bo
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @27, i64 %i.hy, i64 0) #6, !nosanitize !22
  br label %bb.bq, !nosanitize !22

bb.bq:                                            ; preds = %bb.bo, %bb.bp
  %i.il = load <2 x i64>, ptr %i.ik, align 16, !tbaa !25
  %i.im = xor <2 x i64> %i.il, %i.hv              ; 2 uses
  br i1 %.not523, label %bb.br, label %bb.bs, !prof !24, !nosanitize !22

bb.br:                                            ; preds = %bb.bq
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @28, i64 %i.hy, i64 0) #6, !nosanitize !22
  br label %bb.bs, !nosanitize !22

bb.bs:                                            ; preds = %bb.bq, %bb.br
  store <2 x i64> %i.hw, ptr %.2494.i189, align 16, !tbaa !25
  br i1 %i.ib, label %_mm_store_si128.exit84, label %bb.bt, !prof !23, !nosanitize !22

bb.bt:                                            ; preds = %bb.bs
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @117, i64 %i.hz) #6, !nosanitize !22
  br label %_mm_store_si128.exit84, !nosanitize !22

_mm_store_si128.exit84:                           ; preds = %bb.bt, %bb.bs
  store <2 x i64> %i.id, ptr %i.hx, align 16, !tbaa !25
  store <2 x i64> %i.ig, ptr %i.ie, align 16, !tbaa !25
  store <2 x i64> %i.ij, ptr %i.ih, align 16, !tbaa !25
  %i.in = xor <2 x i64> %.2456.i196, %6
  %i.io = getelementptr inbounds nuw i8, ptr %.2490.i190, i64 16 ; 3 uses
  %i.ip = ptrtoint ptr %.2490.i190 to i64, !nosanitize !22 ; 5 uses
  %.not527 = icmp eq ptr %.2490.i190, inttoptr (i64 -16 to ptr) ; 2 uses
  br i1 %.not527, label %bb.bu, label %bb.bv, !prof !24, !nosanitize !22

bb.bu:                                            ; preds = %_mm_store_si128.exit84
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @29, i64 %i.ip, i64 0) #6, !nosanitize !22
  br label %bb.bv, !nosanitize !22

bb.bv:                                            ; preds = %bb.bu, %_mm_store_si128.exit84
  %i.iq = ptrtoint ptr %i.io to i64, !nosanitize !22 ; 3 uses
  %i.ir = and i64 %i.iq, 15, !nosanitize !22
  %i.is = icmp eq i64 %i.ir, 0, !nosanitize !22   ; 2 uses
  br i1 %i.is, label %bb.bx, label %bb.bw, !prof !23, !nosanitize !22

bb.bw:                                            ; preds = %bb.bv
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @30, i64 %i.iq) #6, !nosanitize !22
  br label %bb.bx, !nosanitize !22

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.it = load <2 x i64>, ptr %i.io, align 16, !tbaa !25
  %i.iu = xor <2 x i64> %i.it, %i.hs
  %i.iv = getelementptr inbounds nuw i8, ptr %.2490.i190, i64 32 ; 2 uses
  %.not528 = icmp eq ptr %.2490.i190, inttoptr (i64 -32 to ptr)
  br i1 %.not528, label %bb.by, label %bb.bz, !prof !24, !nosanitize !22

bb.by:                                            ; preds = %bb.bx
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @31, i64 %i.ip, i64 0) #6, !nosanitize !22
  br label %bb.bz, !nosanitize !22

bb.bz:                                            ; preds = %bb.bx, %bb.by
  %i.iw = load <2 x i64>, ptr %i.iv, align 16, !tbaa !25
  %i.ix = xor <2 x i64> %i.iw, %i.ht
  %i.iy = getelementptr inbounds nuw i8, ptr %.2490.i190, i64 48 ; 2 uses
  %.not529 = icmp eq ptr %.2490.i190, inttoptr (i64 -48 to ptr)
  br i1 %.not529, label %bb.ca, label %bb.cb, !prof !24, !nosanitize !22

bb.ca:                                            ; preds = %bb.bz
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @32, i64 %i.ip, i64 0) #6, !nosanitize !22
  br label %bb.cb, !nosanitize !22

bb.cb:                                            ; preds = %bb.bz, %bb.ca
  %i.iz = load <2 x i64>, ptr %i.iy, align 16, !tbaa !25
  %i.ja = xor <2 x i64> %i.iz, %i.hu
  %i.jb = getelementptr inbounds nuw i8, ptr %.2490.i190, i64 64 ; 3 uses
  %.not530 = icmp eq ptr %.2490.i190, inttoptr (i64 -64 to ptr)
  br i1 %.not530, label %bb.cc, label %bb.cd, !prof !24, !nosanitize !22

bb.cc:                                            ; preds = %bb.cb
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @33, i64 %i.ip, i64 0) #6, !nosanitize !22
  br label %bb.cd, !nosanitize !22

bb.cd:                                            ; preds = %bb.cb, %bb.cc
  %i.jc = load <2 x i64>, ptr %i.jb, align 16, !tbaa !25
  %i.jd = xor <2 x i64> %i.jc, %i.hv              ; 2 uses
  br i1 %.not527, label %bb.ce, label %bb.cf, !prof !24, !nosanitize !22

bb.ce:                                            ; preds = %bb.cd
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @34, i64 %i.ip, i64 0) #6, !nosanitize !22
  br label %bb.cf, !nosanitize !22

bb.cf:                                            ; preds = %bb.cd, %bb.ce
  store <2 x i64> %i.in, ptr %.2490.i190, align 16, !tbaa !25
  br i1 %i.is, label %_mm_store_si128.exit80, label %bb.cg, !prof !23, !nosanitize !22

bb.cg:                                            ; preds = %bb.cf
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @117, i64 %i.iq) #6, !nosanitize !22
  br label %_mm_store_si128.exit80, !nosanitize !22

_mm_store_si128.exit80:                           ; preds = %bb.cg, %bb.cf
  store <2 x i64> %i.iu, ptr %i.io, align 16, !tbaa !25
  store <2 x i64> %i.ix, ptr %i.iv, align 16, !tbaa !25
  store <2 x i64> %i.ja, ptr %i.iy, align 16, !tbaa !25
  %i.je = xor <2 x i64> %.2453.i197, %6
  %i.jf = getelementptr inbounds nuw i8, ptr %.2486.i191, i64 16
  %i.jg = ptrtoint ptr %.2486.i191 to i64, !nosanitize !22 ; 3 uses
  %.not531 = icmp eq ptr %.2486.i191, inttoptr (i64 -16 to ptr)
  br i1 %.not531, label %bb.ch, label %bb.ci, !prof !24, !nosanitize !22

bb.ch:                                            ; preds = %_mm_store_si128.exit80
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @35, i64 %i.jg, i64 0) #6, !nosanitize !22
  br label %bb.ci, !nosanitize !22

bb.ci:                                            ; preds = %bb.ch, %_mm_store_si128.exit80
  %i.jh = and i64 %i.jg, 15, !nosanitize !22
  %i.ji = icmp eq i64 %i.jh, 0, !nosanitize !22
  br i1 %i.ji, label %_mm_store_si128.exit76, label %bb.cj, !prof !23, !nosanitize !22

bb.cj:                                            ; preds = %bb.ci
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @117, i64 %i.jg) #6, !nosanitize !22
  br label %_mm_store_si128.exit76, !nosanitize !22

_mm_store_si128.exit76:                           ; preds = %bb.ci, %bb.cj
  store <2 x i64> %i.je, ptr %.2486.i191, align 16, !tbaa !25
  %i.jj = getelementptr inbounds nuw i8, ptr %.2486.i191, i64 32
  store <2 x i64> %i.hs, ptr %i.jf, align 16, !tbaa !25
  %i.jk = getelementptr inbounds nuw i8, ptr %.2486.i191, i64 48
  store <2 x i64> %i.ht, ptr %i.jj, align 16, !tbaa !25
  %i.jl = getelementptr inbounds nuw i8, ptr %.2486.i191, i64 64 ; 2 uses
  store <2 x i64> %i.hu, ptr %i.jk, align 16, !tbaa !25
  %i.jm = getelementptr inbounds nuw i8, ptr %.2482.i192, i64 16
  %i.jn = ptrtoint ptr %.2482.i192 to i64, !nosanitize !22 ; 3 uses
  %.not532 = icmp eq ptr %.2482.i192, inttoptr (i64 -16 to ptr)
  br i1 %.not532, label %bb.ck, label %bb.cl, !prof !24, !nosanitize !22

bb.ck:                                            ; preds = %_mm_store_si128.exit76
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @36, i64 %i.jn, i64 0) #6, !nosanitize !22
  br label %bb.cl, !nosanitize !22

bb.cl:                                            ; preds = %bb.ck, %_mm_store_si128.exit76
  %i.jo = and i64 %i.jn, 15, !nosanitize !22
  %i.jp = icmp eq i64 %i.jo, 0, !nosanitize !22
  br i1 %i.jp, label %_mm_store_si128.exit72, label %bb.cm, !prof !23, !nosanitize !22

bb.cm:                                            ; preds = %bb.cl
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @117, i64 %i.jn) #6, !nosanitize !22
  br label %_mm_store_si128.exit72, !nosanitize !22

_mm_store_si128.exit72:                           ; preds = %bb.cl, %bb.cm
  store <2 x i64> %i.hf, ptr %.2482.i192, align 16, !tbaa !25
  %i.jq = getelementptr inbounds nuw i8, ptr %.2482.i192, i64 32
end_hunk_0
begin_hunk_1_@crc32_chorba_sse41:bb.a
  br i1 %i.kd, label %bb.cq, label %bb.cr, !prof !24, !nosanitize !22

bb.cq:                                            ; preds = %bb.cp
  call void @__ubsan_handle_add_overflow(ptr nonnull @38, i64 %i.jz, i64 64) #7, !nosanitize !22
  br label %bb.cr, !nosanitize !22

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %i.ke = icmp ult i64 %i.kc, %.028
  br i1 %i.ke, label %bb.cs, label %bb.fu

bb.cs:                                            ; preds = %bb.cr
  %i.kf = icmp ult i64 %.3465.i, 1024
  %i.kg = getelementptr inbounds nuw i8, ptr %.3476.i, i64 16 ; 6 uses
  %i.kh = ptrtoint ptr %.3476.i to i64, !nosanitize !22 ; 7 uses
  %i.ki = add i64 %i.kh, 16, !nosanitize !22      ; 3 uses
  %i.kj = icmp ne i64 %i.ki, 0
  %i.kk = icmp ult ptr %.3476.i, inttoptr (i64 -16 to ptr)
  %i.kl = and i1 %i.kk, %i.kj                     ; 2 uses
  br i1 %i.kf, label %bb.ct, label %bb.da

bb.ct:                                            ; preds = %bb.cs
  br i1 %i.kl, label %bb.cv, label %bb.cu, !prof !23, !nosanitize !22

bb.cu:                                            ; preds = %bb.ct
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @39, i64 %i.kh, i64 %i.ki) #6, !nosanitize !22
  br label %bb.cv, !nosanitize !22

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %i.km = and i64 %i.kh, 15, !nosanitize !22
  %i.kn = icmp eq i64 %i.km, 0, !nosanitize !22
  br i1 %i.kn, label %_mm_load_si128.exit129, label %bb.cw, !prof !23, !nosanitize !22

bb.cw:                                            ; preds = %bb.cv
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @119, i64 %i.kh) #6, !nosanitize !22
  br label %_mm_load_si128.exit129, !nosanitize !22

_mm_load_si128.exit129:                           ; preds = %bb.cv, %bb.cw
  %i.ko = load <2 x i64>, ptr %.3476.i, align 16, !tbaa !25
  %i.kp = getelementptr inbounds nuw i8, ptr %.3476.i, i64 32 ; 3 uses
  %.not727.i = icmp ugt ptr %i.kg, inttoptr (i64 -17 to ptr)
  br i1 %.not727.i, label %bb.cx, label %_mm_load_si128.exit128, !prof !24, !nosanitize !22

bb.cx:                                            ; preds = %_mm_load_si128.exit129
  %i.kq = ptrtoint ptr %i.kg to i64, !nosanitize !22 ; 2 uses
  %i.kr = add i64 %i.kq, 16, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @40, i64 %i.kq, i64 %i.kr) #6, !nosanitize !22
  br label %_mm_load_si128.exit128, !nosanitize !22

_mm_load_si128.exit128:                           ; preds = %bb.cx, %_mm_load_si128.exit129
  %i.ks = load <2 x i64>, ptr %i.kg, align 16, !tbaa !25
  %i.kt = getelementptr inbounds nuw i8, ptr %.3476.i, i64 48 ; 3 uses
  %.not728.i = icmp ugt ptr %i.kp, inttoptr (i64 -17 to ptr)
  br i1 %.not728.i, label %bb.cy, label %_mm_load_si128.exit127, !prof !24, !nosanitize !22

bb.cy:                                            ; preds = %_mm_load_si128.exit128
  %i.ku = ptrtoint ptr %i.kp to i64, !nosanitize !22 ; 2 uses
  %i.kv = add i64 %i.ku, 16, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @41, i64 %i.ku, i64 %i.kv) #6, !nosanitize !22
  br label %_mm_load_si128.exit127, !nosanitize !22

_mm_load_si128.exit127:                           ; preds = %bb.cy, %_mm_load_si128.exit128
  %i.kw = load <2 x i64>, ptr %i.kp, align 16, !tbaa !25
  %.not729.i = icmp ugt ptr %i.kt, inttoptr (i64 -17 to ptr)
  br i1 %.not729.i, label %bb.cz, label %_mm_load_si128.exit126, !prof !24, !nosanitize !22

bb.cz:                                            ; preds = %_mm_load_si128.exit127
  %i.kx = ptrtoint ptr %i.kt to i64, !nosanitize !22 ; 2 uses
  %i.ky = add i64 %i.kx, 16, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @42, i64 %i.kx, i64 %i.ky) #6, !nosanitize !22
  br label %_mm_load_si128.exit126, !nosanitize !22

_mm_load_si128.exit126:                           ; preds = %bb.cz, %_mm_load_si128.exit127
  %i.kz = load <2 x i64>, ptr %i.kt, align 16, !tbaa !25
  br label %bb.dn

bb.da:                                            ; preds = %bb.cs
  br i1 %i.kl, label %bb.dc, label %bb.db, !prof !23, !nosanitize !22

bb.db:                                            ; preds = %bb.da
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @43, i64 %i.kh, i64 %i.ki) #6, !nosanitize !22
  br label %bb.dc, !nosanitize !22

bb.dc:                                            ; preds = %bb.db, %bb.da
  %i.la = and i64 %i.kh, 15, !nosanitize !22
  %i.lb = icmp eq i64 %i.la, 0, !nosanitize !22
  br i1 %i.lb, label %_mm_load_si128.exit137, label %bb.dd, !prof !23, !nosanitize !22

bb.dd:                                            ; preds = %bb.dc
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @119, i64 %i.kh) #6, !nosanitize !22
  br label %_mm_load_si128.exit137, !nosanitize !22

_mm_load_si128.exit137:                           ; preds = %bb.dc, %bb.dd
  %i.lc = load <2 x i64>, ptr %.3476.i, align 16, !tbaa !25
  %i.ld = getelementptr inbounds nuw i8, ptr %.0478.i, i64 16 ; 3 uses
  %i.le = ptrtoint ptr %.0478.i to i64, !nosanitize !22 ; 4 uses
  %i.lf = add i64 %i.le, 16, !nosanitize !22      ; 2 uses
  %i.lg = icmp ne i64 %i.lf, 0, !nosanitize !22
  %i.lh = icmp ult ptr %.0478.i, inttoptr (i64 -16 to ptr)
  %i.li = and i1 %i.lh, %i.lg, !nosanitize !22
  br i1 %i.li, label %bb.df, label %bb.de, !prof !23, !nosanitize !22

bb.de:                                            ; preds = %_mm_load_si128.exit137
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @44, i64 %i.le, i64 %i.lf) #6, !nosanitize !22
  br label %bb.df, !nosanitize !22

bb.df:                                            ; preds = %bb.de, %_mm_load_si128.exit137
  %i.lj = and i64 %i.le, 15, !nosanitize !22
  %i.lk = icmp eq i64 %i.lj, 0, !nosanitize !22
  br i1 %i.lk, label %_mm_load_si128.exit136, label %bb.dg, !prof !23, !nosanitize !22

bb.dg:                                            ; preds = %bb.df
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @119, i64 %i.le) #6, !nosanitize !22
  br label %_mm_load_si128.exit136, !nosanitize !22

_mm_load_si128.exit136:                           ; preds = %bb.df, %bb.dg
  %i.ll = load <2 x i64>, ptr %.0478.i, align 16, !tbaa !25
  %i.lm = xor <2 x i64> %i.ll, %i.lc
  %i.ln = getelementptr inbounds nuw i8, ptr %.3476.i, i64 32 ; 3 uses
  %.not721.i = icmp ugt ptr %i.kg, inttoptr (i64 -17 to ptr)
  br i1 %.not721.i, label %bb.dh, label %_mm_load_si128.exit135, !prof !24, !nosanitize !22

bb.dh:                                            ; preds = %_mm_load_si128.exit136
  %i.lo = ptrtoint ptr %i.kg to i64, !nosanitize !22 ; 2 uses
  %i.lp = add i64 %i.lo, 16, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @45, i64 %i.lo, i64 %i.lp) #6, !nosanitize !22
  br label %_mm_load_si128.exit135, !nosanitize !22

_mm_load_si128.exit135:                           ; preds = %bb.dh, %_mm_load_si128.exit136
  %i.lq = load <2 x i64>, ptr %i.kg, align 16, !tbaa !25
  %i.lr = getelementptr inbounds nuw i8, ptr %.0478.i, i64 32 ; 3 uses
  %.not722.i = icmp ugt ptr %i.ld, inttoptr (i64 -17 to ptr)
  br i1 %.not722.i, label %bb.di, label %_mm_load_si128.exit134, !prof !24, !nosanitize !22

bb.di:                                            ; preds = %_mm_load_si128.exit135
  %i.ls = ptrtoint ptr %i.ld to i64, !nosanitize !22 ; 2 uses
  %i.lt = add i64 %i.ls, 16, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @46, i64 %i.ls, i64 %i.lt) #6, !nosanitize !22
  br label %_mm_load_si128.exit134, !nosanitize !22

_mm_load_si128.exit134:                           ; preds = %bb.di, %_mm_load_si128.exit135
  %i.lu = load <2 x i64>, ptr %i.ld, align 16, !tbaa !25
  %i.lv = xor <2 x i64> %i.lu, %i.lq
  %i.lw = getelementptr inbounds nuw i8, ptr %.3476.i, i64 48 ; 3 uses
  %.not723.i = icmp ugt ptr %i.ln, inttoptr (i64 -17 to ptr)
  br i1 %.not723.i, label %bb.dj, label %_mm_load_si128.exit133, !prof !24, !nosanitize !22

bb.dj:                                            ; preds = %_mm_load_si128.exit134
  %i.lx = ptrtoint ptr %i.ln to i64, !nosanitize !22 ; 2 uses
  %i.ly = add i64 %i.lx, 16, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @47, i64 %i.lx, i64 %i.ly) #6, !nosanitize !22
  br label %_mm_load_si128.exit133, !nosanitize !22

_mm_load_si128.exit133:                           ; preds = %bb.dj, %_mm_load_si128.exit134
  %i.lz = load <2 x i64>, ptr %i.ln, align 16, !tbaa !25
  %i.ma = getelementptr inbounds nuw i8, ptr %.0478.i, i64 48 ; 3 uses
  %.not724.i = icmp ugt ptr %i.lr, inttoptr (i64 -17 to ptr)
  br i1 %.not724.i, label %bb.dk, label %_mm_load_si128.exit132, !prof !24, !nosanitize !22

bb.dk:                                            ; preds = %_mm_load_si128.exit133
  %i.mb = ptrtoint ptr %i.lr to i64, !nosanitize !22 ; 2 uses
  %i.mc = add i64 %i.mb, 16, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @48, i64 %i.mb, i64 %i.mc) #6, !nosanitize !22
  br label %_mm_load_si128.exit132, !nosanitize !22

_mm_load_si128.exit132:                           ; preds = %bb.dk, %_mm_load_si128.exit133
  %i.md = load <2 x i64>, ptr %i.lr, align 16, !tbaa !25
  %i.me = xor <2 x i64> %i.md, %i.lz
  %.not725.i = icmp ugt ptr %i.lw, inttoptr (i64 -17 to ptr)
  br i1 %.not725.i, label %bb.dl, label %_mm_load_si128.exit131, !prof !24, !nosanitize !22

bb.dl:                                            ; preds = %_mm_load_si128.exit132
  %i.mf = ptrtoint ptr %i.lw to i64, !nosanitize !22 ; 2 uses
  %i.mg = add i64 %i.mf, 16, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @49, i64 %i.mf, i64 %i.mg) #6, !nosanitize !22
  br label %_mm_load_si128.exit131, !nosanitize !22

_mm_load_si128.exit131:                           ; preds = %bb.dl, %_mm_load_si128.exit132
  %i.mh = load <2 x i64>, ptr %i.lw, align 16, !tbaa !25
  %i.mi = getelementptr inbounds nuw i8, ptr %.0478.i, i64 64
  %.not726.i = icmp ugt ptr %i.ma, inttoptr (i64 -17 to ptr)
  br i1 %.not726.i, label %bb.dm, label %_mm_load_si128.exit130, !prof !24, !nosanitize !22

bb.dm:                                            ; preds = %_mm_load_si128.exit131
  %i.mj = ptrtoint ptr %i.ma to i64, !nosanitize !22 ; 2 uses
  %i.mk = add i64 %i.mj, 16, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @50, i64 %i.mj, i64 %i.mk) #6, !nosanitize !22
  br label %_mm_load_si128.exit130, !nosanitize !22

_mm_load_si128.exit130:                           ; preds = %bb.dm, %_mm_load_si128.exit131
  %i.ml = load <2 x i64>, ptr %i.ma, align 16, !tbaa !25
  %i.mm = xor <2 x i64> %i.ml, %i.mh
  br label %bb.dn

bb.dn:                                            ; preds = %_mm_load_si128.exit130, %_mm_load_si128.exit126
  %.1479.i = phi ptr [ %.0478.i, %_mm_load_si128.exit126 ], [ %i.mi, %_mm_load_si128.exit130 ]
  %.0449.i = phi <2 x i64> [ %i.ko, %_mm_load_si128.exit126 ], [ %i.lm, %_mm_load_si128.exit130 ] ; 3 uses
  %.0448.i = phi <2 x i64> [ %i.ks, %_mm_load_si128.exit126 ], [ %i.lv, %_mm_load_si128.exit130 ] ; 3 uses
  %.0447.i = phi <2 x i64> [ %i.kw, %_mm_load_si128.exit126 ], [ %i.me, %_mm_load_si128.exit130 ] ; 3 uses
  %.0446.i = phi <2 x i64> [ %i.kz, %_mm_load_si128.exit126 ], [ %i.mm, %_mm_load_si128.exit130 ] ; 3 uses
  %.4477.i = getelementptr inbounds nuw i8, ptr %.3476.i, i64 64
  %7 = shufflevector <2 x i64> %.0449.i, <2 x i64> <i64 poison, i64 0>, <2 x i32> <i32 3, i32 0> ; 3 uses
  %i.mn = shufflevector <2 x i64> %.0449.i, <2 x i64> %.0448.i, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.mo = shufflevector <2 x i64> %.0448.i, <2 x i64> %.0447.i, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.mp = shufflevector <2 x i64> %.0447.i, <2 x i64> %.0446.i, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.mq = shufflevector <2 x i64> %.0446.i, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.mr = xor <2 x i64> %.3461.i, %7
  %i.ms = getelementptr inbounds nuw i8, ptr %.3495.i, i64 16 ; 4 uses
  %i.mt = ptrtoint ptr %.3495.i to i64, !nosanitize !22 ; 9 uses
  %i.mu = add i64 %i.mt, 16, !nosanitize !22      ; 3 uses
  %i.mv = icmp ne i64 %i.mu, 0, !nosanitize !22
  %i.mw = icmp ult ptr %.3495.i, inttoptr (i64 -16 to ptr)
  %i.mx = and i1 %i.mw, %i.mv, !nosanitize !22    ; 2 uses
  br i1 %i.mx, label %bb.dp, label %bb.do, !prof !23, !nosanitize !22

bb.do:                                            ; preds = %bb.dn
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @51, i64 %i.mt, i64 %i.mu) #6, !nosanitize !22
  br label %bb.dp, !nosanitize !22

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %i.my = ptrtoint ptr %i.ms to i64, !nosanitize !22 ; 5 uses
  %i.mz = and i64 %i.my, 15, !nosanitize !22
  %i.na = icmp eq i64 %i.mz, 0, !nosanitize !22   ; 2 uses
  br i1 %i.na, label %bb.dr, label %bb.dq, !prof !23, !nosanitize !22

bb.dq:                                            ; preds = %bb.dp
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @52, i64 %i.my) #6, !nosanitize !22
  br label %bb.dr, !nosanitize !22

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %i.nb = load <2 x i64>, ptr %i.ms, align 16, !tbaa !25
  %i.nc = xor <2 x i64> %i.nb, %i.mn
  %i.nd = getelementptr inbounds nuw i8, ptr %.3495.i, i64 32 ; 4 uses
  %i.ne = add i64 %i.mt, 32, !nosanitize !22      ; 2 uses
  %i.nf = icmp ne i64 %i.ne, 0, !nosanitize !22
  %i.ng = icmp ult ptr %.3495.i, inttoptr (i64 -32 to ptr)
  %i.nh = and i1 %i.ng, %i.nf, !nosanitize !22
  br i1 %i.nh, label %bb.dt, label %bb.ds, !prof !23, !nosanitize !22

bb.ds:                                            ; preds = %bb.dr
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @53, i64 %i.mt, i64 %i.ne) #6, !nosanitize !22
  br label %bb.dt, !nosanitize !22

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %i.ni = ptrtoint ptr %i.nd to i64, !nosanitize !22 ; 2 uses
  %i.nj = load <2 x i64>, ptr %i.nd, align 16, !tbaa !25
  %i.nk = xor <2 x i64> %i.nj, %i.mo
  %i.nl = getelementptr inbounds nuw i8, ptr %.3495.i, i64 48 ; 4 uses
  %i.nm = add i64 %i.mt, 48, !nosanitize !22      ; 2 uses
  %i.nn = icmp ne i64 %i.nm, 0, !nosanitize !22
  %i.no = icmp ult ptr %.3495.i, inttoptr (i64 -48 to ptr)
  %i.np = and i1 %i.no, %i.nn, !nosanitize !22
  br i1 %i.np, label %bb.dv, label %bb.du, !prof !23, !nosanitize !22

bb.du:                                            ; preds = %bb.dt
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @54, i64 %i.mt, i64 %i.nm) #6, !nosanitize !22
  br label %bb.dv, !nosanitize !22

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %i.nq = ptrtoint ptr %i.nl to i64, !nosanitize !22 ; 2 uses
  %i.nr = load <2 x i64>, ptr %i.nl, align 16, !tbaa !25
  %i.ns = xor <2 x i64> %i.nr, %i.mp
  %i.nt = getelementptr inbounds nuw i8, ptr %.3495.i, i64 64 ; 2 uses
  %i.nu = add i64 %i.mt, 64, !nosanitize !22      ; 2 uses
  %i.nv = icmp ne i64 %i.nu, 0, !nosanitize !22
  %i.nw = icmp ult ptr %.3495.i, inttoptr (i64 -64 to ptr)
  %i.nx = and i1 %i.nw, %i.nv, !nosanitize !22
  br i1 %i.nx, label %bb.dx, label %bb.dw, !prof !23, !nosanitize !22

bb.dw:                                            ; preds = %bb.dv
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @55, i64 %i.mt, i64 %i.nu) #6, !nosanitize !22
  br label %bb.dx, !nosanitize !22

bb.dx:                                            ; preds = %bb.dv, %bb.dw
  %i.ny = load <2 x i64>, ptr %i.nt, align 16, !tbaa !25
  %i.nz = xor <2 x i64> %i.ny, %i.mq
  br i1 %i.mx, label %_mm_store_si128.exit103, label %bb.dy, !prof !23, !nosanitize !22

bb.dy:                                            ; preds = %bb.dx
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @56, i64 %i.mt, i64 %i.mu) #6, !nosanitize !22
  br label %_mm_store_si128.exit103, !nosanitize !22

_mm_store_si128.exit103:                          ; preds = %bb.dx, %bb.dy
  store <2 x i64> %i.mr, ptr %.3495.i, align 16, !tbaa !25
  %.not730.i = icmp ugt ptr %i.ms, inttoptr (i64 -17 to ptr)
  br i1 %.not730.i, label %bb.dz, label %bb.ea, !prof !24, !nosanitize !22

bb.dz:                                            ; preds = %_mm_store_si128.exit103
  %i.oa = add i64 %i.my, 16, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @57, i64 %i.my, i64 %i.oa) #6, !nosanitize !22
  br label %bb.ea, !nosanitize !22

bb.ea:                                            ; preds = %bb.dz, %_mm_store_si128.exit103
  br i1 %i.na, label %_mm_store_si128.exit102, label %bb.eb, !prof !23, !nosanitize !22

bb.eb:                                            ; preds = %bb.ea
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @117, i64 %i.my) #6, !nosanitize !22
  br label %_mm_store_si128.exit102, !nosanitize !22

_mm_store_si128.exit102:                          ; preds = %bb.ea, %bb.eb
  store <2 x i64> %i.nc, ptr %i.ms, align 16, !tbaa !25
  %.not731.i = icmp ugt ptr %i.nd, inttoptr (i64 -17 to ptr)
  br i1 %.not731.i, label %bb.ec, label %_mm_store_si128.exit101, !prof !24, !nosanitize !22

bb.ec:                                            ; preds = %_mm_store_si128.exit102
  %i.ob = add i64 %i.ni, 16, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @58, i64 %i.ni, i64 %i.ob) #6, !nosanitize !22
  br label %_mm_store_si128.exit101, !nosanitize !22

_mm_store_si128.exit101:                          ; preds = %_mm_store_si128.exit102, %bb.ec
  store <2 x i64> %i.nk, ptr %i.nd, align 16, !tbaa !25
  %.not732.i = icmp ugt ptr %i.nl, inttoptr (i64 -17 to ptr)
  br i1 %.not732.i, label %bb.ed, label %_mm_store_si128.exit100, !prof !24, !nosanitize !22

bb.ed:                                            ; preds = %_mm_store_si128.exit101
  %i.oc = add i64 %i.nq, 16, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @59, i64 %i.nq, i64 %i.oc) #6, !nosanitize !22
  br label %_mm_store_si128.exit100, !nosanitize !22

_mm_store_si128.exit100:                          ; preds = %_mm_store_si128.exit101, %bb.ed
  store <2 x i64> %i.ns, ptr %i.nl, align 16, !tbaa !25
  %i.od = xor <2 x i64> %.3457.i, %7
  %i.oe = getelementptr inbounds nuw i8, ptr %.3491.i, i64 16 ; 4 uses
  %i.of = ptrtoint ptr %.3491.i to i64, !nosanitize !22 ; 9 uses
  %i.og = add i64 %i.of, 16, !nosanitize !22      ; 3 uses
  %i.oh = icmp ne i64 %i.og, 0, !nosanitize !22
  %i.oi = icmp ult ptr %.3491.i, inttoptr (i64 -16 to ptr)
  %i.oj = and i1 %i.oi, %i.oh, !nosanitize !22    ; 2 uses
  br i1 %i.oj, label %bb.ef, label %bb.ee, !prof !23, !nosanitize !22

bb.ee:                                            ; preds = %_mm_store_si128.exit100
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @60, i64 %i.of, i64 %i.og) #6, !nosanitize !22
  br label %bb.ef, !nosanitize !22

bb.ef:                                            ; preds = %bb.ee, %_mm_store_si128.exit100
  %i.ok = ptrtoint ptr %i.oe to i64, !nosanitize !22 ; 5 uses
  %i.ol = and i64 %i.ok, 15, !nosanitize !22
  %i.om = icmp eq i64 %i.ol, 0, !nosanitize !22   ; 2 uses
  br i1 %i.om, label %bb.eh, label %bb.eg, !prof !23, !nosanitize !22

bb.eg:                                            ; preds = %bb.ef
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @61, i64 %i.ok) #6, !nosanitize !22
  br label %bb.eh, !nosanitize !22

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %i.on = load <2 x i64>, ptr %i.oe, align 16, !tbaa !25
  %i.oo = xor <2 x i64> %i.on, %i.mn
  %i.op = getelementptr inbounds nuw i8, ptr %.3491.i, i64 32 ; 4 uses
  %i.oq = add i64 %i.of, 32, !nosanitize !22      ; 2 uses
  %i.or = icmp ne i64 %i.oq, 0, !nosanitize !22
  %i.os = icmp ult ptr %.3491.i, inttoptr (i64 -32 to ptr)
  %i.ot = and i1 %i.os, %i.or, !nosanitize !22
  br i1 %i.ot, label %bb.ej, label %bb.ei, !prof !23, !nosanitize !22

bb.ei:                                            ; preds = %bb.eh
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @62, i64 %i.of, i64 %i.oq) #6, !nosanitize !22
  br label %bb.ej, !nosanitize !22

bb.ej:                                            ; preds = %bb.ei, %bb.eh
  %i.ou = ptrtoint ptr %i.op to i64, !nosanitize !22 ; 2 uses
  %i.ov = load <2 x i64>, ptr %i.op, align 16, !tbaa !25
  %i.ow = xor <2 x i64> %i.ov, %i.mo
  %i.ox = getelementptr inbounds nuw i8, ptr %.3491.i, i64 48 ; 4 uses
  %i.oy = add i64 %i.of, 48, !nosanitize !22      ; 2 uses
  %i.oz = icmp ne i64 %i.oy, 0, !nosanitize !22
  %i.pa = icmp ult ptr %.3491.i, inttoptr (i64 -48 to ptr)
  %i.pb = and i1 %i.pa, %i.oz, !nosanitize !22
  br i1 %i.pb, label %bb.el, label %bb.ek, !prof !23, !nosanitize !22

bb.ek:                                            ; preds = %bb.ej
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @63, i64 %i.of, i64 %i.oy) #6, !nosanitize !22
  br label %bb.el, !nosanitize !22

bb.el:                                            ; preds = %bb.ek, %bb.ej
  %i.pc = ptrtoint ptr %i.ox to i64, !nosanitize !22 ; 2 uses
  %i.pd = load <2 x i64>, ptr %i.ox, align 16, !tbaa !25
  %i.pe = xor <2 x i64> %i.pd, %i.mp
  %i.pf = getelementptr inbounds nuw i8, ptr %.3491.i, i64 64 ; 2 uses
  %i.pg = add i64 %i.of, 64, !nosanitize !22      ; 2 uses
  %i.ph = icmp ne i64 %i.pg, 0, !nosanitize !22
  %i.pi = icmp ult ptr %.3491.i, inttoptr (i64 -64 to ptr)
  %i.pj = and i1 %i.pi, %i.ph, !nosanitize !22
  br i1 %i.pj, label %bb.en, label %bb.em, !prof !23, !nosanitize !22

bb.em:                                            ; preds = %bb.el
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @64, i64 %i.of, i64 %i.pg) #6, !nosanitize !22
  br label %bb.en, !nosanitize !22

bb.en:                                            ; preds = %bb.el, %bb.em
  %i.pk = load <2 x i64>, ptr %i.pf, align 16, !tbaa !25
  %i.pl = xor <2 x i64> %i.pk, %i.mq
  br i1 %i.oj, label %_mm_store_si128.exit99, label %bb.eo, !prof !23, !nosanitize !22

bb.eo:                                            ; preds = %bb.en
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @65, i64 %i.of, i64 %i.og) #6, !nosanitize !22
  br label %_mm_store_si128.exit99, !nosanitize !22

_mm_store_si128.exit99:                           ; preds = %bb.en, %bb.eo
  store <2 x i64> %i.od, ptr %.3491.i, align 16, !tbaa !25
  %.not733.i = icmp ugt ptr %i.oe, inttoptr (i64 -17 to ptr)
  br i1 %.not733.i, label %bb.ep, label %bb.eq, !prof !24, !nosanitize !22

end_hunk_1
begin_hunk_2_@crc32_chorba_sse41:bb.a

.preheader:                                       ; preds = %_mm_store_si128.exit108, %.preheader147
  %.1442.i.lcssa = phi i64 [ %.pn.i.lcssa, %.preheader147 ], [ %i.uc, %_mm_store_si128.exit108 ]
  %.1.i.lcssa = phi ptr [ %.0440.i.lcssa, %.preheader147 ], [ %i.tu, %_mm_store_si128.exit108 ]
  %i.ts = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %.1442.i.lcssa, i64 1), !nosanitize !22 ; 2 uses
  %i.tt = extractvalue { i64, i1 } %i.ts, 1, !nosanitize !22
  br i1 %i.tt, label %._crit_edge, label %.lr.ph219, !prof !28, !nosanitize !22

.lr.ph215:                                        ; preds = %.preheader147, %_mm_store_si128.exit108
  %.1.i214 = phi ptr [ %i.tu, %_mm_store_si128.exit108 ], [ %.0440.i.lcssa, %.preheader147 ] ; 4 uses
  %.1442.i213 = phi i64 [ %i.uc, %_mm_store_si128.exit108 ], [ %.pn.i.lcssa, %.preheader147 ]
  %i.tu = getelementptr inbounds nuw i8, ptr %.1.i214, i64 16 ; 2 uses
  %i.tv = ptrtoint ptr %.1.i214 to i64, !nosanitize !22 ; 4 uses
  %i.tw = add i64 %i.tv, 16, !nosanitize !22      ; 2 uses
  %i.tx = icmp ne i64 %i.tw, 0, !nosanitize !22
  %i.ty = icmp ult ptr %.1.i214, inttoptr (i64 -16 to ptr)
  %i.tz = and i1 %i.ty, %i.tx, !nosanitize !22
  br i1 %i.tz, label %bb.gm, label %bb.gl, !prof !23, !nosanitize !22

bb.gl:                                            ; preds = %.lr.ph215
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @92, i64 %i.tv, i64 %i.tw) #6, !nosanitize !22
  br label %bb.gm, !nosanitize !22

bb.gm:                                            ; preds = %bb.gl, %.lr.ph215
  %i.ua = and i64 %i.tv, 15, !nosanitize !22
  %i.ub = icmp eq i64 %i.ua, 0, !nosanitize !22
  br i1 %i.ub, label %_mm_store_si128.exit108, label %bb.gn, !prof !23, !nosanitize !22

bb.gn:                                            ; preds = %bb.gm
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @117, i64 %i.tv) #6, !nosanitize !22
  br label %_mm_store_si128.exit108, !nosanitize !22

_mm_store_si128.exit108:                          ; preds = %bb.gm, %bb.gn
  store <2 x i64> zeroinitializer, ptr %.1.i214, align 16, !tbaa !25
  %i.uc = add nsw i64 %.1442.i213, -16            ; 3 uses
  %i.ud = icmp ugt i64 %i.uc, 15
  br i1 %i.ud, label %.lr.ph215, label %.preheader, !llvm.loop !17

.lr.ph219:                                        ; preds = %.preheader, %bb.gp
  %.pn = phi { i64, i1 } [ %i.uh, %bb.gp ], [ %i.ts, %.preheader ]
  %.0439.i218 = phi ptr [ %i.uf, %bb.gp ], [ %.1.i.lcssa, %.preheader ] ; 4 uses
  %i.ue = extractvalue { i64, i1 } %.pn, 0
  %i.uf = getelementptr inbounds nuw i8, ptr %.0439.i218, i64 1
  %.not715.i = icmp eq ptr %.0439.i218, inttoptr (i64 -1 to ptr)
  br i1 %.not715.i, label %bb.go, label %bb.gp, !prof !24, !nosanitize !22

bb.go:                                            ; preds = %.lr.ph219
  %i.ug = ptrtoint ptr %.0439.i218 to i64, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @94, i64 %i.ug, i64 0) #6, !nosanitize !22
  br label %bb.gp, !nosanitize !22

bb.gp:                                            ; preds = %.lr.ph219, %bb.go
  store i8 0, ptr %.0439.i218, align 1, !tbaa !25
  %i.uh = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.ue, i64 1), !nosanitize !22 ; 2 uses
  %i.ui = extractvalue { i64, i1 } %i.uh, 1, !nosanitize !22
  br i1 %i.ui, label %._crit_edge, label %.lr.ph219, !prof !29, !llvm.loop !18, !nosanitize !22

._crit_edge:                                      ; preds = %bb.gp, %.preheader
  call void @__ubsan_handle_sub_overflow(ptr nonnull @93, i64 0, i64 1) #7, !nosanitize !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.b, i8 0, i64 72, i1 false)
  %i.uj = ptrtoint ptr %i.k to i64                ; 5 uses
  br label %bb.gq

bb.gq:                                            ; preds = %bb.hl, %._crit_edge
  %indvars.iv251 = phi i64 [ %indvars.iv.next252, %bb.hl ], [ %indvars.iv, %._crit_edge ] ; 2 uses
  %.4466.i = phi i64 [ %i.xn, %bb.hl ], [ %.3465.i, %._crit_edge ] ; 13 uses
  %.0438.i = phi <2 x i64> [ %i.xh, %bb.hl ], [ zeroinitializer, %._crit_edge ] ; 2 uses
  %.0437.i = phi <2 x i64> [ %i.xk, %bb.hl ], [ zeroinitializer, %._crit_edge ] ; 2 uses
  %.0436.i = phi <2 x i64> [ %i.xl, %bb.hl ], [ zeroinitializer, %._crit_edge ] ; 2 uses
  %i.uk = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.4466.i, i64 72), !nosanitize !22 ; 2 uses
  %i.ul = extractvalue { i64, i1 } %i.uk, 0, !nosanitize !22
  %i.um = extractvalue { i64, i1 } %i.uk, 1, !nosanitize !22
  br i1 %i.um, label %bb.gr, label %bb.gs, !prof !24, !nosanitize !22

bb.gr:                                            ; preds = %bb.gq
  call void @__ubsan_handle_add_overflow(ptr nonnull @95, i64 %.4466.i, i64 72) #7, !nosanitize !22
  br label %bb.gs, !nosanitize !22

bb.gs:                                            ; preds = %bb.gr, %bb.gq
  %i.un = icmp ult i64 %i.ul, %.028
  %i.uo = lshr i64 %.4466.i, 3                    ; 4 uses
  %i.up = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.uo ; 6 uses
  %i.uq = icmp sgt i64 %.4466.i, -1               ; 3 uses
  %i.ur = and i64 %.4466.i, -8                    ; 2 uses
  %i.us = add i64 %i.ur, %i.uj, !nosanitize !22   ; 4 uses
  %i.ut = icmp uge i64 %i.us, %i.uj, !nosanitize !22 ; 2 uses
  br i1 %i.un, label %bb.gt, label %bb.hm

bb.gt:                                            ; preds = %bb.gs
  %i.uu = and i1 %i.ut, %i.m
  %i.uv = and i1 %i.uq, %i.uu                     ; 2 uses
  br i1 %i.uv, label %bb.gv, label %bb.gu, !prof !23, !nosanitize !22

bb.gu:                                            ; preds = %bb.gt
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @96, i64 %i.uj, i64 %i.us) #6, !nosanitize !22
  br label %bb.gv, !nosanitize !22

bb.gv:                                            ; preds = %bb.gu, %bb.gt
  %i.uw = ptrtoint ptr %i.up to i64, !nosanitize !22 ; 4 uses
  %i.ux = and i64 %i.uw, 15, !nosanitize !22
  %i.uy = icmp eq i64 %i.ux, 0, !nosanitize !22
  %i.uz = and i1 %i.uy, %i.m
  br i1 %i.uz, label %_mm_load_si128.exit141, label %bb.gw, !prof !23, !nosanitize !22

bb.gw:                                            ; preds = %bb.gv
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @119, i64 %i.uw) #6, !nosanitize !22
  br label %_mm_load_si128.exit141, !nosanitize !22

_mm_load_si128.exit141:                           ; preds = %bb.gv, %bb.gw
  %i.va = load <2 x i64>, ptr %i.up, align 16, !tbaa !25
  br i1 %i.uv, label %bb.gy, label %bb.gx, !prof !23, !nosanitize !22

bb.gx:                                            ; preds = %_mm_load_si128.exit141
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @97, i64 %i.uj, i64 %i.us) #6, !nosanitize !22
  br label %bb.gy, !nosanitize !22

bb.gy:                                            ; preds = %bb.gx, %_mm_load_si128.exit141
  %i.vb = getelementptr inbounds nuw i8, ptr %i.up, i64 16
  %i.vc = add i64 %i.uw, 16, !nosanitize !22      ; 2 uses
  %i.vd = icmp eq i64 %i.vc, 0
  %i.ve = xor i1 %i.m, %i.vd
  %i.vf = icmp ult ptr %i.up, inttoptr (i64 -16 to ptr)
  %i.vg = and i1 %i.vf, %i.ve, !nosanitize !22
  br i1 %i.vg, label %_mm_load_si128.exit140, label %bb.gz, !prof !23, !nosanitize !22

bb.gz:                                            ; preds = %bb.gy
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @98, i64 %i.uw, i64 %i.vc) #6, !nosanitize !22
  br label %_mm_load_si128.exit140, !nosanitize !22

_mm_load_si128.exit140:                           ; preds = %bb.gy, %bb.gz
  %i.vh = load <2 x i64>, ptr %i.vb, align 16, !tbaa !25
  %i.vi = icmp ult i64 %.4466.i, 32776            ; 2 uses
  br i1 %i.vi, label %bb.hb, label %bb.ha, !prof !23, !nosanitize !22

bb.ha:                                            ; preds = %_mm_load_si128.exit140
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @99, i64 %i.uo) #6, !nosanitize !22
  br label %bb.hb, !nosanitize !22

bb.hb:                                            ; preds = %bb.ha, %_mm_load_si128.exit140
  %i.vj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.uo ; 4 uses
  %i.vk = add i64 %i.ur, %i.v, !nosanitize !22    ; 3 uses
  %i.vl = icmp uge i64 %i.vk, %i.v, !nosanitize !22
  %i.vm = and i1 %i.uq, %i.vl, !nosanitize !22    ; 2 uses
  br i1 %i.vm, label %bb.hd, label %bb.hc, !prof !23, !nosanitize !22

bb.hc:                                            ; preds = %bb.hb
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @100, i64 %i.v, i64 %i.vk) #6, !nosanitize !22
  br label %bb.hd, !nosanitize !22

bb.hd:                                            ; preds = %bb.hc, %bb.hb
  %i.vn = ptrtoint ptr %i.vj to i64, !nosanitize !22 ; 4 uses
  %i.vo = and i64 %i.vn, 8, !nosanitize !22
  %i.vp = icmp eq i64 %i.vo, 0, !nosanitize !22
  br i1 %i.vp, label %_mm_load_si128.exit139, label %bb.he, !prof !23, !nosanitize !22

bb.he:                                            ; preds = %bb.hd
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @119, i64 %i.vn) #6, !nosanitize !22
  br label %_mm_load_si128.exit139, !nosanitize !22

_mm_load_si128.exit139:                           ; preds = %bb.hd, %bb.he
  %i.vq = load <2 x i64>, ptr %i.vj, align 16, !tbaa !25
  br i1 %i.vi, label %bb.hg, label %bb.hf, !prof !23, !nosanitize !22

bb.hf:                                            ; preds = %_mm_load_si128.exit139
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @101, i64 %i.uo) #6, !nosanitize !22
  br label %bb.hg, !nosanitize !22

bb.hg:                                            ; preds = %bb.hf, %_mm_load_si128.exit139
  br i1 %i.vm, label %bb.hi, label %bb.hh, !prof !23, !nosanitize !22

bb.hh:                                            ; preds = %bb.hg
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @102, i64 %i.v, i64 %i.vk) #6, !nosanitize !22
  br label %bb.hi, !nosanitize !22

bb.hi:                                            ; preds = %bb.hh, %bb.hg
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vj, i64 16
  %.not714.i = icmp ugt ptr %i.vj, inttoptr (i64 -17 to ptr)
  br i1 %.not714.i, label %bb.hj, label %_mm_load_si128.exit138, !prof !24, !nosanitize !22

bb.hj:                                            ; preds = %bb.hi
  %i.vs = add i64 %i.vn, 16, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @103, i64 %i.vn, i64 %i.vs) #6, !nosanitize !22
  br label %_mm_load_si128.exit138, !nosanitize !22

_mm_load_si128.exit138:                           ; preds = %bb.hi, %bb.hj
  %i.vt = load <2 x i64>, ptr %i.vr, align 16, !tbaa !25
  %i.vu = xor <2 x i64> %i.va, %i.vq
  %i.vv = xor <2 x i64> %i.vu, %.0438.i           ; 8 uses
  %i.vw = shl <2 x i64> %i.vv, splat (i64 17)
  %i.vx = shl <2 x i64> %i.vv, splat (i64 55)
  %i.vy = lshr <2 x i64> %i.vv, splat (i64 47)
  %i.vz = lshr <2 x i64> %i.vv, splat (i64 9)
  %i.wa = xor <2 x i64> %i.vy, %i.vz
  %i.wb = shl <2 x i64> %i.vv, splat (i64 19)
  %i.wc = xor <2 x i64> %i.wa, %i.wb              ; 2 uses
  %i.wd = lshr <2 x i64> %i.vv, splat (i64 45)
  %i.we = shl <2 x i64> %i.vv, splat (i64 44)
  %i.wf = or disjoint <2 x i64> %i.wd, %i.we
  %i.wg = lshr <2 x i64> %i.vv, splat (i64 20)    ; 2 uses
  %8 = shufflevector <2 x i64> %i.wc, <2 x i64> <i64 poison, i64 0>, <2 x i32> <i32 3, i32 0>
  %i.wh = xor <2 x i64> %i.vh, %i.vx
  %i.wi = xor <2 x i64> %i.wh, %i.vw
  %i.wj = xor <2 x i64> %i.wi, %8
  %i.wk = xor <2 x i64> %i.wj, %i.vt
  %i.wl = xor <2 x i64> %i.wk, %.0437.i           ; 8 uses
  %i.wm = shl <2 x i64> %i.wl, splat (i64 17)
  %i.wn = shl <2 x i64> %i.wl, splat (i64 55)
  %i.wo = lshr <2 x i64> %i.wl, splat (i64 47)
  %i.wp = lshr <2 x i64> %i.wl, splat (i64 9)
  %i.wq = xor <2 x i64> %i.wo, %i.wp
  %i.wr = shl <2 x i64> %i.wl, splat (i64 19)
  %i.ws = xor <2 x i64> %i.wq, %i.wr              ; 2 uses
  %i.wt = lshr <2 x i64> %i.wl, splat (i64 45)
  %i.wu = shl <2 x i64> %i.wl, splat (i64 44)
  %i.wv = or disjoint <2 x i64> %i.wt, %i.wu
  %i.ww = lshr <2 x i64> %i.wl, splat (i64 20)    ; 2 uses
  %i.wx = bitcast <2 x i64> %i.ws to <16 x i8>
  %i.wy = shufflevector <2 x i64> %i.wc, <2 x i64> %i.ws, <2 x i32> <i32 1, i32 2>
  %i.wz = bitcast <2 x i64> %i.wg to <16 x i8>
  %9 = shufflevector <16 x i8> %i.wz, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.xa = bitcast <16 x i8> %9 to <2 x i64>
  %i.xb = xor <2 x i64> %i.wy, %i.xa
  %i.xc = shufflevector <16 x i8> %i.wx, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.xd = shufflevector <2 x i64> %i.wg, <2 x i64> %i.ww, <2 x i32> <i32 1, i32 2>
  %i.xe = xor <2 x i64> %i.wf, %i.wn
  %i.xf = xor <2 x i64> %i.xe, %i.wm
  %i.xg = xor <2 x i64> %i.xf, %i.xb
  %i.xh = xor <2 x i64> %i.xg, %.0436.i
  %i.xi = bitcast <16 x i8> %i.xc to <2 x i64>
  %i.xj = xor <2 x i64> %i.xd, %i.xi
  %i.xk = xor <2 x i64> %i.wv, %i.xj
  %i.xl = shufflevector <2 x i64> %i.ww, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.xm = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.4466.i, i64 32), !nosanitize !22 ; 2 uses
  %i.xn = extractvalue { i64, i1 } %i.xm, 0, !nosanitize !22
  %i.xo = extractvalue { i64, i1 } %i.xm, 1, !nosanitize !22
  br i1 %i.xo, label %bb.hk, label %bb.hl, !prof !24, !nosanitize !22

bb.hk:                                            ; preds = %_mm_load_si128.exit138
  call void @__ubsan_handle_add_overflow(ptr nonnull @104, i64 %.4466.i, i64 32) #7, !nosanitize !22
  br label %bb.hl, !nosanitize !22

bb.hl:                                            ; preds = %bb.hk, %_mm_load_si128.exit138
  %indvars.iv.next252 = add i64 %indvars.iv251, -32
  br label %bb.gq, !llvm.loop !19

bb.hm:                                            ; preds = %bb.gs
  %i.xp = and i1 %i.uq, %i.ut, !nosanitize !22
  %i.xq = and i1 %i.m, %i.xp
  br i1 %i.xq, label %bb.ho, label %bb.hn, !prof !23, !nosanitize !22

bb.hn:                                            ; preds = %bb.hm
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @105, i64 %i.uj, i64 %i.us) #6, !nosanitize !22
  br label %bb.ho, !nosanitize !22

bb.ho:                                            ; preds = %bb.hn, %bb.hm
  %i.xr = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 range(i64 8193, 32769) %.028, i64 %.4466.i), !nosanitize !22 ; 2 uses
  %i.xs = extractvalue { i64, i1 } %i.xr, 0, !nosanitize !22
  %i.xt = extractvalue { i64, i1 } %i.xr, 1, !nosanitize !22 ; 2 uses
  br i1 %i.xt, label %bb.hp, label %bb.hq, !prof !24, !nosanitize !22

bb.hp:                                            ; preds = %bb.ho
  call void @__ubsan_handle_sub_overflow(ptr nonnull @106, i64 range(i64 8193, 32769) %.028, i64 %.4466.i) #7, !nosanitize !22
  br label %bb.hq, !nosanitize !22

bb.hq:                                            ; preds = %bb.hp, %bb.ho
  br i1 %i.m, label %bb.hs, label %bb.hr, !prof !23, !nosanitize !22

bb.hr:                                            ; preds = %bb.hq
  call void @__ubsan_handle_nonnull_arg(ptr nonnull @107) #6, !nosanitize !22
  br label %bb.hs, !nosanitize !22

bb.hs:                                            ; preds = %bb.hr, %bb.hq
  %i.xu = ptrtoint ptr %i.up to i64, !nosanitize !22 ; 2 uses
  %i.xv = and i64 %i.xu, 7, !nosanitize !22
  %i.xw = icmp eq i64 %i.xv, 0, !nosanitize !22
  br i1 %i.xw, label %_mm_load_si128.exit144.thread, label %bb.ht, !prof !23, !nosanitize !22

bb.ht:                                            ; preds = %bb.hs
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @109, i64 %i.xu) #6, !nosanitize !22
  br label %_mm_load_si128.exit144.thread, !nosanitize !22

_mm_load_si128.exit144.thread:                    ; preds = %bb.ht, %bb.hs
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr nonnull align 8 %i.up, i64 %i.xs, i1 false)
  %i.xx = ptrtoint ptr %i.b to i64, !nosanitize !22 ; 5 uses
  %i.xy = load <2 x i64>, ptr %i.b, align 16, !tbaa !25
  %i.xz = xor <2 x i64> %i.xy, %.0438.i
  store <2 x i64> %i.xz, ptr %i.b, align 16, !tbaa !25
  %i.ya = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %.not707.i = icmp eq ptr %i.b, inttoptr (i64 -16 to ptr)
  br i1 %.not707.i, label %bb.hu, label %_mm_load_si128.exit143.thread, !prof !24, !nosanitize !22

bb.hu:                                            ; preds = %_mm_load_si128.exit144.thread
  %i.yb = add i64 %i.xx, 16, !nosanitize !22
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @110, i64 %i.xx, i64 %i.yb) #6, !nosanitize !22
  br label %_mm_load_si128.exit143.thread, !nosanitize !22

_mm_load_si128.exit143.thread:                    ; preds = %bb.hu, %_mm_load_si128.exit144.thread
  %i.yc = load <2 x i64>, ptr %i.ya, align 16, !tbaa !25
  %i.yd = xor <2 x i64> %i.yc, %.0437.i
  store <2 x i64> %i.yd, ptr %i.ya, align 16, !tbaa !25
  %i.ye = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %.not708.i = icmp eq ptr %i.ya, inttoptr (i64 -16 to ptr)
  br i1 %.not708.i, label %bb.hv, label %_mm_load_si128.exit142.thread, !prof !24, !nosanitize !22

bb.hv:                                            ; preds = %_mm_load_si128.exit143.thread
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @111, i64 -16, i64 0) #6, !nosanitize !22
  br label %_mm_load_si128.exit142.thread, !nosanitize !22

_mm_load_si128.exit142.thread:                    ; preds = %_mm_load_si128.exit143.thread, %bb.hv
  %i.yf = load <2 x i64>, ptr %i.ye, align 16, !tbaa !25
  %i.yg = xor <2 x i64> %i.yf, %.0436.i
  store <2 x i64> %i.yg, ptr %i.ye, align 16, !tbaa !25
  br label %bb.hw

bb.hw:                                            ; preds = %bb.ih, %_mm_load_si128.exit142.thread
  %.0435.i = phi i32 [ 0, %_mm_load_si128.exit142.thread ], [ %i.yx, %bb.ih ] ; 3 uses
  %.0.i = phi i64 [ 0, %_mm_load_si128.exit142.thread ], [ %i.yy, %bb.ih ] ; 6 uses
  br i1 %i.xt, label %bb.hx, label %bb.hy, !prof !24, !nosanitize !22

bb.hx:                                            ; preds = %bb.hw
  call void @__ubsan_handle_sub_overflow(ptr nonnull @112, i64 range(i64 8193, 32769) %.028, i64 %.4466.i) #7, !nosanitize !22
  br label %bb.hy, !nosanitize !22

bb.hy:                                            ; preds = %bb.hx, %bb.hw
  %exitcond.not = icmp eq i64 %.0.i, %indvars.iv251
  br i1 %exitcond.not, label %crc32_chorba_32768_nondestructive_sse41.exit, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.yh = getelementptr inbounds nuw i8, ptr %i.b, i64 %.0.i
  %i.yi = add i64 %.0.i, %i.xx, !nosanitize !22   ; 2 uses
  %.not709.i = icmp ult i64 %i.yi, %i.xx, !nosanitize !22
  br i1 %.not709.i, label %bb.ia, label %bb.ib, !prof !24, !nosanitize !22

bb.ia:                                            ; preds = %bb.hz
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @113, i64 %i.xx, i64 %i.yi) #6, !nosanitize !22
  br label %bb.ib, !nosanitize !22

bb.ib:                                            ; preds = %bb.hz, %bb.ia
  %i.yj = load i8, ptr %i.yh, align 1, !tbaa !25
  %i.yk = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.0.i, i64 %.4466.i), !nosanitize !22 ; 2 uses
  %i.yl = extractvalue { i64, i1 } %i.yk, 0, !nosanitize !22 ; 2 uses
  %i.ym = extractvalue { i64, i1 } %i.yk, 1, !nosanitize !22
  br i1 %i.ym, label %bb.ic, label %bb.id, !prof !24, !nosanitize !22

bb.ic:                                            ; preds = %bb.ib
  call void @__ubsan_handle_add_overflow(ptr nonnull @114, i64 %.0.i, i64 %.4466.i) #7, !nosanitize !22
  br label %bb.id, !nosanitize !22

bb.id:                                            ; preds = %bb.ic, %bb.ib
  %i.yn = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.yl
  %i.yo = add i64 %i.yl, %i.v, !nosanitize !22    ; 2 uses
  %.not711.i = icmp ult i64 %i.yo, %i.v, !nosanitize !22
  br i1 %.not711.i, label %bb.ie, label %bb.if, !prof !24, !nosanitize !22

bb.ie:                                            ; preds = %bb.id
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @115, i64 %i.v, i64 %i.yo) #6, !nosanitize !22
  br label %bb.if, !nosanitize !22

bb.if:                                            ; preds = %bb.id, %bb.ie
  %i.yp = load i8, ptr %i.yn, align 1, !tbaa !25
  %.0435.tr.i = trunc i32 %.0435.i to i8
  %i.yq = xor i8 %i.yj, %.0435.tr.i
  %.narrow.i = xor i8 %i.yq, %i.yp
  %i.yr = zext i8 %.narrow.i to i64               ; 2 uses
  %i.ys = getelementptr inbounds nuw [4 x i8], ptr @crc_table, i64 %i.yr
  %i.yt = shl nuw nsw i64 %i.yr, 2
  %i.yu = add i64 %i.yt, ptrtoint (ptr @crc_table to i64), !nosanitize !22 ; 2 uses
  %.not713.i = icmp ult i64 %i.yu, ptrtoint (ptr @crc_table to i64), !nosanitize !22
  br i1 %.not713.i, label %bb.ig, label %bb.ih, !prof !24, !nosanitize !22

bb.ig:                                            ; preds = %bb.if
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @116, i64 ptrtoint (ptr @crc_table to i64), i64 %i.yu) #6, !nosanitize !22
  br label %bb.ih, !nosanitize !22

bb.ih:                                            ; preds = %bb.if, %bb.ig
  %i.yv = load i32, ptr %i.ys, align 4, !tbaa !30
  %i.yw = lshr i32 %.0435.i, 8
  %i.yx = xor i32 %i.yv, %i.yw
  %i.yy = add i64 %.0.i, 1
  br label %bb.hw, !llvm.loop !20

crc32_chorba_32768_nondestructive_sse41.exit:     ; preds = %bb.hy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.ik

bb.ii:                                            ; preds = %bb.h
  %i.yz = call i32 @chorba_small_nondestructive_sse2(i32 noundef %.0, ptr noundef %i.k, i64 noundef %.028) #6
  br label %bb.ik

bb.ij:                                            ; preds = %bb.a
  %i.za = call i32 @crc32_braid_internal(i32 noundef %i.c, ptr noundef %1, i64 noundef %2) #6
  br label %bb.ik

bb.ik:                                            ; preds = %bb.g, %bb.ii, %crc32_chorba_32768_nondestructive_sse41.exit, %bb.ij
  %.1 = phi i32 [ %i.s, %bb.g ], [ %.0435.i, %crc32_chorba_32768_nondestructive_sse41.exit ], [ %i.yz, %bb.ii ], [ %i.za, %bb.ij ]
  %i.zb = xor i32 %.1, -1
  ret i32 %i.zb
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #2

; Function Attrs: uwtable
declare void @__ubsan_handle_sub_overflow(ptr, i64, i64) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #2

; Function Attrs: uwtable
declare void @__ubsan_handle_add_overflow(ptr, i64, i64) local_unnamed_addr #3

declare i32 @crc32_braid_internal(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: uwtable
declare void @__ubsan_handle_pointer_overflow(ptr, i64, i64) local_unnamed_addr #3

end_hunk_2
