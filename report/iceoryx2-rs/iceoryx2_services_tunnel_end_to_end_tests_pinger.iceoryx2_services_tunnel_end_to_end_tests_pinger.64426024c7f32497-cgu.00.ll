Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iceoryx2_services_tunnel_end_to_end_tests_pinger.iceoryx2_services_tunnel_end_to_end_tests_pinger.64426024c7f32497-cgu.00?download=true
inline.NumInlined: 1105
inline.NumDeleted: 319
begin_hunk_0_@_RINvXs0_NtNtNtCs7PFeJTloU4p_4toml2de12deserializer5valueNtB6_17ValueDeserializerNtNtCsePUspIjoSTD_10serde_core2de12Deserializer26deserialize_newtype_structNtNvXNvNtNtCsg6ZEkMtNi4J_8iceoryx27service9attributes1_1__NtB2A_12AttributeSetNtB1i_11Deserialize11deserialize9___VisitorECs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger:bb.a
  call void @_RINvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector10static_vec16StaticVecVisitorNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeKj8_ENtNtCsePUspIjoSTD_10serde_core2de7Visitor9visit_i64NtNtNtCs7PFeJTloU4p_4toml2de5error5ErrorECs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noalias nofree noundef nonnull sret([2832 x i8]) align 8 captures(none) dereferenceable(2832) %i.l, i64 noundef %i.ba) #8, !noalias !1564
  br label %bb.n

bb.m:                                             ; preds = %bb.c
  %i.bb = call { i64, i64 } @_RNvMNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalueNtB2_9DeInteger6to_u64(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.j) #8, !noalias !1564 ; 2 uses
  %i.bc = extractvalue { i64, i64 } %i.bb, 0
  %i.bd = trunc nuw i64 %i.bc to i1
  br i1 %i.bd, label %bb.p, label %bb.q

bb.n:                                             ; preds = %bb.t, %bb.p, %bb.l
  %i.be = load i64, ptr %i.j, align 8, !range !11, !alias.scope !1570, !noalias !1564, !noundef !10
  %i.bf = icmp eq i64 %i.be, -1
  br i1 %i.bf, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue9DeIntegerECs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.j) #8, !noalias !1564
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.j) #8, !noalias !1564
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue9DeIntegerECs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.i.i.i

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue9DeIntegerECs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.i.i.i: ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1564
  br label %bb.k

bb.p:                                             ; preds = %bb.m
  %i.bg = extractvalue { i64, i64 } %i.bb, 1
  call void @_RINvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector10static_vec16StaticVecVisitorNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeKj8_ENtNtCsePUspIjoSTD_10serde_core2de7Visitor9visit_u64NtNtNtCs7PFeJTloU4p_4toml2de5error5ErrorECs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noalias nofree noundef nonnull sret([2832 x i8]) align 8 captures(none) dereferenceable(2832) %i.l, i64 noundef %i.bg) #8, !noalias !1564
  br label %bb.n

bb.q:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1564
  call void @_RNvMNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalueNtB2_9DeInteger7to_i128(ptr noalias nofree noundef nonnull sret([32 x i8]) align 16 captures(none) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.j) #8, !noalias !1564
  %i.bh = load i128, ptr %i.i, align 16, !range !17, !noalias !1564, !noundef !10
  %i.bi = trunc nuw i128 %i.bh to i1
  br i1 %i.bi, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bj = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.bk = load i128, ptr %i.bj, align 16, !noalias !1564, !noundef !10
  call void @_RINvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector10static_vec16StaticVecVisitorNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeKj8_ENtNtCsePUspIjoSTD_10serde_core2de7Visitor10visit_i128NtNtNtCs7PFeJTloU4p_4toml2de5error5ErrorECs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noalias nofree noundef nonnull sret([2832 x i8]) align 8 captures(none) dereferenceable(2832) %i.l, i128 noundef %i.bk) #8, !noalias !1564
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1564
  call void @_RNvMNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalueNtB2_9DeInteger7to_u128(ptr noalias nofree noundef nonnull sret([32 x i8]) align 16 captures(none) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.j) #8, !noalias !1564
  %i.bl = load i128, ptr %i.h, align 16, !range !17, !noalias !1564, !noundef !10
  %i.bm = trunc nuw i128 %i.bl to i1
  br i1 %i.bm, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.u, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1564
  br label %bb.n

