Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/collection-65f4deb478ee6f80.collection.9c3f6a4bd60d140-cgu.001?download=true
inline.NumInlined: 10308
inline.NumDeleted: 5297
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEINtB2_12SpecFromIterBU_INtNtNtNtCsG258MDvU3F_3std11collections4hash3set8IntoIterBU_EE9from_iterCsPYQCUnoTxQ_10collection:bb.a
_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEINtB2_10SpecExtendBR_INtNtNtNtCsG258MDvU3F_3std11collections4hash3set8IntoIterBR_EE11spec_extendCsPYQCUnoTxQ_10collection.exit.i: ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdE16extend_desugaredINtNtNtNtCsG258MDvU3F_3std11collections4hash3set8IntoIterBG_EECsPYQCUnoTxQ_10collection.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !11560
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !11559
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !11560
  br label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsG258MDvU3F_3std11collections4hash3set8IntoIterB11_EE9from_iterCsPYQCUnoTxQ_10collection.exit

bb.l:                                             ; preds = %bb.m, %.body.i
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !11558
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set8IntoIterNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEECsPYQCUnoTxQ_10collection.exit.i: ; preds = %bb.m, %.body.i
  %.pn19.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.ag, %bb.m ]
  resume { ptr, i32 } %.pn19.i

bb.m:                                             ; preds = %bb.d, %bb.c, %bb.a
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsC_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIduEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set8IntoIterNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEECsPYQCUnoTxQ_10collection.exit.i unwind label %bb.l, !noalias !11558

_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsG258MDvU3F_3std11collections4hash3set8IntoIterB11_EE9from_iterCsPYQCUnoTxQ_10collection.exit: ; preds = %bb.b, %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEINtB2_10SpecExtendBR_INtNtNtNtCsG258MDvU3F_3std11collections4hash3set8IntoIterBR_EE11spec_extendCsPYQCUnoTxQ_10collection.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB2a_7flatten7FlattenINtNtNtB2e_5slice4iter4IterIBL_NtBW_11ScoredPointEEENCNCNvMs_NtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard5queryNtB4j_10LocalShard28fill_with_payload_or_vectors00EE9from_iterB4n_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.i.i.i = alloca [23 x i8], align 1      ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.4.i = alloca [23 x i8], align 1          ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11607)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11608)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11609
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11610)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11611)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11612)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.promoted.i.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !11613 ; 3 uses
  %.promoted19.i.i.i.i = load ptr, ptr %1, align 8, !alias.scope !11613 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !11613 ; 3 uses
  %.promoted20.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !11613 ; 3 uses
  %.not.i.i.i.i.i75 = icmp eq ptr %.promoted.i.i.i.i, null
  %i.g = icmp eq ptr %.promoted.i.i.i.i, %.promoted20.i.i.i.i
  %or.cond76 = select i1 %.not.i.i.i.i.i75, i1 true, i1 %i.g
  br i1 %or.cond76, label %select.unfold.i.i.i.i, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEEENCNCNvMs_NtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard5queryNtB3e_10LocalShard28fill_with_payload_or_vectors00ENtNtNtB9_6traits8iterator8Iterator4nextB3i_.exit.i

select.unfold.i.i.i.i:                            ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.j, %bb.b ], [ %.promoted19.i.i.i.i, %bb.a ] ; 6 uses
  %.sroa.6.0.copyload.i77 = phi ptr [ %i.m, %bb.b ], [ %.promoted20.i.i.i.i, %bb.a ]
  %.not.i5.i.i.i.i = icmp eq ptr %i.h, null
  %i.i = icmp eq ptr %i.h, %i.f
  %or.cond.i.i.i.i.i = select i1 %.not.i5.i.i.i.i, i1 true, i1 %i.i
  br i1 %or.cond.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %select.unfold.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.k = getelementptr i8, ptr %i.h, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.k, align 8, !noalias !11614, !nonnull !32, !noundef !32 ; 2 uses
  %i.l = getelementptr i8, ptr %i.h, i64 16
  %.val4.i.i.i.i = load i64, ptr %i.l, align 8, !noalias !11614, !noundef !32 ; 2 uses
  %.idx = mul nuw nsw i64 %.val4.i.i.i.i, 208
  %i.m = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.idx ; 2 uses
  %i.n = icmp eq i64 %.val4.i.i.i.i, 0
  br i1 %i.n, label %select.unfold.i.i.i.i, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEEENCNCNvMs_NtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard5queryNtB3e_10LocalShard28fill_with_payload_or_vectors00ENtNtNtB9_6traits8iterator8Iterator4nextB3i_.exit.i

