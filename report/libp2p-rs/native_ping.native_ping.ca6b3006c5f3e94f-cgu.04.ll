Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/native_ping.native_ping.ca6b3006c5f3e94f-cgu.04?download=true
inline.NumInlined: 2812
inline.NumDeleted: 1268
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
@395 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @394, [16 x i8] c"g\00\00\00\00\00\00\00\81\01\00\00\0E\00\00\00" }>, align 8
@396 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_2io5error5ErrorNtB6_5Debug3fmtCshnt8FRa5Rut_11native_ping }>, align 8
@397 = private unnamed_addr constant [7 x i8] c"IoError", align 1
@398 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCs5hzaM3VbZx4_5redis6errors12server_error4ReprNtB6_5Debug3fmtCshnt8FRa5Rut_11native_ping }>, align 8
@399 = private unnamed_addr constant [11 x i8] c"ServerError", align 1
@400 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info8mac_vlan11InfoMacVtapENtB6_5Debug3fmtCshnt8FRa5Rut_11native_ping }>, align 8
@401 = private unnamed_addr constant [117 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/futures-util-0.3.33/src/future/future/shared.rs\00", align 1
@402 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @401, [16 x i8] c"t\00\00\00\00\00\00\00\89\01\00\00 \00\00\00" }>, align 8
@403 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNvNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info14bridge_boolopt1__16InternalBitFlagsNtB6_5Debug3fmtCshnt8FRa5Rut_11native_ping }>, align 8
@404 = private unnamed_addr constant [24 x i8] c"BridgeBooleanOptionFlags", align 1
@405 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB8_5error5ErrorNtNtB8_6marker4SendNtB1r_4SyncEL_ENtB6_5Debug3fmtCshnt8FRa5Rut_11native_ping }>, align 8
@406 = private unnamed_addr constant [8 x i8] c"StdError", align 1
@407 = private unnamed_addr constant [7 x i8] c"Private", align 1
@408 = private unnamed_addr constant [4 x i8] c"Vepa", align 1
@409 = private unnamed_addr constant [6 x i8] c"Bridge", align 1
@410 = private unnamed_addr constant [11 x i8] c"Passthrough", align 1
@411 = private unnamed_addr constant [6 x i8] c"Source", align 1
@412 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCse1G1u9n4DX9_14elliptic_curve5error5ErrorNtB6_5Debug3fmtCshnt8FRa5Rut_11native_ping }>, align 8
@413 = private unnamed_addr constant [9 x i8] c"P256Error", align 1
@414 = private unnamed_addr constant [3 x i8] c"Udp", align 1
@415 = private unnamed_addr constant [3 x i8] c"Tcp", align 1
@416 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNvNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info8mac_vlan1__16InternalBitFlagsNtB6_5Debug3fmtCshnt8FRa5Rut_11native_ping }>, align 8
@417 = private unnamed_addr constant [12 x i8] c"MacVlanFlags", align 1
@418 = private unnamed_addr constant [3 x i8] c"Add", align 1
@419 = private unnamed_addr constant [3 x i8] c"Del", align 1
@420 = private unnamed_addr constant [5 x i8] c"Flush", align 1
@421 = private unnamed_addr constant [3 x i8] c"Set", align 1
@422 = private unnamed_addr constant [40 x i8] c"description() is deprecated; use Display", align 1
@423 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 6943969306745642577 to ptr), ptr inttoptr (i64 6094423111476897277 to ptr) }>, align 8
@424 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 4796234647975441671 to ptr), ptr inttoptr (i64 3828141197550735432 to ptr) }>, align 8
@425 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -2281598620374670974 to ptr), ptr inttoptr (i64 -7478853733021041279 to ptr) }>, align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCsa9Jrx9KOzzM_16hickory_resolver11name_serverINtB3_10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE3newATNtNtB1c_4xfer8ProtocolINtNtB2v_12dns_exchange11DnsExchangeB16_EEj0_ECshnt8FRa5Rut_11native_ping(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([168 x i8]) align 8 captures(none) dereferenceable(168) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(216) %2, ptr noundef nonnull %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 7 uses
  %i.d = alloca [80 x i8], align 8                ; 11 uses
  %i.e = alloca [48 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %3, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB3N_5array4iter8IntoIterTNtNtB25_4xfer8ProtocolINtNtB50_12dns_exchange11DnsExchangeB1Z_EEKj0_ENCINvMBX_INtBX_10NameServerB1Z_E3newAB4X_B61_E0EE9from_iterCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, i64 noundef 0, i64 noundef 0)
          to label %bb.e unwind label %bb.d

bb.b:                                             ; preds = %bb.ab, %bb.ac, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %i.ck, %bb.ac ], [ %i.j, %bb.d ], [ %eh.lpad-body, %bb.ab ]
  %.sroa.01.0 = phi i1 [ true, %bb.ac ], [ true, %bb.d ], [ false, %bb.ab ]
  %i.h = atomicrmw sub ptr %3, i64 1 release, align 8, !noalias !97
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderECshnt8FRa5Rut_11native_ping.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtNtCsc13h7DQFCSE_5tokio4task8join_set7JoinSetuEEE9drop_slowCsa9Jrx9KOzzM_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #28
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderECshnt8FRa5Rut_11native_ping.exit unwind label %bb.aa

bb.d:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 209
  %i.l = load i8, ptr %i.k, align 1, !range !10, !noundef !11
  %.not = icmp eq i8 %i.l, 1
  br i1 %.not, label %bb.f, label %bb.u

bb.f:                                             ; preds = %_RINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE11sort_by_keybNCINvMBz_INtBz_10NameServerB1B_E3newATNtNtB1H_4xfer8ProtocolINtNtB3K_12dns_exchange11DnsExchangeB1B_EEj0_Es_0ECshnt8FRa5Rut_11native_ping.exit, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i64 0, ptr %i.n, align 8
  store i32 0, ptr %i.d, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i8 0, ptr %.sroa.410.0..sroa_idx, align 4
  %.sroa.511.sroa.3.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 0, ptr %.sroa.511.sroa.3.0..sroa.511.0..sroa_idx.sroa_idx, align 8
  %.sroa.511.sroa.4.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.511.sroa.4.0..sroa.511.0..sroa_idx.sroa_idx, align 8
  %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.o = invoke noundef nonnull ptr @_RNvNtNtCshhqnaxk4GqT_4rand4rngs6thread3rng()
          to label %.noexc30 unwind label %bb.y   ; 10 uses

.noexc30:                                         ; preds = %bb.f
  store ptr %i.o, ptr %i.c, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 9 uses
  %i.q = load i32, ptr %i.p, align 4, !noalias !98, !noundef !11 ; 4 uses
  %i.r = icmp ult i32 %i.q, 63
  br i1 %i.r, label %bb.j, label %bb.g

bb.g:                                             ; preds = %.noexc30
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 268
  %i.t = load i32, ptr %i.s, align 4, !alias.scope !99, !noalias !100, !noundef !11
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 272 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 320
  %i.w = load i64, ptr %i.v, align 4, !alias.scope !101, !noalias !102
  %i.x = icmp ugt i64 %i.w, 1023
  br i1 %i.x, label %bb.h, label %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i.i.i, !prof !12

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvMs_NtNtCshhqnaxk4GqT_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.u) #28
          to label %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i.i.i unwind label %bb.p

_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i.i.i: ; preds = %bb.h, %bb.g
  invoke void @_RNvXs_NtCs1aYz1mjYrQZ_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core5block9Generator8generateCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.u, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.p)
          to label %.noexc2.i unwind label %bb.p

.noexc2.i:                                        ; preds = %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i.i.i
  %i.y = load i32, ptr %i.p, align 4, !alias.scope !99, !noalias !100, !noundef !11 ; 2 uses
  %.not.i.i.i.i10.i.i.i.i.i = icmp eq i32 %i.q, 63
  br i1 %.not.i.i.i.i10.i.i.i.i.i, label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECshnt8FRa5Rut_11native_ping.exit14.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %.noexc2.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  %i.aa = load i32, ptr %i.z, align 4, !alias.scope !99, !noalias !100, !noundef !11
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECshnt8FRa5Rut_11native_ping.exit14.i.i.i.i.i

bb.j:                                             ; preds = %.noexc30
  %i.ab = zext nneg i32 %i.q to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.ab ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !alias.scope !99, !noalias !100, !noundef !11
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !alias.scope !99, !noalias !100, !noundef !11
  %i.ag = add nuw nsw i32 %i.q, 2
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECshnt8FRa5Rut_11native_ping.exit14.i.i.i.i.i

_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECshnt8FRa5Rut_11native_ping.exit14.i.i.i.i.i: ; preds = %bb.j, %bb.i, %.noexc2.i
  %.sroa.0.018.i.i.i.i11.i.i.i.i.i = phi i32 [ %i.ag, %bb.j ], [ 1, %.noexc2.i ], [ 2, %bb.i ] ; 5 uses
  %.sroa.02.017.i.i.i.i12.i.i.i.i.i = phi i32 [ %i.ad, %bb.j ], [ %i.t, %.noexc2.i ], [ %i.y, %bb.i ]
  %.sroa.03.016.i.i.i.i13.i.i.i.i.i = phi i32 [ %i.af, %bb.j ], [ %i.y, %.noexc2.i ], [ %i.aa, %bb.i ]
  store i32 %.sroa.0.018.i.i.i.i11.i.i.i.i.i, ptr %i.p, align 4, !alias.scope !99, !noalias !100
  %i.ah = zext i32 %.sroa.03.016.i.i.i.i13.i.i.i.i.i to i64
  %i.ai = shl nuw i64 %i.ah, 32
  %i.aj = zext i32 %.sroa.02.017.i.i.i.i12.i.i.i.i.i to i64
  %i.ak = or disjoint i64 %i.ai, %i.aj
  %i.al = zext i64 %i.ak to i128
  %i.am = mul nuw nsw i128 %i.al, 31              ; 2 uses
  %i.an = lshr i128 %i.am, 64
  %i.ao = trunc nuw nsw i128 %i.an to i32         ; 2 uses
  %i.ap = trunc i128 %i.am to i64                 ; 2 uses
  %i.aq = icmp ugt i64 %i.ap, -31
  br i1 %i.aq, label %bb.k, label %bb.r

bb.k:                                             ; preds = %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECshnt8FRa5Rut_11native_ping.exit14.i.i.i.i.i
  %i.ar = icmp samesign ult i32 %.sroa.0.018.i.i.i.i11.i.i.i.i.i, 63
  br i1 %i.ar, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 268
  %i.at = load i32, ptr %i.as, align 4, !alias.scope !103, !noalias !104, !noundef !11
  %i.au = getelementptr inbounds nuw i8, ptr %i.o, i64 272 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.o, i64 320
  %i.aw = load i64, ptr %i.av, align 4, !alias.scope !105, !noalias !106
  %i.ax = icmp ugt i64 %i.aw, 1023
  br i1 %i.ax, label %bb.m, label %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i.i.i, !prof !12

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvMs_NtNtCshhqnaxk4GqT_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.au) #28
          to label %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i.i.i unwind label %bb.p

_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i.i.i: ; preds = %bb.m, %bb.l
  invoke void @_RNvXs_NtCs1aYz1mjYrQZ_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core5block9Generator8generateCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.au, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.p)
          to label %.noexc4.i unwind label %bb.p

.noexc4.i:                                        ; preds = %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i.i.i
  %i.ay = load i32, ptr %i.p, align 4, !alias.scope !103, !noalias !104, !noundef !11 ; 2 uses
  %.not.i.i.i.i16.i.i.i.i.i = icmp eq i32 %.sroa.0.018.i.i.i.i11.i.i.i.i.i, 63
  br i1 %.not.i.i.i.i16.i.i.i.i.i, label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECshnt8FRa5Rut_11native_ping.exit20.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc4.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  %i.ba = load i32, ptr %i.az, align 4, !alias.scope !103, !noalias !104, !noundef !11
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECshnt8FRa5Rut_11native_ping.exit20.i.i.i.i.i

