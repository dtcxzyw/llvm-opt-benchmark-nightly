Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/autonatv2_client.autonatv2_client.d4707b358e500bd8-cgu.09?download=true
inline.NumInlined: 1479
inline.NumDeleted: 889
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
@191 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @132, [16 x i8] c"s\00\00\00\00\00\00\00X\01\00\00\1E\00\00\00" }>, align 8
@192 = private unnamed_addr constant [19 x i8] c"\10stream is done: \C0\00", align 1
@193 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string13FromUtf8ErrorECsieOd0lErO6i_16autonatv2_client, [16 x i8] c"(\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtCsexYYUdYSQU6_5alloc6stringNtB5_13FromUtf8ErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt }>, align 8
@194 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string13FromUtf8ErrorECsieOd0lErO6i_16autonatv2_client, [16 x i8] c"(\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1m_NtCsexYYUdYSQU6_5alloc6stringNtB6_13FromUtf8ErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr @_RNvXs0_NtCsexYYUdYSQU6_5alloc6stringNtB5_13FromUtf8ErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr @193, ptr @_RNvYNtNtCsexYYUdYSQU6_5alloc6string13FromUtf8ErrorNtNtCskKLDkoKarTP_4core5error5Error6sourceCsieOd0lErO6i_16autonatv2_client, ptr @_RNvYNtNtCsexYYUdYSQU6_5alloc6string13FromUtf8ErrorNtNtCskKLDkoKarTP_4core5error5Error7type_idCsieOd0lErO6i_16autonatv2_client, ptr @_RNvYNtNtCsexYYUdYSQU6_5alloc6string13FromUtf8ErrorNtNtCskKLDkoKarTP_4core5error5Error11descriptionCsieOd0lErO6i_16autonatv2_client, ptr @_RNvYNtNtCsexYYUdYSQU6_5alloc6string13FromUtf8ErrorNtNtCskKLDkoKarTP_4core5error5Error5causeCsieOd0lErO6i_16autonatv2_client, ptr @_RNvYNtNtCsexYYUdYSQU6_5alloc6string13FromUtf8ErrorNtNtCskKLDkoKarTP_4core5error5Error7provideCsieOd0lErO6i_16autonatv2_client }>, align 8
@195 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsieOd0lErO6i_16autonatv2_client, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsr_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCsieOd0lErO6i_16autonatv2_client }>, align 8
@196 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3str5error9Utf8ErrorNtB6_5Debug3fmtCsieOd0lErO6i_16autonatv2_client }>, align 8
@197 = private unnamed_addr constant [13 x i8] c"FromUtf8Error", align 1
@198 = private unnamed_addr constant [5 x i8] c"bytes", align 1
@199 = private unnamed_addr constant [5 x i8] c"error", align 1
@200 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3mem9alignment9AlignmentNtB6_5Debug3fmtCsieOd0lErO6i_16autonatv2_client }>, align 8
@201 = private unnamed_addr constant [6 x i8] c"Layout", align 1
@202 = private unnamed_addr constant [4 x i8] c"size", align 1
@203 = private unnamed_addr constant [5 x i8] c"align", align 1
@204 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsieOd0lErO6i_16autonatv2_client }>, align 8
@205 = private unnamed_addr constant [15 x i8] c"TryFromIntError", align 1
@206 = private unnamed_addr constant [8 x i8] zeroinitializer, align 1
@207 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsieOd0lErO6i_16autonatv2_client, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsr_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt }>, align 8
@208 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtB8_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB8_5error5ErrorNtNtB8_6marker4SendNtB1N_4SyncEL_EENtB6_5Debug3fmtCsieOd0lErO6i_16autonatv2_client }>, align 8
@209 = private unnamed_addr constant [13 x i8] c"DecodingError", align 1
@210 = private unnamed_addr constant [3 x i8] c"msg", align 1
@211 = private unnamed_addr constant [6 x i8] c"source", align 1
@212 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3net7ip_addr8Ipv4AddrNtB6_5Debug3fmtCsieOd0lErO6i_16autonatv2_client }>, align 8
@213 = private unnamed_addr constant [1 x i8] c"A", align 1
@214 = private unnamed_addr constant [12 x i8] c"SigningError", align 1
@215 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtB8_6option6OptionhENtB6_5Debug3fmtCsieOd0lErO6i_16autonatv2_client }>, align 8
@216 = private unnamed_addr constant [9 x i8] c"Utf8Error", align 1
@217 = private unnamed_addr constant [11 x i8] c"valid_up_to", align 1
@218 = private unnamed_addr constant [9 x i8] c"error_len", align 1
@219 = private unnamed_addr constant [40 x i8] c"description() is deprecated; use Display", align 1
@220 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 2898044441019495272 to ptr), ptr inttoptr (i64 926130358322296753 to ptr) }>, align 8
@switch.table._RNvNtNtNtNtCsG258MDvU3F_3std3sys2io5error4unix17decode_error_kind = private unnamed_addr constant [122 x i8] c"\01\00+#)+\22+++\0D&\01++\1C\0C\1F+\0E\0F\14((+\1D\1B\18\19\11 \0B++\1E!+$\10\12++++++++++++++++++++++++++++++++++++++++++++++++++++++$++\08\09\0A\05+\06\03++\07++\16\02+\04+'\13+++++\1A", align 1

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCsa9Jrx9KOzzM_16hickory_resolver11name_serverINtB3_10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE3newATNtNtB1c_4xfer8ProtocolINtNtB2v_12dns_exchange11DnsExchangeB16_EEj0_ECsieOd0lErO6i_16autonatv2_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([168 x i8]) align 8 captures(none) dereferenceable(168) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(216) %2, ptr noundef nonnull %3) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  invoke void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB3N_5array4iter8IntoIterTNtNtB25_4xfer8ProtocolINtNtB50_12dns_exchange11DnsExchangeB1Z_EEKj0_ENCINvMBX_INtBX_10NameServerB1Z_E3newAB4X_B61_E0EE9from_iterCsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, i64 noundef 0, i64 noundef 0)
          to label %bb.e unwind label %bb.d

bb.b:                                             ; preds = %bb.ab, %bb.ac, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %i.ck, %bb.ac ], [ %i.j, %bb.d ], [ %eh.lpad-body, %bb.ab ]
  %.sroa.01.0 = phi i1 [ true, %bb.ac ], [ true, %bb.d ], [ false, %bb.ab ]
  %i.h = atomicrmw sub ptr %3, i64 1 release, align 8, !noalias !82
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderECsieOd0lErO6i_16autonatv2_client.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtNtCsc13h7DQFCSE_5tokio4task8join_set7JoinSetuEEE9drop_slowCsa9Jrx9KOzzM_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #32
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderECsieOd0lErO6i_16autonatv2_client.exit unwind label %bb.aa

bb.d:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 209
  %i.l = load i8, ptr %i.k, align 1, !range !6, !noundef !7
  %.not = icmp eq i8 %i.l, 1
  br i1 %.not, label %bb.f, label %bb.u

bb.f:                                             ; preds = %_RINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE11sort_by_keybNCINvMBz_INtBz_10NameServerB1B_E3newATNtNtB1H_4xfer8ProtocolINtNtB3K_12dns_exchange11DnsExchangeB1B_EEj0_Es_0ECsieOd0lErO6i_16autonatv2_client.exit, %bb.e
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
  %i.q = load i32, ptr %i.p, align 4, !noalias !83, !noundef !7 ; 4 uses
  %i.r = icmp ult i32 %i.q, 63
  br i1 %i.r, label %bb.j, label %bb.g

bb.g:                                             ; preds = %.noexc30
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 268
  %i.t = load i32, ptr %i.s, align 4, !alias.scope !84, !noalias !85, !noundef !7
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 272 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 320
  %i.w = load i64, ptr %i.v, align 4, !alias.scope !86, !noalias !87
  %i.x = icmp ugt i64 %i.w, 1023
  br i1 %i.x, label %bb.h, label %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i.i.i, !prof !8

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvMs_NtNtCshhqnaxk4GqT_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.u) #32
          to label %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i.i.i unwind label %bb.p

_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i.i.i: ; preds = %bb.h, %bb.g
  invoke void @_RNvXs_NtCs1aYz1mjYrQZ_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core5block9Generator8generateCsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.u, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.p)
          to label %.noexc2.i unwind label %bb.p

.noexc2.i:                                        ; preds = %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i.i.i
  %i.y = load i32, ptr %i.p, align 4, !alias.scope !84, !noalias !85, !noundef !7 ; 2 uses
  %.not.i.i.i.i10.i.i.i.i.i = icmp eq i32 %i.q, 63
  br i1 %.not.i.i.i.i10.i.i.i.i.i, label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsieOd0lErO6i_16autonatv2_client.exit14.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %.noexc2.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  %i.aa = load i32, ptr %i.z, align 4, !alias.scope !84, !noalias !85, !noundef !7
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsieOd0lErO6i_16autonatv2_client.exit14.i.i.i.i.i

bb.j:                                             ; preds = %.noexc30
  %i.ab = zext nneg i32 %i.q to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.ab ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !alias.scope !84, !noalias !85, !noundef !7
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !alias.scope !84, !noalias !85, !noundef !7
  %i.ag = add nuw nsw i32 %i.q, 2
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsieOd0lErO6i_16autonatv2_client.exit14.i.i.i.i.i

_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsieOd0lErO6i_16autonatv2_client.exit14.i.i.i.i.i: ; preds = %bb.j, %bb.i, %.noexc2.i
  %.sroa.0.018.i.i.i.i11.i.i.i.i.i = phi i32 [ %i.ag, %bb.j ], [ 1, %.noexc2.i ], [ 2, %bb.i ] ; 5 uses
  %.sroa.02.017.i.i.i.i12.i.i.i.i.i = phi i32 [ %i.ad, %bb.j ], [ %i.t, %.noexc2.i ], [ %i.y, %bb.i ]
  %.sroa.03.016.i.i.i.i13.i.i.i.i.i = phi i32 [ %i.af, %bb.j ], [ %i.y, %.noexc2.i ], [ %i.aa, %bb.i ]
  store i32 %.sroa.0.018.i.i.i.i11.i.i.i.i.i, ptr %i.p, align 4, !alias.scope !84, !noalias !85
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

bb.k:                                             ; preds = %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsieOd0lErO6i_16autonatv2_client.exit14.i.i.i.i.i
  %i.ar = icmp samesign ult i32 %.sroa.0.018.i.i.i.i11.i.i.i.i.i, 63
  br i1 %i.ar, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 268
  %i.at = load i32, ptr %i.as, align 4, !alias.scope !88, !noalias !89, !noundef !7
  %i.au = getelementptr inbounds nuw i8, ptr %i.o, i64 272 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.o, i64 320
  %i.aw = load i64, ptr %i.av, align 4, !alias.scope !90, !noalias !91
  %i.ax = icmp ugt i64 %i.aw, 1023
  br i1 %i.ax, label %bb.m, label %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i.i.i, !prof !8

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvMs_NtNtCshhqnaxk4GqT_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.au) #32
          to label %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i.i.i unwind label %bb.p

_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i.i.i: ; preds = %bb.m, %bb.l
  invoke void @_RNvXs_NtCs1aYz1mjYrQZ_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core5block9Generator8generateCsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.au, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.p)
          to label %.noexc4.i unwind label %bb.p

.noexc4.i:                                        ; preds = %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i.i.i
  %i.ay = load i32, ptr %i.p, align 4, !alias.scope !88, !noalias !89, !noundef !7 ; 2 uses
  %.not.i.i.i.i16.i.i.i.i.i = icmp eq i32 %.sroa.0.018.i.i.i.i11.i.i.i.i.i, 63
  br i1 %.not.i.i.i.i16.i.i.i.i.i, label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsieOd0lErO6i_16autonatv2_client.exit20.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc4.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  %i.ba = load i32, ptr %i.az, align 4, !alias.scope !88, !noalias !89, !noundef !7
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsieOd0lErO6i_16autonatv2_client.exit20.i.i.i.i.i

bb.o:                                             ; preds = %bb.k
  %i.bb = zext nneg i32 %.sroa.0.018.i.i.i.i11.i.i.i.i.i to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !alias.scope !88, !noalias !89, !noundef !7
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !alias.scope !88, !noalias !89, !noundef !7
  %i.bg = add nuw nsw i32 %.sroa.0.018.i.i.i.i11.i.i.i.i.i, 2
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsieOd0lErO6i_16autonatv2_client.exit20.i.i.i.i.i

_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsieOd0lErO6i_16autonatv2_client.exit20.i.i.i.i.i: ; preds = %bb.o, %bb.n, %.noexc4.i
  %.sroa.0.018.i.i.i.i17.i.i.i.i.i = phi i32 [ %i.bg, %bb.o ], [ 1, %.noexc4.i ], [ 2, %bb.n ]
  %.sroa.02.017.i.i.i.i18.i.i.i.i.i = phi i32 [ %i.bd, %bb.o ], [ %i.at, %.noexc4.i ], [ %i.ay, %bb.n ]
  %.sroa.03.016.i.i.i.i19.i.i.i.i.i = phi i32 [ %i.bf, %bb.o ], [ %i.ay, %.noexc4.i ], [ %i.ba, %bb.n ]
  store i32 %.sroa.0.018.i.i.i.i17.i.i.i.i.i, ptr %i.p, align 4, !alias.scope !88, !noalias !89
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
  call void @llvm.experimental.noalias.scope.decl(metadata !92)
  call void @llvm.experimental.noalias.scope.decl(metadata !93)
  call void @llvm.experimental.noalias.scope.decl(metadata !94)
  %i.bp = load ptr, ptr %i.c, align 8, !alias.scope !95, !nonnull !7, !noundef !7 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !noalias !95, !noundef !7
  %i.br = add i64 %i.bq, -1                       ; 2 uses
  store i64 %i.br, ptr %i.bp, align 8, !noalias !95
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %bb.q, label %.body

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCskKLDkoKarTP_4core4cell10UnsafeCellINtNtCsenQHu2qVDfv_9rand_core5block8BlockRngNtNtNtCshhqnaxk4GqT_4rand4rngs6thread13ReseedingCoreEEE9drop_slowB26_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #32
          to label %.body unwind label %bb.t

bb.r:                                             ; preds = %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsieOd0lErO6i_16autonatv2_client.exit20.i.i.i.i.i, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsieOd0lErO6i_16autonatv2_client.exit14.i.i.i.i.i
  %.sroa.01.0.i.i.i.i.i = phi i32 [ %i.bn, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsieOd0lErO6i_16autonatv2_client.exit20.i.i.i.i.i ], [ %i.ao, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsieOd0lErO6i_16autonatv2_client.exit14.i.i.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !96)
  call void @llvm.experimental.noalias.scope.decl(metadata !97)
  call void @llvm.experimental.noalias.scope.decl(metadata !98)
  %i.bt = load ptr, ptr %i.c, align 8, !alias.scope !99, !nonnull !7, !noundef !7 ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !noalias !99, !noundef !7
  %i.bv = add i64 %i.bu, -1                       ; 2 uses
  store i64 %i.bv, ptr %i.bt, align 8, !noalias !99
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %bb.s, label %bb.z

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCskKLDkoKarTP_4core4cell10UnsafeCellINtNtCsenQHu2qVDfv_9rand_core5block8BlockRngNtNtNtCshhqnaxk4GqT_4rand4rngs6thread13ReseedingCoreEEE9drop_slowB26_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #32
          to label %bb.z unwind label %bb.y