bb.c:                                             ; preds = %select.unfold.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !11615, !noundef !32 ; 5 uses
  %.not.i7.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i7.i.i.i.i, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEEENCNCNvMs_NtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard5queryNtB3e_10LocalShard28fill_with_payload_or_vectors00ENtNtNtB9_6traits8iterator8Iterator4nextB3i_.exit.thread.i, label %.sink.split.i8.i.i.i.i

.sink.split.i8.i.i.i.i:                           ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !11616, !nonnull !32, !noundef !32
  %i.s = icmp eq ptr %i.p, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 208
  br i1 %i.s, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEEENCNCNvMs_NtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard5queryNtB3e_10LocalShard28fill_with_payload_or_vectors00ENtNtNtB9_6traits8iterator8Iterator4nextB3i_.exit.thread.i, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEEENCNCNvMs_NtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard5queryNtB3e_10LocalShard28fill_with_payload_or_vectors00ENtNtNtB9_6traits8iterator8Iterator4nextB3i_.exit.i.thread

_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEEENCNCNvMs_NtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard5queryNtB3e_10LocalShard28fill_with_payload_or_vectors00ENtNtNtB9_6traits8iterator8Iterator4nextB3i_.exit.i: ; preds = %bb.b, %bb.a
  %.sroa.6.0.copyload.i.lcssa = phi ptr [ %.promoted20.i.i.i.i, %bb.a ], [ %i.m, %bb.b ] ; 2 uses
  %.lcssa71 = phi ptr [ %.promoted19.i.i.i.i, %bb.a ], [ %i.j, %bb.b ]
  %spec.select.i18.i.i.i.i.lcssa = phi ptr [ %.promoted.i.i.i.i, %bb.a ], [ %.val.i.i.i.i, %bb.b ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %spec.select.i18.i.i.i.i.lcssa, i64 168
  %.sroa.0.0.copyload6.i = load i8, ptr %i.u, align 8, !noalias !11617 ; 2 uses
  %.not.i = icmp eq i8 %.sroa.0.0.copyload6.i, 2
  br i1 %.not.i, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEEENCNCNvMs_NtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard5queryNtB3e_10LocalShard28fill_with_payload_or_vectors00ENtNtNtB9_6traits8iterator8Iterator4nextB3i_.exit.thread.i, label %bb.d

_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEEENCNCNvMs_NtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard5queryNtB3e_10LocalShard28fill_with_payload_or_vectors00ENtNtNtB9_6traits8iterator8Iterator4nextB3i_.exit.i.thread: ; preds = %.sink.split.i8.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 168
  %.sroa.0.0.copyload6.i2 = load i8, ptr %i.v, align 8, !noalias !11617 ; 2 uses
  %.not.i3 = icmp eq i8 %.sroa.0.0.copyload6.i2, 2
  br i1 %.not.i3, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEEENCNCNvMs_NtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard5queryNtB3e_10LocalShard28fill_with_payload_or_vectors00ENtNtNtB9_6traits8iterator8Iterator4nextB3i_.exit.thread.i, label %.thread

.thread:                                          ; preds = %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEEENCNCNvMs_NtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard5queryNtB3e_10LocalShard28fill_with_payload_or_vectors00ENtNtNtB9_6traits8iterator8Iterator4nextB3i_.exit.i.thread
  %.sroa.7.0..sroa_idx7.i8 = getelementptr inbounds nuw i8, ptr %i.p, i64 169
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.4.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.7.0..sroa_idx7.i8, i64 23, i1 false), !noalias !11609
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCs607s0NAIaWN_7segment5types11ScoredPointEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsPYQCUnoTxQ_10collection.exit.i.i.i.i