bb.o:                                             ; preds = %bb.k
  %i.bb = zext nneg i32 %.sroa.0.018.i.i.i.i11.i.i.i.i.i to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !alias.scope !103, !noalias !104, !noundef !11
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !alias.scope !103, !noalias !104, !noundef !11
  %i.bg = add nuw nsw i32 %.sroa.0.018.i.i.i.i11.i.i.i.i.i, 2
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECshnt8FRa5Rut_11native_ping.exit20.i.i.i.i.i

_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECshnt8FRa5Rut_11native_ping.exit20.i.i.i.i.i: ; preds = %bb.o, %bb.n, %.noexc4.i
  %.sroa.0.018.i.i.i.i17.i.i.i.i.i = phi i32 [ %i.bg, %bb.o ], [ 1, %.noexc4.i ], [ 2, %bb.n ]
  %.sroa.02.017.i.i.i.i18.i.i.i.i.i = phi i32 [ %i.bd, %bb.o ], [ %i.at, %.noexc4.i ], [ %i.ay, %bb.n ]
  %.sroa.03.016.i.i.i.i19.i.i.i.i.i = phi i32 [ %i.bf, %bb.o ], [ %i.ay, %.noexc4.i ], [ %i.ba, %bb.n ]
  store i32 %.sroa.0.018.i.i.i.i17.i.i.i.i.i, ptr %i.p, align 4, !alias.scope !103, !noalias !104
  %i.bh = zext i32 %.sroa.03.016.i.i.i.i19.i.i.i.i.i to i64
  %i.bi = shl nuw i64 %i.bh, 32
  %i.bj = zext i32 %.sroa.02.017.i.i.i.i18.i.i.i.i.i to i64
  %i.bk = or disjoint i64 %i.bi, %i.bj
  %4 = call i64 @llvm.umulh.i64(i64 %i.bk, i64 31)
  %i.bl = xor i64 %i.ap, -1
  %.not6.i.i.i.i.i = icmp ugt i64 %4, %i.bl
  %i.bm = zext i1 %.not6.i.i.i.i.i to i32
  %i.bn = add nuw nsw i32 %i.bm, %i.ao
  br label %bb.r

bb.p:                                             ; preds = %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i.i.i, %bb.m, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i.i.i, %bb.h
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !107)
  call void @llvm.experimental.noalias.scope.decl(metadata !108)
  call void @llvm.experimental.noalias.scope.decl(metadata !109)
  %i.bp = load ptr, ptr %i.c, align 8, !alias.scope !110, !nonnull !11, !noundef !11 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !noalias !110, !noundef !11
  %i.br = add i64 %i.bq, -1                       ; 2 uses
  store i64 %i.br, ptr %i.bp, align 8, !noalias !110
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %bb.q, label %.body

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCskKLDkoKarTP_4core4cell10UnsafeCellINtNtCsenQHu2qVDfv_9rand_core5block8BlockRngNtNtNtCshhqnaxk4GqT_4rand4rngs6thread13ReseedingCoreEEE9drop_slowB26_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #28
          to label %.body unwind label %bb.t

bb.r:                                             ; preds = %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECshnt8FRa5Rut_11native_ping.exit20.i.i.i.i.i, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECshnt8FRa5Rut_11native_ping.exit14.i.i.i.i.i
  %.sroa.01.0.i.i.i.i.i = phi i32 [ %i.bn, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECshnt8FRa5Rut_11native_ping.exit20.i.i.i.i.i ], [ %i.ao, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECshnt8FRa5Rut_11native_ping.exit14.i.i.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !111)
  call void @llvm.experimental.noalias.scope.decl(metadata !112)
  call void @llvm.experimental.noalias.scope.decl(metadata !113)
  %i.bt = load ptr, ptr %i.c, align 8, !alias.scope !114, !nonnull !11, !noundef !11 ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !noalias !114, !noundef !11
  %i.bv = add i64 %i.bu, -1                       ; 2 uses
  store i64 %i.bv, ptr %i.bt, align 8, !noalias !114
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %bb.s, label %bb.z

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCskKLDkoKarTP_4core4cell10UnsafeCellINtNtCsenQHu2qVDfv_9rand_core5block8BlockRngNtNtNtCshhqnaxk4GqT_4rand4rngs6thread13ReseedingCoreEEE9drop_slowB26_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #28
          to label %bb.z unwind label %bb.y

bb.t:                                             ; preds = %bb.q
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.u:                                             ; preds = %bb.e
  %i.by = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !noundef !11 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !115
  store ptr %i.a, ptr %i.b, align 8, !noalias !116
  %i.cc = icmp samesign ult i64 %i.cb, 2
  br i1 %i.cc, label %_RINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE11sort_by_keybNCINvMBz_INtBz_10NameServerB1B_E3newATNtNtB1H_4xfer8ProtocolINtNtB3K_12dns_exchange11DnsExchangeB1B_EEj0_Es_0ECshnt8FRa5Rut_11native_ping.exit, label %bb.v, !prof !13

bb.v:                                             ; preds = %bb.u
  %i.cd = icmp samesign ult i64 %i.cb, 21
  br i1 %i.cd, label %bb.x, label %bb.w, !prof !13

bb.w:                                             ; preds = %bb.v
  invoke void @_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6stable14driftsort_mainINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSBZ_11sort_by_keybNCINvMB12_INtB12_10NameServerB24_E3newATNtNtB2a_4xfer8ProtocolINtNtB4R_12dns_exchange11DnsExchangeB24_EEj0_Es_0E0INtNtB3t_3vec3VecBZ_EECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 %i.bz, i64 noundef range(i64 0, 230584300921369396) %i.cb, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #28
          to label %_RINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE11sort_by_keybNCINvMBz_INtBz_10NameServerB1B_E3newATNtNtB1H_4xfer8ProtocolINtNtB3K_12dns_exchange11DnsExchangeB1B_EEj0_Es_0ECshnt8FRa5Rut_11native_ping.exit unwind label %bb.ac

bb.x:                                             ; preds = %bb.v
  invoke void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1m_11sort_by_keybNCINvMB1p_INtB1p_10NameServerB2r_E3newATNtNtB2x_4xfer8ProtocolINtNtB5f_12dns_exchange11DnsExchangeB2r_EEj0_Es_0E0ECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 %i.bz, i64 noundef range(i64 0, 230584300921369396) %i.cb, i64 noundef 1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_RINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE11sort_by_keybNCINvMBz_INtBz_10NameServerB1B_E3newATNtNtB1H_4xfer8ProtocolINtNtB3K_12dns_exchange11DnsExchangeB1B_EEj0_Es_0ECshnt8FRa5Rut_11native_ping.exit unwind label %bb.ac

_RINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE11sort_by_keybNCINvMBz_INtBz_10NameServerB1B_E3newATNtNtB1H_4xfer8ProtocolINtNtB3K_12dns_exchange11DnsExchangeB1B_EEj0_Es_0ECshnt8FRa5Rut_11native_ping.exit: ; preds = %bb.x, %bb.w, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !115
  br label %bb.f

bb.y:                                             ; preds = %bb.s, %bb.f
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.p, %bb.q, %bb.y
  %eh.lpad-body = phi { ptr, i32 } [ %i.ce, %bb.y ], [ %i.bo, %bb.q ], [ %i.bo, %bb.p ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util4lock5mutex5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(80) %i.d) #30
          to label %bb.ab unwind label %bb.aa

bb.z:                                             ; preds = %bb.r, %bb.s
  %i.cf = add nuw nsw i32 %.sroa.01.0.i.i.i.i.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.cg, ptr noundef nonnull align 8 dereferenceable(80) %i.d, i64 80, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 0, ptr %i.ch, align 8
  %.sroa.019.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 -1, ptr %.sroa.019.sroa.5.0..sroa_idx, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 %i.cf, ptr %.sroa.420.0..sroa_idx, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %3, ptr %i.ci, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.aa:                                            ; preds = %bb.c, %bb.ae, %bb.ac, %bb.ab, %.body
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.ab:                                            ; preds = %.body
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsa9Jrx9KOzzM_16hickory_resolver6config16NameServerConfigECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(48) %i.e) #30
          to label %bb.b unwind label %bb.aa

bb.ac:                                            ; preds = %bb.x, %bb.w
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #30
          to label %bb.b unwind label %bb.aa

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderECshnt8FRa5Rut_11native_ping.exit: ; preds = %bb.b, %bb.c
  br i1 %.sroa.01.0, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ae, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderECshnt8FRa5Rut_11native_ping.exit
  resume { ptr, i32 } %.pn.pn

bb.ae:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderECshnt8FRa5Rut_11native_ping.exit
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsa9Jrx9KOzzM_16hickory_resolver6config16NameServerConfigECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(48) %1) #30
          to label %bb.ad unwind label %bb.aa
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RINvMs6_NtCsa9Jrx9KOzzM_16hickory_resolver11name_serverNtB6_16ConnectionPolicy13allows_serverNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !11 ; 3 uses
  %.idx = mul nuw nsw i64 %i.d, 36
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  %i.f = load i8, ptr %0, align 1, !range !14, !alias.scope !120, !noalias !121
  %.fr11.i = freeze i8 %i.f
  %i.g = trunc i8 %.fr11.i to i1
  br i1 %i.g, label %.split.i.preheader, label %.split.us.i

.split.i.preheader:                               ; preds = %bb.a
  %.not.not.i.not2 = icmp eq i64 %i.d, 0
  br i1 %.not.not.i.not2, label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtCsa9Jrx9KOzzM_16hickory_resolver6config16ConnectionConfigENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1P_8adapters3map12map_try_foldRBJ_NtNtCs4LZN9PPmi2I_11hickory_net4xfer8ProtocoluINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMNtBN_11name_serverINtB4M_10NameServerNtNtNtB3k_7runtime13tokio_runtime20TokioRuntimeProviderE9protocols0NCINvNvB1J_3any5checkB3g_NCINvMs6_B4M_NtB4M_16ConnectionPolicy13allows_serverB5n_E0E0E0B40_ECshnt8FRa5Rut_11native_ping.exit, label %.lr.ph

.split.us.i:                                      ; preds = %bb.a
  %.not12.i = icmp ne i64 %i.d, 0
  br label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtCsa9Jrx9KOzzM_16hickory_resolver6config16ConnectionConfigENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1P_8adapters3map12map_try_foldRBJ_NtNtCs4LZN9PPmi2I_11hickory_net4xfer8ProtocoluINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMNtBN_11name_serverINtB4M_10NameServerNtNtNtB3k_7runtime13tokio_runtime20TokioRuntimeProviderE9protocols0NCINvNvB1J_3any5checkB3g_NCINvMs6_B4M_NtB4M_16ConnectionPolicy13allows_serverB5n_E0E0E0B40_ECshnt8FRa5Rut_11native_ping.exit

.lr.ph:                                           ; preds = %.lr.ph, %.split.i.preheader
  %i.h = phi ptr [ %i.k, %.lr.ph ], [ %i.b, %.split.i.preheader ] ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 34
  %.val5.i = load i8, ptr %i.i, align 2, !range !14, !noalias !122, !noundef !11
  %i.j = trunc nuw i8 %.val5.i to i1              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 36 ; 2 uses
  %.not.not.i.not = icmp eq ptr %i.k, %i.e
  %or.cond = select i1 %i.j, i1 true, i1 %.not.not.i.not
  br i1 %or.cond, label %_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtCsa9Jrx9KOzzM_16hickory_resolver6config16ConnectionConfigENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1P_8adapters3map12map_try_foldRBJ_NtNtCs4LZN9PPmi2I_11hickory_net4xfer8ProtocoluINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMNtBN_11name_serverINtB4M_10NameServerNtNtNtB3k_7runtime13tokio_runtime20TokioRuntimeProviderE9protocols0NCINvNvB1J_3any5checkB3g_NCINvMs6_B4M_NtB4M_16ConnectionPolicy13allows_serverB5n_E0E0E0B40_ECshnt8FRa5Rut_11native_ping.exit, label %.lr.ph

