Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_server.libp2p_server.1e58dff6c8062fcd-cgu.09?download=true
inline.NumInlined: 3040
inline.NumDeleted: 1316
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvXsc_NtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unorderedINtB6_16FuturesUnorderedNCNCNCNvMs0_NtCsa9Jrx9KOzzM_16hickory_resolver16name_server_poolINtB1C_9PoolStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE8try_send0s_00EINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorB1q_E9from_iterINtNtNtB4m_8adapters3map3MapINtCsczYENlYh6wI_8smallvec8IntoIterAINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtB1E_11name_server10NameServerB2J_EEj2_ENCB1u_s_0EECs2Bxje7pdMIr_13libp2p_server:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !noalias !2874
  unreachable

bb.h:                                             ; preds = %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered4task4TaskNCNCNCNvMs0_NtCsa9Jrx9KOzzM_16hickory_resolver16name_server_poolINtB2n_9PoolStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE8try_send0s_00EEE3newCs2Bxje7pdMIr_13libp2p_server.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.n, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false), !noalias !2874
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2874
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.n, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 8
  call void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtCsczYENlYh6wI_8smallvec8IntoIterAINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_ENCNCNvMs0_NtB2a_16name_server_poolINtB4B_9PoolStateB35_E8try_send0s_0ENtNtNtBa_6traits8iterator8Iterator4foldINtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered16FuturesUnorderedNCNCB4t_s_00ENCINvXsc_B6f_B6c_INtNtB5D_7collect12FromIteratorB7t_E9from_iterBN_E0ECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.i:                                             ; preds = %bb.k
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.j:                                             ; preds = %bb.k
  resume { ptr, i32 } %eh.lpad-body

bb.k:                                             ; preds = %bb.c, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.p, %bb.f ], [ %i.h, %bb.c ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtCsczYENlYh6wI_8smallvec8IntoIterAINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEj2_ENCNCNvMs0_NtB2m_16name_server_poolINtB4N_9PoolStateB3h_E8try_send0s_0EECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(72) %1) #31
          to label %bb.j unwind label %bb.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef nonnull ptr @_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt11sample_iterhNtNtB9_5distr15StandardUniformECs2Bxje7pdMIr_13libp2p_server(ptr nofree noundef nonnull readnone returned captures(ret: address, provenance) %0) unnamed_addr #1 {
bb.a:
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i16 @_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangetINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivetEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i48 %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.e = load i32, ptr %i.d, align 4, !alias.scope !2901, !noalias !2902, !noundef !13 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 63
  br i1 %i.f, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val10, i64 272 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val10, i64 320
  %i.i = load i64, ptr %i.h, align 4, !alias.scope !2903, !noalias !2904
  %i.j = icmp ugt i64 %i.i, 1023
  br i1 %i.j, label %bb.e, label %.thread.i.i.i.i.i.i, !prof !12

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvMs_NtNtCshhqnaxk4GqT_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.g) #33, !noalias !2904
  br label %.thread.i.i.i.i.i.i

.thread.i.i.i.i.i.i:                              ; preds = %bb.e, %bb.d
  tail call void @_RNvXs_NtCs1aYz1mjYrQZ_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core5block9Generator8generateCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.g, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.d), !noalias !2902
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomtECs2Bxje7pdMIr_13libp2p_server.exit.i.i

bb.f:                                             ; preds = %bb.c
  %i.k = zext nneg i32 %i.e to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.k
  %i.m = add nuw nsw i32 %i.e, 1
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomtECs2Bxje7pdMIr_13libp2p_server.exit.i.i

_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomtECs2Bxje7pdMIr_13libp2p_server.exit.i.i: ; preds = %bb.f, %.thread.i.i.i.i.i.i
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i.i = phi i32 [ 1, %.thread.i.i.i.i.i.i ], [ %i.m, %bb.f ]
  %.in.i.i.i.i.i.i = phi ptr [ %i.d, %.thread.i.i.i.i.i.i ], [ %i.l, %bb.f ]
  %i.n = load i32, ptr %.in.i.i.i.i.i.i, align 4, !alias.scope !2901, !noalias !2902, !noundef !13
  store i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i.i, ptr %i.d, align 4, !alias.scope !2901, !noalias !2902
  %i.o = trunc i32 %i.n to i16
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResulttNtNtNtCshhqnaxk4GqT_4rand5distr7uniform5ErrorE6unwrapCs2Bxje7pdMIr_13libp2p_server.exit

bb.g:                                             ; preds = %bb.b
  %i.p = zext i16 %i.b to i32
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10) ]
  %i.q = getelementptr inbounds nuw i8, ptr %.val10, i64 16 ; 9 uses
  %i.r = load i32, ptr %i.q, align 4, !alias.scope !2905, !noalias !2906, !noundef !13 ; 3 uses
  %i.s = icmp ugt i32 %i.r, 63
  br i1 %i.s, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %.val10, i64 272 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val10, i64 320
  %i.v = load i64, ptr %i.u, align 4, !alias.scope !2907, !noalias !2908
  %i.w = icmp ugt i64 %i.v, 1023
  br i1 %i.w, label %bb.i, label %.thread.i.i.i.i13.i.i, !prof !12

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvMs_NtNtCshhqnaxk4GqT_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.t) #33, !noalias !2908
  br label %.thread.i.i.i.i13.i.i

.thread.i.i.i.i13.i.i:                            ; preds = %bb.i, %bb.h
  tail call void @_RNvXs_NtCs1aYz1mjYrQZ_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core5block9Generator8generateCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.t, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.q), !noalias !2906
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs2Bxje7pdMIr_13libp2p_server.exit.i.i

bb.j:                                             ; preds = %bb.g
  %i.x = zext nneg i32 %i.r to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.x
  %i.z = add nuw nsw i32 %i.r, 1
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs2Bxje7pdMIr_13libp2p_server.exit.i.i

_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs2Bxje7pdMIr_13libp2p_server.exit.i.i: ; preds = %bb.j, %.thread.i.i.i.i13.i.i
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i11.i.i = phi i32 [ 1, %.thread.i.i.i.i13.i.i ], [ %i.z, %bb.j ] ; 4 uses
  %.in.i.i.i.i12.i.i = phi ptr [ %i.q, %.thread.i.i.i.i13.i.i ], [ %i.y, %bb.j ]
  %i.aa = load i32, ptr %.in.i.i.i.i12.i.i, align 4, !alias.scope !2905, !noalias !2906, !noundef !13
  store i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i11.i.i, ptr %i.q, align 4, !alias.scope !2905, !noalias !2906
  %i.ab = zext i32 %i.aa to i64
  %i.ac = zext i16 %i.b to i64                    ; 2 uses
  %i.ad = mul nuw nsw i64 %i.ab, %i.ac            ; 2 uses
  %i.ae = lshr i64 %i.ad, 32
  %i.af = trunc nuw i64 %i.ae to i16              ; 2 uses
  %i.ag = trunc i64 %i.ad to i32                  ; 2 uses
  %i.ah = sub nsw i32 0, %i.p
  %i.ai = icmp ugt i32 %i.ag, %i.ah
  br i1 %i.ai, label %bb.k, label %bb.o

bb.k:                                             ; preds = %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs2Bxje7pdMIr_13libp2p_server.exit.i.i
  %i.aj = icmp samesign ugt i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i11.i.i, 63
  br i1 %i.aj, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %.val10, i64 272 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val10, i64 320
  %i.am = load i64, ptr %i.al, align 4, !alias.scope !2909, !noalias !2910
  %i.an = icmp ugt i64 %i.am, 1023
  br i1 %i.an, label %bb.m, label %.thread.i.i.i.i16.i.i, !prof !12

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvMs_NtNtCshhqnaxk4GqT_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.ak) #33, !noalias !2910
  br label %.thread.i.i.i.i16.i.i

.thread.i.i.i.i16.i.i:                            ; preds = %bb.m, %bb.l
  tail call void @_RNvXs_NtCs1aYz1mjYrQZ_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core5block9Generator8generateCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.ak, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.q), !noalias !2911
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs2Bxje7pdMIr_13libp2p_server.exit17.i.i

bb.n:                                             ; preds = %bb.k
  %i.ao = zext nneg i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i11.i.i to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ao
  %i.aq = add nuw nsw i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i11.i.i, 1
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs2Bxje7pdMIr_13libp2p_server.exit17.i.i

_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs2Bxje7pdMIr_13libp2p_server.exit17.i.i: ; preds = %bb.n, %.thread.i.i.i.i16.i.i
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i14.i.i = phi i32 [ 1, %.thread.i.i.i.i16.i.i ], [ %i.aq, %bb.n ]
  %.in.i.i.i.i15.i.i = phi ptr [ %i.q, %.thread.i.i.i.i16.i.i ], [ %i.ap, %bb.n ]
  %i.ar = load i32, ptr %.in.i.i.i.i15.i.i, align 4, !alias.scope !2912, !noalias !2911, !noundef !13
  store i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i14.i.i, ptr %i.q, align 4, !alias.scope !2912, !noalias !2911
  %i.as = zext i32 %i.ar to i64
  %i.at = mul nuw nsw i64 %i.as, %i.ac
  %i.au = lshr i64 %i.at, 32
  %i.av = trunc nuw nsw i64 %i.au to i32
  %i.aw = xor i32 %i.ag, -1
  %.not8.i.i = icmp samesign ult i32 %i.aw, %i.av
  %i.ax = zext i1 %.not8.i.i to i16
  %i.ay = add nuw i16 %i.ax, %i.af
  br label %bb.o