bb.d:                                             ; preds = %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEEENCNCNvMs_NtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard5queryNtB3e_10LocalShard28fill_with_payload_or_vectors00ENtNtNtB9_6traits8iterator8Iterator4nextB3i_.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %spec.select.i18.i.i.i.i.lcssa, i64 208 ; 2 uses
  %.sroa.7.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %spec.select.i18.i.i.i.i.lcssa, i64 169
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.4.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.7.0..sroa_idx7.i, i64 23, i1 false), !noalias !11609
  %i.x = ptrtoint ptr %.sroa.6.0.copyload.i.lcssa to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub nuw i64 %i.x, %i.y
  %i.aa = udiv exact i64 %i.z, 208
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !11618
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCs607s0NAIaWN_7segment5types11ScoredPointEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsPYQCUnoTxQ_10collection.exit.i.i.i.i

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCs607s0NAIaWN_7segment5types11ScoredPointEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsPYQCUnoTxQ_10collection.exit.i.i.i.i: ; preds = %.thread, %bb.d
  %.sroa.6.0.copyload.i74 = phi ptr [ %.sroa.6.0.copyload.i.lcssa, %bb.d ], [ %.sroa.6.0.copyload.i77, %.thread ]
  %i.ab = phi ptr [ %.lcssa71, %bb.d ], [ %i.h, %.thread ]
  %i.ac = phi ptr [ %.pre, %bb.d ], [ %i.t, %.thread ] ; 4 uses
  %i.ad = phi ptr [ %i.w, %bb.d ], [ null, %.thread ]
  %.sroa.0.0.copyload6.i510 = phi i8 [ %.sroa.0.0.copyload6.i, %bb.d ], [ %.sroa.0.0.copyload6.i2, %.thread ]
  %.sroa.7.0.i.i.i.i = phi i64 [ %i.aa, %bb.d ], [ 0, %.thread ]
  %.not53.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not53.i.i.i.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCs607s0NAIaWN_7segment5types11ScoredPointEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsPYQCUnoTxQ_10collection.exit64.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCs607s0NAIaWN_7segment5types11ScoredPointEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsPYQCUnoTxQ_10collection.exit.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val3.i63.i.i.i.i = load ptr, ptr %i.ae, align 8, !alias.scope !11619, !nonnull !32, !noundef !32
  %i.af = ptrtoint ptr %.val3.i63.i.i.i.i to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub nuw i64 %i.af, %i.ag
  %i.ai = udiv exact i64 %i.ah, 208
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCs607s0NAIaWN_7segment5types11ScoredPointEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsPYQCUnoTxQ_10collection.exit64.i.i.i.i

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCs607s0NAIaWN_7segment5types11ScoredPointEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsPYQCUnoTxQ_10collection.exit64.i.i.i.i: ; preds = %bb.e, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCs607s0NAIaWN_7segment5types11ScoredPointEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsPYQCUnoTxQ_10collection.exit.i.i.i.i
  %.sroa.8.0.i.i.i.i = phi i64 [ %i.ai, %bb.e ], [ 0, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCs607s0NAIaWN_7segment5types11ScoredPointEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsPYQCUnoTxQ_10collection.exit.i.i.i.i ]
  %i.aj = add nuw nsw i64 %.sroa.8.0.i.i.i.i, %.sroa.7.0.i.i.i.i
  %i.ak = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 3) ; 2 uses
  %..i.i = add nuw nsw i64 %i.ak, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11609
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %..i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24), !noalias !11609
  %i.al = load i64, ptr %i.a, align 8, !range !41, !noalias !11609, !noundef !32
  %i.am = trunc nuw i64 %i.al to i1
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !range !42, !noalias !11609, !noundef !32 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.am, label %bb.f, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i, !prof !36

bb.f:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCs607s0NAIaWN_7segment5types11ScoredPointEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsPYQCUnoTxQ_10collection.exit64.i.i.i.i
  %i.aq = load i64, ptr %i.ap, align 8, !noalias !11609
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ao, i64 %i.aq) #30, !noalias !11609
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i: ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCs607s0NAIaWN_7segment5types11ScoredPointEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsPYQCUnoTxQ_10collection.exit64.i.i.i.i
  %i.ar = load ptr, ptr %i.ap, align 8, !noalias !11609, !nonnull !32, !noundef !32 ; 3 uses
  %i.as = icmp ult i64 %i.ak, %i.ao
  tail call void @llvm.assume(i1 %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11609
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.413.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.4.i, i64 23, i1 false), !noalias !11609
  store i8 %.sroa.0.0.copyload6.i510, ptr %i.ar, align 8, !noalias !11609
  store i64 %i.ao, ptr %i.b, align 8, !noalias !11609
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.ar, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !11609
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !11609
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.8.0.copyload.i = load ptr, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !11608 ; 2 uses
  %i.at = ptrtoint ptr %.sroa.8.0.copyload.i to i64
  br label %bb.g