_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtCsa9Jrx9KOzzM_16hickory_resolver6config16ConnectionConfigENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1P_8adapters3map12map_try_foldRBJ_NtNtCs4LZN9PPmi2I_11hickory_net4xfer8ProtocoluINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMNtBN_11name_serverINtB4M_10NameServerNtNtNtB3k_7runtime13tokio_runtime20TokioRuntimeProviderE9protocols0NCINvNvB1J_3any5checkB3g_NCINvMs6_B4M_NtB4M_16ConnectionPolicy13allows_serverB5n_E0E0E0B40_ECshnt8FRa5Rut_11native_ping.exit: ; preds = %.lr.ph, %.split.i.preheader, %.split.us.i
  %.us-phi.i = phi i1 [ %.not12.i, %.split.us.i ], [ false, %.split.i.preheader ], [ %i.j, %.lr.ph ]
  ret i1 %.us-phi.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvMs6_NtCsa9Jrx9KOzzM_16hickory_resolver11name_serverNtB6_16ConnectionPolicy17select_connectionNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(17) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %2, ptr noalias nofree noundef nonnull readonly captures(none) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %4, i64 noundef range(i64 0, 230584300921369396) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.idx = mul nuw nsw i64 %5, 40                  ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 %.idx ; 2 uses
  %i.b = load i8, ptr %0, align 1, !range !14
  %.fr13 = freeze i8 %i.b
  %i.c = trunc i8 %.fr13 to i1
  %i.d = icmp eq i64 %5, 0                        ; 2 uses
  br i1 %i.c, label %.split.us.preheader, label %.split

.split.us.preheader:                              ; preds = %bb.a
  br i1 %i.d, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter6FilterINtNtNtBc_5slice4iter4IterINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEENCINvMs6_B1q_NtB1q_16ConnectionPolicy17select_connectionB2s_E0ENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB4L_6min_by4foldRB1n_NCB3M_s_0E0ECshnt8FRa5Rut_11native_ping.exit, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvMs6_NtCsa9Jrx9KOzzM_16hickory_resolver11name_serverNtBX_16ConnectionPolicy17select_connectionNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE0INtB7_5FnMutTRRINtBX_15ConnectionStateB2o_EEE8call_mutCshnt8FRa5Rut_11native_ping.exit.i.i.i.us

.split.us:                                        ; preds = %_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvMs6_NtCsa9Jrx9KOzzM_16hickory_resolver11name_serverNtBX_16ConnectionPolicy17select_connectionNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE0INtB7_5FnMutTRRINtBX_15ConnectionStateB2o_EEE8call_mutCshnt8FRa5Rut_11native_ping.exit.i.i.i.us
  br i1 %i.j, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter6FilterINtNtNtBc_5slice4iter4IterINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEENCINvMs6_B1q_NtB1q_16ConnectionPolicy17select_connectionB2s_E0ENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB4L_6min_by4foldRB1n_NCB3M_s_0E0ECshnt8FRa5Rut_11native_ping.exit, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvMs6_NtCsa9Jrx9KOzzM_16hickory_resolver11name_serverNtBX_16ConnectionPolicy17select_connectionNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE0INtB7_5FnMutTRRINtBX_15ConnectionStateB2o_EEE8call_mutCshnt8FRa5Rut_11native_ping.exit.i.i.i.us

_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvMs6_NtCsa9Jrx9KOzzM_16hickory_resolver11name_serverNtBX_16ConnectionPolicy17select_connectionNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE0INtB7_5FnMutTRRINtBX_15ConnectionStateB2o_EEE8call_mutCshnt8FRa5Rut_11native_ping.exit.i.i.i.us: ; preds = %.split.us.preheader, %.split.us
  %i.e = phi ptr [ %i.f, %.split.us ], [ %4, %.split.us.preheader ] ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.h = load i8, ptr %i.g, align 8, !range !14, !noalias !144, !noundef !11
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = icmp eq ptr %i.f, %i.a                   ; 2 uses
  br i1 %i.i, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEENCINvMs6_B1v_NtB1v_16ConnectionPolicy17select_connectionB2x_E0ENtNtNtB9_6traits8iterator8Iterator4nextCshnt8FRa5Rut_11native_ping.exit.thread3.i, label %.split.us

.split:                                           ; preds = %bb.a
  br i1 %i.d, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter6FilterINtNtNtBc_5slice4iter4IterINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEENCINvMs6_B1q_NtB1q_16ConnectionPolicy17select_connectionB2s_E0ENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB4L_6min_by4foldRB1n_NCB3M_s_0E0ECshnt8FRa5Rut_11native_ping.exit, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEENCINvMs6_B1v_NtB1v_16ConnectionPolicy17select_connectionB2x_E0ENtNtNtB9_6traits8iterator8Iterator4nextCshnt8FRa5Rut_11native_ping.exit.thread3.i.thread

_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEENCINvMs6_B1v_NtB1v_16ConnectionPolicy17select_connectionB2x_E0ENtNtNtB9_6traits8iterator8Iterator4nextCshnt8FRa5Rut_11native_ping.exit.thread3.i: ; preds = %_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvMs6_NtCsa9Jrx9KOzzM_16hickory_resolver11name_serverNtBX_16ConnectionPolicy17select_connectionNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE0INtB7_5FnMutTRRINtBX_15ConnectionStateB2o_EEE8call_mutCshnt8FRa5Rut_11native_ping.exit.i.i.i.us
  br i1 %i.j, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter6FilterINtNtNtBc_5slice4iter4IterINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEENCINvMs6_B1q_NtB1q_16ConnectionPolicy17select_connectionB2s_E0ENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB4L_6min_by4foldRB1n_NCB3M_s_0E0ECshnt8FRa5Rut_11native_ping.exit, label %bb.b

_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEENCINvMs6_B1v_NtB1v_16ConnectionPolicy17select_connectionB2x_E0ENtNtNtB9_6traits8iterator8Iterator4nextCshnt8FRa5Rut_11native_ping.exit.thread3.i.thread: ; preds = %.split
  %i.k = icmp eq i64 %5, 1
  br i1 %i.k, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter6FilterINtNtNtBc_5slice4iter4IterINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEENCINvMs6_B1q_NtB1q_16ConnectionPolicy17select_connectionB2s_E0ENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB4L_6min_by4foldRB1n_NCB3M_s_0E0ECshnt8FRa5Rut_11native_ping.exit, label %.thread

.thread:                                          ; preds = %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEENCINvMs6_B1v_NtB1v_16ConnectionPolicy17select_connectionB2x_E0ENtNtNtB9_6traits8iterator8Iterator4nextCshnt8FRa5Rut_11native_ping.exit.thread3.i.thread
end_hunk_0
begin_hunk_1_@_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECshnt8FRa5Rut_11native_ping:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3604
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.i, align 8, !alias.scope !3604
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.e, ptr %.val13.i, i64 noundef %..i14.i, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !3604
  %i.j = load i64, ptr %i.a, align 8, !range !21, !noalias !3604, !noundef !11
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.l, align 8, !range !39, !noalias !3604, !noundef !11
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noalias !3604
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3604
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.b
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.b ], [ %i.o, %bb.d ], [ undef, %bb.a ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.b ], [ %i.m, %bb.d ], [ 0, %bb.a ]
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #33
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.l, align 8, !noalias !3604, !nonnull !11, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3604
  store ptr %i.p, ptr %i.i, align 8, !alias.scope !3604
  %i.q = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.q)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !3604
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef nonnull ptr @_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt11sample_iterhNtNtB9_5distr15StandardUniformECshnt8FRa5Rut_11native_ping(ptr nofree noundef nonnull readnone returned captures(ret: address, provenance) %0) unnamed_addr #3 {
bb.a:
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i16 @_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangetINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivetEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i48 %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i48 %1 to i16  ; 3 uses
  %.sroa.2.0.extract.shift = lshr i48 %1, 16
  %.sroa.2.0.extract.trunc = trunc i48 %.sroa.2.0.extract.shift to i16 ; 2 uses
  %.not.i = icmp ugt i16 %.sroa.0.0.extract.trunc, %.sroa.2.0.extract.trunc
  br i1 %.not.i, label %bb.p, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %.val10 = load ptr, ptr %0, align 8             ; 10 uses
  %i.a = sub nuw i16 %.sroa.2.0.extract.trunc, %.sroa.0.0.extract.trunc
  %i.b = add i16 %i.a, 1                          ; 3 uses
  %i.c = icmp eq i16 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10) ]
  %i.d = getelementptr inbounds nuw i8, ptr %.val10, i64 16 ; 5 uses
  %i.e = load i32, ptr %i.d, align 4, !alias.scope !3629, !noalias !3630, !noundef !11 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 63
  br i1 %i.f, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val10, i64 272 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val10, i64 320
  %i.i = load i64, ptr %i.h, align 4, !alias.scope !3631, !noalias !3632
  %i.j = icmp ugt i64 %i.i, 1023
  br i1 %i.j, label %bb.e, label %.thread.i.i.i.i.i.i, !prof !12

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvMs_NtNtCshhqnaxk4GqT_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.g) #28, !noalias !3632
  br label %.thread.i.i.i.i.i.i

.thread.i.i.i.i.i.i:                              ; preds = %bb.e, %bb.d
  tail call void @_RNvXs_NtCs1aYz1mjYrQZ_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core5block9Generator8generateCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.g, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.d), !noalias !3630
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomtECshnt8FRa5Rut_11native_ping.exit.i.i

bb.f:                                             ; preds = %bb.c
  %i.k = zext nneg i32 %i.e to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.k
  %i.m = add nuw nsw i32 %i.e, 1
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomtECshnt8FRa5Rut_11native_ping.exit.i.i

_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomtECshnt8FRa5Rut_11native_ping.exit.i.i: ; preds = %bb.f, %.thread.i.i.i.i.i.i
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i.i = phi i32 [ 1, %.thread.i.i.i.i.i.i ], [ %i.m, %bb.f ]
  %.in.i.i.i.i.i.i = phi ptr [ %i.d, %.thread.i.i.i.i.i.i ], [ %i.l, %bb.f ]
  %i.n = load i32, ptr %.in.i.i.i.i.i.i, align 4, !alias.scope !3629, !noalias !3630, !noundef !11
  store i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i.i, ptr %i.d, align 4, !alias.scope !3629, !noalias !3630
  %i.o = trunc i32 %i.n to i16
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResulttNtNtNtCshhqnaxk4GqT_4rand5distr7uniform5ErrorE6unwrapCshnt8FRa5Rut_11native_ping.exit

bb.g:                                             ; preds = %bb.b
  %i.p = zext i16 %i.b to i32
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10) ]
  %i.q = getelementptr inbounds nuw i8, ptr %.val10, i64 16 ; 9 uses
  %i.r = load i32, ptr %i.q, align 4, !alias.scope !3633, !noalias !3634, !noundef !11 ; 3 uses
  %i.s = icmp ugt i32 %i.r, 63
  br i1 %i.s, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %.val10, i64 272 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val10, i64 320
  %i.v = load i64, ptr %i.u, align 4, !alias.scope !3635, !noalias !3636
  %i.w = icmp ugt i64 %i.v, 1023
  br i1 %i.w, label %bb.i, label %.thread.i.i.i.i13.i.i, !prof !12

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvMs_NtNtCshhqnaxk4GqT_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.t) #28, !noalias !3636
  br label %.thread.i.i.i.i13.i.i