bb.u:                                             ; preds = %bb.s
  %i.bn = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.bo = load i128, ptr %i.bn, align 16, !noalias !1564, !noundef !10
  call void @_RINvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector10static_vec16StaticVecVisitorNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeKj8_ENtNtCsePUspIjoSTD_10serde_core2de7Visitor10visit_u128NtNtNtCs7PFeJTloU4p_4toml2de5error5ErrorECs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noalias nofree noundef nonnull sret([2832 x i8]) align 8 captures(none) dereferenceable(2832) %i.l, i128 noundef %i.bo) #8, !noalias !1564
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1564
  br label %bb.t

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1564
  call void @_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef 25, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1) #8, !noalias !1564
  %i.bp = load i64, ptr %i.e, align 8, !range !16, !noalias !1564, !noundef !10
  %i.bq = trunc nuw i64 %i.bp to i1
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !range !18, !noalias !1564, !noundef !10 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.bq, label %bb.w, label %bb.x, !prof !19

bb.w:                                             ; preds = %bb.v
  %i.bu = load i64, ptr %i.bt, align 8, !noalias !1564
  call void @_RNvNtCsbqH9stoieM8_5alloc7raw_vec12handle_error(i64 noundef %i.bs, i64 %i.bu) #9, !noalias !1564
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.bv = load ptr, ptr %i.bt, align 8, !noalias !1564, !nonnull !10, !noundef !10 ; 2 uses
  %i.bw = icmp samesign ugt i64 %i.bs, 24
  call void @llvm.assume(i1 %i.bw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1564
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %i.bv, ptr noundef nonnull align 1 dereferenceable(25) @8, i64 25, i1 false), !noalias !1564
  %i.bx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 0, ptr %i.bx, align 8, !noalias !1564
  %.sroa.05.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i64 %i.bs, ptr %.sroa.05.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !1564
  %.sroa.05.sroa.5.sroa.4.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store ptr %i.bv, ptr %.sroa.05.sroa.5.sroa.4.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !1564
  %.sroa.05.sroa.5.sroa.5.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  store i64 25, ptr %.sroa.05.sroa.5.sroa.5.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !1564
  %.sroa.05.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  store i64 0, ptr %.sroa.05.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !1564
  %.sroa.05.sroa.6.sroa.4.0..sroa.05.sroa.6.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.05.sroa.6.sroa.4.0..sroa.05.sroa.6.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !1564
  %.sroa.05.sroa.6.sroa.5.0..sroa.05.sroa.6.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.sroa.6.sroa.5.0..sroa.05.sroa.6.0..sroa_idx.sroa_idx.i.i.i, i8 0, i64 16, i1 false), !noalias !1564
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1564
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1564
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue9DeIntegerECs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noalias nofree noundef align 8 dereferenceable(32) %i.j) #8, !noalias !1564
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1564
  br label %bb.ae

bb.y:                                             ; preds = %bb.d
  %i.by = extractvalue { i64, double } %i.y, 1
  call void @_RINvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector10static_vec16StaticVecVisitorNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeKj8_ENtNtCsePUspIjoSTD_10serde_core2de7Visitor9visit_f64NtNtNtCs7PFeJTloU4p_4toml2de5error5ErrorECs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noalias nofree noundef nonnull sret([2832 x i8]) align 8 captures(none) dereferenceable(2832) %i.l, double noundef %i.by) #8, !noalias !1564
  %i.bz = load i64, ptr %i.g, align 8, !range !11, !alias.scope !1571, !noalias !1564, !noundef !10
  %i.ca = icmp eq i64 %i.bz, -1
  br i1 %i.ca, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeFloatECs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #8, !noalias !1564
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #8, !noalias !1564
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeFloatECs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.i.i.i

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeFloatECs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit.i.i.i: ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1564
  br label %bb.k

bb.aa:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1564
  call void @_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef 32, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1) #8, !noalias !1564
  %i.cb = load i64, ptr %i.d, align 8, !range !16, !noalias !1564, !noundef !10
  %i.cc = trunc nuw i64 %i.cb to i1
  %i.cd = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !range !18, !noalias !1564, !noundef !10 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.cc, label %bb.ab, label %bb.ac, !prof !19