bb.g:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdE7reserveCsPYQCUnoTxQ_10collection.exit.i.i.i, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i
  %i.au = phi i64 [ %i.cc, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdE7reserveCsPYQCUnoTxQ_10collection.exit.i.i.i ], [ 1, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i ] ; 5 uses
  %spec.select.i9.i.i.i25.i.i.i = phi ptr [ %spec.select.i9.i.i.i26.i.i.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdE7reserveCsPYQCUnoTxQ_10collection.exit.i.i.i ], [ %i.ac, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i ]
  %spec.select.i9.i.i.i18.i.i.i = phi ptr [ %spec.select.i9.i.i.i17.i.i.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdE7reserveCsPYQCUnoTxQ_10collection.exit.i.i.i ], [ %i.ac, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i ] ; 5 uses
  %.val3.i.i.i.i14.i.i.i = phi ptr [ %.val3.i.i.i.i15.i.i25.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdE7reserveCsPYQCUnoTxQ_10collection.exit.i.i.i ], [ %.sroa.6.0.copyload.i74, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i ] ; 3 uses
  %i.av = phi ptr [ %i.bl, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdE7reserveCsPYQCUnoTxQ_10collection.exit.i.i.i ], [ %i.ab, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i ] ; 5 uses
  %i.aw = phi ptr [ %i.bm, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdE7reserveCsPYQCUnoTxQ_10collection.exit.i.i.i ], [ %i.ad, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit.i ] ; 3 uses
  %.not.i.i.i.i.i.i27.i = icmp eq ptr %i.aw, null
  %i.ax = icmp eq ptr %i.aw, %.val3.i.i.i.i14.i.i.i
  %or.cond.i28.i = select i1 %.not.i.i.i.i.i.i27.i, i1 true, i1 %i.ax
  br i1 %or.cond.i28.i, label %select.unfold.i.i.i.i.i.i.preheader, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEEENCNCNvMs_NtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard5queryNtB3e_10LocalShard28fill_with_payload_or_vectors00ENtNtNtB9_6traits8iterator8Iterator4nextB3i_.exit.i.loopexit.i.i

select.unfold.i.i.i.i.i.i.preheader:              ; preds = %bb.g
  %.not.i5.i.i.i.i.i.i21 = icmp eq ptr %i.av, null
  %i.ay = icmp eq ptr %i.av, %i.f
  %or.cond.i.i.i.i.i.i.i22 = select i1 %.not.i5.i.i.i.i.i.i21, i1 true, i1 %i.ay
  br i1 %or.cond.i.i.i.i.i.i.i22, label %select.unfold.i.i.i.i.i.i._crit_edge, label %.lr.ph

select.unfold.i.i.i.i.i.i:                        ; preds = %.lr.ph
  %i.az = icmp eq ptr %i.bb, %i.f
  br i1 %i.az, label %select.unfold.i.i.i.i.i.i._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %select.unfold.i.i.i.i.i.i.preheader, %select.unfold.i.i.i.i.i.i
  %i.ba = phi ptr [ %i.bb, %select.unfold.i.i.i.i.i.i ], [ %i.av, %select.unfold.i.i.i.i.i.i.preheader ] ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24 ; 4 uses
  %i.bc = getelementptr i8, ptr %i.ba, i64 16
  %.val4.i.i.i.i.i.i = load i64, ptr %i.bc, align 8, !noalias !11620, !noundef !32 ; 2 uses
  %i.bd = icmp eq i64 %.val4.i.i.i.i.i.i, 0
  br i1 %i.bd, label %select.unfold.i.i.i.i.i.i, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEEENCNCNvMs_NtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard5queryNtB3e_10LocalShard28fill_with_payload_or_vectors00ENtNtNtB9_6traits8iterator8Iterator4nextB3i_.exit.i.loopexit.i.i.loopexit

select.unfold.i.i.i.i.i.i._crit_edge.loopexit:    ; preds = %select.unfold.i.i.i.i.i.i
  %i.be = getelementptr i8, ptr %i.ba, i64 8
  %.val.i.i.i.i.i.i.le61 = load ptr, ptr %i.be, align 8, !noalias !11620, !nonnull !32, !noundef !32
  %i.bf = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.le61, i64 0
  br label %select.unfold.i.i.i.i.i.i._crit_edge

select.unfold.i.i.i.i.i.i._crit_edge:             ; preds = %select.unfold.i.i.i.i.i.i._crit_edge.loopexit, %select.unfold.i.i.i.i.i.i.preheader
  %.lcssa = phi ptr [ %i.av, %select.unfold.i.i.i.i.i.i.preheader ], [ %i.bb, %select.unfold.i.i.i.i.i.i._crit_edge.loopexit ]
  %.val3.i.i.i.i15.i.i29.i.lcssa = phi ptr [ %.val3.i.i.i.i14.i.i.i, %select.unfold.i.i.i.i.i.i.preheader ], [ %i.bf, %select.unfold.i.i.i.i.i.i._crit_edge.loopexit ]
  %.not.i7.i.i.i.i.i.i = icmp eq ptr %spec.select.i9.i.i.i18.i.i.i, null
  %i.bg = icmp eq ptr %spec.select.i9.i.i.i18.i.i.i, %.sroa.8.0.copyload.i
  %i.bh = getelementptr inbounds nuw i8, ptr %spec.select.i9.i.i.i18.i.i.i, i64 208 ; 2 uses
  %or.cond24.i.i = select i1 %.not.i7.i.i.i.i.i.i, i1 true, i1 %i.bg
  br i1 %or.cond24.i.i, label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEINtB2_10SpecExtendBR_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB25_7flatten7FlattenINtNtNtB29_5slice4iter4IterIBI_NtBT_11ScoredPointEEENCNCNvMs_NtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard5queryNtB4e_10LocalShard28fill_with_payload_or_vectors00EE11spec_extendB4i_.exit.i, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEEENCNCNvMs_NtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard5queryNtB3e_10LocalShard28fill_with_payload_or_vectors00ENtNtNtB9_6traits8iterator8Iterator4nextB3i_.exit.i.i.i