bb.t:                                             ; preds = %bb.q
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.u:                                             ; preds = %bb.e
  %i.by = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !noundef !7 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !100
  store ptr %i.a, ptr %i.b, align 8, !noalias !101
  %i.cc = icmp samesign ult i64 %i.cb, 2
  br i1 %i.cc, label %_RINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE11sort_by_keybNCINvMBz_INtBz_10NameServerB1B_E3newATNtNtB1H_4xfer8ProtocolINtNtB3K_12dns_exchange11DnsExchangeB1B_EEj0_Es_0ECsieOd0lErO6i_16autonatv2_client.exit, label %bb.v, !prof !9

bb.v:                                             ; preds = %bb.u
  %i.cd = icmp samesign ult i64 %i.cb, 21
  br i1 %i.cd, label %bb.x, label %bb.w, !prof !9

bb.w:                                             ; preds = %bb.v
  invoke void @_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6stable14driftsort_mainINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSBZ_11sort_by_keybNCINvMB12_INtB12_10NameServerB24_E3newATNtNtB2a_4xfer8ProtocolINtNtB4R_12dns_exchange11DnsExchangeB24_EEj0_Es_0E0INtNtB3t_3vec3VecBZ_EECsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef nonnull align 8 %i.bz, i64 noundef range(i64 0, 230584300921369396) %i.cb, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #32
          to label %_RINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE11sort_by_keybNCINvMBz_INtBz_10NameServerB1B_E3newATNtNtB1H_4xfer8ProtocolINtNtB3K_12dns_exchange11DnsExchangeB1B_EEj0_Es_0ECsieOd0lErO6i_16autonatv2_client.exit unwind label %bb.ac

bb.x:                                             ; preds = %bb.v
  invoke void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1m_11sort_by_keybNCINvMB1p_INtB1p_10NameServerB2r_E3newATNtNtB2x_4xfer8ProtocolINtNtB5f_12dns_exchange11DnsExchangeB2r_EEj0_Es_0E0ECsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef nonnull align 8 %i.bz, i64 noundef range(i64 0, 230584300921369396) %i.cb, i64 noundef 1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_RINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE11sort_by_keybNCINvMBz_INtBz_10NameServerB1B_E3newATNtNtB1H_4xfer8ProtocolINtNtB3K_12dns_exchange11DnsExchangeB1B_EEj0_Es_0ECsieOd0lErO6i_16autonatv2_client.exit unwind label %bb.ac

_RINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE11sort_by_keybNCINvMBz_INtBz_10NameServerB1B_E3newATNtNtB1H_4xfer8ProtocolINtNtB3K_12dns_exchange11DnsExchangeB1B_EEj0_Es_0ECsieOd0lErO6i_16autonatv2_client.exit: ; preds = %bb.x, %bb.w, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !100
  br label %bb.f

bb.y:                                             ; preds = %bb.s, %bb.f
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.p, %bb.q, %bb.y
  %eh.lpad-body = phi { ptr, i32 } [ %i.ce, %bb.y ], [ %i.bo, %bb.q ], [ %i.bo, %bb.p ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsl9hx9jpF0W9_12futures_util4lock5mutex5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEEECsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef align 8 dereferenceable(80) %i.d) #34
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
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.ab:                                            ; preds = %.body
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsa9Jrx9KOzzM_16hickory_resolver6config16NameServerConfigECsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef align 8 dereferenceable(48) %i.e) #34
          to label %bb.b unwind label %bb.aa

bb.ac:                                            ; preds = %bb.x, %bb.w
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEECsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #34
          to label %bb.b unwind label %bb.aa

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderECsieOd0lErO6i_16autonatv2_client.exit: ; preds = %bb.b, %bb.c
  br i1 %.sroa.01.0, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ae, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderECsieOd0lErO6i_16autonatv2_client.exit
  resume { ptr, i32 } %.pn.pn

bb.ae:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderECsieOd0lErO6i_16autonatv2_client.exit
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsa9Jrx9KOzzM_16hickory_resolver6config16NameServerConfigECsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef align 8 dereferenceable(48) %1) #34
          to label %bb.ad unwind label %bb.aa
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCs4LZN9PPmi2I_11hickory_net3tcp17tcp_client_streamINtB3_15TcpClientStreamINtNtNtB7_7runtime8iocompat17AsyncIoTokioAsStdNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEE3newNtNtB1n_13tokio_runtime20TokioRuntimeProviderECsieOd0lErO6i_16autonatv2_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([248 x i8]) align 8 captures(none) dereferenceable(248) %0, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(32) %2, i64 %3, i32 noundef range(i32 -1, 1000000000) %4, ptr noundef nonnull %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 4                ; 4 uses
  %.sroa.6 = alloca [36 x i8], align 4            ; 4 uses
  %i.b = alloca [136 x i8], align 8               ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %5, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.a, ptr noundef nonnull align 4 dereferenceable(32) %1, i64 32, i1 false)
  invoke void @_RNvMs4_NtCs4LZN9PPmi2I_11hickory_net4xferNtB5_18BufDnsStreamHandle3new(ptr noalias nofree noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %i.b, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(32) %i.a)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = atomicrmw sub ptr %5, i64 1 release, align 8, !noalias !110
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderECsieOd0lErO6i_16autonatv2_client.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtNtCsc13h7DQFCSE_5tokio4task8join_set7JoinSetuEEE9drop_slowCsa9Jrx9KOzzM_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #32
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderECsieOd0lErO6i_16autonatv2_client.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.h, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %.sroa.6.96..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.6.96..sroa_idx, ptr noundef nonnull align 4 dereferenceable(32) %1, i64 32, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(32) %2, i64 32, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %3, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %4, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 92
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.6, i64 36, i1 false)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %5, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.91.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i8 0, ptr %.sroa.91.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderECsieOd0lErO6i_16autonatv2_client.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtCskGfSpwhqogB_11netlink_sys6socketNtB6_6Socket9recv_fromNtNtCs1eA6bChxBZF_5bytes9bytes_mut8BytesMutECsieOd0lErO6i_16autonatv2_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2, i32 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [12 x i8], align 4                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 12, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !115, !noundef !7 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !115, !noundef !7 ; 2 uses
end_hunk_0
begin_hunk_1_@_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw8shutdownINtNtNtCs4LZN9PPmi2I_11hickory_net4xfer12dns_exchange21DnsExchangeBackgroundINtNtNtBZ_3udp17udp_client_stream15UdpClientStreamNtNtNtBZ_7runtime13tokio_runtime20TokioRuntimeProviderENtB2Y_9TokioTimeEINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECsieOd0lErO6i_16autonatv2_client:bb.a

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke void @_RNvMs4_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreINtB5_4CoreINtNtNtCs4LZN9PPmi2I_11hickory_net4xfer12dns_exchange21DnsExchangeBackgroundINtNtNtB15_3udp17udp_client_stream15UdpClientStreamNtNtNtB15_7runtime13tokio_runtime20TokioRuntimeProviderENtB35_9TokioTimeEINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageCsieOd0lErO6i_16autonatv2_client(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(432) %i.a)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.h unwind label %bb.f       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #33
  unreachable

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harness11cancel_taskINtNtNtCs4LZN9PPmi2I_11hickory_net4xfer12dns_exchange21DnsExchangeBackgroundINtNtNtB17_3udp17udp_client_stream15UdpClientStreamNtNtNtB17_7runtime13tokio_runtime20TokioRuntimeProviderENtB37_9TokioTimeEINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECsieOd0lErO6i_16autonatv2_client.exit.i

bb.h:                                             ; preds = %bb.e
  %i.j = extractvalue { ptr, ptr } %i.h, 0
  %i.k = extractvalue { ptr, ptr } %i.h, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  br label %_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harness11cancel_taskINtNtNtCs4LZN9PPmi2I_11hickory_net4xfer12dns_exchange21DnsExchangeBackgroundINtNtNtB17_3udp17udp_client_stream15UdpClientStreamNtNtNtB17_7runtime13tokio_runtime20TokioRuntimeProviderENtB37_9TokioTimeEINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECsieOd0lErO6i_16autonatv2_client.exit.i

