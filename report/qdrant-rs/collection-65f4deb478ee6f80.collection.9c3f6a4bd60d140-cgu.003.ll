Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/collection-65f4deb478ee6f80.collection.9c3f6a4bd60d140-cgu.003?download=true
inline.NumInlined: 4275
inline.NumDeleted: 1770
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTmNtNtNtCsPYQCUnoTxQ_10collection10collection5clean14ShardCleanTaskEE9fold_implNCINvXsG_NtB8_3mapINtB2k_4ItermBW_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2Q_8adapters3map8map_foldTRmRBW_ETmNtBY_16ShardCleanStatusEuNCNvMBY_NtBY_15ShardCleanTasks8statuses0NCINvNvB2K_8for_each4callB4s_NCINvXs1i_B2k_INtB2k_7HashMapmB4u_NtNtCsyIGusAaLFh_5ahash12random_state11RandomStateEINtNtB2O_7collect6ExtendB4s_E6extendINtB3Q_3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4ItermBW_EB4T_EE0E0E0E0uEB12_:bb.a
  br label %bb.h

bb.l:                                             ; preds = %bb.j
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !noalias !3121
  unreachable

common.resume.i.i:                                ; preds = %bb.o, %bb.j
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.ag, %bb.j ], [ %i.an, %bb.o ]
  resume { ptr, i32 } %common.resume.op.i.i

_RNCNvMNtNtCsPYQCUnoTxQ_10collection10collection5cleanNtB4_15ShardCleanTasks8statuses0B8_.exit.i.i: ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3123
  store i64 %.sroa.0.0.i.i.i, ptr %i.b, align 8, !noalias !3124
  store <2 x i64> %i.aa, ptr %.sroa.4.sroa.5.4..sroa_idx.i.i, align 8, !noalias !3124
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3123
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapmNtNtNtCsPYQCUnoTxQ_10collection10collection5clean16ShardCleanStatusNtNtCsyIGusAaLFh_5ahash12random_state11RandomStateE6insertBU_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %.val.i, i32 noundef %.val1.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !3125
  %i.aj = load i64, ptr %i.a, align 8, !range !33, !alias.scope !3126, !noalias !3123, !noundef !11 ; 3 uses
  %i.ak = icmp eq i64 %i.aj, -1
  br i1 %i.ak, label %_RNCINvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB8_4ItermNtNtNtCsPYQCUnoTxQ_10collection10collection5clean14ShardCleanTaskENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1Y_8adapters3map8map_foldTRmRBO_ETmNtBQ_16ShardCleanStatusEuNCNvMBQ_NtBQ_15ShardCleanTasks8statuses0NCINvNvB1S_8for_each4callB3A_NCINvXs1i_B8_INtB8_7HashMapmB3C_NtNtCsyIGusAaLFh_5ahash12random_state11RandomStateEINtNtB1W_7collect6ExtendB3A_E6extendINtB2Y_3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4ItermBO_EB41_EE0E0E0E0BU_.exit, label %bb.m

bb.m:                                             ; preds = %_RNCNvMNtNtCsPYQCUnoTxQ_10collection10collection5cleanNtB4_15ShardCleanTasks8statuses0B8_.exit.i.i
  %i.al = icmp ne i64 %i.aj, -9223372036854775805
  call void @llvm.assume(i1 %i.al)
  %i.am = icmp sgt i64 %i.aj, -1
  br i1 %i.am, label %bb.n, label %_RNCINvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB8_4ItermNtNtNtCsPYQCUnoTxQ_10collection10collection5clean14ShardCleanTaskENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1Y_8adapters3map8map_foldTRmRBO_ETmNtBQ_16ShardCleanStatusEuNCNvMBQ_NtBQ_15ShardCleanTasks8statuses0NCINvNvB1S_8for_each4callB3A_NCINvXs1i_B8_INtB8_7HashMapmB3C_NtNtCsyIGusAaLFh_5ahash12random_state11RandomStateEINtNtB1W_7collect6ExtendB3A_E6extendINtB2Y_3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4ItermBO_EB41_EE0E0E0E0BU_.exit

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsPYQCUnoTxQ_10collection.exit.i.i.i.i.i.i unwind label %bb.o, !noalias !3125

bb.o:                                             ; preds = %bb.n
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume.i.i unwind label %bb.p, !noalias !3125

bb.p:                                             ; preds = %bb.o
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #35, !noalias !3125
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsPYQCUnoTxQ_10collection.exit.i.i.i.i.i.i: ; preds = %bb.n
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !3125
  br label %_RNCINvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB8_4ItermNtNtNtCsPYQCUnoTxQ_10collection10collection5clean14ShardCleanTaskENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1Y_8adapters3map8map_foldTRmRBO_ETmNtBQ_16ShardCleanStatusEuNCNvMBQ_NtBQ_15ShardCleanTasks8statuses0NCINvNvB1S_8for_each4callB3A_NCINvXs1i_B8_INtB8_7HashMapmB3C_NtNtCsyIGusAaLFh_5ahash12random_state11RandomStateEINtNtB1W_7collect6ExtendB3A_E6extendINtB2Y_3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4ItermBO_EB41_EE0E0E0E0BU_.exit

_RNCINvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB8_4ItermNtNtNtCsPYQCUnoTxQ_10collection10collection5clean14ShardCleanTaskENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1Y_8adapters3map8map_foldTRmRBO_ETmNtBQ_16ShardCleanStatusEuNCNvMBQ_NtBQ_15ShardCleanTasks8statuses0NCINvNvB1S_8for_each4callB3A_NCINvXs1i_B8_INtB8_7HashMapmB3C_NtNtCsyIGusAaLFh_5ahash12random_state11RandomStateEINtNtB1W_7collect6ExtendB3A_E6extendINtB2Y_3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4ItermBO_EB41_EE0E0E0E0BU_.exit: ; preds = %_RNCNvMNtNtCsPYQCUnoTxQ_10collection10collection5cleanNtB4_15ShardCleanTasks8statuses0B8_.exit.i.i, %bb.m, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsPYQCUnoTxQ_10collection.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3123
  %i.ap = add i64 %.sroa.0.0.ph, -1
  br label %.outer

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %i.aq = phi ptr [ %i.au, %.lr.ph.split ], [ %.lcssa2429, %.lr.ph ] ; 2 uses
  %i.ar = phi ptr [ %i.at, %.lr.ph.split ], [ %.lcssa2327, %.lr.ph ]
  %.val13 = load <16 x i8>, ptr %i.aq, align 16
  %i.as = icmp sgt <16 x i8> %.val13, splat (i8 -1) ; 2 uses
  store <16 x i1> %i.as, ptr %i.d, align 8
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 -640 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 3 uses
  %.cast = bitcast <16 x i1> %i.as to i16         ; 2 uses
  %.not = icmp eq i16 %.cast, 0
  br i1 %.not, label %.lr.ph.split, label %._crit_edge

bb.q:                                             ; preds = %.lr.ph
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTmuEE9fold_implNCINvXsG_NtB8_3mapINtB1i_4ItermuENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldmNCINvXsU_B1i_INtB1i_4KeysmuEB1G_4foldmNCINvNtNtB1M_8adapters6copied9copy_foldmmQNvYmNtNtB1O_3cmp3Ord3maxE0E0E0mECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %0, i64 noundef %1, i32 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %.promoted25 = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val.i = load ptr, ptr %3, align 8, !nonnull !11, !align !13
  %.promoted = load ptr, ptr %i.b, align 8
  %.pre = load i16, ptr %i.a, align 8
  br label %.outer

