Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/collection-65f4deb478ee6f80.collection.9c3f6a4bd60d140-cgu.001?download=true
inline.NumInlined: 10308
inline.NumDeleted: 5297
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecmEINtB2_18SpecFromIterNestedmINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter6FilterINtCsgNzSnKyKfuE_6either6EitherIB1v_INtNtNtB1D_3ops5range5RangemENCNvMNtNtCs607s0NAIaWN_7segment10id_tracker14point_mappingsNtB3w_13PointMappings13iter_internal0EIB2p_IB1v_B2Y_NCNvMNtNtB3y_10compressed25compressed_point_mappingsNtB5j_23CompressedPointMappings13iter_internal0EIB1v_B2Y_NCNvMs0_NtNtB3y_15disk_id_tracker8mappingsINtB77_15DiskMappingsRefNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileE13iter_internal0EEENCNvMs0_NtNtB3y_15id_tracker_base18point_mappings_refINtB9o_20PointMappingsRefEnumB83_E23iter_internal_excluding0EE9from_iterCsPYQCUnoTxQ_10collection:bb.a

.noexc7:                                          ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14203
  %i.ab = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !14204, !noundef !32 ; 2 uses
  %i.ac = load i64, ptr %i.e, align 8, !range !38, !alias.scope !14204, !noundef !32
  %i.ad = icmp eq i64 %i.ac, %i.ab
  br i1 %i.ad, label %bb.e, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecmE7reserveCsPYQCUnoTxQ_10collection.exit.i.i, !prof !36

bb.e:                                             ; preds = %.noexc7
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.ab, i64 noundef 1, i64 noundef 4, i64 noundef 4)
          to label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecmE7reserveCsPYQCUnoTxQ_10collection.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecmE7reserveCsPYQCUnoTxQ_10collection.exit.i.i: ; preds = %bb.e, %.noexc7, %.lr.ph.i.i
  %i.ae = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !14202, !nonnull !32, !noundef !32
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.x
  store i32 %i.w, ptr %i.af, align 4
  %i.ag = add nuw nsw i64 %i.x, 1
  store i64 %i.ag, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !14202
  %i.ah = invoke { i32, i32 } @_RINvXs0_NtCsgNzSnKyKfuE_6either8iteratorINtB8_6EitherINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter6FilterINtNtNtBY_3ops5range5RangemENCNvMNtNtCs607s0NAIaWN_7segment10id_tracker14point_mappingsNtB2g_13PointMappings13iter_internal0EIBD_IBQ_B1J_NCNvMNtNtB2i_10compressed25compressed_point_mappingsNtB41_23CompressedPointMappings13iter_internal0EIBQ_B1J_NCNvMs0_NtNtB2i_15disk_id_tracker8mappingsINtB5O_15DiskMappingsRefNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileE13iter_internal0EEENtNtNtBW_6traits8iterator8Iterator4findQNCNvMs0_NtNtB2i_15id_tracker_base18point_mappings_refINtB8J_20PointMappingsRefEnumB6K_E23iter_internal_excluding0ECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.s)
          to label %.noexc9 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc9:                                          ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecmE7reserveCsPYQCUnoTxQ_10collection.exit.i.i
  %i.ai = extractvalue { i32, i32 } %i.ah, 0
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i.i, label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecmEINtB2_10SpecExtendmINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter6FilterINtCsgNzSnKyKfuE_6either6EitherIB1d_INtNtNtB1l_3ops5range5RangemENCNvMNtNtCs607s0NAIaWN_7segment10id_tracker14point_mappingsNtB3e_13PointMappings13iter_internal0EIB27_IB1d_B2G_NCNvMNtNtB3g_10compressed25compressed_point_mappingsNtB51_23CompressedPointMappings13iter_internal0EIB1d_B2G_NCNvMs0_NtNtB3g_15disk_id_tracker8mappingsINtB6P_15DiskMappingsRefNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileE13iter_internal0EEENCNvMs0_NtNtB3g_15id_tracker_base18point_mappings_refINtB96_20PointMappingsRefEnumB7L_E23iter_internal_excluding0EE11spec_extendCsPYQCUnoTxQ_10collection.exit

bb.f:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.al, align 8
  br label %bb.g

bb.g:                                             ; preds = %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecmEINtB2_10SpecExtendmINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter6FilterINtCsgNzSnKyKfuE_6either6EitherIB1d_INtNtNtB1l_3ops5range5RangemENCNvMNtNtCs607s0NAIaWN_7segment10id_tracker14point_mappingsNtB3e_13PointMappings13iter_internal0EIB27_IB1d_B2G_NCNvMNtNtB3g_10compressed25compressed_point_mappingsNtB51_23CompressedPointMappings13iter_internal0EIB1d_B2G_NCNvMs0_NtNtB3g_15disk_id_tracker8mappingsINtB6P_15DiskMappingsRefNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileE13iter_internal0EEENCNvMs0_NtNtB3g_15id_tracker_base18point_mappings_refINtB96_20PointMappingsRefEnumB7L_E23iter_internal_excluding0EE11spec_extendCsPYQCUnoTxQ_10collection.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecmE7reserveCsPYQCUnoTxQ_10collection.exit.i.i, %bb.e, %bb.d, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit
  %lpad.loopexit.split-lp12 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECsPYQCUnoTxQ_10collection.exit unwind label %bb.h

_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecmEINtB2_10SpecExtendmINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter6FilterINtCsgNzSnKyKfuE_6either6EitherIB1d_INtNtNtB1l_3ops5range5RangemENCNvMNtNtCs607s0NAIaWN_7segment10id_tracker14point_mappingsNtB3e_13PointMappings13iter_internal0EIB27_IB1d_B2G_NCNvMNtNtB3g_10compressed25compressed_point_mappingsNtB51_23CompressedPointMappings13iter_internal0EIB1d_B2G_NCNvMs0_NtNtB3g_15disk_id_tracker8mappingsINtB6P_15DiskMappingsRefNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileE13iter_internal0EEENCNvMs0_NtNtB3g_15id_tracker_base18point_mappings_refINtB96_20PointMappingsRefEnumB7L_E23iter_internal_excluding0EE11spec_extendCsPYQCUnoTxQ_10collection.exit: ; preds = %.noexc9, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  br label %bb.g

