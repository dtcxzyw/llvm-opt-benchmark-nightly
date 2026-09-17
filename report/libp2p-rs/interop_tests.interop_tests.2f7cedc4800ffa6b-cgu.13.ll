Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/interop_tests.interop_tests.2f7cedc4800ffa6b-cgu.13?download=true
inline.NumInlined: 2616
inline.NumDeleted: 1300
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvXs2_NtCs4LZN9PPmi2I_11hickory_net7runtimeNtB6_9TokioTimeNtB6_4Time7timeoutNCINvNtNtB8_3udp17udp_client_stream5retryNtNtB6_13tokio_runtime20TokioRuntimeProviderINtB1j_10UdpRequestB1T_EE0ECs44McOc0n4RX_13interop_tests:bb.a
  store i64 %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(896) %i.c, ptr noundef nonnull align 8 dereferenceable(896) %2, i64 896, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1920
  store i8 0, ptr %i.d, align 8
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !2818
  %i.e = tail call noundef align 8 dereferenceable_or_null(1928) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 72, 1929) 1928, i64 noundef range(i64 8, 129) 8) #25, !noalias !2818 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvXs2_NtCs4LZN9PPmi2I_11hickory_net7runtimeNtBN_9TokioTimeNtBN_4Time7timeoutNCINvNtNtBP_3udp17udp_client_stream5retryNtNtBN_13tokio_runtime20TokioRuntimeProviderINtB20_10UdpRequestB2A_EE0E0E3newCs44McOc0n4RX_13interop_tests.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1928) #24
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvXs2_NtCs4LZN9PPmi2I_11hickory_net7runtimeNtBK_9TokioTimeNtBK_4Time7timeoutNCINvNtNtBM_3udp17udp_client_stream5retryNtNtBK_13tokio_runtime20TokioRuntimeProviderINtB1X_10UdpRequestB2x_EE0E0ECs44McOc0n4RX_13interop_tests(ptr noundef nonnull align 8 dereferenceable(1928) %i.a) #27
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.g

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvXs2_NtCs4LZN9PPmi2I_11hickory_net7runtimeNtBN_9TokioTimeNtBN_4Time7timeoutNCINvNtNtBP_3udp17udp_client_stream5retryNtNtBN_13tokio_runtime20TokioRuntimeProviderINtB20_10UdpRequestB2A_EE0E0E3newCs44McOc0n4RX_13interop_tests.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1928) %i.e, ptr noundef nonnull align 8 dereferenceable(1928) %i.a, i64 1928, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = insertvalue { ptr, ptr } poison, ptr %i.e, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr @6, 1
  ret { ptr, ptr } %i.j
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i16 @_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangetINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivetEECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i48 %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i48 %1 to i16  ; 3 uses
  %.sroa.2.0.extract.shift = lshr i48 %1, 16
  %.sroa.2.0.extract.trunc = trunc i48 %.sroa.2.0.extract.shift to i16 ; 2 uses
  %.not.i = icmp ugt i16 %.sroa.0.0.extract.trunc, %.sroa.2.0.extract.trunc
  br i1 %.not.i, label %bb.p, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %.val10 = load ptr, ptr %0, align 8             ; 10 uses
  %i.a = sub nuw i16 %.sroa.2.0.extract.trunc, %.sroa.0.0.extract.trunc
  %i.b = add i16 %i.a, 1                          ; 3 uses
  %i.c = icmp eq i16 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10) ]
  %i.d = getelementptr inbounds nuw i8, ptr %.val10, i64 16 ; 5 uses
  %i.e = load i32, ptr %i.d, align 4, !alias.scope !2843, !noalias !2844, !noundef !10 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 63
  br i1 %i.f, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val10, i64 272 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val10, i64 320
  %i.i = load i64, ptr %i.h, align 4, !alias.scope !2845, !noalias !2846
  %i.j = icmp ugt i64 %i.i, 1023
  br i1 %i.j, label %bb.e, label %.thread.i.i.i.i.i.i, !prof !9

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvMs_NtNtCshhqnaxk4GqT_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.g) #28, !noalias !2846
  br label %.thread.i.i.i.i.i.i

.thread.i.i.i.i.i.i:                              ; preds = %bb.e, %bb.d
  tail call void @_RNvXs_NtCs1aYz1mjYrQZ_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core5block9Generator8generateCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.g, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.d), !noalias !2844
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomtECs44McOc0n4RX_13interop_tests.exit.i.i

bb.f:                                             ; preds = %bb.c
  %i.k = zext nneg i32 %i.e to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.k
  %i.m = add nuw nsw i32 %i.e, 1
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomtECs44McOc0n4RX_13interop_tests.exit.i.i

_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomtECs44McOc0n4RX_13interop_tests.exit.i.i: ; preds = %bb.f, %.thread.i.i.i.i.i.i
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i.i = phi i32 [ 1, %.thread.i.i.i.i.i.i ], [ %i.m, %bb.f ]
  %.in.i.i.i.i.i.i = phi ptr [ %i.d, %.thread.i.i.i.i.i.i ], [ %i.l, %bb.f ]
  %i.n = load i32, ptr %.in.i.i.i.i.i.i, align 4, !alias.scope !2843, !noalias !2844, !noundef !10
  store i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i.i, ptr %i.d, align 4, !alias.scope !2843, !noalias !2844
  %i.o = trunc i32 %i.n to i16
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResulttNtNtNtCshhqnaxk4GqT_4rand5distr7uniform5ErrorE6unwrapCs44McOc0n4RX_13interop_tests.exit

bb.g:                                             ; preds = %bb.b
  %i.p = zext i16 %i.b to i32
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10) ]
  %i.q = getelementptr inbounds nuw i8, ptr %.val10, i64 16 ; 9 uses
  %i.r = load i32, ptr %i.q, align 4, !alias.scope !2847, !noalias !2848, !noundef !10 ; 3 uses
  %i.s = icmp ugt i32 %i.r, 63
  br i1 %i.s, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %.val10, i64 272 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val10, i64 320
  %i.v = load i64, ptr %i.u, align 4, !alias.scope !2849, !noalias !2850
  %i.w = icmp ugt i64 %i.v, 1023
  br i1 %i.w, label %bb.i, label %.thread.i.i.i.i13.i.i, !prof !9

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvMs_NtNtCshhqnaxk4GqT_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.t) #28, !noalias !2850
  br label %.thread.i.i.i.i13.i.i

.thread.i.i.i.i13.i.i:                            ; preds = %bb.i, %bb.h
  tail call void @_RNvXs_NtCs1aYz1mjYrQZ_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core5block9Generator8generateCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.t, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.q), !noalias !2848
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs44McOc0n4RX_13interop_tests.exit.i.i

bb.j:                                             ; preds = %bb.g
  %i.x = zext nneg i32 %i.r to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.x
  %i.z = add nuw nsw i32 %i.r, 1
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs44McOc0n4RX_13interop_tests.exit.i.i

_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs44McOc0n4RX_13interop_tests.exit.i.i: ; preds = %bb.j, %.thread.i.i.i.i13.i.i
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i11.i.i = phi i32 [ 1, %.thread.i.i.i.i13.i.i ], [ %i.z, %bb.j ] ; 4 uses
  %.in.i.i.i.i12.i.i = phi ptr [ %i.q, %.thread.i.i.i.i13.i.i ], [ %i.y, %bb.j ]
  %i.aa = load i32, ptr %.in.i.i.i.i12.i.i, align 4, !alias.scope !2847, !noalias !2848, !noundef !10
  store i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i11.i.i, ptr %i.q, align 4, !alias.scope !2847, !noalias !2848
  %i.ab = zext i32 %i.aa to i64
  %i.ac = zext i16 %i.b to i64                    ; 2 uses
  %i.ad = mul nuw nsw i64 %i.ab, %i.ac            ; 2 uses
  %i.ae = lshr i64 %i.ad, 32
  %i.af = trunc nuw i64 %i.ae to i16              ; 2 uses
  %i.ag = trunc i64 %i.ad to i32                  ; 2 uses
  %i.ah = sub nsw i32 0, %i.p
  %i.ai = icmp ugt i32 %i.ag, %i.ah
  br i1 %i.ai, label %bb.k, label %bb.o

bb.k:                                             ; preds = %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs44McOc0n4RX_13interop_tests.exit.i.i
  %i.aj = icmp samesign ugt i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i11.i.i, 63
  br i1 %i.aj, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %.val10, i64 272 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val10, i64 320
  %i.am = load i64, ptr %i.al, align 4, !alias.scope !2851, !noalias !2852
  %i.an = icmp ugt i64 %i.am, 1023
  br i1 %i.an, label %bb.m, label %.thread.i.i.i.i16.i.i, !prof !9

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvMs_NtNtCshhqnaxk4GqT_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.ak) #28, !noalias !2852
  br label %.thread.i.i.i.i16.i.i

.thread.i.i.i.i16.i.i:                            ; preds = %bb.m, %bb.l
  tail call void @_RNvXs_NtCs1aYz1mjYrQZ_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core5block9Generator8generateCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.ak, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.q), !noalias !2853
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs44McOc0n4RX_13interop_tests.exit17.i.i

bb.n:                                             ; preds = %bb.k
  %i.ao = zext nneg i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i11.i.i to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ao
  %i.aq = add nuw nsw i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i11.i.i, 1
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs44McOc0n4RX_13interop_tests.exit17.i.i

_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs44McOc0n4RX_13interop_tests.exit17.i.i: ; preds = %bb.n, %.thread.i.i.i.i16.i.i
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i14.i.i = phi i32 [ 1, %.thread.i.i.i.i16.i.i ], [ %i.aq, %bb.n ]
  %.in.i.i.i.i15.i.i = phi ptr [ %i.q, %.thread.i.i.i.i16.i.i ], [ %i.ap, %bb.n ]
  %i.ar = load i32, ptr %.in.i.i.i.i15.i.i, align 4, !alias.scope !2854, !noalias !2853, !noundef !10
  store i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i14.i.i, ptr %i.q, align 4, !alias.scope !2854, !noalias !2853
  %i.as = zext i32 %i.ar to i64
  %i.at = mul nuw nsw i64 %i.as, %i.ac
  %i.au = lshr i64 %i.at, 32
  %i.av = trunc nuw nsw i64 %i.au to i32
  %i.aw = xor i32 %i.ag, -1
  %.not8.i.i = icmp samesign ult i32 %i.aw, %i.av
  %i.ax = zext i1 %.not8.i.i to i16
  %i.ay = add nuw i16 %i.ax, %i.af
  br label %bb.o

bb.o:                                             ; preds = %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs44McOc0n4RX_13interop_tests.exit17.i.i, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs44McOc0n4RX_13interop_tests.exit.i.i
  %.sroa.03.0.i.i = phi i16 [ %i.ay, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs44McOc0n4RX_13interop_tests.exit17.i.i ], [ %i.af, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs44McOc0n4RX_13interop_tests.exit.i.i ]
  %i.az = add i16 %.sroa.03.0.i.i, %.sroa.0.0.extract.trunc
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResulttNtNtNtCshhqnaxk4GqT_4rand5distr7uniform5ErrorE6unwrapCs44McOc0n4RX_13interop_tests.exit

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResulttNtNtNtCshhqnaxk4GqT_4rand5distr7uniform5ErrorE6unwrapCs44McOc0n4RX_13interop_tests.exit: ; preds = %bb.o, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomtECs44McOc0n4RX_13interop_tests.exit.i.i
  %.sroa.5.0.i.i = phi i16 [ %i.o, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomtECs44McOc0n4RX_13interop_tests.exit.i.i ], [ %i.az, %bb.o ]
  ret i16 %.sroa.5.0.i.i

bb.p:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #30
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangeyINtNtNtCskKLDkoKarTP_4core3ops5range5RangeyEECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.not = icmp ult i64 %1, %2
  br i1 %.not, label %bb.b, label %bb.l, !prof !27

