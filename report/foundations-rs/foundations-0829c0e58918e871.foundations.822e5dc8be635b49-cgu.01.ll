Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/foundations-rs/original/foundations-0829c0e58918e871.foundations.822e5dc8be635b49-cgu.01?download=true
inline.NumInlined: 1494
inline.NumDeleted: 734
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecINtNtCs5lJabBKj2Vx_15crossbeam_utils12cache_padded11CachePaddedINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsdra7vpBasQ9_7dashmap4lock9RawRwLockINtNtNtCscYIHOBAkUpv_9hashbrown3raw5inner8RawTableTINtNtB6_6borrow3CoweEINtNtB2F_4util11SharedValueNtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateEEEEEEINtB2_12SpecFromIterBU_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB6r_3ops5range5RangejENCNvMs1_B2F_INtB2F_7DashMapB45_B4R_E41with_capacity_and_hasher_and_shard_amount0EE9from_iterCsbaWXNhtWAp9_11foundations:bb.a
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #22, !dbg !10415, !noalias !10400
  unreachable, !dbg !10415

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtCs5lJabBKj2Vx_15crossbeam_utils12cache_padded11CachePaddedINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsdra7vpBasQ9_7dashmap4lock9RawRwLockINtNtNtCscYIHOBAkUpv_9hashbrown3raw5inner8RawTableTINtNtB8_6borrow3CoweEINtNtB2r_4util11SharedValueNtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateEEEEEE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB66_3ops5range5RangejENCNvMs1_B2r_INtB2r_7DashMapB3R_B4D_E41with_capacity_and_hasher_and_shard_amount0EECsbaWXNhtWAp9_11foundations.exit.i.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !dbg !10416, !noalias !10400, !nonnull !682, !noundef !682 ; 2 uses
  %i.m = icmp ule i64 %spec.select.i.i.i, %i.i, !dbg !10417
  tail call void @llvm.assume(i1 %i.m), !dbg !10418
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10419, !noalias !10400
  store i64 %i.i, ptr %i.c, align 8, !dbg !10420, !noalias !10400
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !10420
  store ptr %i.l, ptr %i.n, align 8, !dbg !10420, !noalias !10400
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !10420 ; 2 uses
  store i64 0, ptr %i.o, align 8, !dbg !10420, !noalias !10400
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10421, !noalias !10405
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !10421
  store ptr %i.l, ptr %i.p, align 8, !dbg !10421, !noalias !10405
  store ptr %i.o, ptr %i.a, align 8, !dbg !10421, !noalias !10405
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !10421
  store i64 0, ptr %i.q, align 8, !dbg !10421, !noalias !10405
  invoke void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMs1_Csdra7vpBasQ9_7dashmapINtB1x_7DashMapINtNtCs1xwejQucwHj_5alloc6borrow3CoweENtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateE41with_capacity_and_hasher_and_shard_amount0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4s_8for_each4callINtNtCs5lJabBKj2Vx_15crossbeam_utils12cache_padded11CachePaddedINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtB1x_4lock9RawRwLockINtNtNtCscYIHOBAkUpv_9hashbrown3raw5inner8RawTableTB28_INtNtB1x_4util11SharedValueB2K_EEEEENCINvMsk_NtB2d_3vecINtB9b_3VecB5v_E14extend_trustedBN_E0E0ECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCs5lJabBKj2Vx_15crossbeam_utils12cache_padded11CachePaddedINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsdra7vpBasQ9_7dashmap4lock9RawRwLockINtNtNtCscYIHOBAkUpv_9hashbrown3raw5inner8RawTableTINtNtB8_6borrow3CoweEINtNtB2O_4util11SharedValueNtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateEEEEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB6H_3ops5range5RangejENCNvMs1_B2O_INtB2O_7DashMapB4e_B50_E41with_capacity_and_hasher_and_shard_amount0EE9from_iterCsbaWXNhtWAp9_11foundations.exit unwind label %bb.c, !dbg !10422, !noalias !10406

bb.c:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtCs5lJabBKj2Vx_15crossbeam_utils12cache_padded11CachePaddedINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsdra7vpBasQ9_7dashmap4lock9RawRwLockINtNtNtCscYIHOBAkUpv_9hashbrown3raw5inner8RawTableTINtNtB8_6borrow3CoweEINtNtB2r_4util11SharedValueNtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateEEEEEE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB66_3ops5range5RangejENCNvMs1_B2r_INtB2r_7DashMapB3R_B4D_E41with_capacity_and_hasher_and_shard_amount0EECsbaWXNhtWAp9_11foundations.exit.i.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCs5lJabBKj2Vx_15crossbeam_utils12cache_padded11CachePaddedINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsdra7vpBasQ9_7dashmap4lock9RawRwLockINtNtNtCscYIHOBAkUpv_9hashbrown3raw5inner8RawTableTINtNtBG_6borrow3CoweEINtNtB2T_4util11SharedValueNtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateEEEEEEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #23
          to label %bb.e unwind label %bb.d, !dbg !10423, !noalias !10400

bb.d:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !dbg !10424, !noalias !10400
  unreachable, !dbg !10424

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.r, !dbg !10424