bb.h:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECsPYQCUnoTxQ_10collection.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp12
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecmEINtB2_18SpecFromIterNestedmINtNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtB2v_3set7HashSetmEEINtNtB1z_6copied6CopiedINtB41_4ItermEENCNvMs0_NtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mappingNtB56_15ShardKeyMapping14iter_shard_ids0EE9from_iterB5c_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(120) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 6 uses
  %.sroa.5.i.i = alloca i64, align 8              ; 4 uses
  %.sroa.7.i.i = alloca i64, align 8              ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [40 x i8], align 8                ; 6 uses
  %i.h = alloca [120 x i8], align 8               ; 9 uses
  %.sroa.5 = alloca i64, align 8                  ; 4 uses
  %.sroa.7 = alloca i64, align 8                  ; 3 uses
  %i.i = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14252)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14253)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !14254, !noundef !32
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEmNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsPYQCUnoTxQ_10collection.exit.thread9.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = tail call { i32, i32 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEENtNtNtB8_6traits8iterator8Iterator4nextCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.j) ; 3 uses
  %i.m = extractvalue { i32, i32 } %i.l, 0        ; 2 uses
  %.not4.i.i.i = icmp eq i32 %i.m, 1
  br i1 %.not4.i.i.i, label %_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEmNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsPYQCUnoTxQ_10collection.exit.thread.i.i, label %_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEmNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsPYQCUnoTxQ_10collection.exit.i.i

_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEmNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsPYQCUnoTxQ_10collection.exit.thread.i.i: ; preds = %bb.c
  %i.n = extractvalue { i32, i32 } %i.l, 1
  %i.o = insertvalue { i32, i32 } { i32 1, i32 poison }, i32 %i.n, 1
  br label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtB19_3set7HashSetmEEINtNtB7_6copied6CopiedINtB2F_4ItermEENCNvMs0_NtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mappingNtB3J_15ShardKeyMapping14iter_shard_ids0ENtNtNtB9_6traits8iterator8Iterator4nextB3P_.exit

_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEmNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsPYQCUnoTxQ_10collection.exit.i.i: ; preds = %bb.c
  store ptr null, ptr %i.j, align 8, !alias.scope !14254
  %i.p = trunc i32 %i.m to i1
  br i1 %i.p, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtB19_3set7HashSetmEEINtNtB7_6copied6CopiedINtB2F_4ItermEENCNvMs0_NtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mappingNtB3J_15ShardKeyMapping14iter_shard_ids0ENtNtNtB9_6traits8iterator8Iterator4nextB3P_.exit, label %_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEmNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsPYQCUnoTxQ_10collection.exit.thread9.i.i

_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEmNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsPYQCUnoTxQ_10collection.exit.thread9.i.i: ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEmNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsPYQCUnoTxQ_10collection.exit.i.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !14255
  %i.q = load ptr, ptr %1, align 8, !alias.scope !14256, !noundef !32
  %.not.i1.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i1.i.i, label %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtB1j_3set7HashSetmEENCNvMs0_NtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mappingNtB3i_15ShardKeyMapping14iter_shard_ids0EEINtB5_8FuseImplBY_E4nextB3o_.exit.thread.i.i, label %bb.d

bb.d:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEmNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsPYQCUnoTxQ_10collection.exit.thread9.i.i
  %i.r = tail call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetmEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %1), !noalias !14257 ; 2 uses
  %i.s = extractvalue { ptr, ptr } %i.r, 0
  %.not.i.i.i.i.i = icmp eq ptr %i.s, null
  %i.t = extractvalue { ptr, ptr } %i.r, 1        ; 2 uses
  %.not2.i.i.i.i = icmp eq ptr %i.t, null
  %.not.i.i.i.i = select i1 %.not.i.i.i.i.i, i1 true, i1 %.not2.i.i.i.i
  br i1 %.not.i.i.i.i, label %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtB1j_3set7HashSetmEENCNvMs0_NtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mappingNtB3i_15ShardKeyMapping14iter_shard_ids0EEINtB5_8FuseImplBY_E4nextB3o_.exit.thread.i.i, label %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtB1j_3set7HashSetmEENCNvMs0_NtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mappingNtB3i_15ShardKeyMapping14iter_shard_ids0EEINtB5_8FuseImplBY_E4nextB3o_.exit.i.i

_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtB1j_3set7HashSetmEENCNvMs0_NtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mappingNtB3i_15ShardKeyMapping14iter_shard_ids0EEINtB5_8FuseImplBY_E4nextB3o_.exit.i.i: ; preds = %bb.d
  call void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapmuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE4iterCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.t)
  %.pr.i.i = load ptr, ptr %i.g, align 8, !noalias !14255
  %.not.i.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i.i, label %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtB1j_3set7HashSetmEENCNvMs0_NtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mappingNtB3i_15ShardKeyMapping14iter_shard_ids0EEINtB5_8FuseImplBY_E4nextB3o_.exit.thread.i.i, label %bb.e

bb.e:                                             ; preds = %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtB1j_3set7HashSetmEENCNvMs0_NtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mappingNtB3i_15ShardKeyMapping14iter_shard_ids0EEINtB5_8FuseImplBY_E4nextB3o_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !14255
  br label %bb.b

_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtB1j_3set7HashSetmEENCNvMs0_NtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mappingNtB3i_15ShardKeyMapping14iter_shard_ids0EEINtB5_8FuseImplBY_E4nextB3o_.exit.thread.i.i: ; preds = %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtB1j_3set7HashSetmEENCNvMs0_NtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mappingNtB3i_15ShardKeyMapping14iter_shard_ids0EEINtB5_8FuseImplBY_E4nextB3o_.exit.i.i, %bb.d, %_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEmNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsPYQCUnoTxQ_10collection.exit.thread9.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !14258, !noundef !32
  %.not.i2.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i2.i.i, label %_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEmNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsPYQCUnoTxQ_10collection.exit6.i.i, label %bb.f