_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harness11cancel_taskINtNtNtCs4LZN9PPmi2I_11hickory_net4xfer12dns_exchange21DnsExchangeBackgroundINtNtNtB17_3udp17udp_client_stream15UdpClientStreamNtNtNtB17_7runtime13tokio_runtime20TokioRuntimeProviderENtB37_9TokioTimeEINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECsieOd0lErO6i_16autonatv2_client.exit.i: ; preds = %bb.h, %bb.g
  %.sroa.8.0.i.i = phi ptr [ %i.k, %bb.h ], [ undef, %bb.g ]
  %.sroa.6.0.i.i = phi ptr [ %i.j, %bb.h ], [ null, %bb.g ]
  %.sroa.01.0.in.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.01.0.i.i = load i64, ptr %.sroa.01.0.in.i.i, align 8, !range !28, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.01.0.i.i, ptr %i.l, align 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.6.0.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8
  %.sroa.63.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.8.0.i.i, ptr %.sroa.63.0..sroa_idx.i.i, align 8
  store i32 1, ptr %i.b, align 8
  call void @_RNvMs4_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreINtB5_4CoreINtNtNtCs4LZN9PPmi2I_11hickory_net4xfer12dns_exchange21DnsExchangeBackgroundINtNtNtB15_3udp17udp_client_stream15UdpClientStreamNtNtNtB15_7runtime13tokio_runtime20TokioRuntimeProviderENtB35_9TokioTimeEINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageCsieOd0lErO6i_16autonatv2_client(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(432) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtCs4LZN9PPmi2I_11hickory_net4xfer12dns_exchange21DnsExchangeBackgroundINtNtNtB1b_3udp17udp_client_stream15UdpClientStreamNtNtNtB1b_7runtime13tokio_runtime20TokioRuntimeProviderENtB3b_9TokioTimeEINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE8completeCsieOd0lErO6i_16autonatv2_client(ptr noundef nonnull %0)
  br label %_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtCs4LZN9PPmi2I_11hickory_net4xfer12dns_exchange21DnsExchangeBackgroundINtNtNtB1b_3udp17udp_client_stream15UdpClientStreamNtNtNtB1b_7runtime13tokio_runtime20TokioRuntimeProviderENtB3b_9TokioTimeEINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE8shutdownCsieOd0lErO6i_16autonatv2_client.exit

_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtCs4LZN9PPmi2I_11hickory_net4xfer12dns_exchange21DnsExchangeBackgroundINtNtNtB1b_3udp17udp_client_stream15UdpClientStreamNtNtNtB1b_7runtime13tokio_runtime20TokioRuntimeProviderENtB3b_9TokioTimeEINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE8shutdownCsieOd0lErO6i_16autonatv2_client.exit: ; preds = %bb.b, %bb.c, %_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harness11cancel_taskINtNtNtCs4LZN9PPmi2I_11hickory_net4xfer12dns_exchange21DnsExchangeBackgroundINtNtNtB17_3udp17udp_client_stream15UdpClientStreamNtNtNtB17_7runtime13tokio_runtime20TokioRuntimeProviderENtB37_9TokioTimeEINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECsieOd0lErO6i_16autonatv2_client.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw8shutdownNCNvMs_NtCsa9Jrx9KOzzM_16hickory_resolver11name_serverINtBZ_12ProbeRequestNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE3run0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECsieOd0lErO6i_16autonatv2_client(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [384 x i8], align 8               ; 4 uses
  %i.b = alloca [384 x i8], align 8               ; 7 uses
  %i.c = tail call noundef zeroext i1 @_RNvMNtNtNtCsc13h7DQFCSE_5tokio7runtime4task5stateNtB2_5State22transition_to_shutdown(ptr noundef nonnull align 8 %0)
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMNtNtNtCsc13h7DQFCSE_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.d, label %bb.c, label %_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harnessINtB5_7HarnessNCNvMs_NtCsa9Jrx9KOzzM_16hickory_resolver11name_serverINtB1b_12ProbeRequestNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE3run0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8shutdownCsieOd0lErO6i_16autonatv2_client.exit

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsc13h7DQFCSE_5tokio7runtime4task4core4CellNCNvMs_NtCsa9Jrx9KOzzM_16hickory_resolver11name_serverINtB27_12ProbeRequestNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE3run0INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECsieOd0lErO6i_16autonatv2_client(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harnessINtB5_7HarnessNCNvMs_NtCsa9Jrx9KOzzM_16hickory_resolver11name_serverINtB1b_12ProbeRequestNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE3run0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8shutdownCsieOd0lErO6i_16autonatv2_client.exit

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke void @_RNvMs4_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreINtB5_4CoreNCNvMs_NtCsa9Jrx9KOzzM_16hickory_resolver11name_serverINtB15_12ProbeRequestNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE3run0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCsieOd0lErO6i_16autonatv2_client(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(384) %i.a)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.h unwind label %bb.f       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #33
  unreachable

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harness11cancel_taskNCNvMs_NtCsa9Jrx9KOzzM_16hickory_resolver11name_serverINtB17_12ProbeRequestNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE3run0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECsieOd0lErO6i_16autonatv2_client.exit.i

bb.h:                                             ; preds = %bb.e
  %i.j = extractvalue { ptr, ptr } %i.h, 0
  %i.k = extractvalue { ptr, ptr } %i.h, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  br label %_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harness11cancel_taskNCNvMs_NtCsa9Jrx9KOzzM_16hickory_resolver11name_serverINtB17_12ProbeRequestNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE3run0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECsieOd0lErO6i_16autonatv2_client.exit.i

_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harness11cancel_taskNCNvMs_NtCsa9Jrx9KOzzM_16hickory_resolver11name_serverINtB17_12ProbeRequestNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE3run0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECsieOd0lErO6i_16autonatv2_client.exit.i: ; preds = %bb.h, %bb.g
  %.sroa.8.0.i.i = phi ptr [ %i.k, %bb.h ], [ undef, %bb.g ]
  %.sroa.6.0.i.i = phi ptr [ %i.j, %bb.h ], [ null, %bb.g ]
  %.sroa.01.0.in.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.01.0.i.i = load i64, ptr %.sroa.01.0.in.i.i, align 8, !range !28, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.01.0.i.i, ptr %i.l, align 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.6.0.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8
  %.sroa.63.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.8.0.i.i, ptr %.sroa.63.0..sroa_idx.i.i, align 8
  store i32 1, ptr %i.b, align 8
  call void @_RNvMs4_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreINtB5_4CoreNCNvMs_NtCsa9Jrx9KOzzM_16hickory_resolver11name_serverINtB15_12ProbeRequestNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE3run0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCsieOd0lErO6i_16autonatv2_client(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(384) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harnessINtB5_7HarnessNCNvMs_NtCsa9Jrx9KOzzM_16hickory_resolver11name_serverINtB1b_12ProbeRequestNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE3run0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeCsieOd0lErO6i_16autonatv2_client(ptr noundef nonnull %0)
  br label %_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harnessINtB5_7HarnessNCNvMs_NtCsa9Jrx9KOzzM_16hickory_resolver11name_serverINtB1b_12ProbeRequestNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE3run0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8shutdownCsieOd0lErO6i_16autonatv2_client.exit

_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harnessINtB5_7HarnessNCNvMs_NtCsa9Jrx9KOzzM_16hickory_resolver11name_serverINtB1b_12ProbeRequestNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE3run0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8shutdownCsieOd0lErO6i_16autonatv2_client.exit: ; preds = %bb.b, %bb.c, %_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harness11cancel_taskNCNvMs_NtCsa9Jrx9KOzzM_16hickory_resolver11name_serverINtB17_12ProbeRequestNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE3run0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECsieOd0lErO6i_16autonatv2_client.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task3raw8shutdownNCNvMs_NtCsa9Jrx9KOzzM_16hickory_resolver11name_serverINtBZ_12ProbeRequestNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE3run0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECsieOd0lErO6i_16autonatv2_client(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [384 x i8], align 8               ; 4 uses
  %i.b = alloca [384 x i8], align 8               ; 7 uses
  %i.c = tail call noundef zeroext i1 @_RNvMNtNtNtCsc13h7DQFCSE_5tokio7runtime4task5stateNtB2_5State22transition_to_shutdown(ptr noundef nonnull align 8 %0)
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMNtNtNtCsc13h7DQFCSE_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.d, label %bb.c, label %_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harnessINtB5_7HarnessNCNvMs_NtCsa9Jrx9KOzzM_16hickory_resolver11name_serverINtB1b_12ProbeRequestNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE3run0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE8shutdownCsieOd0lErO6i_16autonatv2_client.exit

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsc13h7DQFCSE_5tokio7runtime4task4core4CellNCNvMs_NtCsa9Jrx9KOzzM_16hickory_resolver11name_serverINtB27_12ProbeRequestNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE3run0INtNtBG_4sync3ArcNtNtNtNtB1h_9scheduler12multi_thread6handle6HandleEEEECsieOd0lErO6i_16autonatv2_client(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harnessINtB5_7HarnessNCNvMs_NtCsa9Jrx9KOzzM_16hickory_resolver11name_serverINtB1b_12ProbeRequestNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE3run0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE8shutdownCsieOd0lErO6i_16autonatv2_client.exit

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke void @_RNvMs4_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreINtB5_4CoreNCNvMs_NtCsa9Jrx9KOzzM_16hickory_resolver11name_serverINtB15_12ProbeRequestNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE3run0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageCsieOd0lErO6i_16autonatv2_client(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(384) %i.a)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.h unwind label %bb.f       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #33
  unreachable

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harness11cancel_taskNCNvMs_NtCsa9Jrx9KOzzM_16hickory_resolver11name_serverINtB17_12ProbeRequestNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE3run0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECsieOd0lErO6i_16autonatv2_client.exit.i

bb.h:                                             ; preds = %bb.e
  %i.j = extractvalue { ptr, ptr } %i.h, 0
  %i.k = extractvalue { ptr, ptr } %i.h, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  br label %_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harness11cancel_taskNCNvMs_NtCsa9Jrx9KOzzM_16hickory_resolver11name_serverINtB17_12ProbeRequestNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE3run0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECsieOd0lErO6i_16autonatv2_client.exit.i

_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harness11cancel_taskNCNvMs_NtCsa9Jrx9KOzzM_16hickory_resolver11name_serverINtB17_12ProbeRequestNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE3run0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECsieOd0lErO6i_16autonatv2_client.exit.i: ; preds = %bb.h, %bb.g
  %.sroa.8.0.i.i = phi ptr [ %i.k, %bb.h ], [ undef, %bb.g ]
  %.sroa.6.0.i.i = phi ptr [ %i.j, %bb.h ], [ null, %bb.g ]
  %.sroa.01.0.in.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.01.0.i.i = load i64, ptr %.sroa.01.0.in.i.i, align 8, !range !28, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.01.0.i.i, ptr %i.l, align 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.6.0.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8
  %.sroa.63.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.8.0.i.i, ptr %.sroa.63.0..sroa_idx.i.i, align 8
  store i32 1, ptr %i.b, align 8
  call void @_RNvMs4_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreINtB5_4CoreNCNvMs_NtCsa9Jrx9KOzzM_16hickory_resolver11name_serverINtB15_12ProbeRequestNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE3run0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageCsieOd0lErO6i_16autonatv2_client(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(384) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harnessINtB5_7HarnessNCNvMs_NtCsa9Jrx9KOzzM_16hickory_resolver11name_serverINtB1b_12ProbeRequestNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE3run0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE8completeCsieOd0lErO6i_16autonatv2_client(ptr noundef nonnull %0)
  br label %_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harnessINtB5_7HarnessNCNvMs_NtCsa9Jrx9KOzzM_16hickory_resolver11name_serverINtB1b_12ProbeRequestNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE3run0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE8shutdownCsieOd0lErO6i_16autonatv2_client.exit

_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harnessINtB5_7HarnessNCNvMs_NtCsa9Jrx9KOzzM_16hickory_resolver11name_serverINtB1b_12ProbeRequestNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE3run0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE8shutdownCsieOd0lErO6i_16autonatv2_client.exit: ; preds = %bb.b, %bb.c, %_RINvNtNtNtCsc13h7DQFCSE_5tokio7runtime4task7harness11cancel_taskNCNvMs_NtCsa9Jrx9KOzzM_16hickory_resolver11name_serverINtB17_12ProbeRequestNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE3run0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEECsieOd0lErO6i_16autonatv2_client.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt12random_rangejINtNtNtCskKLDkoKarTP_4core3ops5range7RangeTojEECsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef align 4 dereferenceable(320) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.o, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %1, 4294967295
  br i1 %i.b, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = trunc nuw i64 %1 to i32                  ; 2 uses
  %i.d = load i32, ptr %0, align 4, !alias.scope !1772, !noalias !1773, !noundef !7 ; 2 uses
  %i.e = zext nneg i32 %i.d to i64
  %i.f = icmp ugt i32 %i.d, 63
  br i1 %i.f, label %bb.d, label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECsieOd0lErO6i_16autonatv2_client.exit12.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @_RNvXs_NtCs1aYz1mjYrQZ_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core5block9Generator8generateCsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.g, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %0), !noalias !1773
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECsieOd0lErO6i_16autonatv2_client.exit12.i.i.i.i

_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECsieOd0lErO6i_16autonatv2_client.exit12.i.i.i.i: ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i.i.i10.i.i.i.i = phi i64 [ 0, %bb.d ], [ %i.e, %bb.c ] ; 3 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.0.0.i.i.i.i10.i.i.i.i
  %i.i = load i32, ptr %i.h, align 4, !alias.scope !1774, !noalias !1773, !noundef !7
  %i.j = trunc nuw nsw i64 %.sroa.0.0.i.i.i.i10.i.i.i.i to i32
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i11.i.i.i.i = add nuw nsw i32 %i.j, 1 ; 2 uses
  store i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i11.i.i.i.i, ptr %0, align 4, !alias.scope !1774, !noalias !1773
  %i.k = zext i32 %i.i to i64
  %i.l = mul nuw i64 %1, %i.k                     ; 2 uses
  %i.m = lshr i64 %i.l, 32                        ; 2 uses
  %i.n = trunc i64 %i.l to i32                    ; 2 uses
  %i.o = sub i32 0, %i.c
  %i.p = icmp ult i32 %i.o, %i.n
  br i1 %i.p, label %bb.e, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtCshhqnaxk4GqT_4rand5distr7uniform5ErrorE6unwrapCsieOd0lErO6i_16autonatv2_client.exit

bb.e:                                             ; preds = %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECsieOd0lErO6i_16autonatv2_client.exit12.i.i.i.i
  %i.q = zext nneg i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i11.i.i.i.i to i64
  %i.r = icmp samesign ugt i64 %.sroa.0.0.i.i.i.i10.i.i.i.i, 62
  br i1 %i.r, label %bb.f, label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECsieOd0lErO6i_16autonatv2_client.exit15.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @_RNvXs_NtCs1aYz1mjYrQZ_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core5block9Generator8generateCsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.s, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %0), !noalias !1773
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECsieOd0lErO6i_16autonatv2_client.exit15.i.i.i.i

_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECsieOd0lErO6i_16autonatv2_client.exit15.i.i.i.i: ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i.i.i13.i.i.i.i = phi i64 [ 0, %bb.f ], [ %i.q, %bb.e ] ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.0.0.i.i.i.i13.i.i.i.i
  %i.u = load i32, ptr %i.t, align 4, !alias.scope !1775, !noalias !1773, !noundef !7
  %i.v = trunc nuw nsw i64 %.sroa.0.0.i.i.i.i13.i.i.i.i to i32
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i14.i.i.i.i = add nuw nsw i32 %i.v, 1
  store i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i14.i.i.i.i, ptr %0, align 4, !alias.scope !1775, !noalias !1773
  %3 = tail call i32 @llvm.umulh.i32(i32 %i.u, i32 %i.c)
  %i.w = xor i32 %i.n, -1
  %.not9.i.i.i.i = icmp ugt i32 %3, %i.w
  %i.x = zext i1 %.not9.i.i.i.i to i64
  %i.y = add nuw nsw i64 %i.m, %i.x
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtCshhqnaxk4GqT_4rand5distr7uniform5ErrorE6unwrapCsieOd0lErO6i_16autonatv2_client.exit

bb.g:                                             ; preds = %bb.b
  %i.z = load i32, ptr %0, align 4, !alias.scope !1776, !noalias !1777, !noundef !7 ; 4 uses
  %i.aa = icmp ult i32 %i.z, 63
  br i1 %i.aa, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.ac = load i32, ptr %i.ab, align 4, !alias.scope !1778, !noalias !1777, !noundef !7
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @_RNvXs_NtCs1aYz1mjYrQZ_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core5block9Generator8generateCsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.ad, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %0), !noalias !1777
  %i.ae = load i32, ptr %0, align 4, !alias.scope !1778, !noalias !1777, !noundef !7 ; 2 uses
  %.not.i.i.i.i7.i.i.i.i = icmp eq i32 %i.z, 63
  br i1 %.not.i.i.i.i7.i.i.i.i, label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randomyECsieOd0lErO6i_16autonatv2_client.exit11.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !alias.scope !1778, !noalias !1777, !noundef !7
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randomyECsieOd0lErO6i_16autonatv2_client.exit11.i.i.i.i

bb.j:                                             ; preds = %bb.g
  %i.ah = zext nneg i32 %i.z to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ah ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !alias.scope !1778, !noalias !1777, !noundef !7
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !alias.scope !1778, !noalias !1777, !noundef !7
  %i.am = add nuw nsw i32 %i.z, 2
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randomyECsieOd0lErO6i_16autonatv2_client.exit11.i.i.i.i

_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randomyECsieOd0lErO6i_16autonatv2_client.exit11.i.i.i.i: ; preds = %bb.j, %bb.i, %bb.h
  %.sroa.0.018.i.i.i.i8.i.i.i.i = phi i32 [ %i.am, %bb.j ], [ 1, %bb.h ], [ 2, %bb.i ] ; 5 uses
  %.sroa.02.017.i.i.i.i9.i.i.i.i = phi i32 [ %i.aj, %bb.j ], [ %i.ac, %bb.h ], [ %i.ae, %bb.i ]
  %.sroa.03.016.i.i.i.i10.i.i.i.i = phi i32 [ %i.al, %bb.j ], [ %i.ae, %bb.h ], [ %i.ag, %bb.i ]
  store i32 %.sroa.0.018.i.i.i.i8.i.i.i.i, ptr %0, align 4, !alias.scope !1778, !noalias !1777
  %i.an = zext i32 %.sroa.03.016.i.i.i.i10.i.i.i.i to i64
  %i.ao = shl nuw i64 %i.an, 32
  %i.ap = zext i32 %.sroa.02.017.i.i.i.i9.i.i.i.i to i64
  %i.aq = or disjoint i64 %i.ao, %i.ap
  %i.ar = zext i64 %i.aq to i128
  %i.as = zext i64 %1 to i128
  %i.at = mul nuw i128 %i.ar, %i.as               ; 2 uses
  %i.au = lshr i128 %i.at, 64
  %i.av = trunc nuw i128 %i.au to i64             ; 2 uses
  %i.aw = trunc i128 %i.at to i64                 ; 2 uses
  %i.ax = sub i64 0, %1
  %i.ay = icmp ult i64 %i.ax, %i.aw
  br i1 %i.ay, label %bb.k, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtCshhqnaxk4GqT_4rand5distr7uniform5ErrorE6unwrapCsieOd0lErO6i_16autonatv2_client.exit

bb.k:                                             ; preds = %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randomyECsieOd0lErO6i_16autonatv2_client.exit11.i.i.i.i
  %i.az = icmp samesign ult i32 %.sroa.0.018.i.i.i.i8.i.i.i.i, 63
  br i1 %i.az, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.bb = load i32, ptr %i.ba, align 4, !alias.scope !1779, !noalias !1777, !noundef !7
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @_RNvXs_NtCs1aYz1mjYrQZ_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core5block9Generator8generateCsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.bc, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %0), !noalias !1777
  %i.bd = load i32, ptr %0, align 4, !alias.scope !1779, !noalias !1777, !noundef !7 ; 2 uses
  %.not.i.i.i.i12.i.i.i.i = icmp eq i32 %.sroa.0.018.i.i.i.i8.i.i.i.i, 63
  br i1 %.not.i.i.i.i12.i.i.i.i, label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randomyECsieOd0lErO6i_16autonatv2_client.exit16.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !alias.scope !1779, !noalias !1777, !noundef !7
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randomyECsieOd0lErO6i_16autonatv2_client.exit16.i.i.i.i

bb.n:                                             ; preds = %bb.k
  %i.bg = zext nneg i32 %.sroa.0.018.i.i.i.i8.i.i.i.i to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !alias.scope !1779, !noalias !1777, !noundef !7
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bk = load i32, ptr %i.bj, align 4, !alias.scope !1779, !noalias !1777, !noundef !7
  %i.bl = add nuw nsw i32 %.sroa.0.018.i.i.i.i8.i.i.i.i, 2
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randomyECsieOd0lErO6i_16autonatv2_client.exit16.i.i.i.i

_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randomyECsieOd0lErO6i_16autonatv2_client.exit16.i.i.i.i: ; preds = %bb.n, %bb.m, %bb.l
  %.sroa.0.018.i.i.i.i13.i.i.i.i = phi i32 [ %i.bl, %bb.n ], [ 1, %bb.l ], [ 2, %bb.m ]
  %.sroa.02.017.i.i.i.i14.i.i.i.i = phi i32 [ %i.bi, %bb.n ], [ %i.bb, %bb.l ], [ %i.bd, %bb.m ]
  %.sroa.03.016.i.i.i.i15.i.i.i.i = phi i32 [ %i.bk, %bb.n ], [ %i.bd, %bb.l ], [ %i.bf, %bb.m ]
  store i32 %.sroa.0.018.i.i.i.i13.i.i.i.i, ptr %0, align 4, !alias.scope !1779, !noalias !1777
  %i.bm = zext i32 %.sroa.03.016.i.i.i.i15.i.i.i.i to i64
  %i.bn = shl nuw i64 %i.bm, 32
  %i.bo = zext i32 %.sroa.02.017.i.i.i.i14.i.i.i.i to i64
  %i.bp = or disjoint i64 %i.bn, %i.bo
  %4 = tail call i64 @llvm.umulh.i64(i64 %i.bp, i64 %1)
  %i.bq = xor i64 %i.aw, -1
  %.not6.i.i.i.i = icmp ugt i64 %4, %i.bq
  %i.br = zext i1 %.not6.i.i.i.i to i64
  %i.bs = add nuw i64 %i.br, %i.av
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtCshhqnaxk4GqT_4rand5distr7uniform5ErrorE6unwrapCsieOd0lErO6i_16autonatv2_client.exit

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtCshhqnaxk4GqT_4rand5distr7uniform5ErrorE6unwrapCsieOd0lErO6i_16autonatv2_client.exit: ; preds = %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECsieOd0lErO6i_16autonatv2_client.exit15.i.i.i.i, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECsieOd0lErO6i_16autonatv2_client.exit12.i.i.i.i, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randomyECsieOd0lErO6i_16autonatv2_client.exit16.i.i.i.i, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randomyECsieOd0lErO6i_16autonatv2_client.exit11.i.i.i.i
  %.sroa.62.0 = phi i64 [ %i.m, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECsieOd0lErO6i_16autonatv2_client.exit12.i.i.i.i ], [ %i.y, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randommECsieOd0lErO6i_16autonatv2_client.exit15.i.i.i.i ], [ %i.bs, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randomyECsieOd0lErO6i_16autonatv2_client.exit16.i.i.i.i ], [ %i.av, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs3std6StdRngNtNtB9_3rng6RngExt6randomyECsieOd0lErO6i_16autonatv2_client.exit11.i.i.i.i ]
  ret i64 %.sroa.62.0

bb.o:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @8, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #37
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs3std6StdRngNtNtCsenQHu2qVDfv_9rand_core12seedable_rng11SeedableRng8from_rngNtNtB7_6thread9ThreadRngECsieOd0lErO6i_16autonatv2_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([320 x i8]) align 4 captures(none) dereferenceable(320) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [1 x i8], align 1                 ; 3 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [4 x i8], align 4                 ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 8 uses
  %i.l = alloca [16 x i8], align 8                ; 8 uses
  %i.m = alloca [40 x i8], align 8                ; 10 uses
  %i.n = alloca [320 x i8], align 4               ; 6 uses
  %i.o = alloca [32 x i8], align 1                ; 4 uses
  %i.p = alloca [32 x i8], align 1                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @_RNvXsz_NtCskKLDkoKarTP_4core5arrayAhj20_NtNtB7_7default7Default7defaultCsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef nonnull sret([32 x i8]) align 1 captures(none) dereferenceable(32) %i.p)
  %.val = load ptr, ptr %1, align 8, !alias.scope !1828, !noalias !1829, !nonnull !7, !noundef !7 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1830)
  %i.r = load i32, ptr %i.q, align 4, !alias.scope !1830, !noalias !1831, !noundef !7
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 272 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val, i64 320
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.t, %bb.a
  %.sroa.0.026.i.i = phi i64 [ 0, %bb.a ], [ %i.co, %bb.t ] ; 3 uses
  %.sroa.05.025.i.i = phi i64 [ %i.s, %bb.a ], [ %i.cd, %bb.t ] ; 2 uses
  %i.ao = icmp ugt i64 %.sroa.05.025.i.i, 63
  br i1 %i.ao, label %bb.d, label %bb.f

.loopexit.i.i:                                    ; preds = %bb.t, %bb.p
  %.sroa.05.1.i.i = phi i64 [ %.sroa.05.3.i.i, %bb.p ], [ %i.cd, %bb.t ] ; 2 uses
  %i.ap = icmp ugt i64 %.sroa.05.1.i.i, 4294967295
  %i.aq = shl nuw i64 %.sroa.05.1.i.i, 32
  %.sroa.02.0.insert.insert.i.i.i = select i1 %i.ap, i64 513, i64 %i.aq ; 2 uses
  %i.ar = trunc i64 %.sroa.02.0.insert.insert.i.i.i to i1
  br i1 %i.ar, label %bb.c, label %_RNvXCsenQHu2qVDfv_9rand_coreNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtB2_3Rng10fill_bytesCsieOd0lErO6i_16autonatv2_client.exit, !prof !8

bb.c:                                             ; preds = %.loopexit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1832
  store i8 2, ptr %i.f, align 1, !noalias !1832
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 43, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #37, !noalias !1833
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.as = load i64, ptr %i.u, align 4, !alias.scope !1834, !noalias !1835
  %i.at = icmp ugt i64 %i.as, 1023
  br i1 %i.at, label %bb.e, label %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i, !prof !8

bb.e:                                             ; preds = %bb.d
  call void @_RNvMs_NtNtCshhqnaxk4GqT_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.t) #32, !noalias !1836
  br label %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i

