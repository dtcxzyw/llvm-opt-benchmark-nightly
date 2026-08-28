Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/quiche_client.quiche_client.fa529efd9b26878d-cgu.15?download=true
inline.NumInlined: 297
inline.NumDeleted: 150
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [61 x i8] c",registering event source with poller: token=\C0\0C, interests=\C0\00", align 1
@_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER = external local_unnamed_addr global { { { i64 } } }
@1 = private unnamed_addr constant [91 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/mio-1.2.2/src/poll.rs\00", align 1
@2 = private unnamed_addr constant [9 x i8] c"mio::poll", align 1
@3 = private unnamed_addr constant [23 x i8] c"No host name in the URL", align 1
@4 = private unnamed_addr constant [25 x i8] c"No port number in the URL", align 1
@5 = private unnamed_addr constant [17 x i8] c"relative_to_epoch", align 1
@6 = private unnamed_addr constant [26 x i8] c"relative_to_previous_event", align 1
@7 = private unnamed_addr constant [5 x i8] c"retry", align 1
@8 = private unnamed_addr constant [10 x i8] c"resumption", align 1
@9 = private unnamed_addr constant [5 x i8] c"Token", align 1
@10 = private unnamed_addr constant [4 x i8] c"type", align 1
@11 = private unnamed_addr constant [7 x i8] c"details", align 1
@12 = private unnamed_addr constant [3 x i8] c"raw", align 1
@13 = private unnamed_addr constant [1 x i8] c"\0A", align 1
@14 = private unnamed_addr constant [1 x i8] c"}", align 1
@15 = private unnamed_addr constant [1 x i8] c"{", align 1
@16 = private unnamed_addr constant [4 x i8] c"null", align 1
@17 = private unnamed_addr constant [25 x i8] c"quiche/src/stream/mod.rs\00", align 1
@18 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @17, [16 x i8] c"\18\00\00\00\00\00\00\00X\02\00\001\00\00\00" }>, align 8
@19 = private unnamed_addr constant [52 x i8] c"attempted to insert an object that is already linked", align 1
@20 = private unnamed_addr constant [111 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/intrusive-collections-0.9.7/src/rbtree.rs\00", align 1
@21 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @20, [16 x i8] c"n\00\00\00\00\00\00\00\0F\06\00\00\11\00\00\00" }>, align 8
@22 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRjNtB6_5Debug3fmtCslusEaBCZKLp_13quiche_client }>, align 8, !dbg !0
@23 = private unnamed_addr constant [90 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/url-2.5.8/src/lib.rs\00", align 1
@24 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @23, [16 x i8] c"Y\00\00\00\00\00\00\00O\0B\00\00\0B\00\00\00" }>, align 8
@25 = private unnamed_addr constant [92 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/itoa-1.0.18/src/lib.rs\00", align 1
@26 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @25, [16 x i8] c"[\00\00\00\00\00\00\00\BC\00\00\00\01\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvMs1_NtCs3EyXvii9LsX_3mio4pollNtB6_8Registry8registerNtNtNtB8_3net3udp9UdpSocketECslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef align 4 dereferenceable(4) %1, i64 noundef %2, i8 noundef range(i8 1, 0) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !861 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [96 x i8], align 8                ; 16 uses
    #dbg_value(ptr poison, !1128, !DIExpression(), !1258)
    #dbg_value(ptr poison, !1267, !DIExpression(), !1272)
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [1 x i8], align 1                 ; 3 uses
  %i.e = alloca [8 x i8], align 8                 ; 3 uses
  store i64 %2, ptr %i.e, align 8
  store i8 %3, ptr %i.d, align 1
    #dbg_value(ptr %0, !1042, !DIExpression(), !1273)
    #dbg_value(ptr %1, !1043, !DIExpression(), !1273)
    #dbg_declare(ptr %i.e, !1044, !DIExpression(), !1274)
    #dbg_declare(ptr %i.d, !1045, !DIExpression(), !1275)
    #dbg_value(ptr poison, !1276, !DIExpression(), !1290)
    #dbg_value(i8 0, !1292, !DIExpression(), !1323)
    #dbg_declare(ptr poison, !1317, !DIExpression(), !1325)
    #dbg_value(i8 0, !1326, !DIExpression(), !1331)
    #dbg_value(i8 0, !1347, !DIExpression(), !1356)
    #dbg_declare(ptr poison, !1317, !DIExpression(), !1364)
    #dbg_value(i64 5, !1046, !DIExpression(), !1369)
    #dbg_value(ptr poison, !1285, !DIExpression(), !1370)
    #dbg_value(ptr poison, !1285, !DIExpression(), !1371)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !1355, !DIExpression(), !1356)
    #dbg_value(ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER, !1372, !DIExpression(), !1379)
    #dbg_value(i8 0, !1378, !DIExpression(), !1379)
  %i.f = load atomic i64, ptr @_RNvCsixltGIj4kJ4_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !1381 ; 2 uses
  %i.g = icmp ult i64 %i.f, 6, !dbg !1382
  tail call void @llvm.assume(i1 %i.g), !dbg !1382
    #dbg_value(ptr poison, !1286, !DIExpression(), !1383)
    #dbg_value(i8 poison, !1321, !DIExpression(), !1384)
    #dbg_value(i8 poison, !1330, !DIExpression(), !1385)
    #dbg_value(i8 poison, !1320, !DIExpression(), !1390)
  %i.h = icmp samesign ugt i64 %i.f, 4, !dbg !1391
  br i1 %i.h, label %bb.b, label %bb.c, !dbg !1291

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %i.e, !1051, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1392)
    #dbg_value(ptr %i.d, !1051, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1392)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !1393
  store ptr %i.e, ptr %i.c, align 8, !dbg !1393
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !1393
  store ptr @_RNvXs2_NtCs3EyXvii9LsX_3mio5tokenNtB5_5TokenNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.42.0..sroa_idx, align 8, !dbg !1393
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !1393
  store ptr %i.d, ptr %i.i, align 8, !dbg !1393
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !1393
  store ptr @_RNvXs1_NtCs3EyXvii9LsX_3mio8interestNtB5_8InterestNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.46.0..sroa_idx, align 8, !dbg !1393
    #dbg_declare(ptr poison, !1264, !DIExpression(), !1394)
    #dbg_value(ptr @0, !1265, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1272)
    #dbg_value(ptr %i.c, !1265, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1272)
    #dbg_value(i64 5, !1266, !DIExpression(), !1272)
    #dbg_value(ptr undef, !1267, !DIExpression(), !1272)
    #dbg_declare(ptr poison, !1268, !DIExpression(), !1395)
    #dbg_value(ptr poison, !1396, !DIExpression(), !1403)
    #dbg_value(ptr poison, !1405, !DIExpression(), !1412)
    #dbg_value(ptr undef, !1405, !DIExpression(), !1412)
    #dbg_value(ptr undef, !1396, !DIExpression(), !1403)
    #dbg_declare(ptr %i.a, !1193, !DIExpression(), !1414)
    #dbg_value(ptr @0, !1194, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1258)
    #dbg_value(ptr %i.c, !1194, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1258)
    #dbg_value(i64 5, !1195, !DIExpression(), !1258)
    #dbg_value(ptr undef, !1128, !DIExpression(), !1258)
    #dbg_value(ptr null, !1196, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1258)
    #dbg_value(i64 undef, !1196, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1258)
    #dbg_value(ptr poison, !1197, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1415)
    #dbg_value(i64 poison, !1197, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1415)
    #dbg_value(ptr poison, !1199, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1415)
    #dbg_value(i64 poison, !1199, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1415)
    #dbg_value(ptr poison, !1200, !DIExpression(), !1415)
    #dbg_value(ptr poison, !1200, !DIExpression(), !1415)
    #dbg_value(i64 9, !1199, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1415)
    #dbg_value(ptr @2, !1199, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1415)
    #dbg_value(i64 9, !1197, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1415)
    #dbg_value(ptr @2, !1197, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1415)
    #dbg_value(i64 2, !1201, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1416)
    #dbg_value(i64 2, !1201, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !1416)
    #dbg_value(ptr undef, !1201, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !1416)
    #dbg_value(i64 undef, !1201, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !1416)
    #dbg_value(i64 3, !1201, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !1416)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !1201, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !1416)
    #dbg_value(i64 0, !1201, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !1416)
    #dbg_value(i32 poison, !1201, !DIExpression(DW_OP_LLVM_fragment, 576, 32), !1416)
    #dbg_value(i32 poison, !1201, !DIExpression(DW_OP_LLVM_fragment, 608, 32), !1416)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !1201, !DIExpression(DW_OP_LLVM_fragment, 640, 64), !1416)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !1201, !DIExpression(DW_OP_LLVM_fragment, 704, 64), !1416)
    #dbg_value(ptr @0, !1201, !DIExpression(DW_OP_LLVM_fragment, 640, 64), !1416)
    #dbg_value(ptr %i.c, !1201, !DIExpression(DW_OP_LLVM_fragment, 704, 64), !1416)
    #dbg_value(i64 5, !1201, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !1416)
    #dbg_value(ptr @2, !1201, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !1416)
    #dbg_value(i64 9, !1201, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !1416)
    #dbg_value(i64 0, !1201, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1416)
    #dbg_value(ptr @2, !1201, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1416)
    #dbg_value(i64 9, !1201, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !1416)
    #dbg_value(i64 0, !1201, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !1416)
    #dbg_value(ptr @1, !1201, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !1416)
    #dbg_value(i64 90, !1201, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !1416)
    #dbg_value(i32 1, !1201, !DIExpression(DW_OP_LLVM_fragment, 576, 32), !1416)
    #dbg_value(i32 580, !1201, !DIExpression(DW_OP_LLVM_fragment, 608, 32), !1416)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !1417, !noalias !1418
    #dbg_value(ptr undef, !1396, !DIExpression(), !1403)
    #dbg_value(ptr undef, !1405, !DIExpression(), !1412)
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !1412
  store i64 5, ptr %i.j, align 8, !dbg !1412, !noalias !1418
  %.sroa.429.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !1412
  store ptr @2, ptr %.sroa.429.0..sroa_idx.i.i, align 8, !dbg !1412, !noalias !1418
  %.sroa.530.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !1412
  store i64 9, ptr %.sroa.530.0..sroa_idx.i.i, align 8, !dbg !1412, !noalias !1418
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 80, !dbg !1412
  store ptr @0, ptr %i.k, align 8, !dbg !1412, !noalias !1418
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 88, !dbg !1412
  store ptr %i.c, ptr %i.l, align 8, !dbg !1412, !noalias !1418
  store i64 0, ptr %i.b, align 8, !dbg !1412, !noalias !1418
  %.sroa.435.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !1412
  store ptr @2, ptr %.sroa.435.0..sroa_idx.i.i, align 8, !dbg !1412, !noalias !1418
  %.sroa.536.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !1412
  store i64 9, ptr %.sroa.536.0..sroa_idx.i.i, align 8, !dbg !1412, !noalias !1418
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !1412
  store i64 0, ptr %i.m, align 8, !dbg !1412, !noalias !1418
  %.sroa.441.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !1412
  store ptr @1, ptr %.sroa.441.0..sroa_idx.i.i, align 8, !dbg !1412, !noalias !1418
  %.sroa.542.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !1412
  store i64 90, ptr %.sroa.542.0..sroa_idx.i.i, align 8, !dbg !1412, !noalias !1418
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 72, !dbg !1412
  store i32 1, ptr %i.n, align 8, !dbg !1412, !noalias !1418
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 76, !dbg !1412
  store i32 580, ptr %i.o, align 4, !dbg !1412, !noalias !1418
  call void @_RNvXs0_NtCsixltGIj4kJ4_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.b), !dbg !1423, !noalias !1418
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1424, !noalias !1418
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !1291
  %.pre = load i64, ptr %i.e, align 8, !dbg !1425
  %.pre23 = load i8, ptr %i.d, align 1, !dbg !1425, !range !1426
  br label %bb.c, !dbg !1291

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.p = phi i8 [ %3, %bb.a ], [ %.pre23, %bb.b ], !dbg !1425
  %i.q = phi i64 [ %2, %bb.a ], [ %.pre, %bb.b ], !dbg !1425
  %i.r = call noundef ptr @_RNvXs_NtNtCs3EyXvii9LsX_3mio3net3udpNtB4_9UdpSocketNtNtNtB8_5event6source6Source8register(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, i64 noundef %i.q, i8 noundef %i.p), !dbg !1427
  ret ptr %i.r, !dbg !1428
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_Cs7NSBlMkneoK_3urlNtB5_3Url12socket_addrsNCINvNtCsiGRwBGCeC5s_11quiche_apps6client7connectNvNtBR_6common11stdout_sinkE0ECslusEaBCZKLp_13quiche_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1429 {
bb.a:
    #dbg_declare(ptr poison, !1632, !DIExpression(DW_OP_LLVM_fragment, 32, 24), !1661)
    #dbg_declare(ptr poison, !1690, !DIExpression(DW_OP_LLVM_fragment, 32, 24), !1699)
    #dbg_declare(ptr poison, !1653, !DIExpression(DW_OP_LLVM_fragment, 40, 24), !1702)
    #dbg_declare(ptr poison, !1690, !DIExpression(DW_OP_LLVM_fragment, 32, 96), !1703)
    #dbg_declare(ptr poison, !1653, !DIExpression(DW_OP_LLVM_fragment, 40, 96), !1726)
    #dbg_declare(ptr poison, !1727, !DIExpression(DW_OP_LLVM_fragment, 128, 128), !1770)
    #dbg_declare(ptr poison, !1772, !DIExpression(DW_OP_LLVM_fragment, 40, 24), !1811)
    #dbg_declare(ptr poison, !1814, !DIExpression(DW_OP_LLVM_fragment, 40, 24), !1844)
  %.sroa.2.sroa.3 = alloca [3 x i8], align 1      ; 2 uses
    #dbg_declare(ptr %.sroa.2.sroa.3, !1853, !DIExpression(DW_OP_LLVM_fragment, 32, 24), !1860)
    #dbg_declare(ptr %.sroa.2.sroa.3, !1866, !DIExpression(DW_OP_LLVM_fragment, 32, 24), !1871)
    #dbg_declare(ptr %.sroa.2.sroa.3, !1673, !DIExpression(DW_OP_LLVM_fragment, 32, 24), !1872)
    #dbg_declare(ptr %.sroa.2.sroa.3, !1685, !DIExpression(DW_OP_LLVM_fragment, 32, 24), !1873)
    #dbg_declare(ptr %.sroa.2.sroa.3, !1630, !DIExpression(DW_OP_LLVM_fragment, 32, 24), !1874)
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
    #dbg_declare(ptr %.sroa.2.sroa.3, !1563, !DIExpression(DW_OP_LLVM_fragment, 40, 24), !1875)
  %i.e = alloca [24 x i8], align 8                ; 9 uses
    #dbg_declare(ptr poison, !1808, !DIExpression(DW_OP_LLVM_fragment, 40, 24), !1876)
    #dbg_value(ptr %1, !1561, !DIExpression(), !1877)
    #dbg_value(ptr %1, !1878, !DIExpression(), !1884)
    #dbg_declare(ptr poison, !1562, !DIExpression(), !1886)
    #dbg_declare(ptr %i.e, !1850, !DIExpression(), !1887)
    #dbg_declare(ptr %i.e, !1842, !DIExpression(), !1888)
    #dbg_declare(ptr %i.c, !1767, !DIExpression(), !1889)
    #dbg_declare(ptr %i.a, !1890, !DIExpression(), !1934)
    #dbg_declare(ptr %i.a, !1936, !DIExpression(), !1943)
    #dbg_value(ptr @3, !1851, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1945)
    #dbg_value(i64 23, !1851, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1945)
    #dbg_value(ptr @4, !1946, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1966)
    #dbg_value(i64 25, !1946, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1966)
    #dbg_value(i32 0, !1697, !DIExpression(), !1968)
    #dbg_value(i32 0, !1698, !DIExpression(), !1968)
    #dbg_declare(ptr poison, !1969, !DIExpression(), !1996)
    #dbg_declare(ptr poison, !2023, !DIExpression(), !2033)
    #dbg_value(i32 0, !1697, !DIExpression(), !2035)
    #dbg_value(i32 0, !1698, !DIExpression(), !2035)
    #dbg_declare(ptr poison, !1995, !DIExpression(), !2036)
    #dbg_declare(ptr poison, !2023, !DIExpression(), !2041)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !2044
  call void @_RNvMs_Cs7NSBlMkneoK_3urlNtB4_3Url4host(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %1), !dbg !2045
    #dbg_value(ptr poison, !1843, !DIExpression(), !2046)
    #dbg_value(ptr poison, !2047, !DIExpression(), !2052)
  %i.f = load i8, ptr %i.e, align 8, !dbg !2054, !range !2055, !noundef !13 ; 2 uses
  %.not = icmp eq i8 %i.f, -1, !dbg !2054
  br i1 %.not, label %bb.k, label %bb.b, !dbg !2056

bb.b:                                             ; preds = %bb.a
    #dbg_value(i8 %i.f, !1814, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !2057)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 1, !dbg !2058
  %.sroa.4.sroa.0.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 1, !dbg !2058 ; 3 uses
    #dbg_value(i32 %.sroa.4.sroa.0.0.copyload, !1814, !DIExpression(DW_OP_LLVM_fragment, 8, 32), !2057)
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 5, !dbg !2058
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.2.sroa.3, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, i64 3, i1 false), !dbg !2058
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !2058
  %.sroa.546.0.copyload = load ptr, ptr %.sroa.546.0..sroa_idx, align 8, !dbg !2058 ; 3 uses
    #dbg_value(ptr %.sroa.546.0.copyload, !1814, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2057)
  %.sroa.6.0..sroa_idx47 = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !2058
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx47, align 8, !dbg !2058 ; 2 uses
    #dbg_value(i64 %.sroa.6.0.copyload, !1814, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2057)
    #dbg_value(i8 %i.f, !1808, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !2059)
    #dbg_value(i32 %.sroa.4.sroa.0.0.copyload, !1808, !DIExpression(DW_OP_LLVM_fragment, 8, 32), !2059)
    #dbg_value(ptr %.sroa.546.0.copyload, !1808, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2059)
    #dbg_value(i64 %.sroa.6.0.copyload, !1808, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2059)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !2060
    #dbg_value(i8 %i.f, !1772, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !2061)
    #dbg_value(i32 %.sroa.4.sroa.0.0.copyload, !1772, !DIExpression(DW_OP_LLVM_fragment, 8, 32), !2061)
    #dbg_value(ptr %.sroa.546.0.copyload, !1772, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2061)
    #dbg_value(i64 %.sroa.6.0.copyload, !1772, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2061)
    #dbg_value(i8 %i.f, !1563, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !2062)
    #dbg_value(i32 %.sroa.4.sroa.0.0.copyload, !1563, !DIExpression(DW_OP_LLVM_fragment, 8, 32), !2062)
    #dbg_value(ptr %.sroa.546.0.copyload, !1563, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2062)
    #dbg_value(i64 %.sroa.6.0.copyload, !1563, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2062)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !2063
  %i.h = load i16, ptr %i.g, align 8, !dbg !2063, !range !2064, !noundef !13
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 42, !dbg !2063
  %i.j = load i16, ptr %i.i, align 2, !dbg !2063
    #dbg_value(i16 %i.h, !2065, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !2082)
    #dbg_value(i16 %i.j, !2065, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !2082)
    #dbg_value(ptr poison, !2079, !DIExpression(), !2082)
  %i.k = trunc nuw i16 %i.h to i1, !dbg !2084
  br i1 %i.k, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptiontE7or_elseNCNvMs_Cs7NSBlMkneoK_3urlNtBZ_3Url21port_or_known_default0ECslusEaBCZKLp_13quiche_client.exit.thread, label %bb.c, !dbg !2084

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr poison, !2085, !DIExpression(DW_OP_deref), !2090)
    #dbg_value(ptr %1, !2092, !DIExpression(), !2098)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 44, !dbg !2100
  %i.m = load i32, ptr %i.l, align 4, !dbg !2100, !noundef !13 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !2101
  %.val.i.i = load ptr, ptr %i.n, align 8, !dbg !2101, !nonnull !13, !noundef !13 ; 10 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !2101
  %.val2.i.i = load i64, ptr %i.o, align 8, !dbg !2101, !noundef !13 ; 3 uses
    #dbg_value(i32 %i.m, !2102, !DIExpression(), !2118)
    #dbg_value(ptr poison, !2117, !DIExpression(), !2118)
    #dbg_value(ptr poison, !2120, !DIExpression(), !2128)
    #dbg_value(ptr %.val.i.i, !2127, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2128)
    #dbg_value(ptr %.val.i.i, !2130, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2147)
    #dbg_value(i64 %.val2.i.i, !2127, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2128)
    #dbg_value(i64 %.val2.i.i, !2130, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2147)
  %i.p = zext i32 %i.m to i64, !dbg !2149         ; 4 uses
    #dbg_value(i64 %i.p, !2144, !DIExpression(), !2147)
    #dbg_value(i64 %i.p, !2150, !DIExpression(), !2161)
    #dbg_value(ptr %.val.i.i, !2156, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2161)
    #dbg_value(i64 %.val2.i.i, !2156, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2161)
    #dbg_value(i64 %i.p, !2157, !DIExpression(), !2163)
    #dbg_value(i64 %i.p, !2164, !DIExpression(), !2181)
    #dbg_value(ptr %.val.i.i, !2180, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2181)
    #dbg_value(ptr %.val.i.i, !2183, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2191)
    #dbg_value(i64 %.val2.i.i, !2180, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2181)
    #dbg_value(i64 %.val2.i.i, !2183, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2191)
    #dbg_value(i64 %i.p, !2190, !DIExpression(), !2191)
  %i.q = icmp eq i32 %i.m, 0, !dbg !2193
  br i1 %i.q, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptiontE7or_elseNCNvMs_Cs7NSBlMkneoK_3urlNtBZ_3Url21port_or_known_default0ECslusEaBCZKLp_13quiche_client.exit.thread156, label %bb.d, !dbg !2193

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.i.i.i = icmp ugt i64 %.val2.i.i, %i.p, !dbg !2194
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %.split.i.i.i.i.i, !dbg !2194