bb.o:                                             ; preds = %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs2Bxje7pdMIr_13libp2p_server.exit17.i.i, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs2Bxje7pdMIr_13libp2p_server.exit.i.i
  %.sroa.03.0.i.i = phi i16 [ %i.ay, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs2Bxje7pdMIr_13libp2p_server.exit17.i.i ], [ %i.af, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs2Bxje7pdMIr_13libp2p_server.exit.i.i ]
  %i.az = add i16 %.sroa.03.0.i.i, %.sroa.0.0.extract.trunc
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResulttNtNtNtCshhqnaxk4GqT_4rand5distr7uniform5ErrorE6unwrapCs2Bxje7pdMIr_13libp2p_server.exit

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResulttNtNtNtCshhqnaxk4GqT_4rand5distr7uniform5ErrorE6unwrapCs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %bb.o, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomtECs2Bxje7pdMIr_13libp2p_server.exit.i.i
  %.sroa.5.0.i.i = phi i16 [ %i.o, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomtECs2Bxje7pdMIr_13libp2p_server.exit.i.i ], [ %i.az, %bb.o ]
  ret i16 %.sroa.5.0.i.i

bb.p:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @44, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #34
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangeyINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusiveyEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i64, ptr %1, align 8, !alias.scope !2943, !noalias !2944, !noundef !13 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !alias.scope !2944, !noalias !2943, !noundef !13 ; 2 uses
  %.not.i = icmp ugt i64 %.val, %.val1
  br i1 %.not.i, label %bb.s, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %.val4 = load ptr, ptr %0, align 8, !nonnull !13, !noundef !13 ; 13 uses
  %i.b = sub nuw i64 %.val1, %.val                ; 2 uses
  %i.c = add i64 %i.b, 1                          ; 3 uses
  %i.d = icmp eq i64 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %.val4, i64 16 ; 13 uses
  %i.f = load i32, ptr %i.e, align 4, !noalias !2945, !noundef !13 ; 7 uses
  %i.g = icmp ult i32 %i.f, 63                    ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  br i1 %i.g, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.val4, i64 268
  %i.i = load i32, ptr %i.h, align 4, !alias.scope !2946, !noalias !2947, !noundef !13
  %i.j = getelementptr inbounds nuw i8, ptr %.val4, i64 272 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val4, i64 320
  %i.l = load i64, ptr %i.k, align 4, !alias.scope !2948, !noalias !2949
  %i.m = icmp ugt i64 %i.l, 1023
  br i1 %i.m, label %bb.e, label %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i, !prof !12

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvMs_NtNtCshhqnaxk4GqT_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.j) #33, !noalias !2949
  br label %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i

_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i: ; preds = %bb.e, %bb.d
  tail call void @_RNvXs_NtCs1aYz1mjYrQZ_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core5block9Generator8generateCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.j, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.e), !noalias !2947
  %i.n = load i32, ptr %i.e, align 4, !alias.scope !2946, !noalias !2947, !noundef !13 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.f, 63
  br i1 %.not.i.i.i.i.i.i, label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs2Bxje7pdMIr_13libp2p_server.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.val4, i64 20
  %i.p = load i32, ptr %i.o, align 4, !alias.scope !2946, !noalias !2947, !noundef !13
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs2Bxje7pdMIr_13libp2p_server.exit.i.i

bb.g:                                             ; preds = %bb.c
  %i.q = zext nneg i32 %i.f to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !alias.scope !2946, !noalias !2947, !noundef !13
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.u = load i32, ptr %i.t, align 4, !alias.scope !2946, !noalias !2947, !noundef !13
  %i.v = add nuw nsw i32 %i.f, 2
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs2Bxje7pdMIr_13libp2p_server.exit.i.i

_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs2Bxje7pdMIr_13libp2p_server.exit.i.i: ; preds = %bb.g, %bb.f, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i
  %.sroa.0.018.i.i.i.i.i.i = phi i32 [ %i.v, %bb.g ], [ 1, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i ], [ 2, %bb.f ]
  %.sroa.02.017.i.i.i.i.i.i = phi i32 [ %i.s, %bb.g ], [ %i.i, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i ], [ %i.n, %bb.f ]
  %.sroa.03.016.i.i.i.i.i.i = phi i32 [ %i.u, %bb.g ], [ %i.n, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i ], [ %i.p, %bb.f ]
  store i32 %.sroa.0.018.i.i.i.i.i.i, ptr %i.e, align 4, !alias.scope !2946, !noalias !2947
  %i.w = zext i32 %.sroa.03.016.i.i.i.i.i.i to i64
  %i.x = shl nuw i64 %i.w, 32
  %i.y = zext i32 %.sroa.02.017.i.i.i.i.i.i to i64
  %i.z = or disjoint i64 %i.x, %i.y
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultyNtNtNtCshhqnaxk4GqT_4rand5distr7uniform5ErrorE6unwrapCs2Bxje7pdMIr_13libp2p_server.exit

bb.h:                                             ; preds = %bb.b
  br i1 %i.g, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %.val4, i64 268
  %i.ab = load i32, ptr %i.aa, align 4, !alias.scope !2950, !noalias !2951, !noundef !13
  %i.ac = getelementptr inbounds nuw i8, ptr %.val4, i64 272 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val4, i64 320
  %i.ae = load i64, ptr %i.ad, align 4, !alias.scope !2952, !noalias !2953
  %i.af = icmp ugt i64 %i.ae, 1023
  br i1 %i.af, label %bb.j, label %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i, !prof !12

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvMs_NtNtCshhqnaxk4GqT_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.ac) #33, !noalias !2953
  br label %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i

_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i: ; preds = %bb.j, %bb.i
  tail call void @_RNvXs_NtCs1aYz1mjYrQZ_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core5block9Generator8generateCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.ac, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.e), !noalias !2951
  %i.ag = load i32, ptr %i.e, align 4, !alias.scope !2950, !noalias !2951, !noundef !13 ; 2 uses
  %.not.i.i.i.i10.i.i = icmp eq i32 %i.f, 63
  br i1 %.not.i.i.i.i10.i.i, label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs2Bxje7pdMIr_13libp2p_server.exit14.i.i, label %bb.k

bb.k:                                             ; preds = %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.val4, i64 20
  %i.ai = load i32, ptr %i.ah, align 4, !alias.scope !2950, !noalias !2951, !noundef !13
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs2Bxje7pdMIr_13libp2p_server.exit14.i.i

bb.l:                                             ; preds = %bb.h
  %i.aj = zext nneg i32 %i.f to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.aj ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !alias.scope !2950, !noalias !2951, !noundef !13
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.an = load i32, ptr %i.am, align 4, !alias.scope !2950, !noalias !2951, !noundef !13
  %i.ao = add nuw nsw i32 %i.f, 2
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs2Bxje7pdMIr_13libp2p_server.exit14.i.i

_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs2Bxje7pdMIr_13libp2p_server.exit14.i.i: ; preds = %bb.l, %bb.k, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i
  %.sroa.0.018.i.i.i.i11.i.i = phi i32 [ %i.ao, %bb.l ], [ 1, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i ], [ 2, %bb.k ] ; 5 uses
  %.sroa.02.017.i.i.i.i12.i.i = phi i32 [ %i.al, %bb.l ], [ %i.ab, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i ], [ %i.ag, %bb.k ]
  %.sroa.03.016.i.i.i.i13.i.i = phi i32 [ %i.an, %bb.l ], [ %i.ag, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i ], [ %i.ai, %bb.k ]
  store i32 %.sroa.0.018.i.i.i.i11.i.i, ptr %i.e, align 4, !alias.scope !2950, !noalias !2951
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

bb.m:                                             ; preds = %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs2Bxje7pdMIr_13libp2p_server.exit14.i.i
  %i.bb = icmp samesign ult i32 %.sroa.0.018.i.i.i.i11.i.i, 63
  br i1 %i.bb, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %.val4, i64 268
  %i.bd = load i32, ptr %i.bc, align 4, !alias.scope !2954, !noalias !2955, !noundef !13
  %i.be = getelementptr inbounds nuw i8, ptr %.val4, i64 272 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.val4, i64 320
  %i.bg = load i64, ptr %i.bf, align 4, !alias.scope !2956, !noalias !2957
  %i.bh = icmp ugt i64 %i.bg, 1023
  br i1 %i.bh, label %bb.o, label %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i, !prof !12

bb.o:                                             ; preds = %bb.n
  tail call void @_RNvMs_NtNtCshhqnaxk4GqT_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.be) #33, !noalias !2957
  br label %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i

_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i: ; preds = %bb.o, %bb.n
  tail call void @_RNvXs_NtCs1aYz1mjYrQZ_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core5block9Generator8generateCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.be, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.e), !noalias !2955
  %i.bi = load i32, ptr %i.e, align 4, !alias.scope !2954, !noalias !2955, !noundef !13 ; 2 uses
  %.not.i.i.i.i16.i.i = icmp eq i32 %.sroa.0.018.i.i.i.i11.i.i, 63
  br i1 %.not.i.i.i.i16.i.i, label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs2Bxje7pdMIr_13libp2p_server.exit20.i.i, label %bb.p