_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCs5lJabBKj2Vx_15crossbeam_utils12cache_padded11CachePaddedINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsdra7vpBasQ9_7dashmap4lock9RawRwLockINtNtNtCscYIHOBAkUpv_9hashbrown3raw5inner8RawTableTINtNtB8_6borrow3CoweEINtNtB2O_4util11SharedValueNtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateEEEEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB6H_3ops5range5RangejENCNvMs1_B2O_INtB2O_7DashMapB4e_B50_E41with_capacity_and_hasher_and_shard_amount0EE9from_iterCsbaWXNhtWAp9_11foundations.exit: ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtCs5lJabBKj2Vx_15crossbeam_utils12cache_padded11CachePaddedINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsdra7vpBasQ9_7dashmap4lock9RawRwLockINtNtNtCscYIHOBAkUpv_9hashbrown3raw5inner8RawTableTINtNtB8_6borrow3CoweEINtNtB2r_4util11SharedValueNtNtNtCsgtgatFLTNh8_8governor5state9in_memory13InMemoryStateEEEEEE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB66_3ops5range5RangejENCNvMs1_B2r_INtB2r_7DashMapB3R_B4D_E41with_capacity_and_hasher_and_shard_amount0EECsbaWXNhtWAp9_11foundations.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10425, !noalias !10405
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !10426, !noalias !10399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !10423, !noalias !10400
  ret void, !dbg !10427
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCs49WdmBbiWyj_17crossbeam_channel7flavors5array4SlotNtCshBQhFkKQVuE_10slog_async8AsyncMsgEEINtB2_12SpecFromIterBU_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB30_3ops5range5RangejENCNvMs_BX_INtBX_7ChannelB1R_E13with_capacity0EE9from_iterCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10428 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !10465, !noalias !10463
  %spec.select.i.i.i = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 %1), !dbg !10466 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !10467, !noalias !10463
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %spec.select.i.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 104), !dbg !10467, !noalias !10463
  %i.d = load i64, ptr %i.b, align 8, !dbg !10467, !range !798, !noalias !10463, !noundef !682
  %i.e = trunc nuw i64 %i.d to i1, !dbg !10468
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !10469
  %i.g = load i64, ptr %i.f, align 8, !dbg !10469, !range !884, !noalias !10463, !noundef !682 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !10469 ; 2 uses
  br i1 %i.e, label %bb.b, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtNtCs49WdmBbiWyj_17crossbeam_channel7flavors5array4SlotNtCshBQhFkKQVuE_10slog_async8AsyncMsgEE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB2F_3ops5range5RangejENCNvMs_BJ_INtBJ_7ChannelB1D_E13with_capacity0EECsbaWXNhtWAp9_11foundations.exit.i.i, !dbg !10468, !prof !725

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !dbg !10470, !noalias !10463
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #22, !dbg !10471, !noalias !10463
  unreachable, !dbg !10471

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtNtCs49WdmBbiWyj_17crossbeam_channel7flavors5array4SlotNtCshBQhFkKQVuE_10slog_async8AsyncMsgEE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB2F_3ops5range5RangejENCNvMs_BJ_INtBJ_7ChannelB1D_E13with_capacity0EECsbaWXNhtWAp9_11foundations.exit.i.i: ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8, !dbg !10472, !noalias !10463, !nonnull !682, !noundef !682 ; 2 uses
  %i.k = icmp ule i64 %spec.select.i.i.i, %i.g, !dbg !10473
  tail call void @llvm.assume(i1 %i.k), !dbg !10474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10475, !noalias !10463
  store i64 %i.g, ptr %i.c, align 8, !dbg !10476, !noalias !10463
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !10476
  store ptr %i.j, ptr %i.l, align 8, !dbg !10476, !noalias !10463
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !10476 ; 2 uses
  store i64 0, ptr %i.m, align 8, !dbg !10476, !noalias !10463
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10477, !noalias !10464
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !10477
  store ptr %i.j, ptr %i.n, align 8, !dbg !10477, !noalias !10464
  store ptr %i.m, ptr %i.a, align 8, !dbg !10477, !noalias !10464
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !10477
  store i64 0, ptr %i.o, align 8, !dbg !10477, !noalias !10464
  invoke void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMs_NtNtCs49WdmBbiWyj_17crossbeam_channel7flavors5arrayINtB1w_7ChannelNtCshBQhFkKQVuE_10slog_async8AsyncMsgE13with_capacity0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3t_8for_each4callINtB1w_4SlotB2A_ENCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4W_3VecB4w_E14extend_trustedBN_E0E0ECsbaWXNhtWAp9_11foundations(i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtNtCs49WdmBbiWyj_17crossbeam_channel7flavors5array4SlotNtCshBQhFkKQVuE_10slog_async8AsyncMsgEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB3g_3ops5range5RangejENCNvMs_B16_INtB16_7ChannelB20_E13with_capacity0EE9from_iterCsbaWXNhtWAp9_11foundations.exit unwind label %bb.c, !dbg !10478, !noalias !10463

bb.c:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtNtCs49WdmBbiWyj_17crossbeam_channel7flavors5array4SlotNtCshBQhFkKQVuE_10slog_async8AsyncMsgEE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB2F_3ops5range5RangejENCNvMs_BJ_INtBJ_7ChannelB1D_E13with_capacity0EECsbaWXNhtWAp9_11foundations.exit.i.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtNtCs49WdmBbiWyj_17crossbeam_channel7flavors5array4SlotNtCshBQhFkKQVuE_10slog_async8AsyncMsgEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtCs49WdmBbiWyj_17crossbeam_channel7flavors5array4SlotNtCshBQhFkKQVuE_10slog_async8AsyncMsgEEECsbaWXNhtWAp9_11foundations.exit.i unwind label %bb.d, !dbg !10479, !noalias !10463

bb.d:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !dbg !10480, !noalias !10463
  unreachable, !dbg !10480

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtCs49WdmBbiWyj_17crossbeam_channel7flavors5array4SlotNtCshBQhFkKQVuE_10slog_async8AsyncMsgEEECsbaWXNhtWAp9_11foundations.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.p, !dbg !10480

_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtNtCs49WdmBbiWyj_17crossbeam_channel7flavors5array4SlotNtCshBQhFkKQVuE_10slog_async8AsyncMsgEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB3g_3ops5range5RangejENCNvMs_B16_INtB16_7ChannelB20_E13with_capacity0EE9from_iterCsbaWXNhtWAp9_11foundations.exit: ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtNtCs49WdmBbiWyj_17crossbeam_channel7flavors5array4SlotNtCshBQhFkKQVuE_10slog_async8AsyncMsgEE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB2F_3ops5range5RangejENCNvMs_BJ_INtBJ_7ChannelB1D_E13with_capacity0EECsbaWXNhtWAp9_11foundations.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10481, !noalias !10464
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !10482
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !10483, !noalias !10463
  ret void, !dbg !10484
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtNtCs3zuhHmEJ01l_5tokio4loom3std5mutex5MutexINtNtNtB13_4sync9broadcast4SlotNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7ChannelEEEINtB2_12SpecFromIterBU_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB3C_3ops5range5RangejENCNvMs1_B1L_INtB1L_6SenderB2d_E23new_with_receiver_count0EE9from_iterCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10485 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10524), !dbg !10532
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !10533, !noalias !10525
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !10534
  %.val.i = load i64, ptr %i.d, align 8, !dbg !10534, !alias.scope !10526, !noalias !10527, !noundef !682
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !10534
  %.val2.i = load i64, ptr %i.e, align 8, !dbg !10534, !alias.scope !10528, !noalias !10529, !noundef !682
  %spec.select.i.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.val2.i, i64 %.val.i), !dbg !10535 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !10536, !noalias !10525
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %spec.select.i.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 72), !dbg !10536, !noalias !10525
  %i.f = load i64, ptr %i.b, align 8, !dbg !10536, !range !798, !noalias !10525, !noundef !682
  %i.g = trunc nuw i64 %i.f to i1, !dbg !10537
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !10538
  %i.i = load i64, ptr %i.h, align 8, !dbg !10538, !range !884, !noalias !10525, !noundef !682 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !10538 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtNtNtCs3zuhHmEJ01l_5tokio4loom3std5mutex5MutexINtNtNtBP_4sync9broadcast4SlotNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7ChannelEEE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB3g_3ops5range5RangejENCNvMs1_B1x_INtB1x_6SenderB1Y_E23new_with_receiver_count0EECsbaWXNhtWAp9_11foundations.exit.i.i, !dbg !10537, !prof !725

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !dbg !10539, !noalias !10525
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #22, !dbg !10540, !noalias !10525
  unreachable, !dbg !10540

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtNtNtCs3zuhHmEJ01l_5tokio4loom3std5mutex5MutexINtNtNtBP_4sync9broadcast4SlotNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7ChannelEEE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB3g_3ops5range5RangejENCNvMs1_B1x_INtB1x_6SenderB1Y_E23new_with_receiver_count0EECsbaWXNhtWAp9_11foundations.exit.i.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !dbg !10541, !noalias !10525, !nonnull !682, !noundef !682 ; 2 uses
  %i.m = icmp ule i64 %spec.select.i.i.i, %i.i, !dbg !10542
  tail call void @llvm.assume(i1 %i.m), !dbg !10543
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10544, !noalias !10525
  store i64 %i.i, ptr %i.c, align 8, !dbg !10545, !noalias !10525
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !10545
  store ptr %i.l, ptr %i.n, align 8, !dbg !10545, !noalias !10525
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !10545 ; 2 uses
  store i64 0, ptr %i.o, align 8, !dbg !10545, !noalias !10525
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10546, !noalias !10530
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !10546
  store ptr %i.l, ptr %i.p, align 8, !dbg !10546, !noalias !10530
  store ptr %i.o, ptr %i.a, align 8, !dbg !10546, !noalias !10530
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !10546
  store i64 0, ptr %i.q, align 8, !dbg !10546, !noalias !10530
  invoke void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMs1_NtNtCs3zuhHmEJ01l_5tokio4sync9broadcastINtB1x_6SenderNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7ChannelE23new_with_receiver_count0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3G_8for_each4callINtNtNtNtB1B_4loom3std5mutex5MutexINtB1x_4SlotB2o_EENCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5I_3VecB4J_E14extend_trustedBN_E0E0ECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtNtNtCs3zuhHmEJ01l_5tokio4loom3std5mutex5MutexINtNtNtB1c_4sync9broadcast4SlotNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7ChannelEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB3S_3ops5range5RangejENCNvMs1_B1U_INtB1U_6SenderB2m_E23new_with_receiver_count0EE9from_iterCsbaWXNhtWAp9_11foundations.exit unwind label %bb.c, !dbg !10547, !noalias !10531