.split.i.i.i.i.i:                                 ; preds = %bb.d
  %i.r = icmp eq i64 %.val2.i.i, %i.p, !dbg !2195
  br i1 %i.r, label %_RINvMs_Cs7NSBlMkneoK_3urlNtB5_3Url5sliceINtNtNtCskKLDkoKarTP_4core3ops5range7RangeTomEECslusEaBCZKLp_13quiche_client.exit.i.i, label %bb.f, !dbg !2196

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.p, !dbg !2197
  %i.t = load i8, ptr %i.s, align 1, !dbg !2197, !alias.scope !2198, !noundef !13
    #dbg_value(i8 %i.t, !2205, !DIExpression(), !2212)
  %i.u = icmp sgt i8 %i.t, -65, !dbg !2214
  br i1 %i.u, label %_RINvMs_Cs7NSBlMkneoK_3urlNtB5_3Url5sliceINtNtNtCskKLDkoKarTP_4core3ops5range7RangeTomEECslusEaBCZKLp_13quiche_client.exit.i.i, label %bb.f, !dbg !2196

bb.f:                                             ; preds = %bb.e, %.split.i.i.i.i.i
end_hunk_0
begin_hunk_1_@_RINvMs_Cs7NSBlMkneoK_3urlNtB5_3Url12socket_addrsNCINvNtCsiGRwBGCeC5s_11quiche_apps6client7connectNvNtBR_6common11stdout_sinkE0ECslusEaBCZKLp_13quiche_client:bb.a
    #dbg_value(i32 %.sroa.4.sroa.0.0.copyload, !1685, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !2412)
    #dbg_value(i32 %.sroa.4.sroa.0.0.copyload, !1673, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !2413)
    #dbg_value(i32 %.sroa.4.sroa.0.0.copyload, !1866, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !2546)
    #dbg_value(i32 %.sroa.4.sroa.0.0.copyload, !1853, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !2547)
    #dbg_value(ptr %.sroa.546.0.copyload, !1630, !DIExpression(DW_OP_LLVM_fragment, 56, 64), !2545)
    #dbg_value(ptr %.sroa.546.0.copyload, !1685, !DIExpression(DW_OP_LLVM_fragment, 56, 64), !2412)
    #dbg_value(ptr %.sroa.546.0.copyload, !1673, !DIExpression(DW_OP_LLVM_fragment, 56, 64), !2413)
    #dbg_value(ptr %.sroa.546.0.copyload, !1866, !DIExpression(DW_OP_LLVM_fragment, 56, 64), !2546)
    #dbg_value(ptr %.sroa.546.0.copyload, !1853, !DIExpression(DW_OP_LLVM_fragment, 56, 64), !2547)
    #dbg_value(i64 %.sroa.6.0.copyload, !1630, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 120, 8), !2545)
    #dbg_value(i64 %.sroa.6.0.copyload, !1685, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 120, 8), !2412)
    #dbg_value(i64 %.sroa.6.0.copyload, !1673, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 120, 8), !2413)
    #dbg_value(i64 %.sroa.6.0.copyload, !1866, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 120, 8), !2546)
    #dbg_value(i64 %.sroa.6.0.copyload, !1853, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 120, 8), !2547)
    #dbg_value(i64 4, !2432, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2548)
    #dbg_value(i64 4, !2463, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2551)
    #dbg_value(i64 4, !2491, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2553)
    #dbg_value(i64 32, !2432, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2548)
    #dbg_value(i64 32, !2463, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2551)
    #dbg_value(i64 32, !2491, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2553)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !2488, !DIExpression(), !2551)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !2497, !DIExpression(), !2553)
    #dbg_value(i8 0, !2498, !DIExpression(), !2553)
    #dbg_value(i64 4, !2501, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2555)
    #dbg_value(i64 4, !2533, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2557)
    #dbg_value(i64 32, !2501, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2555)
    #dbg_value(i64 32, !2533, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2557)
    #dbg_value(i1 false, !2507, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2555)
    #dbg_value(i64 32, !2508, !DIExpression(), !2559)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !dbg !2560
  %i.bt = tail call noundef align 4 dereferenceable_or_null(32) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 32, 105) 32, i64 noundef range(i64 4, 9) 4) #22, !dbg !2561 ; 11 uses
  %i.bu = icmp eq ptr %i.bt, null, !dbg !2562
  br i1 %i.bu, label %bb.q, label %bb.v, !dbg !2563, !prof !2543

