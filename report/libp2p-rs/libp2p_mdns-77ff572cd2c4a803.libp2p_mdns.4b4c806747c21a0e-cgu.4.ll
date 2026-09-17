Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_mdns-77ff572cd2c4a803.libp2p_mdns.4b4c806747c21a0e-cgu.4?download=true
inline.NumInlined: 91
inline.NumDeleted: 83
begin_hunk_0
@434 = private unnamed_addr constant [12 x i8] c"MacVlanFlags", align 1
@435 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @_RNvXsT_NtNtNtCs3LwfirTY3Ij_20netlink_packet_route2tc7actions6actionNtB5_12TcActionTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt }>, align 8
@436 = private unnamed_addr constant [15 x i8] c"TcActionGeneric", align 1
@437 = private unnamed_addr constant [5 x i8] c"index", align 1
@438 = private unnamed_addr constant [5 x i8] c"capab", align 1
@439 = private unnamed_addr constant [6 x i8] c"action", align 1
@440 = private unnamed_addr constant [6 x i8] c"refcnt", align 1
@441 = private unnamed_addr constant [7 x i8] c"bindcnt", align 1
@442 = private unnamed_addr constant [3 x i8] c"Sci", align 1
@443 = private unnamed_addr constant [4 x i8] c"Port", align 1
@444 = private unnamed_addr constant [6 x i8] c"IcvLen", align 1
@445 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info6macsec14MacSecCipherIdNtB6_5Debug3fmtCs6sOsJPswu84_11libp2p_mdns }>, align 8
@446 = private unnamed_addr constant [11 x i8] c"CipherSuite", align 1
@447 = private unnamed_addr constant [10 x i8] c"EncodingSa", align 1
@448 = private unnamed_addr constant [7 x i8] c"Encrypt", align 1
@449 = private unnamed_addr constant [7 x i8] c"Protect", align 1
@450 = private unnamed_addr constant [6 x i8] c"IncSci", align 1
@451 = private unnamed_addr constant [2 x i8] c"Es", align 1
@452 = private unnamed_addr constant [3 x i8] c"Scb", align 1
@453 = private unnamed_addr constant [13 x i8] c"ReplayProtect", align 1
@454 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info6macsec14MacSecValidateNtB6_5Debug3fmtCs6sOsJPswu84_11libp2p_mdns }>, align 8
@455 = private unnamed_addr constant [10 x i8] c"Validation", align 1
@456 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info6macsec13MacSecOffloadNtB6_5Debug3fmtCs6sOsJPswu84_11libp2p_mdns }>, align 8
@457 = private unnamed_addr constant [7 x i8] c"Offload", align 1
@458 = private unnamed_addr constant [3 x i8] c"Add", align 1
@459 = private unnamed_addr constant [3 x i8] c"Del", align 1
@460 = private unnamed_addr constant [5 x i8] c"Flush", align 1
@461 = private unnamed_addr constant [3 x i8] c"Set", align 1
@462 = private unnamed_addr constant [11 x i8] c"Ipv4Address", align 1
@463 = private unnamed_addr constant [8 x i8] c"Ipv4Port", align 1
@464 = private unnamed_addr constant [14 x i8] c"Ipv4OtherTimer", align 1
@465 = private unnamed_addr constant [11 x i8] c"Ipv6Address", align 1
@466 = private unnamed_addr constant [8 x i8] c"Ipv6Port", align 1
@467 = private unnamed_addr constant [14 x i8] c"Ipv6OtherTimer", align 1
@468 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -7944677318737953096 to ptr), ptr inttoptr (i64 -528938700965152779 to ptr) }>, align 8

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs6sOsJPswu84_11libp2p_mdns.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs6sOsJPswu84_11libp2p_mdns.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs6sOsJPswu84_11libp2p_mdns.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs6sOsJPswu84_11libp2p_mdns.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i8 @_RINvXNtNtCshhqnaxk4GqT_4rand5distr12distributionRNtNtB5_5other12AlphanumericINtB3_12DistributionhE6sampleNtNtNtB7_4rngs6thread9ThreadRngECs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 272 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 320
  %.pre.i = load i32, ptr %i.a, align 4, !alias.scope !20, !noalias !21
  br label %bb.b

bb.b:                                             ; preds = %_RNvXCsenQHu2qVDfv_9rand_coreNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtB2_3Rng8next_u32Cs6sOsJPswu84_11libp2p_mdns.exit.i, %bb.a
  %i.d = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i.i.i, %_RNvXCsenQHu2qVDfv_9rand_coreNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtB2_3Rng8next_u32Cs6sOsJPswu84_11libp2p_mdns.exit.i ], [ %.pre.i, %bb.a ] ; 3 uses
  %i.e = icmp ugt i32 %i.d, 63
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = load i64, ptr %i.c, align 4, !alias.scope !22, !noalias !23
  %i.g = icmp ugt i64 %i.f, 1023
  br i1 %i.g, label %bb.d, label %.thread.i.i.i, !prof !5

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs_NtNtCshhqnaxk4GqT_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.b) #17, !noalias !23
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.d, %bb.c
  tail call void @_RNvXs_NtCs1aYz1mjYrQZ_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core5block9Generator8generateCs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.b, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.a), !noalias !21
  br label %_RNvXCsenQHu2qVDfv_9rand_coreNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtB2_3Rng8next_u32Cs6sOsJPswu84_11libp2p_mdns.exit.i

bb.e:                                             ; preds = %bb.b
  %i.h = zext nneg i32 %i.d to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.h
  %i.j = add nuw nsw i32 %i.d, 1
  br label %_RNvXCsenQHu2qVDfv_9rand_coreNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtB2_3Rng8next_u32Cs6sOsJPswu84_11libp2p_mdns.exit.i

_RNvXCsenQHu2qVDfv_9rand_coreNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtB2_3Rng8next_u32Cs6sOsJPswu84_11libp2p_mdns.exit.i: ; preds = %bb.e, %.thread.i.i.i
  %.sroa.6.0.extract.trunc.i.i.i.i.i = phi i32 [ 1, %.thread.i.i.i ], [ %i.j, %bb.e ] ; 2 uses
  %.in.i.i.i = phi ptr [ %i.a, %.thread.i.i.i ], [ %i.i, %bb.e ]
  %i.k = load i32, ptr %.in.i.i.i, align 4, !alias.scope !20, !noalias !21, !noundef !4 ; 2 uses
  store i32 %.sroa.6.0.extract.trunc.i.i.i.i.i, ptr %i.a, align 4, !alias.scope !20, !noalias !21
  %i.l = icmp ult i32 %i.k, -134217728
  br i1 %i.l, label %_RINvXs0_NtNtCshhqnaxk4GqT_4rand5distr5otherNtB6_12AlphanumericINtNtB8_12distribution12DistributionhE6sampleNtNtNtBa_4rngs6thread9ThreadRngECs6sOsJPswu84_11libp2p_mdns.exit, label %bb.b

_RINvXs0_NtNtCshhqnaxk4GqT_4rand5distr5otherNtB6_12AlphanumericINtNtB8_12distribution12DistributionhE6sampleNtNtNtBa_4rngs6thread9ThreadRngECs6sOsJPswu84_11libp2p_mdns.exit: ; preds = %_RNvXCsenQHu2qVDfv_9rand_coreNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtB2_3Rng8next_u32Cs6sOsJPswu84_11libp2p_mdns.exit.i
  %i.m = lshr i32 %i.k, 26
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr @0, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !noundef !4
  ret i8 %i.p
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs5_NtCsexYYUdYSQU6_5alloc6stringNtB6_6StringINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorcE9from_iterINtNtNtBS_8adapters3map3MapINtNtB22_4take4TakeINtNtNtCshhqnaxk4GqT_4rand5distr12distribution4IterRNtNtB2M_5other12AlphanumericNtNtNtB2O_4rngs6thread9ThreadRnghEENvYcINtNtBU_7convert4FromhE4fromEECs6sOsJPswu84_11libp2p_mdns(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !alias.scope !43, !noalias !44
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val.i = load i64, ptr %i.c, align 8, !noalias !42, !noundef !4
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %.val.i)
          to label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB8_4take4TakeINtNtNtCshhqnaxk4GqT_4rand5distr12distribution4IterRNtNtB1e_5other12AlphanumericNtNtNtB1g_4rngs6thread9ThreadRnghEENvYcINtNtBc_7convert4FromhE4fromENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXsd_NtCsexYYUdYSQU6_5alloc6stringNtB4n_6StringINtNtB3B_7collect6ExtendcE6extendB3_E0ECs6sOsJPswu84_11libp2p_mdns.exit.i unwind label %bb.b, !noalias !45