_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i: ; preds = %bb.e, %bb.d
  call void @_RNvXs_NtCs1aYz1mjYrQZ_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core5block9Generator8generateCsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.t, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.q), !noalias !1833
  br label %bb.f

bb.f:                                             ; preds = %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i, %bb.b
  %.sroa.05.2.i.i = phi i64 [ 0, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i ], [ %.sroa.05.025.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1832
  %i.au = sub nuw nsw i64 32, %.sroa.0.026.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sroa.0.026.i.i
  store ptr %i.av, ptr %i.w, align 8, !alias.scope !1837, !noalias !1838
  store i64 %i.au, ptr %i.x, align 8, !alias.scope !1837, !noalias !1838
  store ptr %i.v, ptr %i.m, align 8, !alias.scope !1837, !noalias !1838
  store i64 0, ptr %i.y, align 8, !alias.scope !1837, !noalias !1838
  store i64 4, ptr %i.z, align 8, !alias.scope !1837, !noalias !1838
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1832
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.sroa.05.2.i.i
  store ptr %i.aw, ptr %i.l, align 8, !noalias !1832
  store ptr %i.t, ptr %i.aa, align 8, !noalias !1832
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1832
  store ptr %i.m, ptr %i.k, align 8, !alias.scope !1839, !noalias !1840
  store ptr %i.l, ptr %i.ab, align 8, !alias.scope !1839, !noalias !1840
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false), !alias.scope !1839, !noalias !1840
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1841
  call void @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter6traits8iteratorQINtNtNtBb_5slice4iter14ChunksExactMuthENtB5_8Iterator9size_hintCsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k), !noalias !1842
  %i.ax = load i64, ptr %i.e, align 8, !noalias !1841, !noundef !7
  %i.ay = load i64, ptr %i.ad, align 8, !range !12, !noalias !1841, !noundef !7
  %i.az = load i64, ptr %i.ae, align 8, !noalias !1841 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1841
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1841
  call void @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter6traits8iteratorQINtNtNtBb_5slice4iter4ItermENtB5_8Iterator9size_hintCsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ab), !noalias !1842
  %i.ba = load i64, ptr %i.d, align 8, !noalias !1841, !noundef !7
  %i.bb = load i64, ptr %i.af, align 8, !range !12, !noalias !1841, !noundef !7 ; 2 uses
  %i.bc = load i64, ptr %i.ag, align 8, !noalias !1841 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1841
  %i.bd = trunc nuw i64 %i.ay to i1
  %i.be = trunc nuw i64 %i.bb to i1               ; 2 uses
  br i1 %i.bd, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  br i1 %i.be, label %bb.i, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCsieOd0lErO6i_16autonatv2_client.exit.i.i

bb.h:                                             ; preds = %bb.f
  %..i.i.i = select i1 %i.be, i64 %i.bc, i64 undef
  br label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCsieOd0lErO6i_16autonatv2_client.exit.i.i

bb.i:                                             ; preds = %bb.g
  %..i14.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.bc, i64 %i.az)
  br label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCsieOd0lErO6i_16autonatv2_client.exit.i.i

_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCsieOd0lErO6i_16autonatv2_client.exit.i.i: ; preds = %bb.i, %bb.h, %bb.g
  %.sroa.7.0.i.i.i = phi i64 [ %..i14.i.i.i, %bb.i ], [ %..i.i.i, %bb.h ], [ %i.az, %bb.g ] ; 4 uses
  %.sroa.05.0.i.i.i = phi i64 [ 1, %bb.i ], [ %i.bb, %bb.h ], [ 1, %bb.g ] ; 2 uses
  %..i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ba, i64 %i.ax) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1832
  store i64 %.sroa.05.0.i.i.i, ptr %i.i, align 8, !noalias !1832
  store i64 %.sroa.7.0.i.i.i, ptr %i.ah, align 8, !noalias !1832
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1832
  store i64 %..i.i.i.i, ptr %i.ai, align 8, !noalias !1832
  store i64 1, ptr %i.h, align 8, !noalias !1832
  %i.bf = trunc nuw i64 %.sroa.05.0.i.i.i to i1
  %i.bg = icmp eq i64 %.sroa.7.0.i.i.i, %..i.i.i.i
  %or.cond.i.i = select i1 %i.bf, i1 %i.bg, i1 false, !prof !1843
  br i1 %or.cond.i.i, label %bb.k, label %bb.j, !prof !1843

bb.j:                                             ; preds = %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCsieOd0lErO6i_16autonatv2_client.exit.i.i
  call void @_RINvNtCskKLDkoKarTP_4core9panicking13assert_failedINtNtB4_6option6OptionjEBM_EB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #37, !noalias !1833
  unreachable

bb.k:                                             ; preds = %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCsieOd0lErO6i_16autonatv2_client.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1832
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1832
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1832
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false), !noalias !1832
  call void @llvm.experimental.noalias.scope.decl(metadata !1844), !noalias !1833
  call void @llvm.experimental.noalias.scope.decl(metadata !1845), !noalias !1833
  %.val.i.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !1846, !noalias !1832, !nonnull !7, !align !20 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 24 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 16 ; 2 uses
  %.val13.i.i.i.i = load ptr, ptr %i.al, align 8, !alias.scope !1846, !noalias !1832, !nonnull !7, !align !20 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.val13.i.i.i.i, i64 8
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge.i.i.i.i, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1847
  call void @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter6traits8iteratorQINtNtNtBb_5slice4iter14ChunksExactMuthENtB5_8Iterator9size_hintCsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g), !noalias !1848
  %i.bl = load i64, ptr %i.aj, align 8, !range !12, !noalias !1847, !noundef !7
  %i.bm = load i64, ptr %i.ak, align 8, !noalias !1847 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1847
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1847
  call void @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter6traits8iteratorQINtNtNtBb_5slice4iter4ItermENtB5_8Iterator9size_hintCsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al), !noalias !1848
  %i.bn = load i64, ptr %i.am, align 8, !range !12, !noalias !1847, !noundef !7
  %i.bo = load i64, ptr %i.an, align 8, !noalias !1847 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1847
  %i.bp = trunc nuw i64 %i.bl to i1
  %i.bq = trunc nuw i64 %i.bn to i1               ; 2 uses
  br i1 %i.bp, label %bb.m, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCsieOd0lErO6i_16autonatv2_client.exit.i.i.i.i

bb.m:                                             ; preds = %bb.l
  br i1 %i.bq, label %bb.n, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCsieOd0lErO6i_16autonatv2_client.exit.thread.i.i.i.i

bb.n:                                             ; preds = %bb.m
  %..i14.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.bo, i64 %i.bm)
  br label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCsieOd0lErO6i_16autonatv2_client.exit.thread.i.i.i.i

_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCsieOd0lErO6i_16autonatv2_client.exit.i.i.i.i: ; preds = %bb.l
  br i1 %i.bq, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCsieOd0lErO6i_16autonatv2_client.exit.thread.i.i.i.i, label %.lr.ph.preheader.i.i.i.i

_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCsieOd0lErO6i_16autonatv2_client.exit.thread.i.i.i.i: ; preds = %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCsieOd0lErO6i_16autonatv2_client.exit.i.i.i.i, %bb.n, %bb.m
end_hunk_1
begin_hunk_2_@_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs3std6StdRngNtNtCsenQHu2qVDfv_9rand_core12seedable_rng11SeedableRng8from_rngNtNtB7_6thread9ThreadRngECsieOd0lErO6i_16autonatv2_client:bb.a
  %i.cl = icmp ult i64 %i.cj, 5
  br i1 %i.cl, label %bb.r, label %bb.s, !prof !9

bb.r:                                             ; preds = %bb.q
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef nonnull %i.ci, i64 noundef %i.cj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %i.cj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28), !noalias !1833
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1832
  %i.cm = add i64 %i.cd, 1
  br label %bb.p

bb.s:                                             ; preds = %bb.q
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.cj, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #37, !noalias !1833
  unreachable

bb.t:                                             ; preds = %_RINvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEEINtB6_7ZipImplBX_B1B_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCsenQHu2qVDfv_9rand_core5blockINtB3r_8BlockRngNtNtNtCshhqnaxk4GqT_4rand4rngs6thread13ReseedingCoreE10fill_bytes0E0ECsieOd0lErO6i_16autonatv2_client.exit.i.i
  %i.cn = shl i64 %.sroa.7.0.i.i.i, 2
  %i.co = add i64 %i.cn, %.sroa.0.026.i.i         ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1832
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1832
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1832
  %i.cp = icmp ult i64 %i.co, 32
  br i1 %i.cp, label %bb.b, label %.loopexit.i.i

_RNvXCsenQHu2qVDfv_9rand_coreNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtB2_3Rng10fill_bytesCsieOd0lErO6i_16autonatv2_client.exit: ; preds = %.loopexit.i.i
  %.sroa.6.0.extract.shift.i.i.i.i = lshr i64 %.sroa.02.0.insert.insert.i.i.i, 32
  %.sroa.6.0.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i.i to i32
  store i32 %.sroa.6.0.extract.trunc.i.i.i.i, ptr %i.q, align 4, !alias.scope !1830, !noalias !1831
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.o, ptr noundef nonnull align 1 dereferenceable(32) %i.p, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1853
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 256
  call void @_RNvMs1_Cs1aYz1mjYrQZ_8chacha20INtB5_10ChaChaCoreNtB5_3R12NtNtB5_8variants6LegacyE12new_internalCsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef nonnull sret([64 x i8]) align 4 captures(none) dereferenceable(64) %.sroa.5.0..sroa_idx.i, ptr noalias nofree noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(32) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @206, i64 noundef 8), !noalias !1854
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(252) %.sroa.4.0..sroa_idx.i, i8 0, i64 252, i1 false), !alias.scope !1855, !noalias !1856
  store i32 64, ptr %i.n, align 4, !alias.scope !1855, !noalias !1856
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(320) %0, ptr noundef nonnull align 4 dereferenceable(320) %i.n, i64 320, i1 false), !noalias !1857
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1853
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef nonnull ptr @_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt11sample_iterhNtNtB9_5distr15StandardUniformECsieOd0lErO6i_16autonatv2_client(ptr nofree noundef nonnull readnone returned captures(ret: address, provenance) %0) unnamed_addr #3 {
bb.a:
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i16 @_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangetINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivetEECsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i48 %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i48 %1 to i16  ; 3 uses
  %.sroa.2.0.extract.shift = lshr i48 %1, 16
  %.sroa.2.0.extract.trunc = trunc i48 %.sroa.2.0.extract.shift to i16 ; 2 uses
  %.not.i = icmp ugt i16 %.sroa.0.0.extract.trunc, %.sroa.2.0.extract.trunc
  br i1 %.not.i, label %bb.m, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %.val10 = load ptr, ptr %0, align 8             ; 10 uses
  %i.a = sub nuw i16 %.sroa.2.0.extract.trunc, %.sroa.0.0.extract.trunc
  %i.b = add i16 %i.a, 1                          ; 3 uses
  %i.c = icmp eq i16 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10) ]
  %i.d = getelementptr inbounds nuw i8, ptr %.val10, i64 16 ; 4 uses
  %i.e = load i32, ptr %i.d, align 4, !alias.scope !1882, !noalias !1883, !noundef !7 ; 2 uses
  %i.f = zext nneg i32 %i.e to i64
  %i.g = icmp ugt i32 %i.e, 63
  br i1 %i.g, label %bb.d, label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomtECsieOd0lErO6i_16autonatv2_client.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.val10, i64 272 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val10, i64 320
  %i.j = load i64, ptr %i.i, align 4, !alias.scope !1884, !noalias !1885
  %i.k = icmp ugt i64 %i.j, 1023
  br i1 %i.k, label %bb.e, label %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i, !prof !8

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvMs_NtNtCshhqnaxk4GqT_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.h) #32, !noalias !1885
  br label %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i