bb.q:                                             ; preds = %bb.p
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 4, i64 noundef 32) #23, !dbg !2564
  unreachable, !dbg !2564

bb.r:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !2565
    #dbg_value(ptr %i.bq, !1611, !DIExpression(), !2566)
    #dbg_value(ptr %i.bq, !2389, !DIExpression(), !2567)
    #dbg_value(ptr %i.bq, !2399, !DIExpression(), !2570)
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2571
  store ptr %i.bq, ptr %i.bv, align 8, !dbg !2571
  store i64 -1, ptr %0, align 8, !dbg !2571
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2572
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !2573
  br label %bb.l, !dbg !2574

bb.s:                                             ; preds = %bb.m
    #dbg_value(ptr %i.bn, !1727, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2576)
    #dbg_value(ptr %i.bq, !1727, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2576)
  %.sroa.554.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !2577
  %.sroa.835.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !1771
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.835.0..sroa_idx36, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.554.0..sroa_idx, i64 16, i1 false), !dbg !2577
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !2565
  store ptr %i.bn, ptr %i.a, align 8, !dbg !1771
  %.sroa.632.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !1771
  store ptr %i.bq, ptr %.sroa.632.0..sroa_idx33, align 8, !dbg !1771
  call void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB6_3VecNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrEINtB4_12SpecFromIterBW_INtNtB6_9into_iter8IntoIterBW_EE9from_iterCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a), !dbg !2578
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2572
  br label %bb.t, !dbg !2572