bb.b:                                             ; preds = %bb.a
  %.val2 = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10 ; 9 uses
  %i.a = sub nuw i64 %2, %1
  %i.b = getelementptr inbounds nuw i8, ptr %.val2, i64 16 ; 9 uses
  %i.c = load i32, ptr %i.b, align 4, !noalias !2875, !noundef !10 ; 4 uses
  %i.d = icmp ult i32 %i.c, 63
  br i1 %i.d, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val2, i64 268
  %i.f = load i32, ptr %i.e, align 4, !alias.scope !2876, !noalias !2877, !noundef !10
  %i.g = getelementptr inbounds nuw i8, ptr %.val2, i64 272 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val2, i64 320
  %i.i = load i64, ptr %i.h, align 4, !alias.scope !2878, !noalias !2879
  %i.j = icmp ugt i64 %i.i, 1023
  br i1 %i.j, label %bb.d, label %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i, !prof !9

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs_NtNtCshhqnaxk4GqT_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.g) #28, !noalias !2879
  br label %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i

_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i: ; preds = %bb.d, %bb.c
  tail call void @_RNvXs_NtCs1aYz1mjYrQZ_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core5block9Generator8generateCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.g, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.b), !noalias !2877
  %i.k = load i32, ptr %i.b, align 4, !alias.scope !2876, !noalias !2877, !noundef !10 ; 2 uses
  %.not.i.i.i.i10.i.i.i = icmp eq i32 %i.c, 63
  br i1 %.not.i.i.i.i10.i.i.i, label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs44McOc0n4RX_13interop_tests.exit14.i.i.i, label %bb.e

bb.e:                                             ; preds = %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.val2, i64 20
  %i.m = load i32, ptr %i.l, align 4, !alias.scope !2876, !noalias !2877, !noundef !10
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs44McOc0n4RX_13interop_tests.exit14.i.i.i

bb.f:                                             ; preds = %bb.b
  %i.n = zext nneg i32 %i.c to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.n ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !alias.scope !2876, !noalias !2877, !noundef !10
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.r = load i32, ptr %i.q, align 4, !alias.scope !2876, !noalias !2877, !noundef !10
  %i.s = add nuw nsw i32 %i.c, 2
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs44McOc0n4RX_13interop_tests.exit14.i.i.i

_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs44McOc0n4RX_13interop_tests.exit14.i.i.i: ; preds = %bb.f, %bb.e, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i
  %.sroa.0.018.i.i.i.i11.i.i.i = phi i32 [ %i.s, %bb.f ], [ 1, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i ], [ 2, %bb.e ] ; 5 uses
  %.sroa.02.017.i.i.i.i12.i.i.i = phi i32 [ %i.p, %bb.f ], [ %i.f, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i ], [ %i.k, %bb.e ]
  %.sroa.03.016.i.i.i.i13.i.i.i = phi i32 [ %i.r, %bb.f ], [ %i.k, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i ], [ %i.m, %bb.e ]
  store i32 %.sroa.0.018.i.i.i.i11.i.i.i, ptr %i.b, align 4, !alias.scope !2876, !noalias !2877
  %i.t = zext i32 %.sroa.03.016.i.i.i.i13.i.i.i to i64
  %i.u = shl nuw i64 %i.t, 32
  %i.v = zext i32 %.sroa.02.017.i.i.i.i12.i.i.i to i64
  %i.w = or disjoint i64 %i.u, %i.v
  %i.x = zext i64 %i.w to i128
  %i.y = zext i64 %i.a to i128                    ; 2 uses
  %i.z = mul nuw i128 %i.x, %i.y                  ; 2 uses
  %i.aa = lshr i128 %i.z, 64
  %i.ab = trunc nuw i128 %i.aa to i64             ; 2 uses
  %i.ac = trunc i128 %i.z to i64                  ; 2 uses
  %i.ad = sub i64 %1, %2
  %i.ae = icmp ult i64 %i.ad, %i.ac
  br i1 %i.ae, label %bb.g, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultyNtNtNtCshhqnaxk4GqT_4rand5distr7uniform5ErrorE6unwrapCs44McOc0n4RX_13interop_tests.exit

bb.g:                                             ; preds = %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs44McOc0n4RX_13interop_tests.exit14.i.i.i
  %i.af = icmp samesign ult i32 %.sroa.0.018.i.i.i.i11.i.i.i, 63
  br i1 %i.af, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %.val2, i64 268
  %i.ah = load i32, ptr %i.ag, align 4, !alias.scope !2880, !noalias !2881, !noundef !10
  %i.ai = getelementptr inbounds nuw i8, ptr %.val2, i64 272 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val2, i64 320
  %i.ak = load i64, ptr %i.aj, align 4, !alias.scope !2882, !noalias !2883
  %i.al = icmp ugt i64 %i.ak, 1023
  br i1 %i.al, label %bb.i, label %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i, !prof !9

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvMs_NtNtCshhqnaxk4GqT_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.ai) #28, !noalias !2883
  br label %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i

_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i: ; preds = %bb.i, %bb.h
  tail call void @_RNvXs_NtCs1aYz1mjYrQZ_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core5block9Generator8generateCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.ai, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.b), !noalias !2881
  %i.am = load i32, ptr %i.b, align 4, !alias.scope !2880, !noalias !2881, !noundef !10 ; 2 uses
  %.not.i.i.i.i16.i.i.i = icmp eq i32 %.sroa.0.018.i.i.i.i11.i.i.i, 63
  br i1 %.not.i.i.i.i16.i.i.i, label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs44McOc0n4RX_13interop_tests.exit20.i.i.i, label %bb.j

bb.j:                                             ; preds = %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.val2, i64 20
  %i.ao = load i32, ptr %i.an, align 4, !alias.scope !2880, !noalias !2881, !noundef !10
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs44McOc0n4RX_13interop_tests.exit20.i.i.i

bb.k:                                             ; preds = %bb.g
  %i.ap = zext nneg i32 %.sroa.0.018.i.i.i.i11.i.i.i to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ap ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !alias.scope !2880, !noalias !2881, !noundef !10
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.at = load i32, ptr %i.as, align 4, !alias.scope !2880, !noalias !2881, !noundef !10
  %i.au = add nuw nsw i32 %.sroa.0.018.i.i.i.i11.i.i.i, 2
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs44McOc0n4RX_13interop_tests.exit20.i.i.i

_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs44McOc0n4RX_13interop_tests.exit20.i.i.i: ; preds = %bb.k, %bb.j, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i
  %.sroa.0.018.i.i.i.i17.i.i.i = phi i32 [ %i.au, %bb.k ], [ 1, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i ], [ 2, %bb.j ]
  %.sroa.02.017.i.i.i.i18.i.i.i = phi i32 [ %i.ar, %bb.k ], [ %i.ah, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i ], [ %i.am, %bb.j ]
  %.sroa.03.016.i.i.i.i19.i.i.i = phi i32 [ %i.at, %bb.k ], [ %i.am, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i ], [ %i.ao, %bb.j ]
  store i32 %.sroa.0.018.i.i.i.i17.i.i.i, ptr %i.b, align 4, !alias.scope !2880, !noalias !2881
  %i.av = zext i32 %.sroa.03.016.i.i.i.i19.i.i.i to i64
  %i.aw = shl nuw i64 %i.av, 32
  %i.ax = zext i32 %.sroa.02.017.i.i.i.i18.i.i.i to i64
  %i.ay = or disjoint i64 %i.aw, %i.ax
  %4 = zext i64 %i.ay to i128
  %5 = mul nuw i128 %4, %i.y
  %6 = lshr i128 %5, 64
  %7 = trunc nuw i128 %6 to i64
  %i.az = xor i64 %i.ac, -1
  %.not6.i.i.i = icmp ult i64 %i.az, %7
  %i.ba = zext i1 %.not6.i.i.i to i64
  %i.bb = add nuw i64 %i.ba, %i.ab
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultyNtNtNtCshhqnaxk4GqT_4rand5distr7uniform5ErrorE6unwrapCs44McOc0n4RX_13interop_tests.exit

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultyNtNtNtCshhqnaxk4GqT_4rand5distr7uniform5ErrorE6unwrapCs44McOc0n4RX_13interop_tests.exit: ; preds = %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs44McOc0n4RX_13interop_tests.exit20.i.i.i, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs44McOc0n4RX_13interop_tests.exit14.i.i.i
  %.sroa.01.0.i.i.i = phi i64 [ %i.bb, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs44McOc0n4RX_13interop_tests.exit20.i.i.i ], [ %i.ab, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs44McOc0n4RX_13interop_tests.exit14.i.i.i ]
  %i.bc = add i64 %.sroa.01.0.i.i.i, %1
  ret i64 %i.bc

bb.l:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #30
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMNtNtCs4LZN9PPmi2I_11hickory_net3tcp17tcp_client_streamINtB5_15TcpClientStreamINtNtNtB9_7runtime8iocompat17AsyncIoTokioAsStdNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEE8exchangeNtNtB1p_13tokio_runtime20TokioRuntimeProviderE0Cs44McOc0n4RX_13interop_tests(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [656 x i8], align 8               ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [56 x i8], align 8                ; 4 uses
  %i.f = alloca [216 x i8], align 8               ; 8 uses
  %i.g = alloca [216 x i8], align 8               ; 17 uses
  %.sroa.1229.i = alloca [64 x i8], align 8       ; 5 uses
  %.sroa.5.i = alloca [16 x i8], align 8          ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 8 uses
  %i.i = alloca [32 x i8], align 4                ; 5 uses
  %i.j = alloca [32 x i8], align 4                ; 5 uses
  %.sroa.3108 = alloca [28 x i8], align 4         ; 3 uses
  %.sroa.4110 = alloca [32 x i8], align 8         ; 2 uses
  %i.k = alloca [352 x i8], align 8               ; 17 uses
  %i.l = alloca [680 x i8], align 8               ; 6 uses
  %i.m = alloca [656 x i8], align 8               ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.1242 = alloca [60 x i8], align 4         ; 2 uses
  %i.o = alloca [56 x i8], align 8                ; 5 uses
  %.sroa.3.sroa.3 = alloca [28 x i8], align 4     ; 5 uses
  %.sroa.3.sroa.5 = alloca [32 x i8], align 8     ; 5 uses
  %.sroa.3.sroa.7 = alloca [144 x i8], align 8    ; 4 uses
  %.sroa.14 = alloca [60 x i8], align 4           ; 8 uses
  %.sroa.032.sroa.10.sroa.10 = alloca [28 x i8], align 4 ; 9 uses
  %.sroa.032.sroa.10.sroa.11 = alloca [32 x i8], align 8 ; 9 uses
  %.sroa.032.sroa.11 = alloca [144 x i8], align 8 ; 9 uses
  %.sroa.13 = alloca [32 x i8], align 8           ; 9 uses
  %i.p = alloca [248 x i8], align 8               ; 6 uses
  %i.q = alloca [192 x i8], align 8               ; 9 uses
  %i.r = alloca [32 x i8], align 4                ; 7 uses
  %i.s = alloca [32 x i8], align 4                ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 3 uses
  %i.u = load i8, ptr %i.t, align 8, !range !30, !noundef !10
  switch i8 %i.u, label %default.unreachable131 [
    i8 0, label %bb.b
    i8 1, label %bb.j
    i8 2, label %bb.k
    i8 3, label %bb.d
  ]

default.unreachable131:                           ; preds = %bb.l, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 403 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 402 ; 2 uses
  store i8 0, ptr %i.w, align 2
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 401 ; 2 uses
  store i8 0, ptr %i.x, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.z, i64 32, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !10
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ae = load i32, ptr %i.ad, align 8, !range !43, !noundef !10
  store i64 %i.ac, ptr %i.aa, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  store i32 %i.ae, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ah = load <2 x i64>, ptr %1, align 8
  store <2 x i64> %i.ah, ptr %i.ag, align 8
  store i8 1, ptr %i.v, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !10, !noundef !10 ; 3 uses
  store ptr %i.ak, ptr %i.ai, align 8
  %i.al = atomicrmw add ptr %i.ak, i64 1 monotonic, align 8
  %i.am = icmp slt i64 %i.al, 0
  br i1 %i.am, label %bb.c, label %_RNvXs0_NtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtimeNtB5_20TokioRuntimeProviderNtB7_15RuntimeProvider13create_handle.exit

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.032.sroa.10.sroa.10)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.032.sroa.10.sroa.11)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.032.sroa.11)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  br label %bb.l

