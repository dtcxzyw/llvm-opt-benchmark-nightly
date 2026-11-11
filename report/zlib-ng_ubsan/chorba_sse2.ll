Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng_ubsan/original/chorba_sse2?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.src = private unnamed_addr constant [61 x i8] c"/opt-bench/work/zlib-ng_ubsan/zlib-ng/arch/x86/chorba_sse2.c\00", align 1
@0 = private unnamed_addr constant { i16, i16, [31 x i8] } { i16 0, i16 12, [31 x i8] c"'size_t' (aka 'unsigned long')\00" }
@1 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 41, i32 14 }, ptr @0 }
@2 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 41, i32 20 }, ptr @0 }
@3 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 41, i32 25 }, ptr @0 }
@4 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 41, i32 30 }, ptr @0 }
@5 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 55, i32 42 } }
@6 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 57, i32 54 } }
@7 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 58, i32 54 } }
@8 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 59, i32 54 } }
@9 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 60, i32 54 } }
@10 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 78, i32 11 }, ptr @0 }
@11 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 83, i32 9 } }
@12 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 83, i32 9 } }
@13 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 83, i32 9 } }
@14 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 157, i32 11 }, ptr @0 }
@15 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 162, i32 9 } }
@16 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 162, i32 9 } }
@17 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 162, i32 9 } }
@18 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 244, i32 11 }, ptr @0 }
@19 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 254, i32 9 } }
@20 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 254, i32 9 } }
@21 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 254, i32 9 } }
@22 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 327, i32 11 }, ptr @0 }
@23 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 334, i32 9 } }
@24 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 334, i32 9 } }
@25 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 334, i32 9 } }
@26 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 411, i32 11 }, ptr @0 }
@27 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 421, i32 9 } }
@28 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 421, i32 9 } }
@29 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 421, i32 9 } }
@30 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 496, i32 11 }, ptr @0 }
@31 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 506, i32 9 } }
@32 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 506, i32 9 } }
@33 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 506, i32 9 } }
@34 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 575, i32 11 }, ptr @0 }
@35 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 585, i32 9 } }
@36 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 585, i32 9 } }
@37 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 585, i32 9 } }
@38 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 649, i32 11 }, ptr @0 }
@39 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 658, i32 9 } }
@40 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 658, i32 9 } }
@41 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 658, i32 9 } }
@42 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 41, i32 45 }, ptr @0 }
@43 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 724, i32 14 }, ptr @0 }
@44 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 724, i32 19 }, ptr @0 }
@45 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 730, i32 9 } }
@46 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 730, i32 9 } }
@47 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 730, i32 9 } }
@48 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 724, i32 34 }, ptr @0 }
@49 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 809, i32 27 }, ptr @0 }
@50 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 811, i32 42 } }
@51 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 813, i32 33 } }
@52 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 813, i32 60 } }
@53 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 814, i32 33 } }
@54 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 814, i32 60 } }
@55 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 815, i32 33 } }
@56 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 815, i32 60 } }
@57 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 816, i32 33 } }
@58 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 816, i32 60 } }
@59 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 821, i32 33 } }
@60 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 821, i32 60 } }
@61 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 827, i32 20 }, ptr @0 }
@62 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 828, i32 33 } }
@63 = private unnamed_addr constant { i16, i16, [32 x i8] } { i16 0, i16 6, [32 x i8] c"'uint8_t' (aka 'unsigned char')\00" }
@64 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 828, i32 23 }, ptr @63, i8 0, i8 0 }
@65 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 828, i32 18 } }
@66 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 833, i32 5 } }
@67 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 834, i32 5 } }
@68 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 835, i32 5 } }
@69 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 840, i32 22 }, ptr @0 }
@70 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @.src, i32 842, i32 15 }, ptr @0 }
@crc_table = internal constant [256 x i32] [i32 0, i32 1996959894, i32 -301047508, i32 -1727442502, i32 124634137, i32 1886057615, i32 -379345611, i32 -1637575261, i32 249268274, i32 2044508324, i32 -522852066, i32 -1747789432, i32 162941995, i32 2125561021, i32 -407360249, i32 -1866523247, i32 498536548, i32 1789927666, i32 -205950648, i32 -2067906082, i32 450548861, i32 1843258603, i32 -187386543, i32 -2083289657, i32 325883990, i32 1684777152, i32 -43845254, i32 -1973040660, i32 335633487, i32 1661365465, i32 -99664541, i32 -1928851979, i32 997073096, i32 1281953886, i32 -715111964, i32 -1570279054, i32 1006888145, i32 1258607687, i32 -770865667, i32 -1526024853, i32 901097722, i32 1119000684, i32 -608450090, i32 -1396901568, i32 853044451, i32 1172266101, i32 -589951537, i32 -1412350631, i32 651767980, i32 1373503546, i32 -925412992, i32 -1076862698, i32 565507253, i32 1454621731, i32 -809855591, i32 -1195530993, i32 671266974, i32 1594198024, i32 -972236366, i32 -1324619484, i32 795835527, i32 1483230225, i32 -1050600021, i32 -1234817731, i32 1994146192, i32 31158534, i32 -1731059524, i32 -271249366, i32 1907459465, i32 112637215, i32 -1614814043, i32 -390540237, i32 2013776290, i32 251722036, i32 -1777751922, i32 -519137256, i32 2137656763, i32 141376813, i32 -1855689577, i32 -429695999, i32 1802195444, i32 476864866, i32 -2056965928, i32 -228458418, i32 1812370925, i32 453092731, i32 -2113342271, i32 -183516073, i32 1706088902, i32 314042704, i32 -1950435094, i32 -54949764, i32 1658658271, i32 366619977, i32 -1932296973, i32 -69972891, i32 1303535960, i32 984961486, i32 -1547960204, i32 -725929758, i32 1256170817, i32 1037604311, i32 -1529756563, i32 -740887301, i32 1131014506, i32 879679996, i32 -1385723834, i32 -631195440, i32 1141124467, i32 855842277, i32 -1442165665, i32 -586318647, i32 1342533948, i32 654459306, i32 -1106571248, i32 -921952122, i32 1466479909, i32 544179635, i32 -1184443383, i32 -832445281, i32 1591671054, i32 702138776, i32 -1328506846, i32 -942167884, i32 1504918807, i32 783551873, i32 -1212326853, i32 -1061524307, i32 -306674912, i32 -1698712650, i32 62317068, i32 1957810842, i32 -355121351, i32 -1647151185, i32 81470997, i32 1943803523, i32 -480048366, i32 -1805370492, i32 225274430, i32 2053790376, i32 -468791541, i32 -1828061283, i32 167816743, i32 2097651377, i32 -267414716, i32 -2029476910, i32 503444072, i32 1762050814, i32 -144550051, i32 -2140837941, i32 426522225, i32 1852507879, i32 -19653770, i32 -1982649376, i32 282753626, i32 1742555852, i32 -105259153, i32 -1900089351, i32 397917763, i32 1622183637, i32 -690576408, i32 -1580100738, i32 953729732, i32 1340076626, i32 -776247311, i32 -1497606297, i32 1068828381, i32 1219638859, i32 -670225446, i32 -1358292148, i32 906185462, i32 1090812512, i32 -547295293, i32 -1469587627, i32 829329135, i32 1181335161, i32 -882789492, i32 -1134132454, i32 628085408, i32 1382605366, i32 -871598187, i32 -1156888829, i32 570562233, i32 1426400815, i32 -977650754, i32 -1296233688, i32 733239954, i32 1555261956, i32 -1026031705, i32 -1244606671, i32 752459403, i32 1541320221, i32 -1687895376, i32 -328994266, i32 1969922972, i32 40735498, i32 -1677130071, i32 -351390145, i32 1913087877, i32 83908371, i32 -1782625662, i32 -491226604, i32 2075208622, i32 213261112, i32 -1831694693, i32 -438977011, i32 2094854071, i32 198958881, i32 -2032938284, i32 -237706686, i32 1759359992, i32 534414190, i32 -2118248755, i32 -155638181, i32 1873836001, i32 414664567, i32 -2012718362, i32 -15766928, i32 1711684554, i32 285281116, i32 -1889165569, i32 -127750551, i32 1634467795, i32 376229701, i32 -1609899400, i32 -686959890, i32 1308918612, i32 956543938, i32 -1486412191, i32 -799009033, i32 1231636301, i32 1047427035, i32 -1362007478, i32 -640263460, i32 1088359270, i32 936918000, i32 -1447252397, i32 -558129467, i32 1202900863, i32 817233897, i32 -1111625188, i32 -893730166, i32 1404277552, i32 615818150, i32 -1160759803, i32 -841546093, i32 1423857449, i32 601450431, i32 -1285129682, i32 -1000256840, i32 1567103746, i32 711928724, i32 -1274298825, i32 -1022587231, i32 1510334235, i32 755167117], align 16
@71 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 843, i32 44 } }
@72 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 843, i32 15 } }
@73 = private unnamed_addr global { { ptr, i32, i32 } } { { ptr, i32, i32 } { ptr @.src, i32 859, i32 40 } }
@.src.1 = private unnamed_addr constant [50 x i8] c"/usr/lib/llvm-24/lib/clang/24/include/emmintrin.h\00", align 1
@74 = private unnamed_addr constant { i16, i16, [49 x i8] } { i16 -1, i16 0, [49 x i8] c"'const __m128i' (vector of 2 'long long' values)\00" }
@75 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src.1, i32 3451, i32 10 }, ptr @74, i8 4, i8 0 }