_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB8_4take4TakeINtNtNtCshhqnaxk4GqT_4rand5distr12distribution4IterRNtNtB1e_5other12AlphanumericNtNtNtB1g_4rngs6thread9ThreadRnghEENvYcINtNtBc_7convert4FromhE4fromENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXsd_NtCsexYYUdYSQU6_5alloc6stringNtB4n_6StringINtNtB3B_7collect6ExtendcE6extendB3_E0ECs6sOsJPswu84_11libp2p_mdns.exit.i: ; preds = %bb.a
  invoke void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_4take4TakeINtNtNtCshhqnaxk4GqT_4rand5distr12distribution4IterRNtNtB1k_5other12AlphanumericNtNtNtB1m_4rngs6thread9ThreadRnghEENvYcINtNtBc_7convert4FromhE4fromENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3D_8for_each4callcNCINvXsd_NtCsexYYUdYSQU6_5alloc6stringNtB4Q_6StringINtNtB3H_7collect6ExtendcE6extendBN_E0E0ECs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.f unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !46)
  call void @llvm.experimental.noalias.scope.decl(metadata !47)
  call void @llvm.experimental.noalias.scope.decl(metadata !48)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !49)
  call void @llvm.experimental.noalias.scope.decl(metadata !50)
  call void @llvm.experimental.noalias.scope.decl(metadata !51)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !52, !noalias !42, !nonnull !4, !noundef !4 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !noalias !53, !noundef !4
  %i.h = add i64 %i.g, -1                         ; 2 uses
  store i64 %i.h, ptr %i.f, align 8, !noalias !53
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.c, label %.body

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCskKLDkoKarTP_4core4cell10UnsafeCellINtNtCsenQHu2qVDfv_9rand_core5block8BlockRngNtNtNtCshhqnaxk4GqT_4rand4rngs6thread13ReseedingCoreEEE9drop_slowB26_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #17
          to label %.body unwind label %bb.d, !noalias !45

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16, !noalias !45
  unreachable

bb.e:                                             ; preds = %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB8_4take4TakeINtNtNtCshhqnaxk4GqT_4rand5distr12distribution4IterRNtNtB1e_5other12AlphanumericNtNtNtB1g_4rngs6thread9ThreadRnghEENvYcINtNtBc_7convert4FromhE4fromENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXsd_NtCsexYYUdYSQU6_5alloc6stringNtB4n_6StringINtNtB3B_7collect6ExtendcE6extendB3_E0ECs6sOsJPswu84_11libp2p_mdns.exit.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.k, %bb.e ], [ %i.d, %bb.c ], [ %i.d, %bb.b ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #18
          to label %bb.h unwind label %bb.g

bb.f:                                             ; preds = %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB8_4take4TakeINtNtNtCshhqnaxk4GqT_4rand5distr12distribution4IterRNtNtB1e_5other12AlphanumericNtNtNtB1g_4rngs6thread9ThreadRnghEENvYcINtNtBc_7convert4FromhE4fromENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXsd_NtCsexYYUdYSQU6_5alloc6stringNtB4n_6StringINtNtB3B_7collect6ExtendcE6extendB3_E0ECs6sOsJPswu84_11libp2p_mdns.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.g:                                             ; preds = %.body
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.h:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangejINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %.not = icmp ult i64 %1, %2
  br i1 %.not, label %bb.b, label %bb.x, !prof !6

bb.b:                                             ; preds = %bb.a
  %.val2 = load ptr, ptr %0, align 8              ; 16 uses
  %i.b = icmp ugt i64 %2, 4294967295
  br i1 %i.b, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = trunc i64 %1 to i32                      ; 3 uses
  %i.d = trunc nuw i64 %2 to i32                  ; 3 uses
  %i.e = icmp ult i32 %i.c, %i.d
  br i1 %i.e, label %bb.d, label %bb.w

bb.d:                                             ; preds = %bb.c
  %4 = sub nuw i32 %i.d, %i.c                     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  %i.f = getelementptr inbounds nuw i8, ptr %.val2, i64 16 ; 9 uses
  %i.g = load i32, ptr %i.f, align 4, !noalias !93, !noundef !4 ; 3 uses
  %i.h = icmp ugt i32 %i.g, 63
  br i1 %i.h, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.val2, i64 272 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val2, i64 320
  %i.k = load i64, ptr %i.j, align 4, !alias.scope !94, !noalias !95
  %i.l = icmp ugt i64 %i.k, 1023
  br i1 %i.l, label %bb.f, label %.thread.i.i.i.i14.i.i.i.i, !prof !5

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvMs_NtNtCshhqnaxk4GqT_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.i) #17, !noalias !95
  br label %.thread.i.i.i.i14.i.i.i.i

.thread.i.i.i.i14.i.i.i.i:                        ; preds = %bb.f, %bb.e
  tail call void @_RNvXs_NtCs1aYz1mjYrQZ_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core5block9Generator8generateCs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.i, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.f), !noalias !96
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs6sOsJPswu84_11libp2p_mdns.exit15.i.i.i.i

bb.g:                                             ; preds = %bb.d
  %i.m = zext nneg i32 %i.g to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.m
  %i.o = add nuw nsw i32 %i.g, 1
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs6sOsJPswu84_11libp2p_mdns.exit15.i.i.i.i

_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs6sOsJPswu84_11libp2p_mdns.exit15.i.i.i.i: ; preds = %bb.g, %.thread.i.i.i.i14.i.i.i.i
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i12.i.i.i.i = phi i32 [ 1, %.thread.i.i.i.i14.i.i.i.i ], [ %i.o, %bb.g ] ; 4 uses
  %.in.i.i.i.i13.i.i.i.i = phi ptr [ %i.f, %.thread.i.i.i.i14.i.i.i.i ], [ %i.n, %bb.g ]
  %i.p = load i32, ptr %.in.i.i.i.i13.i.i.i.i, align 4, !alias.scope !97, !noalias !96, !noundef !4
  store i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i12.i.i.i.i, ptr %i.f, align 4, !alias.scope !97, !noalias !96
  %5 = zext i32 %i.p to i64
  %i.q = zext i32 %4 to i64
  %i.r = mul nuw i64 %5, %i.q                     ; 2 uses
  %i.s = lshr i64 %i.r, 32                        ; 2 uses
  %i.t = trunc i64 %i.r to i32                    ; 2 uses
  %i.u = sub i32 %i.c, %i.d
  %i.v = icmp ult i32 %i.u, %i.t
  br i1 %i.v, label %bb.h, label %_RINvXst_NtNtNtCshhqnaxk4GqT_4rand5distr7uniform3intINtB6_10UniformIntmENtB8_14UniformSampler13sample_singleNtNtNtBc_4rngs6thread9ThreadRngmmECs6sOsJPswu84_11libp2p_mdns.exit.i.i

bb.h:                                             ; preds = %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs6sOsJPswu84_11libp2p_mdns.exit15.i.i.i.i
  %i.w = icmp samesign ugt i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i12.i.i.i.i, 63
  br i1 %i.w, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %.val2, i64 272 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val2, i64 320
  %i.z = load i64, ptr %i.y, align 4, !alias.scope !98, !noalias !99
  %i.aa = icmp ugt i64 %i.z, 1023
  br i1 %i.aa, label %bb.j, label %.thread.i.i.i.i18.i.i.i.i, !prof !5

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvMs_NtNtCshhqnaxk4GqT_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.x) #17, !noalias !99
  br label %.thread.i.i.i.i18.i.i.i.i

.thread.i.i.i.i18.i.i.i.i:                        ; preds = %bb.j, %bb.i
  tail call void @_RNvXs_NtCs1aYz1mjYrQZ_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core5block9Generator8generateCs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.x, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.f), !noalias !100
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs6sOsJPswu84_11libp2p_mdns.exit19.i.i.i.i

bb.k:                                             ; preds = %bb.h
  %i.ab = zext nneg i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i12.i.i.i.i to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ab
  %i.ad = add nuw nsw i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i12.i.i.i.i, 1
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs6sOsJPswu84_11libp2p_mdns.exit19.i.i.i.i