bb.f:                                             ; preds = %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtB1j_3set7HashSetmEENCNvMs0_NtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mappingNtB3i_15ShardKeyMapping14iter_shard_ids0EEINtB5_8FuseImplBY_E4nextB3o_.exit.thread.i.i
  %i.w = tail call { i32, i32 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEENtNtNtB8_6traits8iterator8Iterator4nextCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.u) ; 2 uses
  %i.x = extractvalue { i32, i32 } %i.w, 0        ; 2 uses
  %i.y = extractvalue { i32, i32 } %i.w, 1        ; 2 uses
  %.not4.i3.i.i = icmp eq i32 %i.x, 1
  br i1 %.not4.i3.i.i, label %_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEmNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsPYQCUnoTxQ_10collection.exit6.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr %i.u, align 8, !alias.scope !14258
  br label %_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEmNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsPYQCUnoTxQ_10collection.exit6.i.i

_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEmNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsPYQCUnoTxQ_10collection.exit6.i.i: ; preds = %bb.g, %bb.f, %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtB1j_3set7HashSetmEENCNvMs0_NtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mappingNtB3i_15ShardKeyMapping14iter_shard_ids0EEINtB5_8FuseImplBY_E4nextB3o_.exit.thread.i.i
  %.sroa.3.0.i4.i.i = phi i32 [ undef, %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtB1j_3set7HashSetmEENCNvMs0_NtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mappingNtB3i_15ShardKeyMapping14iter_shard_ids0EEINtB5_8FuseImplBY_E4nextB3o_.exit.thread.i.i ], [ %i.y, %bb.g ], [ %i.y, %bb.f ]
  %.sroa.0.0.i5.i.i = phi i32 [ 0, %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtB1j_3set7HashSetmEENCNvMs0_NtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mappingNtB3i_15ShardKeyMapping14iter_shard_ids0EEINtB5_8FuseImplBY_E4nextB3o_.exit.thread.i.i ], [ %i.x, %bb.g ], [ 1, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !14255
  %i.z = insertvalue { i32, i32 } poison, i32 %.sroa.0.0.i5.i.i, 0
  %i.aa = insertvalue { i32, i32 } %i.z, i32 %.sroa.3.0.i4.i.i, 1
  br label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtB19_3set7HashSetmEEINtNtB7_6copied6CopiedINtB2F_4ItermEENCNvMs0_NtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mappingNtB3J_15ShardKeyMapping14iter_shard_ids0ENtNtNtB9_6traits8iterator8Iterator4nextB3P_.exit

_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtB19_3set7HashSetmEEINtNtB7_6copied6CopiedINtB2F_4ItermEENCNvMs0_NtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mappingNtB3J_15ShardKeyMapping14iter_shard_ids0ENtNtNtB9_6traits8iterator8Iterator4nextB3P_.exit: ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEmNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsPYQCUnoTxQ_10collection.exit.i.i, %_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEmNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsPYQCUnoTxQ_10collection.exit.thread.i.i, %_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEmNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsPYQCUnoTxQ_10collection.exit6.i.i
  %.merged.i.i = phi { i32, i32 } [ %i.aa, %_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEmNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsPYQCUnoTxQ_10collection.exit6.i.i ], [ %i.o, %_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEmNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsPYQCUnoTxQ_10collection.exit.thread.i.i ], [ %i.l, %_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEmNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsPYQCUnoTxQ_10collection.exit.i.i ] ; 2 uses
  %i.ab = extractvalue { i32, i32 } %.merged.i.i, 0
  %i.ac = trunc i32 %i.ab to i1
  br i1 %i.ac, label %bb.h, label %bb.ad

bb.h:                                             ; preds = %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtB19_3set7HashSetmEEINtNtB7_6copied6CopiedINtB2F_4ItermEENCNvMs0_NtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mappingNtB3J_15ShardKeyMapping14iter_shard_ids0ENtNtNtB9_6traits8iterator8Iterator4nextB3P_.exit
  %i.ad = extractvalue { i32, i32 } %.merged.i.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14259)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14260)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14261)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14262)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !14263
  %i.ae = load ptr, ptr %i.j, align 8, !alias.scope !14264, !noundef !32
  %.not.i.i7 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i7, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsPYQCUnoTxQ_10collection.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEENtNtNtB8_6traits8iterator8Iterator9size_hintCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) dereferenceable_or_null(40) %i.j), !noalias !14265
  %.pre.i.i = load i64, ptr %i.f, align 8, !noalias !14263
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.pre71.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !range !41, !noalias !14263
  %.phi.trans.insert72.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.pre73.i.i = load i64, ptr %.phi.trans.insert72.i.i, align 8, !noalias !14263
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsPYQCUnoTxQ_10collection.exit.i.i

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsPYQCUnoTxQ_10collection.exit.i.i: ; preds = %bb.i, %bb.h
  %i.af = phi i64 [ %.pre73.i.i, %bb.i ], [ 0, %bb.h ]
  %i.ag = phi i64 [ %.pre71.i.i, %bb.i ], [ 1, %bb.h ] ; 2 uses
  %i.ah = phi i64 [ %.pre.i.i, %bb.i ], [ 0, %bb.h ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !14263
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !14263
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !14264, !noundef !32
  %.not53.i.i = icmp eq ptr %i.aj, null
  br i1 %.not53.i.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsPYQCUnoTxQ_10collection.exit61.i.i, label %bb.j

bb.j:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsPYQCUnoTxQ_10collection.exit.i.i
  call void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEENtNtNtB8_6traits8iterator8Iterator9size_hintCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) dereferenceable_or_null(40) %i.ai), !noalias !14266
  %.pre74.i.i = load i64, ptr %i.e, align 8, !noalias !14263
  %.phi.trans.insert75.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.pre76.i.i = load i64, ptr %.phi.trans.insert75.i.i, align 8, !range !41, !noalias !14263
  %.phi.trans.insert77.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.pre78.i.i = load i64, ptr %.phi.trans.insert77.i.i, align 8, !noalias !14263
  %i.ak = call i64 @llvm.uadd.sat.i64(i64 %i.ah, i64 %.pre74.i.i)
  %2 = freeze i64 %.pre76.i.i
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsPYQCUnoTxQ_10collection.exit61.i.i

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsPYQCUnoTxQ_10collection.exit61.i.i: ; preds = %bb.j, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsPYQCUnoTxQ_10collection.exit.i.i
  %i.al = phi i64 [ %.pre78.i.i, %bb.j ], [ 0, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsPYQCUnoTxQ_10collection.exit.i.i ]
  %.fr40 = phi i64 [ %2, %bb.j ], [ 1, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsPYQCUnoTxQ_10collection.exit.i.i ] ; 2 uses
  %i.am = phi i64 [ %i.ak, %bb.j ], [ %i.ah, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsPYQCUnoTxQ_10collection.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !14263
  %i.an = load ptr, ptr %1, align 8, !alias.scope !14264, !noundef !32
  %.not54.i.i = icmp eq ptr %i.an, null
  br i1 %.not54.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsPYQCUnoTxQ_10collection.exit61.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i.i = load i64, ptr %i.ao, align 8, !alias.scope !14264, !noundef !32
  %i.ap = icmp eq i64 %.val.i.i, 0
  %i.aq = trunc nuw i64 %i.ag to i1
  %i.ar = trunc i64 %.fr40 to i1
  %op.rdx38 = and i1 %i.ap, %i.ar
  %op.rdx39 = select i1 %op.rdx38, i1 %i.aq, i1 false
  br i1 %op.rdx39, label %bb.m, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtB19_3set7HashSetmEEINtNtB7_6copied6CopiedINtB2F_4ItermEENCNvMs0_NtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mappingNtB3J_15ShardKeyMapping14iter_shard_ids0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3P_.exit

bb.l:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsPYQCUnoTxQ_10collection.exit61.i.i
  %i.as = and i64 %.fr40, %i.ag
  %or.cond55.not.i.i = icmp eq i64 %i.as, 0
  br i1 %or.cond55.not.i.i, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtB19_3set7HashSetmEEINtNtB7_6copied6CopiedINtB2F_4ItermEENCNvMs0_NtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mappingNtB3J_15ShardKeyMapping14iter_shard_ids0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3P_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.at = add i64 %i.al, %i.af
  br label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtB19_3set7HashSetmEEINtNtB7_6copied6CopiedINtB2F_4ItermEENCNvMs0_NtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mappingNtB3J_15ShardKeyMapping14iter_shard_ids0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3P_.exit

_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtB19_3set7HashSetmEEINtNtB7_6copied6CopiedINtB2F_4ItermEENCNvMs0_NtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mappingNtB3J_15ShardKeyMapping14iter_shard_ids0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3P_.exit: ; preds = %bb.k, %bb.l, %bb.m
  %.sink80.i.i.sroa.phi = phi ptr [ %.sroa.7, %bb.m ], [ %.sroa.5, %bb.l ], [ %.sroa.5, %bb.k ]
  %.sink.i.i = phi i64 [ %i.at, %bb.m ], [ 0, %bb.l ], [ 0, %bb.k ]
  store i64 %.sink.i.i, ptr %.sink80.i.i.sroa.phi, align 8, !alias.scope !14267
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  %i.au = call i64 @llvm.uadd.sat.i64(i64 %i.am, i64 1)
  %..i = call noundef range(i64 4, 0) i64 @llvm.umax.i64(i64 range(i64 1, 0) %i.au, i64 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %..i, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
  %i.av = load i64, ptr %i.d, align 8, !range !41, !noundef !32
  %i.aw = trunc nuw i64 %i.av to i1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !range !42, !noundef !32 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.aw, label %bb.n, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit, !prof !36

bb.n:                                             ; preds = %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtB19_3set7HashSetmEEINtNtB7_6copied6CopiedINtB2F_4ItermEENCNvMs0_NtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mappingNtB3J_15ShardKeyMapping14iter_shard_ids0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3P_.exit
  %i.ba = load i64, ptr %i.az, align 8
  call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ay, i64 %i.ba) #30
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit: ; preds = %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtB19_3set7HashSetmEEINtNtB7_6copied6CopiedINtB2F_4ItermEENCNvMs0_NtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mappingNtB3J_15ShardKeyMapping14iter_shard_ids0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3P_.exit
  %i.bb = load ptr, ptr %i.az, align 8, !nonnull !32, !noundef !32 ; 2 uses
  %i.bc = icmp ule i64 %..i, %i.ay
  call void @llvm.assume(i1 %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i32 %i.ad, ptr %i.bb, align 4
  store i64 %i.ay, ptr %i.i, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %i.bb, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 4 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.h, ptr noundef nonnull align 8 dereferenceable(120) %1, i64 120, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !14268)
  call void @llvm.experimental.noalias.scope.decl(metadata !14269)
  call void @llvm.experimental.noalias.scope.decl(metadata !14270)
  call void @llvm.experimental.noalias.scope.decl(metadata !14271)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.h, i64 80 ; 5 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.phi.trans.insert72.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.phi.trans.insert75.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.phi.trans.insert77.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  br label %bb.o

bb.o:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecmE7reserveCsPYQCUnoTxQ_10collection.exit.i.i, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !14272)
  call void @llvm.experimental.noalias.scope.decl(metadata !14273)
  br label %bb.p