bb.c:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtNtNtCs3zuhHmEJ01l_5tokio4loom3std5mutex5MutexINtNtNtBP_4sync9broadcast4SlotNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7ChannelEEE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB3g_3ops5range5RangejENCNvMs1_B1x_INtB1x_6SenderB1Y_E23new_with_receiver_count0EECsbaWXNhtWAp9_11foundations.exit.i.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtNtCs3zuhHmEJ01l_5tokio4loom3std5mutex5MutexINtNtNtB1h_4sync9broadcast4SlotNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7ChannelEEEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #23
          to label %bb.e unwind label %bb.d, !dbg !10548, !noalias !10525

bb.d:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !dbg !10549, !noalias !10525
  unreachable, !dbg !10549

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.r, !dbg !10549

_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtNtNtCs3zuhHmEJ01l_5tokio4loom3std5mutex5MutexINtNtNtB1c_4sync9broadcast4SlotNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7ChannelEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB3S_3ops5range5RangejENCNvMs1_B1U_INtB1U_6SenderB2m_E23new_with_receiver_count0EE9from_iterCsbaWXNhtWAp9_11foundations.exit: ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtNtNtCs3zuhHmEJ01l_5tokio4loom3std5mutex5MutexINtNtNtBP_4sync9broadcast4SlotNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7ChannelEEE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB3g_3ops5range5RangejENCNvMs1_B1x_INtB1x_6SenderB1Y_E23new_with_receiver_count0EECsbaWXNhtWAp9_11foundations.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10550, !noalias !10530
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !10551, !noalias !10524
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !10548, !noalias !10525
  ret void, !dbg !10552
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCs3oUPovFnLWP_4core3net11socket_addr10SocketAddrEINtB2_12SpecFromIterBU_INtNtNtNtB10_4iter8adapters3map3MapNtNtNtNtNtCsgrxNvLvgM5Z_10hyper_util6client6legacy7connect3dns8GaiAddrsNCNCNvMs3_NtB2N_4httpNtB42_13HttpConnector10call_async00EE9from_iterCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10553 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 4                ; 10 uses
  %.sroa.6.i.i.i = alloca [20 x i8], align 4      ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [32 x i8], align 4                ; 10 uses
  %i.j = alloca [48 x i8], align 8                ; 10 uses
  %.sroa.6.i = alloca [20 x i8], align 4          ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10716), !dbg !10763
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10717), !dbg !10763
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !10764, !noalias !10718
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10719), !dbg !10765
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !10766, !noalias !10718
  invoke void @_RNvXsa_NtNtNtNtCsgrxNvLvgM5Z_10hyper_util6client6legacy7connect3dnsNtB5_8GaiAddrsNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([32 x i8]) align 4 captures(address) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %.noexc.i unwind label %bb.e, !dbg !10766, !noalias !10716