_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs6sOsJPswu84_11libp2p_mdns.exit19.i.i.i.i: ; preds = %bb.k, %.thread.i.i.i.i18.i.i.i.i
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i16.i.i.i.i = phi i32 [ 1, %.thread.i.i.i.i18.i.i.i.i ], [ %i.ad, %bb.k ]
  %.in.i.i.i.i17.i.i.i.i = phi ptr [ %i.f, %.thread.i.i.i.i18.i.i.i.i ], [ %i.ac, %bb.k ]
  %i.ae = load i32, ptr %.in.i.i.i.i17.i.i.i.i, align 4, !alias.scope !101, !noalias !100, !noundef !4
  store i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i16.i.i.i.i, ptr %i.f, align 4, !alias.scope !101, !noalias !100
  %6 = tail call i32 @llvm.umulh.i32(i32 %i.ae, i32 %4)
  %i.af = xor i32 %i.t, -1
  %.not9.i.i.i.i = icmp ugt i32 %6, %i.af
  %i.ag = zext i1 %.not9.i.i.i.i to i64
  %i.ah = add nuw nsw i64 %i.s, %i.ag
  br label %_RINvXst_NtNtNtCshhqnaxk4GqT_4rand5distr7uniform3intINtB6_10UniformIntmENtB8_14UniformSampler13sample_singleNtNtNtBc_4rngs6thread9ThreadRngmmECs6sOsJPswu84_11libp2p_mdns.exit.i.i

bb.l:                                             ; preds = %bb.b
  %i.ai = sub nuw i64 %2, %1                      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.val2, i64 16 ; 9 uses
  %i.ak = load i32, ptr %i.aj, align 4, !noalias !102, !noundef !4 ; 4 uses
  %i.al = icmp ult i32 %i.ak, 63
  br i1 %i.al, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %.val2, i64 268
  %i.an = load i32, ptr %i.am, align 4, !alias.scope !103, !noalias !104, !noundef !4
  %i.ao = getelementptr inbounds nuw i8, ptr %.val2, i64 272 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.val2, i64 320
  %i.aq = load i64, ptr %i.ap, align 4, !alias.scope !105, !noalias !106
  %i.ar = icmp ugt i64 %i.aq, 1023
  br i1 %i.ar, label %bb.n, label %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i.i, !prof !5

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvMs_NtNtCshhqnaxk4GqT_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.ao) #17, !noalias !106
  br label %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i.i

_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i.i: ; preds = %bb.n, %bb.m
  tail call void @_RNvXs_NtCs1aYz1mjYrQZ_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core5block9Generator8generateCs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.ao, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.aj), !noalias !104
  %i.as = load i32, ptr %i.aj, align 4, !alias.scope !103, !noalias !104, !noundef !4 ; 2 uses
  %.not.i.i.i.i10.i.i.i.i = icmp eq i32 %i.ak, 63
  br i1 %.not.i.i.i.i10.i.i.i.i, label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs6sOsJPswu84_11libp2p_mdns.exit14.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.val2, i64 20
  %i.au = load i32, ptr %i.at, align 4, !alias.scope !103, !noalias !104, !noundef !4
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs6sOsJPswu84_11libp2p_mdns.exit14.i.i.i.i

bb.p:                                             ; preds = %bb.l
  %i.av = zext nneg i32 %i.ak to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !alias.scope !103, !noalias !104, !noundef !4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !alias.scope !103, !noalias !104, !noundef !4
  %i.ba = add nuw nsw i32 %i.ak, 2
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs6sOsJPswu84_11libp2p_mdns.exit14.i.i.i.i

_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs6sOsJPswu84_11libp2p_mdns.exit14.i.i.i.i: ; preds = %bb.p, %bb.o, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i.i
  %.sroa.0.018.i.i.i.i11.i.i.i.i = phi i32 [ %i.ba, %bb.p ], [ 1, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i.i ], [ 2, %bb.o ] ; 5 uses
  %.sroa.02.017.i.i.i.i12.i.i.i.i = phi i32 [ %i.ax, %bb.p ], [ %i.an, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i.i ], [ %i.as, %bb.o ]
  %.sroa.03.016.i.i.i.i13.i.i.i.i = phi i32 [ %i.az, %bb.p ], [ %i.as, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i9.i.i.i.i ], [ %i.au, %bb.o ]
  store i32 %.sroa.0.018.i.i.i.i11.i.i.i.i, ptr %i.aj, align 4, !alias.scope !103, !noalias !104
  %i.bb = zext i32 %.sroa.03.016.i.i.i.i13.i.i.i.i to i64
  %i.bc = shl nuw i64 %i.bb, 32
  %i.bd = zext i32 %.sroa.02.017.i.i.i.i12.i.i.i.i to i64
  %i.be = or disjoint i64 %i.bc, %i.bd
  %i.bf = zext i64 %i.be to i128
  %i.bg = zext i64 %i.ai to i128
  %i.bh = mul nuw i128 %i.bf, %i.bg               ; 2 uses
  %i.bi = lshr i128 %i.bh, 64
  %i.bj = trunc nuw i128 %i.bi to i64             ; 2 uses
  %i.bk = trunc i128 %i.bh to i64                 ; 2 uses
  %i.bl = sub i64 %1, %2
  %i.bm = icmp ult i64 %i.bl, %i.bk
  br i1 %i.bm, label %bb.q, label %bb.v

bb.q:                                             ; preds = %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs6sOsJPswu84_11libp2p_mdns.exit14.i.i.i.i
  %i.bn = icmp samesign ult i32 %.sroa.0.018.i.i.i.i11.i.i.i.i, 63
  br i1 %i.bn, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bo = getelementptr inbounds nuw i8, ptr %.val2, i64 268
  %i.bp = load i32, ptr %i.bo, align 4, !alias.scope !107, !noalias !108, !noundef !4
  %i.bq = getelementptr inbounds nuw i8, ptr %.val2, i64 272 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.val2, i64 320
  %i.bs = load i64, ptr %i.br, align 4, !alias.scope !109, !noalias !110
  %i.bt = icmp ugt i64 %i.bs, 1023
  br i1 %i.bt, label %bb.s, label %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i.i, !prof !5

bb.s:                                             ; preds = %bb.r
  tail call void @_RNvMs_NtNtCshhqnaxk4GqT_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.bq) #17, !noalias !110
  br label %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i.i

_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i.i: ; preds = %bb.s, %bb.r
  tail call void @_RNvXs_NtCs1aYz1mjYrQZ_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsenQHu2qVDfv_9rand_core5block9Generator8generateCs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.bq, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.aj), !noalias !108
  %i.bu = load i32, ptr %i.aj, align 4, !alias.scope !107, !noalias !108, !noundef !4 ; 2 uses
  %.not.i.i.i.i16.i.i.i.i = icmp eq i32 %.sroa.0.018.i.i.i.i11.i.i.i.i, 63
  br i1 %.not.i.i.i.i16.i.i.i.i, label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs6sOsJPswu84_11libp2p_mdns.exit20.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %.val2, i64 20
  %i.bw = load i32, ptr %i.bv, align 4, !alias.scope !107, !noalias !108, !noundef !4
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs6sOsJPswu84_11libp2p_mdns.exit20.i.i.i.i

bb.u:                                             ; preds = %bb.q
  %i.bx = zext nneg i32 %.sroa.0.018.i.i.i.i11.i.i.i.i to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.bx ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !alias.scope !107, !noalias !108, !noundef !4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.cb = load i32, ptr %i.ca, align 4, !alias.scope !107, !noalias !108, !noundef !4
  %i.cc = add nuw nsw i32 %.sroa.0.018.i.i.i.i11.i.i.i.i, 2
  br label %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs6sOsJPswu84_11libp2p_mdns.exit20.i.i.i.i

_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs6sOsJPswu84_11libp2p_mdns.exit20.i.i.i.i: ; preds = %bb.u, %bb.t, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i.i
  %.sroa.0.018.i.i.i.i17.i.i.i.i = phi i32 [ %i.cc, %bb.u ], [ 1, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i.i ], [ 2, %bb.t ]
  %.sroa.02.017.i.i.i.i18.i.i.i.i = phi i32 [ %i.bz, %bb.u ], [ %i.bp, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i.i ], [ %i.bu, %bb.t ]
  %.sroa.03.016.i.i.i.i19.i.i.i.i = phi i32 [ %i.cb, %bb.u ], [ %i.bu, %_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate.exit.i.i.i.i15.i.i.i.i ], [ %i.bw, %bb.t ]
  store i32 %.sroa.0.018.i.i.i.i17.i.i.i.i, ptr %i.aj, align 4, !alias.scope !107, !noalias !108
  %i.cd = zext i32 %.sroa.03.016.i.i.i.i19.i.i.i.i to i64
  %i.ce = shl nuw i64 %i.cd, 32
  %i.cf = zext i32 %.sroa.02.017.i.i.i.i18.i.i.i.i to i64
  %i.cg = or disjoint i64 %i.ce, %i.cf
  %7 = tail call i64 @llvm.umulh.i64(i64 %i.cg, i64 %i.ai)
  %i.ch = xor i64 %i.bk, -1
  %.not6.i.i.i.i = icmp ugt i64 %7, %i.ch
  %i.ci = zext i1 %.not6.i.i.i.i to i64
  %i.cj = add nuw i64 %i.ci, %i.bj
  br label %bb.v