; Function Attrs: nounwind uwtable
define hidden i32 @chorba_small_nondestructive_sse2(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 !func_sanitize !20 {
bb.a:
  %i.a = alloca [9 x i64], align 16               ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.a, i8 0, i64 72, i1 false)
  %i.b = zext i32 %0 to i64
  %i.c = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.b, i64 0
  %i.d = ptrtoint ptr %1 to i64                   ; 42 uses
  %i.e = icmp ne ptr %1, null                     ; 31 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.0597 = phi <2 x i64> [ %i.c, %bb.a ], [ %i.vx, %.backedge ] ; 2 uses
  %.0595 = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.vz, %.backedge ] ; 2 uses
  %.0593 = phi <2 x i64> [ zeroinitializer, %bb.a ], [ %i.wa, %.backedge ] ; 2 uses
  %.0591 = phi i64 [ 0, %bb.a ], [ %i.wc, %.backedge ] ; 8 uses
  %i.f = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.0591, i64 256), !nosanitize !12 ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 0, !nosanitize !12 ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.f, 1, !nosanitize !12
  br i1 %i.h, label %bb.c, label %bb.d, !prof !21, !nosanitize !12

bb.c:                                             ; preds = %bb.b
  call void @__ubsan_handle_add_overflow(ptr nonnull @1, i64 %.0591, i64 256) #8, !nosanitize !12
  br label %bb.d, !nosanitize !12

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.g, i64 40), !nosanitize !12 ; 2 uses
  %i.j = extractvalue { i64, i1 } %i.i, 0, !nosanitize !12 ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.i, 1, !nosanitize !12
  br i1 %i.k, label %bb.e, label %bb.f, !prof !21, !nosanitize !12

bb.e:                                             ; preds = %bb.d
  call void @__ubsan_handle_add_overflow(ptr nonnull @2, i64 %i.g, i64 40) #8, !nosanitize !12
  br label %bb.f, !nosanitize !12

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.j, i64 32), !nosanitize !12 ; 2 uses
  %i.m = extractvalue { i64, i1 } %i.l, 0, !nosanitize !12 ; 2 uses
  %i.n = extractvalue { i64, i1 } %i.l, 1, !nosanitize !12
  br i1 %i.n, label %bb.g, label %bb.h, !prof !21, !nosanitize !12

bb.g:                                             ; preds = %bb.f
  call void @__ubsan_handle_add_overflow(ptr nonnull @3, i64 %i.j, i64 32) #8, !nosanitize !12
  br label %bb.h, !nosanitize !12

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.o = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.m, i64 32), !nosanitize !12 ; 2 uses
  %i.p = extractvalue { i64, i1 } %i.o, 0, !nosanitize !12
  %i.q = extractvalue { i64, i1 } %i.o, 1, !nosanitize !12
  br i1 %i.q, label %bb.i, label %bb.j, !prof !21, !nosanitize !12

bb.i:                                             ; preds = %bb.h
  call void @__ubsan_handle_add_overflow(ptr nonnull @4, i64 %i.m, i64 32) #8, !nosanitize !12
  br label %bb.j, !nosanitize !12

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.r = icmp ult i64 %i.p, %2
  br i1 %i.r, label %bb.k, label %.preheader741

bb.k:                                             ; preds = %bb.j
  %i.s = lshr i64 %.0591, 3
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.s ; 6 uses
  %i.u = icmp sgt i64 %.0591, -1
  %i.v = add i64 %.0591, %i.d, !nosanitize !12    ; 3 uses
  %i.w = icmp eq i64 %i.v, 0
  %i.x = xor i1 %i.e, %i.w
  %i.y = icmp uge i64 %i.v, %i.d, !nosanitize !12
  %i.z = and i1 %i.u, %i.y, !nosanitize !12
  %i.aa = and i1 %i.x, %i.z, !nosanitize !12
  br i1 %i.aa, label %bb.m, label %bb.l, !prof !13, !nosanitize !12

bb.l:                                             ; preds = %bb.k
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @5, i64 %i.d, i64 %i.v) #7, !nosanitize !12
  br label %bb.m, !nosanitize !12

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 3 uses
  %i.ac = ptrtoint ptr %i.t to i64, !nosanitize !12 ; 4 uses
  %i.ad = add i64 %i.ac, 16, !nosanitize !12      ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  %i.af = xor i1 %i.e, %i.ae
  %i.ag = icmp ult ptr %i.t, inttoptr (i64 -16 to ptr)
  %i.ah = and i1 %i.ag, %i.af, !nosanitize !12
  br i1 %i.ah, label %bb.o, label %bb.n, !prof !13, !nosanitize !12

bb.n:                                             ; preds = %bb.m
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @6, i64 %i.ac, i64 %i.ad) #7, !nosanitize !12
  br label %bb.o, !nosanitize !12

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ai = and i64 %i.ac, 15, !nosanitize !12
  %i.aj = icmp eq i64 %i.ai, 0, !nosanitize !12
  %i.ak = and i1 %i.aj, %i.e
  br i1 %i.ak, label %_mm_load_si128.exit676, label %bb.p, !prof !13, !nosanitize !12

bb.p:                                             ; preds = %bb.o
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @75, i64 %i.ac) #7, !nosanitize !12
  br label %_mm_load_si128.exit676, !nosanitize !12