_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i: ; preds = %bb.e, %bb.d
  tail call void @_RNvXs_NtCs1aYz1mjYrQZ_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core5block9Generator8generateCsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.h, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.d), !noalias !1883
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomtECsieOd0lErO6i_16autonatv2_client.exit.i.i

_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomtECsieOd0lErO6i_16autonatv2_client.exit.i.i: ; preds = %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i, %bb.c
  %.sroa.0.0.i.i.i.i.i.i = phi i64 [ 0, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i ], [ %i.f, %bb.c ] ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.sroa.0.0.i.i.i.i.i.i
  %i.m = load i32, ptr %i.l, align 4, !alias.scope !1882, !noalias !1883, !noundef !7
  %i.n = trunc nuw nsw i64 %.sroa.0.0.i.i.i.i.i.i to i32
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i.i = add nuw nsw i32 %i.n, 1
  store i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i.i, ptr %i.d, align 4, !alias.scope !1882, !noalias !1883
  %i.o = trunc i32 %i.m to i16
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResulttNtNtNtCshhqnaxk4GqT_4rand5distr7uniform5ErrorE6unwrapCsieOd0lErO6i_16autonatv2_client.exit

bb.f:                                             ; preds = %bb.b
  %i.p = zext i16 %i.b to i32
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10) ]
  %i.q = getelementptr inbounds nuw i8, ptr %.val10, i64 16 ; 7 uses
  %i.r = load i32, ptr %i.q, align 4, !alias.scope !1886, !noalias !1887, !noundef !7 ; 2 uses
  %i.s = zext nneg i32 %i.r to i64
  %i.t = icmp ugt i32 %i.r, 63
  br i1 %i.t, label %bb.g, label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECsieOd0lErO6i_16autonatv2_client.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %.val10, i64 272 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.val10, i64 320
  %i.w = load i64, ptr %i.v, align 4, !alias.scope !1888, !noalias !1889
  %i.x = icmp ugt i64 %i.w, 1023
  br i1 %i.x, label %bb.h, label %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i13.i.i, !prof !8

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvMs_NtNtCshhqnaxk4GqT_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.u) #32, !noalias !1889
  br label %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i13.i.i

_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i13.i.i: ; preds = %bb.h, %bb.g
  tail call void @_RNvXs_NtCs1aYz1mjYrQZ_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core5block9Generator8generateCsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.u, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.q), !noalias !1887
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECsieOd0lErO6i_16autonatv2_client.exit.i.i

_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECsieOd0lErO6i_16autonatv2_client.exit.i.i: ; preds = %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i13.i.i, %bb.f
  %.sroa.0.0.i.i.i.i11.i.i = phi i64 [ 0, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i13.i.i ], [ %i.s, %bb.f ] ; 3 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.sroa.0.0.i.i.i.i11.i.i
  %i.z = load i32, ptr %i.y, align 4, !alias.scope !1886, !noalias !1887, !noundef !7
  %i.aa = trunc nuw nsw i64 %.sroa.0.0.i.i.i.i11.i.i to i32
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i12.i.i = add nuw nsw i32 %i.aa, 1 ; 2 uses
  store i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i12.i.i, ptr %i.q, align 4, !alias.scope !1886, !noalias !1887
  %i.ab = zext i32 %i.z to i64
  %i.ac = zext i16 %i.b to i64                    ; 2 uses
  %i.ad = mul nuw nsw i64 %i.ab, %i.ac            ; 2 uses
  %i.ae = lshr i64 %i.ad, 32
  %i.af = trunc nuw i64 %i.ae to i16              ; 2 uses
  %i.ag = trunc i64 %i.ad to i32                  ; 2 uses
  %i.ah = sub nsw i32 0, %i.p
  %i.ai = icmp ugt i32 %i.ag, %i.ah
  br i1 %i.ai, label %bb.i, label %bb.l

bb.i:                                             ; preds = %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECsieOd0lErO6i_16autonatv2_client.exit.i.i
  %i.aj = zext nneg i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i12.i.i to i64
  %i.ak = icmp samesign ugt i64 %.sroa.0.0.i.i.i.i11.i.i, 62
  br i1 %i.ak, label %bb.j, label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECsieOd0lErO6i_16autonatv2_client.exit17.i.i

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %.val10, i64 272 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.val10, i64 320
  %i.an = load i64, ptr %i.am, align 4, !alias.scope !1890, !noalias !1891
  %i.ao = icmp ugt i64 %i.an, 1023
  br i1 %i.ao, label %bb.k, label %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i16.i.i, !prof !8

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvMs_NtNtCshhqnaxk4GqT_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.al) #32, !noalias !1891
  br label %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i16.i.i

_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i16.i.i: ; preds = %bb.k, %bb.j
  tail call void @_RNvXs_NtCs1aYz1mjYrQZ_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core5block9Generator8generateCsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.al, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.q), !noalias !1892
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECsieOd0lErO6i_16autonatv2_client.exit17.i.i

_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECsieOd0lErO6i_16autonatv2_client.exit17.i.i: ; preds = %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i16.i.i, %bb.i
  %.sroa.0.0.i.i.i.i14.i.i = phi i64 [ 0, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i16.i.i ], [ %i.aj, %bb.i ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.sroa.0.0.i.i.i.i14.i.i
  %i.aq = load i32, ptr %i.ap, align 4, !alias.scope !1893, !noalias !1892, !noundef !7
  %i.ar = trunc nuw nsw i64 %.sroa.0.0.i.i.i.i14.i.i to i32
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i15.i.i = add nuw nsw i32 %i.ar, 1
  store i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i15.i.i, ptr %i.q, align 4, !alias.scope !1893, !noalias !1892
  %i.as = zext i32 %i.aq to i64
  %i.at = mul nuw nsw i64 %i.as, %i.ac
  %i.au = lshr i64 %i.at, 32
  %i.av = trunc nuw nsw i64 %i.au to i32
  %i.aw = xor i32 %i.ag, -1
  %.not8.i.i = icmp samesign ult i32 %i.aw, %i.av
  %i.ax = zext i1 %.not8.i.i to i16
  %i.ay = add nuw i16 %i.ax, %i.af
  br label %bb.l

bb.l:                                             ; preds = %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECsieOd0lErO6i_16autonatv2_client.exit17.i.i, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECsieOd0lErO6i_16autonatv2_client.exit.i.i
  %.sroa.03.0.i.i = phi i16 [ %i.ay, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECsieOd0lErO6i_16autonatv2_client.exit17.i.i ], [ %i.af, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECsieOd0lErO6i_16autonatv2_client.exit.i.i ]
  %i.az = add i16 %.sroa.03.0.i.i, %.sroa.0.0.extract.trunc
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResulttNtNtNtCshhqnaxk4GqT_4rand5distr7uniform5ErrorE6unwrapCsieOd0lErO6i_16autonatv2_client.exit

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResulttNtNtNtCshhqnaxk4GqT_4rand5distr7uniform5ErrorE6unwrapCsieOd0lErO6i_16autonatv2_client.exit: ; preds = %bb.l, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomtECsieOd0lErO6i_16autonatv2_client.exit.i.i
  %.sroa.5.0.i.i = phi i16 [ %i.o, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomtECsieOd0lErO6i_16autonatv2_client.exit.i.i ], [ %i.az, %bb.l ]
  ret i16 %.sroa.5.0.i.i

bb.m:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @8, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #37
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangeyINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusiveyEECsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i64, ptr %1, align 8, !alias.scope !1924, !noalias !1925, !noundef !7 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !alias.scope !1925, !noalias !1924, !noundef !7 ; 2 uses
  %.not.i = icmp ugt i64 %.val, %.val1
  br i1 %.not.i, label %bb.s, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %.val4 = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7 ; 13 uses
  %i.b = sub nuw i64 %.val1, %.val                ; 2 uses
  %i.c = add i64 %i.b, 1                          ; 3 uses
  %i.d = icmp eq i64 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %.val4, i64 16 ; 13 uses
  %i.f = load i32, ptr %i.e, align 4, !noalias !1926, !noundef !7 ; 7 uses
  %i.g = icmp ult i32 %i.f, 63                    ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  br i1 %i.g, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.val4, i64 268
  %i.i = load i32, ptr %i.h, align 4, !alias.scope !1927, !noalias !1928, !noundef !7
  %i.j = getelementptr inbounds nuw i8, ptr %.val4, i64 272 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val4, i64 320
  %i.l = load i64, ptr %i.k, align 4, !alias.scope !1929, !noalias !1930
  %i.m = icmp ugt i64 %i.l, 1023
  br i1 %i.m, label %bb.e, label %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i, !prof !8

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvMs_NtNtCshhqnaxk4GqT_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.j) #32, !noalias !1930
  br label %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i

_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i: ; preds = %bb.e, %bb.d
  tail call void @_RNvXs_NtCs1aYz1mjYrQZ_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core5block9Generator8generateCsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.j, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.e), !noalias !1928
  %i.n = load i32, ptr %i.e, align 4, !alias.scope !1927, !noalias !1928, !noundef !7 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.f, 63
  br i1 %.not.i.i.i.i.i.i, label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsieOd0lErO6i_16autonatv2_client.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.val4, i64 20
  %i.p = load i32, ptr %i.o, align 4, !alias.scope !1927, !noalias !1928, !noundef !7
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsieOd0lErO6i_16autonatv2_client.exit.i.i

bb.g:                                             ; preds = %bb.c
  %i.q = zext nneg i32 %i.f to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !alias.scope !1927, !noalias !1928, !noundef !7
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.u = load i32, ptr %i.t, align 4, !alias.scope !1927, !noalias !1928, !noundef !7
  %i.v = add nuw nsw i32 %i.f, 2
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsieOd0lErO6i_16autonatv2_client.exit.i.i

_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsieOd0lErO6i_16autonatv2_client.exit.i.i: ; preds = %bb.g, %bb.f, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i
  %.sroa.0.018.i.i.i.i.i.i = phi i32 [ %i.v, %bb.g ], [ 1, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i ], [ 2, %bb.f ]
  %.sroa.02.017.i.i.i.i.i.i = phi i32 [ %i.s, %bb.g ], [ %i.i, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i ], [ %i.n, %bb.f ]
  %.sroa.03.016.i.i.i.i.i.i = phi i32 [ %i.u, %bb.g ], [ %i.n, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i ], [ %i.p, %bb.f ]
  store i32 %.sroa.0.018.i.i.i.i.i.i, ptr %i.e, align 4, !alias.scope !1927, !noalias !1928
  %i.w = zext i32 %.sroa.03.016.i.i.i.i.i.i to i64
  %i.x = shl nuw i64 %i.w, 32
  %i.y = zext i32 %.sroa.02.017.i.i.i.i.i.i to i64
  %i.z = or disjoint i64 %i.x, %i.y
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultyNtNtNtCshhqnaxk4GqT_4rand5distr7uniform5ErrorE6unwrapCsieOd0lErO6i_16autonatv2_client.exit

bb.h:                                             ; preds = %bb.b
  br i1 %i.g, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %.val4, i64 268
  %i.ab = load i32, ptr %i.aa, align 4, !alias.scope !1931, !noalias !1932, !noundef !7
  %i.ac = getelementptr inbounds nuw i8, ptr %.val4, i64 272 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val4, i64 320
  %i.ae = load i64, ptr %i.ad, align 4, !alias.scope !1933, !noalias !1934
  %i.af = icmp ugt i64 %i.ae, 1023
  br i1 %i.af, label %bb.j, label %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i, !prof !8

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvMs_NtNtCshhqnaxk4GqT_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.ac) #32, !noalias !1934
  br label %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i

_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i: ; preds = %bb.j, %bb.i
  tail call void @_RNvXs_NtCs1aYz1mjYrQZ_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core5block9Generator8generateCsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.ac, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.e), !noalias !1932
  %i.ag = load i32, ptr %i.e, align 4, !alias.scope !1931, !noalias !1932, !noundef !7 ; 2 uses
  %.not.i.i.i.i10.i.i = icmp eq i32 %i.f, 63
  br i1 %.not.i.i.i.i10.i.i, label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsieOd0lErO6i_16autonatv2_client.exit14.i.i, label %bb.k

bb.k:                                             ; preds = %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.val4, i64 20
  %i.ai = load i32, ptr %i.ah, align 4, !alias.scope !1931, !noalias !1932, !noundef !7
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsieOd0lErO6i_16autonatv2_client.exit14.i.i

bb.l:                                             ; preds = %bb.h
  %i.aj = zext nneg i32 %i.f to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.aj ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !alias.scope !1931, !noalias !1932, !noundef !7
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.an = load i32, ptr %i.am, align 4, !alias.scope !1931, !noalias !1932, !noundef !7
  %i.ao = add nuw nsw i32 %i.f, 2
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsieOd0lErO6i_16autonatv2_client.exit14.i.i

_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsieOd0lErO6i_16autonatv2_client.exit14.i.i: ; preds = %bb.l, %bb.k, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i
  %.sroa.0.018.i.i.i.i11.i.i = phi i32 [ %i.ao, %bb.l ], [ 1, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i ], [ 2, %bb.k ] ; 5 uses
  %.sroa.02.017.i.i.i.i12.i.i = phi i32 [ %i.al, %bb.l ], [ %i.ab, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i ], [ %i.ag, %bb.k ]
  %.sroa.03.016.i.i.i.i13.i.i = phi i32 [ %i.an, %bb.l ], [ %i.ag, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i ], [ %i.ai, %bb.k ]
  store i32 %.sroa.0.018.i.i.i.i11.i.i, ptr %i.e, align 4, !alias.scope !1931, !noalias !1932
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

bb.m:                                             ; preds = %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsieOd0lErO6i_16autonatv2_client.exit14.i.i
  %i.bb = icmp samesign ult i32 %.sroa.0.018.i.i.i.i11.i.i, 63
  br i1 %i.bb, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %.val4, i64 268
  %i.bd = load i32, ptr %i.bc, align 4, !alias.scope !1935, !noalias !1936, !noundef !7
  %i.be = getelementptr inbounds nuw i8, ptr %.val4, i64 272 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.val4, i64 320
  %i.bg = load i64, ptr %i.bf, align 4, !alias.scope !1937, !noalias !1938
  %i.bh = icmp ugt i64 %i.bg, 1023
  br i1 %i.bh, label %bb.o, label %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i, !prof !8

bb.o:                                             ; preds = %bb.n
  tail call void @_RNvMs_NtNtCshhqnaxk4GqT_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.be) #32, !noalias !1938
  br label %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i