bb.ab:                                            ; preds = %bb.aa
  %i.cg = load i64, ptr %i.cf, align 8, !noalias !1564
  call void @_RNvNtCsbqH9stoieM8_5alloc7raw_vec12handle_error(i64 noundef %i.ce, i64 %i.cg) #9, !noalias !1564
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.ch = load ptr, ptr %i.cf, align 8, !noalias !1564, !nonnull !10, !noundef !10 ; 2 uses
  %i.ci = icmp samesign ugt i64 %i.ce, 31
  call void @llvm.assume(i1 %i.ci)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1564
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ch, ptr noundef nonnull align 1 dereferenceable(32) @9, i64 32, i1 false), !noalias !1564
  %i.cj = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 0, ptr %i.cj, align 8, !noalias !1564
  %.sroa.010.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i64 %i.ce, ptr %.sroa.010.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !1564
  %.sroa.010.sroa.5.sroa.4.0..sroa.010.sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store ptr %i.ch, ptr %.sroa.010.sroa.5.sroa.4.0..sroa.010.sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !1564
  %.sroa.010.sroa.5.sroa.5.0..sroa.010.sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  store i64 32, ptr %.sroa.010.sroa.5.sroa.5.0..sroa.010.sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !1564
  %.sroa.010.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  store i64 0, ptr %.sroa.010.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !1564
  %.sroa.010.sroa.6.sroa.4.0..sroa.010.sroa.6.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.010.sroa.6.sroa.4.0..sroa.010.sroa.6.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !1564
  %.sroa.010.sroa.6.sroa.5.0..sroa.010.sroa.6.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.010.sroa.6.sroa.5.0..sroa.010.sroa.6.0..sroa_idx.sroa_idx.i.i.i, i8 0, i64 16, i1 false), !noalias !1564
  %i.ck = load i64, ptr %i.g, align 8, !range !11, !alias.scope !1572, !noalias !1564, !noundef !10
  %i.cl = icmp eq i64 %i.ck, -1
  br i1 %i.cl, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeFloatECs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit47.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #8, !noalias !1564
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #8, !noalias !1564
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeFloatECs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit47.i.i.i

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeFloatECs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit47.i.i.i: ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1564
  br label %bb.ae

bb.ae:                                            ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeFloatECs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit47.i.i.i, %bb.x, %bb.k
  %i.cm = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1564
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.b, ptr noundef nonnull align 8 dereferenceable(88) %i.cm, i64 88, i1 false), !noalias !1564
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1564
  call void @_RNvMNtNtCs7PFeJTloU4p_4toml2de5errorNtB2_5Error4span(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.b) #8, !noalias !1564
  %i.cn = load i64, ptr %i.a, align 8, !range !16, !noalias !1564, !noundef !10
  %.not41.i.i.i = icmp eq i64 %i.cn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1564
  br i1 %.not41.i.i.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i64 1, ptr %i.b, align 8, !noalias !1564
  %.sroa.439.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.val, ptr %.sroa.439.0..sroa_idx.i.i.i, align 8, !noalias !1564
  %.sroa.540.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.val1, ptr %.sroa.540.0..sroa_idx.i.i.i, align 8, !noalias !1564
  br label %bb.ag

_RINvXNvXNvNtNtCsg6ZEkMtNi4J_8iceoryx27service9attributes1_1__NtB8_12AttributeSetNtNtCsePUspIjoSTD_10serde_core2de11Deserialize11deserializeNtB3_9___VisitorNtB1i_7Visitor20visit_newtype_structNtNtNtNtCs7PFeJTloU4p_4toml2de12deserializer5value17ValueDeserializerECs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit: ; preds = %bb.k
  %i.co = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %.sroa.51.i, ptr noundef nonnull align 8 dereferenceable(2824) %i.co, i64 2824, i1 false), !noalias !1573
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1564
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(2824) %.sroa.51.i, i64 2824, i1 false), !noalias !1574
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.51.i)
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.cp, ptr noundef nonnull align 8 dereferenceable(2824) %.sroa.5.i, i64 2824, i1 false), !noalias !1561
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae, %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.51.i, ptr noundef nonnull align 8 dereferenceable(88) %i.b, i64 88, i1 false), !noalias !1573
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1564
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1564
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.51.i, i64 88, i1 false), !noalias !1574
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.51.i)
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.cq, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.i, i64 88, i1 false), !noalias !1561
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.n, ptr noundef nonnull align 8 dereferenceable(88) %i.cq, i64 88, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @_RNvMNtNtCs7PFeJTloU4p_4toml2de5errorNtB2_5Error4span(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.n) #8
  %i.cr = load i64, ptr %i.m, align 8, !range !16, !noundef !10
  %.not = icmp eq i64 %i.cr, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br i1 %.not, label %bb.ai, label %bb.aj