bb.p:                                             ; preds = %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.val4, i64 20
  %i.bk = load i32, ptr %i.bj, align 4, !alias.scope !2954, !noalias !2955, !noundef !13
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs2Bxje7pdMIr_13libp2p_server.exit20.i.i

bb.q:                                             ; preds = %bb.m
  %i.bl = zext nneg i32 %.sroa.0.018.i.i.i.i11.i.i to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.bl ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !alias.scope !2954, !noalias !2955, !noundef !13
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !alias.scope !2954, !noalias !2955, !noundef !13
  %i.bq = add nuw nsw i32 %.sroa.0.018.i.i.i.i11.i.i, 2
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs2Bxje7pdMIr_13libp2p_server.exit20.i.i

_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs2Bxje7pdMIr_13libp2p_server.exit20.i.i: ; preds = %bb.q, %bb.p, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i
  %.sroa.0.018.i.i.i.i17.i.i = phi i32 [ %i.bq, %bb.q ], [ 1, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i ], [ 2, %bb.p ]
  %.sroa.02.017.i.i.i.i18.i.i = phi i32 [ %i.bn, %bb.q ], [ %i.bd, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i ], [ %i.bi, %bb.p ]
  %.sroa.03.016.i.i.i.i19.i.i = phi i32 [ %i.bp, %bb.q ], [ %i.bi, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i ], [ %i.bk, %bb.p ]
  store i32 %.sroa.0.018.i.i.i.i17.i.i, ptr %i.e, align 4, !alias.scope !2954, !noalias !2955
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

bb.r:                                             ; preds = %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs2Bxje7pdMIr_13libp2p_server.exit20.i.i, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs2Bxje7pdMIr_13libp2p_server.exit14.i.i
  %.sroa.01.0.i.i = phi i64 [ %i.bx, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs2Bxje7pdMIr_13libp2p_server.exit20.i.i ], [ %i.ax, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs2Bxje7pdMIr_13libp2p_server.exit14.i.i ]
  %i.by = add i64 %.sroa.01.0.i.i, %.val
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultyNtNtNtCshhqnaxk4GqT_4rand5distr7uniform5ErrorE6unwrapCs2Bxje7pdMIr_13libp2p_server.exit

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultyNtNtNtCshhqnaxk4GqT_4rand5distr7uniform5ErrorE6unwrapCs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %bb.r, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs2Bxje7pdMIr_13libp2p_server.exit.i.i
  %.sroa.65.0 = phi i64 [ %i.by, %bb.r ], [ %i.z, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs2Bxje7pdMIr_13libp2p_server.exit.i.i ]
  ret i64 %.sroa.65.0

bb.s:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @44, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #34
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangeyINtNtNtCskKLDkoKarTP_4core3ops5range5RangeyEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.not = icmp ult i64 %1, %2
  br i1 %.not, label %bb.b, label %bb.l, !prof !21

bb.b:                                             ; preds = %bb.a
  %.val2 = load ptr, ptr %0, align 8, !nonnull !13, !noundef !13 ; 9 uses
  %i.a = sub nuw i64 %2, %1                       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val2, i64 16 ; 9 uses
  %i.c = load i32, ptr %i.b, align 4, !noalias !2978, !noundef !13 ; 4 uses
  %i.d = icmp ult i32 %i.c, 63
  br i1 %i.d, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val2, i64 268
  %i.f = load i32, ptr %i.e, align 4, !alias.scope !2979, !noalias !2980, !noundef !13
  %i.g = getelementptr inbounds nuw i8, ptr %.val2, i64 272 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val2, i64 320
  %i.i = load i64, ptr %i.h, align 4, !alias.scope !2981, !noalias !2982
  %i.j = icmp ugt i64 %i.i, 1023
  br i1 %i.j, label %bb.d, label %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i, !prof !12

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs_NtNtCshhqnaxk4GqT_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.g) #33, !noalias !2982
  br label %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i

_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i: ; preds = %bb.d, %bb.c
  tail call void @_RNvXs_NtCs1aYz1mjYrQZ_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core5block9Generator8generateCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.g, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.b), !noalias !2980
  %i.k = load i32, ptr %i.b, align 4, !alias.scope !2979, !noalias !2980, !noundef !13 ; 2 uses
  %.not.i.i.i.i10.i.i.i = icmp eq i32 %i.c, 63
  br i1 %.not.i.i.i.i10.i.i.i, label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs2Bxje7pdMIr_13libp2p_server.exit14.i.i.i, label %bb.e

bb.e:                                             ; preds = %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.val2, i64 20
  %i.m = load i32, ptr %i.l, align 4, !alias.scope !2979, !noalias !2980, !noundef !13
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs2Bxje7pdMIr_13libp2p_server.exit14.i.i.i

bb.f:                                             ; preds = %bb.b
  %i.n = zext nneg i32 %i.c to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.n ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !alias.scope !2979, !noalias !2980, !noundef !13
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.r = load i32, ptr %i.q, align 4, !alias.scope !2979, !noalias !2980, !noundef !13
  %i.s = add nuw nsw i32 %i.c, 2
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs2Bxje7pdMIr_13libp2p_server.exit14.i.i.i

_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs2Bxje7pdMIr_13libp2p_server.exit14.i.i.i: ; preds = %bb.f, %bb.e, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i
  %.sroa.0.018.i.i.i.i11.i.i.i = phi i32 [ %i.s, %bb.f ], [ 1, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i ], [ 2, %bb.e ] ; 5 uses
  %.sroa.02.017.i.i.i.i12.i.i.i = phi i32 [ %i.p, %bb.f ], [ %i.f, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i ], [ %i.k, %bb.e ]
  %.sroa.03.016.i.i.i.i13.i.i.i = phi i32 [ %i.r, %bb.f ], [ %i.k, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i ], [ %i.m, %bb.e ]
  store i32 %.sroa.0.018.i.i.i.i11.i.i.i, ptr %i.b, align 4, !alias.scope !2979, !noalias !2980
  %i.t = zext i32 %.sroa.03.016.i.i.i.i13.i.i.i to i64
  %i.u = shl nuw i64 %i.t, 32
  %i.v = zext i32 %.sroa.02.017.i.i.i.i12.i.i.i to i64
  %i.w = or disjoint i64 %i.u, %i.v
  %i.x = zext i64 %i.w to i128
  %i.y = zext i64 %i.a to i128
  %i.z = mul nuw i128 %i.x, %i.y                  ; 2 uses
  %i.aa = lshr i128 %i.z, 64
  %i.ab = trunc nuw i128 %i.aa to i64             ; 2 uses
  %i.ac = trunc i128 %i.z to i64                  ; 2 uses
  %i.ad = sub i64 %1, %2
  %i.ae = icmp ult i64 %i.ad, %i.ac
  br i1 %i.ae, label %bb.g, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultyNtNtNtCshhqnaxk4GqT_4rand5distr7uniform5ErrorE6unwrapCs2Bxje7pdMIr_13libp2p_server.exit

bb.g:                                             ; preds = %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs2Bxje7pdMIr_13libp2p_server.exit14.i.i.i
  %i.af = icmp samesign ult i32 %.sroa.0.018.i.i.i.i11.i.i.i, 63
  br i1 %i.af, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %.val2, i64 268
  %i.ah = load i32, ptr %i.ag, align 4, !alias.scope !2983, !noalias !2984, !noundef !13
  %i.ai = getelementptr inbounds nuw i8, ptr %.val2, i64 272 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val2, i64 320
  %i.ak = load i64, ptr %i.aj, align 4, !alias.scope !2985, !noalias !2986
  %i.al = icmp ugt i64 %i.ak, 1023
  br i1 %i.al, label %bb.i, label %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i, !prof !12

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvMs_NtNtCshhqnaxk4GqT_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.ai) #33, !noalias !2986
  br label %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i

_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i: ; preds = %bb.i, %bb.h
  tail call void @_RNvXs_NtCs1aYz1mjYrQZ_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core5block9Generator8generateCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.ai, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.b), !noalias !2984
  %i.am = load i32, ptr %i.b, align 4, !alias.scope !2983, !noalias !2984, !noundef !13 ; 2 uses
  %.not.i.i.i.i16.i.i.i = icmp eq i32 %.sroa.0.018.i.i.i.i11.i.i.i, 63
  br i1 %.not.i.i.i.i16.i.i.i, label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs2Bxje7pdMIr_13libp2p_server.exit20.i.i.i, label %bb.j

bb.j:                                             ; preds = %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.val2, i64 20
  %i.ao = load i32, ptr %i.an, align 4, !alias.scope !2983, !noalias !2984, !noundef !13
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs2Bxje7pdMIr_13libp2p_server.exit20.i.i.i

bb.k:                                             ; preds = %bb.g
  %i.ap = zext nneg i32 %.sroa.0.018.i.i.i.i11.i.i.i to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ap ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !alias.scope !2983, !noalias !2984, !noundef !13
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.at = load i32, ptr %i.as, align 4, !alias.scope !2983, !noalias !2984, !noundef !13
  %i.au = add nuw nsw i32 %.sroa.0.018.i.i.i.i11.i.i.i, 2
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs2Bxje7pdMIr_13libp2p_server.exit20.i.i.i