.noexc.i:                                         ; preds = %bb.a
  %i.l = load i16, ptr %i.i, align 4, !dbg !10767, !range !10720, !noalias !10721, !noundef !682 ; 3 uses
  %.not.i.i = icmp eq i16 %i.l, 2, !dbg !10767
  br i1 %.not.i.i, label %bb.f, label %bb.b, !dbg !10768

bb.b:                                             ; preds = %.noexc.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !10769
  %.sroa.421.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 2, !dbg !10770
  %.sroa.421.0.copyload.i.i = load i32, ptr %.sroa.421.0..sroa_idx.i.i, align 2, !dbg !10770, !noalias !10721
  %.sroa.522.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 6, !dbg !10770
  %.sroa.522.0.copyload.i.i = load i16, ptr %.sroa.522.0..sroa_idx.i.i, align 2, !dbg !10770, !noalias !10721 ; 3 uses
  %.sroa.623.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !10770
  %.sroa.724.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 28, !dbg !10770
  %.sroa.724.0.copyload.i.i = load i16, ptr %.sroa.724.0..sroa_idx.i.i, align 4, !dbg !10770, !noalias !10721 ; 3 uses
  %.sroa.825.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 30, !dbg !10770
  %.sroa.825.0.copyload.i.i = load i16, ptr %.sroa.825.0..sroa_idx.i.i, align 2, !dbg !10770, !noalias !10721
  %.val.i.i = load ptr, ptr %i.m, align 8, !dbg !10771, !alias.scope !10722, !noalias !10723, !nonnull !682, !align !10724, !noundef !682
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !10771
  %.val1.i.i = load ptr, ptr %i.n, align 8, !dbg !10771, !alias.scope !10722, !noalias !10723, !nonnull !682, !align !828, !noundef !682
  %i.o = load i16, ptr %.val.i.i, align 2, !dbg !10772, !noalias !10725, !noundef !682 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !10773, !noalias !10735
  invoke void @_RNvMNtCs74LoFwSioHw_4http3uriNtB2_3Uri4port(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noundef nonnull align 8 %.val1.i.i)
          to label %.noexc7.i unwind label %bb.e, !dbg !10774, !noalias !10716

.noexc7.i:                                        ; preds = %bb.b
  %i.p = load ptr, ptr %i.h, align 8, !dbg !10775, !noalias !10735, !noundef !682
  %.not.i.i.i = icmp eq ptr %i.p, null, !dbg !10775
  %i.q = trunc nuw i16 %i.l to i1, !dbg !10776    ; 3 uses
  br i1 %.not.i.i.i, label %bb.c, label %._crit_edge.i.i.i, !dbg !10777

._crit_edge.i.i.i:                                ; preds = %.noexc7.i
  br i1 %i.q, label %bb.h, label %bb.d, !dbg !10778

bb.c:                                             ; preds = %.noexc7.i
  %.sroa.0.0.i.sroa.speculated.i.i = select i1 %i.q, i16 %.sroa.724.0.copyload.i.i, i16 %.sroa.522.0.copyload.i.i, !dbg !10779
  %2 = icmp ne i16 %.sroa.0.0.i.sroa.speculated.i.i, 0, !dbg !10780 ; 2 uses
  %brmerge.i.i = or i1 %2, %i.q, !dbg !10780
  %.sroa.724.0.copyload.mux.i.i = select i1 %2, i16 %.sroa.724.0.copyload.i.i, i16 %i.o, !dbg !10780
  br i1 %brmerge.i.i, label %bb.h, label %bb.d, !dbg !10780

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i
  br label %bb.h, !dbg !10781

bb.e:                                             ; preds = %bb.b, %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.f:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !10782, !noalias !10718
  store i64 0, ptr %0, align 8, !dbg !10783, !alias.scope !10716, !noalias !10717
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10783
  store ptr inttoptr (i64 4 to ptr), ptr %i.s, align 8, !dbg !10783, !alias.scope !10716, !noalias !10717
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !10783
  store i64 0, ptr %i.t, align 8, !dbg !10783, !alias.scope !10716, !noalias !10717
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !10784, !noalias !10718
  %.val5.i = load ptr, ptr %1, align 8, !dbg !10784, !alias.scope !10742, !noalias !10716, !nonnull !682, !noundef !682
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !10784
  %.val6.i = load i64, ptr %i.u, align 8, !dbg !10784, !alias.scope !10742, !noalias !10716, !noundef !682
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !10785, !noalias !10743
  store i64 %.val6.i, ptr %i.g, align 8, !dbg !10786, !noalias !10743
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !10786
  store ptr %.val5.i, ptr %i.v, align 8, !dbg !10786, !noalias !10743
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs3oUPovFnLWP_4core3net11socket_addr10SocketAddrENtNtNtBS_3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g), !dbg !10787, !noalias !10744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !10788, !noalias !10743
  br label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs3oUPovFnLWP_4core3net11socket_addr10SocketAddrEINtB2_18SpecFromIterNestedB11_INtNtNtNtB17_4iter8adapters3map3MapNtNtNtNtNtCsgrxNvLvgM5Z_10hyper_util6client6legacy7connect3dns8GaiAddrsNCNCNvMs3_NtB31_4httpNtB4g_13HttpConnector10call_async00EE9from_iterCsbaWXNhtWAp9_11foundations.exit, !dbg !10784

bb.g:                                             ; preds = %bb.i, %bb.h
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.z, !dbg !10789