.outer:                                           ; preds = %bb.b, %bb.a
  %i.c = phi i16 [ %i.h, %bb.b ], [ %.pre, %bb.a ] ; 2 uses
  %.lcssa2429 = phi ptr [ %.lcssa2428, %bb.b ], [ %.promoted, %bb.a ] ; 2 uses
  %.lcssa2327 = phi ptr [ %.lcssa2326, %bb.b ], [ %.promoted25, %bb.a ] ; 2 uses
  %.sroa.02.0.ph = phi i32 [ %i.l, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.sroa.0.0.ph = phi i64 [ %i.m, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.not20 = icmp eq i16 %i.c, 0
  br i1 %.not20, label %.lr.ph, label %bb.b

.lr.ph:                                           ; preds = %.outer
  %i.d = icmp eq i64 %.sroa.0.0.ph, 0
  br i1 %i.d, label %bb.c, label %.lr.ph.split

._crit_edge:                                      ; preds = %.lr.ph.split
  store ptr %i.q, ptr %0, align 8
  store ptr %i.r, ptr %i.b, align 8
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %.outer
  %.lcssa2428 = phi ptr [ %i.r, %._crit_edge ], [ %.lcssa2429, %.outer ]
  %.lcssa2326 = phi ptr [ %i.q, %._crit_edge ], [ %.lcssa2327, %.outer ] ; 2 uses
  %.lcssa = phi i16 [ %.cast, %._crit_edge ], [ %i.c, %.outer ] ; 3 uses
  %i.e = add i16 %.lcssa, -1
  %i.f = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.g = zext nneg i16 %i.f to i64
  %i.h = and i16 %i.e, %.lcssa                    ; 2 uses
  store i16 %i.h, ptr %i.a, align 8
  %i.i = sub nsw i64 0, %i.g
  %i.j = getelementptr inbounds [4 x i8], ptr %.lcssa2326, i64 %i.i
  %i.k = getelementptr i8, ptr %i.j, i64 -4
  %.val13 = load i32, ptr %i.k, align 4, !noundef !11
  %i.l = tail call noundef i32 @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNvYmNtNtBb_3cmp3Ord3maxINtB7_5FnMutTmmEE8call_mutCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.val.i, i32 noundef %.sroa.02.0.ph, i32 noundef %.val13)
  %i.m = add i64 %.sroa.0.0.ph, -1
  br label %.outer

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %i.n = phi ptr [ %i.r, %.lr.ph.split ], [ %.lcssa2429, %.lr.ph ] ; 2 uses
  %i.o = phi ptr [ %i.q, %.lr.ph.split ], [ %.lcssa2327, %.lr.ph ]
  %.val16 = load <16 x i8>, ptr %i.n, align 16
  %i.p = icmp sgt <16 x i8> %.val16, splat (i8 -1) ; 2 uses
  store <16 x i1> %i.p, ptr %i.a, align 8
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 -64 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  %.cast = bitcast <16 x i1> %i.p to i16          ; 2 uses
  %.not = icmp eq i16 %.cast, 0
  br i1 %.not, label %.lr.ph.split, label %._crit_edge

bb.c:                                             ; preds = %.lr.ph
  ret i32 %.sroa.02.0.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTmuEE9fold_implNCINvXsG_NtB8_3mapINtB1i_4ItermuENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvXsU_B1i_INtB1i_4KeysmuEB1G_4folduNCINvNtNtB1M_8adapters3map8map_foldRmTmNtNtCs607s0NAIaWN_7segment5types8ShardKeyEuNCNCNvMs0_NtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mappingNtB4N_15ShardKeyMapping21shard_id_to_shard_key00QNCINvNvB1G_8for_each4callB3U_NCINvXs1i_B1i_INtB1i_7HashMapmB3W_NtNtCsyIGusAaLFh_5ahash12random_state11RandomStateEINtNtB1K_7collect6ExtendB3U_E6extendINtNtB3q_7flatten7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterB3W_INtNtB9z_3set7HashSetmEEINtB3o_3MapINtBas_4ItermEB4D_ENCB4H_0EE0E0E0E0E0uEB4T_(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.i.i.i.i = alloca i64, align 8          ; 5 uses
  %.sroa.6.i.i.i.i = alloca i64, align 8          ; 4 uses
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %.promoted23 = load ptr, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val.i = load ptr, ptr %2, align 8, !nonnull !11, !align !13 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %.sroa.41.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.promoted = load ptr, ptr %i.c, align 8
  %.pre = load i16, ptr %i.b, align 8
  br label %.outer

.outer:                                           ; preds = %_RNCINvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB8_4ItermuENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvXsU_B8_INtB8_4KeysmuEBQ_4folduNCINvNtNtBW_8adapters3map8map_foldRmTmNtNtCs607s0NAIaWN_7segment5types8ShardKeyEuNCNCNvMs0_NtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mappingNtB3T_15ShardKeyMapping21shard_id_to_shard_key00QNCINvNvBQ_8for_each4callB30_NCINvXs1i_B8_INtB8_7HashMapmB32_NtNtCsyIGusAaLFh_5ahash12random_state11RandomStateEINtNtBU_7collect6ExtendB30_E6extendINtNtB2x_7flatten7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterB32_INtNtB8B_3set7HashSetmEEINtB2v_3MapINtB9u_4ItermEB3J_ENCB3N_0EE0E0E0E0E0B3Z_.exit, %bb.a
  %i.e = phi i16 [ %i.j, %_RNCINvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB8_4ItermuENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvXsU_B8_INtB8_4KeysmuEBQ_4folduNCINvNtNtBW_8adapters3map8map_foldRmTmNtNtCs607s0NAIaWN_7segment5types8ShardKeyEuNCNCNvMs0_NtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mappingNtB3T_15ShardKeyMapping21shard_id_to_shard_key00QNCINvNvBQ_8for_each4callB30_NCINvXs1i_B8_INtB8_7HashMapmB32_NtNtCsyIGusAaLFh_5ahash12random_state11RandomStateEINtNtBU_7collect6ExtendB30_E6extendINtNtB2x_7flatten7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterB32_INtNtB8B_3set7HashSetmEEINtB2v_3MapINtB9u_4ItermEB3J_ENCB3N_0EE0E0E0E0E0B3Z_.exit ], [ %.pre, %bb.a ] ; 2 uses
  %.lcssa2227 = phi ptr [ %.lcssa2226, %_RNCINvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB8_4ItermuENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvXsU_B8_INtB8_4KeysmuEBQ_4folduNCINvNtNtBW_8adapters3map8map_foldRmTmNtNtCs607s0NAIaWN_7segment5types8ShardKeyEuNCNCNvMs0_NtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mappingNtB3T_15ShardKeyMapping21shard_id_to_shard_key00QNCINvNvBQ_8for_each4callB30_NCINvXs1i_B8_INtB8_7HashMapmB32_NtNtCsyIGusAaLFh_5ahash12random_state11RandomStateEINtNtBU_7collect6ExtendB30_E6extendINtNtB2x_7flatten7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterB32_INtNtB8B_3set7HashSetmEEINtB2v_3MapINtB9u_4ItermEB3J_ENCB3N_0EE0E0E0E0E0B3Z_.exit ], [ %.promoted, %bb.a ] ; 2 uses
  %.lcssa2125 = phi ptr [ %.lcssa2124, %_RNCINvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB8_4ItermuENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvXsU_B8_INtB8_4KeysmuEBQ_4folduNCINvNtNtBW_8adapters3map8map_foldRmTmNtNtCs607s0NAIaWN_7segment5types8ShardKeyEuNCNCNvMs0_NtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mappingNtB3T_15ShardKeyMapping21shard_id_to_shard_key00QNCINvNvBQ_8for_each4callB30_NCINvXs1i_B8_INtB8_7HashMapmB32_NtNtCsyIGusAaLFh_5ahash12random_state11RandomStateEINtNtBU_7collect6ExtendB30_E6extendINtNtB2x_7flatten7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterB32_INtNtB8B_3set7HashSetmEEINtB2v_3MapINtB9u_4ItermEB3J_ENCB3N_0EE0E0E0E0E0B3Z_.exit ], [ %.promoted23, %bb.a ] ; 2 uses
  %.sroa.0.0.ph = phi i64 [ %i.y, %_RNCINvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB8_4ItermuENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvXsU_B8_INtB8_4KeysmuEBQ_4folduNCINvNtNtBW_8adapters3map8map_foldRmTmNtNtCs607s0NAIaWN_7segment5types8ShardKeyEuNCNCNvMs0_NtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mappingNtB3T_15ShardKeyMapping21shard_id_to_shard_key00QNCINvNvBQ_8for_each4callB30_NCINvXs1i_B8_INtB8_7HashMapmB32_NtNtCsyIGusAaLFh_5ahash12random_state11RandomStateEINtNtBU_7collect6ExtendB30_E6extendINtNtB2x_7flatten7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterB32_INtNtB8B_3set7HashSetmEEINtB2v_3MapINtB9u_4ItermEB3J_ENCB3N_0EE0E0E0E0E0B3Z_.exit ], [ %1, %bb.a ] ; 2 uses
  %.not18 = icmp eq i16 %i.e, 0
  br i1 %.not18, label %.lr.ph, label %bb.b

.lr.ph:                                           ; preds = %.outer
  %i.f = icmp eq i64 %.sroa.0.0.ph, 0
  br i1 %i.f, label %bb.g, label %.lr.ph.split

._crit_edge:                                      ; preds = %.lr.ph.split
  store ptr %i.ac, ptr %0, align 8
  store ptr %i.ad, ptr %i.c, align 8
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %.outer
  %.lcssa2226 = phi ptr [ %i.ad, %._crit_edge ], [ %.lcssa2227, %.outer ]
  %.lcssa2124 = phi ptr [ %i.ac, %._crit_edge ], [ %.lcssa2125, %.outer ] ; 2 uses
  %.lcssa = phi i16 [ %.cast, %._crit_edge ], [ %i.e, %.outer ] ; 3 uses
  %i.g = add i16 %.lcssa, -1
  %i.h = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.i = zext nneg i16 %i.h to i64
  %i.j = and i16 %i.g, %.lcssa                    ; 2 uses
  store i16 %i.j, ptr %i.b, align 8
  %i.k = sub nsw i64 0, %i.i
  %i.l = getelementptr inbounds [4 x i8], ptr %.lcssa2124, i64 %i.k
  %i.m = getelementptr i8, ptr %i.l, i64 -4
  %.val11 = load i32, ptr %i.m, align 4, !noundef !11
  call void @llvm.experimental.noalias.scope.decl(metadata !3134)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3134
  %.val.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !3134, !nonnull !11, !align !13, !noundef !11 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !3135)
  call void @llvm.experimental.noalias.scope.decl(metadata !3136)
  %i.n = load i64, ptr %.val.i.i.i, align 8, !range !34, !alias.scope !3136, !noalias !3137, !noundef !11
  %i.o = trunc nuw i64 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 8 ; 2 uses
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !3136, !noalias !3137, !noundef !11
  br label %_RNCINvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB8_4ItermuENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvXsU_B8_INtB8_4KeysmuEBQ_4folduNCINvNtNtBW_8adapters3map8map_foldRmTmNtNtCs607s0NAIaWN_7segment5types8ShardKeyEuNCNCNvMs0_NtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mappingNtB3T_15ShardKeyMapping21shard_id_to_shard_key00QNCINvNvBQ_8for_each4callB30_NCINvXs1i_B8_INtB8_7HashMapmB32_NtNtCsyIGusAaLFh_5ahash12random_state11RandomStateEINtNtBU_7collect6ExtendB30_E6extendINtNtB2x_7flatten7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterB32_INtNtB8B_3set7HashSetmEEINtB2v_3MapINtB9u_4ItermEB3J_ENCB3N_0EE0E0E0E0E0B3Z_.exit

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 23
  %i.s = load i8, ptr %i.r, align 1, !alias.scope !3136, !noalias !3137, !noundef !11
  %.not.i.i.i.i.i = icmp slt i8 %i.s, 0
  %i.t = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 16
  %.val.i.i.i.i.i = load ptr, ptr %i.p, align 8, !alias.scope !3136, !noalias !3137 ; 4 uses
  %.val21.i.i.i.i.i = load i64, ptr %i.t, align 8, !alias.scope !3136, !noalias !3137 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i, inttoptr (i64 16 to ptr)
  %or.cond = select i1 %.not.i.i.i.i.i, i1 true, i1 %.not.i.i.i.i.i.i.i
  br i1 %or.cond, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsPYQCUnoTxQ_10collection.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds i8, ptr %.val.i.i.i.i.i, i64 -16
  %i.v = atomicrmw add ptr %i.u, i64 1 monotonic, align 8, !noalias !3138
  %i.w = icmp slt i64 %i.v, 0
  br i1 %i.w, label %bb.f, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsPYQCUnoTxQ_10collection.exit.i.i.i.i.i, !prof !12

bb.f:                                             ; preds = %bb.e
  call void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsPYQCUnoTxQ_10collection(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef %.val21.i.i.i.i.i) #37, !noalias !3138
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsPYQCUnoTxQ_10collection.exit.i.i.i.i.i: ; preds = %bb.d, %bb.e
  %i.x = ptrtoint ptr %.val.i.i.i.i.i to i64
  store i64 %i.x, ptr %.sroa.4.i.i.i.i, align 8, !alias.scope !3135, !noalias !3137
  br label %_RNCINvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB8_4ItermuENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvXsU_B8_INtB8_4KeysmuEBQ_4folduNCINvNtNtBW_8adapters3map8map_foldRmTmNtNtCs607s0NAIaWN_7segment5types8ShardKeyEuNCNCNvMs0_NtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mappingNtB3T_15ShardKeyMapping21shard_id_to_shard_key00QNCINvNvBQ_8for_each4callB30_NCINvXs1i_B8_INtB8_7HashMapmB32_NtNtCsyIGusAaLFh_5ahash12random_state11RandomStateEINtNtBU_7collect6ExtendB30_E6extendINtNtB2x_7flatten7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterB32_INtNtB8B_3set7HashSetmEEINtB2v_3MapINtB9u_4ItermEB3J_ENCB3N_0EE0E0E0E0E0B3Z_.exit

_RNCINvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB8_4ItermuENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvXsU_B8_INtB8_4KeysmuEBQ_4folduNCINvNtNtBW_8adapters3map8map_foldRmTmNtNtCs607s0NAIaWN_7segment5types8ShardKeyEuNCNCNvMs0_NtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mappingNtB3T_15ShardKeyMapping21shard_id_to_shard_key00QNCINvNvBQ_8for_each4callB30_NCINvXs1i_B8_INtB8_7HashMapmB32_NtNtCsyIGusAaLFh_5ahash12random_state11RandomStateEINtNtBU_7collect6ExtendB30_E6extendINtNtB2x_7flatten7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterB32_INtNtB8B_3set7HashSetmEEINtB2v_3MapINtB9u_4ItermEB3J_ENCB3N_0EE0E0E0E0E0B3Z_.exit: ; preds = %bb.c, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsPYQCUnoTxQ_10collection.exit.i.i.i.i.i
  %.sink.i.sroa.phi.i.i.i.i = phi ptr [ %.sroa.6.i.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsPYQCUnoTxQ_10collection.exit.i.i.i.i.i ], [ %.sroa.4.i.i.i.i, %bb.c ]
  %.sroa.58.0.sink.i.i.i.i.i = phi i64 [ %.val21.i.i.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsPYQCUnoTxQ_10collection.exit.i.i.i.i.i ], [ %i.q, %bb.c ]
  %storemerge.i.i.i.i.i = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsPYQCUnoTxQ_10collection.exit.i.i.i.i.i ], [ 1, %bb.c ]
  store i64 %.sroa.58.0.sink.i.i.i.i.i, ptr %.sink.i.sroa.phi.i.i.i.i, align 8, !alias.scope !3135, !noalias !3137
  %.sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i.i.i = load i64, ptr %.sroa.4.i.i.i.i, align 8, !noalias !3137
  %.sroa.6.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i.i.i = load i64, ptr %.sroa.6.i.i.i.i, align 8, !noalias !3137
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i)
  store i32 %.val11, ptr %i.a, align 8, !noalias !3134
  store i64 %storemerge.i.i.i.i.i, ptr %.sroa.41.0..sroa_idx.i.i.i, align 8, !noalias !3134
  store i64 %.sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !3134
  store i64 %.sroa.6.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !3134
  call void @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8for_each4callTmNtNtCs607s0NAIaWN_7segment5types8ShardKeyENCINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB2G_7HashMapmB1Q_NtNtCsyIGusAaLFh_5ahash12random_state11RandomStateEINtNtBZ_7collect6ExtendB1O_E6extendINtNtNtB11_8adapters7flatten7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterB1Q_INtNtB5x_3set7HashSetmEEINtNtB4X_3map3MapINtB6q_4ItermENCNCNvMs0_NtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mappingNtB7q_15ShardKeyMapping21shard_id_to_shard_key00ENCB7k_0EE0E0INtB7_5FnMutTuB1O_EE8call_mutB7w_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.val.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3134
  %i.y = add i64 %.sroa.0.0.ph, -1
  br label %.outer

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %i.z = phi ptr [ %i.ad, %.lr.ph.split ], [ %.lcssa2227, %.lr.ph ] ; 2 uses
  %i.aa = phi ptr [ %i.ac, %.lr.ph.split ], [ %.lcssa2125, %.lr.ph ]
  %.val14 = load <16 x i8>, ptr %i.z, align 16
  %i.ab = icmp sgt <16 x i8> %.val14, splat (i8 -1) ; 2 uses
  store <16 x i1> %i.ab, ptr %i.b, align 8
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 -64 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 3 uses
  %.cast = bitcast <16 x i1> %i.ab to i16         ; 2 uses
  %.not = icmp eq i16 %.cast, 0
  br i1 %.not, label %.lr.ph.split, label %._crit_edge