_mm_load_si128.exit676:                           ; preds = %bb.o, %bb.p
  %i.al = load <2 x i64>, ptr %i.t, align 16, !tbaa !22
  %i.am = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 3 uses
  %.not648 = icmp ugt ptr %i.ab, inttoptr (i64 -17 to ptr)
  br i1 %.not648, label %bb.q, label %_mm_load_si128.exit675, !prof !21, !nosanitize !12

bb.q:                                             ; preds = %_mm_load_si128.exit676
  %i.an = ptrtoint ptr %i.ab to i64, !nosanitize !12 ; 2 uses
  %i.ao = add i64 %i.an, 16, !nosanitize !12
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @7, i64 %i.an, i64 %i.ao) #7, !nosanitize !12
  br label %_mm_load_si128.exit675, !nosanitize !12

_mm_load_si128.exit675:                           ; preds = %bb.q, %_mm_load_si128.exit676
  %i.ap = load <2 x i64>, ptr %i.ab, align 16, !tbaa !22
  %i.aq = getelementptr inbounds nuw i8, ptr %i.t, i64 48 ; 3 uses
  %.not649 = icmp ugt ptr %i.am, inttoptr (i64 -17 to ptr)
  br i1 %.not649, label %bb.r, label %_mm_load_si128.exit674, !prof !21, !nosanitize !12

bb.r:                                             ; preds = %_mm_load_si128.exit675
  %i.ar = ptrtoint ptr %i.am to i64, !nosanitize !12 ; 2 uses
  %i.as = add i64 %i.ar, 16, !nosanitize !12
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @8, i64 %i.ar, i64 %i.as) #7, !nosanitize !12
  br label %_mm_load_si128.exit674, !nosanitize !12

_mm_load_si128.exit674:                           ; preds = %bb.r, %_mm_load_si128.exit675
  %i.at = load <2 x i64>, ptr %i.am, align 16, !tbaa !22
  %.not650 = icmp ugt ptr %i.aq, inttoptr (i64 -17 to ptr)
  br i1 %.not650, label %bb.s, label %_mm_load_si128.exit673, !prof !21, !nosanitize !12

bb.s:                                             ; preds = %_mm_load_si128.exit674
  %i.au = ptrtoint ptr %i.aq to i64, !nosanitize !12 ; 2 uses
  %i.av = add i64 %i.au, 16, !nosanitize !12
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @9, i64 %i.au, i64 %i.av) #7, !nosanitize !12
  br label %_mm_load_si128.exit673, !nosanitize !12

_mm_load_si128.exit673:                           ; preds = %bb.s, %_mm_load_si128.exit674
  %i.aw = load <2 x i64>, ptr %i.aq, align 16, !tbaa !22 ; 2 uses
  %i.ax = xor <2 x i64> %i.al, %.0597             ; 8 uses
  %i.ay = xor <2 x i64> %i.ap, %.0595             ; 8 uses
  %i.az = xor <2 x i64> %i.at, %.0593             ; 9 uses
  %i.ba = xor <2 x i64> %i.aw, %i.ax              ; 10 uses
  %i.bb = shufflevector <2 x i64> %i.ay, <2 x i64> %i.az, <2 x i32> <i32 1, i32 2> ; 3 uses
  %.uncasted722 = shufflevector <2 x i64> %i.ax, <2 x i64> %i.ay, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.bc = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.0591, i64 64), !nosanitize !12 ; 2 uses
  %i.bd = extractvalue { i64, i1 } %i.bc, 0, !nosanitize !12 ; 5 uses
  %i.be = extractvalue { i64, i1 } %i.bc, 1, !nosanitize !12
  br i1 %i.be, label %bb.t, label %bb.u, !prof !21, !nosanitize !12

bb.t:                                             ; preds = %_mm_load_si128.exit673
  call void @__ubsan_handle_add_overflow(ptr nonnull @10, i64 %.0591, i64 64) #8, !nosanitize !12
  br label %bb.u, !nosanitize !12

bb.u:                                             ; preds = %bb.t, %_mm_load_si128.exit673
  %i.bf = lshr i64 %i.bd, 3
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bf ; 4 uses
  %i.bh = icmp sgt i64 %i.bd, -1
  %i.bi = and i64 %i.bd, -8
  %i.bj = add i64 %i.bi, %i.d, !nosanitize !12    ; 4 uses
  %i.bk = icmp eq i64 %i.bj, 0
  %i.bl = xor i1 %i.e, %i.bk
  %i.bm = icmp uge i64 %i.bj, %i.d, !nosanitize !12
  %i.bn = and i1 %i.bh, %i.bm, !nosanitize !12
  %i.bo = and i1 %i.bl, %i.bn, !nosanitize !12    ; 2 uses
  br i1 %i.bo, label %bb.w, label %bb.v, !prof !13, !nosanitize !12

bb.v:                                             ; preds = %bb.u
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @11, i64 %i.d, i64 %i.bj) #7, !nosanitize !12
  br label %bb.w, !nosanitize !12

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bp = ptrtoint ptr %i.bg to i64, !nosanitize !12 ; 4 uses
  %i.bq = and i64 %i.bp, 15, !nosanitize !12
  %i.br = icmp eq i64 %i.bq, 0, !nosanitize !12
  %i.bs = and i1 %i.br, %i.e
  br i1 %i.bs, label %_mm_load_si128.exit672, label %bb.x, !prof !13, !nosanitize !12

bb.x:                                             ; preds = %bb.w
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @75, i64 %i.bp) #7, !nosanitize !12
  br label %_mm_load_si128.exit672, !nosanitize !12

_mm_load_si128.exit672:                           ; preds = %bb.w, %bb.x
  %i.bt = load <2 x i64>, ptr %i.bg, align 16, !tbaa !22
  br i1 %i.bo, label %bb.z, label %bb.y, !prof !13, !nosanitize !12

bb.y:                                             ; preds = %_mm_load_si128.exit672
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @12, i64 %i.d, i64 %i.bj) #7, !nosanitize !12
  br label %bb.z, !nosanitize !12

bb.z:                                             ; preds = %bb.y, %_mm_load_si128.exit672
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bv = add i64 %i.bp, 16, !nosanitize !12      ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 0
  %i.bx = xor i1 %i.e, %i.bw
  %i.by = icmp ult ptr %i.bg, inttoptr (i64 -16 to ptr)
  %i.bz = and i1 %i.by, %i.bx, !nosanitize !12
  br i1 %i.bz, label %_mm_load_si128.exit671, label %bb.aa, !prof !13, !nosanitize !12