_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEEENCNCNvMs_NtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard5queryNtB3e_10LocalShard28fill_with_payload_or_vectors00ENtNtNtB9_6traits8iterator8Iterator4nextB3i_.exit.i.loopexit.i.i.loopexit: ; preds = %.lr.ph
  %i.bi = getelementptr i8, ptr %i.ba, i64 8
  %.val.i.i.i.i.i.i.le = load ptr, ptr %i.bi, align 8, !noalias !11620, !nonnull !32, !noundef !32 ; 2 uses
  %.idx.i.le = mul nuw nsw i64 %.val4.i.i.i.i.i.i, 208
  %i.bj = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.le, i64 %.idx.i.le
  br label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEEENCNCNvMs_NtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard5queryNtB3e_10LocalShard28fill_with_payload_or_vectors00ENtNtNtB9_6traits8iterator8Iterator4nextB3i_.exit.i.loopexit.i.i

_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEEENCNCNvMs_NtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard5queryNtB3e_10LocalShard28fill_with_payload_or_vectors00ENtNtNtB9_6traits8iterator8Iterator4nextB3i_.exit.i.loopexit.i.i: ; preds = %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEEENCNCNvMs_NtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard5queryNtB3e_10LocalShard28fill_with_payload_or_vectors00ENtNtNtB9_6traits8iterator8Iterator4nextB3i_.exit.i.loopexit.i.i.loopexit, %bb.g
  %.val3.i.i.i.i15.i.i.lcssa.i = phi ptr [ %.val3.i.i.i.i14.i.i.i, %bb.g ], [ %i.bj, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEEENCNCNvMs_NtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard5queryNtB3e_10LocalShard28fill_with_payload_or_vectors00ENtNtNtB9_6traits8iterator8Iterator4nextB3i_.exit.i.loopexit.i.i.loopexit ]
  %.lcssa22.i = phi ptr [ %i.av, %bb.g ], [ %i.bb, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEEENCNCNvMs_NtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard5queryNtB3e_10LocalShard28fill_with_payload_or_vectors00ENtNtNtB9_6traits8iterator8Iterator4nextB3i_.exit.i.loopexit.i.i.loopexit ]
  %.lcssa.i = phi ptr [ %i.aw, %bb.g ], [ %.val.i.i.i.i.i.i.le, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEEENCNCNvMs_NtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard5queryNtB3e_10LocalShard28fill_with_payload_or_vectors00ENtNtNtB9_6traits8iterator8Iterator4nextB3i_.exit.i.loopexit.i.i.loopexit ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 208
  br label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEEENCNCNvMs_NtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard5queryNtB3e_10LocalShard28fill_with_payload_or_vectors00ENtNtNtB9_6traits8iterator8Iterator4nextB3i_.exit.i.i.i

_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEEENCNCNvMs_NtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard5queryNtB3e_10LocalShard28fill_with_payload_or_vectors00ENtNtNtB9_6traits8iterator8Iterator4nextB3i_.exit.i.i.i: ; preds = %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEEENCNCNvMs_NtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard5queryNtB3e_10LocalShard28fill_with_payload_or_vectors00ENtNtNtB9_6traits8iterator8Iterator4nextB3i_.exit.i.loopexit.i.i, %select.unfold.i.i.i.i.i.i._crit_edge
  %.val3.i.i.i.i15.i.i25.i = phi ptr [ %.val3.i.i.i.i15.i.i29.i.lcssa, %select.unfold.i.i.i.i.i.i._crit_edge ], [ %.val3.i.i.i.i15.i.i.lcssa.i, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEEENCNCNvMs_NtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard5queryNtB3e_10LocalShard28fill_with_payload_or_vectors00ENtNtNtB9_6traits8iterator8Iterator4nextB3i_.exit.i.loopexit.i.i ] ; 2 uses
  %i.bl = phi ptr [ %.lcssa, %select.unfold.i.i.i.i.i.i._crit_edge ], [ %.lcssa22.i, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEEENCNCNvMs_NtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard5queryNtB3e_10LocalShard28fill_with_payload_or_vectors00ENtNtNtB9_6traits8iterator8Iterator4nextB3i_.exit.i.loopexit.i.i ]
  %spec.select.i9.i.i.i26.i.i.i = phi ptr [ %i.bh, %select.unfold.i.i.i.i.i.i._crit_edge ], [ %spec.select.i9.i.i.i25.i.i.i, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEEENCNCNvMs_NtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard5queryNtB3e_10LocalShard28fill_with_payload_or_vectors00ENtNtNtB9_6traits8iterator8Iterator4nextB3i_.exit.i.loopexit.i.i ] ; 3 uses
  %spec.select.i9.i.i.i17.i.i.i = phi ptr [ %i.bh, %select.unfold.i.i.i.i.i.i._crit_edge ], [ %spec.select.i9.i.i.i18.i.i.i, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEEENCNCNvMs_NtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard5queryNtB3e_10LocalShard28fill_with_payload_or_vectors00ENtNtNtB9_6traits8iterator8Iterator4nextB3i_.exit.i.loopexit.i.i ]
  %i.bm = phi ptr [ null, %select.unfold.i.i.i.i.i.i._crit_edge ], [ %i.bk, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEEENCNCNvMs_NtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard5queryNtB3e_10LocalShard28fill_with_payload_or_vectors00ENtNtNtB9_6traits8iterator8Iterator4nextB3i_.exit.i.loopexit.i.i ] ; 3 uses
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %spec.select.i9.i.i.i18.i.i.i, %select.unfold.i.i.i.i.i.i._crit_edge ], [ %.lcssa.i, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEEENCNCNvMs_NtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard5queryNtB3e_10LocalShard28fill_with_payload_or_vectors00ENtNtNtB9_6traits8iterator8Iterator4nextB3i_.exit.i.loopexit.i.i ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 168
  %.sroa.0.0.copyload1.i.i.i = load i8, ptr %i.bn, align 8, !noalias !11621 ; 2 uses
  %.not.i.i.i = icmp eq i8 %.sroa.0.0.copyload1.i.i.i, 2
  br i1 %.not.i.i.i, label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEINtB2_10SpecExtendBR_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB25_7flatten7FlattenINtNtNtB29_5slice4iter4IterIBI_NtBT_11ScoredPointEEENCNCNvMs_NtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard5queryNtB4e_10LocalShard28fill_with_payload_or_vectors00EE11spec_extendB4i_.exit.i, label %bb.h

bb.h:                                             ; preds = %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEEENCNCNvMs_NtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard5queryNtB3e_10LocalShard28fill_with_payload_or_vectors00ENtNtNtB9_6traits8iterator8Iterator4nextB3i_.exit.i.i.i
  %.sroa.7.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 169
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.4.i.i.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.7.0..sroa_idx2.i.i.i, i64 23, i1 false), !noalias !11622
  %i.bo = icmp samesign ult i64 %i.au, 384307168202282326
  call void @llvm.assume(i1 %i.bo)
  %i.bp = load i64, ptr %i.b, align 8, !range !38, !alias.scope !11623, !noalias !11609, !noundef !32
  %i.bq = icmp eq i64 %i.au, %i.bp
  br i1 %i.bq, label %bb.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdE7reserveCsPYQCUnoTxQ_10collection.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i.i.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCs607s0NAIaWN_7segment5types11ScoredPointEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsPYQCUnoTxQ_10collection.exit.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.br = ptrtoint ptr %.val3.i.i.i.i15.i.i25.i to i64
  %i.bs = ptrtoint ptr %i.bm to i64
  %i.bt = sub nuw i64 %i.br, %i.bs
  %i.bu = udiv exact i64 %i.bt, 208
  %i.bv = add nuw nsw i64 %i.bu, 1
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCs607s0NAIaWN_7segment5types11ScoredPointEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsPYQCUnoTxQ_10collection.exit.i.i.i.i.i.i

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCs607s0NAIaWN_7segment5types11ScoredPointEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsPYQCUnoTxQ_10collection.exit.i.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.sroa.7.0.i.i.i.i.i.i = phi i64 [ %i.bv, %bb.j ], [ 1, %bb.i ]
  %.not53.i.i.i.i.i.i = icmp eq ptr %spec.select.i9.i.i.i26.i.i.i, null
  br i1 %.not53.i.i.i.i.i.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCs607s0NAIaWN_7segment5types11ScoredPointEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsPYQCUnoTxQ_10collection.exit64.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCs607s0NAIaWN_7segment5types11ScoredPointEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsPYQCUnoTxQ_10collection.exit.i.i.i.i.i.i
  %i.bw = ptrtoint ptr %spec.select.i9.i.i.i26.i.i.i to i64
  %i.bx = sub nuw i64 %i.at, %i.bw
  %i.by = udiv exact i64 %i.bx, 208
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCs607s0NAIaWN_7segment5types11ScoredPointEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsPYQCUnoTxQ_10collection.exit64.i.i.i.i.i.i

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCs607s0NAIaWN_7segment5types11ScoredPointEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsPYQCUnoTxQ_10collection.exit64.i.i.i.i.i.i: ; preds = %bb.k, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCs607s0NAIaWN_7segment5types11ScoredPointEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsPYQCUnoTxQ_10collection.exit.i.i.i.i.i.i
  %.sroa.8.0.i.i.i.i.i.i = phi i64 [ %i.by, %bb.k ], [ 0, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCs607s0NAIaWN_7segment5types11ScoredPointEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsPYQCUnoTxQ_10collection.exit.i.i.i.i.i.i ]
  %i.bz = add nuw nsw i64 %.sroa.8.0.i.i.i.i.i.i, %.sroa.7.0.i.i.i.i.i.i
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.au, i64 noundef %i.bz, i64 noundef 8, i64 noundef 24)
          to label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdE7reserveCsPYQCUnoTxQ_10collection.exit.i.i.i unwind label %bb.l, !noalias !11609

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdE7reserveCsPYQCUnoTxQ_10collection.exit.i.i.i: ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCs607s0NAIaWN_7segment5types11ScoredPointEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsPYQCUnoTxQ_10collection.exit64.i.i.i.i.i.i, %bb.h
  %i.ca = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !11623, !noalias !11609, !nonnull !32, !noundef !32
  %i.cb = getelementptr inbounds nuw [24 x i8], ptr %i.ca, i64 %i.au ; 2 uses
  %.sroa.47.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.47.0..sroa_idx.i.i.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.4.i.i.i, i64 23, i1 false), !noalias !11622
  store i8 %.sroa.0.0.copyload1.i.i.i, ptr %i.cb, align 8, !noalias !11622
  %i.cc = add nuw nsw i64 %i.au, 1                ; 2 uses
  store i64 %i.cc, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !11623, !noalias !11609
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  br label %bb.g