bb.t:                                             ; preds = %bb.v, %bb.u, %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !2579
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !2573
  br label %bb.l, !dbg !2408

bb.u:                                             ; preds = %bb.n
    #dbg_value(i32 %.sroa.4.sroa.0.0.copyload, !1653, !DIExpression(DW_OP_LLVM_fragment, 8, 32), !2411)
    #dbg_value(i8 0, !1653, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !2411)
  store i16 0, ptr %i.br, align 4, !dbg !2462
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 2, !dbg !2462
  store i32 %.sroa.4.sroa.0.0.copyload, ptr %.sroa.541.0..sroa_idx, align 2, !dbg !2462
  %.sroa.541.sroa.5.0..sroa.541.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 6, !dbg !2462
  store i16 %spec.select.i154, ptr %.sroa.541.sroa.5.0..sroa.541.0..sroa_idx.sroa_idx, align 2, !dbg !2462
  %.sroa.541.sroa.6.sroa.4.0..sroa.541.sroa.6.0..sroa.541.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 20, !dbg !2462
  store i32 0, ptr %.sroa.541.sroa.6.sroa.4.0..sroa.541.sroa.6.0..sroa.541.0..sroa_idx.sroa_idx.sroa_idx, align 4, !dbg !2462
  %.sroa.541.sroa.6.sroa.5.0..sroa.541.sroa.6.0..sroa.541.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 24, !dbg !2462
  store i32 0, ptr %.sroa.541.sroa.6.sroa.5.0..sroa.541.sroa.6.0..sroa.541.0..sroa_idx.sroa_idx.sroa_idx, align 4, !dbg !2462
    #dbg_value(ptr %i.br, !2020, !DIExpression(), !2580)
    #dbg_value(ptr %i.br, !1984, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2581)
    #dbg_value(i64 1, !1984, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2581)
    #dbg_value(i64 1, !1985, !DIExpression(), !2582)
    #dbg_value(i64 1, !2031, !DIExpression(), !2583)
    #dbg_value(i64 1, !2032, !DIExpression(), !2583)
    #dbg_value(ptr %i.br, !1986, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2584)
    #dbg_value(i64 1, !1986, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2584)
    #dbg_value(ptr %i.br, !2030, !DIExpression(), !2583)
  store i64 1, ptr %i.d, align 8, !dbg !2585
  %i.bw = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !2585
  store ptr %i.br, ptr %i.bw, align 8, !dbg !2585
  %i.bx = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !2585
  store i64 1, ptr %i.bx, align 8, !dbg !2585
  br label %bb.t, !dbg !2586