_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i: ; preds = %bb.o, %bb.n
  tail call void @_RNvXs_NtCs1aYz1mjYrQZ_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core5block9Generator8generateCsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.be, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.e), !noalias !1936
  %i.bi = load i32, ptr %i.e, align 4, !alias.scope !1935, !noalias !1936, !noundef !7 ; 2 uses
  %.not.i.i.i.i16.i.i = icmp eq i32 %.sroa.0.018.i.i.i.i11.i.i, 63
  br i1 %.not.i.i.i.i16.i.i, label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsieOd0lErO6i_16autonatv2_client.exit20.i.i, label %bb.p

bb.p:                                             ; preds = %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.val4, i64 20
  %i.bk = load i32, ptr %i.bj, align 4, !alias.scope !1935, !noalias !1936, !noundef !7
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsieOd0lErO6i_16autonatv2_client.exit20.i.i

bb.q:                                             ; preds = %bb.m
  %i.bl = zext nneg i32 %.sroa.0.018.i.i.i.i11.i.i to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.bl ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !alias.scope !1935, !noalias !1936, !noundef !7
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !alias.scope !1935, !noalias !1936, !noundef !7
  %i.bq = add nuw nsw i32 %.sroa.0.018.i.i.i.i11.i.i, 2
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsieOd0lErO6i_16autonatv2_client.exit20.i.i

_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsieOd0lErO6i_16autonatv2_client.exit20.i.i: ; preds = %bb.q, %bb.p, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i
  %.sroa.0.018.i.i.i.i17.i.i = phi i32 [ %i.bq, %bb.q ], [ 1, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i ], [ 2, %bb.p ]
  %.sroa.02.017.i.i.i.i18.i.i = phi i32 [ %i.bn, %bb.q ], [ %i.bd, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i ], [ %i.bi, %bb.p ]
  %.sroa.03.016.i.i.i.i19.i.i = phi i32 [ %i.bp, %bb.q ], [ %i.bi, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i ], [ %i.bk, %bb.p ]
  store i32 %.sroa.0.018.i.i.i.i17.i.i, ptr %i.e, align 4, !alias.scope !1935, !noalias !1936
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

bb.r:                                             ; preds = %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsieOd0lErO6i_16autonatv2_client.exit20.i.i, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsieOd0lErO6i_16autonatv2_client.exit14.i.i
  %.sroa.01.0.i.i = phi i64 [ %i.bx, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsieOd0lErO6i_16autonatv2_client.exit20.i.i ], [ %i.ax, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsieOd0lErO6i_16autonatv2_client.exit14.i.i ]
  %i.by = add i64 %.sroa.01.0.i.i, %.val
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultyNtNtNtCshhqnaxk4GqT_4rand5distr7uniform5ErrorE6unwrapCsieOd0lErO6i_16autonatv2_client.exit

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultyNtNtNtCshhqnaxk4GqT_4rand5distr7uniform5ErrorE6unwrapCsieOd0lErO6i_16autonatv2_client.exit: ; preds = %bb.r, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsieOd0lErO6i_16autonatv2_client.exit.i.i
  %.sroa.65.0 = phi i64 [ %i.by, %bb.r ], [ %i.z, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECsieOd0lErO6i_16autonatv2_client.exit.i.i ]
  ret i64 %.sroa.65.0