_RINvXst_NtNtNtCshhqnaxk4GqT_4rand5distr7uniform3intINtB6_10UniformIntmENtB8_14UniformSampler13sample_singleNtNtNtBc_4rngs6thread9ThreadRngmmECs6sOsJPswu84_11libp2p_mdns.exit.i.i: ; preds = %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs6sOsJPswu84_11libp2p_mdns.exit19.i.i.i.i, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs6sOsJPswu84_11libp2p_mdns.exit15.i.i.i.i
  %.sroa.04.0.i.i.i.i = phi i64 [ %i.ah, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs6sOsJPswu84_11libp2p_mdns.exit19.i.i.i.i ], [ %i.s, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randommECs6sOsJPswu84_11libp2p_mdns.exit15.i.i.i.i ]
  %i.ck = add i64 %.sroa.04.0.i.i.i.i, %1
  %.sroa.6.0.extract.shift.i.i = and i64 %i.ck, 4294967295
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtCshhqnaxk4GqT_4rand5distr7uniform5ErrorE6unwrapCs6sOsJPswu84_11libp2p_mdns.exit

bb.v:                                             ; preds = %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs6sOsJPswu84_11libp2p_mdns.exit20.i.i.i.i, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs6sOsJPswu84_11libp2p_mdns.exit14.i.i.i.i
  %.sroa.01.0.i.i.i.i = phi i64 [ %i.cj, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs6sOsJPswu84_11libp2p_mdns.exit20.i.i.i.i ], [ %i.bj, %_RINvYNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECs6sOsJPswu84_11libp2p_mdns.exit14.i.i.i.i ]
  %i.cl = add i64 %.sroa.01.0.i.i.i.i, %1
  br label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtCshhqnaxk4GqT_4rand5distr7uniform5ErrorE6unwrapCs6sOsJPswu84_11libp2p_mdns.exit

bb.w:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !111
  store i8 0, ptr %i.a, align 1, !noalias !111
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #19, !noalias !112
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtCshhqnaxk4GqT_4rand5distr7uniform5ErrorE6unwrapCs6sOsJPswu84_11libp2p_mdns.exit: ; preds = %bb.v, %_RINvXst_NtNtNtCshhqnaxk4GqT_4rand5distr7uniform3intINtB6_10UniformIntmENtB8_14UniformSampler13sample_singleNtNtNtBc_4rngs6thread9ThreadRngmmECs6sOsJPswu84_11libp2p_mdns.exit.i.i
  %.sroa.74.0.ph = phi i64 [ %.sroa.6.0.extract.shift.i.i, %_RINvXst_NtNtNtCshhqnaxk4GqT_4rand5distr7uniform3intINtB6_10UniformIntmENtB8_14UniformSampler13sample_singleNtNtNtBc_4rngs6thread9ThreadRngmmECs6sOsJPswu84_11libp2p_mdns.exit.i.i ], [ %i.cl, %bb.v ]
  ret i64 %.sroa.74.0.ph