bb.v:                                             ; preds = %bb.p
  %.sroa.7.1.extract.trunc = trunc i64 %.sroa.6.0.copyload to i8, !dbg !2587
    #dbg_value(i8 %.sroa.7.1.extract.trunc, !1630, !DIExpression(DW_OP_LLVM_fragment, 120, 8), !2545)
    #dbg_value(i8 %.sroa.7.1.extract.trunc, !1685, !DIExpression(DW_OP_LLVM_fragment, 120, 8), !2412)
    #dbg_value(i8 %.sroa.7.1.extract.trunc, !1673, !DIExpression(DW_OP_LLVM_fragment, 120, 8), !2413)
    #dbg_value(i8 %.sroa.7.1.extract.trunc, !1866, !DIExpression(DW_OP_LLVM_fragment, 120, 8), !2546)
    #dbg_value(i8 %.sroa.7.1.extract.trunc, !1853, !DIExpression(DW_OP_LLVM_fragment, 120, 8), !2547)
    #dbg_value(i32 %.sroa.4.sroa.0.0.copyload, !1653, !DIExpression(DW_OP_LLVM_fragment, 8, 32), !2414)
  %.sroa.543.sroa.6.0..sroa.543.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 8, !dbg !2550
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %.sroa.543.sroa.6.0..sroa.543.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.2.sroa.3, i64 3, i1 false), !dbg !2588
    #dbg_value(ptr %.sroa.546.0.copyload, !1653, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2414)
    #dbg_value(i8 %.sroa.7.1.extract.trunc, !1653, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !2414)
    #dbg_value(i8 1, !1653, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !2414)
    #dbg_value(i32 %.sroa.4.sroa.0.0.copyload, !1632, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 16), !2589)
    #dbg_value(i32 %.sroa.4.sroa.0.0.copyload, !1690, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 16), !2035)
  %.sroa.4146.3.extract.shift = lshr i32 %.sroa.4.sroa.0.0.copyload, 16, !dbg !2590
  %.sroa.4146.3.extract.trunc = trunc nuw i32 %.sroa.4146.3.extract.shift to i16, !dbg !2590
    #dbg_value(i16 %.sroa.4146.3.extract.trunc, !1632, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !2589)
    #dbg_value(i16 %.sroa.4146.3.extract.trunc, !1690, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !2035)
    #dbg_value(ptr %.sroa.546.0.copyload, !1690, !DIExpression(DW_OP_LLVM_fragment, 56, 64), !2035)
    #dbg_value(ptr %.sroa.546.0.copyload, !1632, !DIExpression(DW_OP_LLVM_fragment, 56, 64), !2589)
    #dbg_value(i8 %.sroa.7.1.extract.trunc, !1690, !DIExpression(DW_OP_LLVM_fragment, 120, 8), !2035)
    #dbg_value(i8 %.sroa.7.1.extract.trunc, !1632, !DIExpression(DW_OP_LLVM_fragment, 120, 8), !2589)
  %.sroa.543.sroa.0.2.insert.ext = shl i32 %.sroa.4.sroa.0.0.copyload, 16, !dbg !2591
  store i16 1, ptr %i.bt, align 4, !dbg !2550
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 2, !dbg !2550
  store i32 %.sroa.543.sroa.0.2.insert.ext, ptr %.sroa.543.0..sroa_idx, align 2, !dbg !2550
  %.sroa.543.sroa.5.0..sroa.543.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 6, !dbg !2550
  store i16 %.sroa.4146.3.extract.trunc, ptr %.sroa.543.sroa.5.0..sroa.543.0..sroa_idx.sroa_idx, align 2, !dbg !2550
  %.sroa.543.sroa.6.sroa.0.sroa.4.0..sroa.543.sroa.6.0..sroa.543.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 11, !dbg !2550
  store ptr %.sroa.546.0.copyload, ptr %.sroa.543.sroa.6.sroa.0.sroa.4.0..sroa.543.sroa.6.0..sroa.543.0..sroa_idx.sroa_idx.sroa_idx, align 1, !dbg !2550
  %.sroa.543.sroa.6.sroa.0.sroa.5.0..sroa.543.sroa.6.0..sroa.543.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 19, !dbg !2550
  store i8 %.sroa.7.1.extract.trunc, ptr %.sroa.543.sroa.6.sroa.0.sroa.5.0..sroa.543.sroa.6.0..sroa.543.0..sroa_idx.sroa_idx.sroa_idx, align 1, !dbg !2550
  %.sroa.543.sroa.6.sroa.4.0..sroa.543.sroa.6.0..sroa.543.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 20, !dbg !2550
  store i32 0, ptr %.sroa.543.sroa.6.sroa.4.0..sroa.543.sroa.6.0..sroa.543.0..sroa_idx.sroa_idx.sroa_idx, align 4, !dbg !2550
  %.sroa.543.sroa.6.sroa.5.0..sroa.543.sroa.6.0..sroa.543.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 24, !dbg !2550
  store i32 0, ptr %.sroa.543.sroa.6.sroa.5.0..sroa.543.sroa.6.0..sroa.543.0..sroa_idx.sroa_idx.sroa_idx, align 4, !dbg !2550
  %.sroa.543.sroa.6.sroa.6.0..sroa.543.sroa.6.0..sroa.543.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 28, !dbg !2550
  store i16 %spec.select.i154, ptr %.sroa.543.sroa.6.sroa.6.0..sroa.543.sroa.6.0..sroa.543.0..sroa_idx.sroa_idx.sroa_idx, align 4, !dbg !2550
    #dbg_value(ptr %i.bt, !2020, !DIExpression(), !2592)
    #dbg_value(ptr %i.bt, !1984, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2593)
    #dbg_value(i64 1, !1984, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2593)
    #dbg_value(i64 1, !1991, !DIExpression(), !2594)
    #dbg_value(i64 1, !2031, !DIExpression(), !2595)
    #dbg_value(i64 1, !2032, !DIExpression(), !2595)
    #dbg_value(ptr %i.bt, !1993, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2596)
    #dbg_value(i64 1, !1993, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2596)
    #dbg_value(ptr %i.bt, !2030, !DIExpression(), !2595)
  store i64 1, ptr %i.d, align 8, !dbg !2597
  %i.by = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !2597
  store ptr %i.bt, ptr %i.by, align 8, !dbg !2597
  %i.bz = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !2597
  store i64 1, ptr %i.bz, align 8, !dbg !2597
  br label %bb.t, !dbg !2598
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsixltGIj4kJ4_3log13___private_api3loguNtB2_12GlobalLoggerECslusEaBCZKLp_13quiche_client(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef range(i64 1, 6) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1260 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [96 x i8], align 8                ; 16 uses
    #dbg_declare(ptr poison, !1264, !DIExpression(), !2599)
    #dbg_value(ptr %0, !1265, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2600)
    #dbg_value(ptr %1, !1265, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2600)
    #dbg_value(i64 %2, !1266, !DIExpression(), !2600)
    #dbg_value(ptr %3, !1267, !DIExpression(), !2600)
    #dbg_declare(ptr poison, !1268, !DIExpression(), !2601)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2602), !dbg !2605
    #dbg_value(ptr poison, !1396, !DIExpression(), !2606)
    #dbg_value(ptr poison, !1405, !DIExpression(), !2609)
    #dbg_value(ptr undef, !1405, !DIExpression(), !2609)
    #dbg_value(ptr undef, !1396, !DIExpression(), !2606)
    #dbg_declare(ptr %i.a, !1193, !DIExpression(), !2611)
    #dbg_value(ptr %0, !1194, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2612)
    #dbg_value(ptr %1, !1194, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2612)
    #dbg_value(i64 %2, !1195, !DIExpression(), !2612)
    #dbg_value(ptr %3, !1128, !DIExpression(), !2612)
    #dbg_value(ptr null, !1196, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2612)
    #dbg_value(i64 undef, !1196, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2612)
    #dbg_value(ptr poison, !1197, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2613)
    #dbg_value(i64 poison, !1197, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2613)
    #dbg_value(ptr poison, !1199, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2613)
    #dbg_value(i64 poison, !1199, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2613)
    #dbg_value(ptr poison, !1200, !DIExpression(), !2613)
    #dbg_value(ptr poison, !2614, !DIExpression(), !2621)
    #dbg_value(ptr poison, !2623, !DIExpression(), !2629)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !2631
  %i.d = load ptr, ptr %i.c, align 8, !dbg !2631, !alias.scope !2602, !nonnull !13, !align !2632, !noundef !13 ; 3 uses
    #dbg_value(ptr %i.d, !1200, !DIExpression(), !2613)
    #dbg_value(ptr %i.d, !2614, !DIExpression(), !2621)
    #dbg_value(ptr %i.d, !2623, !DIExpression(), !2629)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !2633
  %i.f = load i64, ptr %i.e, align 8, !dbg !2633, !alias.scope !2602, !noundef !13
    #dbg_value(i64 %i.f, !1199, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2613)
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !2633
  %i.h = load ptr, ptr %i.g, align 8, !dbg !2633, !alias.scope !2602, !nonnull !13, !noundef !13
    #dbg_value(ptr %i.h, !1199, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2613)
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !2634
  %i.j = load i64, ptr %i.i, align 8, !dbg !2634, !alias.scope !2602, !noundef !13
    #dbg_value(i64 %i.j, !1197, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2613)
  %i.k = load ptr, ptr %3, align 8, !dbg !2634, !alias.scope !2602, !nonnull !13, !noundef !13
    #dbg_value(ptr %i.k, !1197, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2613)
    #dbg_value(i64 2, !1201, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2635)
    #dbg_value(i64 2, !1201, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !2635)
    #dbg_value(ptr undef, !1201, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !2635)
    #dbg_value(i64 undef, !1201, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !2635)
    #dbg_value(i64 3, !1201, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !2635)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !1201, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !2635)
    #dbg_value(i64 0, !1201, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !2635)
    #dbg_value(i32 poison, !1201, !DIExpression(DW_OP_LLVM_fragment, 576, 32), !2635)
    #dbg_value(i32 poison, !1201, !DIExpression(DW_OP_LLVM_fragment, 608, 32), !2635)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !1201, !DIExpression(DW_OP_LLVM_fragment, 640, 64), !2635)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !1201, !DIExpression(DW_OP_LLVM_fragment, 704, 64), !2635)
    #dbg_value(ptr %0, !1201, !DIExpression(DW_OP_LLVM_fragment, 640, 64), !2635)
    #dbg_value(ptr %1, !1201, !DIExpression(DW_OP_LLVM_fragment, 704, 64), !2635)
    #dbg_value(i64 %2, !1201, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !2635)
    #dbg_value(ptr %i.k, !1201, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !2635)
    #dbg_value(i64 %i.j, !1201, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !2635)
    #dbg_value(i64 0, !1201, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2635)
    #dbg_value(ptr %i.h, !1201, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2635)
    #dbg_value(i64 %i.f, !1201, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2635)
  %i.l = load ptr, ptr %i.d, align 8, !dbg !2636, !noalias !2602, !nonnull !13, !noundef !13
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !2636
  %i.n = load i64, ptr %i.m, align 8, !dbg !2636, !noalias !2602, !noundef !13
    #dbg_value(i64 0, !1201, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !2635)
    #dbg_value(ptr %i.l, !1201, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !2635)
    #dbg_value(i64 %i.n, !1201, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !2635)
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !2644
  %i.p = load i32, ptr %i.o, align 8, !dbg !2644, !noalias !2602, !noundef !13
    #dbg_value(i32 1, !1201, !DIExpression(DW_OP_LLVM_fragment, 576, 32), !2635)
    #dbg_value(i32 %i.p, !1201, !DIExpression(DW_OP_LLVM_fragment, 608, 32), !2635)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !2645, !noalias !2602
    #dbg_value(ptr undef, !1396, !DIExpression(), !2606)
    #dbg_value(ptr undef, !1405, !DIExpression(), !2609)
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !2609
  store i64 %2, ptr %i.q, align 8, !dbg !2609, !noalias !2602
  %.sroa.429.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !2609
  store ptr %i.k, ptr %.sroa.429.0..sroa_idx.i, align 8, !dbg !2609, !noalias !2602
  %.sroa.530.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !2609
  store i64 %i.j, ptr %.sroa.530.0..sroa_idx.i, align 8, !dbg !2609, !noalias !2602
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 80, !dbg !2609
  store ptr %0, ptr %i.r, align 8, !dbg !2609, !noalias !2602
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 88, !dbg !2609
  store ptr %1, ptr %i.s, align 8, !dbg !2609, !noalias !2602
  store i64 0, ptr %i.b, align 8, !dbg !2609, !noalias !2602
  %.sroa.435.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !2609
  store ptr %i.h, ptr %.sroa.435.0..sroa_idx.i, align 8, !dbg !2609, !noalias !2602
  %.sroa.536.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !2609
  store i64 %i.f, ptr %.sroa.536.0..sroa_idx.i, align 8, !dbg !2609, !noalias !2602
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !2609
  store i64 0, ptr %i.t, align 8, !dbg !2609, !noalias !2602
  %.sroa.441.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !2609
  store ptr %i.l, ptr %.sroa.441.0..sroa_idx.i, align 8, !dbg !2609, !noalias !2602
  %.sroa.542.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !2609
  store i64 %i.n, ptr %.sroa.542.0..sroa_idx.i, align 8, !dbg !2609, !noalias !2602
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 72, !dbg !2609
  store i32 1, ptr %i.u, align 8, !dbg !2609, !noalias !2602
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 76, !dbg !2609
  store i32 %i.p, ptr %i.v, align 4, !dbg !2609, !noalias !2602
  call void @_RNvXs0_NtCsixltGIj4kJ4_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.b), !dbg !2646, !noalias !2602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2647, !noalias !2602
  ret void, !dbg !2648
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6ranges8RangeSetECslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 !dbg !2649 {
bb.a:
    #dbg_value(ptr %0, !2655, !DIExpression(), !2658)
  %i.a = load i64, ptr %0, align 8, !dbg !2659, !range !2660, !noundef !13
  %i.b = icmp eq i64 %i.a, 0, !dbg !2659
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2659 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !2659

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %i.c, !2661, !DIExpression(), !2669)
    #dbg_value(ptr %i.c, !2671, !DIExpression(), !2679)
  tail call void @_RNvXsw_Cs5kGgRUzsVpH_8smallvecINtB5_8SmallVecATyyEj4_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.c), !dbg !2681
  br label %bb.d, !dbg !2659

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %i.c, !2682, !DIExpression(), !2690)
    #dbg_value(ptr %i.c, !2692, !DIExpression(), !2700)
  tail call void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapyyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c), !dbg !2702
  br label %bb.d, !dbg !2659

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void, !dbg !2659
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche6stream6StreamECslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(368) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2703 {
bb.a:
    #dbg_value(ptr %0, !2708, !DIExpression(), !2711)
    #dbg_value(ptr %0, !2712, !DIExpression(), !2720)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !2722
    #dbg_value(ptr %i.a, !2723, !DIExpression(), !2731)
  invoke void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapyNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs3f36owOmepS_6quiche6stream8recv_buf7RecvBufECslusEaBCZKLp_13quiche_client.exit unwind label %bb.b, !dbg !2733

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !2734
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs3f36owOmepS_6quiche6stream8send_buf7SendBufECslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 8 dereferenceable(216) %i.c) #24
          to label %bb.c unwind label %bb.h, !dbg !2734

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs3f36owOmepS_6quiche6stream8recv_buf7RecvBufECslusEaBCZKLp_13quiche_client.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !2734
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs3f36owOmepS_6quiche6stream8send_buf7SendBufECslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 8 dereferenceable(216) %i.d)
          to label %bb.f unwind label %bb.e, !dbg !2734