.thread.i.i.i.i13.i.i:                            ; preds = %bb.i, %bb.h
  tail call void @_RNvXs_NtCs1aYz1mjYrQZ_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core5block9Generator8generateCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.t, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.q), !noalias !3634
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECshnt8FRa5Rut_11native_ping.exit.i.i

bb.j:                                             ; preds = %bb.g
  %i.x = zext nneg i32 %i.r to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.x
  %i.z = add nuw nsw i32 %i.r, 1
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECshnt8FRa5Rut_11native_ping.exit.i.i

_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECshnt8FRa5Rut_11native_ping.exit.i.i: ; preds = %bb.j, %.thread.i.i.i.i13.i.i
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i11.i.i = phi i32 [ 1, %.thread.i.i.i.i13.i.i ], [ %i.z, %bb.j ] ; 4 uses
  %.in.i.i.i.i12.i.i = phi ptr [ %i.q, %.thread.i.i.i.i13.i.i ], [ %i.y, %bb.j ]
  %i.aa = load i32, ptr %.in.i.i.i.i12.i.i, align 4, !alias.scope !3633, !noalias !3634, !noundef !11
  store i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i11.i.i, ptr %i.q, align 4, !alias.scope !3633, !noalias !3634
  %i.ab = zext i32 %i.aa to i64
  %i.ac = zext i16 %i.b to i64                    ; 2 uses
  %i.ad = mul nuw nsw i64 %i.ab, %i.ac            ; 2 uses
  %i.ae = lshr i64 %i.ad, 32
  %i.af = trunc nuw i64 %i.ae to i16              ; 2 uses
  %i.ag = trunc i64 %i.ad to i32                  ; 2 uses
  %i.ah = sub nsw i32 0, %i.p
  %i.ai = icmp ugt i32 %i.ag, %i.ah
  br i1 %i.ai, label %bb.k, label %bb.o

bb.k:                                             ; preds = %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECshnt8FRa5Rut_11native_ping.exit.i.i
  %i.aj = icmp samesign ugt i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i11.i.i, 63
  br i1 %i.aj, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %.val10, i64 272 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val10, i64 320
  %i.am = load i64, ptr %i.al, align 4, !alias.scope !3637, !noalias !3638
  %i.an = icmp ugt i64 %i.am, 1023
  br i1 %i.an, label %bb.m, label %.thread.i.i.i.i16.i.i, !prof !12

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvMs_NtNtCshhqnaxk4GqT_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.ak) #28, !noalias !3638
  br label %.thread.i.i.i.i16.i.i

.thread.i.i.i.i16.i.i:                            ; preds = %bb.m, %bb.l
  tail call void @_RNvXs_NtCs1aYz1mjYrQZ_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core5block9Generator8generateCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.ak, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.q), !noalias !3639
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECshnt8FRa5Rut_11native_ping.exit17.i.i

bb.n:                                             ; preds = %bb.k
  %i.ao = zext nneg i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i11.i.i to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ao
  %i.aq = add nuw nsw i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i11.i.i, 1
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECshnt8FRa5Rut_11native_ping.exit17.i.i

_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECshnt8FRa5Rut_11native_ping.exit17.i.i: ; preds = %bb.n, %.thread.i.i.i.i16.i.i
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i14.i.i = phi i32 [ 1, %.thread.i.i.i.i16.i.i ], [ %i.aq, %bb.n ]
  %.in.i.i.i.i15.i.i = phi ptr [ %i.q, %.thread.i.i.i.i16.i.i ], [ %i.ap, %bb.n ]
  %i.ar = load i32, ptr %.in.i.i.i.i15.i.i, align 4, !alias.scope !3640, !noalias !3639, !noundef !11
  store i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i14.i.i, ptr %i.q, align 4, !alias.scope !3640, !noalias !3639
  %i.as = zext i32 %i.ar to i64
  %i.at = mul nuw nsw i64 %i.as, %i.ac
  %i.au = lshr i64 %i.at, 32
  %i.av = trunc nuw nsw i64 %i.au to i32
  %i.aw = xor i32 %i.ag, -1
  %.not8.i.i = icmp samesign ult i32 %i.aw, %i.av
  %i.ax = zext i1 %.not8.i.i to i16
  %i.ay = add nuw i16 %i.ax, %i.af
  br label %bb.o

bb.o:                                             ; preds = %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECshnt8FRa5Rut_11native_ping.exit17.i.i, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECshnt8FRa5Rut_11native_ping.exit.i.i
  %.sroa.03.0.i.i = phi i16 [ %i.ay, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECshnt8FRa5Rut_11native_ping.exit17.i.i ], [ %i.af, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECshnt8FRa5Rut_11native_ping.exit.i.i ]
  %i.az = add i16 %.sroa.03.0.i.i, %.sroa.0.0.extract.trunc
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResulttNtNtNtCshhqnaxk4GqT_4rand5distr7uniform5ErrorE6unwrapCshnt8FRa5Rut_11native_ping.exit

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResulttNtNtNtCshhqnaxk4GqT_4rand5distr7uniform5ErrorE6unwrapCshnt8FRa5Rut_11native_ping.exit: ; preds = %bb.o, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomtECshnt8FRa5Rut_11native_ping.exit.i.i
  %.sroa.5.0.i.i = phi i16 [ %i.o, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomtECshnt8FRa5Rut_11native_ping.exit.i.i ], [ %i.az, %bb.o ]
  ret i16 %.sroa.5.0.i.i

bb.p:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @11, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangeyINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusiveyEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i64, ptr %1, align 8, !alias.scope !3671, !noalias !3672, !noundef !11 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !alias.scope !3672, !noalias !3671, !noundef !11 ; 2 uses
  %.not.i = icmp ugt i64 %.val, %.val1
  br i1 %.not.i, label %bb.s, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %.val4 = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11 ; 13 uses
  %i.b = sub nuw i64 %.val1, %.val                ; 2 uses
  %i.c = add i64 %i.b, 1                          ; 3 uses
  %i.d = icmp eq i64 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %.val4, i64 16 ; 13 uses
  %i.f = load i32, ptr %i.e, align 4, !noalias !3673, !noundef !11 ; 7 uses
  %i.g = icmp ult i32 %i.f, 63                    ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  br i1 %i.g, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.val4, i64 268
  %i.i = load i32, ptr %i.h, align 4, !alias.scope !3674, !noalias !3675, !noundef !11
  %i.j = getelementptr inbounds nuw i8, ptr %.val4, i64 272 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val4, i64 320
  %i.l = load i64, ptr %i.k, align 4, !alias.scope !3676, !noalias !3677
  %i.m = icmp ugt i64 %i.l, 1023
  br i1 %i.m, label %bb.e, label %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i, !prof !12

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvMs_NtNtCshhqnaxk4GqT_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.j) #28, !noalias !3677
  br label %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i

_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i: ; preds = %bb.e, %bb.d
  tail call void @_RNvXs_NtCs1aYz1mjYrQZ_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core5block9Generator8generateCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.j, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.e), !noalias !3675
  %i.n = load i32, ptr %i.e, align 4, !alias.scope !3674, !noalias !3675, !noundef !11 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.f, 63
  br i1 %.not.i.i.i.i.i.i, label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECshnt8FRa5Rut_11native_ping.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.val4, i64 20
  %i.p = load i32, ptr %i.o, align 4, !alias.scope !3674, !noalias !3675, !noundef !11
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECshnt8FRa5Rut_11native_ping.exit.i.i

bb.g:                                             ; preds = %bb.c
  %i.q = zext nneg i32 %i.f to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !alias.scope !3674, !noalias !3675, !noundef !11
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.u = load i32, ptr %i.t, align 4, !alias.scope !3674, !noalias !3675, !noundef !11
  %i.v = add nuw nsw i32 %i.f, 2
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECshnt8FRa5Rut_11native_ping.exit.i.i

_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECshnt8FRa5Rut_11native_ping.exit.i.i: ; preds = %bb.g, %bb.f, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i
  %.sroa.0.018.i.i.i.i.i.i = phi i32 [ %i.v, %bb.g ], [ 1, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i ], [ 2, %bb.f ]
  %.sroa.02.017.i.i.i.i.i.i = phi i32 [ %i.s, %bb.g ], [ %i.i, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i ], [ %i.n, %bb.f ]
  %.sroa.03.016.i.i.i.i.i.i = phi i32 [ %i.u, %bb.g ], [ %i.n, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i ], [ %i.p, %bb.f ]
  store i32 %.sroa.0.018.i.i.i.i.i.i, ptr %i.e, align 4, !alias.scope !3674, !noalias !3675
  %i.w = zext i32 %.sroa.03.016.i.i.i.i.i.i to i64
  %i.x = shl nuw i64 %i.w, 32
  %i.y = zext i32 %.sroa.02.017.i.i.i.i.i.i to i64
  %i.z = or disjoint i64 %i.x, %i.y
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultyNtNtNtCshhqnaxk4GqT_4rand5distr7uniform5ErrorE6unwrapCshnt8FRa5Rut_11native_ping.exit

bb.h:                                             ; preds = %bb.b
  br i1 %i.g, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %.val4, i64 268
  %i.ab = load i32, ptr %i.aa, align 4, !alias.scope !3678, !noalias !3679, !noundef !11
  %i.ac = getelementptr inbounds nuw i8, ptr %.val4, i64 272 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val4, i64 320
  %i.ae = load i64, ptr %i.ad, align 4, !alias.scope !3680, !noalias !3681
  %i.af = icmp ugt i64 %i.ae, 1023
  br i1 %i.af, label %bb.j, label %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i, !prof !12

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvMs_NtNtCshhqnaxk4GqT_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.ac) #28, !noalias !3681
  br label %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i

_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i: ; preds = %bb.j, %bb.i
  tail call void @_RNvXs_NtCs1aYz1mjYrQZ_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core5block9Generator8generateCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.ac, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.e), !noalias !3679
  %i.ag = load i32, ptr %i.e, align 4, !alias.scope !3678, !noalias !3679, !noundef !11 ; 2 uses
  %.not.i.i.i.i10.i.i = icmp eq i32 %i.f, 63
  br i1 %.not.i.i.i.i10.i.i, label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECshnt8FRa5Rut_11native_ping.exit14.i.i, label %bb.k

bb.k:                                             ; preds = %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.val4, i64 20
  %i.ai = load i32, ptr %i.ah, align 4, !alias.scope !3678, !noalias !3679, !noundef !11
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECshnt8FRa5Rut_11native_ping.exit14.i.i

bb.l:                                             ; preds = %bb.h
  %i.aj = zext nneg i32 %i.f to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.aj ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !alias.scope !3678, !noalias !3679, !noundef !11
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.an = load i32, ptr %i.am, align 4, !alias.scope !3678, !noalias !3679, !noundef !11
  %i.ao = add nuw nsw i32 %i.f, 2
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECshnt8FRa5Rut_11native_ping.exit14.i.i