_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs2Bxje7pdMIr_13libp2p_server.exit20.i.i.i: ; preds = %bb.k, %bb.j, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i
  %.sroa.0.018.i.i.i.i17.i.i.i = phi i32 [ %i.au, %bb.k ], [ 1, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i ], [ 2, %bb.j ]
  %.sroa.02.017.i.i.i.i18.i.i.i = phi i32 [ %i.ar, %bb.k ], [ %i.ah, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i ], [ %i.am, %bb.j ]
  %.sroa.03.016.i.i.i.i19.i.i.i = phi i32 [ %i.at, %bb.k ], [ %i.am, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i ], [ %i.ao, %bb.j ]
  store i32 %.sroa.0.018.i.i.i.i17.i.i.i, ptr %i.b, align 4, !alias.scope !2983, !noalias !2984
  %i.av = zext i32 %.sroa.03.016.i.i.i.i19.i.i.i to i64
  %i.aw = shl nuw i64 %i.av, 32
  %i.ax = zext i32 %.sroa.02.017.i.i.i.i18.i.i.i to i64
  %i.ay = or disjoint i64 %i.aw, %i.ax
  %4 = tail call i64 @llvm.umulh.i64(i64 %i.ay, i64 %i.a)
  %i.az = xor i64 %i.ac, -1
  %.not6.i.i.i = icmp ugt i64 %4, %i.az
  %i.ba = zext i1 %.not6.i.i.i to i64
  %i.bb = add nuw i64 %i.ba, %i.ab
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultyNtNtNtCshhqnaxk4GqT_4rand5distr7uniform5ErrorE6unwrapCs2Bxje7pdMIr_13libp2p_server.exit

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultyNtNtNtCshhqnaxk4GqT_4rand5distr7uniform5ErrorE6unwrapCs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs2Bxje7pdMIr_13libp2p_server.exit20.i.i.i, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs2Bxje7pdMIr_13libp2p_server.exit14.i.i.i
  %.sroa.01.0.i.i.i = phi i64 [ %i.bb, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs2Bxje7pdMIr_13libp2p_server.exit20.i.i.i ], [ %i.ab, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs2Bxje7pdMIr_13libp2p_server.exit14.i.i.i ]
  %i.bc = add i64 %.sroa.01.0.i.i.i, %1
  ret i64 %i.bc

bb.l:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @44, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #34
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvXs2_NtCs4LZN9PPmi2I_11hickory_net7runtimeNtB8_9TokioTimeNtB8_4Time7timeoutNCINvNtNtBa_3udp17udp_client_stream5retryNtNtB8_13tokio_runtime20TokioRuntimeProviderINtB1l_10UdpRequestB1V_EE0E0Cs2Bxje7pdMIr_13libp2p_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([176 x i8]) align 8 captures(none) dereferenceable(176) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [176 x i8], align 8               ; 15 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [64 x i8], align 8                ; 11 uses
  %i.f = alloca [784 x i8], align 8               ; 11 uses
  %i.g = alloca [712 x i8], align 8               ; 6 uses
  %.sroa.35.sroa.6.i.i = alloca [40 x i8], align 8 ; 5 uses
  %.sroa.35.sroa.7.i.i = alloca [104 x i8], align 8 ; 5 uses
  %.sroa.3.sroa.5.i.i = alloca [40 x i8], align 8 ; 5 uses
  %.sroa.3.sroa.6.i.i = alloca [104 x i8], align 8 ; 5 uses
  %i.h = alloca [712 x i8], align 8               ; 6 uses
  %i.i = alloca [112 x i8], align 8               ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.13 = alloca [40 x i8], align 8           ; 2 uses
  %.sroa.14 = alloca [104 x i8], align 8          ; 2 uses
  %i.k = alloca [1008 x i8], align 8              ; 6 uses
  %.sroa.4.sroa.3 = alloca [40 x i8], align 8     ; 2 uses
  %.sroa.4.sroa.4 = alloca [104 x i8], align 8    ; 2 uses
  %i.l = alloca [896 x i8], align 8               ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 1920 ; 3 uses
  %i.n = load i8, ptr %i.m, align 8, !range !32, !noundef !13
  switch i8 %i.n, label %default.unreachable41 [
    i8 0, label %bb.b
    i8 1, label %bb.l
    i8 2, label %bb.m
    i8 3, label %bb.i
  ]

default.unreachable41:                            ; preds = %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvBV_6budgetbNCNvNtNtBZ_4task4coop20has_budget_remaining0E0bECs2Bxje7pdMIr_13libp2p_server.exit.i, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 1921
  %i.p = load i64, ptr %1, align 8, !noundef !13
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load i32, ptr %i.q, align 8, !range !49, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i8 0, ptr %i.o, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(896) %i.l, ptr noundef nonnull align 8 dereferenceable(896) %i.s, i64 896, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3015)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3016)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !3017
  %i.t = invoke { i64, i32 } @_RNvMNtNtCsc13h7DQFCSE_5tokio4time7instantNtB2_7Instant3now()
          to label %bb.c unwind label %bb.h, !noalias !3017 ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.u = extractvalue { i64, i32 } %i.t, 0
  %i.v = extractvalue { i64, i32 } %i.t, 1
  store i64 %i.u, ptr %i.j, align 8, !noalias !3017
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 %i.v, ptr %i.w, align 8, !noalias !3017
  %i.x = invoke { i64, i32 } @_RNvMNtNtCsc13h7DQFCSE_5tokio4time7instantNtB2_7Instant11checked_add(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j, i64 noundef %i.p, i32 noundef range(i32 0, 1000000000) %i.r)
          to label %bb.d unwind label %bb.h, !noalias !3017 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.y = extractvalue { i64, i32 } %i.x, 1        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3017
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3017
  %.not.i = icmp eq i32 %i.y, -1
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = extractvalue { i64, i32 } %i.x, 0
  invoke void @_RNvMNtNtCsc13h7DQFCSE_5tokio4time5sleepNtB2_5Sleep11new_timeout(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.i, i64 noundef %i.z, i32 noundef %i.y, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49)
          to label %bb.j unwind label %bb.h, !noalias !3017

bb.f:                                             ; preds = %bb.d
  invoke void @_RNvMNtNtCsc13h7DQFCSE_5tokio4time5sleepNtB2_5Sleep10far_future(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null)
          to label %bb.j unwind label %bb.h, !noalias !3017

bb.g:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !noalias !3015
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.c, %bb.b
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNtNtCs4LZN9PPmi2I_11hickory_net3udp17udp_client_stream5retryNtNtNtBK_7runtime13tokio_runtime20TokioRuntimeProviderINtBG_10UdpRequestB1E_EE0ECs2Bxje7pdMIr_13libp2p_server(ptr noundef nonnull align 8 dereferenceable(896) %i.l) #31
          to label %.body unwind label %bb.g, !noalias !3015

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  br label %bb.n

.body:                                            ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.k

bb.j:                                             ; preds = %bb.e, %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(896) %i.ac, ptr noundef nonnull align 8 dereferenceable(896) %i.l, i64 896, i1 false), !alias.scope !3017
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1008) %i.k, ptr noundef nonnull align 8 dereferenceable(112) %i.i, i64 112, i1 false), !noalias !3016
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3017
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 912
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1008) %i.ad, ptr noundef nonnull readonly align 8 dereferenceable(1008) %i.k, i64 1008, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.n