_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEEENCNCNvMs_NtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard5queryNtB3e_10LocalShard28fill_with_payload_or_vectors00ENtNtNtB9_6traits8iterator8Iterator4nextB3i_.exit.thread.i: ; preds = %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEEENCNCNvMs_NtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard5queryNtB3e_10LocalShard28fill_with_payload_or_vectors00ENtNtNtB9_6traits8iterator8Iterator4nextB3i_.exit.i.thread, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEEENCNCNvMs_NtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard5queryNtB3e_10LocalShard28fill_with_payload_or_vectors00ENtNtNtB9_6traits8iterator8Iterator4nextB3i_.exit.i, %.sink.split.i8.i.i.i.i, %bb.c
  store i64 0, ptr %0, align 8, !alias.scope !11607
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.cd, align 8, !alias.scope !11607
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ce, align 8, !alias.scope !11607
  br label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEINtB2_18SpecFromIterNestedB11_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB2o_7flatten7FlattenINtNtNtB2s_5slice4iter4IterIBS_NtB13_11ScoredPointEEENCNCNvMs_NtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard5queryNtB4y_10LocalShard28fill_with_payload_or_vectors00EE9from_iterB4C_.exit

bb.l:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCs607s0NAIaWN_7segment5types11ScoredPointEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECsPYQCUnoTxQ_10collection.exit64.i.i.i.i.i.i
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEECsPYQCUnoTxQ_10collection.exit.i unwind label %bb.m, !noalias !11609