bb.g:                                             ; preds = %.lr.ph
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTmuEE9next_implKb0_ECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !noundef !11 ; 2 uses
  %.not11 = icmp eq i16 %i.b, 0
  %.promoted = load ptr, ptr %0, align 8          ; 2 uses
  br i1 %.not11, label %.lr.ph, label %._crit_edge18

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted13 = load ptr, ptr %i.c, align 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  store ptr %i.o, ptr %i.c, align 8
  store ptr %i.n, ptr %0, align 8
  br label %._crit_edge18

._crit_edge18:                                    ; preds = %bb.a, %._crit_edge
  %i.d = phi ptr [ %i.n, %._crit_edge ], [ %.promoted, %bb.a ]
  %.lcssa = phi i16 [ %.cast, %._crit_edge ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = add i16 %.lcssa, -1
  %i.f = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.g = zext nneg i16 %i.f to i64
  %i.h = and i16 %i.e, %.lcssa
  store i16 %i.h, ptr %i.a, align 8
  %i.i = sub nsw i64 0, %i.g
  %i.j = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.i
  ret ptr %i.j

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.k = phi ptr [ %.promoted13, %.lr.ph ], [ %i.o, %bb.b ] ; 2 uses
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %i.n, %bb.b ]
  %.val9 = load <16 x i8>, ptr %i.k, align 16
  %i.m = icmp sgt <16 x i8> %.val9, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -64 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast = bitcast <16 x i1> %i.m to i16          ; 2 uses
  %.not = icmp eq i16 %.cast, 0
  br i1 %.not, label %bb.b, label %._crit_edge
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTmyEE9next_implKb0_ECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !noundef !11 ; 2 uses
  %.not11 = icmp eq i16 %i.b, 0
  %.promoted = load ptr, ptr %0, align 8          ; 2 uses
  br i1 %.not11, label %.lr.ph, label %._crit_edge18

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted13 = load ptr, ptr %i.c, align 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  store ptr %i.o, ptr %i.c, align 8
  store ptr %i.n, ptr %0, align 8
  br label %._crit_edge18