bb.k:                                             ; preds = %.body7, %bb.bk, %.body
  %.pn2 = phi { ptr, i32 } [ %i.fm, %bb.bk ], [ %.pn, %.body7 ], [ %i.ab, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 1921
  %i.af = load i8, ptr %i.ae, align 1, !range !15, !noundef !13
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.bq, label %bb.bp

bb.l:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #34
  unreachable

bb.m:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #34
  unreachable

bb.n:                                             ; preds = %bb.i, %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 912 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 1024
  %i.aj = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 72
  %i.al = load i8, ptr %i.ak, align 8, !range !18, !noalias !3018, !noundef !13
  %i.am = icmp eq i8 %i.al, 0
  br i1 %i.am, label %_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs2Bxje7pdMIr_13libp2p_server.exit.thread.i.i, label %_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs2Bxje7pdMIr_13libp2p_server.exit.i.i, !prof !21

_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs2Bxje7pdMIr_13libp2p_server.exit.i.i: ; preds = %bb.n
  %i.an = invoke noundef ptr @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE16get_or_init_slowCs2Bxje7pdMIr_13libp2p_server(ptr noundef nonnull align 8 %i.aj)
          to label %.noexc unwind label %bb.bi    ; 2 uses

.noexc:                                           ; preds = %_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs2Bxje7pdMIr_13libp2p_server.exit.i.i
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvBV_6budgetbNCNvNtNtBZ_4task4coop20has_budget_remaining0E0bECs2Bxje7pdMIr_13libp2p_server.exit.i, label %_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs2Bxje7pdMIr_13libp2p_server.exit.thread.i.i

_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs2Bxje7pdMIr_13libp2p_server.exit.thread.i.i: ; preds = %.noexc, %bb.n
  %.sroa.0.0.i.i2.i.i = phi ptr [ %i.an, %.noexc ], [ %i.aj, %bb.n ] ; 2 uses
  %i.ap = getelementptr i8, ptr %.sroa.0.0.i.i2.i.i, i64 68
  %.val.i.i = load i8, ptr %i.ap, align 1, !range !15, !noalias !3019, !noundef !13
  %i.aq = getelementptr i8, ptr %.sroa.0.0.i.i2.i.i, i64 69
  %.val5.i.i = load i8, ptr %i.aq, align 1, !noalias !3019
  %i.ar = trunc nuw i8 %.val.i.i to i1
  %i.as = invoke noundef zeroext i1 @_RNvMNtNtCsc13h7DQFCSE_5tokio4task4coopNtB2_6Budget13has_remaining(i1 noundef zeroext %i.ar, i8 %.val5.i.i)
          to label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvBV_6budgetbNCNvNtNtBZ_4task4coop20has_budget_remaining0E0bECs2Bxje7pdMIr_13libp2p_server.exit.i unwind label %bb.bi

_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvBV_6budgetbNCNvNtNtBZ_4task4coop20has_budget_remaining0E0bECs2Bxje7pdMIr_13libp2p_server.exit.i: ; preds = %_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs2Bxje7pdMIr_13libp2p_server.exit.thread.i.i, %.noexc
  %.sroa.0.0.i.i = phi i1 [ true, %.noexc ], [ %i.as, %_RNvYNCNKNvNtNtCsc13h7DQFCSE_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCs2Bxje7pdMIr_13libp2p_server.exit.thread.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.35.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.35.sroa.7.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.sroa.5.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.sroa.6.i.i)
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 1912 ; 4 uses
  %i.au = load i8, ptr %i.at, align 8, !range !32, !noalias !3020, !noundef !13
  switch i8 %i.au, label %default.unreachable41 [
    i8 0, label %bb.o
    i8 1, label %bb.ab
    i8 2, label %bb.ac
    i8 3, label %._crit_edge.i.i
  ]

._crit_edge.i.i:                                  ; preds = %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvBV_6budgetbNCNvNtNtBZ_4task4coop20has_budget_remaining0E0bECs2Bxje7pdMIr_13libp2p_server.exit.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1896
  %.val24.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !noalias !3020
  %.phi.trans.insert61.i.i = getelementptr i8, ptr %1, i64 1904
  %.val25.pre.i.i = load ptr, ptr %.phi.trans.insert61.i.i, align 8, !noalias !3020
  br label %bb.ad

bb.o:                                             ; preds = %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvBV_6budgetbNCNvNtNtBZ_4task4coop20has_budget_remaining0E0bECs2Bxje7pdMIr_13libp2p_server.exit.i
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 1424 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(376) %i.av, ptr noundef nonnull align 8 dereferenceable(376) %i.ai, i64 376, i1 false), !noalias !3020
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 1800 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 1400
  %i.ay = load i64, ptr %i.ax, align 8, !noalias !3020, !noundef !13
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 1408
  %i.ba = load i32, ptr %i.az, align 8, !range !49, !noalias !3020, !noundef !13
  store i64 %i.ay, ptr %i.aw, align 8, !noalias !3020
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 1808 ; 2 uses
  store i32 %i.ba, ptr %i.bb, align 8, !noalias !3020
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 1816
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 1416
  %i.be = load i64, ptr %i.bd, align 8, !noalias !3020, !noundef !13
  store i64 %i.be, ptr %i.bc, align 8, !noalias !3020