_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEINtB2_10SpecExtendBR_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB25_7flatten7FlattenINtNtNtB29_5slice4iter4IterIBI_NtBT_11ScoredPointEEENCNCNvMs_NtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard5queryNtB4e_10LocalShard28fill_with_payload_or_vectors00EE11spec_extendB4i_.exit.i: ; preds = %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEEENCNCNvMs_NtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard5queryNtB3e_10LocalShard28fill_with_payload_or_vectors00ENtNtNtB9_6traits8iterator8Iterator4nextB3i_.exit.i.i.i, %select.unfold.i.i.i.i.i.i._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !11608
  br label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEINtB2_18SpecFromIterNestedB11_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB2o_7flatten7FlattenINtNtNtB2s_5slice4iter4IterIBS_NtB13_11ScoredPointEEENCNCNvMs_NtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard5queryNtB4y_10LocalShard28fill_with_payload_or_vectors00EE9from_iterB4C_.exit

bb.m:                                             ; preds = %bb.l
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !11609
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEECsPYQCUnoTxQ_10collection.exit.i: ; preds = %bb.l
  resume { ptr, i32 } %i.cf

_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEINtB2_18SpecFromIterNestedB11_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB2o_7flatten7FlattenINtNtNtB2s_5slice4iter4IterIBS_NtB13_11ScoredPointEEENCNCNvMs_NtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard5queryNtB4y_10LocalShard28fill_with_payload_or_vectors00EE9from_iterB4C_.exit: ; preds = %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtNtBb_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEEENCNCNvMs_NtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard5queryNtB3e_10LocalShard28fill_with_payload_or_vectors00ENtNtNtB9_6traits8iterator8Iterator4nextB3i_.exit.thread.i, %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEINtB2_10SpecExtendBR_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB25_7flatten7FlattenINtNtNtB29_5slice4iter4IterIBI_NtBT_11ScoredPointEEENCNCNvMs_NtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard5queryNtB4e_10LocalShard28fill_with_payload_or_vectors00EE11spec_extendB4i_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11609
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2e_5slice4iter4IterNtBW_11ScoredPointENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection6searchNtB3M_10Collection31fill_search_result_with_payload0s_0EE9from_iterB3O_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !11630
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.d = ptrtoint ptr %2 to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 208                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11630
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24), !noalias !11630
  %i.h = load i64, ptr %i.b, align 8, !range !41, !noalias !11630, !noundef !32
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !42, !noalias !11630, !noundef !32 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1T_5slice4iter4IterNtBI_11ScoredPointENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection6searchNtB3r_10Collection31fill_search_result_with_payload0s_0EEB3t_.exit.i.i, !prof !36

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !noalias !11630
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #30, !noalias !11630
  unreachable