bb.aa:                                            ; preds = %bb.z
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @13, i64 %i.bp, i64 %i.bv) #7, !nosanitize !12
end_hunk_0
begin_hunk_1_@chorba_small_nondestructive_sse2:bb.a
  %i.vo = lshr <2 x i64> %i.vg, splat (i64 45)
  %i.vp = shl <2 x i64> %i.vg, splat (i64 44)
  %i.vq = or disjoint <2 x i64> %i.vo, %i.vp
  %i.vr = lshr <2 x i64> %i.vg, splat (i64 20)    ; 2 uses
  %i.vs = shufflevector <2 x i64> %i.td, <2 x i64> %i.ux, <2 x i32> <i32 1, i32 2>
  %.uncasted738 = shufflevector <2 x i64> %i.ut, <2 x i64> %i.vn, <2 x i32> <i32 1, i32 2>
  %.uncasted739 = shufflevector <2 x i64> %i.ux, <2 x i64> %i.vr, <2 x i32> <i32 1, i32 2>
  %i.vt = shufflevector <2 x i64> %i.vn, <2 x i64> <i64 poison, i64 0>, <2 x i32> <i32 1, i32 3>
  %i.vu = xor <2 x i64> %i.vs, %i.uw
  %i.vv = xor <2 x i64> %i.vu, %i.vi
  %i.vw = xor <2 x i64> %i.vv, %i.vh
  %i.vx = xor <2 x i64> %i.vw, %.uncasted738
  %i.vy = xor <2 x i64> %.uncasted739, %i.vq
  %i.vz = xor <2 x i64> %i.vy, %i.vt
  %i.wa = shufflevector <2 x i64> %i.vr, <2 x i64> <i64 poison, i64 0>, <2 x i32> <i32 1, i32 3>
  %i.wb = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.th, i64 32), !nosanitize !12 ; 2 uses
  %i.wc = extractvalue { i64, i1 } %i.wb, 0, !nosanitize !12
  %i.wd = extractvalue { i64, i1 } %i.wb, 1, !nosanitize !12
  br i1 %i.wd, label %bb.cf, label %.backedge, !prof !21, !nosanitize !12

bb.cf:                                            ; preds = %_mm_load_si128.exit657
  call void @__ubsan_handle_add_overflow(ptr nonnull @42, i64 %i.th, i64 32) #8, !nosanitize !12
  br label %.backedge, !nosanitize !12

.backedge:                                        ; preds = %bb.cf, %_mm_load_si128.exit657
  br label %bb.b, !llvm.loop !14

.preheader741:                                    ; preds = %bb.j, %.preheader741.backedge
  %.1598 = phi <2 x i64> [ %i.yo, %.preheader741.backedge ], [ %.0597, %bb.j ] ; 2 uses
  %.1596 = phi <2 x i64> [ %i.yq, %.preheader741.backedge ], [ %.0595, %bb.j ] ; 3 uses
  %.1594 = phi <2 x i64> [ %i.yr, %.preheader741.backedge ], [ %.0593, %bb.j ] ; 2 uses
  %.1592 = phi i64 [ %i.yt, %.preheader741.backedge ], [ %.0591, %bb.j ] ; 13 uses
  %i.we = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.1592, i64 40), !nosanitize !12 ; 2 uses
  %i.wf = extractvalue { i64, i1 } %i.we, 0, !nosanitize !12 ; 2 uses
  %i.wg = extractvalue { i64, i1 } %i.we, 1, !nosanitize !12
  br i1 %i.wg, label %bb.cg, label %bb.ch, !prof !21, !nosanitize !12

bb.cg:                                            ; preds = %.preheader741
  call void @__ubsan_handle_add_overflow(ptr nonnull @43, i64 %.1592, i64 40) #8, !nosanitize !12
  br label %bb.ch, !nosanitize !12

bb.ch:                                            ; preds = %bb.cg, %.preheader741
  %i.wh = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.wf, i64 32), !nosanitize !12 ; 2 uses
  %i.wi = extractvalue { i64, i1 } %i.wh, 0, !nosanitize !12
  %i.wj = extractvalue { i64, i1 } %i.wh, 1, !nosanitize !12
  br i1 %i.wj, label %bb.ci, label %bb.cj, !prof !21, !nosanitize !12

bb.ci:                                            ; preds = %bb.ch
  call void @__ubsan_handle_add_overflow(ptr nonnull @44, i64 %i.wf, i64 32) #8, !nosanitize !12
  br label %bb.cj, !nosanitize !12

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %i.wk = icmp ult i64 %i.wi, %2
  br i1 %i.wk, label %bb.ck, label %bb.cs

bb.ck:                                            ; preds = %bb.cj
  %i.wl = lshr i64 %.1592, 3
  %i.wm = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.wl ; 4 uses
  %i.wn = icmp sgt i64 %.1592, -1
  %i.wo = add i64 %.1592, %i.d, !nosanitize !12   ; 4 uses
  %i.wp = icmp eq i64 %i.wo, 0
  %i.wq = xor i1 %i.e, %i.wp
  %i.wr = icmp uge i64 %i.wo, %i.d, !nosanitize !12
  %i.ws = and i1 %i.wn, %i.wr, !nosanitize !12
  %i.wt = and i1 %i.wq, %i.ws, !nosanitize !12    ; 2 uses
  br i1 %i.wt, label %bb.cm, label %bb.cl, !prof !13, !nosanitize !12

bb.cl:                                            ; preds = %bb.ck
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @45, i64 %i.d, i64 %i.wo) #7, !nosanitize !12
  br label %bb.cm, !nosanitize !12

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %i.wu = ptrtoint ptr %i.wm to i64, !nosanitize !12 ; 4 uses
  %i.wv = and i64 %i.wu, 15, !nosanitize !12
  %i.ww = icmp eq i64 %i.wv, 0, !nosanitize !12
  %i.wx = and i1 %i.ww, %i.e
  br i1 %i.wx, label %_mm_load_si128.exit656, label %bb.cn, !prof !13, !nosanitize !12

bb.cn:                                            ; preds = %bb.cm
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @75, i64 %i.wu) #7, !nosanitize !12
  br label %_mm_load_si128.exit656, !nosanitize !12

_mm_load_si128.exit656:                           ; preds = %bb.cm, %bb.cn
  %i.wy = load <2 x i64>, ptr %i.wm, align 16, !tbaa !22
  br i1 %i.wt, label %bb.cp, label %bb.co, !prof !13, !nosanitize !12

bb.co:                                            ; preds = %_mm_load_si128.exit656
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @46, i64 %i.d, i64 %i.wo) #7, !nosanitize !12
  br label %bb.cp, !nosanitize !12

bb.cp:                                            ; preds = %bb.co, %_mm_load_si128.exit656
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wm, i64 16
  %i.xa = add i64 %i.wu, 16, !nosanitize !12      ; 2 uses
  %i.xb = icmp eq i64 %i.xa, 0
  %i.xc = xor i1 %i.e, %i.xb
  %i.xd = icmp ult ptr %i.wm, inttoptr (i64 -16 to ptr)
  %i.xe = and i1 %i.xd, %i.xc, !nosanitize !12
  br i1 %i.xe, label %_mm_load_si128.exit655, label %bb.cq, !prof !13, !nosanitize !12

bb.cq:                                            ; preds = %bb.cp
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @47, i64 %i.wu, i64 %i.xa) #7, !nosanitize !12
  br label %_mm_load_si128.exit655, !nosanitize !12