_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECshnt8FRa5Rut_11native_ping.exit14.i.i: ; preds = %bb.l, %bb.k, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i
  %.sroa.0.018.i.i.i.i11.i.i = phi i32 [ %i.ao, %bb.l ], [ 1, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i ], [ 2, %bb.k ] ; 5 uses
  %.sroa.02.017.i.i.i.i12.i.i = phi i32 [ %i.al, %bb.l ], [ %i.ab, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i ], [ %i.ag, %bb.k ]
  %.sroa.03.016.i.i.i.i13.i.i = phi i32 [ %i.an, %bb.l ], [ %i.ag, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i ], [ %i.ai, %bb.k ]
  store i32 %.sroa.0.018.i.i.i.i11.i.i, ptr %i.e, align 4, !alias.scope !3678, !noalias !3679
  %i.ap = zext i32 %.sroa.03.016.i.i.i.i13.i.i to i64
  %i.aq = shl nuw i64 %i.ap, 32
  %i.ar = zext i32 %.sroa.02.017.i.i.i.i12.i.i to i64
  %i.as = or disjoint i64 %i.aq, %i.ar
  %i.at = zext i64 %i.as to i128
  %i.au = zext i64 %i.c to i128
  %i.av = mul nuw i128 %i.at, %i.au               ; 2 uses
  %i.aw = lshr i128 %i.av, 64
  %i.ax = trunc nuw i128 %i.aw to i64             ; 2 uses
  %i.ay = trunc i128 %i.av to i64                 ; 2 uses
  %i.az = xor i64 %i.b, -1
  %i.ba = icmp ugt i64 %i.ay, %i.az
  br i1 %i.ba, label %bb.m, label %bb.r

bb.m:                                             ; preds = %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECshnt8FRa5Rut_11native_ping.exit14.i.i
  %i.bb = icmp samesign ult i32 %.sroa.0.018.i.i.i.i11.i.i, 63
  br i1 %i.bb, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %.val4, i64 268
  %i.bd = load i32, ptr %i.bc, align 4, !alias.scope !3682, !noalias !3683, !noundef !11
  %i.be = getelementptr inbounds nuw i8, ptr %.val4, i64 272 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.val4, i64 320
  %i.bg = load i64, ptr %i.bf, align 4, !alias.scope !3684, !noalias !3685
  %i.bh = icmp ugt i64 %i.bg, 1023
  br i1 %i.bh, label %bb.o, label %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i, !prof !12

bb.o:                                             ; preds = %bb.n
  tail call void @_RNvMs_NtNtCshhqnaxk4GqT_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.be) #28, !noalias !3685
  br label %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i

_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i: ; preds = %bb.o, %bb.n
  tail call void @_RNvXs_NtCs1aYz1mjYrQZ_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core5block9Generator8generateCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.be, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.e), !noalias !3683
  %i.bi = load i32, ptr %i.e, align 4, !alias.scope !3682, !noalias !3683, !noundef !11 ; 2 uses
  %.not.i.i.i.i16.i.i = icmp eq i32 %.sroa.0.018.i.i.i.i11.i.i, 63
  br i1 %.not.i.i.i.i16.i.i, label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECshnt8FRa5Rut_11native_ping.exit20.i.i, label %bb.p

bb.p:                                             ; preds = %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.val4, i64 20
  %i.bk = load i32, ptr %i.bj, align 4, !alias.scope !3682, !noalias !3683, !noundef !11
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECshnt8FRa5Rut_11native_ping.exit20.i.i

bb.q:                                             ; preds = %bb.m
  %i.bl = zext nneg i32 %.sroa.0.018.i.i.i.i11.i.i to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.bl ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !alias.scope !3682, !noalias !3683, !noundef !11
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !alias.scope !3682, !noalias !3683, !noundef !11
  %i.bq = add nuw nsw i32 %.sroa.0.018.i.i.i.i11.i.i, 2
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECshnt8FRa5Rut_11native_ping.exit20.i.i

_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECshnt8FRa5Rut_11native_ping.exit20.i.i: ; preds = %bb.q, %bb.p, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i
  %.sroa.0.018.i.i.i.i17.i.i = phi i32 [ %i.bq, %bb.q ], [ 1, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i ], [ 2, %bb.p ]
  %.sroa.02.017.i.i.i.i18.i.i = phi i32 [ %i.bn, %bb.q ], [ %i.bd, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i ], [ %i.bi, %bb.p ]
  %.sroa.03.016.i.i.i.i19.i.i = phi i32 [ %i.bp, %bb.q ], [ %i.bi, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i ], [ %i.bk, %bb.p ]
  store i32 %.sroa.0.018.i.i.i.i17.i.i, ptr %i.e, align 4, !alias.scope !3682, !noalias !3683
  %i.br = zext i32 %.sroa.03.016.i.i.i.i19.i.i to i64
  %i.bs = shl nuw i64 %i.br, 32
  %i.bt = zext i32 %.sroa.02.017.i.i.i.i18.i.i to i64
  %i.bu = or disjoint i64 %i.bs, %i.bt
  %3 = tail call i64 @llvm.umulh.i64(i64 %i.bu, i64 %i.c)
  %i.bv = xor i64 %i.ay, -1
  %.not6.i.i = icmp ugt i64 %3, %i.bv
  %i.bw = zext i1 %.not6.i.i to i64
  %i.bx = add nuw i64 %i.bw, %i.ax
  br label %bb.r

bb.r:                                             ; preds = %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECshnt8FRa5Rut_11native_ping.exit20.i.i, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECshnt8FRa5Rut_11native_ping.exit14.i.i
  %.sroa.01.0.i.i = phi i64 [ %i.bx, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECshnt8FRa5Rut_11native_ping.exit20.i.i ], [ %i.ax, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECshnt8FRa5Rut_11native_ping.exit14.i.i ]
  %i.by = add i64 %.sroa.01.0.i.i, %.val
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultyNtNtNtCshhqnaxk4GqT_4rand5distr7uniform5ErrorE6unwrapCshnt8FRa5Rut_11native_ping.exit

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultyNtNtNtCshhqnaxk4GqT_4rand5distr7uniform5ErrorE6unwrapCshnt8FRa5Rut_11native_ping.exit: ; preds = %bb.r, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECshnt8FRa5Rut_11native_ping.exit.i.i
  %.sroa.65.0 = phi i64 [ %i.by, %bb.r ], [ %i.z, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECshnt8FRa5Rut_11native_ping.exit.i.i ]
  ret i64 %.sroa.65.0

bb.s:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @11, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #31
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMNtNtCs4LZN9PPmi2I_11hickory_net3tcp17tcp_client_streamINtB5_15TcpClientStreamINtNtNtB9_7runtime8iocompat17AsyncIoTokioAsStdNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEE8exchangeNtNtB1p_13tokio_runtime20TokioRuntimeProviderE0Cshnt8FRa5Rut_11native_ping(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [656 x i8], align 8               ; 4 uses
  %i.c = alloca [672 x i8], align 8               ; 6 uses
  %i.d = alloca [672 x i8], align 8               ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [672 x i8], align 8               ; 9 uses
  %i.g = alloca [1 x i8], align 1                 ; 3 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %i.l = alloca [32 x i8], align 8                ; 5 uses
  %i.m = alloca [56 x i8], align 8                ; 4 uses
  %i.n = alloca [216 x i8], align 8               ; 8 uses
  %i.o = alloca [216 x i8], align 8               ; 17 uses
  %.sroa.1227.i = alloca [64 x i8], align 8       ; 5 uses
  %.sroa.5.i = alloca [16 x i8], align 8          ; 5 uses
  %i.p = alloca [32 x i8], align 8                ; 8 uses
  %i.q = alloca [32 x i8], align 4                ; 5 uses
  %i.r = alloca [32 x i8], align 4                ; 5 uses
  %.sroa.3118 = alloca [28 x i8], align 4         ; 3 uses
  %.sroa.4120 = alloca [32 x i8], align 8         ; 2 uses
  %i.s = alloca [352 x i8], align 8               ; 18 uses
  %.sroa.0109 = alloca [376 x i8], align 8        ; 6 uses
  %i.t = alloca [656 x i8], align 8               ; 9 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.1245 = alloca [60 x i8], align 4         ; 2 uses
  %i.v = alloca [56 x i8], align 8                ; 5 uses
  %.sroa.3.sroa.3 = alloca [28 x i8], align 4     ; 5 uses
  %.sroa.3.sroa.5 = alloca [32 x i8], align 8     ; 5 uses
  %.sroa.3.sroa.7 = alloca [144 x i8], align 8    ; 4 uses
  %.sroa.14 = alloca [60 x i8], align 4           ; 8 uses
  %.sroa.035.sroa.10.sroa.10 = alloca [28 x i8], align 4 ; 9 uses
  %.sroa.035.sroa.10.sroa.11 = alloca [32 x i8], align 8 ; 9 uses
  %.sroa.035.sroa.11 = alloca [144 x i8], align 8 ; 9 uses
  %.sroa.13 = alloca [32 x i8], align 8           ; 9 uses
  %i.w = alloca [248 x i8], align 8               ; 6 uses
  %i.x = alloca [192 x i8], align 8               ; 9 uses
  %i.y = alloca [32 x i8], align 4                ; 7 uses
  %i.z = alloca [32 x i8], align 4                ; 7 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 3 uses
  %i.ab = load i8, ptr %i.aa, align 8, !range !30, !noundef !11
  switch i8 %i.ab, label %default.unreachable144 [
    i8 0, label %bb.b
    i8 1, label %bb.j
    i8 2, label %bb.k
    i8 3, label %bb.d
  ]

default.unreachable144:                           ; preds = %bb.l, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 403 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 402 ; 2 uses
  store i8 0, ptr %i.ad, align 2
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 401 ; 2 uses
  store i8 0, ptr %i.ae, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.af, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i64 32, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !11
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.al = load i32, ptr %i.ak, align 8, !range !40, !noundef !11
  store i64 %i.aj, ptr %i.ah, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  store i32 %i.al, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ao = load <2 x i64>, ptr %1, align 8
  store <2 x i64> %i.ao, ptr %i.an, align 8
  store i8 1, ptr %i.ac, align 1
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !11, !noundef !11 ; 3 uses
  store ptr %i.ar, ptr %i.ap, align 8
  %i.as = atomicrmw add ptr %i.ar, i64 1 monotonic, align 8
  %i.at = icmp slt i64 %i.as, 0
  br i1 %i.at, label %bb.c, label %_RNvXs0_NtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtimeNtB5_20TokioRuntimeProviderNtB7_15RuntimeProvider13create_handle.exit

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.035.sroa.10.sroa.10)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.035.sroa.10.sroa.11)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.035.sroa.11)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  br label %bb.l

_RNvXs0_NtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtimeNtB5_20TokioRuntimeProviderNtB7_15RuntimeProvider13create_handle.exit: ; preds = %bb.b
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 144
  store ptr %i.ar, ptr %i.au, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.av = load i64, ptr %i.ah, align 8, !noundef !11
  %i.aw = load i32, ptr %i.am, align 8, !range !40, !noundef !11
  store i8 0, ptr %i.ac, align 1
  %i.ax = load ptr, ptr %i.ap, align 8, !nonnull !11, !noundef !11
  invoke void @_RINvMNtNtCs4LZN9PPmi2I_11hickory_net3tcp17tcp_client_streamINtB3_15TcpClientStreamINtNtNtB7_7runtime8iocompat17AsyncIoTokioAsStdNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEE3newNtNtB1n_13tokio_runtime20TokioRuntimeProviderECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull sret([248 x i8]) align 8 captures(none) dereferenceable(248) %i.w, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %i.z, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %i.y, i64 %i.av, i32 noundef %i.aw, ptr noundef nonnull %i.ax)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %_RNvXs0_NtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtimeNtB5_20TokioRuntimeProviderNtB7_15RuntimeProvider13create_handle.exit
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.h

bb.f:                                             ; preds = %_RNvXs0_NtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtimeNtB5_20TokioRuntimeProviderNtB7_15RuntimeProvider13create_handle.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.x, ptr noundef nonnull align 8 dereferenceable(192) %i.w, i64 192, i1 false)
  store i8 1, ptr %i.ae, align 1
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ba = getelementptr inbounds nuw i8, ptr %i.w, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.az, ptr noundef nonnull align 8 dereferenceable(56) %i.ba, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.035.sroa.10.sroa.10)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.035.sroa.10.sroa.11)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.035.sroa.11)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  store i8 0, ptr %i.ad, align 2
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.bb, ptr noundef nonnull align 8 dereferenceable(192) %i.x, i64 192, i1 false)
  br label %bb.l