bb.p:                                             ; preds = %bb.s, %bb.o
  %i.bg = load ptr, ptr %i.bd, align 8, !alias.scope !14274, !noundef !32
  %.not.i.i.i.i.i8 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i8, label %_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEmNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsPYQCUnoTxQ_10collection.exit.thread9.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bh = invoke { i32, i32 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEENtNtNtB8_6traits8iterator8Iterator4nextCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.bd)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc:                                           ; preds = %bb.q
  %i.bi = extractvalue { i32, i32 } %i.bh, 0      ; 2 uses
  %.not4.i.i.i.i.i = icmp eq i32 %i.bi, 1
  br i1 %.not4.i.i.i.i.i, label %_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEmNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsPYQCUnoTxQ_10collection.exit.thread.i.i.i.i, label %_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEmNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsPYQCUnoTxQ_10collection.exit.i.i.i.i

_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEmNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsPYQCUnoTxQ_10collection.exit.thread.i.i.i.i: ; preds = %.noexc
  %i.bj = extractvalue { i32, i32 } %i.bh, 1
  %i.bk = insertvalue { i32, i32 } { i32 1, i32 poison }, i32 %i.bj, 1
  br label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtB19_3set7HashSetmEEINtNtB7_6copied6CopiedINtB2F_4ItermEENCNvMs0_NtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mappingNtB3J_15ShardKeyMapping14iter_shard_ids0ENtNtNtB9_6traits8iterator8Iterator4nextB3P_.exit.i.i