_mm_load_si128.exit655:                           ; preds = %bb.cp, %bb.cq
  %i.xf = load <2 x i64>, ptr %i.wz, align 16, !tbaa !22
  %i.xg = xor <2 x i64> %i.wy, %.1598             ; 8 uses
  %i.xh = shl <2 x i64> %i.xg, splat (i64 17)
  %i.xi = shl <2 x i64> %i.xg, splat (i64 55)
  %i.xj = lshr <2 x i64> %i.xg, splat (i64 47)
  %i.xk = lshr <2 x i64> %i.xg, splat (i64 9)
  %i.xl = xor <2 x i64> %i.xj, %i.xk
  %i.xm = shl <2 x i64> %i.xg, splat (i64 19)
  %i.xn = xor <2 x i64> %i.xl, %i.xm              ; 2 uses
  %i.xo = lshr <2 x i64> %i.xg, splat (i64 45)
  %i.xp = shl <2 x i64> %i.xg, splat (i64 44)
  %i.xq = or disjoint <2 x i64> %i.xo, %i.xp
  %i.xr = lshr <2 x i64> %i.xg, splat (i64 20)    ; 2 uses
  %i.xs = shufflevector <2 x i64> %i.xn, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 2, i32 0>
  %i.xt = xor <2 x i64> %i.xi, %i.xh
  %i.xu = xor <2 x i64> %i.xt, %i.xs
  %i.xv = xor <2 x i64> %i.xu, %i.xf
  %i.xw = xor <2 x i64> %i.xv, %.1596             ; 8 uses
  %i.xx = shl <2 x i64> %i.xw, splat (i64 17)
  %i.xy = shl <2 x i64> %i.xw, splat (i64 55)
  %i.xz = lshr <2 x i64> %i.xw, splat (i64 47)
  %i.ya = lshr <2 x i64> %i.xw, splat (i64 9)
  %i.yb = xor <2 x i64> %i.xz, %i.ya
  %i.yc = shl <2 x i64> %i.xw, splat (i64 19)
  %i.yd = xor <2 x i64> %i.yb, %i.yc              ; 2 uses
  %i.ye = lshr <2 x i64> %i.xw, splat (i64 45)
  %i.yf = shl <2 x i64> %i.xw, splat (i64 44)
  %i.yg = or disjoint <2 x i64> %i.ye, %i.yf
  %i.yh = lshr <2 x i64> %i.xw, splat (i64 20)    ; 2 uses
  %.uncasted = shufflevector <2 x i64> %i.xn, <2 x i64> %i.yd, <2 x i32> <i32 1, i32 2>
  %i.yi = shufflevector <2 x i64> %i.xr, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 2, i32 0>
  %i.yj = shufflevector <2 x i64> %i.yd, <2 x i64> <i64 poison, i64 0>, <2 x i32> <i32 1, i32 3>
  %.uncasted721 = shufflevector <2 x i64> %i.xr, <2 x i64> %i.yh, <2 x i32> <i32 1, i32 2>
  %i.yk = xor <2 x i64> %i.yi, %i.xq
  %i.yl = xor <2 x i64> %i.yk, %i.xy
  %i.ym = xor <2 x i64> %i.yl, %i.xx
  %i.yn = xor <2 x i64> %i.ym, %.uncasted
  %i.yo = xor <2 x i64> %i.yn, %.1594
  %i.yp = xor <2 x i64> %i.yg, %.uncasted721
  %i.yq = xor <2 x i64> %i.yp, %i.yj
  %i.yr = shufflevector <2 x i64> %i.yh, <2 x i64> <i64 poison, i64 0>, <2 x i32> <i32 1, i32 3>
  %i.ys = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.1592, i64 32), !nosanitize !12 ; 2 uses
  %i.yt = extractvalue { i64, i1 } %i.ys, 0, !nosanitize !12
  %i.yu = extractvalue { i64, i1 } %i.ys, 1, !nosanitize !12
  br i1 %i.yu, label %bb.cr, label %.preheader741.backedge, !prof !21, !nosanitize !12

bb.cr:                                            ; preds = %_mm_load_si128.exit655
  call void @__ubsan_handle_add_overflow(ptr nonnull @48, i64 %.1592, i64 32) #8, !nosanitize !12
  br label %.preheader741.backedge, !nosanitize !12

.preheader741.backedge:                           ; preds = %bb.cr, %_mm_load_si128.exit655
  br label %.preheader741, !llvm.loop !15

bb.cs:                                            ; preds = %bb.cj
  %i.yv = extractelement <2 x i64> %.1596, i64 0  ; 2 uses
  %i.yw = extractelement <2 x i64> %.1596, i64 1
  %i.yx = extractelement <2 x i64> %.1594, i64 0
  %i.yy = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %2, i64 %.1592), !nosanitize !12 ; 2 uses
  %i.yz = extractvalue { i64, i1 } %i.yy, 0, !nosanitize !12 ; 4 uses
  %i.za = extractvalue { i64, i1 } %i.yy, 1, !nosanitize !12 ; 2 uses
  br i1 %i.za, label %bb.ct, label %bb.cu, !prof !21, !nosanitize !12

bb.ct:                                            ; preds = %bb.cs
  call void @__ubsan_handle_sub_overflow(ptr nonnull @49, i64 %2, i64 %.1592) #8, !nosanitize !12
  br label %bb.cu, !nosanitize !12

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %i.zb = lshr i64 %.1592, 3
  %i.zc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.zb ; 2 uses
  %i.zd = icmp sgt i64 %.1592, -1
  %i.ze = and i64 %.1592, -8
  %i.zf = add i64 %i.ze, %i.d, !nosanitize !12    ; 3 uses
  %i.zg = icmp eq i64 %i.zf, 0
  %i.zh = xor i1 %i.e, %i.zg
  %i.zi = icmp uge i64 %i.zf, %i.d, !nosanitize !12
  %i.zj = and i1 %i.zd, %i.zi, !nosanitize !12
  %i.zk = and i1 %i.zh, %i.zj, !nosanitize !12
  br i1 %i.zk, label %bb.cw, label %bb.cv, !prof !13, !nosanitize !12

bb.cv:                                            ; preds = %bb.cu
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @50, i64 %i.d, i64 %i.zf) #7, !nosanitize !12
  br label %bb.cw, !nosanitize !12

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %i.zl = icmp ugt i64 %i.yz, 63
  br i1 %i.zl, label %.lr.ph, label %.preheader740

.preheader740:                                    ; preds = %_mm_load_si128.exit651, %bb.cw
  %.0588.lcssa = phi i64 [ %i.yz, %bb.cw ], [ %i.aau, %_mm_load_si128.exit651 ] ; 3 uses
  %.0586.lcssa = phi ptr [ %i.a, %bb.cw ], [ %i.aap, %_mm_load_si128.exit651 ] ; 2 uses
  %.0585.lcssa = phi ptr [ %i.zc, %bb.cw ], [ %i.aaq, %_mm_load_si128.exit651 ] ; 2 uses
  %i.zm = icmp samesign ugt i64 %.0588.lcssa, 15
  br i1 %i.zm, label %.lr.ph750, label %.preheader

.lr.ph:                                           ; preds = %bb.cw, %_mm_load_si128.exit651
  %.0585744 = phi ptr [ %i.aaq, %_mm_load_si128.exit651 ], [ %i.zc, %bb.cw ] ; 8 uses
  %.0586743 = phi ptr [ %i.aap, %_mm_load_si128.exit651 ], [ %i.a, %bb.cw ] ; 7 uses
  %.0588742 = phi i64 [ %i.aau, %_mm_load_si128.exit651 ], [ %i.yz, %bb.cw ]
  %i.zn = getelementptr inbounds nuw i8, ptr %.0586743, i64 16 ; 3 uses
  %.not641 = icmp ugt ptr %.0586743, inttoptr (i64 -17 to ptr)
  br i1 %.not641, label %bb.cx, label %bb.cy, !prof !21, !nosanitize !12

bb.cx:                                            ; preds = %.lr.ph
  %i.zo = ptrtoint ptr %.0586743 to i64, !nosanitize !12 ; 2 uses
  %i.zp = add i64 %i.zo, 16, !nosanitize !12
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @51, i64 %i.zo, i64 %i.zp) #7, !nosanitize !12
  br label %bb.cy, !nosanitize !12