bb.x:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCskFgHTArva8k_13netlink_proto8protocol8protocolINtB4_8ProtocolNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc15UnboundedSenderINtNtCsgUwh0qa7Dto_19netlink_packet_core7message14NetlinkMessageB18_EEE3newCs6sOsJPswu84_11libp2p_mdns(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([152 x i8]) align 8 captures(none) dereferenceable(152) initializes((0, 148)) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @4) ; 2 uses
  %i.b = extractvalue { i64, i64 } %i.a, 0
  %i.c = extractvalue { i64, i64 } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) @6, i64 32, i1 false)
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %i.b, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %i.c, ptr %.sroa.514.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, i8 0, i64 24, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.53.0..sroa_idx, i8 0, i64 24, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.57.0..sroa_idx, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXNtNtNtCs3LwfirTY3Ij_20netlink_packet_route2tc7filters9u32_flagsNtB2_18TcU32SelectorFlagsNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 18, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @29)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5timer5tokioINtB4_5TimerNtNtNtCsc13h7DQFCSE_5tokio4time8interval8IntervalENtB4_7Builder11interval_at(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, i64 noundef %1, i32 noundef range(i32 0, 1000000000) %2, i64 noundef %3, i32 noundef range(i32 0, 1000000000) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 3 uses
  call void @_RNvNtNtCsc13h7DQFCSE_5tokio4time8interval11interval_at(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, i64 noundef %1, i32 noundef %2, i64 noundef %3, i32 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 2, ptr %i.b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5timer5tokioINtB4_5TimerNtNtNtCsc13h7DQFCSE_5tokio4time8interval8IntervalENtB4_7Builder2at(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, i64 noundef %1, i32 noundef range(i32 0, 1000000000) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 3 uses
  call void @_RNvNtNtCsc13h7DQFCSE_5tokio4time8interval11interval_at(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, i64 noundef %1, i32 noundef %2, i64 noundef -1, i32 noundef 999999999, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 2, ptr %i.b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5timer5tokioINtB4_5TimerNtNtNtCsc13h7DQFCSE_5tokio4time8interval8IntervalENtB4_7Builder8interval(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, i64 noundef %1, i32 noundef range(i32 0, 1000000000) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 3 uses
  %i.b = tail call { i64, i32 } @_RNvMNtNtCsc13h7DQFCSE_5tokio4time7instantNtB2_7Instant3now() ; 2 uses
  %i.c = extractvalue { i64, i32 } %i.b, 0
  %i.d = extractvalue { i64, i32 } %i.b, 1
  %i.e = tail call { i64, i32 } @_RNvXs1_NtNtCsc13h7DQFCSE_5tokio4time7instantNtB5_7InstantINtNtNtCskKLDkoKarTP_4core3ops5arith3AddNtNtB10_4time8DurationE3add(i64 noundef %i.c, i32 noundef %i.d, i64 noundef %1, i32 noundef %2) ; 2 uses
  %i.f = extractvalue { i64, i32 } %i.e, 0
  %i.g = extractvalue { i64, i32 } %i.e, 1
  call void @_RNvNtNtCsc13h7DQFCSE_5tokio4time8interval11interval_at(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, i64 noundef %i.f, i32 noundef %i.g, i64 noundef %1, i32 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34)
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 2, ptr %i.h, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs0_NtCsgUwh0qa7Dto_19netlink_packet_core6headerNtB5_13NetlinkHeaderNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.a, align 8
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field5_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 6, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @35, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 12, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @36, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 5, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @36, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 15, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @35, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 11, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @37)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8find_map5checkRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShENtCsbli3iz7XG76_9multiaddr9MultiaddrQNCNvMs5_NtNtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5iface5queryNtB3b_8MdnsPeer3news0_0E0INtB7_5FnMutTuB1P_EE8call_mutB3h_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 8)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !4, !align !7, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !118
  call void @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvMs5_NtNtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5iface5queryNtBW_8MdnsPeer3news0_0INtB7_5FnMutTRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEEE8call_mutB12_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2), !noalias !117
  %i.c = load ptr, ptr %i.a, align 8, !noalias !118, !noundef !4
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !119
  br label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8find_map5checkRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShENtCsbli3iz7XG76_9multiaddr9MultiaddrQNCNvMs5_NtNtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5iface5queryNtB2C_8MdnsPeer3news0_0E0B2I_.exit

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !alias.scope !117, !noalias !119
  br label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8find_map5checkRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShENtCsbli3iz7XG76_9multiaddr9MultiaddrQNCNvMs5_NtNtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5iface5queryNtB2C_8MdnsPeer3news0_0E0B2I_.exit

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8find_map5checkRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShENtCsbli3iz7XG76_9multiaddr9MultiaddrQNCNvMs5_NtNtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5iface5queryNtB2C_8MdnsPeer3news0_0E0B2I_.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !118
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsgUwh0qa7Dto_19netlink_packet_core7message14NetlinkMessageNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageENtB6_5Debug3fmtCs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !7, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !123
  store ptr %i.b, ptr %i.a, align 8, !noalias !123
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @160, i64 noundef 14, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @80, i64 noundef 6, ptr noundef nonnull readonly %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @158, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @161, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @159)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !123
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsexYYUdYSQU6_5alloc6string6StringNtB6_5Debug3fmtCs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !7, !noundef !4 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !4
  %i.d = tail call noundef zeroext i1 @_RNvXsh_NtCskKLDkoKarTP_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCs3LwfirTY3Ij_20netlink_packet_route15neighbour_table7message21NeighbourTableMessageNtB6_5Debug3fmtCs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !7, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !127
  store ptr %i.b, ptr %i.a, align 8, !noalias !127
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @79, i64 noundef 21, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @80, i64 noundef 6, ptr noundef nonnull readonly %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @77, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 10, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @78)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !127
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCs3LwfirTY3Ij_20netlink_packet_route15neighbour_table9attribute23NeighbourTableAttributeNtB6_5Debug3fmtCs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
end_hunk_0
begin_hunk_1_@_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_fields_finish
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_fields_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_5Debug3fmtCs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs3LwfirTY3Ij_20netlink_packet_route15neighbour_table9attribute23NeighbourTableAttributeENtB6_5Debug3fmtCs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsb_NvNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info14bridge_boolopt1__NtB5_16InternalBitFlagsNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsb_NvNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info8mac_vlan1__NtB5_16InternalBitFlagsNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRlNtB6_5Debug3fmtCs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3net7ip_addr6IpAddrNtB6_5Debug3fmtCs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3net7ip_addr8Ipv4AddrNtB6_5Debug3fmtCs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3net7ip_addr8Ipv6AddrNtB6_5Debug3fmtCs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCs3LwfirTY3Ij_20netlink_packet_route7address10cache_info9CacheInfoNtB6_5Debug3fmtCs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCs3LwfirTY3Ij_20netlink_packet_route7address10addr_flags12AddressFlagsNtB6_5Debug3fmtCs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRtNtB6_5Debug3fmtCs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsgUwh0qa7Dto_19netlink_packet_core7payload14NetlinkPayloadNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageENtB6_5Debug3fmtCs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRAhj6_NtB6_5Debug3fmtCs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info8mac_vlan11InfoMacVlanENtB6_5Debug3fmtCs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs3LwfirTY3Ij_20netlink_packet_route2tc7actions6action8TcActionENtB6_5Debug3fmtCs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRhNtB6_5Debug3fmtCs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRAhj10_NtB6_5Debug3fmtCs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtNtCs3LwfirTY3Ij_20netlink_packet_route2tc7filters6flower4mpls24TcFilterFlowerMplsOptionENtB6_5Debug3fmtCs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtNtCs3LwfirTY3Ij_20netlink_packet_route2tc7actions6action3TcfNtB6_5Debug3fmtCs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRbNtB6_5Debug3fmtCs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link13vlan_protocol12VlanProtocolNtB6_5Debug3fmtCs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info6bridge18BridgeQuerierStateENtB6_5Debug3fmtCs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field4_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

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
declare noundef zeroext i1 @_RNvXs3_NtNtNtCskKLDkoKarTP_4core3fmt3num3imptNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXso_NtNtCskKLDkoKarTP_4core3fmt3numtNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsm_NtNtCskKLDkoKarTP_4core3fmt3numtNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsw_NtNtCskKLDkoKarTP_4core3fmt3nummNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsu_NtNtCskKLDkoKarTP_4core3fmt3nummNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i32 } @_RNvMs0_NtNtCsc13h7DQFCSE_5tokio4time8intervalNtB5_8Interval9poll_tick(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsr_NtCskKLDkoKarTP_4core3fmtShNtB5_5Debug3fmtCs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCs3LwfirTY3Ij_20netlink_packet_route2tc6header8TcHandleNtB6_5Debug3fmtCs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtNtCs3LwfirTY3Ij_20netlink_packet_route2tc7filters9u32_flags16TcU32OptionFlagsNtB6_5Debug3fmtCs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info8mac_vlan11InfoMacVtapENtB6_5Debug3fmtCs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs7_NtNtCskKLDkoKarTP_4core3net7ip_addrNtB5_8Ipv4AddrNtNtB9_3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtNtCs3LwfirTY3Ij_20netlink_packet_route2tc7actions8nat_flag10TcNatFlagsNtB6_5Debug3fmtCs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs3LwfirTY3Ij_20netlink_packet_route20address_family_linux13AddressFamilyNtB6_5Debug3fmtCs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs3LwfirTY3Ij_20netlink_packet_route2tc7filters7cls_u328TcU32KeyENtB6_5Debug3fmtCs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtCskKLDkoKarTP_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs3LwfirTY3Ij_20netlink_packet_route15neighbour_table9attribute23NeighbourTableAttributeINtNtNtBa_5slice4iter4IterB14_EECs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link11down_reason22LinkProtocolDownReasonINtNtNtBa_5slice4iter4IterB14_EECs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs3LwfirTY3Ij_20netlink_packet_route5route7metrics11RouteMetricINtNtNtBa_5slice4iter4IterB14_EECs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs3LwfirTY3Ij_20netlink_packet_route7address9attribute16AddressAttributeINtNtNtBa_5slice4iter4IterB14_EECs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtCs3LwfirTY3Ij_20netlink_packet_route2tc7filters7cls_u328TcU32KeyINtNtNtBa_5slice4iter4IterB14_EECs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link7af_spec4inet10AfSpecInetINtNtNtBa_5slice4iter4IterB14_EECs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info3gtp7InfoGtpINtNtNtBa_5slice4iter4IterB14_EECs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info3vti7InfoVtiINtNtNtBa_5slice4iter4IterB14_EECs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info5ipoib9InfoIpoibINtNtNtBa_5slice4iter4IterB14_EECs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info6bridge10InfoBridgeINtNtNtBa_5slice4iter4IterB14_EECs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info6bridge18BridgeQuerierStateINtNtNtBa_5slice4iter4IterB14_EECs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info6macsec10InfoMacSecINtNtNtBa_5slice4iter4IterB14_EECs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info8mac_vlan11InfoMacVlanINtNtNtBa_5slice4iter4IterB14_EECs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtCs3LwfirTY3Ij_20netlink_packet_route4link9link_info8mac_vlan11InfoMacVtapINtNtNtBa_5slice4iter4IterB14_EECs6sOsJPswu84_11libp2p_mdns(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCskKLDkoKarTP_4core4cell10UnsafeCellINtNtCsenQHu2qVDfv_9rand_core5block8BlockRngNtNtNtCshhqnaxk4GqT_4rand4rngs6thread13ReseedingCoreEEE9drop_slowB26_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umulh.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umulh.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #13

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { cold noreturn nounwind }
attributes #17 = { noinline }
attributes #18 = { cold }
attributes #19 = { noinline noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!4 = !{}
!5 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!6 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!7 = !{i64 8}
!8 = !{i64 2}
!9 = !{i64 4}
!10 = !{i8 0, i8 4}
!11 = !{i64 0, i64 -9223372036854775799}
!12 = !{i8 0, i8 2}
!13 = distinct !{!13, !"_RNvMs1_NtCsenQHu2qVDfv_9rand_core5blockINtB5_8BlockRngNtNtNtCshhqnaxk4GqT_4rand4rngs6thread13ReseedingCoreE9next_wordCs6sOsJPswu84_11libp2p_mdns"}
!14 = distinct !{!14, !13, !"_RNvMs1_NtCsenQHu2qVDfv_9rand_core5blockINtB5_8BlockRngNtNtNtCshhqnaxk4GqT_4rand4rngs6thread13ReseedingCoreE9next_wordCs6sOsJPswu84_11libp2p_mdns: argument 0"}
!15 = distinct !{!15, !"_RNvXs3_NtNtCshhqnaxk4GqT_4rand4rngs6threadNtB5_9ThreadRngNtCsenQHu2qVDfv_9rand_core6TryRng12try_next_u32"}
!16 = distinct !{!16, !15, !"_RNvXs3_NtNtCshhqnaxk4GqT_4rand4rngs6threadNtB5_9ThreadRngNtCsenQHu2qVDfv_9rand_core6TryRng12try_next_u32: argument 0"}
!17 = distinct !{!17, !"_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate"}
!18 = distinct !{!18, !17, !"_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate: argument 0"}
!19 = distinct !{!19, !17, !"_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate: argument 1"}
!20 = !{!14}
!21 = !{!16}
!22 = !{!18, !14}
!23 = !{!19, !16}
!24 = distinct !{!24, !"_RINvXsd_NtCsexYYUdYSQU6_5alloc6stringNtB6_6StringINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendcE6extendINtNtNtBS_8adapters3map3MapINtNtB1S_4take4TakeINtNtNtCshhqnaxk4GqT_4rand5distr12distribution4IterRNtNtB2C_5other12AlphanumericNtNtNtB2E_4rngs6thread9ThreadRnghEENvYcINtNtBU_7convert4FromhE4fromEECs6sOsJPswu84_11libp2p_mdns"}
!25 = distinct !{!25, !24, !"_RINvXsd_NtCsexYYUdYSQU6_5alloc6stringNtB6_6StringINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendcE6extendINtNtNtBS_8adapters3map3MapINtNtB1S_4take4TakeINtNtNtCshhqnaxk4GqT_4rand5distr12distribution4IterRNtNtB2C_5other12AlphanumericNtNtNtB2E_4rngs6thread9ThreadRnghEENvYcINtNtBU_7convert4FromhE4fromEECs6sOsJPswu84_11libp2p_mdns: argument 1"}
!26 = distinct !{!26, !24, !"_RINvXsd_NtCsexYYUdYSQU6_5alloc6stringNtB6_6StringINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendcE6extendINtNtNtBS_8adapters3map3MapINtNtB1S_4take4TakeINtNtNtCshhqnaxk4GqT_4rand5distr12distribution4IterRNtNtB2C_5other12AlphanumericNtNtNtB2E_4rngs6thread9ThreadRnghEENvYcINtNtBU_7convert4FromhE4fromEECs6sOsJPswu84_11libp2p_mdns: argument 0"}
!27 = distinct !{!27, !"_RNvXNtNtNtCskKLDkoKarTP_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtBQ_4take4TakeINtNtNtCshhqnaxk4GqT_4rand5distr12distribution4IterRNtNtB1z_5other12AlphanumericNtNtNtB1B_4rngs6thread9ThreadRnghEENvYcINtNtB8_7convert4FromhE4fromENtB2_12IntoIterator9into_iterCs6sOsJPswu84_11libp2p_mdns"}
!28 = distinct !{!28, !27, !"_RNvXNtNtNtCskKLDkoKarTP_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtBQ_4take4TakeINtNtNtCshhqnaxk4GqT_4rand5distr12distribution4IterRNtNtB1z_5other12AlphanumericNtNtNtB1B_4rngs6thread9ThreadRnghEENvYcINtNtB8_7convert4FromhE4fromENtB2_12IntoIterator9into_iterCs6sOsJPswu84_11libp2p_mdns: argument 1"}
!29 = distinct !{!29, !27, !"_RNvXNtNtNtCskKLDkoKarTP_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtBQ_4take4TakeINtNtNtCshhqnaxk4GqT_4rand5distr12distribution4IterRNtNtB1z_5other12AlphanumericNtNtNtB1B_4rngs6thread9ThreadRnghEENvYcINtNtB8_7convert4FromhE4fromENtB2_12IntoIterator9into_iterCs6sOsJPswu84_11libp2p_mdns: argument 0"}
!30 = distinct !{!30, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_4take4TakeINtNtNtCshhqnaxk4GqT_4rand5distr12distribution4IterRNtNtB1w_5other12AlphanumericNtNtNtB1y_4rngs6thread9ThreadRnghEENvYcINtNtB4_7convert4FromhE4fromEECs6sOsJPswu84_11libp2p_mdns"}
!31 = distinct !{!31, !30, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_4take4TakeINtNtNtCshhqnaxk4GqT_4rand5distr12distribution4IterRNtNtB1w_5other12AlphanumericNtNtNtB1y_4rngs6thread9ThreadRnghEENvYcINtNtB4_7convert4FromhE4fromEECs6sOsJPswu84_11libp2p_mdns: argument 0"}
!32 = distinct !{!32, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4take4TakeINtNtNtCshhqnaxk4GqT_4rand5distr12distribution4IterRNtNtB1g_5other12AlphanumericNtNtNtB1i_4rngs6thread9ThreadRnghEEECs6sOsJPswu84_11libp2p_mdns"}
!33 = distinct !{!33, !32, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4take4TakeINtNtNtCshhqnaxk4GqT_4rand5distr12distribution4IterRNtNtB1g_5other12AlphanumericNtNtNtB1i_4rngs6thread9ThreadRnghEEECs6sOsJPswu84_11libp2p_mdns: argument 0"}
!34 = distinct !{!34, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCshhqnaxk4GqT_4rand5distr12distribution4IterRNtNtBG_5other12AlphanumericNtNtNtBI_4rngs6thread9ThreadRnghEECs6sOsJPswu84_11libp2p_mdns"}
!35 = distinct !{!35, !34, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCshhqnaxk4GqT_4rand5distr12distribution4IterRNtNtBG_5other12AlphanumericNtNtNtBI_4rngs6thread9ThreadRnghEECs6sOsJPswu84_11libp2p_mdns: argument 0"}
!36 = distinct !{!36, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngECs6sOsJPswu84_11libp2p_mdns"}
!37 = distinct !{!37, !36, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshhqnaxk4GqT_4rand4rngs6thread9ThreadRngECs6sOsJPswu84_11libp2p_mdns: argument 0"}
!38 = distinct !{!38, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcINtNtB4_4cell10UnsafeCellINtNtCsenQHu2qVDfv_9rand_core5block8BlockRngNtNtNtCshhqnaxk4GqT_4rand4rngs6thread13ReseedingCoreEEEECs6sOsJPswu84_11libp2p_mdns"}
!39 = distinct !{!39, !38, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcINtNtB4_4cell10UnsafeCellINtNtCsenQHu2qVDfv_9rand_core5block8BlockRngNtNtNtCshhqnaxk4GqT_4rand4rngs6thread13ReseedingCoreEEEECs6sOsJPswu84_11libp2p_mdns: argument 0"}
!40 = distinct !{!40, !"_RNvXsw_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCskKLDkoKarTP_4core4cell10UnsafeCellINtNtCsenQHu2qVDfv_9rand_core5block8BlockRngNtNtNtCshhqnaxk4GqT_4rand4rngs6thread13ReseedingCoreEEENtNtNtBI_3ops4drop4Drop4dropCs6sOsJPswu84_11libp2p_mdns"}
!41 = distinct !{!41, !40, !"_RNvXsw_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCskKLDkoKarTP_4core4cell10UnsafeCellINtNtCsenQHu2qVDfv_9rand_core5block8BlockRngNtNtNtCshhqnaxk4GqT_4rand4rngs6thread13ReseedingCoreEEENtNtNtBI_3ops4drop4Drop4dropCs6sOsJPswu84_11libp2p_mdns: argument 0"}
!42 = !{!26, !25}
!43 = !{!29, !28}
!44 = !{!26}
!45 = !{!25}
!46 = !{!31}
!47 = !{!33}
!48 = !{!35}
!49 = !{!37}
!50 = !{!39}
!51 = !{!41}
!52 = !{!41, !39, !37, !35, !33, !31}
!53 = !{!41, !39, !37, !35, !33, !31, !25}
!54 = distinct !{!54, !"_RINvXs6_NtNtCshhqnaxk4GqT_4rand5distr7uniformINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEINtB6_11SampleRangejE13sample_singleNtNtNtBa_4rngs6thread9ThreadRngECs6sOsJPswu84_11libp2p_mdns"}
!55 = distinct !{!55, !54, !"_RINvXs6_NtNtCshhqnaxk4GqT_4rand5distr7uniformINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEINtB6_11SampleRangejE13sample_singleNtNtNtBa_4rngs6thread9ThreadRngECs6sOsJPswu84_11libp2p_mdns: argument 0"}
!56 = distinct !{!56, !"_RINvXs_NtNtNtCshhqnaxk4GqT_4rand5distr7uniform3intNtB5_12UniformUsizeNtB7_14UniformSampler13sample_singleNtNtNtBb_4rngs6thread9ThreadRngjjECs6sOsJPswu84_11libp2p_mdns"}
!57 = distinct !{!57, !56, !"_RINvXs_NtNtNtCshhqnaxk4GqT_4rand5distr7uniform3intNtB5_12UniformUsizeNtB7_14UniformSampler13sample_singleNtNtNtBb_4rngs6thread9ThreadRngjjECs6sOsJPswu84_11libp2p_mdns: argument 0"}
!58 = distinct !{!58, !"_RNvMs1_NtCsenQHu2qVDfv_9rand_core5blockINtB5_8BlockRngNtNtNtCshhqnaxk4GqT_4rand4rngs6thread13ReseedingCoreE9next_wordCs6sOsJPswu84_11libp2p_mdns"}
!59 = distinct !{!59, !58, !"_RNvMs1_NtCsenQHu2qVDfv_9rand_core5blockINtB5_8BlockRngNtNtNtCshhqnaxk4GqT_4rand4rngs6thread13ReseedingCoreE9next_wordCs6sOsJPswu84_11libp2p_mdns: argument 0"}
!60 = distinct !{!60, !"_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate"}
!61 = distinct !{!61, !60, !"_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate: argument 0"}
!62 = distinct !{!62, !"_RNvXs3_NtNtCshhqnaxk4GqT_4rand4rngs6threadNtB5_9ThreadRngNtCsenQHu2qVDfv_9rand_core6TryRng12try_next_u32"}
!63 = distinct !{!63, !62, !"_RNvXs3_NtNtCshhqnaxk4GqT_4rand4rngs6threadNtB5_9ThreadRngNtCsenQHu2qVDfv_9rand_core6TryRng12try_next_u32: argument 0"}
!64 = distinct !{!64, !60, !"_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate: argument 1"}
!65 = distinct !{!65, !"_RNvMs1_NtCsenQHu2qVDfv_9rand_core5blockINtB5_8BlockRngNtNtNtCshhqnaxk4GqT_4rand4rngs6thread13ReseedingCoreE9next_wordCs6sOsJPswu84_11libp2p_mdns"}
!66 = distinct !{!66, !65, !"_RNvMs1_NtCsenQHu2qVDfv_9rand_core5blockINtB5_8BlockRngNtNtNtCshhqnaxk4GqT_4rand4rngs6thread13ReseedingCoreE9next_wordCs6sOsJPswu84_11libp2p_mdns: argument 0"}
!67 = distinct !{!67, !"_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate"}
!68 = distinct !{!68, !67, !"_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate: argument 0"}
!69 = distinct !{!69, !"_RNvXs3_NtNtCshhqnaxk4GqT_4rand4rngs6threadNtB5_9ThreadRngNtCsenQHu2qVDfv_9rand_core6TryRng12try_next_u32"}
!70 = distinct !{!70, !69, !"_RNvXs3_NtNtCshhqnaxk4GqT_4rand4rngs6threadNtB5_9ThreadRngNtCsenQHu2qVDfv_9rand_core6TryRng12try_next_u32: argument 0"}
!71 = distinct !{!71, !67, !"_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate: argument 1"}
!72 = distinct !{!72, !"_RINvXsw_NtNtNtCshhqnaxk4GqT_4rand5distr7uniform3intINtB6_10UniformIntyENtB8_14UniformSampler13sample_singleNtNtNtBc_4rngs6thread9ThreadRngyyECs6sOsJPswu84_11libp2p_mdns"}
!73 = distinct !{!73, !72, !"_RINvXsw_NtNtNtCshhqnaxk4GqT_4rand5distr7uniform3intINtB6_10UniformIntyENtB8_14UniformSampler13sample_singleNtNtNtBc_4rngs6thread9ThreadRngyyECs6sOsJPswu84_11libp2p_mdns: argument 0"}
!74 = distinct !{!74, !"_RINvXsw_NtNtNtCshhqnaxk4GqT_4rand5distr7uniform3intINtB6_10UniformIntyENtB8_14UniformSampler23sample_single_inclusiveNtNtNtBc_4rngs6thread9ThreadRngyyECs6sOsJPswu84_11libp2p_mdns"}
!75 = distinct !{!75, !74, !"_RINvXsw_NtNtNtCshhqnaxk4GqT_4rand5distr7uniform3intINtB6_10UniformIntyENtB8_14UniformSampler23sample_single_inclusiveNtNtNtBc_4rngs6thread9ThreadRngyyECs6sOsJPswu84_11libp2p_mdns: argument 0"}
!76 = distinct !{!76, !"_RNvMs2_NtCsenQHu2qVDfv_9rand_core5blockINtB5_8BlockRngNtNtNtCshhqnaxk4GqT_4rand4rngs6thread13ReseedingCoreE17next_u64_from_u32Cs6sOsJPswu84_11libp2p_mdns"}
!77 = distinct !{!77, !76, !"_RNvMs2_NtCsenQHu2qVDfv_9rand_core5blockINtB5_8BlockRngNtNtNtCshhqnaxk4GqT_4rand4rngs6thread13ReseedingCoreE17next_u64_from_u32Cs6sOsJPswu84_11libp2p_mdns: argument 0"}
!78 = distinct !{!78, !"_RNvXs3_NtNtCshhqnaxk4GqT_4rand4rngs6threadNtB5_9ThreadRngNtCsenQHu2qVDfv_9rand_core6TryRng12try_next_u64"}
!79 = distinct !{!79, !78, !"_RNvXs3_NtNtCshhqnaxk4GqT_4rand4rngs6threadNtB5_9ThreadRngNtCsenQHu2qVDfv_9rand_core6TryRng12try_next_u64: argument 0"}
!80 = distinct !{!80, !"_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate"}
!81 = distinct !{!81, !80, !"_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate: argument 0"}
!82 = distinct !{!82, !80, !"_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate: argument 1"}
!83 = distinct !{!83, !"_RNvMs2_NtCsenQHu2qVDfv_9rand_core5blockINtB5_8BlockRngNtNtNtCshhqnaxk4GqT_4rand4rngs6thread13ReseedingCoreE17next_u64_from_u32Cs6sOsJPswu84_11libp2p_mdns"}
!84 = distinct !{!84, !83, !"_RNvMs2_NtCsenQHu2qVDfv_9rand_core5blockINtB5_8BlockRngNtNtNtCshhqnaxk4GqT_4rand4rngs6thread13ReseedingCoreE17next_u64_from_u32Cs6sOsJPswu84_11libp2p_mdns: argument 0"}
!85 = distinct !{!85, !"_RNvXs3_NtNtCshhqnaxk4GqT_4rand4rngs6threadNtB5_9ThreadRngNtCsenQHu2qVDfv_9rand_core6TryRng12try_next_u64"}
!86 = distinct !{!86, !85, !"_RNvXs3_NtNtCshhqnaxk4GqT_4rand4rngs6threadNtB5_9ThreadRngNtCsenQHu2qVDfv_9rand_core6TryRng12try_next_u64: argument 0"}
!87 = distinct !{!87, !"_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate"}
!88 = distinct !{!88, !87, !"_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate: argument 0"}
!89 = distinct !{!89, !87, !"_RNvXNtNtCshhqnaxk4GqT_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsenQHu2qVDfv_9rand_core5block9Generator8generate: argument 1"}
!90 = distinct !{!90, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtCshhqnaxk4GqT_4rand5distr7uniform5ErrorE6unwrapCs6sOsJPswu84_11libp2p_mdns"}
!91 = distinct !{!91, !90, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtCshhqnaxk4GqT_4rand5distr7uniform5ErrorE6unwrapCs6sOsJPswu84_11libp2p_mdns: argument 1"}
!92 = distinct !{!92, !90, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtCshhqnaxk4GqT_4rand5distr7uniform5ErrorE6unwrapCs6sOsJPswu84_11libp2p_mdns: argument 0"}
!93 = !{!57, !55}
!94 = !{!61, !59}
!95 = !{!64, !63, !57, !55}
!96 = !{!63, !57, !55}
!97 = !{!59}
!98 = !{!68, !66}
!99 = !{!71, !70, !57, !55}
!100 = !{!70, !57, !55}
!101 = !{!66}
!102 = !{!75, !73, !57, !55}
!103 = !{!77}
!104 = !{!79, !75, !73, !57, !55}
!105 = !{!81, !77}
!106 = !{!82, !79, !75, !73, !57, !55}
!107 = !{!84}
!108 = !{!86, !75, !73, !57, !55}
!109 = !{!88, !84}
!110 = !{!89, !86, !75, !73, !57, !55}
!111 = !{!92, !91}
!112 = !{!92}
!113 = distinct !{!113, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8find_map5checkRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShENtCsbli3iz7XG76_9multiaddr9MultiaddrQNCNvMs5_NtNtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5iface5queryNtB2C_8MdnsPeer3news0_0E0B2I_"}
!114 = distinct !{!114, !113, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8find_map5checkRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShENtCsbli3iz7XG76_9multiaddr9MultiaddrQNCNvMs5_NtNtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5iface5queryNtB2C_8MdnsPeer3news0_0E0B2I_: argument 0"}
!115 = distinct !{!115, !113, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8find_map5checkRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShENtCsbli3iz7XG76_9multiaddr9MultiaddrQNCNvMs5_NtNtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5iface5queryNtB2C_8MdnsPeer3news0_0E0B2I_: argument 2"}
!116 = distinct !{!116, !113, !"_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8find_map5checkRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShENtCsbli3iz7XG76_9multiaddr9MultiaddrQNCNvMs5_NtNtNtCs6sOsJPswu84_11libp2p_mdns9behaviour5iface5queryNtB2C_8MdnsPeer3news0_0E0B2I_: argument 1"}
!117 = !{!114}
!118 = !{!114, !116, !115}
!119 = !{!116, !115}
!120 = distinct !{!120, !"_RNvXs4_NtCsgUwh0qa7Dto_19netlink_packet_core7messageINtB5_14NetlinkMessageNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCs6sOsJPswu84_11libp2p_mdns"}
!121 = distinct !{!121, !120, !"_RNvXs4_NtCsgUwh0qa7Dto_19netlink_packet_core7messageINtB5_14NetlinkMessageNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCs6sOsJPswu84_11libp2p_mdns: argument 1"}
!122 = distinct !{!122, !120, !"_RNvXs4_NtCsgUwh0qa7Dto_19netlink_packet_core7messageINtB5_14NetlinkMessageNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCs6sOsJPswu84_11libp2p_mdns: argument 0"}
!123 = !{!122, !121}
!124 = distinct !{!124, !"_RNvXs1_NtNtCs3LwfirTY3Ij_20netlink_packet_route15neighbour_table7messageNtB5_21NeighbourTableMessageNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt"}
!125 = distinct !{!125, !124, !"_RNvXs1_NtNtCs3LwfirTY3Ij_20netlink_packet_route15neighbour_table7messageNtB5_21NeighbourTableMessageNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 1"}
!126 = distinct !{!126, !124, !"_RNvXs1_NtNtCs3LwfirTY3Ij_20netlink_packet_route15neighbour_table7messageNtB5_21NeighbourTableMessageNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 0"}
!127 = !{!126, !125}
!128 = distinct !{!128, !"_RNvXs0_NtNtCs3LwfirTY3Ij_20netlink_packet_route15neighbour_table9attributeNtB5_23NeighbourTableAttributeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt"}
!129 = distinct !{!129, !128, !"_RNvXs0_NtNtCs3LwfirTY3Ij_20netlink_packet_route15neighbour_table9attributeNtB5_23NeighbourTableAttributeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 0"}
!130 = distinct !{!130, !128, !"_RNvXs0_NtNtCs3LwfirTY3Ij_20netlink_packet_route15neighbour_table9attributeNtB5_23NeighbourTableAttributeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 1"}
!131 = !{!129}
!132 = !{i32 0, i32 9}
!133 = !{!130}
!134 = !{!129, !130}
!135 = distinct !{!135, !"_RNvXs0_NtNtCs3LwfirTY3Ij_20netlink_packet_route4link11down_reasonNtB5_22LinkProtocolDownReasonNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt"}
!136 = distinct !{!136, !135, !"_RNvXs0_NtNtCs3LwfirTY3Ij_20netlink_packet_route4link11down_reasonNtB5_22LinkProtocolDownReasonNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 0"}
!137 = distinct !{!137, !135, !"_RNvXs0_NtNtCs3LwfirTY3Ij_20netlink_packet_route4link11down_reasonNtB5_22LinkProtocolDownReasonNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 1"}
!138 = !{!136}
!139 = !{i64 0, i64 -9223372036854775806}
!140 = !{!137}
!141 = !{!136, !137}
!142 = distinct !{!142, !"_RNvXs5_NtNtCs3LwfirTY3Ij_20netlink_packet_route4rule10port_rangeNtB5_13RulePortRangeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt"}
!143 = distinct !{!143, !142, !"_RNvXs5_NtNtCs3LwfirTY3Ij_20netlink_packet_route4rule10port_rangeNtB5_13RulePortRangeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 1"}
!144 = distinct !{!144, !142, !"_RNvXs5_NtNtCs3LwfirTY3Ij_20netlink_packet_route4rule10port_rangeNtB5_13RulePortRangeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 0"}
!145 = !{!144, !143}
!146 = distinct !{!146, !"_RNvXs0_NtNtCs3LwfirTY3Ij_20netlink_packet_route5route10cache_infoNtB5_14RouteCacheInfoNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt"}
!147 = distinct !{!147, !146, !"_RNvXs0_NtNtCs3LwfirTY3Ij_20netlink_packet_route5route10cache_infoNtB5_14RouteCacheInfoNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 1"}
!148 = distinct !{!148, !146, !"_RNvXs0_NtNtCs3LwfirTY3Ij_20netlink_packet_route5route10cache_infoNtB5_14RouteCacheInfoNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 0"}
!149 = !{!148, !147}
!150 = distinct !{!150, !"_RNvXs5_NtNtCs3LwfirTY3Ij_20netlink_packet_route5route5realmNtB5_10RouteRealmNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt"}
!151 = distinct !{!151, !150, !"_RNvXs5_NtNtCs3LwfirTY3Ij_20netlink_packet_route5route5realmNtB5_10RouteRealmNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 1"}
!152 = distinct !{!152, !150, !"_RNvXs5_NtNtCs3LwfirTY3Ij_20netlink_packet_route5route5realmNtB5_10RouteRealmNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 0"}
!153 = !{!152, !151}
!154 = distinct !{!154, !"_RNvXs1_NtNtCs3LwfirTY3Ij_20netlink_packet_route5route7metricsNtB5_11RouteMetricNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt"}
!155 = distinct !{!155, !154, !"_RNvXs1_NtNtCs3LwfirTY3Ij_20netlink_packet_route5route7metricsNtB5_11RouteMetricNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 0"}
!156 = distinct !{!156, !154, !"_RNvXs1_NtNtCs3LwfirTY3Ij_20netlink_packet_route5route7metricsNtB5_11RouteMetricNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 1"}
!157 = !{!155}
!158 = !{i64 0, i64 -9223372036854775791}
!159 = !{!156}
!160 = !{!155, !156}
!161 = distinct !{!161, !"_RNvXs7_NtNtCs3LwfirTY3Ij_20netlink_packet_route7address9attributeNtB5_15AddressProtocolNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt"}
!162 = distinct !{!162, !161, !"_RNvXs7_NtNtCs3LwfirTY3Ij_20netlink_packet_route7address9attributeNtB5_15AddressProtocolNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 0"}
!163 = distinct !{!163, !161, !"_RNvXs7_NtNtCs3LwfirTY3Ij_20netlink_packet_route7address9attributeNtB5_15AddressProtocolNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 1"}
!164 = !{!162}
!165 = !{!163}
!166 = !{!162, !163}
!167 = distinct !{!167, !"_RNvXs2_NtNtCs3LwfirTY3Ij_20netlink_packet_route7address9attributeNtB5_16AddressAttributeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt"}
!168 = distinct !{!168, !167, !"_RNvXs2_NtNtCs3LwfirTY3Ij_20netlink_packet_route7address9attributeNtB5_16AddressAttributeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 0"}
!169 = distinct !{!169, !167, !"_RNvXs2_NtNtCs3LwfirTY3Ij_20netlink_packet_route7address9attributeNtB5_16AddressAttributeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 1"}
!170 = !{!168}
!171 = !{i64 0, i64 -9223372036854775797}
!172 = !{!169}
!173 = !{!168, !169}
!174 = distinct !{!174, !"_RNvXsd_NtNtNtCs3LwfirTY3Ij_20netlink_packet_route2tc7actions10tunnel_keyNtB5_11TcTunnelKeyNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt"}
!175 = distinct !{!175, !174, !"_RNvXsd_NtNtNtCs3LwfirTY3Ij_20netlink_packet_route2tc7actions10tunnel_keyNtB5_11TcTunnelKeyNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 1"}
!176 = distinct !{!176, !174, !"_RNvXsd_NtNtNtCs3LwfirTY3Ij_20netlink_packet_route2tc7actions10tunnel_keyNtB5_11TcTunnelKeyNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 0"}
!177 = !{!176, !175}
!178 = distinct !{!178, !"_RNvXs8_NtNtNtCs3LwfirTY3Ij_20netlink_packet_route2tc7actions10tunnel_keyNtB5_23TcActionTunnelKeyOptionNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt"}
!179 = distinct !{!179, !178, !"_RNvXs8_NtNtNtCs3LwfirTY3Ij_20netlink_packet_route2tc7actions10tunnel_keyNtB5_23TcActionTunnelKeyOptionNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 0"}
!180 = distinct !{!180, !178, !"_RNvXs8_NtNtNtCs3LwfirTY3Ij_20netlink_packet_route2tc7actions10tunnel_keyNtB5_23TcActionTunnelKeyOptionNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 1"}
!181 = !{!179}
!182 = !{i8 0, i8 12}
!183 = !{!180}
!184 = !{!179, !180}
!185 = distinct !{!185, !"_RNvXs9_NtNtNtCs3LwfirTY3Ij_20netlink_packet_route2tc7actions3natNtB5_17TcActionNatOptionNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt"}
!186 = distinct !{!186, !185, !"_RNvXs9_NtNtNtCs3LwfirTY3Ij_20netlink_packet_route2tc7actions3natNtB5_17TcActionNatOptionNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 0"}
!187 = distinct !{!187, !185, !"_RNvXs9_NtNtNtCs3LwfirTY3Ij_20netlink_packet_route2tc7actions3natNtB5_17TcActionNatOptionNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 1"}
!188 = !{!186}
!189 = !{i32 0, i32 14}
!190 = !{!187}
!191 = !{!186, !187}
end_hunk_1