_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEmNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsPYQCUnoTxQ_10collection.exit.i.i.i.i: ; preds = %.noexc
  store ptr null, ptr %i.bd, align 8, !alias.scope !14274
  %i.bl = trunc i32 %i.bi to i1
  br i1 %i.bl, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtB19_3set7HashSetmEEINtNtB7_6copied6CopiedINtB2F_4ItermEENCNvMs0_NtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mappingNtB3J_15ShardKeyMapping14iter_shard_ids0ENtNtNtB9_6traits8iterator8Iterator4nextB3P_.exit.i.i, label %_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEmNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsPYQCUnoTxQ_10collection.exit.thread9.i.i.i.i

_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEmNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsPYQCUnoTxQ_10collection.exit.thread9.i.i.i.i: ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEmNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsPYQCUnoTxQ_10collection.exit.i.i.i.i, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !14275
  %i.bm = load ptr, ptr %i.h, align 8, !alias.scope !14276, !noundef !32
  %.not.i1.i.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i1.i.i.i.i, label %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtB1j_3set7HashSetmEENCNvMs0_NtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mappingNtB3i_15ShardKeyMapping14iter_shard_ids0EEINtB5_8FuseImplBY_E4nextB3o_.exit.thread.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEmNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsPYQCUnoTxQ_10collection.exit.thread9.i.i.i.i
  %i.bn = invoke { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetmEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.h)
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc10:                                         ; preds = %bb.r
  %i.bo = extractvalue { ptr, ptr } %i.bn, 0
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bo, null
  %i.bp = extractvalue { ptr, ptr } %i.bn, 1      ; 2 uses
  %.not2.i.i.i.i.i.i = icmp eq ptr %i.bp, null
  %.not.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i1 true, i1 %.not2.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtB1j_3set7HashSetmEENCNvMs0_NtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mappingNtB3i_15ShardKeyMapping14iter_shard_ids0EEINtB5_8FuseImplBY_E4nextB3o_.exit.thread.i.i.i.i, label %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtB1j_3set7HashSetmEENCNvMs0_NtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mappingNtB3i_15ShardKeyMapping14iter_shard_ids0EEINtB5_8FuseImplBY_E4nextB3o_.exit.i.i.i.i

_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtB1j_3set7HashSetmEENCNvMs0_NtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mappingNtB3i_15ShardKeyMapping14iter_shard_ids0EEINtB5_8FuseImplBY_E4nextB3o_.exit.i.i.i.i: ; preds = %.noexc10
  invoke void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapmuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE4iterCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bp)
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc11:                                         ; preds = %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtB1j_3set7HashSetmEENCNvMs0_NtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mappingNtB3i_15ShardKeyMapping14iter_shard_ids0EEINtB5_8FuseImplBY_E4nextB3o_.exit.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %i.c, align 8, !noalias !14275
  %.not.i.i.i.i9 = icmp eq ptr %.pr.i.i.i.i, null
  br i1 %.not.i.i.i.i9, label %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtB1j_3set7HashSetmEENCNvMs0_NtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mappingNtB3i_15ShardKeyMapping14iter_shard_ids0EEINtB5_8FuseImplBY_E4nextB3o_.exit.thread.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %.noexc11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bd, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false), !noalias !14277
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14275
  br label %bb.p

_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtB1j_3set7HashSetmEENCNvMs0_NtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mappingNtB3i_15ShardKeyMapping14iter_shard_ids0EEINtB5_8FuseImplBY_E4nextB3o_.exit.thread.i.i.i.i: ; preds = %.noexc11, %.noexc10, %_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEmNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsPYQCUnoTxQ_10collection.exit.thread9.i.i.i.i
  %i.bq = load ptr, ptr %i.be, align 8, !alias.scope !14278, !noundef !32
  %.not.i2.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i2.i.i.i.i, label %_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEmNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsPYQCUnoTxQ_10collection.exit6.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtB1j_3set7HashSetmEENCNvMs0_NtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mappingNtB3i_15ShardKeyMapping14iter_shard_ids0EEINtB5_8FuseImplBY_E4nextB3o_.exit.thread.i.i.i.i
  %i.br = invoke { i32, i32 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEENtNtNtB8_6traits8iterator8Iterator4nextCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.be)
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc12:                                         ; preds = %bb.t
  %i.bs = extractvalue { i32, i32 } %i.br, 0      ; 2 uses
  %i.bt = extractvalue { i32, i32 } %i.br, 1      ; 2 uses
  %.not4.i3.i.i.i.i = icmp eq i32 %i.bs, 1
  br i1 %.not4.i3.i.i.i.i, label %_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEmNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsPYQCUnoTxQ_10collection.exit6.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %.noexc12
  store ptr null, ptr %i.be, align 8, !alias.scope !14278
  br label %_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEmNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsPYQCUnoTxQ_10collection.exit6.i.i.i.i