bb.cy:                                            ; preds = %bb.cx, %.lr.ph
  %i.zq = getelementptr inbounds nuw i8, ptr %.0585744, i64 16 ; 3 uses
  %i.zr = ptrtoint ptr %.0585744 to i64, !nosanitize !12 ; 4 uses
  %i.zs = add i64 %i.zr, 16, !nosanitize !12      ; 2 uses
  %i.zt = icmp ne ptr %.0585744, null, !nosanitize !12 ; 2 uses
  %i.zu = icmp ne i64 %i.zs, 0
  %i.zv = icmp ult ptr %.0585744, inttoptr (i64 -16 to ptr)
  %i.zw = and i1 %i.zv, %i.zu
  %i.zx = and i1 %i.zt, %i.zw
  br i1 %i.zx, label %bb.da, label %bb.cz, !prof !13, !nosanitize !12

bb.cz:                                            ; preds = %bb.cy
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @52, i64 %i.zr, i64 %i.zs) #7, !nosanitize !12
  br label %bb.da, !nosanitize !12

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %i.zy = and i64 %i.zr, 15, !nosanitize !12
  %i.zz = icmp eq i64 %i.zy, 0, !nosanitize !12
  %i.aaa = and i1 %i.zt, %i.zz
  br i1 %i.aaa, label %_mm_store_si128.exit680, label %bb.db, !prof !13, !nosanitize !12

bb.db:                                            ; preds = %bb.da
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @75, i64 %i.zr) #7, !nosanitize !12
  br label %_mm_store_si128.exit680, !nosanitize !12

_mm_store_si128.exit680:                          ; preds = %bb.db, %bb.da
  %3 = load <2 x i64>, ptr %.0585744, align 16, !tbaa !22
  store <2 x i64> %3, ptr %.0586743, align 16, !tbaa !22
  %i.aab = getelementptr inbounds nuw i8, ptr %.0586743, i64 32 ; 3 uses
  %.not642 = icmp ugt ptr %i.zn, inttoptr (i64 -17 to ptr)
  br i1 %.not642, label %bb.dc, label %bb.dd, !prof !21, !nosanitize !12

bb.dc:                                            ; preds = %_mm_store_si128.exit680
  %i.aac = ptrtoint ptr %i.zn to i64, !nosanitize !12 ; 2 uses
  %i.aad = add i64 %i.aac, 16, !nosanitize !12
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @53, i64 %i.aac, i64 %i.aad) #7, !nosanitize !12
  br label %bb.dd, !nosanitize !12

bb.dd:                                            ; preds = %bb.dc, %_mm_store_si128.exit680
  %i.aae = getelementptr inbounds nuw i8, ptr %.0585744, i64 32 ; 3 uses
  %.not643 = icmp ugt ptr %i.zq, inttoptr (i64 -17 to ptr)
  br i1 %.not643, label %bb.de, label %_mm_load_si128.exit653, !prof !21, !nosanitize !12

bb.de:                                            ; preds = %bb.dd
  %i.aaf = ptrtoint ptr %i.zq to i64, !nosanitize !12 ; 2 uses
  %i.aag = add i64 %i.aaf, 16, !nosanitize !12
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @54, i64 %i.aaf, i64 %i.aag) #7, !nosanitize !12
  br label %_mm_load_si128.exit653, !nosanitize !12

_mm_load_si128.exit653:                           ; preds = %bb.dd, %bb.de
  %i.aah = load <2 x i64>, ptr %i.zq, align 16, !tbaa !22
  store <2 x i64> %i.aah, ptr %i.zn, align 16, !tbaa !22
  %i.aai = getelementptr inbounds nuw i8, ptr %.0586743, i64 48 ; 2 uses
  %.not644 = icmp ugt ptr %i.aab, inttoptr (i64 -17 to ptr)
  br i1 %.not644, label %bb.df, label %bb.dg, !prof !21, !nosanitize !12

bb.df:                                            ; preds = %_mm_load_si128.exit653
  %i.aaj = ptrtoint ptr %i.aab to i64, !nosanitize !12 ; 2 uses
  %i.aak = add i64 %i.aaj, 16, !nosanitize !12
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @55, i64 %i.aaj, i64 %i.aak) #7, !nosanitize !12
  br label %bb.dg, !nosanitize !12

bb.dg:                                            ; preds = %bb.df, %_mm_load_si128.exit653
  %i.aal = getelementptr inbounds nuw i8, ptr %.0585744, i64 48 ; 3 uses
  %.not645 = icmp ugt ptr %i.aae, inttoptr (i64 -17 to ptr)
  br i1 %.not645, label %bb.dh, label %_mm_load_si128.exit652, !prof !21, !nosanitize !12

bb.dh:                                            ; preds = %bb.dg
  %i.aam = ptrtoint ptr %i.aae to i64, !nosanitize !12 ; 2 uses
  %i.aan = add i64 %i.aam, 16, !nosanitize !12
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @56, i64 %i.aam, i64 %i.aan) #7, !nosanitize !12
  br label %_mm_load_si128.exit652, !nosanitize !12

_mm_load_si128.exit652:                           ; preds = %bb.dg, %bb.dh
  %i.aao = load <2 x i64>, ptr %i.aae, align 16, !tbaa !22
  store <2 x i64> %i.aao, ptr %i.aab, align 16, !tbaa !22
  %i.aap = getelementptr inbounds nuw i8, ptr %.0586743, i64 64 ; 2 uses
  %.not646 = icmp eq ptr %i.aai, inttoptr (i64 -16 to ptr)
  br i1 %.not646, label %bb.di, label %bb.dj, !prof !21, !nosanitize !12

bb.di:                                            ; preds = %_mm_load_si128.exit652
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @57, i64 -16, i64 0) #7, !nosanitize !12
  br label %bb.dj, !nosanitize !12

bb.dj:                                            ; preds = %bb.di, %_mm_load_si128.exit652
  %i.aaq = getelementptr inbounds nuw i8, ptr %.0585744, i64 64 ; 2 uses
  %.not647 = icmp ugt ptr %i.aal, inttoptr (i64 -17 to ptr)
  br i1 %.not647, label %bb.dk, label %_mm_load_si128.exit651, !prof !21, !nosanitize !12

bb.dk:                                            ; preds = %bb.dj
  %i.aar = ptrtoint ptr %i.aal to i64, !nosanitize !12 ; 2 uses
  %i.aas = add i64 %i.aar, 16, !nosanitize !12
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @58, i64 %i.aar, i64 %i.aas) #7, !nosanitize !12
  br label %_mm_load_si128.exit651, !nosanitize !12

_mm_load_si128.exit651:                           ; preds = %bb.dj, %bb.dk
  %i.aat = load <2 x i64>, ptr %i.aal, align 16, !tbaa !22
  store <2 x i64> %i.aat, ptr %i.aai, align 16, !tbaa !22
  %i.aau = add i64 %.0588742, -64                 ; 3 uses
  %i.aav = icmp ugt i64 %i.aau, 63
  br i1 %i.aav, label %.lr.ph, label %.preheader740, !llvm.loop !16