bb.h:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %.sroa.56.0.i.i = phi i16 [ %.sroa.522.0.copyload.i.i, %bb.c ], [ %i.o, %bb.d ], [ %.sroa.522.0.copyload.i.i, %._crit_edge.i.i.i ], !dbg !10790
  %.sroa.710.0.i.i = phi i16 [ %.sroa.724.0.copyload.mux.i.i, %bb.c ], [ %.sroa.724.0.copyload.i.i, %bb.d ], [ %i.o, %._crit_edge.i.i.i ], !dbg !10790
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !10791, !noalias !10735
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i), !dbg !10792
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.6.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.623.0..sroa_idx.i.i, i64 20, i1 false), !dbg !10793, !noalias !10718
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !10782, !noalias !10718
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !10794, !noalias !10718
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef 4, i1 noundef zeroext false, i64 noundef 4, i64 noundef 32)
          to label %.noexc8.i unwind label %bb.g, !dbg !10794, !noalias !10716

.noexc8.i:                                        ; preds = %bb.h
  %i.x = load i64, ptr %i.f, align 8, !dbg !10794, !range !798, !noalias !10718, !noundef !682
  %i.y = trunc nuw i64 %i.x to i1, !dbg !10795
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !10796
  %i.aa = load i64, ptr %i.z, align 8, !dbg !10796, !range !884, !noalias !10718, !noundef !682 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !10796 ; 2 uses
  br i1 %i.y, label %bb.i, label %bb.j, !dbg !10795, !prof !725

bb.i:                                             ; preds = %.noexc8.i
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !10797, !noalias !10718
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.aa, i64 %i.ac) #22
          to label %.noexc9.i unwind label %bb.g, !dbg !10798, !noalias !10716

.noexc9.i:                                        ; preds = %bb.i
  unreachable, !dbg !10798

bb.j:                                             ; preds = %.noexc8.i
  %i.ad = load ptr, ptr %i.ab, align 8, !dbg !10799, !noalias !10718, !nonnull !682, !noundef !682 ; 7 uses
  %i.ae = icmp ugt i64 %i.aa, 3, !dbg !10800
  call void @llvm.assume(i1 %i.ae), !dbg !10801
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !10802, !noalias !10718
  %.sroa.623.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8, !dbg !10803
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.623.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.6.i, i64 20, i1 false), !dbg !10804, !noalias !10716
  store i16 %i.l, ptr %i.ad, align 4, !dbg !10803, !noalias !10716
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 2, !dbg !10803
  store i32 %.sroa.421.0.copyload.i.i, ptr %.sroa.421.0..sroa_idx.i, align 2, !dbg !10803, !noalias !10716
  %.sroa.522.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 6, !dbg !10803
  store i16 %.sroa.56.0.i.i, ptr %.sroa.522.0..sroa_idx.i, align 2, !dbg !10803, !noalias !10716
  %.sroa.724.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 28, !dbg !10803
  store i16 %.sroa.710.0.i.i, ptr %.sroa.724.0..sroa_idx.i, align 4, !dbg !10803, !noalias !10716
  %.sroa.825.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 30, !dbg !10803
  store i16 %.sroa.825.0.copyload.i.i, ptr %.sroa.825.0..sroa_idx.i, align 2, !dbg !10803, !noalias !10716
  store i64 %i.aa, ptr %i.k, align 8, !dbg !10805, !noalias !10718
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !10805 ; 2 uses
  store ptr %i.ad, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !10805, !noalias !10718
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !10805 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !10805, !noalias !10718
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i), !dbg !10789
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !10806, !noalias !10718
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !dbg !10806, !noalias !10716
  call void @llvm.experimental.noalias.scope.decl(metadata !10745), !dbg !10807
  call void @llvm.experimental.noalias.scope.decl(metadata !10746), !dbg !10807
  call void @llvm.experimental.noalias.scope.decl(metadata !10747), !dbg !10808
  call void @llvm.experimental.noalias.scope.decl(metadata !10748), !dbg !10808
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.421.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %.sroa.522.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 6
  %.sroa.623.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.724.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %.sroa.825.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 30
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  br label %bb.k, !dbg !10809

bb.k:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCs3oUPovFnLWP_4core3net11socket_addr10SocketAddrE7reserveCsbaWXNhtWAp9_11foundations.exit.i.i.i, %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !10749), !dbg !10810
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !10811, !noalias !10750
  invoke void @_RNvXsa_NtNtNtNtCsgrxNvLvgM5Z_10hyper_util6client6legacy7connect3dnsNtB5_8GaiAddrsNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([32 x i8]) align 4 captures(address) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.j)
          to label %.noexc.i.i.i unwind label %bb.p, !dbg !10811, !noalias !10716

.noexc.i.i.i:                                     ; preds = %bb.k
  %i.ah = load i16, ptr %i.e, align 4, !dbg !10812, !range !10720, !noalias !10751, !noundef !682 ; 3 uses
  %.not.i.i.i.i = icmp eq i16 %i.ah, 2, !dbg !10812
  br i1 %.not.i.i.i.i, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCs3oUPovFnLWP_4core3net11socket_addr10SocketAddrE16extend_desugaredINtNtNtNtBM_4iter8adapters3map3MapNtNtNtNtNtCsgrxNvLvgM5Z_10hyper_util6client6legacy7connect3dns8GaiAddrsNCNCNvMs3_NtB2t_4httpNtB3I_13HttpConnector10call_async00EECsbaWXNhtWAp9_11foundations.exit.i.i, label %bb.l, !dbg !10813