bb.ah:                                            ; preds = %_RINvXNvXNvNtNtCsg6ZEkMtNi4J_8iceoryx27service9attributes1_1__NtB8_12AttributeSetNtNtCsePUspIjoSTD_10serde_core2de11Deserialize11deserializeNtB3_9___VisitorNtB1i_7Visitor20visit_newtype_structNtNtNtNtCs7PFeJTloU4p_4toml2de12deserializer5value17ValueDeserializerECs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit, %bb.aj
  %storemerge = phi i64 [ 0, %_RINvXNvXNvNtNtCsg6ZEkMtNi4J_8iceoryx27service9attributes1_1__NtB8_12AttributeSetNtNtCsePUspIjoSTD_10serde_core2de11Deserialize11deserializeNtB3_9___VisitorNtB1i_7Visitor20visit_newtype_structNtNtNtNtCs7PFeJTloU4p_4toml2de12deserializer5value17ValueDeserializerECs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger.exit ], [ 1, %bb.aj ]
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.ai:                                            ; preds = %bb.ag
  store i64 1, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %.val, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %.val1, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ag, %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.cq, ptr noundef nonnull align 8 dereferenceable(88) %i.n, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.ah
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RINvXs0_NvXNvNtCsg6ZEkMtNi4J_8iceoryx24nodes_1__NtBb_11NodeDetailsNtNtCsePUspIjoSTD_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB14_7Visitor9visit_mapINtNtCsaUG5QacNn5z_13toml_datetime2de20DatetimeDeserializerNtNtNtCs7PFeJTloU4p_4toml2de5error5ErrorEECs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(4936) %0, ptr noalias nofree noundef nonnull align 4 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 2 uses
  %i.b = alloca [88 x i8], align 8                ; 2 uses
  %i.c = alloca [88 x i8], align 8                ; 2 uses
  %.sroa.415 = alloca [144 x i8], align 8         ; 2 uses
  %.sroa.410 = alloca [264 x i8], align 8         ; 2 uses
  %i.d = alloca [88 x i8], align 8                ; 6 uses
  %.sroa.2 = alloca [4520 x i8], align 8          ; 3 uses
  %i.e = alloca [4528 x i8], align 8              ; 7 uses
  %.sroa.6 = alloca [88 x i8], align 8            ; 6 uses
  %i.f = alloca [152 x i8], align 8               ; 6 uses
  %.sroa.517 = alloca [144 x i8], align 8         ; 7 uses
  %i.g = alloca [272 x i8], align 8               ; 6 uses
  %.sroa.512 = alloca [264 x i8], align 8         ; 7 uses
  %i.h = alloca [88 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @_RINvXs_NtCsaUG5QacNn5z_13toml_datetime2deINtB5_20DatetimeDeserializerNtNtNtCs7PFeJTloU4p_4toml2de5error5ErrorENtNtCsePUspIjoSTD_10serde_core2de9MapAccess13next_key_seedINtNtCs8Chj7Szqq0n_4core6marker11PhantomDataNtNvXNvNtCsg6ZEkMtNi4J_8iceoryx24nodes_1__NtB3v_11NodeDetailsNtB1M_11Deserialize11deserialize7___FieldEECs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.h, ptr noalias nofree noundef nonnull align 4 dereferenceable(24) %1) #8
  %i.i = load i64, ptr %i.h, align 8, !range !20, !noundef !10 ; 2 uses
  %.not94 = icmp eq i64 %i.i, 2
  br i1 %.not94, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %.sroa.2.96..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.2, i64 88
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.l, %bb.a
  %.lcssa = phi i64 [ %i.i, %bb.a ], [ %i.x, %bb.l ]
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.446.0.copyload = load i8, ptr %.sroa.446.0..sroa_idx, align 8
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 9
  %.sroa.550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.550.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.547.0..sroa_idx, i64 79, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa, ptr %i.m, align 8
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.446.0.copyload, ptr %.sroa.449.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  br label %bb.ac