_RNvXs0_NtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtimeNtB5_20TokioRuntimeProviderNtB7_15RuntimeProvider13create_handle.exit: ; preds = %bb.b
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 144
  store ptr %i.ak, ptr %i.an, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.ao = load i64, ptr %i.aa, align 8, !noundef !10
  %i.ap = load i32, ptr %i.af, align 8, !range !43, !noundef !10
  store i8 0, ptr %i.v, align 1
  %i.aq = load ptr, ptr %i.ai, align 8, !nonnull !10, !noundef !10
  invoke void @_RINvMNtNtCs4LZN9PPmi2I_11hickory_net3tcp17tcp_client_streamINtB3_15TcpClientStreamINtNtNtB7_7runtime8iocompat17AsyncIoTokioAsStdNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEE3newNtNtB1n_13tokio_runtime20TokioRuntimeProviderECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull sret([248 x i8]) align 8 captures(none) dereferenceable(248) %i.p, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %i.s, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %i.r, i64 %i.ao, i32 noundef %i.ap, ptr noundef nonnull %i.aq)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %_RNvXs0_NtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtimeNtB5_20TokioRuntimeProviderNtB7_15RuntimeProvider13create_handle.exit
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.h

bb.f:                                             ; preds = %_RNvXs0_NtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtimeNtB5_20TokioRuntimeProviderNtB7_15RuntimeProvider13create_handle.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.q, ptr noundef nonnull align 8 dereferenceable(192) %i.p, i64 192, i1 false)
  store i8 1, ptr %i.x, align 1
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.at = getelementptr inbounds nuw i8, ptr %i.p, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.as, ptr noundef nonnull align 8 dereferenceable(56) %i.at, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.032.sroa.10.sroa.10)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.032.sroa.10.sroa.11)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.032.sroa.11)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  store i8 0, ptr %i.w, align 2
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.au, ptr noundef nonnull align 8 dereferenceable(192) %i.q, i64 192, i1 false)
  br label %bb.l

bb.g:                                             ; preds = %bb.ap, %.body, %.body19
  %.pn7.pn = phi { ptr, i32 } [ %i.dr, %.body19 ], [ %i.dm, %bb.ap ], [ %.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  br label %bb.bt

bb.h:                                             ; preds = %bb.ca, %bb.e
  %.pn11.pn = phi { ptr, i32 } [ %.pn11, %bb.ca ], [ %i.ar, %bb.e ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2954)
  call void @llvm.experimental.noalias.scope.decl(metadata !2955)
  call void @llvm.experimental.noalias.scope.decl(metadata !2956)
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !2957, !nonnull !10, !noundef !10
  %i.ax = atomicrmw sub ptr %i.aw, i64 1 release, align 8, !noalias !2957
  %i.ay = icmp eq i64 %i.ax, 1
  br i1 %i.ay, label %bb.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime11TokioHandleECs44McOc0n4RX_13interop_tests.exit

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtNtCsc13h7DQFCSE_5tokio4task8join_set7JoinSetuEEE9drop_slowCsa9Jrx9KOzzM_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.av) #28
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime11TokioHandleECs44McOc0n4RX_13interop_tests.exit unwind label %bb.bs

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime11TokioHandleECs44McOc0n4RX_13interop_tests.exit: ; preds = %bb.h, %bb.i, %bb.br
  %.pn14 = phi { ptr, i32 } [ %i.fn, %bb.br ], [ %.pn11.pn, %bb.h ], [ %.pn11.pn, %bb.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 403 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !range !23, !noundef !10
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.cc, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderECs44McOc0n4RX_13interop_tests.exit

bb.j:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #30
  unreachable

bb.k:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #30
  unreachable

bb.l:                                             ; preds = %bb.d, %bb.f
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1229.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 4 uses
  %i.be = load i8, ptr %i.bd, align 8, !range !30, !noalias !2958, !noundef !10
  switch i8 %i.be, label %default.unreachable131 [
    i8 0, label %bb.m
    i8 1, label %bb.q
    i8 2, label %bb.r
    i8 3, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 393
  store i8 1, ptr %i.bf, align 1, !noalias !2958
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 368
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2958
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.bh, i64 32, i1 false), !noalias !2958
end_hunk_0
begin_hunk_1_@_RNvYINtNtCskKLDkoKarTP_4core3pin3PinQNCINvNtCs5xzCmWPONXx_11libp2p_quic13hole_punching11punch_holesNtNtNtBG_8provider5tokio8ProviderE0ENtNtNtCsl9hx9jpF0W9_12futures_util6future6future9FutureExt10poll_unpinCs44McOc0n4RX_13interop_tests:bb.a
bb.at:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4434
  %i.dg = extractvalue { ptr, ptr } %i.de, 0      ; 2 uses
  %i.dh = extractvalue { ptr, ptr } %i.de, 1      ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.val, i64 104
  store ptr %i.dg, ptr %i.di, align 8, !noalias !4434
  %i.dj = getelementptr inbounds nuw i8, ptr %.val, i64 112
  store ptr %i.dh, ptr %i.dj, align 8, !noalias !4434
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %._crit_edge.i.i
  %.val1.i71.i.i = phi ptr [ %.val1.i71.pre.i.i, %._crit_edge.i.i ], [ %i.dh, %bb.at ]
  %.val.i70.i.i = phi ptr [ %.val.i70.pre.i.i, %._crit_edge.i.i ], [ %i.dg, %bb.at ]
  %i.dk = getelementptr inbounds nuw i8, ptr %.val, i64 104 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4437)
  %i.dl = getelementptr inbounds nuw i8, ptr %.val, i64 112 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.val1.i71.i.i, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8, !invariant.load !10, !noalias !4447, !nonnull !10
  %i.do = invoke { i64, ptr } %i.dn(ptr noundef nonnull %.val.i70.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) #29
          to label %_RNvXs_NtNtCskKLDkoKarTP_4core6future6futureINtNtB8_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultjNtNtNtB8_2io5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs44McOc0n4RX_13interop_tests.exit.i.i unwind label %bb.av, !noalias !4439, !inline_history !4448 ; 2 uses

bb.av:                                            ; preds = %bb.au
  %i.dp = landingpad { ptr, i32 }
          cleanup
  %.val48.i.i = load ptr, ptr %i.dk, align 8, !noalias !4434
  %.val49.i.i = load ptr, ptr %i.dl, align 8, !noalias !4434, !nonnull !10, !align !17, !noundef !10
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendEL_EEECs44McOc0n4RX_13interop_tests(ptr %.val48.i.i, ptr nonnull %.val49.i.i) #27
          to label %.body.i.i unwind label %bb.cb, !noalias !4439

_RNvXs_NtNtCskKLDkoKarTP_4core6future6futureINtNtB8_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultjNtNtNtB8_2io5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs44McOc0n4RX_13interop_tests.exit.i.i: ; preds = %bb.au
  %i.dq = extractvalue { i64, ptr } %i.do, 0      ; 2 uses
  %i.dr = icmp eq i64 %i.dq, 2
  br i1 %i.dr, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %_RNvXs_NtNtCskKLDkoKarTP_4core6future6futureINtNtB8_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultjNtNtNtB8_2io5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs44McOc0n4RX_13interop_tests.exit.i.i
  store i64 -1, ptr %0, align 8, !alias.scope !4439, !noalias !4441
  br label %_RNvXs_NtNtCskKLDkoKarTP_4core6future6futureINtNtB8_3pin3PinQNCINvNtCs5xzCmWPONXx_11libp2p_quic13hole_punching11punch_holesNtNtNtB13_8provider5tokio8ProviderE0ENtB4_6Future4pollCs44McOc0n4RX_13interop_tests.exit

bb.ax:                                            ; preds = %_RNvXs_NtNtCskKLDkoKarTP_4core6future6futureINtNtB8_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultjNtNtNtB8_2io5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs44McOc0n4RX_13interop_tests.exit.i.i
  %.val46.i.i = load ptr, ptr %i.dk, align 8, !noalias !4434 ; 5 uses
  %.val47.i.i = load ptr, ptr %i.dl, align 8, !noalias !4434, !nonnull !10, !align !17, !noundef !10 ; 5 uses
  %i.ds = load ptr, ptr %.val47.i.i, align 8, !invariant.load !10, !noalias !4439 ; 2 uses
  %.not.i.i73.i.i = icmp eq ptr %i.ds, null
  br i1 %.not.i.i73.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val46.i.i) ]
  invoke void %i.ds(ptr noundef nonnull %.val46.i.i)
          to label %bb.az unwind label %bb.bb, !noalias !4439

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.dt = getelementptr inbounds nuw i8, ptr %.val47.i.i, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !range !13, !invariant.load !10, !noalias !4439 ; 2 uses
  %i.dv = icmp eq i64 %i.du, 0
  br i1 %i.dv, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendEL_EEECs44McOc0n4RX_13interop_tests.exit.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.dw = getelementptr inbounds nuw i8, ptr %.val47.i.i, i64 16
  %i.dx = load i64, ptr %i.dw, align 8, !range !14, !invariant.load !10, !noalias !4439
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val46.i.i) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val46.i.i, i64 noundef range(i64 1, 0) %i.du, i64 noundef range(i64 1, 536870913) %i.dx) #25, !noalias !4439
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendEL_EEECs44McOc0n4RX_13interop_tests.exit.i.i

bb.bb:                                            ; preds = %bb.ay
  %i.dy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.val47.i.i, i64 8
  %i.ea = load i64, ptr %i.dz, align 8, !range !13, !invariant.load !10, !noalias !4439 ; 2 uses
  %i.eb = icmp eq i64 %i.ea, 0
  br i1 %i.eb, label %.body.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ec = getelementptr inbounds nuw i8, ptr %.val47.i.i, i64 16
  %i.ed = load i64, ptr %i.ec, align 8, !range !14, !invariant.load !10, !noalias !4439
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val46.i.i, i64 noundef range(i64 1, 0) %i.ea, i64 noundef range(i64 1, 536870913) %i.ed) #25, !noalias !4439
  br label %.body.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendEL_EEECs44McOc0n4RX_13interop_tests.exit.i.i: ; preds = %bb.ba, %bb.az
  %i.ee = trunc nuw i64 %i.dq to i1
  br i1 %i.ee, label %bb.bw, label %bb.be

bb.bd:                                            ; preds = %bb.br, %bb.be
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.be:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendEL_EEECs44McOc0n4RX_13interop_tests.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4449
  %i.eg = invoke noundef nonnull ptr @_RNvNtNtCshhqnaxk4GqT_4rand4rngs6thread3rng()
          to label %bb.bf unwind label %bb.bd, !noalias !4439 ; 10 uses

bb.bf:                                            ; preds = %bb.be
  store ptr %i.eg, ptr %i.a, align 8, !noalias !4449
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16 ; 9 uses
  %i.ei = load i32, ptr %i.eh, align 4, !noalias !4450, !noundef !10 ; 4 uses
  %i.ej = icmp ult i32 %i.ei, 63
  br i1 %i.ej, label %bb.bj, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 268
  %i.el = load i32, ptr %i.ek, align 4, !alias.scope !4451, !noalias !4452, !noundef !10
  %i.em = getelementptr inbounds nuw i8, ptr %i.eg, i64 272 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.eg, i64 320
  %i.eo = load i64, ptr %i.en, align 4, !alias.scope !4453, !noalias !4454
  %i.ep = icmp ugt i64 %i.eo, 1023
  br i1 %i.ep, label %bb.bh, label %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i.i.i.i, !prof !9

bb.bh:                                            ; preds = %bb.bg
  invoke void @_RNvMs_NtNtCshhqnaxk4GqT_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.em) #28
          to label %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i.i.i.i unwind label %bb.bp, !noalias !4455