._crit_edge18:                                    ; preds = %bb.a, %._crit_edge
  %i.d = phi ptr [ %i.n, %._crit_edge ], [ %.promoted, %bb.a ]
  %.lcssa = phi i16 [ %.cast, %._crit_edge ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = add i16 %.lcssa, -1
  %i.f = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.g = zext nneg i16 %i.f to i64
  %i.h = and i16 %i.e, %.lcssa
  store i16 %i.h, ptr %i.a, align 8
  %i.i = sub nsw i64 0, %i.g
  %i.j = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.i
  ret ptr %i.j

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.k = phi ptr [ %.promoted13, %.lr.ph ], [ %i.o, %bb.b ] ; 2 uses
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %i.n, %bb.b ]
  %.val9 = load <16 x i8>, ptr %i.k, align 16
  %i.m = icmp sgt <16 x i8> %.val9, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -256 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast = bitcast <16 x i1> %i.m to i16          ; 2 uses
  %.not = icmp eq i16 %.cast, 0
  br i1 %.not, label %bb.b, label %._crit_edge
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCshMzyYDJGtjv_3api4grpc12dynamic_pool13ItemWithStatsNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7ChannelEEEE9fold_implNCINvXsG_NtB8_3mapINtB3E_4IteryBW_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldINtNtB4c_3cmp11KeyAndValuejTRyjEENCINvNtNtB4a_8adapters3map8map_foldTB5w_RBW_EB5v_B54_NCNvMs1_B1x_INtB1x_11DynamicPoolB2r_E6chooses_0NCINvNtB5I_6filter11filter_foldB5v_B54_NCB6u_s0_0NCIB5E_B5v_B54_B54_NCINvNvB44_10min_by_key3keyB5v_jNCB6u_s1_0E0NvYB54_NtB57_3Ord3minE0E0E0E0B54_ECsPYQCUnoTxQ_10collection(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %1, i64 noundef %2, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(24) %3, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %4) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %.promoted22 = load ptr, ptr %1, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !11, !align !13 ; 2 uses
  %.val.i.i = load ptr, ptr %4, align 8, !nonnull !11, !align !13
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %.sroa.6.24..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.7.24..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.promoted = load ptr, ptr %i.d, align 8
  %.pre = load i16, ptr %i.c, align 8
  br label %.outer