_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1T_5slice4iter4IterNtBI_11ScoredPointENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection6searchNtB3r_10Collection31fill_search_result_with_payload0s_0EEB3t_.exit.i.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !noalias !11630, !nonnull !32, !noundef !32 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11630
  store i64 %i.k, ptr %i.c, align 8, !noalias !11630
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8, !noalias !11630
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.q, align 8, !noalias !11630
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11631
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.n, ptr %i.r, align 8, !noalias !11631
  store ptr %i.q, ptr %i.a, align 8, !noalias !11631
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.s, align 8, !noalias !11631
  invoke void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs607s0NAIaWN_7segment5types11ScoredPointENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection6searchNtB2g_10Collection31fill_search_result_with_payload0s_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3U_8for_each4callNtB1p_15ExtendedPointIdNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5t_3VecB4X_E14extend_trustedBN_E0E0EB2i_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2u_5slice4iter4IterNtB15_11ScoredPointENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection6searchNtB43_10Collection31fill_search_result_with_payload0s_0EE9from_iterB45_.exit unwind label %bb.c, !noalias !11630

bb.c:                                             ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1T_5slice4iter4IterNtBI_11ScoredPointENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection6searchNtB3r_10Collection31fill_search_result_with_payload0s_0EEB3t_.exit.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEECsPYQCUnoTxQ_10collection.exit.i unwind label %bb.d, !noalias !11630

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !11630
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEECsPYQCUnoTxQ_10collection.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.t

_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2u_5slice4iter4IterNtB15_11ScoredPointENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection6searchNtB43_10Collection31fill_search_result_with_payload0s_0EE9from_iterB45_.exit: ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1T_5slice4iter4IterNtBI_11ScoredPointENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection6searchNtB3r_10Collection31fill_search_result_with_payload0s_0EEB3t_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11631
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11630
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten7FlattenINtNtCs9XvERIT2X68_9itertools20process_results_impl14ProcessResultsINtNtB2a_3map3MapINtNtB4_9into_iter8IntoIterNtNtCs5QaNqjAn6vc_5shard14locked_segment13LockedSegmentENCNCNCNCNvMNtNtCsPYQCUnoTxQ_10collection18collection_manager17segments_searcherNtB5T_16SegmentsSearcher13read_filtered00s_00ENtNtNtBY_6common15operation_error14OperationErrorEEE9from_iterB5X_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(136) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.5.i.i.i = alloca i64, align 8            ; 3 uses
  %.sroa.7.i.i.i = alloca i64, align 8            ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [136 x i8], align 8               ; 13 uses
  %.sroa.5.i = alloca i64, align 8                ; 3 uses
  %.sroa.7.i = alloca i64, align 8                ; 3 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 11 uses
end_hunk_0