end_hunk_0
begin_hunk_1_@_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered4task4TaskINtNtNtBN_6stream11into_future12StreamFutureINtNtCs5xzCmWPONXx_11libp2p_quic9transport8ListenerNtNtNtB2E_8provider5tokio8ProviderEEEE9drop_slowCsiw6lwv6qtEL_6libp2p
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered4task4TaskINtNtNtBN_6stream11into_future12StreamFutureINtNtCs5xzCmWPONXx_11libp2p_quic9transport8ListenerNtNtNtB2E_8provider5tokio8ProviderEEEE9drop_slowCsiw6lwv6qtEL_6libp2p(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #20

; Function Attrs: noinline nonlazybind uwtable
declare hidden void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered4task4TaskINtNtNtBN_6stream11into_future12StreamFutureINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc8ReceiverINtNtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool4task26EstablishedConnectionEventINtCscu2bAJ62uie_6either6EitherIB4N_IB4N_IB4N_IB4N_NtNtNtCsaD87b1AYckX_12libp2p_relay9behaviour7handler5EventzEINtNtCskKLDkoKarTP_4core6result6ResultNtNtB6E_4time8DurationNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureEENtNtCsfY02lUNHLPc_15libp2p_identify7handler5EventENtNtCskC4O4hr3vz7_10libp2p_kad7handler12HandlerEventEINtNtCsfoiTdJnOWBy_23libp2p_request_response7handler5EventNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v18protocol12AutoNatCodecEEEEEEE9drop_slowCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #20

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered4task4TaskINtNtNtBN_6stream11into_future12StreamFutureINtNtCsjouRnuJWSBB_5yamux13tagged_stream12TaggedStreamNtNtNtB2E_5frame6header8StreamIdINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc8ReceiverNtNtB2E_10connection13StreamCommandEEEEE9drop_slowB2E_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #20

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered4task4TaskINtNtNtBN_6stream11into_future12StreamFutureNtNtCskC4O4hr3vz7_10libp2p_kad7handler21InboundSubstreamStateEEE9drop_slowB2D_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #20

; Function Attrs: noinline nonlazybind uwtable
declare hidden void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered4task4TaskNCNCNCNvMs0_NtCsa9Jrx9KOzzM_16hickory_resolver16name_server_poolINtB23_9PoolStateNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE8try_send0s_00EE9drop_slowCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #20

; Function Attrs: noinline nonlazybind uwtable
declare hidden void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsl9hx9jpF0W9_12futures_util6stream17futures_unordered4task4TaskNCNvXs3_NtNtCs4LZN9PPmi2I_11hickory_net3udp17udp_client_streamINtB1Z_10UdpRequestNtNtNtB23_7runtime13tokio_runtime20TokioRuntimeProviderENtB1Z_7Request4send0EE9drop_slowCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #20

; Function Attrs: noinline nonlazybind uwtable
declare hidden void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server14ConnectionMetaE9drop_slowCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #20

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsaRn6AFvch86_5quinn10connection15ConnectionInnerE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #20

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsaRn6AFvch86_5quinn8endpoint13EndpointInnerE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #20

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsc13h7DQFCSE_5tokio7runtime4park5InnerE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #20

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsdAHj8hiIvQh_11quinn_proto6config9transport15TransportConfigE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #20

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCskKLDkoKarTP_4core2io5error5ErrorE9drop_slowCs4LZN9PPmi2I_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #20

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsc13h7DQFCSE_5tokio7runtime2io12scheduled_io11ScheduledIoE9drop_slowBO_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #20

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #20

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCse0yMYRRwETY_5hyper5proto2h27upgrade19UpgradedCloseNotifyE9drop_slowCsgrCzhG8IxpI_8igd_next(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #20

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #20

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSNtNtCs4LZN9PPmi2I_11hickory_net5error13ForwardNSDataE9drop_slowBL_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #20

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordE9drop_slowCs4LZN9PPmi2I_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #20

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceE9drop_slowCs4PDs7pjxAW4_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #20

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcuE9drop_slowCsc13h7DQFCSE_5tokio(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #20

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs9_NtNtNtCskKLDkoKarTP_4core3fmt3num3implNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsx_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsv_NtNtCskKLDkoKarTP_4core3fmt3numlNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtNtCskKLDkoKarTP_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXse_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXso_NtNtCskKLDkoKarTP_4core3fmt3numtNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsm_NtNtCskKLDkoKarTP_4core3fmt3numtNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsw_NtNtCskKLDkoKarTP_4core3fmt3nummNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsu_NtNtCskKLDkoKarTP_4core3fmt3nummNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtNtCskKLDkoKarTP_4core3ops5rangeINtB4_5RangejENtNtB8_3fmt5Debug3fmtCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs9Bqz0CSWZZv_12tracing_core5field8FieldSetNtB6_5Debug3fmtCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsu_NtCsgV0iE8Xkxiy_15futures_channel4mpscINtB5_8ReceiverNtNtCsjouRnuJWSBB_5yamux10connection13StreamCommandENtNtCsgtKVDLJNbYN_12futures_core6stream6Stream9poll_nextCs2Bxje7pdMIr_13libp2p_server(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtCsc13h7DQFCSE_5tokio4time7timeout10poll_delay(i1 noundef zeroext, ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXs_NtCs5vIp9T9TAX9_10futures_io6if_stdQINtNtNtCsl9hx9jpF0W9_12futures_util2io5split8ReadHalfINtNtNtBL_6future6either6EitherIB1w_INtNtCsgrcu2UPjJtD_14futures_rustls6client9TlsStreamNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEINtNtB2a_6server9TlsStreamB2V_EEB2V_EENtB4_9AsyncRead9poll_readCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info4vlan14VlanQosMappingENtB6_5Debug3fmtCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link13vlan_protocol12VlanProtocolNtB6_5Debug3fmtCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsa9Jrx9KOzzM_16hickory_resolver6config16ConnectionConfigENtB6_5Debug3fmtCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtB8_6option6OptionNtNtNtB8_3net11socket_addr10SocketAddrENtB6_5Debug3fmtCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordNtNtNtBL_5rdata3soa3SOAEE13new_uninit_inCs2Bxje7pdMIr_13libp2p_server() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordNtNtNtBL_5rdata4tsig4TSIGEE13new_uninit_inCs2Bxje7pdMIr_13libp2p_server() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxNtNtCsbTgMbcnmcyu_13hickory_proto5error10ProtoErrorE13new_uninit_inCs2Bxje7pdMIr_13libp2p_server() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxNtNtNtCsbTgMbcnmcyu_13hickory_proto2op5query5QueryE13new_uninit_inCs2Bxje7pdMIr_13libp2p_server() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxNtNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6domain4name4NameE13new_uninit_inCs2Bxje7pdMIr_13libp2p_server() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs3_Csl6TgSXZDiW0_4slabINtB5_4SlabNtNtNtCsl9hx9jpF0W9_12futures_util4lock5mutex6WaiterE9insert_atCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(40), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32), ptr) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvXs5_Csl6TgSXZDiW0_4slabINtB5_4SlabNtNtNtCsl9hx9jpF0W9_12futures_util4lock5mutex6WaiterEINtNtNtCskKLDkoKarTP_4core3ops5index8IndexMutjE9index_mutCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(40), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtNtCsl9hx9jpF0W9_12futures_util4lock5mutexNtB5_6Waiter8register(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtCskKLDkoKarTP_4core3fmtbNtB5_7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4, i32 noundef) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCsa9Jrx9KOzzM_16hickory_resolver6config16ConnectionConfigINtNtNtBa_5slice4iter4IterB14_EECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtBa_3net7ip_addr8Ipv4AddrINtNtNtBa_5slice4iter4IterB14_EECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtBa_3net7ip_addr8Ipv6AddrINtNtNtBa_5slice4iter4IterB14_EECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs3LwfirTY3Ij_20netlink_packet_route5route4mpls9MplsLabelINtNtNtBa_5slice4iter4IterB14_EECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs3LwfirTY3Ij_20netlink_packet_route5route9next_hops12RouteNextHopINtNtNtBa_5slice4iter4IterB14_EECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link10proto_info5inet618LinkProtoInfoInet6INtNtNtBa_5slice4iter4IterB14_EECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info4vlan14VlanQosMappingINtNtNtBa_5slice4iter4IterB14_EECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info4vlan8InfoVlanINtNtNtBa_5slice4iter4IterB14_EECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs3LwfirTY3Ij_20netlink_packet_route5route9attribute14RouteAttributeENtB6_5Debug3fmtCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCskKLDkoKarTP_4core4cell10UnsafeCellINtNtCsenQHu2qVDfv_9rand_core5block8BlockRngNtNtNtCshhqnaxk4GqT_4rand4rngs6thread13ReseedingCoreEEE9drop_slowB26_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umulh.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #19

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { norecurse nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress norecurse nounwind nonlazybind willreturn uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #16 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #29 = { nounwind }
attributes #30 = { noreturn }
attributes #31 = { cold }
attributes #32 = { cold noreturn nounwind }
attributes #33 = { noinline }
attributes #34 = { noinline noreturn }
attributes #35 = { inlinehint }

!llvm.module.flags = !{!7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = distinct !{null}
!3 = distinct !{null}
!4 = distinct !{!4, !"_RNvXsf_NtNtCsl9hx9jpF0W9_12futures_util4lock5mutexINtB5_15MutexLockFutureNtNtCsa9Jrx9KOzzM_16hickory_resolver16name_server_pool24NameServerTransportStateENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server"}
!5 = distinct !{!5, !4, !"_RNvXsf_NtNtCsl9hx9jpF0W9_12futures_util4lock5mutexINtB5_15MutexLockFutureNtNtCsa9Jrx9KOzzM_16hickory_resolver16name_server_pool24NameServerTransportStateENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server: argument 0"}
!6 = distinct !{null}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"PIE Level", i32 2}
!9 = !{i32 2, !"RtLibUseGOT", i32 1}
!10 = !{i32 7, !"uwtable", i32 2}
!11 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!12 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!13 = !{}
!14 = !{i64 8}
!15 = !{i8 0, i8 2}
!16 = !{!"address", !"read_provenance"}
!17 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!18 = !{i8 0, i8 3}
!19 = !{i64 0, i64 2}
!20 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!21 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!22 = !{i64 0, i64 3}
!23 = !{i64 -1, i64 -9223372036854775808}
!24 = !{i64 0, i64 -9223372036854775808}
!25 = !{i64 1, i64 536870913}
!26 = !{i8 -1, i8 3}
!27 = !{i8 -4, i8 4}
!28 = !{i64 -2, i64 3}
!29 = !{i32 0, i32 2}
!30 = !{i64 -1, i64 3}
!31 = !{i32 0, i32 -1}
!32 = !{i8 0, i8 4}
!33 = !{i8 0, i8 6}
!34 = !{i16 0, i16 3}
!35 = !{i32 -1, i32 13}
!36 = !{i16 0, i16 2}
!37 = !{i64 0, i64 44}
!38 = !{i8 0, i8 11}
!39 = !{i8 0, i8 8}
!40 = !{!5}
!41 = !{i64 0, i64 40}
!42 = !{i32 0, i32 3}
!43 = !{i32 0, i32 13}
!44 = !{i64 0, i64 -9223372036854775806}
!45 = !{i8 0, i8 12}
!46 = !{i64 0, i64 -9223372036854775797}
!47 = !{i16 0, i16 12}
!48 = !{i64 0, i64 -9223372036854775781}
!49 = !{i32 0, i32 1000000000}
!50 = !{i64 -3, i64 -9223372036854775808}
!51 = !{i32 -1, i32 1000000000}
!52 = !{i8 -1, i8 12}
!53 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000}
!54 = !{i32 -2, i32 13}
!55 = !{i16 0, i16 21}
!56 = !{!"branch_weights", i32 6000, i32 1}
!57 = !{i64 4}
!58 = !{i64 -4, i64 -9223372036854775806}
!59 = !{i8 -6, i8 14}
!60 = !{i8 -5, i8 10}
!61 = !{!"branch_weights", i32 1, i32 4001}
!62 = !{!"branch_weights", i32 4000000, i32 4001}
!63 = distinct !{!63, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtNtCs5IbPN03UQpS_10hyper_util6common6rewind6RewindINtNtNtBL_2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEEE3newCs2Bxje7pdMIr_13libp2p_server"}
!64 = distinct !{!64, !63, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtNtCs5IbPN03UQpS_10hyper_util6common6rewind6RewindINtNtNtBL_2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEEE3newCs2Bxje7pdMIr_13libp2p_server: argument 0"}
!65 = distinct !{!65, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs2Bxje7pdMIr_13libp2p_server"}
!66 = distinct !{!66, !65, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!67 = distinct !{!67, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!68 = distinct !{!68, !67, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!69 = !{!64}
!70 = !{!66}
!71 = !{!68}
!72 = !{!68, !66}
!73 = distinct !{!73, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtNtCse0yMYRRwETY_5hyper5proto2h27upgrade10H2UpgradedE3newCs2Bxje7pdMIr_13libp2p_server"}
!74 = distinct !{!74, !73, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtNtCse0yMYRRwETY_5hyper5proto2h27upgrade10H2UpgradedE3newCs2Bxje7pdMIr_13libp2p_server: argument 0"}
!75 = distinct !{!75, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs2Bxje7pdMIr_13libp2p_server"}
!76 = distinct !{!76, !75, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!77 = distinct !{!77, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!78 = distinct !{!78, !77, !"_RNvXs1_NtCs1eA6bChxBZF_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!79 = !{!74}
!80 = !{!76}
!81 = !{!78}
!82 = !{!78, !76}
!83 = distinct !{!83, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderECs2Bxje7pdMIr_13libp2p_server"}
!84 = distinct !{!84, !83, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!85 = distinct !{!85, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime11TokioHandleECs2Bxje7pdMIr_13libp2p_server"}
!86 = distinct !{!86, !85, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime11TokioHandleECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!87 = distinct !{!87, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtNtCsc13h7DQFCSE_5tokio4task8join_set7JoinSetuEEEECs2Bxje7pdMIr_13libp2p_server"}
!88 = distinct !{!88, !87, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtNtCsc13h7DQFCSE_5tokio4task8join_set7JoinSetuEEEECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!89 = distinct !{!89, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtNtCsc13h7DQFCSE_5tokio4task8join_set7JoinSetuEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server"}
!90 = distinct !{!90, !89, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtNtCsc13h7DQFCSE_5tokio4task8join_set7JoinSetuEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2Bxje7pdMIr_13libp2p_server: argument 0"}
!91 = !{!90, !88, !86, !84}
!92 = distinct !{!92, !"_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE8try_withNCNvMNtNtBa_4hash6randomNtB1L_11RandomState3new0B24_ECs2Bxje7pdMIr_13libp2p_server"}
!93 = distinct !{!93, !92, !"_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE8try_withNCNvMNtNtBa_4hash6randomNtB1L_11RandomState3new0B24_ECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!94 = distinct !{null}
!95 = !{!93}
!96 = distinct !{!96, !"_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell7RefCellNtNtCsexYYUdYSQU6_5alloc6string6StringEE8try_withNCNvXsa_NtNtCshEYSjulKtIJ_18tracing_subscriber3fmt9fmt_layerINtB2p_5LayerNtNtNtB2t_8registry7sharded8RegistryEINtNtB2t_5layer5LayerB3s_E8on_event0uECs2Bxje7pdMIr_13libp2p_server"}
!97 = distinct !{!97, !96, !"_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell7RefCellNtNtCsexYYUdYSQU6_5alloc6string6StringEE8try_withNCNvXsa_NtNtCshEYSjulKtIJ_18tracing_subscriber3fmt9fmt_layerINtB2p_5LayerNtNtNtB2t_8registry7sharded8RegistryEINtNtB2t_5layer5LayerB3s_E8on_event0uECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!98 = distinct !{null}
!99 = distinct !{!99, !"_RNCNvXsa_NtNtCshEYSjulKtIJ_18tracing_subscriber3fmt9fmt_layerINtB7_5LayerNtNtNtBb_8registry7sharded8RegistryEINtNtBb_5layer5LayerB19_E8on_event0Cs2Bxje7pdMIr_13libp2p_server"}
!100 = distinct !{!100, !99, !"_RNCNvXsa_NtNtCshEYSjulKtIJ_18tracing_subscriber3fmt9fmt_layerINtB7_5LayerNtNtNtBb_8registry7sharded8RegistryEINtNtBb_5layer5LayerB19_E8on_event0Cs2Bxje7pdMIr_13libp2p_server: argument 0"}
!101 = distinct !{!101, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs2Bxje7pdMIr_13libp2p_server"}
!102 = distinct !{!102, !101, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!103 = distinct !{!103, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs2Bxje7pdMIr_13libp2p_server"}
!104 = distinct !{!104, !103, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!105 = distinct !{!105, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs2Bxje7pdMIr_13libp2p_server"}
!106 = distinct !{!106, !105, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs2Bxje7pdMIr_13libp2p_server: argument 0"}
!107 = !{!97}
!108 = !{!100, !97}
!109 = !{!102}
!110 = !{!104}
!111 = !{!106}
!112 = distinct !{!112, !"_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvBV_13set_schedulerTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtBX_9scheduler14current_thread4CoreEINtNtCskKLDkoKarTP_4core6option6OptionINtNtB3y_6result6ResultuIB2g_DNtNtB3y_5error5ErrorEL_EEEENCINvMs7_B2Q_NtB2Q_9CoreGuard5enterNCINvB55_8block_onINtNtB3y_3pin3PinQIB5S_IB2g_NCNvCs2Bxje7pdMIr_13libp2p_server4main0EEEE0B3t_E0E0B2e_EB6n_"}
!113 = distinct !{!113, !112, !"_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvBV_13set_schedulerTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtBX_9scheduler14current_thread4CoreEINtNtCskKLDkoKarTP_4core6option6OptionINtNtB3y_6result6ResultuIB2g_DNtNtB3y_5error5ErrorEL_EEEENCINvMs7_B2Q_NtB2Q_9CoreGuard5enterNCINvB55_8block_onINtNtB3y_3pin3PinQIB5S_IB2g_NCNvCs2Bxje7pdMIr_13libp2p_server4main0EEEE0B3t_E0E0B2e_EB6n_: argument 1"}
!114 = distinct !{!114, !112, !"_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvBV_13set_schedulerTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtBX_9scheduler14current_thread4CoreEINtNtCskKLDkoKarTP_4core6option6OptionINtNtB3y_6result6ResultuIB2g_DNtNtB3y_5error5ErrorEL_EEEENCINvMs7_B2Q_NtB2Q_9CoreGuard5enterNCINvB55_8block_onINtNtB3y_3pin3PinQIB5S_IB2g_NCNvCs2Bxje7pdMIr_13libp2p_server4main0EEEE0B3t_E0E0B2e_EB6n_: argument 0"}
!115 = distinct !{!115, !"_RNCINvNtNtCsc13h7DQFCSE_5tokio7runtime7context13set_schedulerTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtB6_9scheduler14current_thread4CoreEINtNtCskKLDkoKarTP_4core6option6OptionINtNtB2h_6result6ResultuIBZ_DNtNtB2h_5error5ErrorEL_EEEENCINvMs7_B1z_NtB1z_9CoreGuard5enterNCINvB3N_8block_onINtNtB2h_3pin3PinQIB4A_IBZ_NCNvCs2Bxje7pdMIr_13libp2p_server4main0EEEE0B2c_E0E0B54_"}
!116 = distinct !{!116, !115, !"_RNCINvNtNtCsc13h7DQFCSE_5tokio7runtime7context13set_schedulerTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtB6_9scheduler14current_thread4CoreEINtNtCskKLDkoKarTP_4core6option6OptionINtNtB2h_6result6ResultuIBZ_DNtNtB2h_5error5ErrorEL_EEEENCINvMs7_B1z_NtB1z_9CoreGuard5enterNCINvB3N_8block_onINtNtB2h_3pin3PinQIB4A_IBZ_NCNvCs2Bxje7pdMIr_13libp2p_server4main0EEEE0B2c_E0E0B54_: argument 1"}
!117 = distinct !{!117, !115, !"_RNCINvNtNtCsc13h7DQFCSE_5tokio7runtime7context13set_schedulerTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtB6_9scheduler14current_thread4CoreEINtNtCskKLDkoKarTP_4core6option6OptionINtNtB2h_6result6ResultuIBZ_DNtNtB2h_5error5ErrorEL_EEEENCINvMs7_B1z_NtB1z_9CoreGuard5enterNCINvB3N_8block_onINtNtB2h_3pin3PinQIB4A_IBZ_NCNvCs2Bxje7pdMIr_13libp2p_server4main0EEEE0B2c_E0E0B54_: argument 0"}
!118 = distinct !{!118, !"_RINvMNtNtNtCsc13h7DQFCSE_5tokio7runtime7context6scopedINtB3_6ScopedNtNtB7_9scheduler7ContextE3setNCINvMs7_NtB15_14current_threadNtB1G_9CoreGuard5enterNCINvB1C_8block_onINtNtCskKLDkoKarTP_4core3pin3PinQIB2H_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCs2Bxje7pdMIr_13libp2p_server4main0EEEE0INtNtB2L_6option6OptionINtNtB2L_6result6ResultuIB3j_DNtNtB2L_5error5ErrorEL_EEEE0TIB3j_NtB1G_4CoreEB4z_EEB3V_"}
!119 = distinct !{!119, !118, !"_RINvMNtNtNtCsc13h7DQFCSE_5tokio7runtime7context6scopedINtB3_6ScopedNtNtB7_9scheduler7ContextE3setNCINvMs7_NtB15_14current_threadNtB1G_9CoreGuard5enterNCINvB1C_8block_onINtNtCskKLDkoKarTP_4core3pin3PinQIB2H_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCs2Bxje7pdMIr_13libp2p_server4main0EEEE0INtNtB2L_6option6OptionINtNtB2L_6result6ResultuIB3j_DNtNtB2L_5error5ErrorEL_EEEE0TIB3j_NtB1G_4CoreEB4z_EEB3V_: argument 1"}
!120 = distinct !{!120, !118, !"_RINvMNtNtNtCsc13h7DQFCSE_5tokio7runtime7context6scopedINtB3_6ScopedNtNtB7_9scheduler7ContextE3setNCINvMs7_NtB15_14current_threadNtB1G_9CoreGuard5enterNCINvB1C_8block_onINtNtCskKLDkoKarTP_4core3pin3PinQIB2H_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCs2Bxje7pdMIr_13libp2p_server4main0EEEE0INtNtB2L_6option6OptionINtNtB2L_6result6ResultuIB3j_DNtNtB2L_5error5ErrorEL_EEEE0TIB3j_NtB1G_4CoreEB4z_EEB3V_: argument 0"}
!121 = distinct !{!121, !"_RNCINvMs7_NtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler14current_threadNtB8_9CoreGuard5enterNCINvB4_8block_onINtNtCskKLDkoKarTP_4core3pin3PinQIB1J_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCs2Bxje7pdMIr_13libp2p_server4main0EEEE0INtNtB1N_6option6OptionINtNtB1N_6result6ResultuIB2l_DNtNtB1N_5error5ErrorEL_EEEE0B2X_"}
!122 = distinct !{!122, !121, !"_RNCINvMs7_NtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler14current_threadNtB8_9CoreGuard5enterNCINvB4_8block_onINtNtCskKLDkoKarTP_4core3pin3PinQIB1J_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCs2Bxje7pdMIr_13libp2p_server4main0EEEE0INtNtB1N_6option6OptionINtNtB1N_6result6ResultuIB2l_DNtNtB1N_5error5ErrorEL_EEEE0B2X_: argument 1"}
!123 = distinct !{!123, !121, !"_RNCINvMs7_NtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler14current_threadNtB8_9CoreGuard5enterNCINvB4_8block_onINtNtCskKLDkoKarTP_4core3pin3PinQIB1J_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCs2Bxje7pdMIr_13libp2p_server4main0EEEE0INtNtB1N_6option6OptionINtNtB1N_6result6ResultuIB2l_DNtNtB1N_5error5ErrorEL_EEEE0B2X_: argument 0"}
!124 = distinct !{!124, !"_RNCINvMs7_NtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler14current_threadNtB8_9CoreGuard8block_onINtNtCskKLDkoKarTP_4core3pin3PinQIB1v_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCs2Bxje7pdMIr_13libp2p_server4main0EEEE0B2J_"}
!125 = distinct !{!125, !124, !"_RNCINvMs7_NtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler14current_threadNtB8_9CoreGuard8block_onINtNtCskKLDkoKarTP_4core3pin3PinQIB1v_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCs2Bxje7pdMIr_13libp2p_server4main0EEEE0B2J_: argument 2"}
!126 = distinct !{!126, !124, !"_RNCINvMs7_NtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler14current_threadNtB8_9CoreGuard8block_onINtNtCskKLDkoKarTP_4core3pin3PinQIB1v_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCs2Bxje7pdMIr_13libp2p_server4main0EEEE0B2J_: argument 1"}
!127 = distinct !{!127, !124, !"_RNCINvMs7_NtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler14current_threadNtB8_9CoreGuard8block_onINtNtCskKLDkoKarTP_4core3pin3PinQIB1v_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCs2Bxje7pdMIr_13libp2p_server4main0EEEE0B2J_: argument 0"}
!128 = !{!113}
!129 = !{!114, !113}
!130 = !{!120, !119, !117, !116, !114, !113}
!131 = !{!114}
!132 = !{!127, !126, !125, !123, !122, !120, !119, !117, !116, !114, !113}
!133 = !{!127, !123, !122, !120, !119, !117, !116, !114, !113}
!134 = distinct !{!134, !"_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvBV_13set_schedulerTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtBX_9scheduler14current_thread4CoreEINtNtCskKLDkoKarTP_4core6option6OptionINtNtB3y_6result6ResultuIB2g_DNtNtB3y_5error5ErrorEL_EEEENCINvMs7_B2Q_NtB2Q_9CoreGuard5enterNCINvB55_8block_onINtNtB3y_3pin3PinQNCNvCs2Bxje7pdMIr_13libp2p_server4main0EE0B3t_E0E0B2e_EB6d_"}
!135 = distinct !{!135, !134, !"_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvBV_13set_schedulerTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtBX_9scheduler14current_thread4CoreEINtNtCskKLDkoKarTP_4core6option6OptionINtNtB3y_6result6ResultuIB2g_DNtNtB3y_5error5ErrorEL_EEEENCINvMs7_B2Q_NtB2Q_9CoreGuard5enterNCINvB55_8block_onINtNtB3y_3pin3PinQNCNvCs2Bxje7pdMIr_13libp2p_server4main0EE0B3t_E0E0B2e_EB6d_: argument 1"}
!136 = distinct !{!136, !134, !"_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyNtNtNtCsc13h7DQFCSE_5tokio7runtime7context7ContextE8try_withNCINvBV_13set_schedulerTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtBX_9scheduler14current_thread4CoreEINtNtCskKLDkoKarTP_4core6option6OptionINtNtB3y_6result6ResultuIB2g_DNtNtB3y_5error5ErrorEL_EEEENCINvMs7_B2Q_NtB2Q_9CoreGuard5enterNCINvB55_8block_onINtNtB3y_3pin3PinQNCNvCs2Bxje7pdMIr_13libp2p_server4main0EE0B3t_E0E0B2e_EB6d_: argument 0"}
!137 = distinct !{!137, !"_RNCINvNtNtCsc13h7DQFCSE_5tokio7runtime7context13set_schedulerTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtB6_9scheduler14current_thread4CoreEINtNtCskKLDkoKarTP_4core6option6OptionINtNtB2h_6result6ResultuIBZ_DNtNtB2h_5error5ErrorEL_EEEENCINvMs7_B1z_NtB1z_9CoreGuard5enterNCINvB3N_8block_onINtNtB2h_3pin3PinQNCNvCs2Bxje7pdMIr_13libp2p_server4main0EE0B2c_E0E0B4V_"}
!138 = distinct !{!138, !137, !"_RNCINvNtNtCsc13h7DQFCSE_5tokio7runtime7context13set_schedulerTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtB6_9scheduler14current_thread4CoreEINtNtCskKLDkoKarTP_4core6option6OptionINtNtB2h_6result6ResultuIBZ_DNtNtB2h_5error5ErrorEL_EEEENCINvMs7_B1z_NtB1z_9CoreGuard5enterNCINvB3N_8block_onINtNtB2h_3pin3PinQNCNvCs2Bxje7pdMIr_13libp2p_server4main0EE0B2c_E0E0B4V_: argument 1"}
!139 = distinct !{!139, !137, !"_RNCINvNtNtCsc13h7DQFCSE_5tokio7runtime7context13set_schedulerTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtB6_9scheduler14current_thread4CoreEINtNtCskKLDkoKarTP_4core6option6OptionINtNtB2h_6result6ResultuIBZ_DNtNtB2h_5error5ErrorEL_EEEENCINvMs7_B1z_NtB1z_9CoreGuard5enterNCINvB3N_8block_onINtNtB2h_3pin3PinQNCNvCs2Bxje7pdMIr_13libp2p_server4main0EE0B2c_E0E0B4V_: argument 0"}
!140 = distinct !{!140, !"_RINvMNtNtNtCsc13h7DQFCSE_5tokio7runtime7context6scopedINtB3_6ScopedNtNtB7_9scheduler7ContextE3setNCINvMs7_NtB15_14current_threadNtB1G_9CoreGuard5enterNCINvB1C_8block_onINtNtCskKLDkoKarTP_4core3pin3PinQNCNvCs2Bxje7pdMIr_13libp2p_server4main0EE0INtNtB2L_6option6OptionINtNtB2L_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB2L_5error5ErrorEL_EEEE0TIB4F_NtB1G_4CoreEB3T_EEB3h_"}
!141 = distinct !{!141, !140, !"_RINvMNtNtNtCsc13h7DQFCSE_5tokio7runtime7context6scopedINtB3_6ScopedNtNtB7_9scheduler7ContextE3setNCINvMs7_NtB15_14current_threadNtB1G_9CoreGuard5enterNCINvB1C_8block_onINtNtCskKLDkoKarTP_4core3pin3PinQNCNvCs2Bxje7pdMIr_13libp2p_server4main0EE0INtNtB2L_6option6OptionINtNtB2L_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB2L_5error5ErrorEL_EEEE0TIB4F_NtB1G_4CoreEB3T_EEB3h_: argument 1"}
!142 = distinct !{!142, !140, !"_RINvMNtNtNtCsc13h7DQFCSE_5tokio7runtime7context6scopedINtB3_6ScopedNtNtB7_9scheduler7ContextE3setNCINvMs7_NtB15_14current_threadNtB1G_9CoreGuard5enterNCINvB1C_8block_onINtNtCskKLDkoKarTP_4core3pin3PinQNCNvCs2Bxje7pdMIr_13libp2p_server4main0EE0INtNtB2L_6option6OptionINtNtB2L_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB2L_5error5ErrorEL_EEEE0TIB4F_NtB1G_4CoreEB3T_EEB3h_: argument 0"}
!143 = distinct !{!143, !"_RNCINvMs7_NtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler14current_threadNtB8_9CoreGuard5enterNCINvB4_8block_onINtNtCskKLDkoKarTP_4core3pin3PinQNCNvCs2Bxje7pdMIr_13libp2p_server4main0EE0INtNtB1N_6option6OptionINtNtB1N_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB1N_5error5ErrorEL_EEEE0B2j_"}
!144 = distinct !{!144, !143, !"_RNCINvMs7_NtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler14current_threadNtB8_9CoreGuard5enterNCINvB4_8block_onINtNtCskKLDkoKarTP_4core3pin3PinQNCNvCs2Bxje7pdMIr_13libp2p_server4main0EE0INtNtB1N_6option6OptionINtNtB1N_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB1N_5error5ErrorEL_EEEE0B2j_: argument 1"}
!145 = distinct !{!145, !143, !"_RNCINvMs7_NtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler14current_threadNtB8_9CoreGuard5enterNCINvB4_8block_onINtNtCskKLDkoKarTP_4core3pin3PinQNCNvCs2Bxje7pdMIr_13libp2p_server4main0EE0INtNtB1N_6option6OptionINtNtB1N_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB1N_5error5ErrorEL_EEEE0B2j_: argument 0"}
!146 = distinct !{!146, !"_RNCINvMs7_NtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler14current_threadNtB8_9CoreGuard8block_onINtNtCskKLDkoKarTP_4core3pin3PinQNCNvCs2Bxje7pdMIr_13libp2p_server4main0EE0B25_"}
!147 = distinct !{!147, !146, !"_RNCINvMs7_NtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler14current_threadNtB8_9CoreGuard8block_onINtNtCskKLDkoKarTP_4core3pin3PinQNCNvCs2Bxje7pdMIr_13libp2p_server4main0EE0B25_: argument 1"}
end_hunk_1