bb.l:                                             ; preds = %.noexc.i.i.i
  %.sroa.421.0.copyload.i.i.i.i = load i32, ptr %.sroa.421.0..sroa_idx.i.i.i.i, align 2, !dbg !10814, !noalias !10751
  %.sroa.522.0.copyload.i.i.i.i = load i16, ptr %.sroa.522.0..sroa_idx.i.i.i.i, align 2, !dbg !10814, !noalias !10751 ; 3 uses
  %.sroa.724.0.copyload.i.i.i.i = load i16, ptr %.sroa.724.0..sroa_idx.i.i.i.i, align 4, !dbg !10814, !noalias !10751 ; 3 uses
  %.sroa.825.0.copyload.i.i.i.i = load i16, ptr %.sroa.825.0..sroa_idx.i.i.i.i, align 2, !dbg !10814, !noalias !10751
  %.val.i.i.i.i = load ptr, ptr %i.af, align 8, !dbg !10815, !alias.scope !10752, !noalias !10753, !nonnull !682, !align !10724, !noundef !682
  %.val1.i.i.i.i = load ptr, ptr %i.ag, align 8, !dbg !10815, !alias.scope !10752, !noalias !10753, !nonnull !682, !align !828, !noundef !682
  %i.ai = load i16, ptr %.val.i.i.i.i, align 2, !dbg !10816, !noalias !10754, !noundef !682 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !10817, !noalias !10755
  invoke void @_RNvMNtCs74LoFwSioHw_4http3uriNtB2_3Uri4port(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull align 8 %.val1.i.i.i.i)
          to label %.noexc6.i.i.i unwind label %bb.p, !dbg !10818, !noalias !10716

.noexc6.i.i.i:                                    ; preds = %bb.l
  %i.aj = load ptr, ptr %i.d, align 8, !dbg !10819, !noalias !10755, !noundef !682
  %.not.i.i.i.i.i = icmp eq ptr %i.aj, null, !dbg !10819
  %i.ak = trunc nuw i16 %i.ah to i1, !dbg !10820  ; 3 uses
  br i1 %.not.i.i.i.i.i, label %bb.m, label %._crit_edge.i.i.i.i.i, !dbg !10821

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc6.i.i.i
  br i1 %i.ak, label %bb.q, label %bb.n, !dbg !10822

bb.m:                                             ; preds = %.noexc6.i.i.i
  %.sroa.0.0.i.sroa.speculated.i.i.i.i = select i1 %i.ak, i16 %.sroa.724.0.copyload.i.i.i.i, i16 %.sroa.522.0.copyload.i.i.i.i, !dbg !10823
  %3 = icmp ne i16 %.sroa.0.0.i.sroa.speculated.i.i.i.i, 0, !dbg !10824 ; 2 uses
  %brmerge.i.i.i.i = or i1 %3, %i.ak, !dbg !10824
  %.sroa.724.0.copyload.mux.i.i.i.i = select i1 %3, i16 %.sroa.724.0.copyload.i.i.i.i, i16 %i.ai, !dbg !10824
  br i1 %brmerge.i.i.i.i, label %bb.q, label %bb.n, !dbg !10824

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i.i.i.i
  br label %bb.q, !dbg !10825

bb.o:                                             ; preds = %bb.r, %bb.p
  %.pn.i.i.i = phi { ptr, i32 } [ %i.av, %bb.r ], [ %i.an, %bb.p ]
  %.val4.i.i.i = load ptr, ptr %i.j, align 8, !dbg !10826, !alias.scope !10756, !noalias !10757, !nonnull !682, !noundef !682
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !10826
  %.val5.i.i.i = load i64, ptr %i.al, align 8, !dbg !10826, !alias.scope !10756, !noalias !10757, !noundef !682
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !10827, !noalias !10758
  store i64 %.val5.i.i.i, ptr %i.c, align 8, !dbg !10828, !noalias !10758
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !10828
  store ptr %.val4.i.i.i, ptr %i.am, align 8, !dbg !10828, !noalias !10758
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs3oUPovFnLWP_4core3net11socket_addr10SocketAddrENtNtNtBS_3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %bb.u unwind label %bb.t, !dbg !10829, !noalias !10716

bb.p:                                             ; preds = %bb.l, %bb.k
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.q:                                             ; preds = %bb.n, %bb.m, %._crit_edge.i.i.i.i.i
  %.sroa.56.0.i.i.i.i = phi i16 [ %.sroa.522.0.copyload.i.i.i.i, %bb.m ], [ %i.ai, %bb.n ], [ %.sroa.522.0.copyload.i.i.i.i, %._crit_edge.i.i.i.i.i ], !dbg !10830
  %.sroa.710.0.i.i.i.i = phi i16 [ %.sroa.724.0.copyload.mux.i.i.i.i, %bb.m ], [ %.sroa.724.0.copyload.i.i.i.i, %bb.n ], [ %i.ai, %._crit_edge.i.i.i.i.i ], !dbg !10830
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !10831, !noalias !10755
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i), !dbg !10832
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.6.i.i.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.623.0..sroa_idx.i.i.i.i, i64 20, i1 false), !dbg !10833, !noalias !10750
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !10834, !noalias !10750
  %i.ao = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !10835, !alias.scope !10759, !noalias !10760, !noundef !682 ; 5 uses
  %i.ap = icmp ult i64 %i.ao, 288230376151711744, !dbg !10836
  call void @llvm.assume(i1 %i.ap), !dbg !10837
  %i.aq = load i64, ptr %i.k, align 8, !dbg !10838, !range !799, !alias.scope !10759, !noalias !10760, !noundef !682
  %i.ar = icmp eq i64 %i.ao, %i.aq, !dbg !10839
  br i1 %i.ar, label %bb.s, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCs3oUPovFnLWP_4core3net11socket_addr10SocketAddrE7reserveCsbaWXNhtWAp9_11foundations.exit.i.i.i, !dbg !10839

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCs3oUPovFnLWP_4core3net11socket_addr10SocketAddrE7reserveCsbaWXNhtWAp9_11foundations.exit.i.i.i: ; preds = %bb.s, %bb.q
  %i.as = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !10840, !alias.scope !10759, !noalias !10760, !nonnull !682, !noundef !682
  %i.at = getelementptr inbounds nuw [32 x i8], ptr %i.as, i64 %i.ao, !dbg !10841 ; 6 uses
  %.sroa.617.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8, !dbg !10842
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.617.0..sroa_idx.i.i.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.6.i.i.i, i64 20, i1 false), !dbg !10843, !noalias !10716
  store i16 %i.ah, ptr %i.at, align 4, !dbg !10842, !noalias !10716
  %.sroa.415.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 2, !dbg !10842
  store i32 %.sroa.421.0.copyload.i.i.i.i, ptr %.sroa.415.0..sroa_idx.i.i.i, align 2, !dbg !10842, !noalias !10716
  %.sroa.516.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 6, !dbg !10842
  store i16 %.sroa.56.0.i.i.i.i, ptr %.sroa.516.0..sroa_idx.i.i.i, align 2, !dbg !10842, !noalias !10716
  %.sroa.718.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 28, !dbg !10842
  store i16 %.sroa.710.0.i.i.i.i, ptr %.sroa.718.0..sroa_idx.i.i.i, align 4, !dbg !10842, !noalias !10716
  %.sroa.819.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 30, !dbg !10842
  store i16 %.sroa.825.0.copyload.i.i.i.i, ptr %.sroa.819.0..sroa_idx.i.i.i, align 2, !dbg !10842, !noalias !10716
  %i.au = add nuw nsw i64 %i.ao, 1, !dbg !10844
  store i64 %i.au, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !10845, !alias.scope !10759, !noalias !10760
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i), !dbg !10846
  br label %bb.k, !dbg !10809