.preheader:                                       ; preds = %_mm_store_si128.exit, %.preheader740
  %.1589.lcssa = phi i64 [ %.0588.lcssa, %.preheader740 ], [ %i.abm, %_mm_store_si128.exit ]
  %.1587.lcssa = phi ptr [ %.0586.lcssa, %.preheader740 ], [ %i.aay, %_mm_store_si128.exit ]
  %.1.lcssa = phi ptr [ %.0585.lcssa, %.preheader740 ], [ %i.abb, %_mm_store_si128.exit ]
  %i.aaw = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %.1589.lcssa, i64 1), !nosanitize !12 ; 2 uses
  %i.aax = extractvalue { i64, i1 } %i.aaw, 1, !nosanitize !12
  br i1 %i.aax, label %._crit_edge, label %.lr.ph756, !prof !24, !nosanitize !12

.lr.ph750:                                        ; preds = %.preheader740, %_mm_store_si128.exit
  %.1749 = phi ptr [ %i.abb, %_mm_store_si128.exit ], [ %.0585.lcssa, %.preheader740 ] ; 5 uses
  %.1587748 = phi ptr [ %i.aay, %_mm_store_si128.exit ], [ %.0586.lcssa, %.preheader740 ] ; 4 uses
  %.1589747 = phi i64 [ %i.abm, %_mm_store_si128.exit ], [ %.0588.lcssa, %.preheader740 ]
  %i.aay = getelementptr inbounds nuw i8, ptr %.1587748, i64 16 ; 2 uses
  %.not640 = icmp ugt ptr %.1587748, inttoptr (i64 -17 to ptr)
  br i1 %.not640, label %bb.dl, label %bb.dm, !prof !21, !nosanitize !12

bb.dl:                                            ; preds = %.lr.ph750
  %i.aaz = ptrtoint ptr %.1587748 to i64, !nosanitize !12 ; 2 uses
  %i.aba = add i64 %i.aaz, 16, !nosanitize !12
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @59, i64 %i.aaz, i64 %i.aba) #7, !nosanitize !12
  br label %bb.dm, !nosanitize !12

bb.dm:                                            ; preds = %bb.dl, %.lr.ph750
  %i.abb = getelementptr inbounds nuw i8, ptr %.1749, i64 16 ; 2 uses
  %i.abc = ptrtoint ptr %.1749 to i64, !nosanitize !12 ; 4 uses
  %i.abd = add i64 %i.abc, 16, !nosanitize !12    ; 2 uses
  %i.abe = icmp ne ptr %.1749, null, !nosanitize !12 ; 2 uses
  %i.abf = icmp ne i64 %i.abd, 0
  %i.abg = icmp ult ptr %.1749, inttoptr (i64 -16 to ptr)
  %i.abh = and i1 %i.abg, %i.abf
  %i.abi = and i1 %i.abe, %i.abh
  br i1 %i.abi, label %bb.do, label %bb.dn, !prof !13, !nosanitize !12

bb.dn:                                            ; preds = %bb.dm
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @60, i64 %i.abc, i64 %i.abd) #7, !nosanitize !12
  br label %bb.do, !nosanitize !12

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %i.abj = and i64 %i.abc, 15, !nosanitize !12
  %i.abk = icmp eq i64 %i.abj, 0, !nosanitize !12
  %i.abl = and i1 %i.abe, %i.abk
  br i1 %i.abl, label %_mm_store_si128.exit, label %bb.dp, !prof !13, !nosanitize !12

bb.dp:                                            ; preds = %bb.do
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @75, i64 %i.abc) #7, !nosanitize !12
  br label %_mm_store_si128.exit, !nosanitize !12

_mm_store_si128.exit:                             ; preds = %bb.dp, %bb.do
  %4 = load <2 x i64>, ptr %.1749, align 16, !tbaa !22
  store <2 x i64> %4, ptr %.1587748, align 16, !tbaa !22
  %i.abm = add nsw i64 %.1589747, -16             ; 3 uses
  %i.abn = icmp ugt i64 %i.abm, 15
  br i1 %i.abn, label %.lr.ph750, label %.preheader, !llvm.loop !17

.lr.ph756:                                        ; preds = %.preheader, %bb.dv
  %.pn = phi { i64, i1 } [ %i.aby, %bb.dv ], [ %i.aaw, %.preheader ]
  %.0583755 = phi ptr [ %i.abw, %bb.dv ], [ %.1587.lcssa, %.preheader ] ; 4 uses
  %.0584754 = phi ptr [ %i.abp, %bb.dv ], [ %.1.lcssa, %.preheader ] ; 4 uses
  %i.abo = extractvalue { i64, i1 } %.pn, 0
  %i.abp = getelementptr inbounds nuw i8, ptr %.0584754, i64 1
  %i.abq = ptrtoint ptr %.0584754 to i64, !nosanitize !12 ; 3 uses
  %i.abr = add i64 %i.abq, 1, !nosanitize !12     ; 2 uses
  %i.abs = icmp ne ptr %.0584754, null, !nosanitize !12 ; 2 uses
  %i.abt = icmp ne i64 %i.abr, 0
  %i.abu = and i1 %i.abs, %i.abt, !nosanitize !12
  br i1 %i.abu, label %bb.dr, label %bb.dq, !prof !13, !nosanitize !12

bb.dq:                                            ; preds = %.lr.ph756
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @62, i64 %i.abq, i64 %i.abr) #7, !nosanitize !12
  br label %bb.dr, !nosanitize !12

bb.dr:                                            ; preds = %bb.dq, %.lr.ph756
  br i1 %i.abs, label %bb.dt, label %bb.ds, !prof !13, !nosanitize !12

bb.ds:                                            ; preds = %bb.dr
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @64, i64 %i.abq) #7, !nosanitize !12
  br label %bb.dt, !nosanitize !12

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %i.abv = load i8, ptr %.0584754, align 1, !tbaa !22
  %i.abw = getelementptr inbounds nuw i8, ptr %.0583755, i64 1
  %.not638 = icmp eq ptr %.0583755, inttoptr (i64 -1 to ptr)
  br i1 %.not638, label %bb.du, label %bb.dv, !prof !21, !nosanitize !12

bb.du:                                            ; preds = %bb.dt
  %i.abx = ptrtoint ptr %.0583755 to i64, !nosanitize !12
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @65, i64 %i.abx, i64 0) #7, !nosanitize !12
  br label %bb.dv, !nosanitize !12

bb.dv:                                            ; preds = %bb.dt, %bb.du
  store i8 %i.abv, ptr %.0583755, align 1, !tbaa !22
  %i.aby = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.abo, i64 1), !nosanitize !12 ; 2 uses
  %i.abz = extractvalue { i64, i1 } %i.aby, 1, !nosanitize !12
  br i1 %i.abz, label %._crit_edge, label %.lr.ph756, !prof !25, !llvm.loop !18, !nosanitize !12

._crit_edge:                                      ; preds = %bb.dv, %.preheader
  call void @__ubsan_handle_sub_overflow(ptr nonnull @61, i64 0, i64 1) #8, !nosanitize !12
  %i.aca = ptrtoint ptr %i.a to i64, !nosanitize !12 ; 6 uses
  %i.acb = load <2 x i64>, ptr %i.a, align 16, !tbaa !27
  %i.acc = xor <2 x i64> %i.acb, %.1598
  store <2 x i64> %i.acc, ptr %i.a, align 16, !tbaa !27
  %i.acd = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %.not631 = icmp eq ptr %i.a, inttoptr (i64 -16 to ptr)
  br i1 %.not631, label %.thread, label %bb.dw, !prof !21, !nosanitize !12