_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i.i.i.i: ; preds = %bb.bh, %bb.bg
  invoke void @_RNvXs_NtCs1aYz1mjYrQZ_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core5block9Generator8generateCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.em, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.eh)
          to label %.noexc4.i.i.i unwind label %bb.bp, !noalias !4455

.noexc4.i.i.i:                                    ; preds = %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i.i.i.i
  %i.eq = load i32, ptr %i.eh, align 4, !alias.scope !4451, !noalias !4452, !noundef !10 ; 2 uses
  %.not.i.i.i.i10.i.i.i.i.i.i = icmp eq i32 %i.ei, 63
  br i1 %.not.i.i.i.i10.i.i.i.i.i.i, label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs44McOc0n4RX_13interop_tests.exit14.i.i.i.i.i.i, label %bb.bi

bb.bi:                                            ; preds = %.noexc4.i.i.i
  %i.er = getelementptr inbounds nuw i8, ptr %i.eg, i64 20
  %i.es = load i32, ptr %i.er, align 4, !alias.scope !4451, !noalias !4452, !noundef !10
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs44McOc0n4RX_13interop_tests.exit14.i.i.i.i.i.i

bb.bj:                                            ; preds = %bb.bf
  %i.et = zext nneg i32 %i.ei to i64
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.et ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 4, !alias.scope !4451, !noalias !4452, !noundef !10
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 4
  %i.ex = load i32, ptr %i.ew, align 4, !alias.scope !4451, !noalias !4452, !noundef !10
  %i.ey = add nuw nsw i32 %i.ei, 2
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs44McOc0n4RX_13interop_tests.exit14.i.i.i.i.i.i

_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs44McOc0n4RX_13interop_tests.exit14.i.i.i.i.i.i: ; preds = %bb.bj, %bb.bi, %.noexc4.i.i.i
  %.sroa.0.018.i.i.i.i11.i.i.i.i.i.i = phi i32 [ %i.ey, %bb.bj ], [ 1, %.noexc4.i.i.i ], [ 2, %bb.bi ] ; 5 uses
  %.sroa.02.017.i.i.i.i12.i.i.i.i.i.i = phi i32 [ %i.ev, %bb.bj ], [ %i.el, %.noexc4.i.i.i ], [ %i.eq, %bb.bi ]
  %.sroa.03.016.i.i.i.i13.i.i.i.i.i.i = phi i32 [ %i.ex, %bb.bj ], [ %i.eq, %.noexc4.i.i.i ], [ %i.es, %bb.bi ]
  store i32 %.sroa.0.018.i.i.i.i11.i.i.i.i.i.i, ptr %i.eh, align 4, !alias.scope !4451, !noalias !4452
  %i.ez = zext i32 %.sroa.03.016.i.i.i.i13.i.i.i.i.i.i to i64
  %i.fa = shl nuw i64 %i.ez, 32
  %i.fb = zext i32 %.sroa.02.017.i.i.i.i12.i.i.i.i.i.i to i64
  %i.fc = or disjoint i64 %i.fa, %i.fb
  %i.fd = zext i64 %i.fc to i128
  %i.fe = mul nuw nsw i128 %i.fd, 191             ; 2 uses
  %i.ff = lshr i128 %i.fe, 64
  %i.fg = trunc nuw nsw i128 %i.ff to i32         ; 2 uses
  %i.fh = trunc i128 %i.fe to i64                 ; 2 uses
  %i.fi = icmp ugt i64 %i.fh, -191
  br i1 %i.fi, label %bb.bk, label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangeyINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusiveyEECs44McOc0n4RX_13interop_tests.exit.i.i.i

bb.bk:                                            ; preds = %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs44McOc0n4RX_13interop_tests.exit14.i.i.i.i.i.i
  %i.fj = icmp samesign ult i32 %.sroa.0.018.i.i.i.i11.i.i.i.i.i.i, 63
  br i1 %i.fj, label %bb.bo, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.fk = getelementptr inbounds nuw i8, ptr %i.eg, i64 268
  %i.fl = load i32, ptr %i.fk, align 4, !alias.scope !4456, !noalias !4457, !noundef !10
  %i.fm = getelementptr inbounds nuw i8, ptr %i.eg, i64 272 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.eg, i64 320
  %i.fo = load i64, ptr %i.fn, align 4, !alias.scope !4458, !noalias !4459
  %i.fp = icmp ugt i64 %i.fo, 1023
  br i1 %i.fp, label %bb.bm, label %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i.i.i.i, !prof !9

bb.bm:                                            ; preds = %bb.bl
  invoke void @_RNvMs_NtNtCshhqnaxk4GqT_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.fm) #28
          to label %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i.i.i.i unwind label %bb.bp, !noalias !4455

_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i.i.i.i: ; preds = %bb.bm, %bb.bl
  invoke void @_RNvXs_NtCs1aYz1mjYrQZ_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core5block9Generator8generateCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.fm, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.eh)
          to label %.noexc6.i.i.i unwind label %bb.bp, !noalias !4455

.noexc6.i.i.i:                                    ; preds = %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i.i.i.i
  %i.fq = load i32, ptr %i.eh, align 4, !alias.scope !4456, !noalias !4457, !noundef !10 ; 2 uses
  %.not.i.i.i.i16.i.i.i.i.i.i = icmp eq i32 %.sroa.0.018.i.i.i.i11.i.i.i.i.i.i, 63
  br i1 %.not.i.i.i.i16.i.i.i.i.i.i, label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs44McOc0n4RX_13interop_tests.exit20.i.i.i.i.i.i, label %bb.bn

bb.bn:                                            ; preds = %.noexc6.i.i.i
  %i.fr = getelementptr inbounds nuw i8, ptr %i.eg, i64 20
  %i.fs = load i32, ptr %i.fr, align 4, !alias.scope !4456, !noalias !4457, !noundef !10
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs44McOc0n4RX_13interop_tests.exit20.i.i.i.i.i.i

bb.bo:                                            ; preds = %bb.bk
  %i.ft = zext nneg i32 %.sroa.0.018.i.i.i.i11.i.i.i.i.i.i to i64
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.ft ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 4, !alias.scope !4456, !noalias !4457, !noundef !10
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 4
  %i.fx = load i32, ptr %i.fw, align 4, !alias.scope !4456, !noalias !4457, !noundef !10
  %i.fy = add nuw nsw i32 %.sroa.0.018.i.i.i.i11.i.i.i.i.i.i, 2
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs44McOc0n4RX_13interop_tests.exit20.i.i.i.i.i.i

_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs44McOc0n4RX_13interop_tests.exit20.i.i.i.i.i.i: ; preds = %bb.bo, %bb.bn, %.noexc6.i.i.i
  %.sroa.0.018.i.i.i.i17.i.i.i.i.i.i = phi i32 [ %i.fy, %bb.bo ], [ 1, %.noexc6.i.i.i ], [ 2, %bb.bn ]
  %.sroa.02.017.i.i.i.i18.i.i.i.i.i.i = phi i32 [ %i.fv, %bb.bo ], [ %i.fl, %.noexc6.i.i.i ], [ %i.fq, %bb.bn ]
  %.sroa.03.016.i.i.i.i19.i.i.i.i.i.i = phi i32 [ %i.fx, %bb.bo ], [ %i.fq, %.noexc6.i.i.i ], [ %i.fs, %bb.bn ]
  store i32 %.sroa.0.018.i.i.i.i17.i.i.i.i.i.i, ptr %i.eh, align 4, !alias.scope !4456, !noalias !4457
  %i.fz = zext i32 %.sroa.03.016.i.i.i.i19.i.i.i.i.i.i to i64
  %i.ga = shl nuw i64 %i.fz, 32
  %i.gb = zext i32 %.sroa.02.017.i.i.i.i18.i.i.i.i.i.i to i64
  %i.gc = or disjoint i64 %i.ga, %i.gb
  %3 = zext i64 %i.gc to i128
  %4 = mul nuw nsw i128 %3, 191
  %5 = lshr i128 %4, 64
  %6 = trunc nuw nsw i128 %5 to i64
  %i.gd = xor i64 %i.fh, -1
  %.not6.i.i.i.i.i.i = icmp samesign ult i64 %i.gd, %6
  %i.ge = zext i1 %.not6.i.i.i.i.i.i to i32
  %i.gf = add nuw nsw i32 %i.ge, %i.fg
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangeyINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusiveyEECs44McOc0n4RX_13interop_tests.exit.i.i.i

bb.bp:                                            ; preds = %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i.i.i.i, %bb.bm, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i.i.i.i, %bb.bh
  %i.gg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4460)
  call void @llvm.experimental.noalias.scope.decl(metadata !4461)
  call void @llvm.experimental.noalias.scope.decl(metadata !4462)
  %i.gh = load ptr, ptr %i.a, align 8, !alias.scope !4463, !noalias !4449, !nonnull !10, !noundef !10 ; 2 uses
  %i.gi = load i64, ptr %i.gh, align 8, !noalias !4464, !noundef !10
  %i.gj = add i64 %i.gi, -1                       ; 2 uses
  store i64 %i.gj, ptr %i.gh, align 8, !noalias !4464
  %i.gk = icmp eq i64 %i.gj, 0
  br i1 %i.gk, label %bb.bq, label %.body.i.i

bb.bq:                                            ; preds = %bb.bp
  invoke void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCskKLDkoKarTP_4core4cell10UnsafeCellINtNtCsenQHu2qVDfv_9rand_core5block8BlockRngNtNtNtCshhqnaxk4GqT_4rand4rngs6thread13ReseedingCoreEEE9drop_slowB26_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #28
          to label %.body.i.i unwind label %bb.bs, !noalias !4455

_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangeyINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusiveyEECs44McOc0n4RX_13interop_tests.exit.i.i.i: ; preds = %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs44McOc0n4RX_13interop_tests.exit20.i.i.i.i.i.i, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs44McOc0n4RX_13interop_tests.exit14.i.i.i.i.i.i
  %.sroa.01.0.i.i.i.i.i.i = phi i32 [ %i.gf, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs44McOc0n4RX_13interop_tests.exit20.i.i.i.i.i.i ], [ %i.fg, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs44McOc0n4RX_13interop_tests.exit14.i.i.i.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !4465)
  call void @llvm.experimental.noalias.scope.decl(metadata !4466)
  call void @llvm.experimental.noalias.scope.decl(metadata !4467)
  %i.gl = load ptr, ptr %i.a, align 8, !alias.scope !4468, !noalias !4449, !nonnull !10, !noundef !10 ; 2 uses
  %i.gm = load i64, ptr %i.gl, align 8, !noalias !4469, !noundef !10
  %i.gn = add i64 %i.gm, -1                       ; 2 uses
  store i64 %i.gn, ptr %i.gl, align 8, !noalias !4469
  %i.go = icmp eq i64 %i.gn, 0
  br i1 %i.go, label %bb.br, label %bb.bt

bb.br:                                            ; preds = %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangeyINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusiveyEECs44McOc0n4RX_13interop_tests.exit.i.i.i
  invoke void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCskKLDkoKarTP_4core4cell10UnsafeCellINtNtCsenQHu2qVDfv_9rand_core5block8BlockRngNtNtNtCshhqnaxk4GqT_4rand4rngs6thread13ReseedingCoreEEE9drop_slowB26_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #28
          to label %bb.bt unwind label %bb.bd, !noalias !4439

bb.bs:                                            ; preds = %bb.bq
  %i.gp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !4455
  unreachable

bb.bt:                                            ; preds = %bb.br, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangeyINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusiveyEECs44McOc0n4RX_13interop_tests.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4449
  %i.gq = mul nuw nsw i32 %.sroa.01.0.i.i.i.i.i.i, 1000000
  %i.gr = add nuw nsw i32 %i.gq, 10000000
  %i.gs = invoke { ptr, ptr } @_RNvXNtNtCs5xzCmWPONXx_11libp2p_quic8provider5tokioNtB2_8ProviderNtB4_8Provider5sleep(i64 noundef 0, i32 noundef %i.gr)
          to label %bb.bv unwind label %bb.bu, !noalias !4439 ; 2 uses