bb.r:                                             ; preds = %bb.s
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.o, !dbg !10846

bb.s:                                             ; preds = %bb.q
  invoke void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %i.ao, i64 noundef range(i64 1, 0) 1, i64 noundef 4, i64 noundef 32)
          to label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCs3oUPovFnLWP_4core3net11socket_addr10SocketAddrE7reserveCsbaWXNhtWAp9_11foundations.exit.i.i.i unwind label %bb.r, !dbg !10847, !noalias !10716

bb.t:                                             ; preds = %bb.o
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !dbg !10848, !noalias !10716
  unreachable, !dbg !10848

bb.u:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !10849, !noalias !10758
  br label %.body.i, !dbg !10848

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCs3oUPovFnLWP_4core3net11socket_addr10SocketAddrE16extend_desugaredINtNtNtNtBM_4iter8adapters3map3MapNtNtNtNtNtCsgrxNvLvgM5Z_10hyper_util6client6legacy7connect3dns8GaiAddrsNCNCNvMs3_NtB2t_4httpNtB3I_13HttpConnector10call_async00EECsbaWXNhtWAp9_11foundations.exit.i.i: ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !10834, !noalias !10750
  %.val.i.i.i = load ptr, ptr %i.j, align 8, !dbg !10826, !alias.scope !10756, !noalias !10757, !nonnull !682, !noundef !682
  %i.ax = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !10826
  %.val3.i.i.i = load i64, ptr %i.ax, align 8, !dbg !10826, !alias.scope !10756, !noalias !10757, !noundef !682
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !10850, !noalias !10761
  store i64 %.val3.i.i.i, ptr %i.b, align 8, !dbg !10851, !noalias !10761
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !10851
  store ptr %.val.i.i.i, ptr %i.ay, align 8, !dbg !10851, !noalias !10761
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs3oUPovFnLWP_4core3net11socket_addr10SocketAddrENtNtNtBS_3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.w unwind label %bb.v, !dbg !10852, !noalias !10716

bb.v:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCs3oUPovFnLWP_4core3net11socket_addr10SocketAddrE16extend_desugaredINtNtNtNtBM_4iter8adapters3map3MapNtNtNtNtNtCsgrxNvLvgM5Z_10hyper_util6client6legacy7connect3dns8GaiAddrsNCNCNvMs3_NtB2t_4httpNtB3I_13HttpConnector10call_async00EECsbaWXNhtWAp9_11foundations.exit.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.body.i, !dbg !10784

.body.i:                                          ; preds = %bb.v, %bb.u
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.az, %bb.v ], [ %.pn.i.i.i, %bb.u ]
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs3oUPovFnLWP_4core3net11socket_addr10SocketAddrENtNtNtBS_3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.y unwind label %bb.x, !dbg !10853, !noalias !10716

bb.w:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCs3oUPovFnLWP_4core3net11socket_addr10SocketAddrE16extend_desugaredINtNtNtNtBM_4iter8adapters3map3MapNtNtNtNtNtCsgrxNvLvgM5Z_10hyper_util6client6legacy7connect3dns8GaiAddrsNCNCNvMs3_NtB2t_4httpNtB3I_13HttpConnector10call_async00EECsbaWXNhtWAp9_11foundations.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10854, !noalias !10761
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !10855, !noalias !10718
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !dbg !10856, !noalias !10717
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !10784, !noalias !10718
  br label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs3oUPovFnLWP_4core3net11socket_addr10SocketAddrEINtB2_18SpecFromIterNestedB11_INtNtNtNtB17_4iter8adapters3map3MapNtNtNtNtNtCsgrxNvLvgM5Z_10hyper_util6client6legacy7connect3dns8GaiAddrsNCNCNvMs3_NtB31_4httpNtB4g_13HttpConnector10call_async00EE9from_iterCsbaWXNhtWAp9_11foundations.exit, !dbg !10784

bb.x:                                             ; preds = %bb.z, %.body.i
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !dbg !10857, !noalias !10716
  unreachable, !dbg !10857