.outer:                                           ; preds = %_RNCINvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB8_4IteryINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCshMzyYDJGtjv_3api4grpc12dynamic_pool13ItemWithStatsNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7ChannelEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldINtNtB3k_3cmp11KeyAndValuejTRyjEENCINvNtNtB3i_8adapters3map8map_foldTB4E_RBO_EB4D_B4c_NCNvMs1_B1p_INtB1p_11DynamicPoolB2j_E6chooses_0NCINvNtB4Q_6filter11filter_foldB4D_B4c_NCB5C_s0_0NCIB4M_B4D_B4c_B4c_NCINvNvB3c_10min_by_key3keyB4D_jNCB5C_s1_0E0NvYB4c_NtB4f_3Ord3minE0E0E0E0CsPYQCUnoTxQ_10collection.exit, %bb.a
  %i.i = phi i16 [ %i.n, %_RNCINvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB8_4IteryINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCshMzyYDJGtjv_3api4grpc12dynamic_pool13ItemWithStatsNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7ChannelEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldINtNtB3k_3cmp11KeyAndValuejTRyjEENCINvNtNtB3i_8adapters3map8map_foldTB4E_RBO_EB4D_B4c_NCNvMs1_B1p_INtB1p_11DynamicPoolB2j_E6chooses_0NCINvNtB4Q_6filter11filter_foldB4D_B4c_NCB5C_s0_0NCIB4M_B4D_B4c_B4c_NCINvNvB3c_10min_by_key3keyB4D_jNCB5C_s1_0E0NvYB4c_NtB4f_3Ord3minE0E0E0E0CsPYQCUnoTxQ_10collection.exit ], [ %.pre, %bb.a ] ; 2 uses
  %.lcssa2126 = phi ptr [ %.lcssa2125, %_RNCINvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB8_4IteryINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCshMzyYDJGtjv_3api4grpc12dynamic_pool13ItemWithStatsNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7ChannelEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldINtNtB3k_3cmp11KeyAndValuejTRyjEENCINvNtNtB3i_8adapters3map8map_foldTB4E_RBO_EB4D_B4c_NCNvMs1_B1p_INtB1p_11DynamicPoolB2j_E6chooses_0NCINvNtB4Q_6filter11filter_foldB4D_B4c_NCB5C_s0_0NCIB4M_B4D_B4c_B4c_NCINvNvB3c_10min_by_key3keyB4D_jNCB5C_s1_0E0NvYB4c_NtB4f_3Ord3minE0E0E0E0CsPYQCUnoTxQ_10collection.exit ], [ %.promoted, %bb.a ] ; 2 uses
  %.lcssa2024 = phi ptr [ %.lcssa2023, %_RNCINvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB8_4IteryINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCshMzyYDJGtjv_3api4grpc12dynamic_pool13ItemWithStatsNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7ChannelEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldINtNtB3k_3cmp11KeyAndValuejTRyjEENCINvNtNtB3i_8adapters3map8map_foldTB4E_RBO_EB4D_B4c_NCNvMs1_B1p_INtB1p_11DynamicPoolB2j_E6chooses_0NCINvNtB4Q_6filter11filter_foldB4D_B4c_NCB5C_s0_0NCIB4M_B4D_B4c_B4c_NCINvNvB3c_10min_by_key3keyB4D_jNCB5C_s1_0E0NvYB4c_NtB4f_3Ord3minE0E0E0E0CsPYQCUnoTxQ_10collection.exit ], [ %.promoted22, %bb.a ] ; 2 uses
  %.sroa.0.0.ph = phi i64 [ %i.aa, %_RNCINvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB8_4IteryINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCshMzyYDJGtjv_3api4grpc12dynamic_pool13ItemWithStatsNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7ChannelEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldINtNtB3k_3cmp11KeyAndValuejTRyjEENCINvNtNtB3i_8adapters3map8map_foldTB4E_RBO_EB4D_B4c_NCNvMs1_B1p_INtB1p_11DynamicPoolB2j_E6chooses_0NCINvNtB4Q_6filter11filter_foldB4D_B4c_NCB5C_s0_0NCIB4M_B4D_B4c_B4c_NCINvNvB3c_10min_by_key3keyB4D_jNCB5C_s1_0E0NvYB4c_NtB4f_3Ord3minE0E0E0E0CsPYQCUnoTxQ_10collection.exit ], [ %2, %bb.a ] ; 2 uses
  %.not17 = icmp eq i16 %i.i, 0
  br i1 %.not17, label %.lr.ph, label %bb.b