bb.s:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @8, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #37
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvXs0_NtNtCs4LZN9PPmi2I_11hickory_net4xfer15dns_multiplexerINtB7_14DnsMultiplexerINtNtNtBb_3tcp17tcp_client_stream15TcpClientStreamINtNtNtBb_7runtime8iocompat17AsyncIoTokioAsStdNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEEENtB9_16DnsRequestSender12send_message0CsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #4 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load ptr, ptr @_RNvNvXs0_NtNtCs4LZN9PPmi2I_11hickory_net4xfer15dns_multiplexerINtB7_14DnsMultiplexerpENtB9_16DnsRequestSender12send_message10___CALLSITE, align 8, !nonnull !7, !align !20, !noundef !7
  tail call void @_RNvMNtCs9Bqz0CSWZZv_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = load atomic i64, ptr @_RNvCscIBp6mpAwK8_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.e = icmp ult i64 %i.d, 6
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp samesign ugt i64 %i.d, 3
  br i1 %i.f, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr @_RNvNvXs0_NtNtCs4LZN9PPmi2I_11hickory_net4xfer15dns_multiplexerINtB7_14DnsMultiplexerpENtB9_16DnsRequestSender12send_message10___CALLSITE, align 8, !nonnull !7, !align !20, !noundef !7 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !7, !noundef !7
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.k = load i64, ptr %i.j, align 8, !noundef !7
  store i64 4, ptr %i.a, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.i, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.k, ptr %i.m, align 8
  %i.n = tail call { ptr, ptr } @_RNvCscIBp6mpAwK8_3log6logger() ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.n, 0        ; 2 uses
  %i.p = extractvalue { ptr, ptr } %i.n, 1        ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !invariant.load !7, !nonnull !7
  %i.s = call noundef zeroext i1 %i.r(ptr noundef %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #38
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support13___tracing_log(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.g, ptr noundef nonnull %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvXs0_NtNtCs4LZN9PPmi2I_11hickory_net4xfer15dns_multiplexerINtB7_14DnsMultiplexerINtNtNtBb_3tcp17tcp_client_stream15TcpClientStreamINtNtNtBb_7runtime8iocompat17AsyncIoTokioAsStdNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEEENtB9_16DnsRequestSender12send_messages0_0CsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #4 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load ptr, ptr @_RNvNvXs0_NtNtCs4LZN9PPmi2I_11hickory_net4xfer15dns_multiplexerINtB7_14DnsMultiplexerpENtB9_16DnsRequestSender12send_messages0_10___CALLSITE, align 8, !nonnull !7, !align !20, !noundef !7
  tail call void @_RNvMNtCs9Bqz0CSWZZv_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = load atomic i64, ptr @_RNvCscIBp6mpAwK8_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.e = icmp ult i64 %i.d, 6
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp samesign ugt i64 %i.d, 3
  br i1 %i.f, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr @_RNvNvXs0_NtNtCs4LZN9PPmi2I_11hickory_net4xfer15dns_multiplexerINtB7_14DnsMultiplexerpENtB9_16DnsRequestSender12send_messages0_10___CALLSITE, align 8, !nonnull !7, !align !20, !noundef !7 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !7, !noundef !7
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.k = load i64, ptr %i.j, align 8, !noundef !7
  store i64 4, ptr %i.a, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.i, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.k, ptr %i.m, align 8
  %i.n = tail call { ptr, ptr } @_RNvCscIBp6mpAwK8_3log6logger() ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.n, 0        ; 2 uses
  %i.p = extractvalue { ptr, ptr } %i.n, 1        ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !invariant.load !7, !nonnull !7
  %i.s = call noundef zeroext i1 %i.r(ptr noundef %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #38
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support13___tracing_log(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.g, ptr noundef nonnull %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvXs0_NtNtCs4LZN9PPmi2I_11hickory_net4xfer15dns_multiplexerINtB7_14DnsMultiplexerINtNtNtBb_3tcp17tcp_client_stream15TcpClientStreamINtNtNtBb_7runtime8iocompat17AsyncIoTokioAsStdNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEEENtB9_16DnsRequestSender12send_messages_0CsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #4 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load ptr, ptr @_RNvNvXs0_NtNtCs4LZN9PPmi2I_11hickory_net4xfer15dns_multiplexerINtB7_14DnsMultiplexerpENtB9_16DnsRequestSender12send_messages_10___CALLSITE, align 8, !nonnull !7, !align !20, !noundef !7
  tail call void @_RNvMNtCs9Bqz0CSWZZv_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = load atomic i64, ptr @_RNvCscIBp6mpAwK8_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.e = icmp ult i64 %i.d, 6
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp samesign ugt i64 %i.d, 3
  br i1 %i.f, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr @_RNvNvXs0_NtNtCs4LZN9PPmi2I_11hickory_net4xfer15dns_multiplexerINtB7_14DnsMultiplexerpENtB9_16DnsRequestSender12send_messages_10___CALLSITE, align 8, !nonnull !7, !align !20, !noundef !7 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !7, !noundef !7
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.k = load i64, ptr %i.j, align 8, !noundef !7
  store i64 4, ptr %i.a, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.i, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.k, ptr %i.m, align 8
  %i.n = tail call { ptr, ptr } @_RNvCscIBp6mpAwK8_3log6logger() ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.n, 0        ; 2 uses
  %i.p = extractvalue { ptr, ptr } %i.n, 1        ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !invariant.load !7, !nonnull !7
  %i.s = call noundef zeroext i1 %i.r(ptr noundef %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #38
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support13___tracing_log(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.g, ptr noundef nonnull %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCsa9Jrx9KOzzM_16hickory_resolver11name_serverINtB2_10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE16record_cancelledCsieOd0lErO6i_16autonatv2_client(ptr noundef nonnull align 8 %0, i64 noundef %1, i32 noundef range(i32 0, 1000000000) %2) unnamed_addr #0 {
bb.a:
  %i.a = add nuw nsw i32 %2, 5000000
  %i.b = icmp samesign ugt i32 %2, 994999999
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %1, -1
  br i1 %i.c, label %bb.e, label %bb.c, !prof !8

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i64 %1, 1
  %i.e = add nsw i32 %2, -995000000
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.4.0.i.ph = phi i32 [ %i.a, %bb.a ], [ %i.e, %bb.c ]
  %.sroa.0.0.i.ph = phi i64 [ %1, %bb.a ], [ %i.d, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @_RNvMs3_NtCsa9Jrx9KOzzM_16hickory_resolver11name_serverNtB5_12DecayingSrtt6record(ptr noundef nonnull align 8 %i.f, i64 noundef %.sroa.0.0.i.ph, i32 noundef %.sroa.4.0.i.ph)
  ret void

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #37
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCsa9Jrx9KOzzM_16hickory_resolver11name_serverINtB2_10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE25probe_encrypted_transportCsieOd0lErO6i_16autonatv2_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %2, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(36) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [17 x i8], align 1                ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 13 uses
  %i.c = alloca [17 x i8], align 1                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
end_hunk_2
begin_hunk_3_@_RNvXs_NtCs6b9j1MKPRPC_12libp2p_swarm7upgradeINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtB6_15stream_protocol14StreamProtocolENtB4_19OutboundUpgradeSend16upgrade_outboundCsieOd0lErO6i_16autonatv2_client
declare hidden void @_RNvXs_NtCs6b9j1MKPRPC_12libp2p_swarm7upgradeINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtB6_15stream_protocol14StreamProtocolENtB4_19OutboundUpgradeSend16upgrade_outboundCsieOd0lErO6i_16autonatv2_client(ptr dead_on_unwind noalias nofree noundef writable sret([136 x i8]) align 8 captures(address) dereferenceable(136), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(136), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtCs6b9j1MKPRPC_12libp2p_swarm7upgradeNtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade6denied13DeniedUpgradeNtB4_19OutboundUpgradeSend16upgrade_outboundCsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(136), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtCs6b9j1MKPRPC_12libp2p_swarm7upgradeINtCscu2bAJ62uie_6either6EitherINtB5_11SendWrapperNtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade6denied13DeniedUpgradeEIB1d_INtNtB1z_5ready12ReadyUpgradeNtNtB7_15stream_protocol14StreamProtocolEEENtB5_18InboundUpgradeSend15upgrade_inboundCsieOd0lErO6i_16autonatv2_client(ptr dead_on_unwind noalias nofree noundef writable sret([136 x i8]) align 8 captures(address) dereferenceable(136), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(136), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtCs6b9j1MKPRPC_12libp2p_swarm7upgradeINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade5ready12ReadyUpgradeNtNtB7_15stream_protocol14StreamProtocolENtB5_18InboundUpgradeSend15upgrade_inboundCsieOd0lErO6i_16autonatv2_client(ptr dead_on_unwind noalias nofree noundef writable sret([136 x i8]) align 8 captures(address) dereferenceable(136), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(136), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtCs6b9j1MKPRPC_12libp2p_swarm7upgradeINtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade6select13SelectUpgradeINtNtBM_5ready12ReadyUpgradeNtNtB7_15stream_protocol14StreamProtocolEB1J_ENtB5_18InboundUpgradeSend15upgrade_inboundCsieOd0lErO6i_16autonatv2_client(ptr dead_on_unwind noalias nofree noundef writable sret([144 x i8]) align 8 captures(address) dereferenceable(144), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(136), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtCs6b9j1MKPRPC_12libp2p_swarm7upgradeNtNtNtCsdTHTBGblh3Z_11libp2p_core7upgrade6denied13DeniedUpgradeNtB5_18InboundUpgradeSend15upgrade_inboundCsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(136), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvYINtNtNtCskKLDkoKarTP_4core5slice4iter11ChunksExacthENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvYINtNtNtCskKLDkoKarTP_4core5slice4iter7IterMutmENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXs1_NtCsjYje7j88m19_18asynchronous_codec4fuseINtB5_4FuseINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtNtCshuexzQAPOo_12libp2p_noise2io6framed5CodecNtNtCsdnM8jOGFORn_4snow14handshakestate14HandshakeStateEENtNtCs5vIp9T9TAX9_10futures_io6if_std9AsyncRead9poll_readCsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef align 8 dereferenceable(1064), ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXs1_NtCsjYje7j88m19_18asynchronous_codec4fuseINtB5_4FuseINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtNtCshuexzQAPOo_12libp2p_noise2io6framed5CodecNtNtCsdnM8jOGFORn_4snow14transportstate14TransportStateEENtNtCs5vIp9T9TAX9_10futures_io6if_std9AsyncRead9poll_readCsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef align 8 dereferenceable(344), ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3mem9alignment9AlignmentNtB6_5Debug3fmtCsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXs4_NtCs5vIp9T9TAX9_10futures_io6if_stdINtNtCskKLDkoKarTP_4core3pin3PinQINtNtCsjYje7j88m19_18asynchronous_codec4fuse4FuseINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtNtCshuexzQAPOo_12libp2p_noise2io6framed5CodecNtNtCsdnM8jOGFORn_4snow14handshakestate14HandshakeStateEEENtB5_10AsyncWrite10poll_writeCsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvNtCsjYje7j88m19_18asynchronous_codec12framed_write7err_eof() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXs2_NtCsjYje7j88m19_18asynchronous_codec4fuseINtB5_4FuseINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtNtCshuexzQAPOo_12libp2p_noise2io6framed5CodecNtNtCsdnM8jOGFORn_4snow14handshakestate14HandshakeStateEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef align 8 dereferenceable(1064), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXs2_NtCsjYje7j88m19_18asynchronous_codec4fuseINtB5_4FuseINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtNtCshuexzQAPOo_12libp2p_noise2io6framed5CodecNtNtCsdnM8jOGFORn_4snow14handshakestate14HandshakeStateEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_writeCsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef align 8 dereferenceable(1064), ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXs2_NtCsjYje7j88m19_18asynchronous_codec4fuseINtB5_4FuseINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtNtCshuexzQAPOo_12libp2p_noise2io6framed5CodecNtNtCsdnM8jOGFORn_4snow14transportstate14TransportStateEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_closeCsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef align 8 dereferenceable(344), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXs4_NtCs5vIp9T9TAX9_10futures_io6if_stdINtNtCskKLDkoKarTP_4core3pin3PinQINtNtCsjYje7j88m19_18asynchronous_codec4fuse4FuseINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtNtCshuexzQAPOo_12libp2p_noise2io6framed5CodecNtNtCsdnM8jOGFORn_4snow14transportstate14TransportStateEEENtB5_10AsyncWrite10poll_writeCsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXs2_NtCsjYje7j88m19_18asynchronous_codec4fuseINtB5_4FuseINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtNtCshuexzQAPOo_12libp2p_noise2io6framed5CodecNtNtCsdnM8jOGFORn_4snow14transportstate14TransportStateEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_flushCsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef align 8 dereferenceable(344), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXs2_NtCsjYje7j88m19_18asynchronous_codec4fuseINtB5_4FuseINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtNtCshuexzQAPOo_12libp2p_noise2io6framed5CodecNtNtCsdnM8jOGFORn_4snow14transportstate14TransportStateEENtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_writeCsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef align 8 dereferenceable(344), ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @close(i32 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9debug_set(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_8DebugSet7entriesRINtNtCsgW4lhAJgVdS_9multihash9multihash9MultihashKj40_EINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4IterB13_EECsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs5_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_8DebugSet6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_Cs1aYz1mjYrQZ_8chacha20INtB5_10ChaChaCoreNtB5_3R12NtNtB5_8variants6LegacyE12new_internalCsieOd0lErO6i_16autonatv2_client(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 4 captures(none) dereferenceable(64), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtB8_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB8_5error5ErrorNtNtB8_6marker4SendNtB1N_4SyncEL_EENtB6_5Debug3fmtCsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3net7ip_addr8Ipv4AddrNtB6_5Debug3fmtCsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtB8_6option6OptionhENtB6_5Debug3fmtCsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG0_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTRL1_INtNtNtCsc13h7DQFCSE_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBR_6marker4SendNtB2G_4SyncEL_E9drop_slowB1C_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12BoundedInnerINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCsbTgMbcnmcyu_13hickory_proto2op12dns_response11DnsResponseNtNtCs4LZN9PPmi2I_11hickory_net5error8NetErrorEEE9drop_slowB3i_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare hidden void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12BoundedInnerNtNtCs4LZN9PPmi2I_11hickory_net4xfer17OneshotDnsRequestEE9drop_slowCsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc12BoundedInnerNtNtNtCsbTgMbcnmcyu_13hickory_proto2op14serial_message13SerialMessageEE9drop_slowCs4LZN9PPmi2I_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsgV0iE8Xkxiy_15futures_channel7oneshot5InnerNtNtCs4LZN9PPmi2I_11hickory_net4xfer17DnsResponseStreamEE9drop_slowB1y_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCsbTgMbcnmcyu_13hickory_proto2op7message7MessageNtNtCs4LZN9PPmi2I_11hickory_net5error8NetErrorEE9drop_slowCsa9Jrx9KOzzM_16hickory_resolver(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSettEE9drop_slowCsa9Jrx9KOzzM_16hickory_resolver(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtNtCsc13h7DQFCSE_5tokio4task8join_set7JoinSetuEEE9drop_slowCsa9Jrx9KOzzM_16hickory_resolver(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtCsgV0iE8Xkxiy_15futures_channel4mpsc10SenderTaskEE9drop_slowCs4LZN9PPmi2I_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare hidden void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsa9Jrx9KOzzM_16hickory_resolver16name_server_pool11PoolContextE9drop_slowCsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsbTgMbcnmcyu_13hickory_proto2op5query5QueryE9drop_slowCsa9Jrx9KOzzM_16hickory_resolver(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCskKLDkoKarTP_4core2io5error5ErrorE9drop_slowCs4LZN9PPmi2I_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsc13h7DQFCSE_5tokio7runtime2io12scheduled_io11ScheduledIoE9drop_slowBO_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSNtNtCs4LZN9PPmi2I_11hickory_net5error13ForwardNSDataE9drop_slowBL_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordE9drop_slowCs4LZN9PPmi2I_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #21

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtCsjYje7j88m19_18asynchronous_codec7decoderINtNtB4_4fuse4FuseINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtNtCshuexzQAPOo_12libp2p_noise2io6framed5CodecNtNtCsdnM8jOGFORn_4snow14handshakestate14HandshakeStateEENtB2_7Decoder10decode_eofCsieOd0lErO6i_16autonatv2_client(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96), ptr noalias nofree noundef align 8 dereferenceable(1064), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtCsjYje7j88m19_18asynchronous_codec7decoderINtNtB4_4fuse4FuseINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtNtCshuexzQAPOo_12libp2p_noise2io6framed5CodecNtNtCsdnM8jOGFORn_4snow14handshakestate14HandshakeStateEENtB2_7Decoder6decodeCsieOd0lErO6i_16autonatv2_client(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96), ptr noalias nofree noundef align 8 dereferenceable(1064), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtCsjYje7j88m19_18asynchronous_codec7decoderINtNtB4_4fuse4FuseINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtNtCshuexzQAPOo_12libp2p_noise2io6framed5CodecNtNtCsdnM8jOGFORn_4snow14transportstate14TransportStateEENtB2_7Decoder10decode_eofCsieOd0lErO6i_16autonatv2_client(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(344), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtCsjYje7j88m19_18asynchronous_codec7decoderINtNtB4_4fuse4FuseINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtNtCshuexzQAPOo_12libp2p_noise2io6framed5CodecNtNtCsdnM8jOGFORn_4snow14transportstate14TransportStateEENtB2_7Decoder6decodeCsieOd0lErO6i_16autonatv2_client(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(344), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordNtNtNtBL_5rdata3soa3SOAEE13new_uninit_inCsieOd0lErO6i_16autonatv2_client() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxNtNtCsbTgMbcnmcyu_13hickory_proto5error10ProtoErrorE13new_uninit_inCsieOd0lErO6i_16autonatv2_client() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxNtNtNtCsbTgMbcnmcyu_13hickory_proto2op5query5QueryE13new_uninit_inCsieOd0lErO6i_16autonatv2_client() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxNtNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6domain4name4NameE13new_uninit_inCsieOd0lErO6i_16autonatv2_client() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterINtNtCsgW4lhAJgVdS_9multihash9multihash9MultihashKj40_EuENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtCskKLDkoKarTP_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9attribute13LinkAttributeINtNtNtBa_5slice4iter4IterB14_EECsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9prop_list4PropINtNtNtBa_5slice4iter4IterB14_EECsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr5rdata1a1AINtNtNtBa_5slice4iter4IterB14_EECsieOd0lErO6i_16autonatv2_client(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCskKLDkoKarTP_4core4cell10UnsafeCellINtNtCsenQHu2qVDfv_9rand_core5block8BlockRngNtNtNtCshhqnaxk4GqT_4rand4rngs6thread13ReseedingCoreEEE9drop_slowB26_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #21

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXs0_NtNtCs5xzCmWPONXx_11libp2p_quic10connection6streamNtB5_6StreamNtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_write(ptr noalias nofree noundef align 8 dereferenceable(72), ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXs_NtNtCs5xzCmWPONXx_11libp2p_quic10connection6streamNtB4_6StreamNtNtCs5vIp9T9TAX9_10futures_io6if_std9AsyncRead9poll_read(ptr noalias nofree noundef align 8 dereferenceable(72), ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umulh.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umulh.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { nofree nosync nounwind nonlazybind memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { cold minsize nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #28 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #29 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #30 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #32 = { noinline }
attributes #33 = { cold noreturn nounwind }
attributes #34 = { cold }
attributes #35 = { nounwind }
attributes #36 = { noreturn }
attributes #37 = { noinline noreturn }
attributes #38 = { inlinehint }

!llvm.module.flags = !{!1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = distinct !{null}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 2, !"RtLibUseGOT", i32 1}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!6 = !{i8 0, i8 3}
!7 = !{}
!8 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!9 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!10 = !{i8 0, i8 2}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{i64 0, i64 2}
!13 = !{i64 0, i64 -9223372036854775807}
!14 = !{i64 0, i64 -9223372036854775808}
!15 = !{i64 1, i64 536870913}
!16 = !{i64 -1, i64 -9223372036854775808}
!17 = !{i16 0, i16 3}
!18 = !{i32 -1, i32 13}
!19 = !{i16 0, i16 2}
!20 = !{i64 8}
!21 = !{i32 0, i32 3}
!22 = !{i8 0, i8 10}
!23 = !{i8 0, i8 4}
!24 = !{i32 0, i32 13}
!25 = !{i8 0, i8 12}
!26 = !{i64 0, i64 -9223372036854775781}
!27 = !{i64 0, i64 3}
!28 = !{i64 1, i64 0}
!29 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!30 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000}
!31 = !{i64 4}
!32 = !{i8 0, i8 6}
!33 = !{i8 -1, i8 3}
!34 = !{i64 -2, i64 -9223372036854775808}
!35 = !{i64 -3, i64 -9223372036854775808}
!36 = !{i64 -4, i64 7}
!37 = distinct !{!37, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderECsieOd0lErO6i_16autonatv2_client"}
!38 = distinct !{!38, !37, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderECsieOd0lErO6i_16autonatv2_client: argument 0"}
!39 = distinct !{!39, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime11TokioHandleECsieOd0lErO6i_16autonatv2_client"}
!40 = distinct !{!40, !39, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime11TokioHandleECsieOd0lErO6i_16autonatv2_client: argument 0"}
!41 = distinct !{!41, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtNtCsc13h7DQFCSE_5tokio4task8join_set7JoinSetuEEEECsieOd0lErO6i_16autonatv2_client"}
!42 = distinct !{!42, !41, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtNtCsc13h7DQFCSE_5tokio4task8join_set7JoinSetuEEEECsieOd0lErO6i_16autonatv2_client: argument 0"}
!43 = distinct !{!43, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtNtCsc13h7DQFCSE_5tokio4task8join_set7JoinSetuEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsieOd0lErO6i_16autonatv2_client"}
!44 = distinct !{!44, !43, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtNtCsc13h7DQFCSE_5tokio4task8join_set7JoinSetuEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsieOd0lErO6i_16autonatv2_client: argument 0"}
!45 = distinct !{!45, !"_RINvXs6_NtNtCshhqnaxk4GqT_4rand5distr7uniformINtNtNtCskKLDkoKarTP_4core3ops5range5RangeyEINtB6_11SampleRangeyE13sample_singleNtNtNtBa_4rngs6thread9ThreadRngECsieOd0lErO6i_16autonatv2_client"}
!46 = distinct !{!46, !45, !"_RINvXs6_NtNtCshhqnaxk4GqT_4rand5distr7uniformINtNtNtCskKLDkoKarTP_4core3ops5range5RangeyEINtB6_11SampleRangeyE13sample_singleNtNtNtBa_4rngs6thread9ThreadRngECsieOd0lErO6i_16autonatv2_client: argument 0"}
!47 = distinct !{!47, !"_RINvXsw_NtNtNtCshhqnaxk4GqT_4rand5distr7uniform3intINtB6_10UniformIntyENtB8_14UniformSampler13sample_singleNtNtNtBc_4rngs6thread9ThreadRngyyECsieOd0lErO6i_16autonatv2_client"}
!48 = distinct !{!48, !47, !"_RINvXsw_NtNtNtCshhqnaxk4GqT_4rand5distr7uniform3intINtB6_10UniformIntyENtB8_14UniformSampler13sample_singleNtNtNtBc_4rngs6thread9ThreadRngyyECsieOd0lErO6i_16autonatv2_client: argument 0"}
!49 = distinct !{!49, !"_RINvXsw_NtNtNtCshhqnaxk4GqT_4rand5distr7uniform3intINtB6_10UniformIntyENtB8_14UniformSampler23sample_single_inclusiveNtNtNtBc_4rngs6thread9ThreadRngyyECsieOd0lErO6i_16autonatv2_client"}
!50 = distinct !{!50, !49, !"_RINvXsw_NtNtNtCshhqnaxk4GqT_4rand5distr7uniform3intINtB6_10UniformIntyENtB8_14UniformSampler23sample_single_inclusiveNtNtNtBc_4rngs6thread9ThreadRngyyECsieOd0lErO6i_16autonatv2_client: argument 0"}
!51 = distinct !{!51, !"_RNvMs2_NtCsenQHu2qVDfv_9rand_core5blockINtB5_8BlockRngNtNtNtCshhqnaxk4GqT_4rand4rngs6thread13ReseedingCoreE17next_u64_from_u32CsieOd0lErO6i_16autonatv2_client"}
!52 = distinct !{!52, !51, !"_RNvMs2_NtCsenQHu2qVDfv_9rand_core5blockINtB5_8BlockRngNtNtNtCshhqnaxk4GqT_4rand4rngs6thread13ReseedingCoreE17next_u64_from_u32CsieOd0lErO6i_16autonatv2_client: argument 0"}
!53 = distinct !{!53, !"_RNvXs3_NtNtCshhqnaxk4GqT_4rand4rngs6threadNtB5_9ThreadRngNtCsenQHu2qVDfv_9rand_core6TryRng12try_next_u64"}
!54 = distinct !{!54, !53, !"_RNvXs3_NtNtCshhqnaxk4GqT_4rand4rngs6threadNtB5_9ThreadRngNtCsenQHu2qVDfv_9rand_core6TryRng12try_next_u64: argument 0"}
!55 = distinct !{!55, !"_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate"}
!56 = distinct !{!56, !55, !"_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate: argument 0"}
!57 = distinct !{!57, !55, !"_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate: argument 1"}
!58 = distinct !{!58, !"_RNvMs2_NtCsenQHu2qVDfv_9rand_core5blockINtB5_8BlockRngNtNtNtCshhqnaxk4GqT_4rand4rngs6thread13ReseedingCoreE17next_u64_from_u32CsieOd0lErO6i_16autonatv2_client"}
!59 = distinct !{!59, !58, !"_RNvMs2_NtCsenQHu2qVDfv_9rand_core5blockINtB5_8BlockRngNtNtNtCshhqnaxk4GqT_4rand4rngs6thread13ReseedingCoreE17next_u64_from_u32CsieOd0lErO6i_16autonatv2_client: argument 0"}
!60 = distinct !{!60, !"_RNvXs3_NtNtCshhqnaxk4GqT_4rand4rngs6threadNtB5_9ThreadRngNtCsenQHu2qVDfv_9rand_core6TryRng12try_next_u64"}
!61 = distinct !{!61, !60, !"_RNvXs3_NtNtCshhqnaxk4GqT_4rand4rngs6threadNtB5_9ThreadRngNtCsenQHu2qVDfv_9rand_core6TryRng12try_next_u64: argument 0"}
!62 = distinct !{!62, !"_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate"}
!63 = distinct !{!63, !62, !"_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate: argument 0"}
!64 = distinct !{!64, !62, !"_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate: argument 1"}
!65 = distinct !{!65, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngECsieOd0lErO6i_16autonatv2_client"}
!66 = distinct !{!66, !65, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngECsieOd0lErO6i_16autonatv2_client: argument 0"}
!67 = distinct !{!67, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcINtNtB4_4cell10UnsafeCellINtNtCsenQHu2qVDfv_9rand_core5block8BlockRngNtNtNtCshhqnaxk4GqT_4rand4rngs6thread13ReseedingCoreEEEECsieOd0lErO6i_16autonatv2_client"}
!68 = distinct !{!68, !67, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcINtNtB4_4cell10UnsafeCellINtNtCsenQHu2qVDfv_9rand_core5block8BlockRngNtNtNtCshhqnaxk4GqT_4rand4rngs6thread13ReseedingCoreEEEECsieOd0lErO6i_16autonatv2_client: argument 0"}
!69 = distinct !{!69, !"_RNvXsw_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCskKLDkoKarTP_4core4cell10UnsafeCellINtNtCsenQHu2qVDfv_9rand_core5block8BlockRngNtNtNtCshhqnaxk4GqT_4rand4rngs6thread13ReseedingCoreEEENtNtNtBI_3ops4drop4Drop4dropCsieOd0lErO6i_16autonatv2_client"}
!70 = distinct !{!70, !69, !"_RNvXsw_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCskKLDkoKarTP_4core4cell10UnsafeCellINtNtCsenQHu2qVDfv_9rand_core5block8BlockRngNtNtNtCshhqnaxk4GqT_4rand4rngs6thread13ReseedingCoreEEENtNtNtBI_3ops4drop4Drop4dropCsieOd0lErO6i_16autonatv2_client: argument 0"}
!71 = distinct !{!71, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngECsieOd0lErO6i_16autonatv2_client"}
!72 = distinct !{!72, !71, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngECsieOd0lErO6i_16autonatv2_client: argument 0"}
!73 = distinct !{!73, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcINtNtB4_4cell10UnsafeCellINtNtCsenQHu2qVDfv_9rand_core5block8BlockRngNtNtNtCshhqnaxk4GqT_4rand4rngs6thread13ReseedingCoreEEEECsieOd0lErO6i_16autonatv2_client"}
!74 = distinct !{!74, !73, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcINtNtB4_4cell10UnsafeCellINtNtCsenQHu2qVDfv_9rand_core5block8BlockRngNtNtNtCshhqnaxk4GqT_4rand4rngs6thread13ReseedingCoreEEEECsieOd0lErO6i_16autonatv2_client: argument 0"}
!75 = distinct !{!75, !"_RNvXsw_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCskKLDkoKarTP_4core4cell10UnsafeCellINtNtCsenQHu2qVDfv_9rand_core5block8BlockRngNtNtNtCshhqnaxk4GqT_4rand4rngs6thread13ReseedingCoreEEENtNtNtBI_3ops4drop4Drop4dropCsieOd0lErO6i_16autonatv2_client"}
!76 = distinct !{!76, !75, !"_RNvXsw_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCskKLDkoKarTP_4core4cell10UnsafeCellINtNtCsenQHu2qVDfv_9rand_core5block8BlockRngNtNtNtCshhqnaxk4GqT_4rand4rngs6thread13ReseedingCoreEEENtNtNtBI_3ops4drop4Drop4dropCsieOd0lErO6i_16autonatv2_client: argument 0"}
!77 = distinct !{!77, !"_RINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE11sort_by_keybNCINvMBz_INtBz_10NameServerB1B_E3newATNtNtB1H_4xfer8ProtocolINtNtB3K_12dns_exchange11DnsExchangeB1B_EEj0_Es_0ECsieOd0lErO6i_16autonatv2_client"}
!78 = distinct !{!78, !77, !"_RINvMNtCsexYYUdYSQU6_5alloc5sliceSINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE11sort_by_keybNCINvMBz_INtBz_10NameServerB1B_E3newATNtNtB1H_4xfer8ProtocolINtNtB3K_12dns_exchange11DnsExchangeB1B_EEj0_Es_0ECsieOd0lErO6i_16autonatv2_client: argument 0"}
!79 = distinct !{!79, !"_RINvNtCsexYYUdYSQU6_5alloc5slice11stable_sortINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMB2_SBH_11sort_by_keybNCINvMBK_INtBK_10NameServerB1M_E3newATNtNtB1S_4xfer8ProtocolINtNtB48_12dns_exchange11DnsExchangeB1M_EEj0_Es_0E0ECsieOd0lErO6i_16autonatv2_client"}
!80 = distinct !{!80, !79, !"_RINvNtCsexYYUdYSQU6_5alloc5slice11stable_sortINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMB2_SBH_11sort_by_keybNCINvMBK_INtBK_10NameServerB1M_E3newATNtNtB1S_4xfer8ProtocolINtNtB48_12dns_exchange11DnsExchangeB1M_EEj0_Es_0E0ECsieOd0lErO6i_16autonatv2_client: argument 1"}
!81 = distinct !{!81, !79, !"_RINvNtCsexYYUdYSQU6_5alloc5slice11stable_sortINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMB2_SBH_11sort_by_keybNCINvMBK_INtBK_10NameServerB1M_E3newATNtNtB1S_4xfer8ProtocolINtNtB48_12dns_exchange11DnsExchangeB1M_EEj0_Es_0E0ECsieOd0lErO6i_16autonatv2_client: argument 0"}
!82 = !{!44, !42, !40, !38}
!83 = !{!50, !48, !46}
!84 = !{!52}
!85 = !{!54, !50, !48, !46}
!86 = !{!56, !52}
!87 = !{!57, !54, !50, !48, !46}
!88 = !{!59}
!89 = !{!61, !50, !48, !46}
!90 = !{!63, !59}
!91 = !{!64, !61, !50, !48, !46}
!92 = !{!66}
!93 = !{!68}
!94 = !{!70}
!95 = !{!70, !68, !66}
!96 = !{!72}
!97 = !{!74}
!98 = !{!76}
!99 = !{!76, !74, !72}
!100 = !{!78}
!101 = !{!81, !80, !78}
!102 = distinct !{!102, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderECsieOd0lErO6i_16autonatv2_client"}
!103 = distinct !{!103, !102, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderECsieOd0lErO6i_16autonatv2_client: argument 0"}
!104 = distinct !{!104, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime11TokioHandleECsieOd0lErO6i_16autonatv2_client"}
!105 = distinct !{!105, !104, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime11TokioHandleECsieOd0lErO6i_16autonatv2_client: argument 0"}
!106 = distinct !{!106, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtNtCsc13h7DQFCSE_5tokio4task8join_set7JoinSetuEEEECsieOd0lErO6i_16autonatv2_client"}
!107 = distinct !{!107, !106, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtNtCsc13h7DQFCSE_5tokio4task8join_set7JoinSetuEEEECsieOd0lErO6i_16autonatv2_client: argument 0"}
!108 = distinct !{!108, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtNtCsc13h7DQFCSE_5tokio4task8join_set7JoinSetuEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsieOd0lErO6i_16autonatv2_client"}
!109 = distinct !{!109, !108, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtNtCsc13h7DQFCSE_5tokio4task8join_set7JoinSetuEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsieOd0lErO6i_16autonatv2_client: argument 0"}
!110 = !{!109, !107, !105, !103}
!111 = distinct !{!111, !"_RNvXs2_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut9chunk_mut"}
!112 = distinct !{!112, !111, !"_RNvXs2_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut9chunk_mut: argument 0"}
!113 = distinct !{!113, !"_RNvXs2_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut11advance_mut"}
!114 = distinct !{!114, !113, !"_RNvXs2_NtCs1eA6bChxBZF_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut11advance_mut: argument 0"}
!115 = !{!112}
!116 = !{!114}
!117 = distinct !{!117, !"_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtCsa9Jrx9KOzzM_16hickory_resolver6config16ConnectionConfigENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1P_8adapters3map12map_try_foldRBJ_NtNtCs4LZN9PPmi2I_11hickory_net4xfer8ProtocoluINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMNtBN_11name_serverINtB4M_10NameServerNtNtNtB3k_7runtime13tokio_runtime20TokioRuntimeProviderE9protocols0NCINvNvB1J_3any5checkB3g_NCINvMs6_B4M_NtB4M_16ConnectionPolicy13allows_serverB5n_E0E0E0B40_ECsieOd0lErO6i_16autonatv2_client"}
!118 = distinct !{!118, !117, !"_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtCsa9Jrx9KOzzM_16hickory_resolver6config16ConnectionConfigENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1P_8adapters3map12map_try_foldRBJ_NtNtCs4LZN9PPmi2I_11hickory_net4xfer8ProtocoluINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMNtBN_11name_serverINtB4M_10NameServerNtNtNtB3k_7runtime13tokio_runtime20TokioRuntimeProviderE9protocols0NCINvNvB1J_3any5checkB3g_NCINvMs6_B4M_NtB4M_16ConnectionPolicy13allows_serverB5n_E0E0E0B40_ECsieOd0lErO6i_16autonatv2_client: argument 1"}
!119 = distinct !{!119, !117, !"_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtCsa9Jrx9KOzzM_16hickory_resolver6config16ConnectionConfigENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1P_8adapters3map12map_try_foldRBJ_NtNtCs4LZN9PPmi2I_11hickory_net4xfer8ProtocoluINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMNtBN_11name_serverINtB4M_10NameServerNtNtNtB3k_7runtime13tokio_runtime20TokioRuntimeProviderE9protocols0NCINvNvB1J_3any5checkB3g_NCINvMs6_B4M_NtB4M_16ConnectionPolicy13allows_serverB5n_E0E0E0B40_ECsieOd0lErO6i_16autonatv2_client: argument 0"}
!120 = !{!118}
!121 = !{!119}
!122 = !{!119, !118}
!123 = distinct !{!123, !"_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter6FilterINtNtNtBc_5slice4iter4IterINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEENCINvMs6_B1q_NtB1q_16ConnectionPolicy17select_connectionB2s_E0ENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB4L_6min_by4foldRB1n_NCB3M_s_0E0ECsieOd0lErO6i_16autonatv2_client"}
!124 = distinct !{!124, !123, !"_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter6FilterINtNtNtBc_5slice4iter4IterINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEENCINvMs6_B1q_NtB1q_16ConnectionPolicy17select_connectionB2s_E0ENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB4L_6min_by4foldRB1n_NCB3M_s_0E0ECsieOd0lErO6i_16autonatv2_client: argument 0"}
!125 = distinct !{!125, !"_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEENCINvMs6_B1v_NtB1v_16ConnectionPolicy17select_connectionB2x_E0ENtNtNtB9_6traits8iterator8Iterator4nextCsieOd0lErO6i_16autonatv2_client"}
!126 = distinct !{!126, !125, !"_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEENCINvMs6_B1v_NtB1v_16ConnectionPolicy17select_connectionB2x_E0ENtNtNtB9_6traits8iterator8Iterator4nextCsieOd0lErO6i_16autonatv2_client: argument 0"}
!127 = distinct !{!127, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCINvMs6_BT_NtBT_16ConnectionPolicy17select_connectionB1V_E0ECsieOd0lErO6i_16autonatv2_client"}
!128 = distinct !{!128, !127, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCINvMs6_BT_NtBT_16ConnectionPolicy17select_connectionB1V_E0ECsieOd0lErO6i_16autonatv2_client: argument 1"}
!129 = distinct !{!129, !127, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCINvMs6_BT_NtBT_16ConnectionPolicy17select_connectionB1V_E0ECsieOd0lErO6i_16autonatv2_client: argument 0"}
!130 = distinct !{!130, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter11filter_foldRINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEB11_NCINvMs6_B15_NtB15_16ConnectionPolicy17select_connectionB27_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldB11_NCB3u_s_0E0E0CsieOd0lErO6i_16autonatv2_client"}
!131 = distinct !{!131, !130, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter11filter_foldRINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEB11_NCINvMs6_B15_NtB15_16ConnectionPolicy17select_connectionB27_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldB11_NCB3u_s_0E0E0CsieOd0lErO6i_16autonatv2_client: argument 0"}
!132 = distinct !{!132, !130, !"_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter11filter_foldRINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEB11_NCINvMs6_B15_NtB15_16ConnectionPolicy17select_connectionB27_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldB11_NCB3u_s_0E0E0CsieOd0lErO6i_16autonatv2_client: argument 1"}
!133 = distinct !{!133, !"_RINvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB6_6FilterINtNtNtBc_5slice4iter4IterINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEENCINvMs6_B1w_NtB1w_16ConnectionPolicy17select_connectionB2y_E0ENtNtNtBa_6traits8iterator8Iterator4foldRB1t_NCINvNvB4R_6min_by4foldB5u_NCB3S_s_0E0ECsieOd0lErO6i_16autonatv2_client"}
!134 = distinct !{!134, !133, !"_RINvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB6_6FilterINtNtNtBc_5slice4iter4IterINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEENCINvMs6_B1w_NtB1w_16ConnectionPolicy17select_connectionB2y_E0ENtNtNtBa_6traits8iterator8Iterator4foldRB1t_NCINvNvB4R_6min_by4foldB5u_NCB3S_s_0E0ECsieOd0lErO6i_16autonatv2_client: argument 1"}
!135 = distinct !{!135, !133, !"_RINvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB6_6FilterINtNtNtBc_5slice4iter4IterINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEENCINvMs6_B1w_NtB1w_16ConnectionPolicy17select_connectionB2y_E0ENtNtNtBa_6traits8iterator8Iterator4foldRB1t_NCINvNvB4R_6min_by4foldB5u_NCB3S_s_0E0ECsieOd0lErO6i_16autonatv2_client: argument 0"}
!136 = distinct !{!136, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldRBQ_NCINvNtNtB3j_8adapters6filter11filter_foldB3X_B3X_NCINvMs6_BT_NtBT_16ConnectionPolicy17select_connectionB1V_E0NCINvNvB3d_6min_by4foldB3X_NCB4R_s_0E0E0ECsieOd0lErO6i_16autonatv2_client"}
!137 = distinct !{!137, !136, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldRBQ_NCINvNtNtB3j_8adapters6filter11filter_foldB3X_B3X_NCINvMs6_BT_NtBT_16ConnectionPolicy17select_connectionB1V_E0NCINvNvB3d_6min_by4foldB3X_NCB4R_s_0E0E0ECsieOd0lErO6i_16autonatv2_client: argument 0"}
!138 = distinct !{!138, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator6min_by4foldRINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMs6_B1h_NtB1h_16ConnectionPolicy17select_connectionB2j_Es_0E0CsieOd0lErO6i_16autonatv2_client"}
!139 = distinct !{!139, !138, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator6min_by4foldRINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMs6_B1h_NtB1h_16ConnectionPolicy17select_connectionB2j_Es_0E0CsieOd0lErO6i_16autonatv2_client: argument 0"}
!140 = distinct !{!140, !138, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator6min_by4foldRINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderENCINvMs6_B1h_NtB1h_16ConnectionPolicy17select_connectionB2j_Es_0E0CsieOd0lErO6i_16autonatv2_client: argument 1"}
!141 = distinct !{!141, !"_RINvNtCskKLDkoKarTP_4core3cmp6min_byRINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEQNCINvMs6_BC_NtBC_16ConnectionPolicy17select_connectionB1E_Es_0ECsieOd0lErO6i_16autonatv2_client"}
!142 = distinct !{!142, !141, !"_RINvNtCskKLDkoKarTP_4core3cmp6min_byRINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEQNCINvMs6_BC_NtBC_16ConnectionPolicy17select_connectionB1E_Es_0ECsieOd0lErO6i_16autonatv2_client: argument 0"}
!143 = distinct !{!143, !141, !"_RINvNtCskKLDkoKarTP_4core3cmp6min_byRINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server15ConnectionStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEQNCINvMs6_BC_NtBC_16ConnectionPolicy17select_connectionB1E_Es_0ECsieOd0lErO6i_16autonatv2_client: argument 1"}
!144 = !{!129, !128, !126, !124}
!145 = !{!131}
!146 = !{!132}
!147 = !{!131, !137, !135, !134, !124}
!148 = !{!139}
!149 = !{!140}
!150 = !{!142}
end_hunk_3