.thread:                                          ; preds = %._crit_edge
  %i.ace = add i64 %i.aca, 16, !nosanitize !12
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @66, i64 %i.aca, i64 %i.ace) #7, !nosanitize !12
  %i.acf = load i64, ptr %i.acd, align 16, !tbaa !27
  %i.acg = xor i64 %i.acf, %i.yv
  store i64 %i.acg, ptr %i.acd, align 16, !tbaa !27
  %i.ach = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %bb.dx

bb.dw:                                            ; preds = %._crit_edge
  %i.aci = load i64, ptr %i.acd, align 16, !tbaa !27
  %i.acj = xor i64 %i.aci, %i.yv
  store i64 %i.acj, ptr %i.acd, align 16, !tbaa !27
  %i.ack = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %.not632 = icmp ugt ptr %i.a, inttoptr (i64 -25 to ptr)
  br i1 %.not632, label %bb.dx, label %bb.dy, !prof !28, !nosanitize !12

bb.dx:                                            ; preds = %.thread, %bb.dw
  %i.acl = phi ptr [ %i.ach, %.thread ], [ %i.ack, %bb.dw ]
  %i.acm = add i64 %i.aca, 24, !nosanitize !12
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @67, i64 %i.aca, i64 %i.acm) #7, !nosanitize !12
  br label %bb.dy, !nosanitize !12

bb.dy:                                            ; preds = %bb.dw, %bb.dx
  %i.acn = phi ptr [ %i.ack, %bb.dw ], [ %i.acl, %bb.dx ] ; 2 uses
  %i.aco = load i64, ptr %i.acn, align 8, !tbaa !27
  %i.acp = xor i64 %i.aco, %i.yw
  store i64 %i.acp, ptr %i.acn, align 8, !tbaa !27
  %i.acq = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %.not633 = icmp ugt ptr %i.a, inttoptr (i64 -33 to ptr)
  br i1 %.not633, label %bb.dz, label %bb.ea, !prof !21, !nosanitize !12

bb.dz:                                            ; preds = %bb.dy
  %i.acr = add i64 %i.aca, 32, !nosanitize !12
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @68, i64 %i.aca, i64 %i.acr) #7, !nosanitize !12
  br label %bb.ea, !nosanitize !12

bb.ea:                                            ; preds = %bb.dy, %bb.dz
  %i.acs = load i64, ptr %i.acq, align 16, !tbaa !27
  %i.act = xor i64 %i.acs, %i.yx
  store i64 %i.act, ptr %i.acq, align 16, !tbaa !27
  br i1 %i.za, label %bb.eb, label %bb.ec, !prof !21, !nosanitize !12

bb.eb:                                            ; preds = %bb.ea
  call void @__ubsan_handle_sub_overflow(ptr nonnull @69, i64 %2, i64 %.1592) #8, !nosanitize !12
  br label %bb.ec, !nosanitize !12

bb.ec:                                            ; preds = %bb.eb, %bb.ea
  %i.acu = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.yz, i64 1), !nosanitize !12 ; 2 uses
  %i.acv = extractvalue { i64, i1 } %i.acu, 1, !nosanitize !12
  br i1 %i.acv, label %._crit_edge762, label %.lr.ph761, !prof !24, !nosanitize !12

.lr.ph761:                                        ; preds = %bb.ec, %bb.eg
  %.pn765 = phi { i64, i1 } [ %i.adi, %bb.eg ], [ %i.acu, %bb.ec ]
  %.0582759 = phi ptr [ %i.acx, %bb.eg ], [ %i.a, %bb.ec ] ; 4 uses
  %.0590758 = phi i32 [ %i.adh, %bb.eg ], [ 0, %bb.ec ] ; 2 uses
  %i.acw = extractvalue { i64, i1 } %.pn765, 0
  %i.acx = getelementptr inbounds nuw i8, ptr %.0582759, i64 1
  %.not635 = icmp eq ptr %.0582759, inttoptr (i64 -1 to ptr)
  br i1 %.not635, label %bb.ed, label %bb.ee, !prof !21, !nosanitize !12

bb.ed:                                            ; preds = %.lr.ph761
  %i.acy = ptrtoint ptr %.0582759 to i64, !nosanitize !12 ; 2 uses
  %i.acz = add i64 %i.acy, 1, !nosanitize !12
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @71, i64 %i.acy, i64 %i.acz) #7, !nosanitize !12
  br label %bb.ee, !nosanitize !12

bb.ee:                                            ; preds = %.lr.ph761, %bb.ed
  %i.ada = load i8, ptr %.0582759, align 1, !tbaa !22
  %.0590.tr = trunc i32 %.0590758 to i8
  %.narrow = xor i8 %i.ada, %.0590.tr
  %i.adb = zext i8 %.narrow to i64                ; 2 uses
  %i.adc = getelementptr inbounds nuw [4 x i8], ptr @crc_table, i64 %i.adb
  %i.add = shl nuw nsw i64 %i.adb, 2
  %i.ade = add i64 %i.add, ptrtoint (ptr @crc_table to i64), !nosanitize !12 ; 2 uses
  %.not637 = icmp ult i64 %i.ade, ptrtoint (ptr @crc_table to i64), !nosanitize !12
  br i1 %.not637, label %bb.ef, label %bb.eg, !prof !21, !nosanitize !12

bb.ef:                                            ; preds = %bb.ee
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @72, i64 ptrtoint (ptr @crc_table to i64), i64 %i.ade) #7, !nosanitize !12
  br label %bb.eg, !nosanitize !12

bb.eg:                                            ; preds = %bb.ee, %bb.ef
  %i.adf = load i32, ptr %i.adc, align 4, !tbaa !29
  %i.adg = lshr i32 %.0590758, 8
  %i.adh = xor i32 %i.adf, %i.adg                 ; 2 uses
  %i.adi = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.acw, i64 1), !nosanitize !12 ; 2 uses
  %i.adj = extractvalue { i64, i1 } %i.adi, 1, !nosanitize !12
  br i1 %i.adj, label %._crit_edge762, label %.lr.ph761, !prof !25, !llvm.loop !19, !nosanitize !12

._crit_edge762:                                   ; preds = %bb.eg, %bb.ec
  %.0590.lcssa = phi i32 [ 0, %bb.ec ], [ %i.adh, %bb.eg ]
  call void @__ubsan_handle_sub_overflow(ptr nonnull @70, i64 0, i64 1) #8, !nosanitize !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.0590.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #3

; Function Attrs: uwtable
declare void @__ubsan_handle_add_overflow(ptr, i64, i64) local_unnamed_addr #4

; Function Attrs: uwtable
declare void @__ubsan_handle_pointer_overflow(ptr, i64, i64) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #3

; Function Attrs: uwtable
declare void @__ubsan_handle_sub_overflow(ptr, i64, i64) local_unnamed_addr #4

; Function Attrs: uwtable
declare void @__ubsan_handle_type_mismatch_v1(ptr, i64) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden i32 @crc32_chorba_sse2(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #5 !func_sanitize !30 {
bb.a:
  %i.a = xor i32 %0, -1                           ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = sub i64 0, %i.b
  %i.d = and i64 %i.c, 15                         ; 6 uses
  %i.e = add nuw nsw i64 %i.d, 72
  %i.f = icmp ugt i64 %2, %i.e
  br i1 %i.f, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = call i32 @crc32_braid_internal(i32 noundef %i.a, ptr noundef %1, i64 noundef %i.d) #7
  %i.h = sub nuw i64 %2, %i.d
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
end_hunk_1