.lr.ph:                                           ; preds = %.outer
  %i.j = icmp eq i64 %.sroa.0.0.ph, 0
  br i1 %i.j, label %bb.e, label %.lr.ph.split

._crit_edge:                                      ; preds = %.lr.ph.split
  store ptr %i.ae, ptr %1, align 8
  store ptr %i.af, ptr %i.d, align 8
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %.outer
  %.lcssa2125 = phi ptr [ %i.af, %._crit_edge ], [ %.lcssa2126, %.outer ]
  %.lcssa2023 = phi ptr [ %i.ae, %._crit_edge ], [ %.lcssa2024, %.outer ] ; 2 uses
  %.lcssa = phi i16 [ %.cast, %._crit_edge ], [ %i.i, %.outer ] ; 3 uses
  %i.k = add i16 %.lcssa, -1
  %i.l = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.m = zext nneg i16 %i.l to i64
  %i.n = and i16 %i.k, %.lcssa                    ; 2 uses
  store i16 %i.n, ptr %i.c, align 8
  %i.o = sub nsw i64 0, %i.m
  %i.p = getelementptr inbounds [16 x i8], ptr %.lcssa2023, i64 %i.o ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3172)
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !3173, !noalias !3174, !nonnull !11, !noundef !11
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.t = load atomic i64, ptr %i.s monotonic, align 8, !noalias !3175 ; 5 uses
  %i.u = load i64, ptr %i.f, align 8, !noalias !3175, !noundef !11
  %i.v = add i64 %i.u, %i.t
  store i64 %i.v, ptr %i.f, align 8, !noalias !3175
  %i.w = load i64, ptr %.val.i.i, align 8, !noalias !3176, !noundef !11
  %i.x = icmp ult i64 %i.t, %i.w
  br i1 %i.x, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  br label %_RNCINvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB8_4IteryINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCshMzyYDJGtjv_3api4grpc12dynamic_pool13ItemWithStatsNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7ChannelEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldINtNtB3k_3cmp11KeyAndValuejTRyjEENCINvNtNtB3i_8adapters3map8map_foldTB4E_RBO_EB4D_B4c_NCNvMs1_B1p_INtB1p_11DynamicPoolB2j_E6chooses_0NCINvNtB4Q_6filter11filter_foldB4D_B4c_NCB5C_s0_0NCIB4M_B4D_B4c_B4c_NCINvNvB3c_10min_by_key3keyB4D_jNCB5C_s1_0E0NvYB4c_NtB4f_3Ord3minE0E0E0E0CsPYQCUnoTxQ_10collection.exit

bb.d:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds i8, ptr %i.p, i64 -16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3177
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  store ptr %i.y, ptr %i.g, align 8, !noalias !3178
  store i64 %i.t, ptr %.sroa.6.24..sroa_idx.i.i.i.i, align 8, !noalias !3178
  store i64 %i.t, ptr %.sroa.7.24..sroa_idx.i.i.i.i, align 8, !noalias !3178
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3179)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3180)
  %.val1.i.i.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !3181, !noalias !3182, !noundef !11
  %i.z = icmp ult i64 %i.t, %.val1.i.i.i.i.i.i
  %..i.i.i.i.i.i = select i1 %i.z, ptr %i.g, ptr %i.a
end_hunk_0