_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEmNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsPYQCUnoTxQ_10collection.exit6.i.i.i.i: ; preds = %bb.u, %.noexc12, %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtB1j_3set7HashSetmEENCNvMs0_NtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mappingNtB3i_15ShardKeyMapping14iter_shard_ids0EEINtB5_8FuseImplBY_E4nextB3o_.exit.thread.i.i.i.i
  %.sroa.3.0.i4.i.i.i.i = phi i32 [ undef, %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtB1j_3set7HashSetmEENCNvMs0_NtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mappingNtB3i_15ShardKeyMapping14iter_shard_ids0EEINtB5_8FuseImplBY_E4nextB3o_.exit.thread.i.i.i.i ], [ %i.bt, %bb.u ], [ %i.bt, %.noexc12 ]
  %.sroa.0.0.i5.i.i.i.i = phi i32 [ 0, %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtB1j_3set7HashSetmEENCNvMs0_NtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mappingNtB3i_15ShardKeyMapping14iter_shard_ids0EEINtB5_8FuseImplBY_E4nextB3o_.exit.thread.i.i.i.i ], [ %i.bs, %bb.u ], [ 1, %.noexc12 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14275
  %i.bu = insertvalue { i32, i32 } poison, i32 %.sroa.0.0.i5.i.i.i.i, 0
  %i.bv = insertvalue { i32, i32 } %i.bu, i32 %.sroa.3.0.i4.i.i.i.i, 1
  br label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtB19_3set7HashSetmEEINtNtB7_6copied6CopiedINtB2F_4ItermEENCNvMs0_NtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mappingNtB3J_15ShardKeyMapping14iter_shard_ids0ENtNtNtB9_6traits8iterator8Iterator4nextB3P_.exit.i.i

_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtB19_3set7HashSetmEEINtNtB7_6copied6CopiedINtB2F_4ItermEENCNvMs0_NtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mappingNtB3J_15ShardKeyMapping14iter_shard_ids0ENtNtNtB9_6traits8iterator8Iterator4nextB3P_.exit.i.i: ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEmNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsPYQCUnoTxQ_10collection.exit.i.i.i.i, %_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEmNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsPYQCUnoTxQ_10collection.exit6.i.i.i.i, %_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEmNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsPYQCUnoTxQ_10collection.exit.thread.i.i.i.i
  %.merged.i.i.i.i = phi { i32, i32 } [ %i.bv, %_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEmNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsPYQCUnoTxQ_10collection.exit6.i.i.i.i ], [ %i.bk, %_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEmNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsPYQCUnoTxQ_10collection.exit.thread.i.i.i.i ], [ %i.bh, %_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEmNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsPYQCUnoTxQ_10collection.exit.i.i.i.i ] ; 2 uses
  %i.bw = extractvalue { i32, i32 } %.merged.i.i.i.i, 0
  %i.bx = extractvalue { i32, i32 } %.merged.i.i.i.i, 1
  %i.by = trunc i32 %i.bw to i1
  br i1 %i.by, label %bb.v, label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecmEINtB2_10SpecExtendmINtNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtB2d_3set7HashSetmEEINtNtB1h_6copied6CopiedINtB3J_4ItermEENCNvMs0_NtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mappingNtB4O_15ShardKeyMapping14iter_shard_ids0EE11spec_extendB4U_.exit

bb.v:                                             ; preds = %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtB19_3set7HashSetmEEINtNtB7_6copied6CopiedINtB2F_4ItermEENCNvMs0_NtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mappingNtB3J_15ShardKeyMapping14iter_shard_ids0ENtNtNtB9_6traits8iterator8Iterator4nextB3P_.exit.i.i
  %i.bz = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !14277, !noundef !32 ; 4 uses
  %i.ca = icmp ult i64 %i.bz, 2305843009213693952
  call void @llvm.assume(i1 %i.ca)
  %i.cb = load i64, ptr %i.i, align 8, !range !38, !alias.scope !14277, !noundef !32
  %i.cc = icmp eq i64 %i.bz, %i.cb
  br i1 %i.cc, label %bb.w, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecmE7reserveCsPYQCUnoTxQ_10collection.exit.i.i

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !14279)
  call void @llvm.experimental.noalias.scope.decl(metadata !14280)
  call void @llvm.experimental.noalias.scope.decl(metadata !14281)
  call void @llvm.experimental.noalias.scope.decl(metadata !14282)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14283
  %i.cd = load ptr, ptr %i.bd, align 8, !alias.scope !14284, !noundef !32
  %.not.i.i3.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i3.i.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsPYQCUnoTxQ_10collection.exit.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEENtNtNtB8_6traits8iterator8Iterator9size_hintCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) dereferenceable_or_null(40) %i.bd)
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc13:                                         ; preds = %bb.x
  %.pre.i.i.i.i = load i64, ptr %i.b, align 8, !noalias !14283
  %.pre71.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !range !41, !noalias !14283
  %.pre73.i.i.i.i = load i64, ptr %.phi.trans.insert72.i.i.i.i, align 8, !noalias !14283
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsPYQCUnoTxQ_10collection.exit.i.i.i.i

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsPYQCUnoTxQ_10collection.exit.i.i.i.i: ; preds = %.noexc13, %bb.w
  %i.ce = phi i64 [ %.pre73.i.i.i.i, %.noexc13 ], [ 0, %bb.w ]
  %i.cf = phi i64 [ %.pre71.i.i.i.i, %.noexc13 ], [ 1, %bb.w ] ; 2 uses
  %i.cg = phi i64 [ %.pre.i.i.i.i, %.noexc13 ], [ 0, %bb.w ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14283
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14283
  %i.ch = load ptr, ptr %i.be, align 8, !alias.scope !14284, !noundef !32
  %.not53.i.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not53.i.i.i.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsPYQCUnoTxQ_10collection.exit61.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsPYQCUnoTxQ_10collection.exit.i.i.i.i
  invoke void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEENtNtNtB8_6traits8iterator8Iterator9size_hintCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) dereferenceable_or_null(40) %i.be)
          to label %.noexc14 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc14:                                         ; preds = %bb.y
  %.pre74.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !14283
  %.pre76.i.i.i.i = load i64, ptr %.phi.trans.insert75.i.i.i.i, align 8, !range !41, !noalias !14283
  %.pre78.i.i.i.i = load i64, ptr %.phi.trans.insert77.i.i.i.i, align 8, !noalias !14283
  %i.ci = call i64 @llvm.uadd.sat.i64(i64 %i.cg, i64 %.pre74.i.i.i.i)
  %3 = freeze i64 %.pre76.i.i.i.i
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsPYQCUnoTxQ_10collection.exit61.i.i.i.i

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsPYQCUnoTxQ_10collection.exit61.i.i.i.i: ; preds = %.noexc14, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsPYQCUnoTxQ_10collection.exit.i.i.i.i
  %i.cj = phi i64 [ %.pre78.i.i.i.i, %.noexc14 ], [ 0, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsPYQCUnoTxQ_10collection.exit.i.i.i.i ]
  %.fr41 = phi i64 [ %3, %.noexc14 ], [ 1, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsPYQCUnoTxQ_10collection.exit.i.i.i.i ] ; 2 uses
  %i.ck = phi i64 [ %i.ci, %.noexc14 ], [ %i.cg, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsPYQCUnoTxQ_10collection.exit.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14283
  %i.cl = load ptr, ptr %i.h, align 8, !alias.scope !14284, !noundef !32
  %.not54.i.i.i.i = icmp eq ptr %i.cl, null
  br i1 %.not54.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsPYQCUnoTxQ_10collection.exit61.i.i.i.i
  %.val.i.i.i.i = load i64, ptr %i.bf, align 8, !alias.scope !14284, !noundef !32
  %i.cm = icmp eq i64 %.val.i.i.i.i, 0
  %i.cn = trunc nuw i64 %i.cf to i1
  %i.co = trunc i64 %.fr41 to i1
  %op.rdx = and i1 %i.cm, %i.co
  %op.rdx37 = select i1 %op.rdx, i1 %i.cn, i1 false
  br i1 %op.rdx37, label %bb.ab, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtB19_3set7HashSetmEEINtNtB7_6copied6CopiedINtB2F_4ItermEENCNvMs0_NtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mappingNtB3J_15ShardKeyMapping14iter_shard_ids0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3P_.exit.i.i

bb.aa:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4ItermEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsPYQCUnoTxQ_10collection.exit61.i.i.i.i
  %i.cp = and i64 %.fr41, %i.cf
  %or.cond55.not.i.i.i.i = icmp eq i64 %i.cp, 0
  br i1 %or.cond55.not.i.i.i.i, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtB19_3set7HashSetmEEINtNtB7_6copied6CopiedINtB2F_4ItermEENCNvMs0_NtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mappingNtB3J_15ShardKeyMapping14iter_shard_ids0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3P_.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.cq = add i64 %i.cj, %i.ce
  br label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtB19_3set7HashSetmEEINtNtB7_6copied6CopiedINtB2F_4ItermEENCNvMs0_NtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mappingNtB3J_15ShardKeyMapping14iter_shard_ids0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3P_.exit.i.i

_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtB19_3set7HashSetmEEINtNtB7_6copied6CopiedINtB2F_4ItermEENCNvMs0_NtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mappingNtB3J_15ShardKeyMapping14iter_shard_ids0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3P_.exit.i.i: ; preds = %bb.ab, %bb.aa, %bb.z
  %.sink80.i.i.sroa.phi.i.i = phi ptr [ %.sroa.7.i.i, %bb.ab ], [ %.sroa.5.i.i, %bb.aa ], [ %.sroa.5.i.i, %bb.z ]
  %.sink.i.i.i.i = phi i64 [ %i.cq, %bb.ab ], [ 0, %bb.aa ], [ 0, %bb.z ]
  store i64 %.sink.i.i.i.i, ptr %.sink80.i.i.sroa.phi.i.i, align 8, !alias.scope !14285, !noalias !14286
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  %i.cr = call i64 @llvm.uadd.sat.i64(i64 %i.ck, i64 1) ; 2 uses
  %i.cs = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !14287, !noundef !32 ; 2 uses
  %i.ct = load i64, ptr %i.i, align 8, !range !38, !alias.scope !14287, !noundef !32
  %i.cu = sub i64 %i.ct, %i.cs
  %i.cv = icmp ugt i64 %i.cr, %i.cu
  br i1 %i.cv, label %bb.ac, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecmE7reserveCsPYQCUnoTxQ_10collection.exit.i.i, !prof !36

bb.ac:                                            ; preds = %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtB19_3set7HashSetmEEINtNtB7_6copied6CopiedINtB2F_4ItermEENCNvMs0_NtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mappingNtB3J_15ShardKeyMapping14iter_shard_ids0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3P_.exit.i.i
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.cs, i64 noundef %i.cr, i64 noundef 4, i64 noundef 4)
          to label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecmE7reserveCsPYQCUnoTxQ_10collection.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecmE7reserveCsPYQCUnoTxQ_10collection.exit.i.i: ; preds = %bb.ac, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtB19_3set7HashSetmEEINtNtB7_6copied6CopiedINtB2F_4ItermEENCNvMs0_NtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mappingNtB3J_15ShardKeyMapping14iter_shard_ids0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3P_.exit.i.i, %bb.v
  %i.cw = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !14277, !nonnull !32, !noundef !32
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.bz
  store i32 %i.bx, ptr %i.cx, align 4
  %i.cy = add nuw nsw i64 %i.bz, 1
  store i64 %i.cy, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !14277
  br label %bb.o