bb.c:                                             ; preds = %bb.e, %bb.b
  %.pn = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.b, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 344, !dbg !2734 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2735), !dbg !2734
    #dbg_value(ptr %i.e, !2738, !DIExpression(), !2746)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2748), !dbg !2751
    #dbg_value(ptr %i.e, !2752, !DIExpression(), !2757)
    #dbg_value(ptr %i.e, !2759, !DIExpression(), !2767)
    #dbg_value(i64 1, !2769, !DIExpression(), !2777)
    #dbg_value(i8 1, !2776, !DIExpression(), !2777)
    #dbg_value(i64 1, !2779, !DIExpression(), !2789)
    #dbg_value(i8 1, !2786, !DIExpression(), !2789)
  %i.f = load ptr, ptr %i.e, align 8, !dbg !2791, !alias.scope !2798, !nonnull !13, !noundef !13
    #dbg_value(ptr %i.f, !2775, !DIExpression(), !2799)
    #dbg_value(ptr %i.f, !2785, !DIExpression(), !2789)
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8, !dbg !2800, !noalias !2798
  %i.h = icmp eq i64 %i.g, 1, !dbg !2801
  br i1 %i.h, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEECslusEaBCZKLp_13quiche_client.exit, !dbg !2801

bb.d:                                             ; preds = %bb.c
    #dbg_value(i8 2, !2802, !DIExpression(), !2807)
  fence acquire, !dbg !2809
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEECslusEaBCZKLp_13quiche_client.exit unwind label %bb.h, !dbg !2810

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs3f36owOmepS_6quiche6stream8recv_buf7RecvBufECslusEaBCZKLp_13quiche_client.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs3f36owOmepS_6quiche6stream8recv_buf7RecvBufECslusEaBCZKLp_13quiche_client.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 344, !dbg !2734 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2811), !dbg !2734
    #dbg_value(ptr %i.j, !2738, !DIExpression(), !2814)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2816), !dbg !2819
    #dbg_value(ptr %i.j, !2752, !DIExpression(), !2820)
    #dbg_value(ptr %i.j, !2759, !DIExpression(), !2822)
    #dbg_value(i64 1, !2769, !DIExpression(), !2824)
    #dbg_value(i8 1, !2776, !DIExpression(), !2824)
    #dbg_value(i64 1, !2779, !DIExpression(), !2826)
    #dbg_value(i8 1, !2786, !DIExpression(), !2826)
  %i.k = load ptr, ptr %i.j, align 8, !dbg !2828, !alias.scope !2830, !nonnull !13, !noundef !13
    #dbg_value(ptr %i.k, !2775, !DIExpression(), !2831)
    #dbg_value(ptr %i.k, !2785, !DIExpression(), !2826)
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !dbg !2832, !noalias !2830
  %i.m = icmp eq i64 %i.l, 1, !dbg !2833
  br i1 %i.m, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEECslusEaBCZKLp_13quiche_client.exit3, !dbg !2833