bb.g:                                             ; preds = %bb.an, %.body, %.body19
  %.pn7.pn = phi { ptr, i32 } [ %i.dx, %.body19 ], [ %i.ds, %bb.an ], [ %.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  br label %bb.ce

bb.h:                                             ; preds = %bb.cl, %bb.e
  %.pn11.pn = phi { ptr, i32 } [ %.pn11, %bb.cl ], [ %i.ay, %bb.e ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3766)
  call void @llvm.experimental.noalias.scope.decl(metadata !3767)
  call void @llvm.experimental.noalias.scope.decl(metadata !3768)
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !3769, !nonnull !11, !noundef !11
  %i.be = atomicrmw sub ptr %i.bd, i64 1 release, align 8, !noalias !3769
  %i.bf = icmp eq i64 %i.be, 1
  br i1 %i.bf, label %bb.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime11TokioHandleECshnt8FRa5Rut_11native_ping.exit

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtNtCsc13h7DQFCSE_5tokio4task8join_set7JoinSetuEEE9drop_slowCsa9Jrx9KOzzM_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bc) #28
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime11TokioHandleECshnt8FRa5Rut_11native_ping.exit unwind label %bb.cd

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime11TokioHandleECshnt8FRa5Rut_11native_ping.exit: ; preds = %bb.h, %bb.i, %bb.cc
  %.pn14 = phi { ptr, i32 } [ %i.gt, %bb.cc ], [ %.pn11.pn, %bb.h ], [ %.pn11.pn, %bb.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 403 ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1, !range !14, !noundef !11
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.cn, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderECshnt8FRa5Rut_11native_ping.exit

bb.j:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #31
  unreachable

bb.k:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #31
  unreachable

bb.l:                                             ; preds = %bb.d, %bb.f
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1227.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 4 uses
  %i.bl = load i8, ptr %i.bk, align 8, !range !30, !noalias !3770, !noundef !11
  switch i8 %i.bl, label %default.unreachable144 [
    i8 0, label %bb.m
end_hunk_1
begin_hunk_2_@_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsgV0iE8Xkxiy_15futures_channel7oneshot5InnerNtNtCs4LZN9PPmi2I_11hickory_net4xfer17DnsResponseStreamEE9drop_slowB1y_
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsgV0iE8Xkxiy_15futures_channel7oneshot5InnerNtNtCs4LZN9PPmi2I_11hickory_net4xfer17DnsResponseStreamEE9drop_slowB1y_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #17

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsgV0iE8Xkxiy_15futures_channel7oneshot5InnerNtNtNtCs5xzCmWPONXx_11libp2p_quic10connection10connecting10ConnectingEE9drop_slowCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #17

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCs5GOyS9hQAaF_13futures_timer6native8arc_list4NodeNtNtBL_5timer14ScheduledTimerEE9drop_slowBN_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #17

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot5InnerINtNtCskKLDkoKarTP_4core6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB26_6errors11redis_error10RedisErrorEEE9drop_slowB26_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #17

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot5InnerbEE9drop_slowCsaRn6AFvch86_5quinn(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #17

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot5InneruEE9drop_slowBN_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #17

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsc13h7DQFCSE_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleuEEE9drop_slowCs4LZN9PPmi2I_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #17

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSettEE9drop_slowCsa9Jrx9KOzzM_16hickory_resolver(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #17

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtNtCsc13h7DQFCSE_5tokio4task8join_set7JoinSetuEEE9drop_slowCsa9Jrx9KOzzM_16hickory_resolver(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #17

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEE9drop_slowCs4LZN9PPmi2I_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #17

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsc13h7DQFCSE_5tokio4sync4mpsc4chan4ChanNtNtNtCs5hzaM3VbZx4_5redis3aio22multiplexed_connection15PipelineMessageNtNtBL_7bounded9SemaphoreEE9drop_slowB1z_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #17

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueNCNvXs3_NtNtCs4LZN9PPmi2I_11hickory_net3udp17udp_client_streamINtB2q_10UdpRequestNtNtNtB2u_7runtime13tokio_runtime20TokioRuntimeProviderENtB2q_7Request4send0EE9drop_slowCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #17

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsa9Jrx9KOzzM_16hickory_resolver16name_server_pool11PoolContextE9drop_slowCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #17

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsaRn6AFvch86_5quinn10connection15ConnectionInnerE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #17

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCskKLDkoKarTP_4core2io5error5ErrorE9drop_slowCs4LZN9PPmi2I_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #17

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsc13h7DQFCSE_5tokio7runtime2io12scheduled_io11ScheduledIoE9drop_slowBO_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #17

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #17

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsl9hx9jpF0W9_12futures_util6future6future6shared8NotifierE9drop_slowCsa9Jrx9KOzzM_16hickory_resolver(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #17

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #17

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSNtNtCs4LZN9PPmi2I_11hickory_net5error13ForwardNSDataE9drop_slowBL_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #17

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordE9drop_slowCs4LZN9PPmi2I_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #17

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSTjNtNtNtCs5hzaM3VbZx4_5redis6errors12server_error11ServerErrorEE9drop_slowBP_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvXsa_NtNtCsl9hx9jpF0W9_12futures_util6stream10select_allINtB5_7IterMutINtNtCsjouRnuJWSBB_5yamux13tagged_stream12TaggedStreamNtNtNtB1d_5frame6header8StreamIdINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc8ReceiverNtNtB1d_10connection13StreamCommandEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsr_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_8ReceiverNtNtCsjouRnuJWSBB_5yamux10connection13StreamCommandE5closeCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtNtCsl9hx9jpF0W9_12futures_util6stream10select_allINtB5_9SelectAllINtNtCsjouRnuJWSBB_5yamux13tagged_stream12TaggedStreamNtNtNtB1f_5frame6header8StreamIdINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc8ReceiverNtNtB1f_10connection13StreamCommandEEENtNtCsgtKVDLJNbYN_12futures_core6stream6Stream9poll_nextCshnt8FRa5Rut_11native_ping(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCsjouRnuJWSBB_5yamux5frame5FrameuEE13push_back_mutCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXs0_NtNtCsjouRnuJWSBB_5yamux5frame2ioINtB5_2IoINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIBM_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEINtCs7OkeAlsyVKR_12futures_sink4SinkINtB7_5FrameuEE10poll_readyCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(1568), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCsjouRnuJWSBB_5yamux5frame5FrameuEE9pop_frontCshnt8FRa5Rut_11native_ping(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvXs0_NtNtCsjouRnuJWSBB_5yamux5frame2ioINtB5_2IoINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIBM_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEINtCs7OkeAlsyVKR_12futures_sink4SinkINtB7_5FrameuEE10start_sendCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(1568), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXs0_NtNtCsjouRnuJWSBB_5yamux5frame2ioINtB5_2IoINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIBM_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEINtCs7OkeAlsyVKR_12futures_sink4SinkINtB7_5FrameuEE10poll_closeCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(1568), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXs0_NtNtCsjouRnuJWSBB_5yamux5frame2ioINtB5_2IoINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIBM_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEINtCs7OkeAlsyVKR_12futures_sink4SinkINtB7_5FrameuEE10poll_readyCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(1536), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvXs0_NtNtCsjouRnuJWSBB_5yamux5frame2ioINtB5_2IoINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIBM_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEINtCs7OkeAlsyVKR_12futures_sink4SinkINtB7_5FrameuEE10start_sendCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(1536), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXs0_NtNtCsjouRnuJWSBB_5yamux5frame2ioINtB5_2IoINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIBM_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEINtCs7OkeAlsyVKR_12futures_sink4SinkINtB7_5FrameuEE10poll_closeCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(1536), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXs0_NtNtCsjouRnuJWSBB_5yamux5frame2ioINtB5_2IoINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIBM_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEINtCs7OkeAlsyVKR_12futures_sink4SinkINtB7_5FrameuEE10poll_readyCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(736), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvXs0_NtNtCsjouRnuJWSBB_5yamux5frame2ioINtB5_2IoINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIBM_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEINtCs7OkeAlsyVKR_12futures_sink4SinkINtB7_5FrameuEE10start_sendCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(736), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXs0_NtNtCsjouRnuJWSBB_5yamux5frame2ioINtB5_2IoINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIBM_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEEINtCs7OkeAlsyVKR_12futures_sink4SinkINtB7_5FrameuEE10poll_closeCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(736), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXs0_NtNtCsjouRnuJWSBB_5yamux5frame2ioINtB5_2IoINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIBM_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEINtCs7OkeAlsyVKR_12futures_sink4SinkINtB7_5FrameuEE10poll_readyCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(704), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvXs0_NtNtCsjouRnuJWSBB_5yamux5frame2ioINtB5_2IoINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIBM_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEINtCs7OkeAlsyVKR_12futures_sink4SinkINtB7_5FrameuEE10start_sendCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(704), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXs0_NtNtCsjouRnuJWSBB_5yamux5frame2ioINtB5_2IoINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIBM_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEINtCs7OkeAlsyVKR_12futures_sink4SinkINtB7_5FrameuEE10poll_closeCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(704), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCsgtKVDLJNbYN_12futures_core6stream6Streamp4ItemINtNtB7_6result6ResultNtNtNtCsbTgMbcnmcyu_13hickory_proto2op12dns_response11DnsResponseNtNtCs4LZN9PPmi2I_11hickory_net5error8NetErrorENtNtB7_6marker4SendEL_EENtNtNtCsl9hx9jpF0W9_12futures_util6stream6stream9StreamExt15poll_next_unpinCshnt8FRa5Rut_11native_ping(ptr dead_on_unwind noalias nofree noundef writable sret([176 x i8]) align 8 captures(address) dereferenceable(176), ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_2io5error5ErrorNtB6_5Debug3fmtCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCs5hzaM3VbZx4_5redis6errors12server_error4ReprNtB6_5Debug3fmtCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info8mac_vlan11InfoMacVtapENtB6_5Debug3fmtCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCskKLDkoKarTP_4core6option6OptionINtCsl6TgSXZDiW0_4slab4SlabIBX_NtNtNtB11_4task4wake5WakerEEEE4lockCshnt8FRa5Rut_11native_ping(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvMs3_Csl6TgSXZDiW0_4slabINtB5_4SlabINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtBE_4task4wake5WakerEE6removeCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(40), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordNtNtNtBL_5rdata3soa3SOAEE13new_uninit_inCshnt8FRa5Rut_11native_ping() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxNtNtCsbTgMbcnmcyu_13hickory_proto5error10ProtoErrorE13new_uninit_inCshnt8FRa5Rut_11native_ping() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxNtNtNtCsbTgMbcnmcyu_13hickory_proto2op5query5QueryE13new_uninit_inCshnt8FRa5Rut_11native_ping() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxNtNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6domain4name4NameE13new_uninit_inCshnt8FRa5Rut_11native_ping() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB8_5error5ErrorNtNtB8_6marker4SendNtB1r_4SyncEL_ENtB6_5Debug3fmtCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCse1G1u9n4DX9_14elliptic_curve5error5ErrorNtB6_5Debug3fmtCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1_NtCs4LZN9PPmi2I_11hickory_net5errorNtB5_8NetErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBX_2io5error5ErrorE4from(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs3LwfirTY3Ij_20netlink_packet_route15neighbour_table5param23NeighbourTableParameterINtNtNtBa_5slice4iter4IterB14_EECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs3LwfirTY3Ij_20netlink_packet_route6prefix9attribute15PrefixAttributeINtNtNtBa_5slice4iter4IterB14_EECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link5sriov7vf_port10LinkVfPortINtNtNtBa_5slice4iter4IterB14_EECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link5sriov7vf_port6VfPortINtNtNtBa_5slice4iter4IterB14_EECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info8mac_vlan11InfoMacVlanINtNtNtBa_5slice4iter4IterB14_EECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info8mac_vlan11InfoMacVtapINtNtNtBa_5slice4iter4IterB14_EECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCskKLDkoKarTP_4core4cell10UnsafeCellINtNtCsenQHu2qVDfv_9rand_core5block8BlockRngNtNtNtCshhqnaxk4GqT_4rand4rngs6thread13ReseedingCoreEEE9drop_slowB26_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXs0_NtNtCs4KPtkQIfQGm_13libp2p_webrtc5tokio6streamNtB5_6StreamNtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_write(ptr noalias nofree noundef align 8 dereferenceable(216), ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXs_NtNtCs4KPtkQIfQGm_13libp2p_webrtc5tokio6streamNtB4_6StreamNtNtCs5vIp9T9TAX9_10futures_io6if_std9AsyncRead9poll_read(ptr noalias nofree noundef align 8 dereferenceable(216), ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umulh.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #13

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #19 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { cold minsize nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #28 = { noinline }
attributes #29 = { cold noreturn nounwind }
attributes #30 = { cold }
attributes #31 = { noinline noreturn }
attributes #32 = { nounwind }
attributes #33 = { noreturn }
attributes #34 = { inlinehint }

!llvm.module.flags = !{!5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = distinct !{null}
!3 = distinct !{null}
!4 = distinct !{null}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 2, !"RtLibUseGOT", i32 1}
!8 = !{i32 7, !"uwtable", i32 2}
!9 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!10 = !{i8 0, i8 3}
!11 = !{}
!12 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!13 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!14 = !{i8 0, i8 2}
!15 = !{i64 1, i64 0}
!16 = !{i64 0, i64 -9223372036854775808}
!17 = !{i64 1, i64 536870913}
!18 = !{i64 -3, i64 -9223372036854775808}
!19 = !{i64 8}
!20 = !{i64 -1, i64 -9223372036854775808}
!21 = !{i64 0, i64 2}
!22 = !{ptr @_RNvXs0_NtNtCsc13h7DQFCSE_5tokio4sync7oneshotINtB5_6SenderINtNtCskKLDkoKarTP_4core6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB1z_6errors11redis_error10RedisErrorEENtNtNtBY_3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping}
!23 = !{i64 0, i64 3}
!24 = !{i32 -1, i32 13}
!25 = !{i16 0, i16 2}
!26 = !{i32 -2, i32 20}
!27 = !{i64 -1, i64 3}
!28 = !{i16 0, i16 3}
!29 = !{i32 0, i32 3}
!30 = !{i8 0, i8 4}
!31 = !{i8 0, i8 10}
!32 = !{i32 0, i32 13}
!33 = !{i64 0, i64 -9223372036854775806}
!34 = !{i8 0, i8 12}
!35 = !{i8 0, i8 6}
!36 = !{i64 0, i64 -9223372036854775781}
!37 = !{!"branch_weights", !"expected", i32 18271044, i32 2129212604}
!38 = !{!"branch_weights", !"expected", i32 14236845, i32 2133246803}
!39 = !{i64 0, i64 -9223372036854775807}
!40 = !{i32 0, i32 1000000000}
!41 = !{i32 -1, i32 1000000000}
!42 = !{i32 -2, i32 13}
!43 = !{i64 -2, i64 -9223372036854775808}
!44 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000}
!45 = !{!"branch_weights", i32 2002, i32 2000}
!46 = !{i64 4}
!47 = !{i64 0, i64 -9223372036854775799}
!48 = !{i64 2}
!49 = !{!"branch_weights", !"expected", i32 4708254, i32 2142775394}
!50 = !{i32 -2, i32 17}
!51 = !{i64 -4, i64 -9223372036854775808}
!52 = distinct !{!52, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderECshnt8FRa5Rut_11native_ping"}
!53 = distinct !{!53, !52, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderECshnt8FRa5Rut_11native_ping: argument 0"}
!54 = distinct !{!54, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime11TokioHandleECshnt8FRa5Rut_11native_ping"}
!55 = distinct !{!55, !54, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime11TokioHandleECshnt8FRa5Rut_11native_ping: argument 0"}
!56 = distinct !{!56, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtNtCsc13h7DQFCSE_5tokio4task8join_set7JoinSetuEEEECshnt8FRa5Rut_11native_ping"}
!57 = distinct !{!57, !56, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtNtCsc13h7DQFCSE_5tokio4task8join_set7JoinSetuEEEECshnt8FRa5Rut_11native_ping: argument 0"}
!58 = distinct !{!58, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtNtCsc13h7DQFCSE_5tokio4task8join_set7JoinSetuEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping"}
!59 = distinct !{!59, !58, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtNtCsc13h7DQFCSE_5tokio4task8join_set7JoinSetuEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping: argument 0"}
!60 = distinct !{!60, !"_RINvXs6_NtNtCshhqnaxk4GqT_4rand5distr7uniformINtNtNtCskKLDkoKarTP_4core3ops5range5RangeyEINtB6_11SampleRangeyE13sample_singleNtNtNtBa_4rngs6thread9ThreadRngECshnt8FRa5Rut_11native_ping"}
!61 = distinct !{!61, !60, !"_RINvXs6_NtNtCshhqnaxk4GqT_4rand5distr7uniformINtNtNtCskKLDkoKarTP_4core3ops5range5RangeyEINtB6_11SampleRangeyE13sample_singleNtNtNtBa_4rngs6thread9ThreadRngECshnt8FRa5Rut_11native_ping: argument 0"}
!62 = distinct !{!62, !"_RINvXsw_NtNtNtCshhqnaxk4GqT_4rand5distr7uniform3intINtB6_10UniformIntyENtB8_14UniformSampler13sample_singleNtNtNtBc_4rngs6thread9ThreadRngyyECshnt8FRa5Rut_11native_ping"}
!63 = distinct !{!63, !62, !"_RINvXsw_NtNtNtCshhqnaxk4GqT_4rand5distr7uniform3intINtB6_10UniformIntyENtB8_14UniformSampler13sample_singleNtNtNtBc_4rngs6thread9ThreadRngyyECshnt8FRa5Rut_11native_ping: argument 0"}
!64 = distinct !{!64, !"_RINvXsw_NtNtNtCshhqnaxk4GqT_4rand5distr7uniform3intINtB6_10UniformIntyENtB8_14UniformSampler23sample_single_inclusiveNtNtNtBc_4rngs6thread9ThreadRngyyECshnt8FRa5Rut_11native_ping"}
!65 = distinct !{!65, !64, !"_RINvXsw_NtNtNtCshhqnaxk4GqT_4rand5distr7uniform3intINtB6_10UniformIntyENtB8_14UniformSampler23sample_single_inclusiveNtNtNtBc_4rngs6thread9ThreadRngyyECshnt8FRa5Rut_11native_ping: argument 0"}
!66 = distinct !{!66, !"_RNvMs2_NtCsenQHu2qVDfv_9rand_core5blockINtB5_8BlockRngNtNtNtCshhqnaxk4GqT_4rand4rngs6thread13ReseedingCoreE17next_u64_from_u32Cshnt8FRa5Rut_11native_ping"}
!67 = distinct !{!67, !66, !"_RNvMs2_NtCsenQHu2qVDfv_9rand_core5blockINtB5_8BlockRngNtNtNtCshhqnaxk4GqT_4rand4rngs6thread13ReseedingCoreE17next_u64_from_u32Cshnt8FRa5Rut_11native_ping: argument 0"}
!68 = distinct !{!68, !"_RNvXs3_NtNtCshhqnaxk4GqT_4rand4rngs6threadNtB5_9ThreadRngNtCsenQHu2qVDfv_9rand_core6TryRng12try_next_u64"}
!69 = distinct !{!69, !68, !"_RNvXs3_NtNtCshhqnaxk4GqT_4rand4rngs6threadNtB5_9ThreadRngNtCsenQHu2qVDfv_9rand_core6TryRng12try_next_u64: argument 0"}
!70 = distinct !{!70, !"_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate"}
!71 = distinct !{!71, !70, !"_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate: argument 0"}
!72 = distinct !{!72, !70, !"_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate: argument 1"}
!73 = distinct !{!73, !"_RNvMs2_NtCsenQHu2qVDfv_9rand_core5blockINtB5_8BlockRngNtNtNtCshhqnaxk4GqT_4rand4rngs6thread13ReseedingCoreE17next_u64_from_u32Cshnt8FRa5Rut_11native_ping"}
!74 = distinct !{!74, !73, !"_RNvMs2_NtCsenQHu2qVDfv_9rand_core5blockINtB5_8BlockRngNtNtNtCshhqnaxk4GqT_4rand4rngs6thread13ReseedingCoreE17next_u64_from_u32Cshnt8FRa5Rut_11native_ping: argument 0"}
!75 = distinct !{!75, !"_RNvXs3_NtNtCshhqnaxk4GqT_4rand4rngs6threadNtB5_9ThreadRngNtCsenQHu2qVDfv_9rand_core6TryRng12try_next_u64"}
!76 = distinct !{!76, !75, !"_RNvXs3_NtNtCshhqnaxk4GqT_4rand4rngs6threadNtB5_9ThreadRngNtCsenQHu2qVDfv_9rand_core6TryRng12try_next_u64: argument 0"}
!77 = distinct !{!77, !"_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate"}
!78 = distinct !{!78, !77, !"_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate: argument 0"}
!79 = distinct !{!79, !77, !"_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate: argument 1"}
!80 = distinct !{!80, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngECshnt8FRa5Rut_11native_ping"}
!81 = distinct !{!81, !80, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngECshnt8FRa5Rut_11native_ping: argument 0"}
!82 = distinct !{!82, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcINtNtB4_4cell10UnsafeCellINtNtCsenQHu2qVDfv_9rand_core5block8BlockRngNtNtNtCshhqnaxk4GqT_4rand4rngs6thread13ReseedingCoreEEEECshnt8FRa5Rut_11native_ping"}
!83 = distinct !{!83, !82, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcINtNtB4_4cell10UnsafeCellINtNtCsenQHu2qVDfv_9rand_core5block8BlockRngNtNtNtCshhqnaxk4GqT_4rand4rngs6thread13ReseedingCoreEEEECshnt8FRa5Rut_11native_ping: argument 0"}
!84 = distinct !{!84, !"_RNvXsw_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCskKLDkoKarTP_4core4cell10UnsafeCellINtNtCsenQHu2qVDfv_9rand_core5block8BlockRngNtNtNtCshhqnaxk4GqT_4rand4rngs6thread13ReseedingCoreEEENtNtNtBI_3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping"}
!85 = distinct !{!85, !84, !"_RNvXsw_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCskKLDkoKarTP_4core4cell10UnsafeCellINtNtCsenQHu2qVDfv_9rand_core5block8BlockRngNtNtNtCshhqnaxk4GqT_4rand4rngs6thread13ReseedingCoreEEENtNtNtBI_3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping: argument 0"}
!86 = distinct !{!86, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngECshnt8FRa5Rut_11native_ping"}
!87 = distinct !{!87, !86, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngECshnt8FRa5Rut_11native_ping: argument 0"}
!88 = distinct !{!88, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcINtNtB4_4cell10UnsafeCellINtNtCsenQHu2qVDfv_9rand_core5block8BlockRngNtNtNtCshhqnaxk4GqT_4rand4rngs6thread13ReseedingCoreEEEECshnt8FRa5Rut_11native_ping"}
!89 = distinct !{!89, !88, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcINtNtB4_4cell10UnsafeCellINtNtCsenQHu2qVDfv_9rand_core5block8BlockRngNtNtNtCshhqnaxk4GqT_4rand4rngs6thread13ReseedingCoreEEEECshnt8FRa5Rut_11native_ping: argument 0"}
!90 = distinct !{!90, !"_RNvXsw_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCskKLDkoKarTP_4core4cell10UnsafeCellINtNtCsenQHu2qVDfv_9rand_core5block8BlockRngNtNtNtCshhqnaxk4GqT_4rand4rngs6thread13ReseedingCoreEEENtNtNtBI_3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping"}
!91 = distinct !{!91, !90, !"_RNvXsw_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCskKLDkoKarTP_4core4cell10UnsafeCellINtNtCsenQHu2qVDfv_9rand_core5block8BlockRngNtNtNtCshhqnaxk4GqT_4rand4rngs6thread13ReseedingCoreEEENtNtNtBI_3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping: argument 0"}
!92 = distinct !{!92, !"_RINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE11sort_by_keybNCINvMBz_INtBz_10NameServerB1B_E3newATNtNtB1H_4xfer8ProtocolINtNtB3K_12dns_exchange11DnsExchangeB1B_EEj0_Es_0ECshnt8FRa5Rut_11native_ping"}
!93 = distinct !{!93, !92, !"_RINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE11sort_by_keybNCINvMBz_INtBz_10NameServerB1B_E3newATNtNtB1H_4xfer8ProtocolINtNtB3K_12dns_exchange11DnsExchangeB1B_EEj0_Es_0ECshnt8FRa5Rut_11native_ping: argument 0"}
!94 = distinct !{!94, !"_RINvNtCsexYYUdYSQU6_5alloc5slice11stable_sortINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMB2_SBH_11sort_by_keybNCINvMBK_INtBK_10NameServerB1M_E3newATNtNtB1S_4xfer8ProtocolINtNtB48_12dns_exchange11DnsExchangeB1M_EEj0_Es_0E0ECshnt8FRa5Rut_11native_ping"}
!95 = distinct !{!95, !94, !"_RINvNtCsexYYUdYSQU6_5alloc5slice11stable_sortINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMB2_SBH_11sort_by_keybNCINvMBK_INtBK_10NameServerB1M_E3newATNtNtB1S_4xfer8ProtocolINtNtB48_12dns_exchange11DnsExchangeB1M_EEj0_Es_0E0ECshnt8FRa5Rut_11native_ping: argument 1"}
!96 = distinct !{!96, !94, !"_RINvNtCsexYYUdYSQU6_5alloc5slice11stable_sortINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMB2_SBH_11sort_by_keybNCINvMBK_INtBK_10NameServerB1M_E3newATNtNtB1S_4xfer8ProtocolINtNtB48_12dns_exchange11DnsExchangeB1M_EEj0_Es_0E0ECshnt8FRa5Rut_11native_ping: argument 0"}
!97 = !{!59, !57, !55, !53}
!98 = !{!65, !63, !61}
!99 = !{!67}
!100 = !{!69, !65, !63, !61}
!101 = !{!71, !67}
!102 = !{!72, !69, !65, !63, !61}
!103 = !{!74}
!104 = !{!76, !65, !63, !61}
!105 = !{!78, !74}
!106 = !{!79, !76, !65, !63, !61}
!107 = !{!81}
!108 = !{!83}
!109 = !{!85}
!110 = !{!85, !83, !81}
!111 = !{!87}
!112 = !{!89}
!113 = !{!91}
!114 = !{!91, !89, !87}
!115 = !{!93}
!116 = !{!96, !95, !93}
!117 = distinct !{!117, !"_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtCsa9Jrx9KOzzM_16hickory_resolver6config16ConnectionConfigENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1P_8adapters3map12map_try_foldRBJ_NtNtCs4LZN9PPmi2I_11hickory_net4xfer8ProtocoluINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMNtBN_11name_serverINtB4M_10NameServerNtNtNtB3k_7runtime13tokio_runtime20TokioRuntimeProviderE9protocols0NCINvNvB1J_3any5checkB3g_NCINvMs6_B4M_NtB4M_16ConnectionPolicy13allows_serverB5n_E0E0E0B40_ECshnt8FRa5Rut_11native_ping"}
!118 = distinct !{!118, !117, !"_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtCsa9Jrx9KOzzM_16hickory_resolver6config16ConnectionConfigENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1P_8adapters3map12map_try_foldRBJ_NtNtCs4LZN9PPmi2I_11hickory_net4xfer8ProtocoluINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMNtBN_11name_serverINtB4M_10NameServerNtNtNtB3k_7runtime13tokio_runtime20TokioRuntimeProviderE9protocols0NCINvNvB1J_3any5checkB3g_NCINvMs6_B4M_NtB4M_16ConnectionPolicy13allows_serverB5n_E0E0E0B40_ECshnt8FRa5Rut_11native_ping: argument 1"}
!119 = distinct !{!119, !117, !"_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtCsa9Jrx9KOzzM_16hickory_resolver6config16ConnectionConfigENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1P_8adapters3map12map_try_foldRBJ_NtNtCs4LZN9PPmi2I_11hickory_net4xfer8ProtocoluINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMNtBN_11name_serverINtB4M_10NameServerNtNtNtB3k_7runtime13tokio_runtime20TokioRuntimeProviderE9protocols0NCINvNvB1J_3any5checkB3g_NCINvMs6_B4M_NtB4M_16ConnectionPolicy13allows_serverB5n_E0E0E0B40_ECshnt8FRa5Rut_11native_ping: argument 0"}
!120 = !{!118}
!121 = !{!119}
!122 = !{!119, !118}
!123 = distinct !{!123, !"_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter6FilterINtNtNtBc_5slice4iter4IterINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEENCINvMs6_B1q_NtB1q_16ConnectionPolicy17select_connectionB2s_E0ENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB4L_6min_by4foldRB1n_NCB3M_s_0E0ECshnt8FRa5Rut_11native_ping"}
!124 = distinct !{!124, !123, !"_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter6FilterINtNtNtBc_5slice4iter4IterINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEENCINvMs6_B1q_NtB1q_16ConnectionPolicy17select_connectionB2s_E0ENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB4L_6min_by4foldRB1n_NCB3M_s_0E0ECshnt8FRa5Rut_11native_ping: argument 0"}
!125 = distinct !{!125, !"_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEENCINvMs6_B1v_NtB1v_16ConnectionPolicy17select_connectionB2x_E0ENtNtNtB9_6traits8iterator8Iterator4nextCshnt8FRa5Rut_11native_ping"}
!126 = distinct !{!126, !125, !"_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEENCINvMs6_B1v_NtB1v_16ConnectionPolicy17select_connectionB2x_E0ENtNtNtB9_6traits8iterator8Iterator4nextCshnt8FRa5Rut_11native_ping: argument 0"}
!127 = distinct !{!127, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCINvMs6_BT_NtBT_16ConnectionPolicy17select_connectionB1V_E0ECshnt8FRa5Rut_11native_ping"}
!128 = distinct !{!128, !127, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCINvMs6_BT_NtBT_16ConnectionPolicy17select_connectionB1V_E0ECshnt8FRa5Rut_11native_ping: argument 1"}
!129 = distinct !{!129, !127, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCINvMs6_BT_NtBT_16ConnectionPolicy17select_connectionB1V_E0ECshnt8FRa5Rut_11native_ping: argument 0"}
!130 = distinct !{!130, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter11filter_foldRINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEB11_NCINvMs6_B15_NtB15_16ConnectionPolicy17select_connectionB27_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldB11_NCB3u_s_0E0E0Cshnt8FRa5Rut_11native_ping"}
!131 = distinct !{!131, !130, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter11filter_foldRINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEB11_NCINvMs6_B15_NtB15_16ConnectionPolicy17select_connectionB27_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldB11_NCB3u_s_0E0E0Cshnt8FRa5Rut_11native_ping: argument 0"}
!132 = distinct !{!132, !130, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter11filter_foldRINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEB11_NCINvMs6_B15_NtB15_16ConnectionPolicy17select_connectionB27_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldB11_NCB3u_s_0E0E0Cshnt8FRa5Rut_11native_ping: argument 1"}
!133 = distinct !{!133, !"_RINvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB6_6FilterINtNtNtBc_5slice4iter4IterINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEENCINvMs6_B1w_NtB1w_16ConnectionPolicy17select_connectionB2y_E0ENtNtNtBa_6traits8iterator8Iterator4foldRB1t_NCINvNvB4R_6min_by4foldB5u_NCB3S_s_0E0ECshnt8FRa5Rut_11native_ping"}
!134 = distinct !{!134, !133, !"_RINvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB6_6FilterINtNtNtBc_5slice4iter4IterINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEENCINvMs6_B1w_NtB1w_16ConnectionPolicy17select_connectionB2y_E0ENtNtNtBa_6traits8iterator8Iterator4foldRB1t_NCINvNvB4R_6min_by4foldB5u_NCB3S_s_0E0ECshnt8FRa5Rut_11native_ping: argument 1"}
!135 = distinct !{!135, !133, !"_RINvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB6_6FilterINtNtNtBc_5slice4iter4IterINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEENCINvMs6_B1w_NtB1w_16ConnectionPolicy17select_connectionB2y_E0ENtNtNtBa_6traits8iterator8Iterator4foldRB1t_NCINvNvB4R_6min_by4foldB5u_NCB3S_s_0E0ECshnt8FRa5Rut_11native_ping: argument 0"}
!136 = distinct !{!136, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldRBQ_NCINvNtNtB3j_8adapters6filter11filter_foldB3X_B3X_NCINvMs6_BT_NtBT_16ConnectionPolicy17select_connectionB1V_E0NCINvNvB3d_6min_by4foldB3X_NCB4R_s_0E0E0ECshnt8FRa5Rut_11native_ping"}
!137 = distinct !{!137, !136, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldRBQ_NCINvNtNtB3j_8adapters6filter11filter_foldB3X_B3X_NCINvMs6_BT_NtBT_16ConnectionPolicy17select_connectionB1V_E0NCINvNvB3d_6min_by4foldB3X_NCB4R_s_0E0E0ECshnt8FRa5Rut_11native_ping: argument 0"}
!138 = distinct !{!138, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator6min_by4foldRINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMs6_B1h_NtB1h_16ConnectionPolicy17select_connectionB2j_Es_0E0Cshnt8FRa5Rut_11native_ping"}
!139 = distinct !{!139, !138, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator6min_by4foldRINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMs6_B1h_NtB1h_16ConnectionPolicy17select_connectionB2j_Es_0E0Cshnt8FRa5Rut_11native_ping: argument 0"}
!140 = distinct !{!140, !138, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator6min_by4foldRINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMs6_B1h_NtB1h_16ConnectionPolicy17select_connectionB2j_Es_0E0Cshnt8FRa5Rut_11native_ping: argument 1"}
!141 = distinct !{!141, !"_RINvNtCskKLDkoKarTP_4core3cmp6min_byRINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEQNCINvMs6_BC_NtBC_16ConnectionPolicy17select_connectionB1E_Es_0ECshnt8FRa5Rut_11native_ping"}
!142 = distinct !{!142, !141, !"_RINvNtCskKLDkoKarTP_4core3cmp6min_byRINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEQNCINvMs6_BC_NtBC_16ConnectionPolicy17select_connectionB1E_Es_0ECshnt8FRa5Rut_11native_ping: argument 0"}
!143 = distinct !{!143, !141, !"_RINvNtCskKLDkoKarTP_4core3cmp6min_byRINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEQNCINvMs6_BC_NtBC_16ConnectionPolicy17select_connectionB1E_Es_0ECshnt8FRa5Rut_11native_ping: argument 1"}
!144 = !{!129, !128, !126, !124}
!145 = !{!131}
!146 = !{!132}
!147 = !{!131, !137, !135, !134, !124}
!148 = !{!139}
end_hunk_2