bb.bu:                                            ; preds = %bb.bt
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.bv:                                            ; preds = %bb.bt
  %i.gu = extractvalue { ptr, ptr } %i.gs, 0      ; 2 uses
  %i.gv = extractvalue { ptr, ptr } %i.gs, 1      ; 2 uses
  store ptr %i.gu, ptr %i.dk, align 8, !noalias !4434
  store ptr %i.gv, ptr %i.dl, align 8, !noalias !4434
  br label %bb.e

bb.bw:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendEL_EEECs44McOc0n4RX_13interop_tests.exit.i.i
  %i.gw = extractvalue { i64, ptr } %i.do, 1
  %i.gx = getelementptr inbounds nuw i8, ptr %.val, i64 64 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gx)
          to label %bb.by unwind label %bb.bx, !noalias !4439

bb.bx:                                            ; preds = %bb.bw
  %i.gy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gx)
          to label %.body52.i.i unwind label %bb.bz, !noalias !4439

bb.by:                                            ; preds = %bb.bw
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gx)
          to label %bb.ca unwind label %bb.q, !noalias !4439

bb.bz:                                            ; preds = %bb.bx
  %i.gz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !4439
  unreachable

bb.ca:                                            ; preds = %bb.by
  %i.ha = getelementptr inbounds nuw i8, ptr %.val, i64 92
  %.val42.i.i = load i32, ptr %i.ha, align 4, !range !33, !noalias !4434, !noundef !10
  %i.hb = call noundef i32 @close(i32 noundef %.val42.i.i) #25, !noalias !4439 ; 0 uses
  store i64 12, ptr %0, align 8, !alias.scope !4439, !noalias !4441
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gw, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !4439, !noalias !4441
  br label %_RNvXs_NtNtCskKLDkoKarTP_4core6future6futureINtNtB8_3pin3PinQNCINvNtCs5xzCmWPONXx_11libp2p_quic13hole_punching11punch_holesNtNtNtB13_8provider5tokio8ProviderE0ENtB4_6Future4pollCs44McOc0n4RX_13interop_tests.exit

bb.cb:                                            ; preds = %.body.i.i, %bb.av, %bb.f
  %i.hc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !4439
  unreachable

.body.i.i:                                        ; preds = %bb.bu, %bb.bq, %bb.bp, %bb.bd, %bb.bc, %bb.bb, %bb.av, %bb.as, %bb.aq, %bb.al, %bb.y, %bb.w, %bb.m, %bb.l, %bb.f
  %.pn22.pn.i.i = phi { ptr, i32 } [ %i.gg, %bb.bq ], [ %i.df, %bb.as ], [ %i.z, %bb.f ], [ %i.gt, %bb.bu ], [ %i.ag, %bb.m ], [ %i.dy, %bb.bb ], [ %i.cz, %bb.aq ], [ %i.bc, %bb.y ], [ %i.ba, %bb.w ], [ %i.dy, %bb.bc ], [ %i.gg, %bb.bp ], [ %i.ag, %bb.l ], [ %i.ef, %bb.bd ], [ %i.dp, %bb.av ], [ %.pn11.pn.pn.i.i, %bb.al ]
  %i.hd = getelementptr inbounds nuw i8, ptr %.val, i64 64
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(24) %i.hd) #27
          to label %.body52.i.i unwind label %bb.cb, !noalias !4439

_RNvXs_NtNtCskKLDkoKarTP_4core6future6futureINtNtB8_3pin3PinQNCINvNtCs5xzCmWPONXx_11libp2p_quic13hole_punching11punch_holesNtNtNtB13_8provider5tokio8ProviderE0ENtB4_6Future4pollCs44McOc0n4RX_13interop_tests.exit: ; preds = %bb.g, %bb.aw, %bb.ca
  %.sink.i.i = phi i8 [ 1, %bb.ca ], [ 3, %bb.aw ], [ 4, %bb.g ]
  store i8 %.sink.i.i, ptr %i.n, align 8, !noalias !4434
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYINtNtCskKLDkoKarTP_4core3pin3PinQNCINvNtCs5xzCmWPONXx_11libp2p_quic13hole_punching12hole_puncherNtNtNtBG_8provider5tokio8ProviderE0ENtNtNtCsl9hx9jpF0W9_12futures_util6future6future9FutureExt10poll_unpinCs44McOc0n4RX_13interop_tests(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.3.i.i = alloca [48 x i8], align 8        ; 4 uses
  %i.a = alloca [72 x i8], align 8                ; 9 uses
  %.sroa.823.i.i = alloca [48 x i8], align 8      ; 7 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !10, !align !17, !noundef !10 ; 16 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4476)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4477)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i.i)
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 196 ; 3 uses
  %i.c = load i8, ptr %i.b, align 4, !range !30, !noalias !4478, !noundef !10
  switch i8 %i.c, label %default.unreachable [
    i8 0, label %bb.e
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.b
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.823.i.i)
  br label %bb.j

bb.c:                                             ; preds = %.body.i.i, %bb.d
  %.pn11.i.i = phi { ptr, i32 } [ %i.d, %bb.d ], [ %.pn8.i.i, %.body.i.i ]
  store i8 2, ptr %i.b, align 4, !noalias !4478
  resume { ptr, i32 } %.pn11.i.i

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEECs44McOc0n4RX_13interop_tests.exit.i.i
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.e:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 192
  %i.f = load i32, ptr %i.e, align 8, !range !33, !noalias !4478, !noundef !10
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 48 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false), !noalias !4478
  %i.i = load i64, ptr %.val, align 8, !noalias !4478, !noundef !10
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.k = load i32, ptr %i.j, align 8, !range !43, !noalias !4478, !noundef !10
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 136
  store i32 %i.f, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !4478
  %.sroa.820.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 144
  store i8 0, ptr %.sroa.820.0..sroa_idx.i.i, align 8, !noalias !4478
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.823.i.i)
  %i.l = invoke { ptr, ptr } @_RNvXNtNtCs5xzCmWPONXx_11libp2p_quic8provider5tokioNtB2_8ProviderNtB4_8Provider5sleep(i64 noundef %i.i, i32 noundef %i.k)
          to label %bb.g unwind label %bb.f, !noalias !4478 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.g:                                             ; preds = %bb.e
  %i.n = extractvalue { ptr, ptr } %i.l, 0
  %i.o = extractvalue { ptr, ptr } %i.l, 1
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 168
  store ptr %i.n, ptr %i.p, align 8, !noalias !4478
  %.sroa.727.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 176
  store ptr %i.o, ptr %.sroa.727.0..sroa_idx.i.i, align 8, !noalias !4478
  %.sroa.828.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 184
  store ptr %i.h, ptr %.sroa.828.0..sroa_idx.i.i, align 8, !noalias !4478
  br label %bb.j

.body.i.i:                                        ; preds = %bb.z, %bb.y, %bb.t, %bb.s, %bb.k, %bb.f
  %.pn8.i.i = phi { ptr, i32 } [ %i.m, %bb.f ], [ %i.s, %bb.k ], [ %i.aq, %bb.y ], [ %i.ae, %bb.s ], [ %i.ae, %bb.t ], [ %i.aq, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.823.i.i)
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 48
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNtCs5xzCmWPONXx_11libp2p_quic13hole_punching11punch_holesNtNtNtBI_8provider5tokio8ProviderE0ECs44McOc0n4RX_13interop_tests(ptr noundef nonnull align 8 %i.q) #27
          to label %bb.c unwind label %bb.ab, !noalias !4479

bb.h:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #30, !noalias !4478
  unreachable

bb.i:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #30, !noalias !4478
  unreachable

bb.j:                                             ; preds = %bb.g, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4478
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 168 ; 3 uses
  invoke void @_RNvXs_NtNtCsl9hx9jpF0W9_12futures_util6future6selectINtB4_6SelectINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB16_6future6future6Futurep6OutputuNtNtB16_6marker4SendEL_EEIB12_QNCINvNtCs5xzCmWPONXx_11libp2p_quic13hole_punching11punch_holesNtNtNtB3n_8provider5tokio8ProviderE0EEB27_4pollCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.l unwind label %bb.k, !noalias !4479