bb.b:                                             ; preds = %.lr.ph, %bb.l
  %.sroa.018.097 = phi i64 [ 2, %.lr.ph ], [ %.sroa.018.1, %bb.l ] ; 6 uses
  %.sroa.08.096 = phi i64 [ 0, %.lr.ph ], [ %.sroa.08.1, %bb.l ] ; 5 uses
  %.sroa.013.095 = phi i64 [ 0, %.lr.ph ], [ %.sroa.013.1, %bb.l ] ; 5 uses
  %i.n = load i8, ptr %i.j, align 8, !range !26, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  switch i8 %i.n, label %default.unreachable [
    i8 -1, label %bb.c
    i8 0, label %bb.d
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.o = trunc nuw i64 %.sroa.08.096 to i1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %i.o, label %bb.w, label %bb.x, !prof !21

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.q = icmp eq i64 %.sroa.08.096, 1
  br i1 %i.q, label %bb.i, label %bb.h, !prof !19

bb.e:                                             ; preds = %bb.b
  %i.r = icmp eq i64 %.sroa.013.095, 1
  br i1 %i.r, label %bb.n, label %bb.m, !prof !19

bb.f:                                             ; preds = %bb.b
  %.not57 = icmp eq i64 %.sroa.018.097, 2
  br i1 %.not57, label %bb.q, label %bb.r, !prof !21

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RINvXs_NtCsaUG5QacNn5z_13toml_datetime2deINtB5_20DatetimeDeserializerNtNtNtCs7PFeJTloU4p_4toml2de5error5ErrorENtNtCsePUspIjoSTD_10serde_core2de9MapAccess15next_value_seedINtNtCs8Chj7Szqq0n_4core6marker11PhantomDataNtNtB1M_11ignored_any10IgnoredAnyEECs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.d, ptr noalias nofree noundef nonnull align 4 dereferenceable(24) %1) #8
  %i.s = load i64, ptr %i.d, align 8, !range !20, !noundef !10
  %.not56 = icmp eq i64 %i.s, 2
  br i1 %.not56, label %bb.v, label %bb.u

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.512)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RINvXs_NtCsaUG5QacNn5z_13toml_datetime2deINtB5_20DatetimeDeserializerNtNtNtCs7PFeJTloU4p_4toml2de5error5ErrorENtNtCsePUspIjoSTD_10serde_core2de9MapAccess15next_value_seedINtNtCs8Chj7Szqq0n_4core6marker11PhantomDataNtNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_name8FileNameEECs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noalias nofree noundef nonnull sret([272 x i8]) align 8 captures(address) dereferenceable(272) %i.g, ptr noalias nofree noundef nonnull align 4 dereferenceable(24) %1) #8
  %i.t = load i64, ptr %i.g, align 8, !range !16, !noundef !10
  %i.u = trunc nuw i64 %i.t to i1
  br i1 %i.u, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvYNtNtNtCs7PFeJTloU4p_4toml2de5error5ErrorNtNtCsePUspIjoSTD_10serde_core2de5Error15duplicate_fieldCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 10) #8
  store i64 2, ptr %0, align 8
  br label %bb.ac

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.512, ptr noundef nonnull align 8 dereferenceable(88) %i.l, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.w, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.512, i64 88, i1 false)
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.512)
  br label %bb.ac

bb.k:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %.sroa.512, ptr noundef nonnull align 8 dereferenceable(264) %i.l, i64 264, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %.sroa.410, ptr noundef nonnull align 8 dereferenceable(264) %.sroa.512, i64 264, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.512)
  br label %bb.l