bb.y:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapNtNtNtNtNtCsgrxNvLvgM5Z_10hyper_util6client6legacy7connect3dns8GaiAddrsNCNCNvMs3_NtB1d_4httpNtB2s_13HttpConnector10call_async00EECsbaWXNhtWAp9_11foundations.exit.i, %.body.i
  %.pn28.i = phi { ptr, i32 } [ %.pn.ph.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapNtNtNtNtNtCsgrxNvLvgM5Z_10hyper_util6client6legacy7connect3dns8GaiAddrsNCNCNvMs3_NtB1d_4httpNtB2s_13HttpConnector10call_async00EECsbaWXNhtWAp9_11foundations.exit.i ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %.pn28.i, !dbg !10857

bb.z:                                             ; preds = %bb.g, %bb.e
  %.pn.ph.i = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.w, %bb.g ]
  %.val.i = load ptr, ptr %1, align 8, !dbg !10784, !alias.scope !10742, !noalias !10716, !nonnull !682, !noundef !682
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !10784
  %.val4.i = load i64, ptr %i.bb, align 8, !dbg !10784, !alias.scope !10742, !noalias !10716, !noundef !682
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10858, !noalias !10762
  store i64 %.val4.i, ptr %i.a, align 8, !dbg !10859, !noalias !10762
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !10859
  store ptr %.val.i, ptr %i.bc, align 8, !dbg !10859, !noalias !10762
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs3oUPovFnLWP_4core3net11socket_addr10SocketAddrENtNtNtBS_3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapNtNtNtNtNtCsgrxNvLvgM5Z_10hyper_util6client6legacy7connect3dns8GaiAddrsNCNCNvMs3_NtB1d_4httpNtB2s_13HttpConnector10call_async00EECsbaWXNhtWAp9_11foundations.exit.i unwind label %bb.x, !dbg !10860, !noalias !10716

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapNtNtNtNtNtCsgrxNvLvgM5Z_10hyper_util6client6legacy7connect3dns8GaiAddrsNCNCNvMs3_NtB1d_4httpNtB2s_13HttpConnector10call_async00EECsbaWXNhtWAp9_11foundations.exit.i: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10861, !noalias !10762
  br label %bb.y, !dbg !10862

_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs3oUPovFnLWP_4core3net11socket_addr10SocketAddrEINtB2_18SpecFromIterNestedB11_INtNtNtNtB17_4iter8adapters3map3MapNtNtNtNtNtCsgrxNvLvgM5Z_10hyper_util6client6legacy7connect3dns8GaiAddrsNCNCNvMs3_NtB31_4httpNtB4g_13HttpConnector10call_async00EE9from_iterCsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.f, %bb.w
  ret void, !dbg !10863
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger6thrift6jaeger4SpanEINtB2_12SpecFromIterBU_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB2q_5slice4iter4IterINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtB10_4span16SpanContextStateEENvYBU_INtNtB2q_7convert4FromRB3w_E4fromEE9from_iterCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10864 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !10902, !noalias !10900
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.d = ptrtoint ptr %2 to i64, !dbg !10903
  %i.e = ptrtoint ptr %1 to i64, !dbg !10903
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !10903
  %i.g = udiv exact i64 %i.f, 224, !dbg !10903    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !10904, !noalias !10900
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 152), !dbg !10904, !noalias !10900
  %i.h = load i64, ptr %i.b, align 8, !dbg !10904, !range !798, !noalias !10900, !noundef !682
  %i.i = trunc nuw i64 %i.h to i1, !dbg !10905
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !10906
  %i.k = load i64, ptr %i.j, align 8, !dbg !10906, !range !884, !noalias !10900, !noundef !682 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !10906 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger6thrift6jaeger4SpanE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB25_5slice4iter4IterINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtBM_4span16SpanContextStateEENvYBG_INtNtB25_7convert4FromRB3b_E4fromEECsbaWXNhtWAp9_11foundations.exit.i.i, !dbg !10905, !prof !725

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !dbg !10907, !noalias !10900
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #22, !dbg !10908, !noalias !10900
  unreachable, !dbg !10908

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger6thrift6jaeger4SpanE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB25_5slice4iter4IterINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtBM_4span16SpanContextStateEENvYBG_INtNtB25_7convert4FromRB3b_E4fromEECsbaWXNhtWAp9_11foundations.exit.i.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !dbg !10909, !noalias !10900, !nonnull !682, !noundef !682 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k, !dbg !10910
  tail call void @llvm.assume(i1 %i.o), !dbg !10911
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10912, !noalias !10900
  store i64 %i.k, ptr %i.c, align 8, !dbg !10913, !noalias !10900
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !10913
  store ptr %i.n, ptr %i.p, align 8, !dbg !10913, !noalias !10900
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !10913 ; 2 uses
  store i64 0, ptr %i.q, align 8, !dbg !10913, !noalias !10900
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10914, !noalias !10901
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !10914
  store ptr %i.n, ptr %i.r, align 8, !dbg !10914, !noalias !10901
  store ptr %i.q, ptr %i.a, align 8, !dbg !10914, !noalias !10901
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !10914
  store i64 0, ptr %i.s, align 8, !dbg !10914, !noalias !10901
  invoke void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEENvYNtNtNtB2i_6thrift6jaeger4SpanINtNtBc_7convert4FromRB1n_E4fromENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4k_8for_each4callB3k_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5A_3VecB3k_E14extend_trustedBN_E0E0ECsbaWXNhtWAp9_11foundations(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger6thrift6jaeger4SpanEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB2G_5slice4iter4IterINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtB19_4span16SpanContextStateEENvYB13_INtNtB2G_7convert4FromRB3M_E4fromEE9from_iterCsbaWXNhtWAp9_11foundations.exit unwind label %bb.c, !dbg !10915, !noalias !10900

bb.c:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger6thrift6jaeger4SpanE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB25_5slice4iter4IterINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtBM_4span16SpanContextStateEENvYBG_INtNtB25_7convert4FromRB3b_E4fromEECsbaWXNhtWAp9_11foundations.exit.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger6thrift6jaeger4SpanEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #23
          to label %bb.e unwind label %bb.d, !dbg !10916, !noalias !10900

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !dbg !10917, !noalias !10900
  unreachable, !dbg !10917

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.t, !dbg !10917

_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger6thrift6jaeger4SpanEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB2G_5slice4iter4IterINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtB19_4span16SpanContextStateEENvYB13_INtNtB2G_7convert4FromRB3M_E4fromEE9from_iterCsbaWXNhtWAp9_11foundations.exit: ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger6thrift6jaeger4SpanE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB25_5slice4iter4IterINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtBM_4span16SpanContextStateEENvYBG_INtNtB25_7convert4FromRB3b_E4fromEECsbaWXNhtWAp9_11foundations.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10918, !noalias !10901
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !10919
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !10916, !noalias !10900
  ret void, !dbg !10920
}

; Function Attrs: nonlazybind uwtable
end_hunk_0