end_hunk_1
begin_hunk_2_@_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSTjNtNtNtCs5hzaM3VbZx4_5redis6errors12server_error11ServerErrorEE9drop_slowBP_
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSTjNtNtNtCs5hzaM3VbZx4_5redis6errors12server_error11ServerErrorEE9drop_slowBP_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr5rdata4svcb11SvcParamKeyENtB6_5Debug3fmtCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBB_6string6StringENtB6_5Debug3fmtCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXso_NtNtCskKLDkoKarTP_4core3fmt3numtNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsm_NtNtCskKLDkoKarTP_4core3fmt3numtNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMNtCs1SQIzZDXHNl_7tracing4spanNtB2_4Span10record_all(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs1SQIzZDXHNl_7tracing4spanNtB2_4Span3new(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_NtCsjouRnuJWSBB_5yamux10connectionINtB5_10ConnectionINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIBW_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEE10poll_closeCs44McOc0n4RX_13interop_tests(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(1792), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtCs1dRmD0u5Uiv_12libp2p_yamux6StreamE9pop_frontCs44McOc0n4RX_13interop_tests(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_NtCsjouRnuJWSBB_5yamux10connectionINtB5_10ConnectionINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIBW_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEE17poll_new_outboundCs44McOc0n4RX_13interop_tests(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef align 8 dereferenceable(1792), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtCs1dRmD0u5Uiv_12libp2p_yamux6StreamE13push_back_mutCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXst_NtCs9Bqz0CSWZZv_12tracing_core5fieldINtB5_12DisplayValueRNtNtNtCsjouRnuJWSBB_5yamux10connection6stream6StreamENtB5_5Value6recordCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_NtCsjouRnuJWSBB_5yamux10connectionINtB5_10ConnectionINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIBW_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEE10poll_closeCs44McOc0n4RX_13interop_tests(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(1760), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_NtCsjouRnuJWSBB_5yamux10connectionINtB5_10ConnectionINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtCsgrcu2UPjJtD_14futures_rustls9TlsStreamIBW_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEE17poll_new_outboundCs44McOc0n4RX_13interop_tests(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef align 8 dereferenceable(1760), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_NtCsjouRnuJWSBB_5yamux10connectionINtB5_10ConnectionINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIBW_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEE10poll_closeCs44McOc0n4RX_13interop_tests(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(960), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_NtCsjouRnuJWSBB_5yamux10connectionINtB5_10ConnectionINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIBW_INtCshlctkzJY7Kq_14rw_stream_sink12RwStreamSinkINtCsknXHD0xsxtc_16libp2p_websocket15BytesConnectionNtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEEEE17poll_new_outboundCs44McOc0n4RX_13interop_tests(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef align 8 dereferenceable(960), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_NtCsjouRnuJWSBB_5yamux10connectionINtB5_10ConnectionINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIBW_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEE10poll_closeCs44McOc0n4RX_13interop_tests(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(928), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_NtCsjouRnuJWSBB_5yamux10connectionINtB5_10ConnectionINtNtCsbVDXp34Q3tF_18multistream_select10negotiated10NegotiatedINtNtCshuexzQAPOo_12libp2p_noise2io6OutputIBW_NtNtNtCs62FBUrD8956_10libp2p_tcp8provider5tokio9TcpStreamEEEE17poll_new_outboundCs44McOc0n4RX_13interop_tests(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef align 8 dereferenceable(928), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtCsgUwh0qa7Dto_19netlink_packet_core5errorNtB2_11DecodeErrorINtB2_12ErrorContextReE7contextCs44McOc0n4RX_13interop_tests(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsgUwh0qa7Dto_19netlink_packet_core4done11DoneMessageNtB6_5Debug3fmtCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsgUwh0qa7Dto_19netlink_packet_core5error12ErrorMessageNtB6_5Debug3fmtCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageNtB6_5Debug3fmtCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs6_NtNtCs3r7LNfiWgbg_10tokio_util5codec11framed_implINtB5_10FramedImplINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs5hzaM3VbZx4_5redis3aio11AsyncStreamNtNtB1f_6marker4SendNtB2X_4SyncEL_EENtNtNtB2k_6parser11aio_support10ValueCodecNtB5_8RWFramesENtNtCsgtKVDLJNbYN_12futures_core6stream6Stream9poll_nextCs44McOc0n4RX_13interop_tests(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef align 8 dereferenceable(112), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dialNtB5_14ConcurrentDialNtNtNtCskKLDkoKarTP_4core6future6future6Future4poll(ptr dead_on_unwind noalias nofree noundef writable sret([152 x i8]) align 8 captures(none) dereferenceable(152), ptr noalias nofree noundef align 8 dereferenceable(80), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs3_NtNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection4pool15concurrent_dialNtB5_9SmartDialNtNtNtCskKLDkoKarTP_4core6future6future6Future4poll(ptr dead_on_unwind noalias nofree noundef writable sret([152 x i8]) align 8 captures(none) dereferenceable(152), ptr noalias nofree noundef align 8 dereferenceable(48), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1_NtNtNtCsl9hx9jpF0W9_12futures_util6future6future4fuseINtB5_4FuseINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB1c_6future6future6Futurep6OutputuNtNtB1c_6marker4SendEL_EEEB2d_4pollCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtNtNtCsl9hx9jpF0W9_12futures_util6stream6stream4nextINtB5_4NextINtNtB9_17futures_unordered16FuturesUnorderedNCNvXs3_NtNtCs4LZN9PPmi2I_11hickory_net3udp17udp_client_streamINtB1Y_10UdpRequestNtNtNtB22_7runtime13tokio_runtime20TokioRuntimeProviderENtB1Y_7Request4send0EENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs44McOc0n4RX_13interop_tests(ptr dead_on_unwind noalias nofree noundef writable sret([176 x i8]) align 8 captures(address) dereferenceable(176), ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr5rdata3opt8EdnsCodeNtBI_10EdnsOptionEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs44McOc0n4RX_13interop_tests(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXse_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxSIBy_ShEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtNtCskKLDkoKarTP_4core3net7ip_addrNtB5_6IpAddrNtNtB9_3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(17), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsa9Jrx9KOzzM_16hickory_resolver6config16ConnectionConfigENtB6_5Debug3fmtCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCskKLDkoKarTP_4core6option6OptionINtCsl6TgSXZDiW0_4slab4SlabIBX_NtNtNtB11_4task4wake5WakerEEEE4lockCs44McOc0n4RX_13interop_tests(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvMs3_Csl6TgSXZDiW0_4slabINtB5_4SlabINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtBE_4task4wake5WakerEE6removeCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(40), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtB8_6option6OptionNtNtNtB8_3net11socket_addr10SocketAddrENtB6_5Debug3fmtCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordNtNtNtBL_5rdata3soa3SOAEE13new_uninit_inCs44McOc0n4RX_13interop_tests() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxNtNtCsbTgMbcnmcyu_13hickory_proto5error10ProtoErrorE13new_uninit_inCs44McOc0n4RX_13interop_tests() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxNtNtNtCsbTgMbcnmcyu_13hickory_proto2op5query5QueryE13new_uninit_inCs44McOc0n4RX_13interop_tests() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxNtNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6domain4name4NameE13new_uninit_inCs44McOc0n4RX_13interop_tests() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtCskKLDkoKarTP_4core3fmtbNtB5_7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1_NtCs4LZN9PPmi2I_11hickory_net5errorNtB5_8NetErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBX_2io5error5ErrorE4from(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtCs5hzaM3VbZx4_5redis6errors11redis_errorNtB4_10RedisErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtB18_2io5error5ErrorE4from(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCsa9Jrx9KOzzM_16hickory_resolver6config16ConnectionConfigINtNtNtBa_5slice4iter4IterB14_EECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs3LwfirTY3Ij_20netlink_packet_route7address9attribute16AddressAttributeINtNtNtBa_5slice4iter4IterB14_EECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtCs3LwfirTY3Ij_20netlink_packet_route2tc5stats6stats28TcStats2INtNtNtBa_5slice4iter4IterB14_EECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info6bridge10InfoBridgeINtNtNtBa_5slice4iter4IterB14_EECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info6bridge18BridgeQuerierStateINtNtNtBa_5slice4iter4IterB14_EECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr5rdata4svcb11SvcParamKeyINtNtNtBa_5slice4iter4IterB14_EECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRTNtNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr5rdata4svcb11SvcParamKeyNtB17_13SvcParamValueEINtNtNtBa_5slice4iter4IterB14_EECs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtB8_4time8DurationNtB6_5Debug3fmtCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCskAdJPD5N6XB_11libp2p_ping7handler7FailureNtB6_5Debug3fmtCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRuNtB6_5Debug3fmtCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_2io5error5ErrorNtB6_5Debug3fmtCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6domain4nameNtB4_4NameNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr5rdata4svcb11SvcParamKeyNtB16_13SvcParamValueEENtB6_5Debug3fmtCs44McOc0n4RX_13interop_tests(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCskKLDkoKarTP_4core4cell10UnsafeCellINtNtCsenQHu2qVDfv_9rand_core5block8BlockRngNtNtNtCshhqnaxk4GqT_4rand4rngs6thread13ReseedingCoreEEE9drop_slowB26_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr5rdata4svcb11SvcParamKeyNtBI_13SvcParamValueEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs44McOc0n4RX_13interop_tests(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXse_Cs1dRmD0u5Uiv_12libp2p_yamuxNtB5_5ErrorNtNtCskKLDkoKarTP_4core5error5Error6source(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXs0_NtNtCs4KPtkQIfQGm_13libp2p_webrtc5tokio6streamNtB5_6StreamNtNtCs5vIp9T9TAX9_10futures_io6if_std10AsyncWrite10poll_write(ptr noalias nofree noundef align 8 dereferenceable(216), ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXs_NtNtCs4KPtkQIfQGm_13libp2p_webrtc5tokio6streamNtB4_6StreamNtNtCs5vIp9T9TAX9_10futures_io6if_std9AsyncRead9poll_read(ptr noalias nofree noundef align 8 dereferenceable(216), ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1_NtNtCshEYSjulKtIJ_18tracing_subscriber8registry7shardedNtB5_8RegistryNtB7_10LookupSpan9span_data(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #23

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold minsize nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #20 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { noreturn }
attributes #25 = { nounwind }
attributes #26 = { cold noreturn nounwind }
attributes #27 = { cold }
attributes #28 = { noinline }
attributes #29 = { inlinehint }
attributes #30 = { noinline noreturn }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !{!0, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvMs_NtCsa9Jrx9KOzzM_16hickory_resolver14caching_clientINtB1h_13CachingClientINtNtB1j_8resolver12LookupEitherNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEE12inner_lookup0EECs44McOc0n4RX_13interop_tests"}
!1 = distinct !{!1, !0, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvMs_NtCsa9Jrx9KOzzM_16hickory_resolver14caching_clientINtB1h_13CachingClientINtNtB1j_8resolver12LookupEitherNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEE12inner_lookup0EECs44McOc0n4RX_13interop_tests: argument 0"}
!2 = distinct !{null}
!3 = distinct !{null}
!4 = distinct !{null}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 2, !"RtLibUseGOT", i32 1}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!9 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!10 = !{}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{i64 1, i64 0}
!13 = !{i64 0, i64 -9223372036854775808}
!14 = !{i64 1, i64 536870913}
!15 = !{!1}
!16 = !{i64 -3, i64 -9223372036854775808}
!17 = !{i64 8}
!18 = !{i64 0, i64 2}
!19 = !{i64 0, i64 3}
!20 = !{i64 -1, i64 -9223372036854775808}
!21 = !{i16 0, i16 3}
!22 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!23 = !{i8 0, i8 2}
!24 = !{i32 -1, i32 13}
!25 = !{i16 0, i16 2}
!26 = !{i8 0, i8 3}
!27 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!28 = !{i64 -1, i64 3}
!29 = !{i32 0, i32 3}
!30 = !{i8 0, i8 4}
!31 = !{i8 0, i8 5}
!32 = !{i16 -2, i16 3}
!33 = !{i32 0, i32 -1}
!34 = !{i8 0, i8 10}
!35 = !{i64 -2, i64 -9223372036854775808}
!36 = !{i32 0, i32 13}
!37 = !{!"address", !"read_provenance"}
!38 = !{i8 0, i8 12}
!39 = !{i16 0, i16 12}
!40 = !{i64 0, i64 -9223372036854775781}
!41 = !{!"branch_weights", !"expected", i32 18271044, i32 2129212604}
!42 = !{!"branch_weights", !"expected", i32 14236845, i32 2133246803}
!43 = !{i32 0, i32 1000000000}
!44 = !{i32 -2, i32 13}
!45 = !{!"branch_weights", i32 6000, i32 1}
!46 = !{i8 0, i8 6}
!47 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000}
!48 = !{i8 -1, i8 3}
!49 = !{i64 4}
!50 = !{i64 2}
!51 = !{i8 -2, i8 9}
!52 = !{i8 -3, i8 3}
!53 = !{i8 -2, i8 3}
!54 = !{i8 0, i8 21}
!55 = !{ptr @_RNvXs_NtNtCskKLDkoKarTP_4core6future6futureINtNtB8_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtB4_6Futurep6OutputuNtNtB8_6marker4SendEL_EEB1v_4pollCs44McOc0n4RX_13interop_tests}
!56 = distinct !{!56, !"_RINvMs9_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr11record_type10RecordTypeNtNtB8_7set_val9SetValZSTNtB1a_8InternalE17from_new_internalNtNtBc_5alloc6GlobalECs44McOc0n4RX_13interop_tests"}
!57 = distinct !{!57, !56, !"_RINvMs9_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr11record_type10RecordTypeNtNtB8_7set_val9SetValZSTNtB1a_8InternalE17from_new_internalNtNtBc_5alloc6GlobalECs44McOc0n4RX_13interop_tests: argument 0"}
!58 = distinct !{!58, !"_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr11record_type10RecordTypeNtNtB8_7set_val9SetValZSTNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivejEECs44McOc0n4RX_13interop_tests"}
!59 = distinct !{!59, !58, !"_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr11record_type10RecordTypeNtNtB8_7set_val9SetValZSTNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivejEECs44McOc0n4RX_13interop_tests: argument 0"}
!60 = !{!59, !57}
!61 = !{!59}
!62 = distinct !{!62, !"_RINvMsh_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5DyingNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr11record_type10RecordTypeNtNtB8_7set_val9SetValZSTNtB1a_14LeafOrInternalE21deallocate_and_ascendNtNtBc_5alloc6GlobalECs44McOc0n4RX_13interop_tests"}
!63 = distinct !{!63, !62, !"_RINvMsh_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5DyingNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr11record_type10RecordTypeNtNtB8_7set_val9SetValZSTNtB1a_14LeafOrInternalE21deallocate_and_ascendNtNtBc_5alloc6GlobalECs44McOc0n4RX_13interop_tests: argument 0"}
!64 = distinct !{!64, !"_RNvMse_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker5DyingNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr11record_type10RecordTypeNtNtB7_7set_val9SetValZSTNtB19_14LeafOrInternalE6ascendCs44McOc0n4RX_13interop_tests"}
!65 = distinct !{!65, !64, !"_RNvMse_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker5DyingNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr11record_type10RecordTypeNtNtB7_7set_val9SetValZSTNtB19_14LeafOrInternalE6ascendCs44McOc0n4RX_13interop_tests: argument 0"}
!66 = !{!65, !63}
!67 = !{!63}
!68 = distinct !{!68, !"_RINvMsh_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5DyingNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr11record_type10RecordTypeNtNtB8_7set_val9SetValZSTNtB1a_14LeafOrInternalE21deallocate_and_ascendNtNtBc_5alloc6GlobalECs44McOc0n4RX_13interop_tests"}
!69 = distinct !{!69, !68, !"_RINvMsh_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5DyingNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr11record_type10RecordTypeNtNtB8_7set_val9SetValZSTNtB1a_14LeafOrInternalE21deallocate_and_ascendNtNtBc_5alloc6GlobalECs44McOc0n4RX_13interop_tests: argument 0"}
!70 = distinct !{!70, !"_RNvMse_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker5DyingNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr11record_type10RecordTypeNtNtB7_7set_val9SetValZSTNtB19_14LeafOrInternalE6ascendCs44McOc0n4RX_13interop_tests"}
!71 = distinct !{!71, !70, !"_RNvMse_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker5DyingNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr11record_type10RecordTypeNtNtB7_7set_val9SetValZSTNtB19_14LeafOrInternalE6ascendCs44McOc0n4RX_13interop_tests: argument 0"}
!72 = distinct !{!72, !"_RNvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr11record_type10RecordTypeNtNtB7_7set_val9SetValZSTNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCs44McOc0n4RX_13interop_tests"}
!73 = distinct !{!73, !72, !"_RNvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr11record_type10RecordTypeNtNtB7_7set_val9SetValZSTNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCs44McOc0n4RX_13interop_tests: argument 1"}
!74 = distinct !{!74, !72, !"_RNvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr11record_type10RecordTypeNtNtB7_7set_val9SetValZSTNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCs44McOc0n4RX_13interop_tests: argument 0"}
!75 = distinct !{!75, !11}
!76 = !{!71, !69}
!77 = !{!74, !73}
!78 = !{!69}
!79 = distinct !{!79, !"_RINvMsh_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5DyingtNtNtB8_7set_val9SetValZSTNtB1a_14LeafOrInternalE21deallocate_and_ascendNtNtBc_5alloc6GlobalECs44McOc0n4RX_13interop_tests"}
!80 = distinct !{!80, !79, !"_RINvMsh_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5DyingtNtNtB8_7set_val9SetValZSTNtB1a_14LeafOrInternalE21deallocate_and_ascendNtNtBc_5alloc6GlobalECs44McOc0n4RX_13interop_tests: argument 0"}
!81 = distinct !{!81, !"_RNvMse_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker5DyingtNtNtB7_7set_val9SetValZSTNtB19_14LeafOrInternalE6ascendCs44McOc0n4RX_13interop_tests"}
!82 = distinct !{!82, !81, !"_RNvMse_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker5DyingtNtNtB7_7set_val9SetValZSTNtB19_14LeafOrInternalE6ascendCs44McOc0n4RX_13interop_tests: argument 0"}
!83 = !{!82, !80}
!84 = !{!80}
!85 = distinct !{!85, !"_RINvMsh_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5DyingtNtNtB8_7set_val9SetValZSTNtB1a_14LeafOrInternalE21deallocate_and_ascendNtNtBc_5alloc6GlobalECs44McOc0n4RX_13interop_tests"}
!86 = distinct !{!86, !85, !"_RINvMsh_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5DyingtNtNtB8_7set_val9SetValZSTNtB1a_14LeafOrInternalE21deallocate_and_ascendNtNtBc_5alloc6GlobalECs44McOc0n4RX_13interop_tests: argument 0"}
!87 = distinct !{!87, !"_RNvMse_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker5DyingtNtNtB7_7set_val9SetValZSTNtB19_14LeafOrInternalE6ascendCs44McOc0n4RX_13interop_tests"}
!88 = distinct !{!88, !87, !"_RNvMse_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker5DyingtNtNtB7_7set_val9SetValZSTNtB19_14LeafOrInternalE6ascendCs44McOc0n4RX_13interop_tests: argument 0"}
!89 = distinct !{!89, !"_RNvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingtNtNtB7_7set_val9SetValZSTNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCs44McOc0n4RX_13interop_tests"}
!90 = distinct !{!90, !89, !"_RNvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingtNtNtB7_7set_val9SetValZSTNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCs44McOc0n4RX_13interop_tests: argument 1"}
!91 = distinct !{!91, !89, !"_RNvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingtNtNtB7_7set_val9SetValZSTNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCs44McOc0n4RX_13interop_tests: argument 0"}
!92 = distinct !{!92, !11}
!93 = !{!88, !86}
!94 = !{!91, !90}
!95 = !{!86}
!96 = distinct !{!96, !"_RNvMs4_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtCs4LZN9PPmi2I_11hickory_net4xfer12dns_exchange21DnsExchangeBackgroundINtNtB28_15dns_multiplexer14DnsMultiplexerINtNtNtB2a_3tcp17tcp_client_stream15TcpClientStreamINtNtNtB2a_7runtime8iocompat17AsyncIoTokioAsStdNtNtNtNtBb_3net3tcp6stream9TcpStreamEEENtB4R_9TokioTimeEEEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCs44McOc0n4RX_13interop_tests"}
!97 = distinct !{!97, !96, !"_RNvMs4_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtCs4LZN9PPmi2I_11hickory_net4xfer12dns_exchange21DnsExchangeBackgroundINtNtB28_15dns_multiplexer14DnsMultiplexerINtNtNtB2a_3tcp17tcp_client_stream15TcpClientStreamINtNtNtB2a_7runtime8iocompat17AsyncIoTokioAsStdNtNtNtNtBb_3net3tcp6stream9TcpStreamEEENtB4R_9TokioTimeEEEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCs44McOc0n4RX_13interop_tests: argument 0"}
!98 = !{!97}
!99 = distinct !{!99, !"_RNvMs4_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtCs4LZN9PPmi2I_11hickory_net4xfer12dns_exchange21DnsExchangeBackgroundINtNtB28_15dns_multiplexer14DnsMultiplexerINtNtNtB2a_3tcp17tcp_client_stream15TcpClientStreamINtNtNtB2a_7runtime8iocompat17AsyncIoTokioAsStdNtNtNtNtBb_3net3tcp6stream9TcpStreamEEENtB4R_9TokioTimeEEEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageCs44McOc0n4RX_13interop_tests"}
!100 = distinct !{!100, !99, !"_RNvMs4_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtCs4LZN9PPmi2I_11hickory_net4xfer12dns_exchange21DnsExchangeBackgroundINtNtB28_15dns_multiplexer14DnsMultiplexerINtNtNtB2a_3tcp17tcp_client_stream15TcpClientStreamINtNtNtB2a_7runtime8iocompat17AsyncIoTokioAsStdNtNtNtNtBb_3net3tcp6stream9TcpStreamEEENtB4R_9TokioTimeEEEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageCs44McOc0n4RX_13interop_tests: argument 0"}
!101 = !{!100}
!102 = distinct !{!102, !"_RNvMs4_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtCs4LZN9PPmi2I_11hickory_net4xfer12dns_exchange21DnsExchangeBackgroundINtNtNtB2a_3udp17udp_client_stream15UdpClientStreamNtNtNtB2a_7runtime13tokio_runtime20TokioRuntimeProviderENtB4a_9TokioTimeEEEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCs44McOc0n4RX_13interop_tests"}
!103 = distinct !{!103, !102, !"_RNvMs4_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtCs4LZN9PPmi2I_11hickory_net4xfer12dns_exchange21DnsExchangeBackgroundINtNtNtB2a_3udp17udp_client_stream15UdpClientStreamNtNtNtB2a_7runtime13tokio_runtime20TokioRuntimeProviderENtB4a_9TokioTimeEEEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCs44McOc0n4RX_13interop_tests: argument 0"}
!104 = !{!103}
!105 = distinct !{!105, !"_RNvMs4_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtCs4LZN9PPmi2I_11hickory_net4xfer12dns_exchange21DnsExchangeBackgroundINtNtNtB2a_3udp17udp_client_stream15UdpClientStreamNtNtNtB2a_7runtime13tokio_runtime20TokioRuntimeProviderENtB4a_9TokioTimeEEEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageCs44McOc0n4RX_13interop_tests"}
!106 = distinct !{!106, !105, !"_RNvMs4_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtCs4LZN9PPmi2I_11hickory_net4xfer12dns_exchange21DnsExchangeBackgroundINtNtNtB2a_3udp17udp_client_stream15UdpClientStreamNtNtNtB2a_7runtime13tokio_runtime20TokioRuntimeProviderENtB4a_9TokioTimeEEEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageCs44McOc0n4RX_13interop_tests: argument 0"}
!107 = !{!106}
!108 = distinct !{!108, !"_RNvMs4_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtCsl9hx9jpF0W9_12futures_util6future6future3MapINtNtNtB2a_6stream6stream7ForwardINtNtB2X_3map3MapINtNtB2Z_7poll_fn6PollFnNCINvMs2_NtNtCs5hzaM3VbZx4_5redis3aio22multiplexed_connectionNtB4f_8Pipeline3newINtNtNtCs3r7LNfiWgbg_10tokio_util5codec6framed6FramedIBZ_IB1v_DNtB4h_11AsyncStreamNtNtB13_6marker4SendNtB6K_4SyncEL_EENtNtNtB4j_6parser11aio_support10ValueCodecEE0ENcNtINtNtB13_6result6ResultNtB4f_15PipelineMessageuE2Ok0EINtB4f_12PipelineSinkB5o_EENCB48_s_0EEEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCs44McOc0n4RX_13interop_tests"}
!109 = distinct !{!109, !108, !"_RNvMs4_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtCsl9hx9jpF0W9_12futures_util6future6future3MapINtNtNtB2a_6stream6stream7ForwardINtNtB2X_3map3MapINtNtB2Z_7poll_fn6PollFnNCINvMs2_NtNtCs5hzaM3VbZx4_5redis3aio22multiplexed_connectionNtB4f_8Pipeline3newINtNtNtCs3r7LNfiWgbg_10tokio_util5codec6framed6FramedIBZ_IB1v_DNtB4h_11AsyncStreamNtNtB13_6marker4SendNtB6K_4SyncEL_EENtNtNtB4j_6parser11aio_support10ValueCodecEE0ENcNtINtNtB13_6result6ResultNtB4f_15PipelineMessageuE2Ok0EINtB4f_12PipelineSinkB5o_EENCB48_s_0EEEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCs44McOc0n4RX_13interop_tests: argument 0"}
!110 = !{!109}
!111 = distinct !{!111, !"_RNvMs4_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtCsl9hx9jpF0W9_12futures_util6future6future3MapINtNtNtB2a_6stream6stream7ForwardINtNtB2X_3map3MapINtNtB2Z_7poll_fn6PollFnNCINvMs2_NtNtCs5hzaM3VbZx4_5redis3aio22multiplexed_connectionNtB4f_8Pipeline3newINtNtNtCs3r7LNfiWgbg_10tokio_util5codec6framed6FramedIBZ_IB1v_DNtB4h_11AsyncStreamNtNtB13_6marker4SendNtB6K_4SyncEL_EENtNtNtB4j_6parser11aio_support10ValueCodecEE0ENcNtINtNtB13_6result6ResultNtB4f_15PipelineMessageuE2Ok0EINtB4f_12PipelineSinkB5o_EENCB48_s_0EEEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageCs44McOc0n4RX_13interop_tests"}
!112 = distinct !{!112, !111, !"_RNvMs4_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtCsl9hx9jpF0W9_12futures_util6future6future3MapINtNtNtB2a_6stream6stream7ForwardINtNtB2X_3map3MapINtNtB2Z_7poll_fn6PollFnNCINvMs2_NtNtCs5hzaM3VbZx4_5redis3aio22multiplexed_connectionNtB4f_8Pipeline3newINtNtNtCs3r7LNfiWgbg_10tokio_util5codec6framed6FramedIBZ_IB1v_DNtB4h_11AsyncStreamNtNtB13_6marker4SendNtB6K_4SyncEL_EENtNtNtB4j_6parser11aio_support10ValueCodecEE0ENcNtINtNtB13_6result6ResultNtB4f_15PipelineMessageuE2Ok0EINtB4f_12PipelineSinkB5o_EENCB48_s_0EEEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageCs44McOc0n4RX_13interop_tests: argument 0"}
!113 = !{!112}
!114 = distinct !{!114, !"_RNvMs4_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvMs_NtCsa9Jrx9KOzzM_16hickory_resolver11name_serverINtB2a_12ProbeRequestNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE3run0EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCs44McOc0n4RX_13interop_tests"}
!115 = distinct !{!115, !114, !"_RNvMs4_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvMs_NtCsa9Jrx9KOzzM_16hickory_resolver11name_serverINtB2a_12ProbeRequestNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE3run0EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCs44McOc0n4RX_13interop_tests: argument 0"}
!116 = !{!115}
!117 = distinct !{!117, !"_RNvMs4_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvMs_NtCsa9Jrx9KOzzM_16hickory_resolver11name_serverINtB2a_12ProbeRequestNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE3run0EEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageCs44McOc0n4RX_13interop_tests"}
!118 = distinct !{!118, !117, !"_RNvMs4_NtNtNtCsc13h7DQFCSE_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvMs_NtCsa9Jrx9KOzzM_16hickory_resolver11name_serverINtB2a_12ProbeRequestNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderE3run0EEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageCs44McOc0n4RX_13interop_tests: argument 0"}
!119 = !{!118}
!120 = distinct !{null}
!121 = distinct !{!121, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsl9hx9jpF0W9_12futures_util6future6future6shared14FutureOrOutputINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtNtCsbTgMbcnmcyu_13hickory_proto2op12dns_response11DnsResponseNtNtCs4LZN9PPmi2I_11hickory_net5error8NetErrorEENtNtB4_6marker4SendEL_EEEECs44McOc0n4RX_13interop_tests"}
!122 = distinct !{!122, !121, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsl9hx9jpF0W9_12futures_util6future6future6shared14FutureOrOutputINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtNtCsbTgMbcnmcyu_13hickory_proto2op12dns_response11DnsResponseNtNtCs4LZN9PPmi2I_11hickory_net5error8NetErrorEENtNtB4_6marker4SendEL_EEEECs44McOc0n4RX_13interop_tests: argument 0"}
!123 = !{!122}
!124 = distinct !{!124, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot5InnerINtNtB4_6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB2F_6errors11redis_error10RedisErrorEEEEECs44McOc0n4RX_13interop_tests"}
!125 = distinct !{!125, !124, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot5InnerINtNtB4_6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB2F_6errors11redis_error10RedisErrorEEEEECs44McOc0n4RX_13interop_tests: argument 0"}
!126 = distinct !{!126, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot6SenderINtNtB4_6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB1M_6errors11redis_error10RedisErrorEEECs44McOc0n4RX_13interop_tests"}
!127 = distinct !{!127, !126, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot6SenderINtNtB4_6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB1M_6errors11redis_error10RedisErrorEEECs44McOc0n4RX_13interop_tests: argument 0"}
!128 = distinct !{!128, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot5InnerINtNtB4_6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB2j_6errors11redis_error10RedisErrorEEEECs44McOc0n4RX_13interop_tests"}
!129 = distinct !{!129, !128, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot5InnerINtNtB4_6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB2j_6errors11redis_error10RedisErrorEEEECs44McOc0n4RX_13interop_tests: argument 0"}
!130 = distinct !{!130, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot5InnerINtNtCskKLDkoKarTP_4core6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB26_6errors11redis_error10RedisErrorEEENtNtNtB1v_3ops4drop4Drop4dropCs44McOc0n4RX_13interop_tests"}
!131 = distinct !{!131, !130, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot5InnerINtNtCskKLDkoKarTP_4core6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB26_6errors11redis_error10RedisErrorEEENtNtNtB1v_3ops4drop4Drop4dropCs44McOc0n4RX_13interop_tests: argument 0"}
!132 = distinct !{!132, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot5InnerINtNtB4_6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB2F_6errors11redis_error10RedisErrorEEEEECs44McOc0n4RX_13interop_tests"}
!133 = distinct !{!133, !132, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot5InnerINtNtB4_6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB2F_6errors11redis_error10RedisErrorEEEEECs44McOc0n4RX_13interop_tests: argument 0"}
!134 = distinct !{!134, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot5InnerINtNtB4_6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB2j_6errors11redis_error10RedisErrorEEEECs44McOc0n4RX_13interop_tests"}
!135 = distinct !{!135, !134, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot5InnerINtNtB4_6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB2j_6errors11redis_error10RedisErrorEEEECs44McOc0n4RX_13interop_tests: argument 0"}
!136 = distinct !{!136, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot5InnerINtNtCskKLDkoKarTP_4core6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB26_6errors11redis_error10RedisErrorEEENtNtNtB1v_3ops4drop4Drop4dropCs44McOc0n4RX_13interop_tests"}
!137 = distinct !{!137, !136, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsc13h7DQFCSE_5tokio4sync7oneshot5InnerINtNtCskKLDkoKarTP_4core6result6ResultNtNtCs5hzaM3VbZx4_5redis5types5ValueNtNtNtB26_6errors11redis_error10RedisErrorEEENtNtNtB1v_3ops4drop4Drop4dropCs44McOc0n4RX_13interop_tests: argument 0"}
!138 = !{!125}
!139 = !{!125, !127}
!140 = !{!131, !129, !125}
!141 = !{!133}
!142 = !{!133, !127}
!143 = !{!137, !135, !133}
!144 = distinct !{!144, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1SQIzZDXHNl_7tracing4span5InnerECs44McOc0n4RX_13interop_tests"}
!145 = distinct !{!145, !144, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1SQIzZDXHNl_7tracing4span5InnerECs44McOc0n4RX_13interop_tests: argument 0"}
!146 = distinct !{!146, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs9Bqz0CSWZZv_12tracing_core10dispatcher8DispatchECs44McOc0n4RX_13interop_tests"}
!147 = distinct !{!147, !146, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs9Bqz0CSWZZv_12tracing_core10dispatcher8DispatchECs44McOc0n4RX_13interop_tests: argument 0"}
!148 = distinct !{!148, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs9Bqz0CSWZZv_12tracing_core10dispatcher4KindINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtBG_10subscriber10SubscriberNtNtB4_6marker4SendNtB2v_4SyncEL_EEECs44McOc0n4RX_13interop_tests"}
!149 = distinct !{!149, !148, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs9Bqz0CSWZZv_12tracing_core10dispatcher4KindINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtBG_10subscriber10SubscriberNtNtB4_6marker4SendNtB2v_4SyncEL_EEECs44McOc0n4RX_13interop_tests: argument 0"}
!150 = distinct !{!150, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtCs9Bqz0CSWZZv_12tracing_core10subscriber10SubscriberNtNtB4_6marker4SendNtB26_4SyncEL_EECs44McOc0n4RX_13interop_tests"}
!151 = distinct !{!151, !150, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtCs9Bqz0CSWZZv_12tracing_core10subscriber10SubscriberNtNtB4_6marker4SendNtB26_4SyncEL_EECs44McOc0n4RX_13interop_tests: argument 0"}
!152 = distinct !{!152, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCs9Bqz0CSWZZv_12tracing_core10subscriber10SubscriberNtNtCskKLDkoKarTP_4core6marker4SendNtB1D_4SyncEL_ENtNtNtB1F_3ops4drop4Drop4dropCs44McOc0n4RX_13interop_tests"}
!153 = distinct !{!153, !152, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCs9Bqz0CSWZZv_12tracing_core10subscriber10SubscriberNtNtCskKLDkoKarTP_4core6marker4SendNtB1D_4SyncEL_ENtNtNtB1F_3ops4drop4Drop4dropCs44McOc0n4RX_13interop_tests: argument 0"}
!154 = !{!145}
!155 = !{!147}
!156 = !{!149}
!157 = !{!151}
!158 = !{!153}
!159 = !{!153, !151, !149, !147, !145}
!160 = distinct !{!160, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs4LZN9PPmi2I_11hickory_net4xfer17OneshotDnsRequestECs44McOc0n4RX_13interop_tests"}
!161 = distinct !{!161, !160, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs4LZN9PPmi2I_11hickory_net4xfer17OneshotDnsRequestECs44McOc0n4RX_13interop_tests: argument 0"}
!162 = distinct !{!162, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsbTgMbcnmcyu_13hickory_proto2op11dns_request10DnsRequestECs44McOc0n4RX_13interop_tests"}
!163 = distinct !{!163, !162, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsbTgMbcnmcyu_13hickory_proto2op11dns_request10DnsRequestECs44McOc0n4RX_13interop_tests: argument 0"}
!164 = distinct !{!164, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsbTgMbcnmcyu_13hickory_proto2op5query5QueryEECs44McOc0n4RX_13interop_tests"}
!165 = distinct !{!165, !164, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsbTgMbcnmcyu_13hickory_proto2op5query5QueryEECs44McOc0n4RX_13interop_tests: argument 0"}
!166 = distinct !{!166, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsbTgMbcnmcyu_13hickory_proto2op5query5QueryEECs44McOc0n4RX_13interop_tests"}
!167 = distinct !{!167, !166, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsbTgMbcnmcyu_13hickory_proto2op5query5QueryEECs44McOc0n4RX_13interop_tests: argument 0"}
!168 = distinct !{!168, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsgV0iE8Xkxiy_15futures_channel7oneshot5InnerNtNtCs4LZN9PPmi2I_11hickory_net4xfer17DnsResponseStreamEEECs44McOc0n4RX_13interop_tests"}
!169 = distinct !{!169, !168, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsgV0iE8Xkxiy_15futures_channel7oneshot5InnerNtNtCs4LZN9PPmi2I_11hickory_net4xfer17DnsResponseStreamEEECs44McOc0n4RX_13interop_tests: argument 0"}
!170 = distinct !{!170, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsgV0iE8Xkxiy_15futures_channel7oneshot5InnerNtNtCs4LZN9PPmi2I_11hickory_net4xfer17DnsResponseStreamEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs44McOc0n4RX_13interop_tests"}
!171 = distinct !{!171, !170, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsgV0iE8Xkxiy_15futures_channel7oneshot5InnerNtNtCs4LZN9PPmi2I_11hickory_net4xfer17DnsResponseStreamEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs44McOc0n4RX_13interop_tests: argument 0"}
!172 = distinct !{!172, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgV0iE8Xkxiy_15futures_channel7oneshot6SenderNtNtCs4LZN9PPmi2I_11hickory_net4xfer17DnsResponseStreamEECs44McOc0n4RX_13interop_tests"}
!173 = distinct !{!173, !172, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgV0iE8Xkxiy_15futures_channel7oneshot6SenderNtNtCs4LZN9PPmi2I_11hickory_net4xfer17DnsResponseStreamEECs44McOc0n4RX_13interop_tests: argument 0"}
!174 = distinct !{!174, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsgV0iE8Xkxiy_15futures_channel7oneshot5InnerNtNtCs4LZN9PPmi2I_11hickory_net4xfer17DnsResponseStreamEEECs44McOc0n4RX_13interop_tests"}
!175 = distinct !{!175, !174, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsgV0iE8Xkxiy_15futures_channel7oneshot5InnerNtNtCs4LZN9PPmi2I_11hickory_net4xfer17DnsResponseStreamEEECs44McOc0n4RX_13interop_tests: argument 0"}
!176 = distinct !{!176, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsgV0iE8Xkxiy_15futures_channel7oneshot5InnerNtNtCs4LZN9PPmi2I_11hickory_net4xfer17DnsResponseStreamEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs44McOc0n4RX_13interop_tests"}
!177 = distinct !{!177, !176, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsgV0iE8Xkxiy_15futures_channel7oneshot5InnerNtNtCs4LZN9PPmi2I_11hickory_net4xfer17DnsResponseStreamEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs44McOc0n4RX_13interop_tests: argument 0"}
!178 = !{!165, !163, !161}
!179 = !{!167, !163, !161}
!180 = !{!169}
!181 = !{!171}
!182 = !{!171, !169, !173, !161}
!183 = !{!171, !169}
!184 = !{!175}
!185 = !{!177}
!186 = !{!177, !175, !173, !161}
!187 = !{!177, !175}
!188 = distinct !{!188, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsc13h7DQFCSE_5tokio7runtime9scheduler6HandleECs44McOc0n4RX_13interop_tests"}
end_hunk_2