bb.g:                                             ; preds = %bb.f
    #dbg_value(i8 2, !2802, !DIExpression(), !2834)
  fence acquire, !dbg !2836
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #21, !dbg !2837
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEECslusEaBCZKLp_13quiche_client.exit3, !dbg !2837

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEECslusEaBCZKLp_13quiche_client.exit3: ; preds = %bb.f, %bb.g
  ret void, !dbg !2734

bb.h:                                             ; preds = %bb.d, %bb.b
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !dbg !2734
  unreachable, !dbg !2734

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCs3f36owOmepS_6quiche6stream17StreamPriorityKeyEECslusEaBCZKLp_13quiche_client.exit: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %.pn, !dbg !2734
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs3f36owOmepS_6quiche6stream8send_buf7SendBufECslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2838 {
bb.a:
    #dbg_value(ptr %0, !2843, !DIExpression(), !2846)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136, !dbg !2847 ; 3 uses
    #dbg_value(ptr %i.a, !2848, !DIExpression(), !2856)
  invoke void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %bb.c unwind label %bb.b, !dbg !2858

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.a, !2859, !DIExpression(), !2867)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %.body unwind label %bb.d, !dbg !2869

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %i.a, !2859, !DIExpression(), !2870)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEECslusEaBCZKLp_13quiche_client.exit unwind label %bb.e, !dbg !2872

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !dbg !2858
end_hunk_1