bb.l:                                             ; preds = %bb.v, %bb.t, %bb.p, %bb.k
  %.sroa.013.1 = phi i64 [ %.sroa.013.095, %bb.k ], [ 1, %bb.p ], [ %.sroa.013.095, %bb.t ], [ %.sroa.013.095, %bb.v ]
  %.sroa.08.1 = phi i64 [ 1, %bb.k ], [ %.sroa.08.096, %bb.p ], [ %.sroa.08.096, %bb.t ], [ %.sroa.08.096, %bb.v ]
  %.sroa.018.1 = phi i64 [ %.sroa.018.097, %bb.k ], [ %.sroa.018.097, %bb.p ], [ %i.ac, %bb.t ], [ %.sroa.018.097, %bb.v ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @_RINvXs_NtCsaUG5QacNn5z_13toml_datetime2deINtB5_20DatetimeDeserializerNtNtNtCs7PFeJTloU4p_4toml2de5error5ErrorENtNtCsePUspIjoSTD_10serde_core2de9MapAccess13next_key_seedINtNtCs8Chj7Szqq0n_4core6marker11PhantomDataNtNvXNvNtCsg6ZEkMtNi4J_8iceoryx24nodes_1__NtB3v_11NodeDetailsNtB1M_11Deserialize11deserialize7___FieldEECs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.h, ptr noalias nofree noundef nonnull align 4 dereferenceable(24) %1) #8
  %i.x = load i64, ptr %i.h, align 8, !range !20, !noundef !10 ; 2 uses
  %.not = icmp eq i64 %i.x, 2
  br i1 %.not, label %bb.b, label %._crit_edge

bb.m:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.517)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RINvXs_NtCsaUG5QacNn5z_13toml_datetime2deINtB5_20DatetimeDeserializerNtNtNtCs7PFeJTloU4p_4toml2de5error5ErrorENtNtCsePUspIjoSTD_10serde_core2de9MapAccess15next_value_seedINtNtCs8Chj7Szqq0n_4core6marker11PhantomDataNtNtNtCsg6ZEkMtNi4J_8iceoryx24node9node_name8NodeNameEECs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(address) dereferenceable(152) %i.f, ptr noalias nofree noundef nonnull align 4 dereferenceable(24) %1) #8
  %i.y = load i64, ptr %i.f, align 8, !range !16, !noundef !10
  %i.z = trunc nuw i64 %i.y to i1
  br i1 %i.z, label %bb.o, label %bb.p

bb.n:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvYNtNtNtCs7PFeJTloU4p_4toml2de5error5ErrorNtNtCsePUspIjoSTD_10serde_core2de5Error15duplicate_fieldCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 4) #8
  store i64 2, ptr %0, align 8
  br label %bb.ac

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.517, ptr noundef nonnull align 8 dereferenceable(88) %i.k, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ab, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.517, i64 88, i1 false)
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.517)
  br label %bb.ac

bb.p:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.517, ptr noundef nonnull align 8 dereferenceable(144) %i.k, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.415, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.517, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.517)
  br label %bb.l

bb.q:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RINvXs_NtCsaUG5QacNn5z_13toml_datetime2deINtB5_20DatetimeDeserializerNtNtNtCs7PFeJTloU4p_4toml2de5error5ErrorENtNtCsePUspIjoSTD_10serde_core2de9MapAccess15next_value_seedINtNtCs8Chj7Szqq0n_4core6marker11PhantomDataNtNtCsg6ZEkMtNi4J_8iceoryx26config6ConfigEECs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noalias nofree noundef nonnull sret([4528 x i8]) align 8 captures(address) dereferenceable(4528) %i.e, ptr noalias nofree noundef nonnull align 4 dereferenceable(24) %1) #8
  %i.ac = load i64, ptr %i.e, align 8, !range !20, !noundef !10 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.452.0..sroa_idx, i64 88, i1 false)
  br i1 %i.ad, label %bb.s, label %bb.t

bb.r:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvYNtNtNtCs7PFeJTloU4p_4toml2de5error5ErrorNtNtCsePUspIjoSTD_10serde_core2de5Error15duplicate_fieldCs8BG1qU1UekR_48iceoryx2_services_tunnel_end_to_end_tests_pinger(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.ae, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 6) #8
  store i64 2, ptr %0, align 8
  br label %bb.ac

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.af, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6, i64 88, i1 false)
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.ac

bb.t:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4432) %.sroa.2.96..sroa_idx, ptr noundef nonnull align 8 dereferenceable(4432) %.sroa.553.0..sroa_idx, i64 4432, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.2, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.l

bb.u:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ag, ptr noundef nonnull align 8 dereferenceable(88) %i.d, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 2, ptr %0, align 8
  br label %bb.ac

bb.v:                                             ; preds = %bb.g
end_hunk_0