bb.ad:                                            ; preds = %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtB19_3set7HashSetmEEINtNtB7_6copied6CopiedINtB2F_4ItermEENCNvMs0_NtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mappingNtB3J_15ShardKeyMapping14iter_shard_ids0ENtNtNtB9_6traits8iterator8Iterator4nextB3P_.exit
  store i64 0, ptr %0, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.cz, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.da, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecmEINtB2_10SpecExtendmINtNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtB2d_3set7HashSetmEEINtNtB1h_6copied6CopiedINtB3J_4ItermEENCNvMs0_NtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mappingNtB4O_15ShardKeyMapping14iter_shard_ids0EE11spec_extendB4U_.exit, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtB1j_3set7HashSetmEENCNvMs0_NtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mappingNtB3i_15ShardKeyMapping14iter_shard_ids0EEINtB5_8FuseImplBY_E4nextB3o_.exit.i.i.i.i, %bb.r, %bb.q, %bb.ac, %bb.y, %bb.x, %bb.t
  %lpad.loopexit.split-lp42 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECsPYQCUnoTxQ_10collection.exit unwind label %bb.af

_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecmEINtB2_10SpecExtendmINtNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtB2d_3set7HashSetmEEINtNtB1h_6copied6CopiedINtB3J_4ItermEENCNvMs0_NtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mappingNtB4O_15ShardKeyMapping14iter_shard_ids0EE11spec_extendB4U_.exit: ; preds = %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtB19_3set7HashSetmEEINtNtB7_6copied6CopiedINtB2F_4ItermEENCNvMs0_NtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mappingNtB3J_15ShardKeyMapping14iter_shard_ids0ENtNtNtB9_6traits8iterator8Iterator4nextB3P_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  br label %bb.ae

bb.af:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECsPYQCUnoTxQ_10collection.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp42
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecyEINtB2_18SpecFromIterNestedyINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IteryNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateENCNvMB3q_NtB3q_15ReplicaSetState12active_peers0EE9from_iterB3w_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [40 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !14310
  store ptr %i.f, ptr %i.c, align 8, !noalias !14311
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.g = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IteryNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1) ; 2 uses
  %i.h = extractvalue { ptr, ptr } %i.g, 0        ; 2 uses
  %.not.i.not.not.not.not.i.not.not.not.i.not = icmp eq ptr %i.h, null
  br i1 %.not.i.not.not.not.not.i.not.not.not.i.not, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = extractvalue { ptr, ptr } %i.g, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  %i.j = call { i64, i64 } @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_stateNtBT_15ReplicaSetState12active_peers0INtB7_5FnMutTTRyRNtBT_12ReplicaStateEEE8call_mutBZ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.i) ; 2 uses
  %i.k = extractvalue { i64, i64 } %i.j, 0
  %i.l = trunc nuw i64 %i.k to i1
  br i1 %i.l, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14310
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
  %i.m = load i64, ptr %i.b, align 8, !range !41, !noundef !32
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !42, !noundef !32 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.n, label %bb.e, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit, !prof !36

bb.e:                                             ; preds = %bb.d
  %i.r = load i64, ptr %i.q, align 8
  call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.p, i64 %i.r) #30
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit: ; preds = %bb.d
  %i.s = extractvalue { i64, i64 } %i.j, 1
  %i.t = load ptr, ptr %i.q, align 8, !nonnull !32, !noundef !32 ; 2 uses
  %i.u = icmp ugt i64 %i.p, 3
  call void @llvm.assume(i1 %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.s, ptr %i.t, align 8
  store i64 %i.p, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.t, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !14312)
  call void @llvm.experimental.noalias.scope.decl(metadata !14313)
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  br label %bb.f

bb.f:                                             ; preds = %.noexc8, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsPYQCUnoTxQ_10collection.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14314
  store ptr %i.v, ptr %i.a, align 8, !noalias !14315
  br label %bb.g

bb.g:                                             ; preds = %.noexc7, %bb.f
  %i.w = invoke { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IteryNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %bb.g
  %i.x = extractvalue { ptr, ptr } %i.w, 0        ; 2 uses
  %.not.i.not.not.not.not.i.not.not.not.i.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.not.not.not.not.i.not.not.not.i.not.i.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %.noexc
  %i.y = extractvalue { ptr, ptr } %i.w, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.y) ]
  %i.z = invoke { i64, i64 } @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_stateNtBT_15ReplicaSetState12active_peers0INtB7_5FnMutTTRyRNtBT_12ReplicaStateEEE8call_mutBZ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.y)
          to label %.noexc7 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc7:                                          ; preds = %bb.h
  %i.aa = extractvalue { i64, i64 } %i.z, 0
  %i.ab = trunc nuw i64 %i.aa to i1
  br i1 %i.ab, label %bb.i, label %bb.g

bb.i:                                             ; preds = %.noexc7
  %i.ac = extractvalue { i64, i64 } %i.z, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14314
  %i.ad = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !14316, !noundef !32 ; 5 uses
  %i.ae = icmp ult i64 %i.ad, 1152921504606846976
  call void @llvm.assume(i1 %i.ae)
  %i.af = load i64, ptr %i.e, align 8, !range !38, !alias.scope !14316, !noundef !32
  %i.ag = icmp eq i64 %i.ad, %i.af
  br i1 %i.ag, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecyE7reserveCsPYQCUnoTxQ_10collection.exit.i.i, label %.noexc8

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecyE7reserveCsPYQCUnoTxQ_10collection.exit.i.i: ; preds = %bb.i
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.ad, i64 noundef 1, i64 noundef 8, i64 noundef 8)
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc8:                                          ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecyE7reserveCsPYQCUnoTxQ_10collection.exit.i.i, %bb.i
  %i.ah = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !14316, !nonnull !32, !noundef !32
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ad
  store i64 %i.ac, ptr %i.ai, align 8
  %i.aj = add nuw nsw i64 %i.ad, 1
  store i64 %i.aj, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !14316
  br label %bb.f

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14310
  store i64 0, ptr %0, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.al, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.h, %bb.g, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecyE7reserveCsPYQCUnoTxQ_10collection.exit.i.i
  %lpad.loopexit.split-lp20 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECsPYQCUnoTxQ_10collection.exit unwind label %bb.m

bb.l:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14314
end_hunk_0
