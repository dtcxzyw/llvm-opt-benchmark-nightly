Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_core-ad80a04fff11224b.polars_core.149bbfd31402d64a-cgu.13?download=true
inline.NumInlined: 13797
inline.NumDeleted: 4345
loop-unroll.NumRuntimeUnrolled: 61
loop-unroll.NumUnrolled: 61
begin_hunk_0_@_RINvNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations34__rolling_apply_agg_window_no_nullsINtNtNtCslFlrwjHoTci_14polars_compute7rolling7min_max12MinMaxWindowxNtNtCs2mZqlW55729_12polars_utils7min_max15MinPropagateNanExINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB3P_5slice4iter4IterAmj2_ENCNvMs3_B2_INtNtB8_13chunked_array12ChunkedArrayNtNtB8_9datatypes9Int64TypeE7agg_mins_0ExEB8_:bb.a

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB4_14PrimitiveArrayxEINtNtCscgRAwXFJnXP_4core7convert4FromINtB2_21MutablePrimitiveArrayxEE4fromCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %i.a)
          to label %bb.d unwind label %bb.b, !dbg !160125

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !160126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !160127
  invoke void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc11collections9vec_dequeINtB4_8VecDequejENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.c)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCslFlrwjHoTci_14polars_compute7rolling7min_max12MinMaxWindowxNtNtCs2mZqlW55729_12polars_utils7min_max15MinPropagateNanEECs1LHh8CLbVkQ_11polars_core.exit unwind label %bb.e, !dbg !160128

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecjENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.c)
          to label %common.resume unwind label %bb.f, !dbg !160129

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !160128
  unreachable, !dbg !160128

common.resume:                                    ; preds = %bb.b, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.e, %bb.b ]
  resume { ptr, i32 } %common.resume.op, !dbg !160130

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCslFlrwjHoTci_14polars_compute7rolling7min_max12MinMaxWindowxNtNtCs2mZqlW55729_12polars_utils7min_max15MinPropagateNanEECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.d
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecjENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.c), !dbg !160131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !160124
  ret void, !dbg !160132

bb.g:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !160133
  unreachable, !dbg !160133
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations34__rolling_apply_agg_window_no_nullsINtNtNtCslFlrwjHoTci_14polars_compute7rolling7min_max12MinMaxWindowyNtNtCs2mZqlW55729_12polars_utils7min_max15MaxPropagateNanEyINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB3P_5slice4iter4IterAmj2_ENCNvMs3_B2_INtNtB8_13chunked_array12ChunkedArrayNtNtB8_9datatypes10UInt64TypeE7agg_maxs_0EyEB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 1152921504606846976) %2, ptr noundef nonnull %3, ptr noundef %4, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %5) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !160134 !guid !160146 {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [80 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !160152
  call void @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling7min_maxINtB4_12MinMaxWindowyNtNtCs2mZqlW55729_12polars_utils7min_max15MaxPropagateNanEINtNtB6_8no_nulls23RollingAggWindowNoNullsyE3newCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef 0, i64 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %5, i64 noundef 0, i64 undef), !dbg !160153
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !160154
  store ptr %3, ptr %i.b, align 8, !dbg !160155
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !160155
  store ptr %4, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !160155
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !160155
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !160155
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !160155
  store ptr %i.c, ptr %i.d, align 8, !dbg !160155
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !160156
  invoke void @_RINvXsb_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB6_21MutablePrimitiveArrayyEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect12FromIteratorINtNtB1G_6option6OptionyEE9from_iterINtNtNtB1E_8adapters3map3MapINtNtB3c_9enumerate9EnumerateIB38_INtNtNtB1G_5slice4iter4IterAmj2_ENCNvMs3_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregationsINtNtB4S_13chunked_array12ChunkedArrayNtNtB4S_9datatypes10UInt64TypeE7agg_maxs_0EENCINvB4M_34__rolling_apply_agg_window_no_nullsINtNtNtCslFlrwjHoTci_14polars_compute7rolling7min_max12MinMaxWindowyNtNtCs2mZqlW55729_12polars_utils7min_max15MaxPropagateNanEyB42_yE0EEB4S_(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
          to label %bb.c unwind label %bb.b, !dbg !160156

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCslFlrwjHoTci_14polars_compute7rolling7min_max12MinMaxWindowyNtNtCs2mZqlW55729_12polars_utils7min_max15MaxPropagateNanEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 dereferenceable(80) %i.c) #44
          to label %common.resume unwind label %bb.g, !dbg !160157

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB4_14PrimitiveArrayyEINtNtCscgRAwXFJnXP_4core7convert4FromINtB2_21MutablePrimitiveArrayyEE4fromCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %i.a)
          to label %bb.d unwind label %bb.b, !dbg !160158

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !160159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !160160
  invoke void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc11collections9vec_dequeINtB4_8VecDequejENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.c)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCslFlrwjHoTci_14polars_compute7rolling7min_max12MinMaxWindowyNtNtCs2mZqlW55729_12polars_utils7min_max15MaxPropagateNanEECs1LHh8CLbVkQ_11polars_core.exit unwind label %bb.e, !dbg !160161

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecjENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.c)
          to label %common.resume unwind label %bb.f, !dbg !160162

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !160161
  unreachable, !dbg !160161

common.resume:                                    ; preds = %bb.b, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.e, %bb.b ]
  resume { ptr, i32 } %common.resume.op, !dbg !160163

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCslFlrwjHoTci_14polars_compute7rolling7min_max12MinMaxWindowyNtNtCs2mZqlW55729_12polars_utils7min_max15MaxPropagateNanEECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.d
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecjENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.c), !dbg !160164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !160157
  ret void, !dbg !160165

bb.g:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !160166
  unreachable, !dbg !160166
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations34__rolling_apply_agg_window_no_nullsINtNtNtCslFlrwjHoTci_14polars_compute7rolling7min_max12MinMaxWindowyNtNtCs2mZqlW55729_12polars_utils7min_max15MinPropagateNanEyINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB3P_5slice4iter4IterAmj2_ENCNvMs3_B2_INtNtB8_13chunked_array12ChunkedArrayNtNtB8_9datatypes10UInt64TypeE7agg_mins_0EyEB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 1152921504606846976) %2, ptr noundef nonnull %3, ptr noundef %4, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %5) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !160167 !guid !160179 {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [80 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !160185
  call void @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling7min_maxINtB4_12MinMaxWindowyNtNtCs2mZqlW55729_12polars_utils7min_max15MinPropagateNanEINtNtB6_8no_nulls23RollingAggWindowNoNullsyE3newCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef 0, i64 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %5, i64 noundef 0, i64 undef), !dbg !160186
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !160187
  store ptr %3, ptr %i.b, align 8, !dbg !160188
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !160188
  store ptr %4, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !160188
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !160188
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !160188
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !160188
  store ptr %i.c, ptr %i.d, align 8, !dbg !160188
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !160189
  invoke void @_RINvXsb_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB6_21MutablePrimitiveArrayyEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect12FromIteratorINtNtB1G_6option6OptionyEE9from_iterINtNtNtB1E_8adapters3map3MapINtNtB3c_9enumerate9EnumerateIB38_INtNtNtB1G_5slice4iter4IterAmj2_ENCNvMs3_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregationsINtNtB4S_13chunked_array12ChunkedArrayNtNtB4S_9datatypes10UInt64TypeE7agg_mins_0EENCINvB4M_34__rolling_apply_agg_window_no_nullsINtNtNtCslFlrwjHoTci_14polars_compute7rolling7min_max12MinMaxWindowyNtNtCs2mZqlW55729_12polars_utils7min_max15MinPropagateNanEyB42_yE0EEB4S_(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
          to label %bb.c unwind label %bb.b, !dbg !160189

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCslFlrwjHoTci_14polars_compute7rolling7min_max12MinMaxWindowyNtNtCs2mZqlW55729_12polars_utils7min_max15MinPropagateNanEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 dereferenceable(80) %i.c) #44
          to label %common.resume unwind label %bb.g, !dbg !160190

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB4_14PrimitiveArrayyEINtNtCscgRAwXFJnXP_4core7convert4FromINtB2_21MutablePrimitiveArrayyEE4fromCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %i.a)
          to label %bb.d unwind label %bb.b, !dbg !160191

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !160192
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !160193
  invoke void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc11collections9vec_dequeINtB4_8VecDequejENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.c)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCslFlrwjHoTci_14polars_compute7rolling7min_max12MinMaxWindowyNtNtCs2mZqlW55729_12polars_utils7min_max15MinPropagateNanEECs1LHh8CLbVkQ_11polars_core.exit unwind label %bb.e, !dbg !160194

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecjENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.c)
          to label %common.resume unwind label %bb.f, !dbg !160195

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !160194
  unreachable, !dbg !160194

common.resume:                                    ; preds = %bb.b, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.e, %bb.b ]
  resume { ptr, i32 } %common.resume.op, !dbg !160196

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCslFlrwjHoTci_14polars_compute7rolling7min_max12MinMaxWindowyNtNtCs2mZqlW55729_12polars_utils7min_max15MinPropagateNanEECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.d
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecjENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.c), !dbg !160197
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !160190
  ret void, !dbg !160198

bb.g:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !160199
  unreachable, !dbg !160199
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile14quantile_sliceNtNtCs2mZqlW55729_12polars_utils7float164pf16EBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull align 2 %1, i64 noundef range(i64 0, 4611686018427387904) %2, double noundef %3, i8 noundef range(i8 0, 6) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !160200 !guid !160381 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [40 x i8], align 8                ; 6 uses
  %i.e = fcmp oge double %3, 0.000000e+00, !dbg !160403
  %i.f = fcmp ole double %3, 1.000000e+00
  %spec.select.i = and i1 %i.e, %i.f, !dbg !160404
  br i1 %spec.select.i, label %bb.c, label %bb.b, !dbg !160405

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) @57, i64 72, i1 false), !dbg !160406
  br label %bb.d, !dbg !160407

bb.c:                                             ; preds = %bb.a
  switch i64 %2, label %bb.f [
    i64 0, label %bb.e
    i64 1, label %bb.l
  ], !dbg !160408

bb.d:                                             ; preds = %_RNvXNvNtCs2mZqlW55729_12polars_utils7float16s5_1__NtB4_4pf16NtNtCslmKYcnV0hjo_10num_traits4cast11ToPrimitive6to_f64.exit29, %_RNvXNvNtCs2mZqlW55729_12polars_utils7float16s5_1__NtB4_4pf16NtNtCslmKYcnV0hjo_10num_traits4cast11ToPrimitive6to_f64.exit38, %_RNvXNvNtCs2mZqlW55729_12polars_utils7float16s5_1__NtB4_4pf16NtNtCslmKYcnV0hjo_10num_traits4cast11ToPrimitive6to_f64.exit60, %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, %_RNvXNvNtCs2mZqlW55729_12polars_utils7float16s5_1__NtB4_4pf16NtNtCslmKYcnV0hjo_10num_traits4cast11ToPrimitive6to_f64.exit, %bb.e, %bb.b
  ret void, !dbg !160409

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !160410
  store i64 0, ptr %i.g, align 8, !dbg !160410
  store i64 18, ptr %0, align 8, !dbg !160410
  br label %bb.d, !dbg !160407

bb.f:                                             ; preds = %bb.c
  %i.h = uitofp nneg i64 %2 to double, !dbg !160411 ; 2 uses
  %i.i = fadd nnan double %i.h, -1.000000e+00, !dbg !160412
  %i.j = fmul double %3, %i.i, !dbg !160412
  %i.k = fadd double %i.j, 0.000000e+00, !dbg !160412 ; 5 uses
  switch i8 %4, label %default.unreachable [
    i8 0, label %bb.g
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.h
    i8 4, label %bb.h
    i8 5, label %bb.j
  ], !dbg !160413

default.unreachable:                              ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = tail call double @llvm.round.f64(double %i.k), !dbg !160414
  %i.m = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.l), !dbg !160415
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !160416

bb.h:                                             ; preds = %bb.f, %bb.f, %bb.f
  %i.n = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.k), !dbg !160417
  %.pre.i = tail call double @llvm.ceil.f64(double %i.k), !dbg !160418
  %.pre7.i = tail call i64 @llvm.fptoui.sat.i64.f64(double %.pre.i), !dbg !160419
  br label %bb.k, !dbg !160420

bb.i:                                             ; preds = %bb.f
  %i.o = tail call double @llvm.ceil.f64(double %i.k), !dbg !160421
  %i.p = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.o), !dbg !160422 ; 2 uses
  br label %bb.k, !dbg !160423

bb.j:                                             ; preds = %bb.f
  %i.q = fmul nnan double %3, %i.h, !dbg !160424
  %i.r = tail call double @llvm.ceil.f64(double %i.q), !dbg !160425
  %i.s = fadd double %i.r, -1.000000e+00, !dbg !160426
  %i.t = tail call nsz double @llvm.maximumnum.f64(double %i.s, double 0.000000e+00), !dbg !160427
  %i.u = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.t), !dbg !160426
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !160416

bb.k:                                             ; preds = %bb.i, %bb.h
  %.pre-phi8.i = phi i64 [ %i.p, %bb.i ], [ %.pre7.i, %bb.h ], !dbg !160419
  %.sroa.0.0.i = phi i64 [ %i.p, %bb.i ], [ %i.n, %bb.h ], !dbg !160428
  %i.v = add nsw i64 %2, -1, !dbg !160429
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i, i64 %i.v), !dbg !160430 ; 2 uses
  %i.w = icmp eq i64 %.sroa.0.0.i.i, %.pre-phi8.i, !dbg !160431
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !160432

_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit: ; preds = %bb.g, %bb.j, %bb.k
  %.sink13.i = phi i64 [ %i.m, %bb.g ], [ %i.u, %bb.j ], [ %.sroa.0.0.i.i, %bb.k ] ; 2 uses
  %.sink11.i = phi double [ 0.000000e+00, %bb.g ], [ 0.000000e+00, %bb.j ], [ %i.k, %bb.k ]
  %.sink.i = phi i1 [ true, %bb.g ], [ true, %bb.j ], [ %i.w, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !160433
  call void @_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select18partition_at_indexNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvMB6_SB13_22select_nth_unstable_byNvYB13_NtNtB17_9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noalias noundef nonnull align 2 %1, i64 noundef range(i64 0, 4611686018427387904) %2, i64 noundef %.sink13.i, ptr noalias noundef nonnull %i.a), !dbg !160434
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !160435
  %i.y = load ptr, ptr %i.x, align 8, !dbg !160435, !nonnull !3468, !align !3804, !noundef !3468 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !160436
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !160436, !nonnull !3468, !align !3804, !noundef !3468 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 32, !dbg !160436
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !160436, !noundef !3468 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !160437
  br i1 %.sink.i, label %bb.x, label %bb.w, !dbg !160431

bb.l:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160384), !dbg !160438
  %i.ad = load i16, ptr %1, align 2, !dbg !160439, !alias.scope !160384, !noundef !3468 ; 6 uses
  %i.ae = load atomic i64, ptr @_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache5CACHE monotonic, align 8, !dbg !160440, !noalias !160384 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0, !dbg !160441
  br i1 %i.af, label %.split.i.i, label %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i, !dbg !160441, !prof !3515

.split.i.i:                                       ; preds = %bb.l
  %i.ag = tail call noundef i128 @_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache21detect_and_initialize(), !dbg !160442, !noalias !160384
  %i.ah = and i128 %i.ag, 36028797018963968, !dbg !160443
  %.not1.i.i = icmp eq i128 %i.ah, 0, !dbg !160443
  br i1 %.not1.i.i, label %bb.m, label %bb.v, !dbg !160444

_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i: ; preds = %bb.l
  %i.ai = and i64 %i.ae, 36028797018963968, !dbg !160445
  %.not.i.i = icmp eq i64 %i.ai, 0, !dbg !160445
  br i1 %.not.i.i, label %bb.m, label %bb.v, !dbg !160444

bb.m:                                             ; preds = %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i, %.split.i.i
  %i.aj = and i16 %i.ad, 32767, !dbg !160446
  %i.ak = icmp eq i16 %i.aj, 0, !dbg !160446
  br i1 %i.ak, label %bb.n, label %bb.o, !dbg !160446

bb.n:                                             ; preds = %bb.m
  %i.al = zext i16 %i.ad to i64, !dbg !160447
  %i.am = shl nuw i64 %i.al, 48, !dbg !160447
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f64_fallback.exit.i.i, !dbg !160448

bb.o:                                             ; preds = %bb.m
  %i.an = and i16 %i.ad, -32768, !dbg !160449
  %i.ao = zext i16 %i.an to i64, !dbg !160449     ; 2 uses
  %i.ap = and i16 %i.ad, 31744, !dbg !160450      ; 3 uses
  %i.aq = and i16 %i.ad, 1023, !dbg !160451       ; 3 uses
  %i.ar = zext nneg i16 %i.aq to i64, !dbg !160451 ; 3 uses
  %i.as = icmp eq i16 %i.ap, 31744, !dbg !160452
  br i1 %i.as, label %bb.p, label %bb.q, !dbg !160452

bb.p:                                             ; preds = %bb.o
  %i.at = icmp eq i16 %i.aq, 0, !dbg !160453
  %i.au = shl nuw i64 %i.ao, 48, !dbg !160454     ; 2 uses
  br i1 %i.at, label %bb.r, label %bb.s, !dbg !160453

bb.q:                                             ; preds = %bb.o
  %i.av = shl nuw i64 %i.ao, 48, !dbg !160455     ; 2 uses
  %i.aw = icmp eq i16 %i.ap, 0, !dbg !160456
  br i1 %i.aw, label %bb.t, label %bb.u, !dbg !160456

bb.r:                                             ; preds = %bb.p
  %i.ax = or disjoint i64 %i.au, 9218868437227405312, !dbg !160457
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f64_fallback.exit.i.i, !dbg !160458

bb.s:                                             ; preds = %bb.p
  %i.ay = shl nuw nsw i64 %i.ar, 42, !dbg !160459
  %i.az = or disjoint i64 %i.au, %i.ay, !dbg !160460
  %i.ba = or i64 %i.az, 9221120237041090560, !dbg !160460
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f64_fallback.exit.i.i, !dbg !160461

bb.t:                                             ; preds = %bb.q
  %i.bb = tail call range(i16 6, 17) i16 @llvm.ctlz.i16(i16 %i.aq, i1 false), !dbg !160462
  %i.bc = zext nneg i16 %i.bb to i32, !dbg !160462 ; 2 uses
  %i.bd = sub nuw nsw i32 1014, %i.bc, !dbg !160463
  %i.be = zext nneg i32 %i.bd to i64, !dbg !160464
  %i.bf = shl nuw nsw i64 %i.be, 52, !dbg !160464
  %i.bg = add nuw nsw i32 %i.bc, 37, !dbg !160465
  %i.bh = zext nneg i32 %i.bg to i64, !dbg !160466
  %i.bi = shl nuw nsw i64 %i.ar, %i.bh, !dbg !160466
  %i.bj = and i64 %i.bi, 4503599627370495, !dbg !160466
  %i.bk = or disjoint i64 %i.bj, %i.bf, !dbg !160467
  %i.bl = or disjoint i64 %i.bk, %i.av, !dbg !160467
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f64_fallback.exit.i.i, !dbg !160468

bb.u:                                             ; preds = %bb.q
  %i.bm = lshr exact i16 %i.ap, 10, !dbg !160469
  %narrow.i.i.i = add nuw nsw i16 %i.bm, 1008, !dbg !160470
  %i.bn = zext nneg i16 %narrow.i.i.i to i64, !dbg !160470
  %i.bo = shl nuw nsw i64 %i.bn, 52, !dbg !160471
  %i.bp = shl nuw nsw i64 %i.ar, 42, !dbg !160472
  %i.bq = or disjoint i64 %i.bo, %i.bp, !dbg !160473
  %i.br = or disjoint i64 %i.bq, %i.av, !dbg !160473
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f64_fallback.exit.i.i, !dbg !160474

_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f64_fallback.exit.i.i: ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.n
  %.sroa.0.0.i.i.i = phi i64 [ %i.am, %bb.n ], [ %i.ax, %bb.r ], [ %i.ba, %bb.s ], [ %i.bl, %bb.t ], [ %i.br, %bb.u ], !dbg !160475
  %i.bs = bitcast i64 %.sroa.0.0.i.i.i to double, !dbg !160474
  br label %_RNvXNvNtCs2mZqlW55729_12polars_utils7float16s5_1__NtB4_4pf16NtNtCslmKYcnV0hjo_10num_traits4cast11ToPrimitive6to_f64.exit, !dbg !160476

bb.v:                                             ; preds = %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i, %.split.i.i
  %i.bt = tail call fastcc noundef float @_RNvNtNtNtCshdiYQzaKNQ1_4half8binary164arch3x8619f16_to_f32_x86_f16c(i16 noundef %i.ad), !dbg !160477
  %i.bu = fpext float %i.bt to double, !dbg !160477
  br label %_RNvXNvNtCs2mZqlW55729_12polars_utils7float16s5_1__NtB4_4pf16NtNtCslmKYcnV0hjo_10num_traits4cast11ToPrimitive6to_f64.exit, !dbg !160478

_RNvXNvNtCs2mZqlW55729_12polars_utils7float16s5_1__NtB4_4pf16NtNtCslmKYcnV0hjo_10num_traits4cast11ToPrimitive6to_f64.exit: ; preds = %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f64_fallback.exit.i.i, %bb.v
  %.sroa.0.0.i.i20 = phi double [ %i.bu, %bb.v ], [ %i.bs, %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f64_fallback.exit.i.i ], !dbg !160479
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !160480
  store i64 1, ptr %i.bv, align 8, !dbg !160480
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !160480
  store double %.sroa.0.0.i.i20, ptr %i.bw, align 8, !dbg !160480
  store i64 18, ptr %0, align 8, !dbg !160480
  br label %bb.d, !dbg !160407

bb.w:                                             ; preds = %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit
  switch i8 %4, label %bb.ai [
    i8 3, label %bb.at
    i8 4, label %bb.au
  ], !dbg !160481

bb.x:                                             ; preds = %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !160385), !dbg !160482
  %i.bx = load i16, ptr %i.y, align 2, !dbg !160483, !alias.scope !160385, !noundef !3468 ; 6 uses
  %i.by = load atomic i64, ptr @_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache5CACHE monotonic, align 8, !dbg !160484, !noalias !160385 ; 2 uses
  %i.bz = icmp eq i64 %i.by, 0, !dbg !160485
  br i1 %i.bz, label %.split.i.i27, label %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i21, !dbg !160485, !prof !3515

.split.i.i27:                                     ; preds = %bb.x
  %i.ca = call noundef i128 @_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache21detect_and_initialize(), !dbg !160486, !noalias !160385
  %i.cb = and i128 %i.ca, 36028797018963968, !dbg !160487
  %.not1.i.i28 = icmp eq i128 %i.cb, 0, !dbg !160487
  br i1 %.not1.i.i28, label %bb.y, label %bb.ah, !dbg !160488

_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i21: ; preds = %bb.x
  %i.cc = and i64 %i.by, 36028797018963968, !dbg !160489
  %.not.i.i22 = icmp eq i64 %i.cc, 0, !dbg !160489
  br i1 %.not.i.i22, label %bb.y, label %bb.ah, !dbg !160488

bb.y:                                             ; preds = %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i21, %.split.i.i27
  %i.cd = and i16 %i.bx, 32767, !dbg !160490
  %i.ce = icmp eq i16 %i.cd, 0, !dbg !160490
  br i1 %i.ce, label %bb.z, label %bb.aa, !dbg !160490

bb.z:                                             ; preds = %bb.y
  %i.cf = zext i16 %i.bx to i64, !dbg !160491
  %i.cg = shl nuw i64 %i.cf, 48, !dbg !160491
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f64_fallback.exit.i.i25, !dbg !160492

bb.aa:                                            ; preds = %bb.y
  %i.ch = and i16 %i.bx, -32768, !dbg !160493
  %i.ci = zext i16 %i.ch to i64, !dbg !160493     ; 2 uses
  %i.cj = and i16 %i.bx, 31744, !dbg !160494      ; 3 uses
  %i.ck = and i16 %i.bx, 1023, !dbg !160495       ; 3 uses
  %i.cl = zext nneg i16 %i.ck to i64, !dbg !160495 ; 3 uses
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile14quantile_sliceNtNtCs2mZqlW55729_12polars_utils7float164pf16EBa_:bb.a
  br label %bb.d, !dbg !160666

bb.bq:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !160580
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #46, !dbg !160667
  unreachable, !dbg !160667

bb.br:                                            ; preds = %bb.au
  %i.jn = extractvalue { i16, i16 } %i.fs, 1, !dbg !160576
  %i.jo = load ptr, ptr %i.b, align 8, !dbg !160668, !nonnull !3468, !noundef !3468
  %i.jp = load ptr, ptr %i.fr, align 8, !dbg !160668, !noundef !3468
  %i.jq = call noundef i16 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16EENtNtNtB9_6traits8iterator8Iterator4foldB1s_NCINvNvB2d_6min_by4foldB1s_NvYB1s_NtNtB1w_9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noundef nonnull %i.jo, ptr noundef %i.jp, i16 noundef %i.jn), !dbg !160669 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !160670
  call void @llvm.experimental.noalias.scope.decl(metadata !160400), !dbg !160671
  %i.jr = load i16, ptr %i.y, align 2, !dbg !160672, !alias.scope !160400, !noundef !3468 ; 6 uses
  %i.js = load atomic i64, ptr @_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache5CACHE monotonic, align 8, !dbg !160673, !noalias !160400 ; 2 uses
  %i.jt = icmp eq i64 %i.js, 0, !dbg !160674
  br i1 %i.jt, label %.split.i.i68, label %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i62, !dbg !160674, !prof !3515

.split.i.i68:                                     ; preds = %bb.br
  %i.ju = call noundef i128 @_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache21detect_and_initialize(), !dbg !160675, !noalias !160400
  %i.jv = and i128 %i.ju, 36028797018963968, !dbg !160676
  %.not1.i.i69 = icmp eq i128 %i.jv, 0, !dbg !160676
  br i1 %.not1.i.i69, label %bb.bs, label %bb.cb, !dbg !160677

_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i62: ; preds = %bb.br
  %i.jw = and i64 %i.js, 36028797018963968, !dbg !160678
  %.not.i.i63 = icmp eq i64 %i.jw, 0, !dbg !160678
  br i1 %.not.i.i63, label %bb.bs, label %bb.cb, !dbg !160677

bb.bs:                                            ; preds = %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i62, %.split.i.i68
  %i.jx = and i16 %i.jr, 32767, !dbg !160679
  %i.jy = icmp eq i16 %i.jx, 0, !dbg !160679
  br i1 %i.jy, label %bb.bt, label %bb.bu, !dbg !160679

bb.bt:                                            ; preds = %bb.bs
  %i.jz = zext i16 %i.jr to i64, !dbg !160680
  %i.ka = shl nuw i64 %i.jz, 48, !dbg !160680
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f64_fallback.exit.i.i66, !dbg !160681

bb.bu:                                            ; preds = %bb.bs
  %i.kb = and i16 %i.jr, -32768, !dbg !160682
  %i.kc = zext i16 %i.kb to i64, !dbg !160682     ; 2 uses
  %i.kd = and i16 %i.jr, 31744, !dbg !160683      ; 3 uses
  %i.ke = and i16 %i.jr, 1023, !dbg !160684       ; 3 uses
  %i.kf = zext nneg i16 %i.ke to i64, !dbg !160684 ; 3 uses
  %i.kg = icmp eq i16 %i.kd, 31744, !dbg !160685
  br i1 %i.kg, label %bb.bv, label %bb.bw, !dbg !160685

bb.bv:                                            ; preds = %bb.bu
  %i.kh = icmp eq i16 %i.ke, 0, !dbg !160686
  %i.ki = shl nuw i64 %i.kc, 48, !dbg !160687     ; 2 uses
  br i1 %i.kh, label %bb.bx, label %bb.by, !dbg !160686

bb.bw:                                            ; preds = %bb.bu
  %i.kj = shl nuw i64 %i.kc, 48, !dbg !160688     ; 2 uses
  %i.kk = icmp eq i16 %i.kd, 0, !dbg !160689
  br i1 %i.kk, label %bb.bz, label %bb.ca, !dbg !160689

bb.bx:                                            ; preds = %bb.bv
  %i.kl = or disjoint i64 %i.ki, 9218868437227405312, !dbg !160690
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f64_fallback.exit.i.i66, !dbg !160691

bb.by:                                            ; preds = %bb.bv
  %i.km = shl nuw nsw i64 %i.kf, 42, !dbg !160692
  %i.kn = or disjoint i64 %i.ki, %i.km, !dbg !160693
  %i.ko = or i64 %i.kn, 9221120237041090560, !dbg !160693
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f64_fallback.exit.i.i66, !dbg !160694

bb.bz:                                            ; preds = %bb.bw
  %i.kp = call range(i16 6, 17) i16 @llvm.ctlz.i16(i16 %i.ke, i1 false), !dbg !160695
  %i.kq = zext nneg i16 %i.kp to i32, !dbg !160695 ; 2 uses
  %i.kr = sub nuw nsw i32 1014, %i.kq, !dbg !160696
  %i.ks = zext nneg i32 %i.kr to i64, !dbg !160697
  %i.kt = shl nuw nsw i64 %i.ks, 52, !dbg !160697
  %i.ku = add nuw nsw i32 %i.kq, 37, !dbg !160698
  %i.kv = zext nneg i32 %i.ku to i64, !dbg !160699
  %i.kw = shl nuw nsw i64 %i.kf, %i.kv, !dbg !160699
  %i.kx = and i64 %i.kw, 4503599627370495, !dbg !160699
  %i.ky = or disjoint i64 %i.kx, %i.kt, !dbg !160700
  %i.kz = or disjoint i64 %i.ky, %i.kj, !dbg !160700
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f64_fallback.exit.i.i66, !dbg !160701

bb.ca:                                            ; preds = %bb.bw
  %i.la = lshr exact i16 %i.kd, 10, !dbg !160702
  %narrow.i.i.i65 = add nuw nsw i16 %i.la, 1008, !dbg !160703
  %i.lb = zext nneg i16 %narrow.i.i.i65 to i64, !dbg !160703
  %i.lc = shl nuw nsw i64 %i.lb, 52, !dbg !160704
  %i.ld = shl nuw nsw i64 %i.kf, 42, !dbg !160705
  %i.le = or disjoint i64 %i.lc, %i.ld, !dbg !160706
  %i.lf = or disjoint i64 %i.le, %i.kj, !dbg !160706
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f64_fallback.exit.i.i66, !dbg !160707

_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f64_fallback.exit.i.i66: ; preds = %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bt
  %.sroa.0.0.i.i.i67 = phi i64 [ %i.ka, %bb.bt ], [ %i.kl, %bb.bx ], [ %i.ko, %bb.by ], [ %i.kz, %bb.bz ], [ %i.lf, %bb.ca ], !dbg !160708
  %i.lg = bitcast i64 %.sroa.0.0.i.i.i67 to double, !dbg !160707
  br label %_RNvXNvNtCs2mZqlW55729_12polars_utils7float16s5_1__NtB4_4pf16NtNtCslmKYcnV0hjo_10num_traits4cast11ToPrimitive6to_f64.exit70, !dbg !160709

bb.cb:                                            ; preds = %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i62, %.split.i.i68
  %i.lh = call fastcc noundef float @_RNvNtNtNtCshdiYQzaKNQ1_4half8binary164arch3x8619f16_to_f32_x86_f16c(i16 noundef %i.jr), !dbg !160710
  %i.li = fpext float %i.lh to double, !dbg !160710
  br label %_RNvXNvNtCs2mZqlW55729_12polars_utils7float16s5_1__NtB4_4pf16NtNtCslmKYcnV0hjo_10num_traits4cast11ToPrimitive6to_f64.exit70, !dbg !160711

_RNvXNvNtCs2mZqlW55729_12polars_utils7float16s5_1__NtB4_4pf16NtNtCslmKYcnV0hjo_10num_traits4cast11ToPrimitive6to_f64.exit70: ; preds = %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f64_fallback.exit.i.i66, %bb.cb
  %.sroa.0.0.i.i64 = phi double [ %i.li, %bb.cb ], [ %i.lg, %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f64_fallback.exit.i.i66 ], !dbg !160712 ; 4 uses
  %i.lj = load atomic i64, ptr @_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache5CACHE monotonic, align 8, !dbg !160713, !noalias !160401 ; 2 uses
  %i.lk = icmp eq i64 %i.lj, 0, !dbg !160714
  br i1 %i.lk, label %.split.i.i77, label %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i71, !dbg !160714, !prof !3515

.split.i.i77:                                     ; preds = %_RNvXNvNtCs2mZqlW55729_12polars_utils7float16s5_1__NtB4_4pf16NtNtCslmKYcnV0hjo_10num_traits4cast11ToPrimitive6to_f64.exit70
  %i.ll = call noundef i128 @_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache21detect_and_initialize(), !dbg !160715, !noalias !160401
  %i.lm = and i128 %i.ll, 36028797018963968, !dbg !160716
  %.not1.i.i78 = icmp eq i128 %i.lm, 0, !dbg !160716
  br i1 %.not1.i.i78, label %bb.cc, label %bb.cl, !dbg !160717

_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i71: ; preds = %_RNvXNvNtCs2mZqlW55729_12polars_utils7float16s5_1__NtB4_4pf16NtNtCslmKYcnV0hjo_10num_traits4cast11ToPrimitive6to_f64.exit70
  %i.ln = and i64 %i.lj, 36028797018963968, !dbg !160718
  %.not.i.i72 = icmp eq i64 %i.ln, 0, !dbg !160718
  br i1 %.not.i.i72, label %bb.cc, label %bb.cl, !dbg !160717

bb.cc:                                            ; preds = %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i71, %.split.i.i77
  %i.lo = and i16 %i.jq, 32767, !dbg !160719
  %i.lp = icmp eq i16 %i.lo, 0, !dbg !160719
  br i1 %i.lp, label %bb.cd, label %bb.ce, !dbg !160719

bb.cd:                                            ; preds = %bb.cc
  %i.lq = zext i16 %i.jq to i64, !dbg !160720
  %i.lr = shl nuw i64 %i.lq, 48, !dbg !160720
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f64_fallback.exit.i.i75, !dbg !160721

bb.ce:                                            ; preds = %bb.cc
  %i.ls = and i16 %i.jq, -32768, !dbg !160722
  %i.lt = zext i16 %i.ls to i64, !dbg !160722     ; 2 uses
  %i.lu = and i16 %i.jq, 31744, !dbg !160723      ; 3 uses
  %i.lv = and i16 %i.jq, 1023, !dbg !160724       ; 3 uses
  %i.lw = zext nneg i16 %i.lv to i64, !dbg !160724 ; 3 uses
  %i.lx = icmp eq i16 %i.lu, 31744, !dbg !160725
  br i1 %i.lx, label %bb.cf, label %bb.cg, !dbg !160725

bb.cf:                                            ; preds = %bb.ce
  %i.ly = icmp eq i16 %i.lv, 0, !dbg !160726
  %i.lz = shl nuw i64 %i.lt, 48, !dbg !160727     ; 2 uses
  br i1 %i.ly, label %bb.ch, label %bb.ci, !dbg !160726

bb.cg:                                            ; preds = %bb.ce
  %i.ma = shl nuw i64 %i.lt, 48, !dbg !160728     ; 2 uses
  %i.mb = icmp eq i16 %i.lu, 0, !dbg !160729
  br i1 %i.mb, label %bb.cj, label %bb.ck, !dbg !160729

bb.ch:                                            ; preds = %bb.cf
  %i.mc = or disjoint i64 %i.lz, 9218868437227405312, !dbg !160730
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f64_fallback.exit.i.i75, !dbg !160731

bb.ci:                                            ; preds = %bb.cf
  %i.md = shl nuw nsw i64 %i.lw, 42, !dbg !160732
  %i.me = or disjoint i64 %i.lz, %i.md, !dbg !160733
  %i.mf = or i64 %i.me, 9221120237041090560, !dbg !160733
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f64_fallback.exit.i.i75, !dbg !160734

bb.cj:                                            ; preds = %bb.cg
  %i.mg = call range(i16 6, 17) i16 @llvm.ctlz.i16(i16 %i.lv, i1 false), !dbg !160735
  %i.mh = zext nneg i16 %i.mg to i32, !dbg !160735 ; 2 uses
  %i.mi = sub nuw nsw i32 1014, %i.mh, !dbg !160736
  %i.mj = zext nneg i32 %i.mi to i64, !dbg !160737
  %i.mk = shl nuw nsw i64 %i.mj, 52, !dbg !160737
  %i.ml = add nuw nsw i32 %i.mh, 37, !dbg !160738
  %i.mm = zext nneg i32 %i.ml to i64, !dbg !160739
  %i.mn = shl nuw nsw i64 %i.lw, %i.mm, !dbg !160739
  %i.mo = and i64 %i.mn, 4503599627370495, !dbg !160739
  %i.mp = or disjoint i64 %i.mo, %i.mk, !dbg !160740
  %i.mq = or disjoint i64 %i.mp, %i.ma, !dbg !160740
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f64_fallback.exit.i.i75, !dbg !160741

bb.ck:                                            ; preds = %bb.cg
  %i.mr = lshr exact i16 %i.lu, 10, !dbg !160742
  %narrow.i.i.i74 = add nuw nsw i16 %i.mr, 1008, !dbg !160743
  %i.ms = zext nneg i16 %narrow.i.i.i74 to i64, !dbg !160743
  %i.mt = shl nuw nsw i64 %i.ms, 52, !dbg !160744
  %i.mu = shl nuw nsw i64 %i.lw, 42, !dbg !160745
  %i.mv = or disjoint i64 %i.mt, %i.mu, !dbg !160746
  %i.mw = or disjoint i64 %i.mv, %i.ma, !dbg !160746
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f64_fallback.exit.i.i75, !dbg !160747

_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f64_fallback.exit.i.i75: ; preds = %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cd
  %.sroa.0.0.i.i.i76 = phi i64 [ %i.lr, %bb.cd ], [ %i.mc, %bb.ch ], [ %i.mf, %bb.ci ], [ %i.mq, %bb.cj ], [ %i.mw, %bb.ck ], !dbg !160748
  %i.mx = bitcast i64 %.sroa.0.0.i.i.i76 to double, !dbg !160747
  br label %_RNvXNvNtCs2mZqlW55729_12polars_utils7float16s5_1__NtB4_4pf16NtNtCslmKYcnV0hjo_10num_traits4cast11ToPrimitive6to_f64.exit79, !dbg !160749

bb.cl:                                            ; preds = %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i71, %.split.i.i77
  %i.my = call fastcc noundef float @_RNvNtNtNtCshdiYQzaKNQ1_4half8binary164arch3x8619f16_to_f32_x86_f16c(i16 noundef %i.jq), !dbg !160750
  %i.mz = fpext float %i.my to double, !dbg !160750
  br label %_RNvXNvNtCs2mZqlW55729_12polars_utils7float16s5_1__NtB4_4pf16NtNtCslmKYcnV0hjo_10num_traits4cast11ToPrimitive6to_f64.exit79, !dbg !160751

_RNvXNvNtCs2mZqlW55729_12polars_utils7float16s5_1__NtB4_4pf16NtNtCslmKYcnV0hjo_10num_traits4cast11ToPrimitive6to_f64.exit79: ; preds = %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f64_fallback.exit.i.i75, %bb.cl
  %.sroa.0.0.i.i73 = phi double [ %i.mz, %bb.cl ], [ %i.mx, %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f64_fallback.exit.i.i75 ], !dbg !160752 ; 2 uses
  %i.na = fcmp oeq double %.sroa.0.0.i.i64, %.sroa.0.0.i.i73, !dbg !160753
  br i1 %i.na, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.cm, !dbg !160754

bb.cm:                                            ; preds = %_RNvXNvNtCs2mZqlW55729_12polars_utils7float16s5_1__NtB4_4pf16NtNtCslmKYcnV0hjo_10num_traits4cast11ToPrimitive6to_f64.exit79
  %i.nb = uitofp i64 %.sink13.i to double, !dbg !160755
  %i.nc = fsub double %.sink11.i, %i.nb, !dbg !160756
  %i.nd = fsub double %.sroa.0.0.i.i73, %.sroa.0.0.i.i64, !dbg !160757
  %i.ne = fmul double %i.nc, %i.nd, !dbg !160758
  %i.nf = fadd double %.sroa.0.0.i.i64, %i.ne, !dbg !160759
  br label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, !dbg !160760

_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit: ; preds = %_RNvXNvNtCs2mZqlW55729_12polars_utils7float16s5_1__NtB4_4pf16NtNtCslmKYcnV0hjo_10num_traits4cast11ToPrimitive6to_f64.exit79, %bb.cm
  %.sroa.0.0.i80 = phi double [ %i.nf, %bb.cm ], [ %.sroa.0.0.i.i64, %_RNvXNvNtCs2mZqlW55729_12polars_utils7float16s5_1__NtB4_4pf16NtNtCslmKYcnV0hjo_10num_traits4cast11ToPrimitive6to_f64.exit79 ], !dbg !160761
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !160762
  store i64 1, ptr %i.ng, align 8, !dbg !160762
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !160762
  store double %.sroa.0.0.i80, ptr %i.nh, align 8, !dbg !160762
  store i64 18, ptr %0, align 8, !dbg !160762
  br label %bb.d, !dbg !160763

bb.cn:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !160670
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #46, !dbg !160764
  unreachable, !dbg !160764
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile14quantile_sliceaEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2, double noundef %3, i8 noundef range(i8 0, 6) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !160765 !guid !160820 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [40 x i8], align 8                ; 6 uses
  %i.e = fcmp oge double %3, 0.000000e+00, !dbg !160835
  %i.f = fcmp ole double %3, 1.000000e+00
  %spec.select.i = and i1 %i.e, %i.f, !dbg !160836
  br i1 %spec.select.i, label %bb.c, label %bb.b, !dbg !160837

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) @57, i64 72, i1 false), !dbg !160838
  br label %bb.d, !dbg !160839

bb.c:                                             ; preds = %bb.a
  switch i64 %2, label %bb.f [
    i64 0, label %bb.e
    i64 1, label %bb.l
  ], !dbg !160840

bb.d:                                             ; preds = %bb.n, %bb.o, %bb.r, %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, %bb.l, %bb.e, %bb.b
  ret void, !dbg !160841

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !160842
  store i64 0, ptr %i.g, align 8, !dbg !160842
  store i64 18, ptr %0, align 8, !dbg !160842
  br label %bb.d, !dbg !160839

bb.f:                                             ; preds = %bb.c
  %i.h = uitofp nneg i64 %2 to double, !dbg !160843 ; 2 uses
  %i.i = fadd nnan double %i.h, -1.000000e+00, !dbg !160844
  %i.j = fmul double %3, %i.i, !dbg !160844
  %i.k = fadd double %i.j, 0.000000e+00, !dbg !160844 ; 5 uses
  switch i8 %4, label %default.unreachable [
    i8 0, label %bb.g
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.h
    i8 4, label %bb.h
    i8 5, label %bb.j
  ], !dbg !160845

default.unreachable:                              ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = tail call double @llvm.round.f64(double %i.k), !dbg !160846
  %i.m = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.l), !dbg !160847
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !160848

bb.h:                                             ; preds = %bb.f, %bb.f, %bb.f
  %i.n = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.k), !dbg !160849
  %.pre.i = tail call double @llvm.ceil.f64(double %i.k), !dbg !160850
  %.pre7.i = tail call i64 @llvm.fptoui.sat.i64.f64(double %.pre.i), !dbg !160851
  br label %bb.k, !dbg !160852

bb.i:                                             ; preds = %bb.f
  %i.o = tail call double @llvm.ceil.f64(double %i.k), !dbg !160853
  %i.p = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.o), !dbg !160854 ; 2 uses
  br label %bb.k, !dbg !160855

bb.j:                                             ; preds = %bb.f
  %i.q = fmul nnan double %3, %i.h, !dbg !160856
  %i.r = tail call double @llvm.ceil.f64(double %i.q), !dbg !160857
  %i.s = fadd double %i.r, -1.000000e+00, !dbg !160858
  %i.t = tail call nsz double @llvm.maximumnum.f64(double %i.s, double 0.000000e+00), !dbg !160859
  %i.u = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.t), !dbg !160858
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !160848

bb.k:                                             ; preds = %bb.i, %bb.h
  %.pre-phi8.i = phi i64 [ %i.p, %bb.i ], [ %.pre7.i, %bb.h ], !dbg !160851
  %.sroa.0.0.i = phi i64 [ %i.p, %bb.i ], [ %i.n, %bb.h ], !dbg !160860
  %i.v = add nsw i64 %2, -1, !dbg !160861
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i, i64 %i.v), !dbg !160862 ; 2 uses
  %i.w = icmp eq i64 %.sroa.0.0.i.i, %.pre-phi8.i, !dbg !160863
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !160864

_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit: ; preds = %bb.g, %bb.j, %bb.k
  %.sink13.i = phi i64 [ %i.m, %bb.g ], [ %i.u, %bb.j ], [ %.sroa.0.0.i.i, %bb.k ] ; 2 uses
  %.sink11.i = phi double [ 0.000000e+00, %bb.g ], [ 0.000000e+00, %bb.j ], [ %i.k, %bb.k ]
  %.sink.i = phi i1 [ true, %bb.g ], [ true, %bb.j ], [ %i.w, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !160865
  call void @_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select18partition_at_indexaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noalias noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef %.sink13.i, ptr noalias noundef nonnull %i.a), !dbg !160866
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !160867
  %i.y = load ptr, ptr %i.x, align 8, !dbg !160867, !nonnull !3468, !noundef !3468 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !160868
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !160868, !nonnull !3468, !noundef !3468 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 32, !dbg !160868
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !160868, !noundef !3468 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !160869
  br i1 %.sink.i, label %bb.n, label %bb.m, !dbg !160863

bb.l:                                             ; preds = %bb.c
  %.val26 = load i8, ptr %1, align 1, !dbg !160870, !noundef !3468
  %i.ad = sitofp i8 %.val26 to double, !dbg !160871
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !160872
  store i64 1, ptr %i.ae, align 8, !dbg !160872
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !160872
  store double %i.ad, ptr %i.af, align 8, !dbg !160872
  store i64 18, ptr %0, align 8, !dbg !160872
  br label %bb.d, !dbg !160839

bb.m:                                             ; preds = %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit
  switch i8 %4, label %bb.o [
    i8 3, label %bb.p
    i8 4, label %bb.q
  ], !dbg !160873

bb.n:                                             ; preds = %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit
  %.val25 = load i8, ptr %i.y, align 1, !dbg !160874, !noundef !3468
  %i.ag = sitofp i8 %.val25 to double, !dbg !160875
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !160876
  store i64 1, ptr %i.ah, align 8, !dbg !160876
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !160876
  store double %i.ag, ptr %i.ai, align 8, !dbg !160876
  store i64 18, ptr %0, align 8, !dbg !160876
  br label %bb.d, !dbg !160877

bb.o:                                             ; preds = %bb.m
  %.val24 = load i8, ptr %i.y, align 1, !dbg !160878, !noundef !3468
  %i.aj = sitofp i8 %.val24 to double, !dbg !160879
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !160880
  store i64 1, ptr %i.ak, align 8, !dbg !160880
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !160880
  store double %i.aj, ptr %i.al, align 8, !dbg !160880
  store i64 18, ptr %0, align 8, !dbg !160880
  br label %bb.d, !dbg !160881

bb.p:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ac, !dbg !160882
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.aa, ptr %i.c, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.am, ptr %i.an, align 8
  %i.ao = call { i1, i8 } @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IteraEENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c), !dbg !160883 ; 2 uses
  %i.ap = extractvalue { i1, i8 } %i.ao, 0, !dbg !160884
  br i1 %i.ap, label %bb.r, label %bb.s, !dbg !160885

bb.q:                                             ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ac, !dbg !160886
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.aa, ptr %i.b, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.aq, ptr %i.ar, align 8
  %i.as = call { i1, i8 } @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IteraEENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b), !dbg !160887 ; 2 uses
  %i.at = extractvalue { i1, i8 } %i.as, 0, !dbg !160888
  br i1 %i.at, label %bb.t, label %bb.v, !dbg !160889

bb.r:                                             ; preds = %bb.p
  %i.au = extractvalue { i1, i8 } %i.ao, 1, !dbg !160884
  %i.av = load ptr, ptr %i.c, align 8, !dbg !160890, !nonnull !3468, !noundef !3468
  %i.aw = load ptr, ptr %i.an, align 8, !dbg !160890, !noundef !3468
  %i.ax = call noundef i8 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IteraEENtNtNtB9_6traits8iterator8Iterator4foldaNCINvNvB1v_6min_by4foldaNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noundef nonnull %i.av, ptr noundef %i.aw, i8 noundef %i.au), !dbg !160891
  %i.ay = sitofp i8 %i.ax to double, !dbg !160892 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !160893
  %.val23 = load i8, ptr %i.y, align 1, !dbg !160894, !noundef !3468
  %i.az = sitofp i8 %.val23 to double, !dbg !160895 ; 3 uses
  %i.ba = fcmp oeq double %i.ay, %i.az, !dbg !160896
  %i.bb = fadd nnan double %i.ay, %i.az, !dbg !160897
  %i.bc = fmul nnan double %i.bb, 5.000000e-01, !dbg !160897
  %.sroa.0.0.i29 = select i1 %i.ba, double %i.az, double %i.bc, !dbg !160897
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !160898
  store i64 1, ptr %i.bd, align 8, !dbg !160898
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !160898
  store double %.sroa.0.0.i29, ptr %i.be, align 8, !dbg !160898
  store i64 18, ptr %0, align 8, !dbg !160898
  br label %bb.d, !dbg !160899

bb.s:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !160893
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #46, !dbg !160900
  unreachable, !dbg !160900

bb.t:                                             ; preds = %bb.q
  %i.bf = extractvalue { i1, i8 } %i.as, 1, !dbg !160888
  %i.bg = load ptr, ptr %i.b, align 8, !dbg !160901, !nonnull !3468, !noundef !3468
  %i.bh = load ptr, ptr %i.ar, align 8, !dbg !160901, !noundef !3468
  %i.bi = call noundef i8 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IteraEENtNtNtB9_6traits8iterator8Iterator4foldaNCINvNvB1v_6min_by4foldaNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noundef nonnull %i.bg, ptr noundef %i.bh, i8 noundef %i.bf), !dbg !160902
  %i.bj = sitofp i8 %i.bi to double, !dbg !160903 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !160904
  %.val21 = load i8, ptr %i.y, align 1, !dbg !160905, !noundef !3468
  %i.bk = sitofp i8 %.val21 to double, !dbg !160906 ; 4 uses
  %i.bl = fcmp oeq double %i.bj, %i.bk, !dbg !160907
  br i1 %i.bl, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.u, !dbg !160908

bb.u:                                             ; preds = %bb.t
  %i.bm = uitofp i64 %.sink13.i to double, !dbg !160909
  %i.bn = fsub double %.sink11.i, %i.bm, !dbg !160910
  %i.bo = fsub nnan double %i.bj, %i.bk, !dbg !160911
  %i.bp = fmul double %i.bn, %i.bo, !dbg !160912
  %i.bq = fadd double %i.bp, %i.bk, !dbg !160913
  br label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, !dbg !160914

_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit: ; preds = %bb.t, %bb.u
  %.sroa.0.0.i30 = phi double [ %i.bq, %bb.u ], [ %i.bk, %bb.t ], !dbg !160915
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !160916
  store i64 1, ptr %i.br, align 8, !dbg !160916
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !160916
  store double %.sroa.0.0.i30, ptr %i.bs, align 8, !dbg !160916
  store i64 18, ptr %0, align 8, !dbg !160916
  br label %bb.d, !dbg !160917

bb.v:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !160904
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #46, !dbg !160918
  unreachable, !dbg !160918
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile14quantile_slicedEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull align 8 %1, i64 noundef range(i64 0, 1152921504606846976) %2, double noundef %3, i8 noundef range(i8 0, 6) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !160919 !guid !160967 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [40 x i8], align 8                ; 6 uses
  %i.e = fcmp oge double %3, 0.000000e+00, !dbg !160982
  %i.f = fcmp ole double %3, 1.000000e+00
  %spec.select.i = and i1 %i.e, %i.f, !dbg !160983
  br i1 %spec.select.i, label %bb.c, label %bb.b, !dbg !160984

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) @57, i64 72, i1 false), !dbg !160985
  br label %bb.d, !dbg !160986

bb.c:                                             ; preds = %bb.a
  switch i64 %2, label %bb.f [
    i64 0, label %bb.e
    i64 1, label %bb.l
  ], !dbg !160987

bb.d:                                             ; preds = %bb.n, %bb.o, %bb.r, %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, %bb.l, %bb.e, %bb.b
  ret void, !dbg !160988

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !160989
  store i64 0, ptr %i.g, align 8, !dbg !160989
  store i64 18, ptr %0, align 8, !dbg !160989
  br label %bb.d, !dbg !160986

bb.f:                                             ; preds = %bb.c
  %i.h = uitofp nneg i64 %2 to double, !dbg !160990 ; 2 uses
  %i.i = fadd nnan double %i.h, -1.000000e+00, !dbg !160991
  %i.j = fmul double %3, %i.i, !dbg !160991
  %i.k = fadd double %i.j, 0.000000e+00, !dbg !160991 ; 5 uses
  switch i8 %4, label %default.unreachable [
    i8 0, label %bb.g
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.h
    i8 4, label %bb.h
    i8 5, label %bb.j
  ], !dbg !160992

default.unreachable:                              ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = tail call double @llvm.round.f64(double %i.k), !dbg !160993
  %i.m = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.l), !dbg !160994
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !160995

bb.h:                                             ; preds = %bb.f, %bb.f, %bb.f
  %i.n = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.k), !dbg !160996
  %.pre.i = tail call double @llvm.ceil.f64(double %i.k), !dbg !160997
  %.pre7.i = tail call i64 @llvm.fptoui.sat.i64.f64(double %.pre.i), !dbg !160998
  br label %bb.k, !dbg !160999

bb.i:                                             ; preds = %bb.f
  %i.o = tail call double @llvm.ceil.f64(double %i.k), !dbg !161000
  %i.p = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.o), !dbg !161001 ; 2 uses
  br label %bb.k, !dbg !161002

bb.j:                                             ; preds = %bb.f
  %i.q = fmul nnan double %3, %i.h, !dbg !161003
  %i.r = tail call double @llvm.ceil.f64(double %i.q), !dbg !161004
  %i.s = fadd double %i.r, -1.000000e+00, !dbg !161005
  %i.t = tail call nsz double @llvm.maximumnum.f64(double %i.s, double 0.000000e+00), !dbg !161006
  %i.u = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.t), !dbg !161005
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !160995

bb.k:                                             ; preds = %bb.i, %bb.h
  %.pre-phi8.i = phi i64 [ %i.p, %bb.i ], [ %.pre7.i, %bb.h ], !dbg !160998
  %.sroa.0.0.i = phi i64 [ %i.p, %bb.i ], [ %i.n, %bb.h ], !dbg !161007
  %i.v = add nsw i64 %2, -1, !dbg !161008
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i, i64 %i.v), !dbg !161009 ; 2 uses
  %i.w = icmp eq i64 %.sroa.0.0.i.i, %.pre-phi8.i, !dbg !161010
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !161011

_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit: ; preds = %bb.g, %bb.j, %bb.k
  %.sink13.i = phi i64 [ %i.m, %bb.g ], [ %i.u, %bb.j ], [ %.sroa.0.0.i.i, %bb.k ] ; 2 uses
  %.sink11.i = phi double [ 0.000000e+00, %bb.g ], [ 0.000000e+00, %bb.j ], [ %i.k, %bb.k ]
  %.sink.i = phi i1 [ true, %bb.g ], [ true, %bb.j ], [ %i.w, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !161012
  call void @_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select18partition_at_indexdNCINvMB6_Sd22select_nth_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noalias noundef nonnull align 8 %1, i64 noundef range(i64 0, 1152921504606846976) %2, i64 noundef %.sink13.i, ptr noalias noundef nonnull %i.a), !dbg !161013
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !161014
  %i.y = load ptr, ptr %i.x, align 8, !dbg !161014, !nonnull !3468, !align !3637, !noundef !3468 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !161015
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !161015, !nonnull !3468, !align !3637, !noundef !3468 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 32, !dbg !161015
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !161015, !noundef !3468 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !161016
  br i1 %.sink.i, label %bb.n, label %bb.m, !dbg !161010

bb.l:                                             ; preds = %bb.c
  %.val26 = load double, ptr %1, align 8, !dbg !161017, !noundef !3468
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !161018
  store i64 1, ptr %i.ad, align 8, !dbg !161018
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !161018
  store double %.val26, ptr %i.ae, align 8, !dbg !161018
  store i64 18, ptr %0, align 8, !dbg !161018
  br label %bb.d, !dbg !160986

bb.m:                                             ; preds = %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit
  switch i8 %4, label %bb.o [
    i8 3, label %bb.p
    i8 4, label %bb.q
  ], !dbg !161019

bb.n:                                             ; preds = %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit
  %.val25 = load double, ptr %i.y, align 8, !dbg !161020, !noundef !3468
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !161021
  store i64 1, ptr %i.af, align 8, !dbg !161021
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !161021
  store double %.val25, ptr %i.ag, align 8, !dbg !161021
  store i64 18, ptr %0, align 8, !dbg !161021
  br label %bb.d, !dbg !161022

bb.o:                                             ; preds = %bb.m
  %.val24 = load double, ptr %i.y, align 8, !dbg !161023, !noundef !3468
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !161024
  store i64 1, ptr %i.ah, align 8, !dbg !161024
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !161024
  store double %.val24, ptr %i.ai, align 8, !dbg !161024
  store i64 18, ptr %0, align 8, !dbg !161024
  br label %bb.d, !dbg !161025

bb.p:                                             ; preds = %bb.m
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ac, !dbg !161026
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.aa, ptr %i.c, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.aj, ptr %i.ak, align 8
  %i.al = call { i64, double } @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterdEENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c), !dbg !161027 ; 2 uses
  %i.am = extractvalue { i64, double } %i.al, 0, !dbg !161028
  %i.an = trunc nuw i64 %i.am to i1, !dbg !161029
  br i1 %i.an, label %bb.r, label %bb.s, !dbg !161029

bb.q:                                             ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ac, !dbg !161030
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.aa, ptr %i.b, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.ao, ptr %i.ap, align 8
  %i.aq = call { i64, double } @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterdEENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b), !dbg !161031 ; 2 uses
  %i.ar = extractvalue { i64, double } %i.aq, 0, !dbg !161032
  %i.as = trunc nuw i64 %i.ar to i1, !dbg !161033
  br i1 %i.as, label %bb.t, label %bb.v, !dbg !161033

bb.r:                                             ; preds = %bb.p
  %i.at = extractvalue { i64, double } %i.al, 1, !dbg !161028
  %i.au = load ptr, ptr %i.c, align 8, !dbg !161034, !nonnull !3468, !noundef !3468
  %i.av = load ptr, ptr %i.ak, align 8, !dbg !161034, !noundef !3468
  %i.aw = call noundef double @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterdEENtNtNtB9_6traits8iterator8Iterator4folddNCINvNvB1v_6min_by4folddNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noundef nonnull %i.au, ptr noundef %i.av, double noundef %i.at), !dbg !161035 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !161036
  %.val23 = load double, ptr %i.y, align 8, !dbg !161037, !noundef !3468 ; 3 uses
  %i.ax = fcmp oeq double %.val23, %i.aw, !dbg !161038
  %i.ay = fadd double %i.aw, %.val23, !dbg !161039
  %i.az = fmul double %i.ay, 5.000000e-01, !dbg !161039
  %.sroa.0.0.i31 = select i1 %i.ax, double %.val23, double %i.az, !dbg !161039
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !161040
  store i64 1, ptr %i.ba, align 8, !dbg !161040
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !161040
  store double %.sroa.0.0.i31, ptr %i.bb, align 8, !dbg !161040
  store i64 18, ptr %0, align 8, !dbg !161040
  br label %bb.d, !dbg !161041

bb.s:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !161036
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #46, !dbg !161042
  unreachable, !dbg !161042

bb.t:                                             ; preds = %bb.q
  %i.bc = extractvalue { i64, double } %i.aq, 1, !dbg !161032
  %i.bd = load ptr, ptr %i.b, align 8, !dbg !161043, !nonnull !3468, !noundef !3468
  %i.be = load ptr, ptr %i.ap, align 8, !dbg !161043, !noundef !3468
  %i.bf = call noundef double @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterdEENtNtNtB9_6traits8iterator8Iterator4folddNCINvNvB1v_6min_by4folddNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noundef nonnull %i.bd, ptr noundef %i.be, double noundef %i.bc), !dbg !161044 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !161045
  %.val21 = load double, ptr %i.y, align 8, !dbg !161046, !noundef !3468 ; 4 uses
  %i.bg = fcmp oeq double %.val21, %i.bf, !dbg !161047
  br i1 %i.bg, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.u, !dbg !161048

bb.u:                                             ; preds = %bb.t
  %i.bh = uitofp i64 %.sink13.i to double, !dbg !161049
  %i.bi = fsub double %.sink11.i, %i.bh, !dbg !161050
  %i.bj = fsub double %i.bf, %.val21, !dbg !161051
  %i.bk = fmul double %i.bi, %i.bj, !dbg !161052
  %i.bl = fadd double %.val21, %i.bk, !dbg !161053
  br label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, !dbg !161054

_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit: ; preds = %bb.t, %bb.u
  %.sroa.0.0.i32 = phi double [ %i.bl, %bb.u ], [ %.val21, %bb.t ], !dbg !161055
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !161056
  store i64 1, ptr %i.bm, align 8, !dbg !161056
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !161056
  store double %.sroa.0.0.i32, ptr %i.bn, align 8, !dbg !161056
  store i64 18, ptr %0, align 8, !dbg !161056
  br label %bb.d, !dbg !161057

bb.v:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !161045
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #46, !dbg !161058
  unreachable, !dbg !161058
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile14quantile_slicefEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull align 4 %1, i64 noundef range(i64 0, 2305843009213693952) %2, double noundef %3, i8 noundef range(i8 0, 6) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !161059 !guid !161114 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [40 x i8], align 8                ; 6 uses
  %i.e = fcmp oge double %3, 0.000000e+00, !dbg !161129
  %i.f = fcmp ole double %3, 1.000000e+00
  %spec.select.i = and i1 %i.e, %i.f, !dbg !161130
  br i1 %spec.select.i, label %bb.c, label %bb.b, !dbg !161131

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) @57, i64 72, i1 false), !dbg !161132
  br label %bb.d, !dbg !161133

bb.c:                                             ; preds = %bb.a
  switch i64 %2, label %bb.f [
    i64 0, label %bb.e
    i64 1, label %bb.l
  ], !dbg !161134

bb.d:                                             ; preds = %bb.n, %bb.o, %bb.r, %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, %bb.l, %bb.e, %bb.b
  ret void, !dbg !161135

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !161136
  store i64 0, ptr %i.g, align 8, !dbg !161136
  store i64 18, ptr %0, align 8, !dbg !161136
  br label %bb.d, !dbg !161133

bb.f:                                             ; preds = %bb.c
  %i.h = uitofp nneg i64 %2 to double, !dbg !161137 ; 2 uses
  %i.i = fadd nnan double %i.h, -1.000000e+00, !dbg !161138
  %i.j = fmul double %3, %i.i, !dbg !161138
  %i.k = fadd double %i.j, 0.000000e+00, !dbg !161138 ; 5 uses
  switch i8 %4, label %default.unreachable [
    i8 0, label %bb.g
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.h
    i8 4, label %bb.h
    i8 5, label %bb.j
  ], !dbg !161139

default.unreachable:                              ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = tail call double @llvm.round.f64(double %i.k), !dbg !161140
  %i.m = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.l), !dbg !161141
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !161142

bb.h:                                             ; preds = %bb.f, %bb.f, %bb.f
  %i.n = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.k), !dbg !161143
  %.pre.i = tail call double @llvm.ceil.f64(double %i.k), !dbg !161144
  %.pre7.i = tail call i64 @llvm.fptoui.sat.i64.f64(double %.pre.i), !dbg !161145
  br label %bb.k, !dbg !161146

bb.i:                                             ; preds = %bb.f
  %i.o = tail call double @llvm.ceil.f64(double %i.k), !dbg !161147
  %i.p = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.o), !dbg !161148 ; 2 uses
  br label %bb.k, !dbg !161149

bb.j:                                             ; preds = %bb.f
  %i.q = fmul nnan double %3, %i.h, !dbg !161150
  %i.r = tail call double @llvm.ceil.f64(double %i.q), !dbg !161151
  %i.s = fadd double %i.r, -1.000000e+00, !dbg !161152
  %i.t = tail call nsz double @llvm.maximumnum.f64(double %i.s, double 0.000000e+00), !dbg !161153
  %i.u = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.t), !dbg !161152
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !161142

bb.k:                                             ; preds = %bb.i, %bb.h
  %.pre-phi8.i = phi i64 [ %i.p, %bb.i ], [ %.pre7.i, %bb.h ], !dbg !161145
  %.sroa.0.0.i = phi i64 [ %i.p, %bb.i ], [ %i.n, %bb.h ], !dbg !161154
  %i.v = add nsw i64 %2, -1, !dbg !161155
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i, i64 %i.v), !dbg !161156 ; 2 uses
  %i.w = icmp eq i64 %.sroa.0.0.i.i, %.pre-phi8.i, !dbg !161157
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !161158

_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit: ; preds = %bb.g, %bb.j, %bb.k
  %.sink13.i = phi i64 [ %i.m, %bb.g ], [ %i.u, %bb.j ], [ %.sroa.0.0.i.i, %bb.k ] ; 2 uses
  %.sink11.i = phi double [ 0.000000e+00, %bb.g ], [ 0.000000e+00, %bb.j ], [ %i.k, %bb.k ]
  %.sink.i = phi i1 [ true, %bb.g ], [ true, %bb.j ], [ %i.w, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !161159
  call void @_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select18partition_at_indexfNCINvMB6_Sf22select_nth_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noalias noundef nonnull align 4 %1, i64 noundef range(i64 0, 2305843009213693952) %2, i64 noundef %.sink13.i, ptr noalias noundef nonnull %i.a), !dbg !161160
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !161161
  %i.y = load ptr, ptr %i.x, align 8, !dbg !161161, !nonnull !3468, !align !3838, !noundef !3468 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !161162
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !161162, !nonnull !3468, !align !3838, !noundef !3468 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 32, !dbg !161162
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !161162, !noundef !3468 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !161163
  br i1 %.sink.i, label %bb.n, label %bb.m, !dbg !161157

bb.l:                                             ; preds = %bb.c
  %.val26 = load float, ptr %1, align 4, !dbg !161164, !noundef !3468
  %i.ad = fpext float %.val26 to double, !dbg !161165
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !161166
  store i64 1, ptr %i.ae, align 8, !dbg !161166
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !161166
  store double %i.ad, ptr %i.af, align 8, !dbg !161166
  store i64 18, ptr %0, align 8, !dbg !161166
  br label %bb.d, !dbg !161133

bb.m:                                             ; preds = %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit
  switch i8 %4, label %bb.o [
    i8 3, label %bb.p
    i8 4, label %bb.q
  ], !dbg !161167

bb.n:                                             ; preds = %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit
  %.val25 = load float, ptr %i.y, align 4, !dbg !161168, !noundef !3468
  %i.ag = fpext float %.val25 to double, !dbg !161169
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !161170
  store i64 1, ptr %i.ah, align 8, !dbg !161170
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !161170
  store double %i.ag, ptr %i.ai, align 8, !dbg !161170
  store i64 18, ptr %0, align 8, !dbg !161170
  br label %bb.d, !dbg !161171

bb.o:                                             ; preds = %bb.m
  %.val24 = load float, ptr %i.y, align 4, !dbg !161172, !noundef !3468
  %i.aj = fpext float %.val24 to double, !dbg !161173
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !161174
  store i64 1, ptr %i.ak, align 8, !dbg !161174
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !161174
  store double %i.aj, ptr %i.al, align 8, !dbg !161174
  store i64 18, ptr %0, align 8, !dbg !161174
  br label %bb.d, !dbg !161175

bb.p:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ac, !dbg !161176
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.aa, ptr %i.c, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.am, ptr %i.an, align 8
  %i.ao = call { i32, float } @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c), !dbg !161177 ; 2 uses
  %i.ap = extractvalue { i32, float } %i.ao, 0, !dbg !161178
  %i.aq = trunc i32 %i.ap to i1, !dbg !161179
  br i1 %i.aq, label %bb.r, label %bb.s, !dbg !161179

bb.q:                                             ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ac, !dbg !161180
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.aa, ptr %i.b, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.ar, ptr %i.as, align 8
  %i.at = call { i32, float } @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b), !dbg !161181 ; 2 uses
  %i.au = extractvalue { i32, float } %i.at, 0, !dbg !161182
  %i.av = trunc i32 %i.au to i1, !dbg !161183
  br i1 %i.av, label %bb.t, label %bb.v, !dbg !161183

bb.r:                                             ; preds = %bb.p
  %i.aw = extractvalue { i32, float } %i.ao, 1, !dbg !161178
  %i.ax = load ptr, ptr %i.c, align 8, !dbg !161184, !nonnull !3468, !noundef !3468
  %i.ay = load ptr, ptr %i.an, align 8, !dbg !161184, !noundef !3468
  %i.az = call noundef float @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterfEENtNtNtB9_6traits8iterator8Iterator4foldfNCINvNvB1v_6min_by4foldfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noundef nonnull %i.ax, ptr noundef %i.ay, float noundef %i.aw), !dbg !161185 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !161186
  %.val23 = load float, ptr %i.y, align 4, !dbg !161187, !noundef !3468 ; 2 uses
  %i.ba = fpext float %.val23 to double, !dbg !161188 ; 2 uses
  %i.bb = fpext float %i.az to double, !dbg !161189
  %i.bc = fcmp oeq float %.val23, %i.az, !dbg !161190
  %i.bd = fadd double %i.bb, %i.ba, !dbg !161191
  %i.be = fmul double %i.bd, 5.000000e-01, !dbg !161191
  %.sroa.0.0.i31 = select i1 %i.bc, double %i.ba, double %i.be, !dbg !161191
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !161192
  store i64 1, ptr %i.bf, align 8, !dbg !161192
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !161192
  store double %.sroa.0.0.i31, ptr %i.bg, align 8, !dbg !161192
  store i64 18, ptr %0, align 8, !dbg !161192
  br label %bb.d, !dbg !161193

bb.s:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !161186
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #46, !dbg !161194
  unreachable, !dbg !161194

bb.t:                                             ; preds = %bb.q
  %i.bh = extractvalue { i32, float } %i.at, 1, !dbg !161182
  %i.bi = load ptr, ptr %i.b, align 8, !dbg !161195, !nonnull !3468, !noundef !3468
  %i.bj = load ptr, ptr %i.as, align 8, !dbg !161195, !noundef !3468
  %i.bk = call noundef float @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterfEENtNtNtB9_6traits8iterator8Iterator4foldfNCINvNvB1v_6min_by4foldfNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noundef nonnull %i.bi, ptr noundef %i.bj, float noundef %i.bh), !dbg !161196 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !161197
  %.val21 = load float, ptr %i.y, align 4, !dbg !161198, !noundef !3468 ; 2 uses
  %i.bl = fpext float %.val21 to double, !dbg !161199 ; 3 uses
  %i.bm = fcmp oeq float %.val21, %i.bk, !dbg !161200
  br i1 %i.bm, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.u, !dbg !161201

bb.u:                                             ; preds = %bb.t
  %i.bn = fpext float %i.bk to double, !dbg !161202
  %i.bo = uitofp i64 %.sink13.i to double, !dbg !161203
  %i.bp = fsub double %.sink11.i, %i.bo, !dbg !161204
  %i.bq = fsub double %i.bn, %i.bl, !dbg !161205
  %i.br = fmul double %i.bp, %i.bq, !dbg !161206
  %i.bs = fadd double %i.br, %i.bl, !dbg !161207
  br label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, !dbg !161208

_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit: ; preds = %bb.t, %bb.u
  %.sroa.0.0.i32 = phi double [ %i.bs, %bb.u ], [ %i.bl, %bb.t ], !dbg !161209
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !161210
  store i64 1, ptr %i.bt, align 8, !dbg !161210
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !161210
  store double %.sroa.0.0.i32, ptr %i.bu, align 8, !dbg !161210
  store i64 18, ptr %0, align 8, !dbg !161210
  br label %bb.d, !dbg !161211

bb.v:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !161197
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #46, !dbg !161212
  unreachable, !dbg !161212
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile14quantile_slicehEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2, double noundef %3, i8 noundef range(i8 0, 6) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !161213 !guid !161268 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [40 x i8], align 8                ; 6 uses
  %i.e = fcmp oge double %3, 0.000000e+00, !dbg !161283
  %i.f = fcmp ole double %3, 1.000000e+00
  %spec.select.i = and i1 %i.e, %i.f, !dbg !161284
  br i1 %spec.select.i, label %bb.c, label %bb.b, !dbg !161285

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) @57, i64 72, i1 false), !dbg !161286
  br label %bb.d, !dbg !161287

bb.c:                                             ; preds = %bb.a
  switch i64 %2, label %bb.f [
    i64 0, label %bb.e
    i64 1, label %bb.l
  ], !dbg !161288

bb.d:                                             ; preds = %bb.n, %bb.o, %bb.r, %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, %bb.l, %bb.e, %bb.b
  ret void, !dbg !161289

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !161290
  store i64 0, ptr %i.g, align 8, !dbg !161290
  store i64 18, ptr %0, align 8, !dbg !161290
  br label %bb.d, !dbg !161287

bb.f:                                             ; preds = %bb.c
  %i.h = uitofp nneg i64 %2 to double, !dbg !161291 ; 2 uses
  %i.i = fadd nnan double %i.h, -1.000000e+00, !dbg !161292
  %i.j = fmul double %3, %i.i, !dbg !161292
  %i.k = fadd double %i.j, 0.000000e+00, !dbg !161292 ; 5 uses
  switch i8 %4, label %default.unreachable [
    i8 0, label %bb.g
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.h
    i8 4, label %bb.h
    i8 5, label %bb.j
  ], !dbg !161293

default.unreachable:                              ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = tail call double @llvm.round.f64(double %i.k), !dbg !161294
  %i.m = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.l), !dbg !161295
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !161296

bb.h:                                             ; preds = %bb.f, %bb.f, %bb.f
  %i.n = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.k), !dbg !161297
  %.pre.i = tail call double @llvm.ceil.f64(double %i.k), !dbg !161298
  %.pre7.i = tail call i64 @llvm.fptoui.sat.i64.f64(double %.pre.i), !dbg !161299
  br label %bb.k, !dbg !161300

bb.i:                                             ; preds = %bb.f
  %i.o = tail call double @llvm.ceil.f64(double %i.k), !dbg !161301
  %i.p = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.o), !dbg !161302 ; 2 uses
  br label %bb.k, !dbg !161303

bb.j:                                             ; preds = %bb.f
  %i.q = fmul nnan double %3, %i.h, !dbg !161304
  %i.r = tail call double @llvm.ceil.f64(double %i.q), !dbg !161305
  %i.s = fadd double %i.r, -1.000000e+00, !dbg !161306
  %i.t = tail call nsz double @llvm.maximumnum.f64(double %i.s, double 0.000000e+00), !dbg !161307
  %i.u = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.t), !dbg !161306
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !161296

bb.k:                                             ; preds = %bb.i, %bb.h
  %.pre-phi8.i = phi i64 [ %i.p, %bb.i ], [ %.pre7.i, %bb.h ], !dbg !161299
  %.sroa.0.0.i = phi i64 [ %i.p, %bb.i ], [ %i.n, %bb.h ], !dbg !161308
  %i.v = add nsw i64 %2, -1, !dbg !161309
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i, i64 %i.v), !dbg !161310 ; 2 uses
  %i.w = icmp eq i64 %.sroa.0.0.i.i, %.pre-phi8.i, !dbg !161311
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !161312

_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit: ; preds = %bb.g, %bb.j, %bb.k
  %.sink13.i = phi i64 [ %i.m, %bb.g ], [ %i.u, %bb.j ], [ %.sroa.0.0.i.i, %bb.k ] ; 2 uses
  %.sink11.i = phi double [ 0.000000e+00, %bb.g ], [ 0.000000e+00, %bb.j ], [ %i.k, %bb.k ]
  %.sink.i = phi i1 [ true, %bb.g ], [ true, %bb.j ], [ %i.w, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !161313
  call void @_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select18partition_at_indexhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noalias noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef %.sink13.i, ptr noalias noundef nonnull %i.a), !dbg !161314
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !161315
  %i.y = load ptr, ptr %i.x, align 8, !dbg !161315, !nonnull !3468, !noundef !3468 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !161316
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !161316, !nonnull !3468, !noundef !3468 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 32, !dbg !161316
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !161316, !noundef !3468 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !161317
  br i1 %.sink.i, label %bb.n, label %bb.m, !dbg !161311

bb.l:                                             ; preds = %bb.c
  %.val26 = load i8, ptr %1, align 1, !dbg !161318, !noundef !3468
  %i.ad = uitofp i8 %.val26 to double, !dbg !161319
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !161320
  store i64 1, ptr %i.ae, align 8, !dbg !161320
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !161320
  store double %i.ad, ptr %i.af, align 8, !dbg !161320
  store i64 18, ptr %0, align 8, !dbg !161320
  br label %bb.d, !dbg !161287

bb.m:                                             ; preds = %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit
  switch i8 %4, label %bb.o [
    i8 3, label %bb.p
    i8 4, label %bb.q
  ], !dbg !161321

bb.n:                                             ; preds = %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit
  %.val25 = load i8, ptr %i.y, align 1, !dbg !161322, !noundef !3468
  %i.ag = uitofp i8 %.val25 to double, !dbg !161323
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !161324
  store i64 1, ptr %i.ah, align 8, !dbg !161324
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !161324
  store double %i.ag, ptr %i.ai, align 8, !dbg !161324
  store i64 18, ptr %0, align 8, !dbg !161324
  br label %bb.d, !dbg !161325

bb.o:                                             ; preds = %bb.m
  %.val24 = load i8, ptr %i.y, align 1, !dbg !161326, !noundef !3468
  %i.aj = uitofp i8 %.val24 to double, !dbg !161327
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !161328
  store i64 1, ptr %i.ak, align 8, !dbg !161328
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !161328
  store double %i.aj, ptr %i.al, align 8, !dbg !161328
  store i64 18, ptr %0, align 8, !dbg !161328
  br label %bb.d, !dbg !161329

bb.p:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ac, !dbg !161330
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.aa, ptr %i.c, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.am, ptr %i.an, align 8
  %i.ao = call { i1, i8 } @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c), !dbg !161331 ; 2 uses
  %i.ap = extractvalue { i1, i8 } %i.ao, 0, !dbg !161332
  br i1 %i.ap, label %bb.r, label %bb.s, !dbg !161333

bb.q:                                             ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ac, !dbg !161334
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.aa, ptr %i.b, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.aq, ptr %i.ar, align 8
  %i.as = call { i1, i8 } @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b), !dbg !161335 ; 2 uses
  %i.at = extractvalue { i1, i8 } %i.as, 0, !dbg !161336
  br i1 %i.at, label %bb.t, label %bb.v, !dbg !161337

bb.r:                                             ; preds = %bb.p
  %i.au = extractvalue { i1, i8 } %i.ao, 1, !dbg !161332
  %i.av = load ptr, ptr %i.c, align 8, !dbg !161338, !nonnull !3468, !noundef !3468
  %i.aw = load ptr, ptr %i.an, align 8, !dbg !161338, !noundef !3468
  %i.ax = call noundef i8 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator4foldhNCINvNvB1v_6min_by4foldhNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noundef nonnull %i.av, ptr noundef %i.aw, i8 noundef %i.au), !dbg !161339
  %i.ay = uitofp i8 %i.ax to double, !dbg !161340 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !161341
  %.val23 = load i8, ptr %i.y, align 1, !dbg !161342, !noundef !3468
  %i.az = uitofp i8 %.val23 to double, !dbg !161343 ; 3 uses
  %i.ba = fcmp oeq double %i.ay, %i.az, !dbg !161344
  %i.bb = fadd nnan double %i.ay, %i.az, !dbg !161345
  %i.bc = fmul nnan double %i.bb, 5.000000e-01, !dbg !161345
  %.sroa.0.0.i29 = select i1 %i.ba, double %i.az, double %i.bc, !dbg !161345
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !161346
  store i64 1, ptr %i.bd, align 8, !dbg !161346
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !161346
  store double %.sroa.0.0.i29, ptr %i.be, align 8, !dbg !161346
  store i64 18, ptr %0, align 8, !dbg !161346
  br label %bb.d, !dbg !161347

bb.s:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !161341
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #46, !dbg !161348
  unreachable, !dbg !161348

bb.t:                                             ; preds = %bb.q
  %i.bf = extractvalue { i1, i8 } %i.as, 1, !dbg !161336
  %i.bg = load ptr, ptr %i.b, align 8, !dbg !161349, !nonnull !3468, !noundef !3468
  %i.bh = load ptr, ptr %i.ar, align 8, !dbg !161349, !noundef !3468
  %i.bi = call noundef i8 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator4foldhNCINvNvB1v_6min_by4foldhNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noundef nonnull %i.bg, ptr noundef %i.bh, i8 noundef %i.bf), !dbg !161350
  %i.bj = uitofp i8 %i.bi to double, !dbg !161351 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !161352
  %.val21 = load i8, ptr %i.y, align 1, !dbg !161353, !noundef !3468
  %i.bk = uitofp i8 %.val21 to double, !dbg !161354 ; 4 uses
  %i.bl = fcmp oeq double %i.bj, %i.bk, !dbg !161355
  br i1 %i.bl, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.u, !dbg !161356

bb.u:                                             ; preds = %bb.t
  %i.bm = uitofp i64 %.sink13.i to double, !dbg !161357
  %i.bn = fsub double %.sink11.i, %i.bm, !dbg !161358
  %i.bo = fsub nnan double %i.bj, %i.bk, !dbg !161359
  %i.bp = fmul double %i.bn, %i.bo, !dbg !161360
  %i.bq = fadd double %i.bp, %i.bk, !dbg !161361
  br label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, !dbg !161362

_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit: ; preds = %bb.t, %bb.u
  %.sroa.0.0.i30 = phi double [ %i.bq, %bb.u ], [ %i.bk, %bb.t ], !dbg !161363
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !161364
  store i64 1, ptr %i.br, align 8, !dbg !161364
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !161364
  store double %.sroa.0.0.i30, ptr %i.bs, align 8, !dbg !161364
  store i64 18, ptr %0, align 8, !dbg !161364
  br label %bb.d, !dbg !161365

bb.v:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !161352
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #46, !dbg !161366
  unreachable, !dbg !161366
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile14quantile_slicelEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull align 4 %1, i64 noundef range(i64 0, 2305843009213693952) %2, double noundef %3, i8 noundef range(i8 0, 6) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !161367 !guid !161422 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [40 x i8], align 8                ; 6 uses
  %i.e = fcmp oge double %3, 0.000000e+00, !dbg !161437
  %i.f = fcmp ole double %3, 1.000000e+00
  %spec.select.i = and i1 %i.e, %i.f, !dbg !161438
  br i1 %spec.select.i, label %bb.c, label %bb.b, !dbg !161439

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) @57, i64 72, i1 false), !dbg !161440
  br label %bb.d, !dbg !161441

bb.c:                                             ; preds = %bb.a
  switch i64 %2, label %bb.f [
    i64 0, label %bb.e
    i64 1, label %bb.l
  ], !dbg !161442

bb.d:                                             ; preds = %bb.n, %bb.o, %bb.r, %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, %bb.l, %bb.e, %bb.b
  ret void, !dbg !161443

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !161444
  store i64 0, ptr %i.g, align 8, !dbg !161444
  store i64 18, ptr %0, align 8, !dbg !161444
  br label %bb.d, !dbg !161441

bb.f:                                             ; preds = %bb.c
  %i.h = uitofp nneg i64 %2 to double, !dbg !161445 ; 2 uses
  %i.i = fadd nnan double %i.h, -1.000000e+00, !dbg !161446
  %i.j = fmul double %3, %i.i, !dbg !161446
  %i.k = fadd double %i.j, 0.000000e+00, !dbg !161446 ; 5 uses
  switch i8 %4, label %default.unreachable [
    i8 0, label %bb.g
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.h
    i8 4, label %bb.h
    i8 5, label %bb.j
  ], !dbg !161447

default.unreachable:                              ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = tail call double @llvm.round.f64(double %i.k), !dbg !161448
  %i.m = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.l), !dbg !161449
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !161450

bb.h:                                             ; preds = %bb.f, %bb.f, %bb.f
  %i.n = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.k), !dbg !161451
  %.pre.i = tail call double @llvm.ceil.f64(double %i.k), !dbg !161452
  %.pre7.i = tail call i64 @llvm.fptoui.sat.i64.f64(double %.pre.i), !dbg !161453
  br label %bb.k, !dbg !161454

bb.i:                                             ; preds = %bb.f
  %i.o = tail call double @llvm.ceil.f64(double %i.k), !dbg !161455
  %i.p = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.o), !dbg !161456 ; 2 uses
  br label %bb.k, !dbg !161457

bb.j:                                             ; preds = %bb.f
  %i.q = fmul nnan double %3, %i.h, !dbg !161458
  %i.r = tail call double @llvm.ceil.f64(double %i.q), !dbg !161459
  %i.s = fadd double %i.r, -1.000000e+00, !dbg !161460
  %i.t = tail call nsz double @llvm.maximumnum.f64(double %i.s, double 0.000000e+00), !dbg !161461
  %i.u = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.t), !dbg !161460
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !161450

bb.k:                                             ; preds = %bb.i, %bb.h
  %.pre-phi8.i = phi i64 [ %i.p, %bb.i ], [ %.pre7.i, %bb.h ], !dbg !161453
  %.sroa.0.0.i = phi i64 [ %i.p, %bb.i ], [ %i.n, %bb.h ], !dbg !161462
  %i.v = add nsw i64 %2, -1, !dbg !161463
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i, i64 %i.v), !dbg !161464 ; 2 uses
  %i.w = icmp eq i64 %.sroa.0.0.i.i, %.pre-phi8.i, !dbg !161465
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !161466

_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit: ; preds = %bb.g, %bb.j, %bb.k
  %.sink13.i = phi i64 [ %i.m, %bb.g ], [ %i.u, %bb.j ], [ %.sroa.0.0.i.i, %bb.k ] ; 2 uses
  %.sink11.i = phi double [ 0.000000e+00, %bb.g ], [ 0.000000e+00, %bb.j ], [ %i.k, %bb.k ]
  %.sink.i = phi i1 [ true, %bb.g ], [ true, %bb.j ], [ %i.w, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !161467
  call void @_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select18partition_at_indexlNCINvMB6_Sl22select_nth_unstable_byNvYlNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noalias noundef nonnull align 4 %1, i64 noundef range(i64 0, 2305843009213693952) %2, i64 noundef %.sink13.i, ptr noalias noundef nonnull %i.a), !dbg !161468
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !161469
  %i.y = load ptr, ptr %i.x, align 8, !dbg !161469, !nonnull !3468, !align !3838, !noundef !3468 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !161470
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !161470, !nonnull !3468, !align !3838, !noundef !3468 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 32, !dbg !161470
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !161470, !noundef !3468 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !161471
  br i1 %.sink.i, label %bb.n, label %bb.m, !dbg !161465

bb.l:                                             ; preds = %bb.c
  %.val26 = load i32, ptr %1, align 4, !dbg !161472, !noundef !3468
  %i.ad = sitofp i32 %.val26 to double, !dbg !161473
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !161474
  store i64 1, ptr %i.ae, align 8, !dbg !161474
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !161474
  store double %i.ad, ptr %i.af, align 8, !dbg !161474
  store i64 18, ptr %0, align 8, !dbg !161474
  br label %bb.d, !dbg !161441

bb.m:                                             ; preds = %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit
  switch i8 %4, label %bb.o [
    i8 3, label %bb.p
    i8 4, label %bb.q
  ], !dbg !161475

bb.n:                                             ; preds = %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit
  %.val25 = load i32, ptr %i.y, align 4, !dbg !161476, !noundef !3468
  %i.ag = sitofp i32 %.val25 to double, !dbg !161477
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !161478
  store i64 1, ptr %i.ah, align 8, !dbg !161478
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !161478
  store double %i.ag, ptr %i.ai, align 8, !dbg !161478
  store i64 18, ptr %0, align 8, !dbg !161478
  br label %bb.d, !dbg !161479

bb.o:                                             ; preds = %bb.m
  %.val24 = load i32, ptr %i.y, align 4, !dbg !161480, !noundef !3468
  %i.aj = sitofp i32 %.val24 to double, !dbg !161481
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !161482
  store i64 1, ptr %i.ak, align 8, !dbg !161482
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !161482
  store double %i.aj, ptr %i.al, align 8, !dbg !161482
  store i64 18, ptr %0, align 8, !dbg !161482
  br label %bb.d, !dbg !161483

bb.p:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ac, !dbg !161484
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.aa, ptr %i.c, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.am, ptr %i.an, align 8
  %i.ao = call { i32, i32 } @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterlEENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c), !dbg !161485 ; 2 uses
  %i.ap = extractvalue { i32, i32 } %i.ao, 0, !dbg !161486
  %i.aq = trunc i32 %i.ap to i1, !dbg !161487
  br i1 %i.aq, label %bb.r, label %bb.s, !dbg !161487

bb.q:                                             ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ac, !dbg !161488
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.aa, ptr %i.b, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.ar, ptr %i.as, align 8
  %i.at = call { i32, i32 } @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterlEENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b), !dbg !161489 ; 2 uses
  %i.au = extractvalue { i32, i32 } %i.at, 0, !dbg !161490
  %i.av = trunc i32 %i.au to i1, !dbg !161491
  br i1 %i.av, label %bb.t, label %bb.v, !dbg !161491

bb.r:                                             ; preds = %bb.p
  %i.aw = extractvalue { i32, i32 } %i.ao, 1, !dbg !161486
  %i.ax = load ptr, ptr %i.c, align 8, !dbg !161492, !nonnull !3468, !noundef !3468
  %i.ay = load ptr, ptr %i.an, align 8, !dbg !161492, !noundef !3468
  %i.az = call noundef i32 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterlEENtNtNtB9_6traits8iterator8Iterator4foldlNCINvNvB1v_6min_by4foldlNvYlNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noundef nonnull %i.ax, ptr noundef %i.ay, i32 noundef %i.aw), !dbg !161493
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !161494
  %.val23 = load i32, ptr %i.y, align 4, !dbg !161495, !noundef !3468
  %i.ba = sitofp i32 %.val23 to double, !dbg !161496 ; 3 uses
  %i.bb = sitofp i32 %i.az to double, !dbg !161497 ; 2 uses
  %i.bc = fcmp oeq double %i.ba, %i.bb, !dbg !161498
  %i.bd = fadd nnan double %i.bb, %i.ba, !dbg !161499
  %i.be = fmul nnan double %i.bd, 5.000000e-01, !dbg !161499
  %.sroa.0.0.i31 = select i1 %i.bc, double %i.ba, double %i.be, !dbg !161499
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !161500
  store i64 1, ptr %i.bf, align 8, !dbg !161500
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !161500
  store double %.sroa.0.0.i31, ptr %i.bg, align 8, !dbg !161500
  store i64 18, ptr %0, align 8, !dbg !161500
  br label %bb.d, !dbg !161501

bb.s:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !161494
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #46, !dbg !161502
  unreachable, !dbg !161502

bb.t:                                             ; preds = %bb.q
  %i.bh = extractvalue { i32, i32 } %i.at, 1, !dbg !161490
  %i.bi = load ptr, ptr %i.b, align 8, !dbg !161503, !nonnull !3468, !noundef !3468
  %i.bj = load ptr, ptr %i.as, align 8, !dbg !161503, !noundef !3468
  %i.bk = call noundef i32 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterlEENtNtNtB9_6traits8iterator8Iterator4foldlNCINvNvB1v_6min_by4foldlNvYlNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noundef nonnull %i.bi, ptr noundef %i.bj, i32 noundef %i.bh), !dbg !161504
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !161505
  %.val21 = load i32, ptr %i.y, align 4, !dbg !161506, !noundef !3468
  %i.bl = sitofp i32 %.val21 to double, !dbg !161507 ; 4 uses
  %i.bm = sitofp i32 %i.bk to double, !dbg !161508 ; 2 uses
  %i.bn = fcmp oeq double %i.bl, %i.bm, !dbg !161509
  br i1 %i.bn, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.u, !dbg !161510

bb.u:                                             ; preds = %bb.t
  %i.bo = uitofp i64 %.sink13.i to double, !dbg !161511
  %i.bp = fsub double %.sink11.i, %i.bo, !dbg !161512
  %i.bq = fsub nnan double %i.bm, %i.bl, !dbg !161513
  %i.br = fmul double %i.bp, %i.bq, !dbg !161514
  %i.bs = fadd double %i.br, %i.bl, !dbg !161515
  br label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, !dbg !161516

_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit: ; preds = %bb.t, %bb.u
  %.sroa.0.0.i32 = phi double [ %i.bs, %bb.u ], [ %i.bl, %bb.t ], !dbg !161517
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !161518
  store i64 1, ptr %i.bt, align 8, !dbg !161518
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !161518
  store double %.sroa.0.0.i32, ptr %i.bu, align 8, !dbg !161518
  store i64 18, ptr %0, align 8, !dbg !161518
  br label %bb.d, !dbg !161519

bb.v:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !161505
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #46, !dbg !161520
  unreachable, !dbg !161520
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile14quantile_slicemEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull align 4 %1, i64 noundef range(i64 0, 2305843009213693952) %2, double noundef %3, i8 noundef range(i8 0, 6) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !161521 !guid !161576 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [40 x i8], align 8                ; 6 uses
  %i.e = fcmp oge double %3, 0.000000e+00, !dbg !161591
  %i.f = fcmp ole double %3, 1.000000e+00
  %spec.select.i = and i1 %i.e, %i.f, !dbg !161592
  br i1 %spec.select.i, label %bb.c, label %bb.b, !dbg !161593

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) @57, i64 72, i1 false), !dbg !161594
  br label %bb.d, !dbg !161595

bb.c:                                             ; preds = %bb.a
  switch i64 %2, label %bb.f [
    i64 0, label %bb.e
    i64 1, label %bb.l
  ], !dbg !161596

bb.d:                                             ; preds = %bb.n, %bb.o, %bb.r, %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, %bb.l, %bb.e, %bb.b
  ret void, !dbg !161597

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !161598
  store i64 0, ptr %i.g, align 8, !dbg !161598
  store i64 18, ptr %0, align 8, !dbg !161598
  br label %bb.d, !dbg !161595

bb.f:                                             ; preds = %bb.c
  %i.h = uitofp nneg i64 %2 to double, !dbg !161599 ; 2 uses
  %i.i = fadd nnan double %i.h, -1.000000e+00, !dbg !161600
  %i.j = fmul double %3, %i.i, !dbg !161600
  %i.k = fadd double %i.j, 0.000000e+00, !dbg !161600 ; 5 uses
  switch i8 %4, label %default.unreachable [
    i8 0, label %bb.g
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.h
    i8 4, label %bb.h
    i8 5, label %bb.j
  ], !dbg !161601

default.unreachable:                              ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = tail call double @llvm.round.f64(double %i.k), !dbg !161602
  %i.m = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.l), !dbg !161603
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !161604

bb.h:                                             ; preds = %bb.f, %bb.f, %bb.f
  %i.n = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.k), !dbg !161605
  %.pre.i = tail call double @llvm.ceil.f64(double %i.k), !dbg !161606
  %.pre7.i = tail call i64 @llvm.fptoui.sat.i64.f64(double %.pre.i), !dbg !161607
  br label %bb.k, !dbg !161608

bb.i:                                             ; preds = %bb.f
  %i.o = tail call double @llvm.ceil.f64(double %i.k), !dbg !161609
  %i.p = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.o), !dbg !161610 ; 2 uses
  br label %bb.k, !dbg !161611

bb.j:                                             ; preds = %bb.f
  %i.q = fmul nnan double %3, %i.h, !dbg !161612
  %i.r = tail call double @llvm.ceil.f64(double %i.q), !dbg !161613
  %i.s = fadd double %i.r, -1.000000e+00, !dbg !161614
  %i.t = tail call nsz double @llvm.maximumnum.f64(double %i.s, double 0.000000e+00), !dbg !161615
  %i.u = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.t), !dbg !161614
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !161604

bb.k:                                             ; preds = %bb.i, %bb.h
  %.pre-phi8.i = phi i64 [ %i.p, %bb.i ], [ %.pre7.i, %bb.h ], !dbg !161607
  %.sroa.0.0.i = phi i64 [ %i.p, %bb.i ], [ %i.n, %bb.h ], !dbg !161616
  %i.v = add nsw i64 %2, -1, !dbg !161617
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i, i64 %i.v), !dbg !161618 ; 2 uses
  %i.w = icmp eq i64 %.sroa.0.0.i.i, %.pre-phi8.i, !dbg !161619
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !161620

_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit: ; preds = %bb.g, %bb.j, %bb.k
  %.sink13.i = phi i64 [ %i.m, %bb.g ], [ %i.u, %bb.j ], [ %.sroa.0.0.i.i, %bb.k ] ; 2 uses
  %.sink11.i = phi double [ 0.000000e+00, %bb.g ], [ 0.000000e+00, %bb.j ], [ %i.k, %bb.k ]
  %.sink.i = phi i1 [ true, %bb.g ], [ true, %bb.j ], [ %i.w, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !161621
  call void @_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select18partition_at_indexmNCINvMB6_Sm22select_nth_unstable_byNvYmNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noalias noundef nonnull align 4 %1, i64 noundef range(i64 0, 2305843009213693952) %2, i64 noundef %.sink13.i, ptr noalias noundef nonnull %i.a), !dbg !161622
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !161623
  %i.y = load ptr, ptr %i.x, align 8, !dbg !161623, !nonnull !3468, !align !3838, !noundef !3468 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !161624
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !161624, !nonnull !3468, !align !3838, !noundef !3468 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 32, !dbg !161624
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !161624, !noundef !3468 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !161625
  br i1 %.sink.i, label %bb.n, label %bb.m, !dbg !161619

bb.l:                                             ; preds = %bb.c
  %.val26 = load i32, ptr %1, align 4, !dbg !161626, !noundef !3468
  %i.ad = uitofp i32 %.val26 to double, !dbg !161627
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !161628
  store i64 1, ptr %i.ae, align 8, !dbg !161628
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !161628
  store double %i.ad, ptr %i.af, align 8, !dbg !161628
  store i64 18, ptr %0, align 8, !dbg !161628
  br label %bb.d, !dbg !161595

bb.m:                                             ; preds = %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit
  switch i8 %4, label %bb.o [
    i8 3, label %bb.p
    i8 4, label %bb.q
  ], !dbg !161629

bb.n:                                             ; preds = %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit
  %.val25 = load i32, ptr %i.y, align 4, !dbg !161630, !noundef !3468
  %i.ag = uitofp i32 %.val25 to double, !dbg !161631
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !161632
  store i64 1, ptr %i.ah, align 8, !dbg !161632
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !161632
  store double %i.ag, ptr %i.ai, align 8, !dbg !161632
  store i64 18, ptr %0, align 8, !dbg !161632
  br label %bb.d, !dbg !161633

bb.o:                                             ; preds = %bb.m
  %.val24 = load i32, ptr %i.y, align 4, !dbg !161634, !noundef !3468
  %i.aj = uitofp i32 %.val24 to double, !dbg !161635
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !161636
  store i64 1, ptr %i.ak, align 8, !dbg !161636
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !161636
  store double %i.aj, ptr %i.al, align 8, !dbg !161636
  store i64 18, ptr %0, align 8, !dbg !161636
  br label %bb.d, !dbg !161637

bb.p:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ac, !dbg !161638
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.aa, ptr %i.c, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.am, ptr %i.an, align 8
  %i.ao = call { i32, i32 } @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4ItermEENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c), !dbg !161639 ; 2 uses
  %i.ap = extractvalue { i32, i32 } %i.ao, 0, !dbg !161640
  %i.aq = trunc i32 %i.ap to i1, !dbg !161641
  br i1 %i.aq, label %bb.r, label %bb.s, !dbg !161641

bb.q:                                             ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ac, !dbg !161642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.aa, ptr %i.b, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.ar, ptr %i.as, align 8
  %i.at = call { i32, i32 } @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4ItermEENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b), !dbg !161643 ; 2 uses
  %i.au = extractvalue { i32, i32 } %i.at, 0, !dbg !161644
  %i.av = trunc i32 %i.au to i1, !dbg !161645
  br i1 %i.av, label %bb.t, label %bb.v, !dbg !161645

bb.r:                                             ; preds = %bb.p
  %i.aw = extractvalue { i32, i32 } %i.ao, 1, !dbg !161640
  %i.ax = load ptr, ptr %i.c, align 8, !dbg !161646, !nonnull !3468, !noundef !3468
  %i.ay = load ptr, ptr %i.an, align 8, !dbg !161646, !noundef !3468
  %i.az = call noundef i32 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4ItermEENtNtNtB9_6traits8iterator8Iterator4foldmNCINvNvB1v_6min_by4foldmNvYmNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noundef nonnull %i.ax, ptr noundef %i.ay, i32 noundef %i.aw), !dbg !161647
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !161648
  %.val23 = load i32, ptr %i.y, align 4, !dbg !161649, !noundef !3468
  %i.ba = uitofp i32 %.val23 to double, !dbg !161650 ; 3 uses
  %i.bb = uitofp i32 %i.az to double, !dbg !161651 ; 2 uses
  %i.bc = fcmp oeq double %i.ba, %i.bb, !dbg !161652
  %i.bd = fadd nnan double %i.bb, %i.ba, !dbg !161653
  %i.be = fmul nnan double %i.bd, 5.000000e-01, !dbg !161653
  %.sroa.0.0.i31 = select i1 %i.bc, double %i.ba, double %i.be, !dbg !161653
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !161654
  store i64 1, ptr %i.bf, align 8, !dbg !161654
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !161654
  store double %.sroa.0.0.i31, ptr %i.bg, align 8, !dbg !161654
  store i64 18, ptr %0, align 8, !dbg !161654
  br label %bb.d, !dbg !161655

bb.s:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !161648
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #46, !dbg !161656
  unreachable, !dbg !161656

bb.t:                                             ; preds = %bb.q
  %i.bh = extractvalue { i32, i32 } %i.at, 1, !dbg !161644
  %i.bi = load ptr, ptr %i.b, align 8, !dbg !161657, !nonnull !3468, !noundef !3468
  %i.bj = load ptr, ptr %i.as, align 8, !dbg !161657, !noundef !3468
  %i.bk = call noundef i32 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4ItermEENtNtNtB9_6traits8iterator8Iterator4foldmNCINvNvB1v_6min_by4foldmNvYmNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noundef nonnull %i.bi, ptr noundef %i.bj, i32 noundef %i.bh), !dbg !161658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !161659
  %.val21 = load i32, ptr %i.y, align 4, !dbg !161660, !noundef !3468
  %i.bl = uitofp i32 %.val21 to double, !dbg !161661 ; 4 uses
  %i.bm = uitofp i32 %i.bk to double, !dbg !161662 ; 2 uses
  %i.bn = fcmp oeq double %i.bl, %i.bm, !dbg !161663
  br i1 %i.bn, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.u, !dbg !161664

bb.u:                                             ; preds = %bb.t
  %i.bo = uitofp i64 %.sink13.i to double, !dbg !161665
  %i.bp = fsub double %.sink11.i, %i.bo, !dbg !161666
  %i.bq = fsub nnan double %i.bm, %i.bl, !dbg !161667
  %i.br = fmul double %i.bp, %i.bq, !dbg !161668
  %i.bs = fadd double %i.br, %i.bl, !dbg !161669
  br label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, !dbg !161670

_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit: ; preds = %bb.t, %bb.u
  %.sroa.0.0.i32 = phi double [ %i.bs, %bb.u ], [ %i.bl, %bb.t ], !dbg !161671
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !161672
  store i64 1, ptr %i.bt, align 8, !dbg !161672
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !161672
  store double %.sroa.0.0.i32, ptr %i.bu, align 8, !dbg !161672
  store i64 18, ptr %0, align 8, !dbg !161672
  br label %bb.d, !dbg !161673

bb.v:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !161659
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #46, !dbg !161674
  unreachable, !dbg !161674
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile14quantile_slicenEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull align 16 %1, i64 noundef range(i64 0, 576460752303423488) %2, double noundef %3, i8 noundef range(i8 0, 6) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !161675 !guid !161734 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 16               ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 16               ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  %i.f = alloca [40 x i8], align 8                ; 6 uses
  %i.g = fcmp oge double %3, 0.000000e+00, !dbg !161751
  %i.h = fcmp ole double %3, 1.000000e+00
  %spec.select.i = and i1 %i.g, %i.h, !dbg !161752
  br i1 %spec.select.i, label %bb.c, label %bb.b, !dbg !161753

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) @57, i64 72, i1 false), !dbg !161754
  br label %bb.d, !dbg !161755

bb.c:                                             ; preds = %bb.a
  switch i64 %2, label %bb.f [
    i64 0, label %bb.e
    i64 1, label %bb.l
  ], !dbg !161756

bb.d:                                             ; preds = %bb.n, %bb.o, %bb.r, %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, %bb.l, %bb.e, %bb.b
  ret void, !dbg !161757

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !161758
  store i64 0, ptr %i.i, align 8, !dbg !161758
  store i64 18, ptr %0, align 8, !dbg !161758
  br label %bb.d, !dbg !161755

bb.f:                                             ; preds = %bb.c
  %i.j = uitofp nneg i64 %2 to double, !dbg !161759 ; 2 uses
  %i.k = fadd nnan double %i.j, -1.000000e+00, !dbg !161760
  %i.l = fmul double %3, %i.k, !dbg !161760
  %i.m = fadd double %i.l, 0.000000e+00, !dbg !161760 ; 5 uses
  switch i8 %4, label %default.unreachable [
    i8 0, label %bb.g
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.h
    i8 4, label %bb.h
    i8 5, label %bb.j
  ], !dbg !161761

default.unreachable:                              ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.n = tail call double @llvm.round.f64(double %i.m), !dbg !161762
  %i.o = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.n), !dbg !161763
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !161764

bb.h:                                             ; preds = %bb.f, %bb.f, %bb.f
  %i.p = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.m), !dbg !161765
  %.pre.i = tail call double @llvm.ceil.f64(double %i.m), !dbg !161766
  %.pre7.i = tail call i64 @llvm.fptoui.sat.i64.f64(double %.pre.i), !dbg !161767
  br label %bb.k, !dbg !161768

bb.i:                                             ; preds = %bb.f
  %i.q = tail call double @llvm.ceil.f64(double %i.m), !dbg !161769
  %i.r = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.q), !dbg !161770 ; 2 uses
  br label %bb.k, !dbg !161771

bb.j:                                             ; preds = %bb.f
  %i.s = fmul nnan double %3, %i.j, !dbg !161772
  %i.t = tail call double @llvm.ceil.f64(double %i.s), !dbg !161773
  %i.u = fadd double %i.t, -1.000000e+00, !dbg !161774
  %i.v = tail call nsz double @llvm.maximumnum.f64(double %i.u, double 0.000000e+00), !dbg !161775
  %i.w = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.v), !dbg !161774
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !161764

bb.k:                                             ; preds = %bb.i, %bb.h
  %.pre-phi8.i = phi i64 [ %i.r, %bb.i ], [ %.pre7.i, %bb.h ], !dbg !161767
  %.sroa.0.0.i = phi i64 [ %i.r, %bb.i ], [ %i.p, %bb.h ], !dbg !161776
  %i.x = add nsw i64 %2, -1, !dbg !161777
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i, i64 %i.x), !dbg !161778 ; 2 uses
  %i.y = icmp eq i64 %.sroa.0.0.i.i, %.pre-phi8.i, !dbg !161779
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !161780

_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit: ; preds = %bb.g, %bb.j, %bb.k
  %.sink13.i = phi i64 [ %i.o, %bb.g ], [ %i.w, %bb.j ], [ %.sroa.0.0.i.i, %bb.k ] ; 2 uses
  %.sink11.i = phi double [ 0.000000e+00, %bb.g ], [ 0.000000e+00, %bb.j ], [ %i.m, %bb.k ]
  %.sink.i = phi i1 [ true, %bb.g ], [ true, %bb.j ], [ %i.y, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !161781
  call void @_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select18partition_at_indexnNCINvMB6_Sn22select_nth_unstable_byNvYnNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.f, ptr noalias noundef nonnull align 16 %1, i64 noundef range(i64 0, 576460752303423488) %2, i64 noundef %.sink13.i, ptr noalias noundef nonnull %i.a), !dbg !161782
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !161783
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !161783, !nonnull !3468, !align !4039, !noundef !3468 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !161784
  %i.ac = load ptr, ptr %i.ab, align 8, !dbg !161784, !nonnull !3468, !align !4039, !noundef !3468 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 32, !dbg !161784
  %i.ae = load i64, ptr %i.ad, align 8, !dbg !161784, !noundef !3468 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !161785
  br i1 %.sink.i, label %bb.n, label %bb.m, !dbg !161779

bb.l:                                             ; preds = %bb.c
  %.val20 = load i128, ptr %1, align 16, !dbg !161786, !noundef !3468
  %i.af = sitofp i128 %.val20 to double, !dbg !161787
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !161788
  store i64 1, ptr %i.ag, align 8, !dbg !161788
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !161788
  store double %i.af, ptr %i.ah, align 8, !dbg !161788
  store i64 18, ptr %0, align 8, !dbg !161788
  br label %bb.d, !dbg !161755

bb.m:                                             ; preds = %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit
  switch i8 %4, label %bb.o [
    i8 3, label %bb.p
    i8 4, label %bb.q
  ], !dbg !161789

bb.n:                                             ; preds = %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit
  %.val19 = load i128, ptr %i.aa, align 16, !dbg !161790, !noundef !3468
  %i.ai = sitofp i128 %.val19 to double, !dbg !161791
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !161792
  store i64 1, ptr %i.aj, align 8, !dbg !161792
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !161792
  store double %i.ai, ptr %i.ak, align 8, !dbg !161792
  store i64 18, ptr %0, align 8, !dbg !161792
  br label %bb.d, !dbg !161793

bb.o:                                             ; preds = %bb.m
  %.val18 = load i128, ptr %i.aa, align 16, !dbg !161794, !noundef !3468
  %i.al = sitofp i128 %.val18 to double, !dbg !161795
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !161796
  store i64 1, ptr %i.am, align 8, !dbg !161796
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !161796
  store double %i.al, ptr %i.an, align 8, !dbg !161796
  store i64 18, ptr %0, align 8, !dbg !161796
  br label %bb.d, !dbg !161797

bb.p:                                             ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.ae, !dbg !161798
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.ac, ptr %i.e, align 8, !noalias !161742
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.ao, ptr %i.ap, align 8, !noalias !161742
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !161799, !noalias !161742
  call void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IternEENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([32 x i8]) align 16 captures(none) dereferenceable(32) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e), !dbg !161800, !noalias !161742
  %i.aq = load i128, ptr %i.d, align 16, !dbg !161801, !range !3892, !noalias !161742, !noundef !3468
  %i.ar = trunc nuw i128 %i.aq to i1, !dbg !161802
  br i1 %i.ar, label %bb.r, label %bb.s, !dbg !161802

bb.q:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.ae, !dbg !161803
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.ac, ptr %i.c, align 8, !noalias !161747
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.as, ptr %i.at, align 8, !noalias !161747
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !161804, !noalias !161747
  call void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IternEENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([32 x i8]) align 16 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c), !dbg !161805, !noalias !161747
  %i.au = load i128, ptr %i.b, align 16, !dbg !161806, !range !3892, !noalias !161747, !noundef !3468
  %i.av = trunc nuw i128 %i.au to i1, !dbg !161807
  br i1 %i.av, label %bb.t, label %bb.v, !dbg !161807

bb.r:                                             ; preds = %bb.p
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !161801
  %i.ax = load i128, ptr %i.aw, align 16, !dbg !161808, !noalias !161742, !noundef !3468
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !161809, !noalias !161742
  %i.ay = load ptr, ptr %i.e, align 8, !dbg !161810, !noalias !161742, !nonnull !3468, !noundef !3468
  %i.az = load ptr, ptr %i.ap, align 8, !dbg !161810, !noalias !161742, !noundef !3468
  %i.ba = call noundef i128 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IternEENtNtNtB9_6traits8iterator8Iterator4foldnNCINvNvB1v_6min_by4foldnNvYnNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noundef nonnull %i.ay, ptr noundef %i.az, i128 noundef %i.ax), !dbg !161811, !noalias !161742
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !161812
  %.val17 = load i128, ptr %i.aa, align 16, !dbg !161813, !noundef !3468
  %i.bb = sitofp i128 %.val17 to double, !dbg !161814 ; 3 uses
  %i.bc = sitofp i128 %i.ba to double, !dbg !161815 ; 2 uses
  %i.bd = fcmp oeq double %i.bb, %i.bc, !dbg !161816
  %i.be = fadd nnan double %i.bc, %i.bb, !dbg !161817
  %i.bf = fmul nnan double %i.be, 5.000000e-01, !dbg !161817
  %.sroa.0.0.i23 = select i1 %i.bd, double %i.bb, double %i.bf, !dbg !161817
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !161818
  store i64 1, ptr %i.bg, align 8, !dbg !161818
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !161818
  store double %.sroa.0.0.i23, ptr %i.bh, align 8, !dbg !161818
  store i64 18, ptr %0, align 8, !dbg !161818
  br label %bb.d, !dbg !161819

bb.s:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !161809, !noalias !161742
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !161812
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #46, !dbg !161820
  unreachable, !dbg !161820

bb.t:                                             ; preds = %bb.q
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !161806
  %i.bj = load i128, ptr %i.bi, align 16, !dbg !161821, !noalias !161747, !noundef !3468
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !161822, !noalias !161747
  %i.bk = load ptr, ptr %i.c, align 8, !dbg !161823, !noalias !161747, !nonnull !3468, !noundef !3468
  %i.bl = load ptr, ptr %i.at, align 8, !dbg !161823, !noalias !161747, !noundef !3468
  %i.bm = call noundef i128 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IternEENtNtNtB9_6traits8iterator8Iterator4foldnNCINvNvB1v_6min_by4foldnNvYnNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noundef nonnull %i.bk, ptr noundef %i.bl, i128 noundef %i.bj), !dbg !161824, !noalias !161747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !161825
  %.val15 = load i128, ptr %i.aa, align 16, !dbg !161826, !noundef !3468
  %i.bn = sitofp i128 %.val15 to double, !dbg !161827 ; 4 uses
  %i.bo = sitofp i128 %i.bm to double, !dbg !161828 ; 2 uses
  %i.bp = fcmp oeq double %i.bn, %i.bo, !dbg !161829
  br i1 %i.bp, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.u, !dbg !161830

bb.u:                                             ; preds = %bb.t
  %i.bq = uitofp i64 %.sink13.i to double, !dbg !161831
  %i.br = fsub double %.sink11.i, %i.bq, !dbg !161832
  %i.bs = fsub nnan double %i.bo, %i.bn, !dbg !161833
  %i.bt = fmul double %i.br, %i.bs, !dbg !161834
  %i.bu = fadd double %i.bt, %i.bn, !dbg !161835
  br label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, !dbg !161836

_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit: ; preds = %bb.t, %bb.u
  %.sroa.0.0.i24 = phi double [ %i.bu, %bb.u ], [ %i.bn, %bb.t ], !dbg !161837
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !161838
  store i64 1, ptr %i.bv, align 8, !dbg !161838
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !161838
  store double %.sroa.0.0.i24, ptr %i.bw, align 8, !dbg !161838
  store i64 18, ptr %0, align 8, !dbg !161838
  br label %bb.d, !dbg !161839

bb.v:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !161822, !noalias !161747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !161825
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #46, !dbg !161840
  unreachable, !dbg !161840
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile14quantile_sliceoEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull align 16 %1, i64 noundef range(i64 0, 576460752303423488) %2, double noundef %3, i8 noundef range(i8 0, 6) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !161841 !guid !161900 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 16               ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 16               ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  %i.f = alloca [40 x i8], align 8                ; 6 uses
  %i.g = fcmp oge double %3, 0.000000e+00, !dbg !161917
  %i.h = fcmp ole double %3, 1.000000e+00
  %spec.select.i = and i1 %i.g, %i.h, !dbg !161918
  br i1 %spec.select.i, label %bb.c, label %bb.b, !dbg !161919

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) @57, i64 72, i1 false), !dbg !161920
  br label %bb.d, !dbg !161921

bb.c:                                             ; preds = %bb.a
  switch i64 %2, label %bb.f [
    i64 0, label %bb.e
    i64 1, label %bb.l
  ], !dbg !161922

bb.d:                                             ; preds = %bb.n, %bb.o, %bb.r, %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, %bb.l, %bb.e, %bb.b
  ret void, !dbg !161923

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !161924
  store i64 0, ptr %i.i, align 8, !dbg !161924
  store i64 18, ptr %0, align 8, !dbg !161924
  br label %bb.d, !dbg !161921

bb.f:                                             ; preds = %bb.c
  %i.j = uitofp nneg i64 %2 to double, !dbg !161925 ; 2 uses
  %i.k = fadd nnan double %i.j, -1.000000e+00, !dbg !161926
  %i.l = fmul double %3, %i.k, !dbg !161926
  %i.m = fadd double %i.l, 0.000000e+00, !dbg !161926 ; 5 uses
  switch i8 %4, label %default.unreachable [
    i8 0, label %bb.g
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.h
    i8 4, label %bb.h
    i8 5, label %bb.j
  ], !dbg !161927

default.unreachable:                              ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.n = tail call double @llvm.round.f64(double %i.m), !dbg !161928
  %i.o = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.n), !dbg !161929
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !161930

bb.h:                                             ; preds = %bb.f, %bb.f, %bb.f
  %i.p = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.m), !dbg !161931
  %.pre.i = tail call double @llvm.ceil.f64(double %i.m), !dbg !161932
  %.pre7.i = tail call i64 @llvm.fptoui.sat.i64.f64(double %.pre.i), !dbg !161933
  br label %bb.k, !dbg !161934

bb.i:                                             ; preds = %bb.f
  %i.q = tail call double @llvm.ceil.f64(double %i.m), !dbg !161935
  %i.r = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.q), !dbg !161936 ; 2 uses
  br label %bb.k, !dbg !161937

bb.j:                                             ; preds = %bb.f
  %i.s = fmul nnan double %3, %i.j, !dbg !161938
  %i.t = tail call double @llvm.ceil.f64(double %i.s), !dbg !161939
  %i.u = fadd double %i.t, -1.000000e+00, !dbg !161940
  %i.v = tail call nsz double @llvm.maximumnum.f64(double %i.u, double 0.000000e+00), !dbg !161941
  %i.w = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.v), !dbg !161940
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !161930

bb.k:                                             ; preds = %bb.i, %bb.h
  %.pre-phi8.i = phi i64 [ %i.r, %bb.i ], [ %.pre7.i, %bb.h ], !dbg !161933
  %.sroa.0.0.i = phi i64 [ %i.r, %bb.i ], [ %i.p, %bb.h ], !dbg !161942
  %i.x = add nsw i64 %2, -1, !dbg !161943
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i, i64 %i.x), !dbg !161944 ; 2 uses
  %i.y = icmp eq i64 %.sroa.0.0.i.i, %.pre-phi8.i, !dbg !161945
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !161946

_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit: ; preds = %bb.g, %bb.j, %bb.k
  %.sink13.i = phi i64 [ %i.o, %bb.g ], [ %i.w, %bb.j ], [ %.sroa.0.0.i.i, %bb.k ] ; 2 uses
  %.sink11.i = phi double [ 0.000000e+00, %bb.g ], [ 0.000000e+00, %bb.j ], [ %i.m, %bb.k ]
  %.sink.i = phi i1 [ true, %bb.g ], [ true, %bb.j ], [ %i.y, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !161947
  call void @_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select18partition_at_indexoNCINvMB6_So22select_nth_unstable_byNvYoNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.f, ptr noalias noundef nonnull align 16 %1, i64 noundef range(i64 0, 576460752303423488) %2, i64 noundef %.sink13.i, ptr noalias noundef nonnull %i.a), !dbg !161948
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !161949
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !161949, !nonnull !3468, !align !4039, !noundef !3468 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !161950
  %i.ac = load ptr, ptr %i.ab, align 8, !dbg !161950, !nonnull !3468, !align !4039, !noundef !3468 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 32, !dbg !161950
  %i.ae = load i64, ptr %i.ad, align 8, !dbg !161950, !noundef !3468 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !161951
  br i1 %.sink.i, label %bb.n, label %bb.m, !dbg !161945

bb.l:                                             ; preds = %bb.c
  %.val20 = load i128, ptr %1, align 16, !dbg !161952, !noundef !3468
  %i.af = uitofp i128 %.val20 to double, !dbg !161953
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !161954
  store i64 1, ptr %i.ag, align 8, !dbg !161954
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !161954
  store double %i.af, ptr %i.ah, align 8, !dbg !161954
  store i64 18, ptr %0, align 8, !dbg !161954
  br label %bb.d, !dbg !161921

bb.m:                                             ; preds = %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit
  switch i8 %4, label %bb.o [
    i8 3, label %bb.p
    i8 4, label %bb.q
  ], !dbg !161955

bb.n:                                             ; preds = %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit
  %.val19 = load i128, ptr %i.aa, align 16, !dbg !161956, !noundef !3468
  %i.ai = uitofp i128 %.val19 to double, !dbg !161957
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !161958
  store i64 1, ptr %i.aj, align 8, !dbg !161958
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !161958
  store double %i.ai, ptr %i.ak, align 8, !dbg !161958
  store i64 18, ptr %0, align 8, !dbg !161958
  br label %bb.d, !dbg !161959

bb.o:                                             ; preds = %bb.m
  %.val18 = load i128, ptr %i.aa, align 16, !dbg !161960, !noundef !3468
  %i.al = uitofp i128 %.val18 to double, !dbg !161961
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !161962
  store i64 1, ptr %i.am, align 8, !dbg !161962
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !161962
  store double %i.al, ptr %i.an, align 8, !dbg !161962
  store i64 18, ptr %0, align 8, !dbg !161962
  br label %bb.d, !dbg !161963

bb.p:                                             ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.ae, !dbg !161964
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.ac, ptr %i.e, align 8, !noalias !161908
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.ao, ptr %i.ap, align 8, !noalias !161908
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !161965, !noalias !161908
  call void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IteroEENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([32 x i8]) align 16 captures(none) dereferenceable(32) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e), !dbg !161966, !noalias !161908
  %i.aq = load i128, ptr %i.d, align 16, !dbg !161967, !range !3892, !noalias !161908, !noundef !3468
  %i.ar = trunc nuw i128 %i.aq to i1, !dbg !161968
  br i1 %i.ar, label %bb.r, label %bb.s, !dbg !161968

bb.q:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.ae, !dbg !161969
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.ac, ptr %i.c, align 8, !noalias !161913
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.as, ptr %i.at, align 8, !noalias !161913
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !161970, !noalias !161913
  call void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IteroEENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([32 x i8]) align 16 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c), !dbg !161971, !noalias !161913
  %i.au = load i128, ptr %i.b, align 16, !dbg !161972, !range !3892, !noalias !161913, !noundef !3468
  %i.av = trunc nuw i128 %i.au to i1, !dbg !161973
  br i1 %i.av, label %bb.t, label %bb.v, !dbg !161973

bb.r:                                             ; preds = %bb.p
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !161967
  %i.ax = load i128, ptr %i.aw, align 16, !dbg !161974, !noalias !161908, !noundef !3468
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !161975, !noalias !161908
  %i.ay = load ptr, ptr %i.e, align 8, !dbg !161976, !noalias !161908, !nonnull !3468, !noundef !3468
  %i.az = load ptr, ptr %i.ap, align 8, !dbg !161976, !noalias !161908, !noundef !3468
  %i.ba = call noundef i128 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IteroEENtNtNtB9_6traits8iterator8Iterator4foldoNCINvNvB1v_6min_by4foldoNvYoNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noundef nonnull %i.ay, ptr noundef %i.az, i128 noundef %i.ax), !dbg !161977, !noalias !161908
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !161978
  %.val17 = load i128, ptr %i.aa, align 16, !dbg !161979, !noundef !3468
  %i.bb = uitofp i128 %.val17 to double, !dbg !161980 ; 3 uses
  %i.bc = uitofp i128 %i.ba to double, !dbg !161981 ; 2 uses
  %i.bd = fcmp oeq double %i.bb, %i.bc, !dbg !161982
  %i.be = fadd nnan double %i.bc, %i.bb, !dbg !161983
  %i.bf = fmul nnan double %i.be, 5.000000e-01, !dbg !161983
  %.sroa.0.0.i23 = select i1 %i.bd, double %i.bb, double %i.bf, !dbg !161983
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !161984
  store i64 1, ptr %i.bg, align 8, !dbg !161984
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !161984
  store double %.sroa.0.0.i23, ptr %i.bh, align 8, !dbg !161984
  store i64 18, ptr %0, align 8, !dbg !161984
  br label %bb.d, !dbg !161985

bb.s:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !161975, !noalias !161908
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !161978
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #46, !dbg !161986
  unreachable, !dbg !161986

bb.t:                                             ; preds = %bb.q
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !161972
  %i.bj = load i128, ptr %i.bi, align 16, !dbg !161987, !noalias !161913, !noundef !3468
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !161988, !noalias !161913
  %i.bk = load ptr, ptr %i.c, align 8, !dbg !161989, !noalias !161913, !nonnull !3468, !noundef !3468
  %i.bl = load ptr, ptr %i.at, align 8, !dbg !161989, !noalias !161913, !noundef !3468
  %i.bm = call noundef i128 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IteroEENtNtNtB9_6traits8iterator8Iterator4foldoNCINvNvB1v_6min_by4foldoNvYoNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noundef nonnull %i.bk, ptr noundef %i.bl, i128 noundef %i.bj), !dbg !161990, !noalias !161913
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !161991
  %.val15 = load i128, ptr %i.aa, align 16, !dbg !161992, !noundef !3468
  %i.bn = uitofp i128 %.val15 to double, !dbg !161993 ; 4 uses
  %i.bo = uitofp i128 %i.bm to double, !dbg !161994 ; 2 uses
  %i.bp = fcmp oeq double %i.bn, %i.bo, !dbg !161995
  br i1 %i.bp, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.u, !dbg !161996

bb.u:                                             ; preds = %bb.t
  %i.bq = uitofp i64 %.sink13.i to double, !dbg !161997
  %i.br = fsub double %.sink11.i, %i.bq, !dbg !161998
  %i.bs = fsub nnan double %i.bo, %i.bn, !dbg !161999
  %i.bt = fmul double %i.br, %i.bs, !dbg !162000
  %i.bu = fadd double %i.bt, %i.bn, !dbg !162001
  br label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, !dbg !162002

_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit: ; preds = %bb.t, %bb.u
  %.sroa.0.0.i24 = phi double [ %i.bu, %bb.u ], [ %i.bn, %bb.t ], !dbg !162003
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !162004
  store i64 1, ptr %i.bv, align 8, !dbg !162004
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !162004
  store double %.sroa.0.0.i24, ptr %i.bw, align 8, !dbg !162004
  store i64 18, ptr %0, align 8, !dbg !162004
  br label %bb.d, !dbg !162005

bb.v:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !161988, !noalias !161913
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !161991
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #46, !dbg !162006
  unreachable, !dbg !162006
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile14quantile_slicesEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull align 2 %1, i64 noundef range(i64 0, 4611686018427387904) %2, double noundef %3, i8 noundef range(i8 0, 6) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !162007 !guid !162062 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [40 x i8], align 8                ; 6 uses
  %i.e = fcmp oge double %3, 0.000000e+00, !dbg !162077
  %i.f = fcmp ole double %3, 1.000000e+00
  %spec.select.i = and i1 %i.e, %i.f, !dbg !162078
  br i1 %spec.select.i, label %bb.c, label %bb.b, !dbg !162079

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) @57, i64 72, i1 false), !dbg !162080
  br label %bb.d, !dbg !162081

bb.c:                                             ; preds = %bb.a
  switch i64 %2, label %bb.f [
    i64 0, label %bb.e
    i64 1, label %bb.l
  ], !dbg !162082

bb.d:                                             ; preds = %bb.n, %bb.o, %bb.r, %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, %bb.l, %bb.e, %bb.b
  ret void, !dbg !162083

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !162084
  store i64 0, ptr %i.g, align 8, !dbg !162084
  store i64 18, ptr %0, align 8, !dbg !162084
  br label %bb.d, !dbg !162081

bb.f:                                             ; preds = %bb.c
  %i.h = uitofp nneg i64 %2 to double, !dbg !162085 ; 2 uses
  %i.i = fadd nnan double %i.h, -1.000000e+00, !dbg !162086
  %i.j = fmul double %3, %i.i, !dbg !162086
  %i.k = fadd double %i.j, 0.000000e+00, !dbg !162086 ; 5 uses
  switch i8 %4, label %default.unreachable [
    i8 0, label %bb.g
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.h
    i8 4, label %bb.h
    i8 5, label %bb.j
  ], !dbg !162087

default.unreachable:                              ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = tail call double @llvm.round.f64(double %i.k), !dbg !162088
  %i.m = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.l), !dbg !162089
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !162090

bb.h:                                             ; preds = %bb.f, %bb.f, %bb.f
  %i.n = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.k), !dbg !162091
  %.pre.i = tail call double @llvm.ceil.f64(double %i.k), !dbg !162092
  %.pre7.i = tail call i64 @llvm.fptoui.sat.i64.f64(double %.pre.i), !dbg !162093
  br label %bb.k, !dbg !162094

bb.i:                                             ; preds = %bb.f
  %i.o = tail call double @llvm.ceil.f64(double %i.k), !dbg !162095
  %i.p = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.o), !dbg !162096 ; 2 uses
  br label %bb.k, !dbg !162097

bb.j:                                             ; preds = %bb.f
  %i.q = fmul nnan double %3, %i.h, !dbg !162098
  %i.r = tail call double @llvm.ceil.f64(double %i.q), !dbg !162099
  %i.s = fadd double %i.r, -1.000000e+00, !dbg !162100
  %i.t = tail call nsz double @llvm.maximumnum.f64(double %i.s, double 0.000000e+00), !dbg !162101
  %i.u = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.t), !dbg !162100
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !162090

bb.k:                                             ; preds = %bb.i, %bb.h
  %.pre-phi8.i = phi i64 [ %i.p, %bb.i ], [ %.pre7.i, %bb.h ], !dbg !162093
  %.sroa.0.0.i = phi i64 [ %i.p, %bb.i ], [ %i.n, %bb.h ], !dbg !162102
  %i.v = add nsw i64 %2, -1, !dbg !162103
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i, i64 %i.v), !dbg !162104 ; 2 uses
  %i.w = icmp eq i64 %.sroa.0.0.i.i, %.pre-phi8.i, !dbg !162105
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !162106

_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit: ; preds = %bb.g, %bb.j, %bb.k
  %.sink13.i = phi i64 [ %i.m, %bb.g ], [ %i.u, %bb.j ], [ %.sroa.0.0.i.i, %bb.k ] ; 2 uses
  %.sink11.i = phi double [ 0.000000e+00, %bb.g ], [ 0.000000e+00, %bb.j ], [ %i.k, %bb.k ]
  %.sink.i = phi i1 [ true, %bb.g ], [ true, %bb.j ], [ %i.w, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !162107
  call void @_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select18partition_at_indexsNCINvMB6_Ss22select_nth_unstable_byNvYsNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noalias noundef nonnull align 2 %1, i64 noundef range(i64 0, 4611686018427387904) %2, i64 noundef %.sink13.i, ptr noalias noundef nonnull %i.a), !dbg !162108
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !162109
  %i.y = load ptr, ptr %i.x, align 8, !dbg !162109, !nonnull !3468, !align !3804, !noundef !3468 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !162110
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !162110, !nonnull !3468, !align !3804, !noundef !3468 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 32, !dbg !162110
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !162110, !noundef !3468 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !162111
  br i1 %.sink.i, label %bb.n, label %bb.m, !dbg !162105

bb.l:                                             ; preds = %bb.c
  %.val26 = load i16, ptr %1, align 2, !dbg !162112, !noundef !3468
  %i.ad = sitofp i16 %.val26 to double, !dbg !162113
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !162114
  store i64 1, ptr %i.ae, align 8, !dbg !162114
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !162114
  store double %i.ad, ptr %i.af, align 8, !dbg !162114
  store i64 18, ptr %0, align 8, !dbg !162114
  br label %bb.d, !dbg !162081

bb.m:                                             ; preds = %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit
  switch i8 %4, label %bb.o [
    i8 3, label %bb.p
    i8 4, label %bb.q
  ], !dbg !162115

bb.n:                                             ; preds = %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit
  %.val25 = load i16, ptr %i.y, align 2, !dbg !162116, !noundef !3468
  %i.ag = sitofp i16 %.val25 to double, !dbg !162117
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !162118
  store i64 1, ptr %i.ah, align 8, !dbg !162118
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !162118
  store double %i.ag, ptr %i.ai, align 8, !dbg !162118
  store i64 18, ptr %0, align 8, !dbg !162118
  br label %bb.d, !dbg !162119

bb.o:                                             ; preds = %bb.m
  %.val24 = load i16, ptr %i.y, align 2, !dbg !162120, !noundef !3468
  %i.aj = sitofp i16 %.val24 to double, !dbg !162121
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !162122
  store i64 1, ptr %i.ak, align 8, !dbg !162122
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !162122
  store double %i.aj, ptr %i.al, align 8, !dbg !162122
  store i64 18, ptr %0, align 8, !dbg !162122
  br label %bb.d, !dbg !162123

bb.p:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.ac, !dbg !162124
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.aa, ptr %i.c, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.am, ptr %i.an, align 8
  %i.ao = call { i16, i16 } @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4ItersEENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c), !dbg !162125 ; 2 uses
  %i.ap = extractvalue { i16, i16 } %i.ao, 0, !dbg !162126
  %i.aq = trunc i16 %i.ap to i1, !dbg !162127
  br i1 %i.aq, label %bb.r, label %bb.s, !dbg !162127

bb.q:                                             ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.ac, !dbg !162128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.aa, ptr %i.b, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.ar, ptr %i.as, align 8
  %i.at = call { i16, i16 } @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4ItersEENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b), !dbg !162129 ; 2 uses
  %i.au = extractvalue { i16, i16 } %i.at, 0, !dbg !162130
  %i.av = trunc i16 %i.au to i1, !dbg !162131
  br i1 %i.av, label %bb.t, label %bb.v, !dbg !162131

bb.r:                                             ; preds = %bb.p
  %i.aw = extractvalue { i16, i16 } %i.ao, 1, !dbg !162126
  %i.ax = load ptr, ptr %i.c, align 8, !dbg !162132, !nonnull !3468, !noundef !3468
  %i.ay = load ptr, ptr %i.an, align 8, !dbg !162132, !noundef !3468
  %i.az = call noundef i16 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4ItersEENtNtNtB9_6traits8iterator8Iterator4foldsNCINvNvB1v_6min_by4foldsNvYsNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noundef nonnull %i.ax, ptr noundef %i.ay, i16 noundef %i.aw), !dbg !162133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !162134
  %.val23 = load i16, ptr %i.y, align 2, !dbg !162135, !noundef !3468
  %i.ba = sitofp i16 %.val23 to double, !dbg !162136 ; 3 uses
  %i.bb = sitofp i16 %i.az to double, !dbg !162137 ; 2 uses
  %i.bc = fcmp oeq double %i.ba, %i.bb, !dbg !162138
  %i.bd = fadd nnan double %i.bb, %i.ba, !dbg !162139
  %i.be = fmul nnan double %i.bd, 5.000000e-01, !dbg !162139
  %.sroa.0.0.i31 = select i1 %i.bc, double %i.ba, double %i.be, !dbg !162139
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !162140
  store i64 1, ptr %i.bf, align 8, !dbg !162140
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !162140
  store double %.sroa.0.0.i31, ptr %i.bg, align 8, !dbg !162140
  store i64 18, ptr %0, align 8, !dbg !162140
  br label %bb.d, !dbg !162141

bb.s:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !162134
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #46, !dbg !162142
  unreachable, !dbg !162142

bb.t:                                             ; preds = %bb.q
  %i.bh = extractvalue { i16, i16 } %i.at, 1, !dbg !162130
  %i.bi = load ptr, ptr %i.b, align 8, !dbg !162143, !nonnull !3468, !noundef !3468
  %i.bj = load ptr, ptr %i.as, align 8, !dbg !162143, !noundef !3468
  %i.bk = call noundef i16 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4ItersEENtNtNtB9_6traits8iterator8Iterator4foldsNCINvNvB1v_6min_by4foldsNvYsNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noundef nonnull %i.bi, ptr noundef %i.bj, i16 noundef %i.bh), !dbg !162144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !162145
  %.val21 = load i16, ptr %i.y, align 2, !dbg !162146, !noundef !3468
  %i.bl = sitofp i16 %.val21 to double, !dbg !162147 ; 4 uses
  %i.bm = sitofp i16 %i.bk to double, !dbg !162148 ; 2 uses
  %i.bn = fcmp oeq double %i.bl, %i.bm, !dbg !162149
  br i1 %i.bn, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.u, !dbg !162150

bb.u:                                             ; preds = %bb.t
  %i.bo = uitofp i64 %.sink13.i to double, !dbg !162151
  %i.bp = fsub double %.sink11.i, %i.bo, !dbg !162152
  %i.bq = fsub nnan double %i.bm, %i.bl, !dbg !162153
  %i.br = fmul double %i.bp, %i.bq, !dbg !162154
  %i.bs = fadd double %i.br, %i.bl, !dbg !162155
  br label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, !dbg !162156

_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit: ; preds = %bb.t, %bb.u
  %.sroa.0.0.i32 = phi double [ %i.bs, %bb.u ], [ %i.bl, %bb.t ], !dbg !162157
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !162158
  store i64 1, ptr %i.bt, align 8, !dbg !162158
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !162158
  store double %.sroa.0.0.i32, ptr %i.bu, align 8, !dbg !162158
  store i64 18, ptr %0, align 8, !dbg !162158
  br label %bb.d, !dbg !162159

bb.v:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !162145
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #46, !dbg !162160
  unreachable, !dbg !162160
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile14quantile_slicetEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull align 2 %1, i64 noundef range(i64 0, 4611686018427387904) %2, double noundef %3, i8 noundef range(i8 0, 6) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !162161 !guid !162216 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [40 x i8], align 8                ; 6 uses
  %i.e = fcmp oge double %3, 0.000000e+00, !dbg !162231
  %i.f = fcmp ole double %3, 1.000000e+00
  %spec.select.i = and i1 %i.e, %i.f, !dbg !162232
  br i1 %spec.select.i, label %bb.c, label %bb.b, !dbg !162233

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) @57, i64 72, i1 false), !dbg !162234
  br label %bb.d, !dbg !162235

bb.c:                                             ; preds = %bb.a
  switch i64 %2, label %bb.f [
    i64 0, label %bb.e
    i64 1, label %bb.l
  ], !dbg !162236

bb.d:                                             ; preds = %bb.n, %bb.o, %bb.r, %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, %bb.l, %bb.e, %bb.b
  ret void, !dbg !162237

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !162238
  store i64 0, ptr %i.g, align 8, !dbg !162238
  store i64 18, ptr %0, align 8, !dbg !162238
  br label %bb.d, !dbg !162235

bb.f:                                             ; preds = %bb.c
  %i.h = uitofp nneg i64 %2 to double, !dbg !162239 ; 2 uses
  %i.i = fadd nnan double %i.h, -1.000000e+00, !dbg !162240
  %i.j = fmul double %3, %i.i, !dbg !162240
  %i.k = fadd double %i.j, 0.000000e+00, !dbg !162240 ; 5 uses
  switch i8 %4, label %default.unreachable [
    i8 0, label %bb.g
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.h
    i8 4, label %bb.h
    i8 5, label %bb.j
  ], !dbg !162241

default.unreachable:                              ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = tail call double @llvm.round.f64(double %i.k), !dbg !162242
  %i.m = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.l), !dbg !162243
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !162244

bb.h:                                             ; preds = %bb.f, %bb.f, %bb.f
  %i.n = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.k), !dbg !162245
  %.pre.i = tail call double @llvm.ceil.f64(double %i.k), !dbg !162246
  %.pre7.i = tail call i64 @llvm.fptoui.sat.i64.f64(double %.pre.i), !dbg !162247
  br label %bb.k, !dbg !162248

bb.i:                                             ; preds = %bb.f
  %i.o = tail call double @llvm.ceil.f64(double %i.k), !dbg !162249
  %i.p = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.o), !dbg !162250 ; 2 uses
  br label %bb.k, !dbg !162251

bb.j:                                             ; preds = %bb.f
  %i.q = fmul nnan double %3, %i.h, !dbg !162252
  %i.r = tail call double @llvm.ceil.f64(double %i.q), !dbg !162253
  %i.s = fadd double %i.r, -1.000000e+00, !dbg !162254
  %i.t = tail call nsz double @llvm.maximumnum.f64(double %i.s, double 0.000000e+00), !dbg !162255
  %i.u = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.t), !dbg !162254
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !162244

bb.k:                                             ; preds = %bb.i, %bb.h
  %.pre-phi8.i = phi i64 [ %i.p, %bb.i ], [ %.pre7.i, %bb.h ], !dbg !162247
  %.sroa.0.0.i = phi i64 [ %i.p, %bb.i ], [ %i.n, %bb.h ], !dbg !162256
  %i.v = add nsw i64 %2, -1, !dbg !162257
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i, i64 %i.v), !dbg !162258 ; 2 uses
  %i.w = icmp eq i64 %.sroa.0.0.i.i, %.pre-phi8.i, !dbg !162259
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !162260

_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit: ; preds = %bb.g, %bb.j, %bb.k
  %.sink13.i = phi i64 [ %i.m, %bb.g ], [ %i.u, %bb.j ], [ %.sroa.0.0.i.i, %bb.k ] ; 2 uses
  %.sink11.i = phi double [ 0.000000e+00, %bb.g ], [ 0.000000e+00, %bb.j ], [ %i.k, %bb.k ]
  %.sink.i = phi i1 [ true, %bb.g ], [ true, %bb.j ], [ %i.w, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !162261
  call void @_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select18partition_at_indextNCINvMB6_St22select_nth_unstable_byNvYtNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noalias noundef nonnull align 2 %1, i64 noundef range(i64 0, 4611686018427387904) %2, i64 noundef %.sink13.i, ptr noalias noundef nonnull %i.a), !dbg !162262
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !162263
  %i.y = load ptr, ptr %i.x, align 8, !dbg !162263, !nonnull !3468, !align !3804, !noundef !3468 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !162264
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !162264, !nonnull !3468, !align !3804, !noundef !3468 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 32, !dbg !162264
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !162264, !noundef !3468 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !162265
  br i1 %.sink.i, label %bb.n, label %bb.m, !dbg !162259

bb.l:                                             ; preds = %bb.c
  %.val26 = load i16, ptr %1, align 2, !dbg !162266, !noundef !3468
  %i.ad = uitofp i16 %.val26 to double, !dbg !162267
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !162268
  store i64 1, ptr %i.ae, align 8, !dbg !162268
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !162268
  store double %i.ad, ptr %i.af, align 8, !dbg !162268
  store i64 18, ptr %0, align 8, !dbg !162268
  br label %bb.d, !dbg !162235

bb.m:                                             ; preds = %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit
  switch i8 %4, label %bb.o [
    i8 3, label %bb.p
    i8 4, label %bb.q
  ], !dbg !162269

bb.n:                                             ; preds = %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit
  %.val25 = load i16, ptr %i.y, align 2, !dbg !162270, !noundef !3468
  %i.ag = uitofp i16 %.val25 to double, !dbg !162271
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !162272
  store i64 1, ptr %i.ah, align 8, !dbg !162272
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !162272
  store double %i.ag, ptr %i.ai, align 8, !dbg !162272
  store i64 18, ptr %0, align 8, !dbg !162272
  br label %bb.d, !dbg !162273

bb.o:                                             ; preds = %bb.m
  %.val24 = load i16, ptr %i.y, align 2, !dbg !162274, !noundef !3468
  %i.aj = uitofp i16 %.val24 to double, !dbg !162275
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !162276
  store i64 1, ptr %i.ak, align 8, !dbg !162276
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !162276
  store double %i.aj, ptr %i.al, align 8, !dbg !162276
  store i64 18, ptr %0, align 8, !dbg !162276
  br label %bb.d, !dbg !162277

bb.p:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.ac, !dbg !162278
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.aa, ptr %i.c, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.am, ptr %i.an, align 8
  %i.ao = call { i16, i16 } @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4ItertEENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c), !dbg !162279 ; 2 uses
  %i.ap = extractvalue { i16, i16 } %i.ao, 0, !dbg !162280
  %i.aq = trunc i16 %i.ap to i1, !dbg !162281
  br i1 %i.aq, label %bb.r, label %bb.s, !dbg !162281

bb.q:                                             ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.ac, !dbg !162282
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.aa, ptr %i.b, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.ar, ptr %i.as, align 8
  %i.at = call { i16, i16 } @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4ItertEENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b), !dbg !162283 ; 2 uses
  %i.au = extractvalue { i16, i16 } %i.at, 0, !dbg !162284
  %i.av = trunc i16 %i.au to i1, !dbg !162285
  br i1 %i.av, label %bb.t, label %bb.v, !dbg !162285

bb.r:                                             ; preds = %bb.p
  %i.aw = extractvalue { i16, i16 } %i.ao, 1, !dbg !162280
  %i.ax = load ptr, ptr %i.c, align 8, !dbg !162286, !nonnull !3468, !noundef !3468
  %i.ay = load ptr, ptr %i.an, align 8, !dbg !162286, !noundef !3468
  %i.az = call noundef i16 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4ItertEENtNtNtB9_6traits8iterator8Iterator4foldtNCINvNvB1v_6min_by4foldtNvYtNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noundef nonnull %i.ax, ptr noundef %i.ay, i16 noundef %i.aw), !dbg !162287
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !162288
  %.val23 = load i16, ptr %i.y, align 2, !dbg !162289, !noundef !3468
  %i.ba = uitofp i16 %.val23 to double, !dbg !162290 ; 3 uses
  %i.bb = uitofp i16 %i.az to double, !dbg !162291 ; 2 uses
  %i.bc = fcmp oeq double %i.ba, %i.bb, !dbg !162292
  %i.bd = fadd nnan double %i.bb, %i.ba, !dbg !162293
  %i.be = fmul nnan double %i.bd, 5.000000e-01, !dbg !162293
  %.sroa.0.0.i31 = select i1 %i.bc, double %i.ba, double %i.be, !dbg !162293
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !162294
  store i64 1, ptr %i.bf, align 8, !dbg !162294
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !162294
  store double %.sroa.0.0.i31, ptr %i.bg, align 8, !dbg !162294
  store i64 18, ptr %0, align 8, !dbg !162294
  br label %bb.d, !dbg !162295

bb.s:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !162288
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #46, !dbg !162296
  unreachable, !dbg !162296

bb.t:                                             ; preds = %bb.q
  %i.bh = extractvalue { i16, i16 } %i.at, 1, !dbg !162284
  %i.bi = load ptr, ptr %i.b, align 8, !dbg !162297, !nonnull !3468, !noundef !3468
  %i.bj = load ptr, ptr %i.as, align 8, !dbg !162297, !noundef !3468
  %i.bk = call noundef i16 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4ItertEENtNtNtB9_6traits8iterator8Iterator4foldtNCINvNvB1v_6min_by4foldtNvYtNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noundef nonnull %i.bi, ptr noundef %i.bj, i16 noundef %i.bh), !dbg !162298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !162299
  %.val21 = load i16, ptr %i.y, align 2, !dbg !162300, !noundef !3468
  %i.bl = uitofp i16 %.val21 to double, !dbg !162301 ; 4 uses
  %i.bm = uitofp i16 %i.bk to double, !dbg !162302 ; 2 uses
  %i.bn = fcmp oeq double %i.bl, %i.bm, !dbg !162303
  br i1 %i.bn, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.u, !dbg !162304

bb.u:                                             ; preds = %bb.t
  %i.bo = uitofp i64 %.sink13.i to double, !dbg !162305
  %i.bp = fsub double %.sink11.i, %i.bo, !dbg !162306
  %i.bq = fsub nnan double %i.bm, %i.bl, !dbg !162307
  %i.br = fmul double %i.bp, %i.bq, !dbg !162308
  %i.bs = fadd double %i.br, %i.bl, !dbg !162309
  br label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, !dbg !162310

_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit: ; preds = %bb.t, %bb.u
  %.sroa.0.0.i32 = phi double [ %i.bs, %bb.u ], [ %i.bl, %bb.t ], !dbg !162311
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !162312
  store i64 1, ptr %i.bt, align 8, !dbg !162312
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !162312
  store double %.sroa.0.0.i32, ptr %i.bu, align 8, !dbg !162312
  store i64 18, ptr %0, align 8, !dbg !162312
  br label %bb.d, !dbg !162313

bb.v:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !162299
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #46, !dbg !162314
  unreachable, !dbg !162314
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile14quantile_slicexEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull align 8 %1, i64 noundef range(i64 0, 1152921504606846976) %2, double noundef %3, i8 noundef range(i8 0, 6) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !162315 !guid !162370 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [40 x i8], align 8                ; 6 uses
  %i.e = fcmp oge double %3, 0.000000e+00, !dbg !162385
  %i.f = fcmp ole double %3, 1.000000e+00
  %spec.select.i = and i1 %i.e, %i.f, !dbg !162386
  br i1 %spec.select.i, label %bb.c, label %bb.b, !dbg !162387

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) @57, i64 72, i1 false), !dbg !162388
  br label %bb.d, !dbg !162389

bb.c:                                             ; preds = %bb.a
  switch i64 %2, label %bb.f [
    i64 0, label %bb.e
    i64 1, label %bb.l
  ], !dbg !162390

bb.d:                                             ; preds = %bb.n, %bb.o, %bb.r, %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, %bb.l, %bb.e, %bb.b
  ret void, !dbg !162391

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !162392
  store i64 0, ptr %i.g, align 8, !dbg !162392
  store i64 18, ptr %0, align 8, !dbg !162392
  br label %bb.d, !dbg !162389

bb.f:                                             ; preds = %bb.c
  %i.h = uitofp nneg i64 %2 to double, !dbg !162393 ; 2 uses
  %i.i = fadd nnan double %i.h, -1.000000e+00, !dbg !162394
  %i.j = fmul double %3, %i.i, !dbg !162394
  %i.k = fadd double %i.j, 0.000000e+00, !dbg !162394 ; 5 uses
  switch i8 %4, label %default.unreachable [
    i8 0, label %bb.g
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.h
    i8 4, label %bb.h
    i8 5, label %bb.j
  ], !dbg !162395

default.unreachable:                              ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = tail call double @llvm.round.f64(double %i.k), !dbg !162396
  %i.m = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.l), !dbg !162397
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !162398

bb.h:                                             ; preds = %bb.f, %bb.f, %bb.f
  %i.n = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.k), !dbg !162399
  %.pre.i = tail call double @llvm.ceil.f64(double %i.k), !dbg !162400
  %.pre7.i = tail call i64 @llvm.fptoui.sat.i64.f64(double %.pre.i), !dbg !162401
  br label %bb.k, !dbg !162402

bb.i:                                             ; preds = %bb.f
  %i.o = tail call double @llvm.ceil.f64(double %i.k), !dbg !162403
  %i.p = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.o), !dbg !162404 ; 2 uses
  br label %bb.k, !dbg !162405

bb.j:                                             ; preds = %bb.f
  %i.q = fmul nnan double %3, %i.h, !dbg !162406
  %i.r = tail call double @llvm.ceil.f64(double %i.q), !dbg !162407
  %i.s = fadd double %i.r, -1.000000e+00, !dbg !162408
  %i.t = tail call nsz double @llvm.maximumnum.f64(double %i.s, double 0.000000e+00), !dbg !162409
  %i.u = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.t), !dbg !162408
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !162398

bb.k:                                             ; preds = %bb.i, %bb.h
  %.pre-phi8.i = phi i64 [ %i.p, %bb.i ], [ %.pre7.i, %bb.h ], !dbg !162401
  %.sroa.0.0.i = phi i64 [ %i.p, %bb.i ], [ %i.n, %bb.h ], !dbg !162410
  %i.v = add nsw i64 %2, -1, !dbg !162411
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i, i64 %i.v), !dbg !162412 ; 2 uses
  %i.w = icmp eq i64 %.sroa.0.0.i.i, %.pre-phi8.i, !dbg !162413
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !162414

_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit: ; preds = %bb.g, %bb.j, %bb.k
  %.sink13.i = phi i64 [ %i.m, %bb.g ], [ %i.u, %bb.j ], [ %.sroa.0.0.i.i, %bb.k ] ; 2 uses
  %.sink11.i = phi double [ 0.000000e+00, %bb.g ], [ 0.000000e+00, %bb.j ], [ %i.k, %bb.k ]
  %.sink.i = phi i1 [ true, %bb.g ], [ true, %bb.j ], [ %i.w, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !162415
  call void @_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select18partition_at_indexxNCINvMB6_Sx22select_nth_unstable_byNvYxNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noalias noundef nonnull align 8 %1, i64 noundef range(i64 0, 1152921504606846976) %2, i64 noundef %.sink13.i, ptr noalias noundef nonnull %i.a), !dbg !162416
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !162417
  %i.y = load ptr, ptr %i.x, align 8, !dbg !162417, !nonnull !3468, !align !3637, !noundef !3468 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !162418
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !162418, !nonnull !3468, !align !3637, !noundef !3468 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 32, !dbg !162418
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !162418, !noundef !3468 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !162419
  br i1 %.sink.i, label %bb.n, label %bb.m, !dbg !162413

bb.l:                                             ; preds = %bb.c
  %.val26 = load i64, ptr %1, align 8, !dbg !162420, !noundef !3468
  %i.ad = sitofp i64 %.val26 to double, !dbg !162421
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !162422
  store i64 1, ptr %i.ae, align 8, !dbg !162422
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !162422
  store double %i.ad, ptr %i.af, align 8, !dbg !162422
  store i64 18, ptr %0, align 8, !dbg !162422
  br label %bb.d, !dbg !162389

bb.m:                                             ; preds = %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit
  switch i8 %4, label %bb.o [
    i8 3, label %bb.p
    i8 4, label %bb.q
  ], !dbg !162423

bb.n:                                             ; preds = %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit
  %.val25 = load i64, ptr %i.y, align 8, !dbg !162424, !noundef !3468
  %i.ag = sitofp i64 %.val25 to double, !dbg !162425
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !162426
  store i64 1, ptr %i.ah, align 8, !dbg !162426
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !162426
  store double %i.ag, ptr %i.ai, align 8, !dbg !162426
  store i64 18, ptr %0, align 8, !dbg !162426
  br label %bb.d, !dbg !162427

bb.o:                                             ; preds = %bb.m
  %.val24 = load i64, ptr %i.y, align 8, !dbg !162428, !noundef !3468
  %i.aj = sitofp i64 %.val24 to double, !dbg !162429
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !162430
  store i64 1, ptr %i.ak, align 8, !dbg !162430
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !162430
  store double %i.aj, ptr %i.al, align 8, !dbg !162430
  store i64 18, ptr %0, align 8, !dbg !162430
  br label %bb.d, !dbg !162431

bb.p:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ac, !dbg !162432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.aa, ptr %i.c, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.am, ptr %i.an, align 8
  %i.ao = call { i64, i64 } @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterxEENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c), !dbg !162433 ; 2 uses
  %i.ap = extractvalue { i64, i64 } %i.ao, 0, !dbg !162434
  %i.aq = trunc nuw i64 %i.ap to i1, !dbg !162435
  br i1 %i.aq, label %bb.r, label %bb.s, !dbg !162435

bb.q:                                             ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ac, !dbg !162436
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.aa, ptr %i.b, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.ar, ptr %i.as, align 8
  %i.at = call { i64, i64 } @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterxEENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b), !dbg !162437 ; 2 uses
  %i.au = extractvalue { i64, i64 } %i.at, 0, !dbg !162438
  %i.av = trunc nuw i64 %i.au to i1, !dbg !162439
  br i1 %i.av, label %bb.t, label %bb.v, !dbg !162439

bb.r:                                             ; preds = %bb.p
  %i.aw = extractvalue { i64, i64 } %i.ao, 1, !dbg !162434
  %i.ax = load ptr, ptr %i.c, align 8, !dbg !162440, !nonnull !3468, !noundef !3468
  %i.ay = load ptr, ptr %i.an, align 8, !dbg !162440, !noundef !3468
  %i.az = call noundef i64 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterxEENtNtNtB9_6traits8iterator8Iterator4foldxNCINvNvB1v_6min_by4foldxNvYxNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noundef nonnull %i.ax, ptr noundef %i.ay, i64 noundef %i.aw), !dbg !162441
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !162442
  %.val23 = load i64, ptr %i.y, align 8, !dbg !162443, !noundef !3468
  %i.ba = sitofp i64 %.val23 to double, !dbg !162444 ; 3 uses
  %i.bb = sitofp i64 %i.az to double, !dbg !162445 ; 2 uses
  %i.bc = fcmp oeq double %i.ba, %i.bb, !dbg !162446
  %i.bd = fadd nnan double %i.bb, %i.ba, !dbg !162447
  %i.be = fmul nnan double %i.bd, 5.000000e-01, !dbg !162447
  %.sroa.0.0.i31 = select i1 %i.bc, double %i.ba, double %i.be, !dbg !162447
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !162448
  store i64 1, ptr %i.bf, align 8, !dbg !162448
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !162448
  store double %.sroa.0.0.i31, ptr %i.bg, align 8, !dbg !162448
  store i64 18, ptr %0, align 8, !dbg !162448
  br label %bb.d, !dbg !162449

bb.s:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !162442
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #46, !dbg !162450
  unreachable, !dbg !162450

bb.t:                                             ; preds = %bb.q
  %i.bh = extractvalue { i64, i64 } %i.at, 1, !dbg !162438
  %i.bi = load ptr, ptr %i.b, align 8, !dbg !162451, !nonnull !3468, !noundef !3468
  %i.bj = load ptr, ptr %i.as, align 8, !dbg !162451, !noundef !3468
  %i.bk = call noundef i64 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterxEENtNtNtB9_6traits8iterator8Iterator4foldxNCINvNvB1v_6min_by4foldxNvYxNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noundef nonnull %i.bi, ptr noundef %i.bj, i64 noundef %i.bh), !dbg !162452
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !162453
  %.val21 = load i64, ptr %i.y, align 8, !dbg !162454, !noundef !3468
  %i.bl = sitofp i64 %.val21 to double, !dbg !162455 ; 4 uses
  %i.bm = sitofp i64 %i.bk to double, !dbg !162456 ; 2 uses
  %i.bn = fcmp oeq double %i.bl, %i.bm, !dbg !162457
  br i1 %i.bn, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.u, !dbg !162458

bb.u:                                             ; preds = %bb.t
  %i.bo = uitofp i64 %.sink13.i to double, !dbg !162459
  %i.bp = fsub double %.sink11.i, %i.bo, !dbg !162460
  %i.bq = fsub nnan double %i.bm, %i.bl, !dbg !162461
  %i.br = fmul double %i.bp, %i.bq, !dbg !162462
  %i.bs = fadd double %i.br, %i.bl, !dbg !162463
  br label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, !dbg !162464

_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit: ; preds = %bb.t, %bb.u
  %.sroa.0.0.i32 = phi double [ %i.bs, %bb.u ], [ %i.bl, %bb.t ], !dbg !162465
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !162466
  store i64 1, ptr %i.bt, align 8, !dbg !162466
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !162466
  store double %.sroa.0.0.i32, ptr %i.bu, align 8, !dbg !162466
  store i64 18, ptr %0, align 8, !dbg !162466
  br label %bb.d, !dbg !162467

bb.v:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !162453
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #46, !dbg !162468
  unreachable, !dbg !162468
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile14quantile_sliceyEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull align 8 %1, i64 noundef range(i64 0, 1152921504606846976) %2, double noundef %3, i8 noundef range(i8 0, 6) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !162469 !guid !162524 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [40 x i8], align 8                ; 6 uses
  %i.e = fcmp oge double %3, 0.000000e+00, !dbg !162539
  %i.f = fcmp ole double %3, 1.000000e+00
  %spec.select.i = and i1 %i.e, %i.f, !dbg !162540
  br i1 %spec.select.i, label %bb.c, label %bb.b, !dbg !162541

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) @57, i64 72, i1 false), !dbg !162542
  br label %bb.d, !dbg !162543

bb.c:                                             ; preds = %bb.a
  switch i64 %2, label %bb.f [
    i64 0, label %bb.e
    i64 1, label %bb.l
  ], !dbg !162544

bb.d:                                             ; preds = %bb.n, %bb.o, %bb.r, %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, %bb.l, %bb.e, %bb.b
  ret void, !dbg !162545

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !162546
  store i64 0, ptr %i.g, align 8, !dbg !162546
  store i64 18, ptr %0, align 8, !dbg !162546
  br label %bb.d, !dbg !162543

bb.f:                                             ; preds = %bb.c
  %i.h = uitofp nneg i64 %2 to double, !dbg !162547 ; 2 uses
  %i.i = fadd nnan double %i.h, -1.000000e+00, !dbg !162548
  %i.j = fmul double %3, %i.i, !dbg !162548
  %i.k = fadd double %i.j, 0.000000e+00, !dbg !162548 ; 5 uses
  switch i8 %4, label %default.unreachable [
    i8 0, label %bb.g
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.h
    i8 4, label %bb.h
    i8 5, label %bb.j
  ], !dbg !162549

default.unreachable:                              ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = tail call double @llvm.round.f64(double %i.k), !dbg !162550
  %i.m = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.l), !dbg !162551
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !162552

bb.h:                                             ; preds = %bb.f, %bb.f, %bb.f
  %i.n = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.k), !dbg !162553
  %.pre.i = tail call double @llvm.ceil.f64(double %i.k), !dbg !162554
  %.pre7.i = tail call i64 @llvm.fptoui.sat.i64.f64(double %.pre.i), !dbg !162555
  br label %bb.k, !dbg !162556

bb.i:                                             ; preds = %bb.f
  %i.o = tail call double @llvm.ceil.f64(double %i.k), !dbg !162557
  %i.p = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.o), !dbg !162558 ; 2 uses
  br label %bb.k, !dbg !162559

bb.j:                                             ; preds = %bb.f
  %i.q = fmul nnan double %3, %i.h, !dbg !162560
  %i.r = tail call double @llvm.ceil.f64(double %i.q), !dbg !162561
  %i.s = fadd double %i.r, -1.000000e+00, !dbg !162562
  %i.t = tail call nsz double @llvm.maximumnum.f64(double %i.s, double 0.000000e+00), !dbg !162563
  %i.u = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.t), !dbg !162562
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !162552

bb.k:                                             ; preds = %bb.i, %bb.h
  %.pre-phi8.i = phi i64 [ %i.p, %bb.i ], [ %.pre7.i, %bb.h ], !dbg !162555
  %.sroa.0.0.i = phi i64 [ %i.p, %bb.i ], [ %i.n, %bb.h ], !dbg !162564
  %i.v = add nsw i64 %2, -1, !dbg !162565
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i, i64 %i.v), !dbg !162566 ; 2 uses
  %i.w = icmp eq i64 %.sroa.0.0.i.i, %.pre-phi8.i, !dbg !162567
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !162568

_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit: ; preds = %bb.g, %bb.j, %bb.k
  %.sink13.i = phi i64 [ %i.m, %bb.g ], [ %i.u, %bb.j ], [ %.sroa.0.0.i.i, %bb.k ] ; 2 uses
  %.sink11.i = phi double [ 0.000000e+00, %bb.g ], [ 0.000000e+00, %bb.j ], [ %i.k, %bb.k ]
  %.sink.i = phi i1 [ true, %bb.g ], [ true, %bb.j ], [ %i.w, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !162569
  call void @_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select18partition_at_indexyNCINvMB6_Sy22select_nth_unstable_byNvYyNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noalias noundef nonnull align 8 %1, i64 noundef range(i64 0, 1152921504606846976) %2, i64 noundef %.sink13.i, ptr noalias noundef nonnull %i.a), !dbg !162570
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !162571
  %i.y = load ptr, ptr %i.x, align 8, !dbg !162571, !nonnull !3468, !align !3637, !noundef !3468 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !162572
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !162572, !nonnull !3468, !align !3637, !noundef !3468 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 32, !dbg !162572
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !162572, !noundef !3468 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !162573
  br i1 %.sink.i, label %bb.n, label %bb.m, !dbg !162567

bb.l:                                             ; preds = %bb.c
  %.val26 = load i64, ptr %1, align 8, !dbg !162574, !noundef !3468
  %i.ad = uitofp i64 %.val26 to double, !dbg !162575
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !162576
  store i64 1, ptr %i.ae, align 8, !dbg !162576
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !162576
  store double %i.ad, ptr %i.af, align 8, !dbg !162576
  store i64 18, ptr %0, align 8, !dbg !162576
  br label %bb.d, !dbg !162543

bb.m:                                             ; preds = %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit
  switch i8 %4, label %bb.o [
    i8 3, label %bb.p
    i8 4, label %bb.q
  ], !dbg !162577

bb.n:                                             ; preds = %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit
  %.val25 = load i64, ptr %i.y, align 8, !dbg !162578, !noundef !3468
  %i.ag = uitofp i64 %.val25 to double, !dbg !162579
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !162580
  store i64 1, ptr %i.ah, align 8, !dbg !162580
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !162580
  store double %i.ag, ptr %i.ai, align 8, !dbg !162580
  store i64 18, ptr %0, align 8, !dbg !162580
  br label %bb.d, !dbg !162581

bb.o:                                             ; preds = %bb.m
  %.val24 = load i64, ptr %i.y, align 8, !dbg !162582, !noundef !3468
  %i.aj = uitofp i64 %.val24 to double, !dbg !162583
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !162584
  store i64 1, ptr %i.ak, align 8, !dbg !162584
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !162584
  store double %i.aj, ptr %i.al, align 8, !dbg !162584
  store i64 18, ptr %0, align 8, !dbg !162584
  br label %bb.d, !dbg !162585

bb.p:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ac, !dbg !162586
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.aa, ptr %i.c, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.am, ptr %i.an, align 8
  %i.ao = call { i64, i64 } @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IteryEENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c), !dbg !162587 ; 2 uses
  %i.ap = extractvalue { i64, i64 } %i.ao, 0, !dbg !162588
  %i.aq = trunc nuw i64 %i.ap to i1, !dbg !162589
  br i1 %i.aq, label %bb.r, label %bb.s, !dbg !162589

bb.q:                                             ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ac, !dbg !162590
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.aa, ptr %i.b, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.ar, ptr %i.as, align 8
  %i.at = call { i64, i64 } @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IteryEENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b), !dbg !162591 ; 2 uses
  %i.au = extractvalue { i64, i64 } %i.at, 0, !dbg !162592
  %i.av = trunc nuw i64 %i.au to i1, !dbg !162593
  br i1 %i.av, label %bb.t, label %bb.v, !dbg !162593

bb.r:                                             ; preds = %bb.p
  %i.aw = extractvalue { i64, i64 } %i.ao, 1, !dbg !162588
  %i.ax = load ptr, ptr %i.c, align 8, !dbg !162594, !nonnull !3468, !noundef !3468
  %i.ay = load ptr, ptr %i.an, align 8, !dbg !162594, !noundef !3468
  %i.az = call noundef i64 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IteryEENtNtNtB9_6traits8iterator8Iterator4foldyNCINvNvB1v_6min_by4foldyNvYyNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noundef nonnull %i.ax, ptr noundef %i.ay, i64 noundef %i.aw), !dbg !162595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !162596
  %.val23 = load i64, ptr %i.y, align 8, !dbg !162597, !noundef !3468
  %i.ba = uitofp i64 %.val23 to double, !dbg !162598 ; 3 uses
  %i.bb = uitofp i64 %i.az to double, !dbg !162599 ; 2 uses
  %i.bc = fcmp oeq double %i.ba, %i.bb, !dbg !162600
  %i.bd = fadd nnan double %i.bb, %i.ba, !dbg !162601
  %i.be = fmul nnan double %i.bd, 5.000000e-01, !dbg !162601
  %.sroa.0.0.i31 = select i1 %i.bc, double %i.ba, double %i.be, !dbg !162601
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !162602
  store i64 1, ptr %i.bf, align 8, !dbg !162602
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !162602
  store double %.sroa.0.0.i31, ptr %i.bg, align 8, !dbg !162602
  store i64 18, ptr %0, align 8, !dbg !162602
  br label %bb.d, !dbg !162603

bb.s:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !162596
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #46, !dbg !162604
  unreachable, !dbg !162604

bb.t:                                             ; preds = %bb.q
  %i.bh = extractvalue { i64, i64 } %i.at, 1, !dbg !162592
  %i.bi = load ptr, ptr %i.b, align 8, !dbg !162605, !nonnull !3468, !noundef !3468
  %i.bj = load ptr, ptr %i.as, align 8, !dbg !162605, !noundef !3468
  %i.bk = call noundef i64 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IteryEENtNtNtB9_6traits8iterator8Iterator4foldyNCINvNvB1v_6min_by4foldyNvYyNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noundef nonnull %i.bi, ptr noundef %i.bj, i64 noundef %i.bh), !dbg !162606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !162607
  %.val21 = load i64, ptr %i.y, align 8, !dbg !162608, !noundef !3468
  %i.bl = uitofp i64 %.val21 to double, !dbg !162609 ; 4 uses
  %i.bm = uitofp i64 %i.bk to double, !dbg !162610 ; 2 uses
  %i.bn = fcmp oeq double %i.bl, %i.bm, !dbg !162611
  br i1 %i.bn, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.u, !dbg !162612

bb.u:                                             ; preds = %bb.t
  %i.bo = uitofp i64 %.sink13.i to double, !dbg !162613
  %i.bp = fsub double %.sink11.i, %i.bo, !dbg !162614
  %i.bq = fsub nnan double %i.bm, %i.bl, !dbg !162615
  %i.br = fmul double %i.bp, %i.bq, !dbg !162616
  %i.bs = fadd double %i.br, %i.bl, !dbg !162617
  br label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, !dbg !162618

_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit: ; preds = %bb.t, %bb.u
  %.sroa.0.0.i32 = phi double [ %i.bs, %bb.u ], [ %i.bl, %bb.t ], !dbg !162619
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !162620
  store i64 1, ptr %i.bt, align 8, !dbg !162620
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !162620
  store double %.sroa.0.0.i32, ptr %i.bu, align 8, !dbg !162620
  store i64 18, ptr %0, align 8, !dbg !162620
  br label %bb.d, !dbg !162621

bb.v:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !162607
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #46, !dbg !162622
  unreachable, !dbg !162622
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15quantiles_sliceNtNtCs2mZqlW55729_12polars_utils7float164pf16EBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull align 2 %1, i64 noundef range(i64 0, 4611686018427387904) %2, ptr noalias noundef nonnull readonly align 8 captures(address) %3, i64 noundef range(i64 0, 1152921504606846976) %4, i8 noundef range(i8 0, 6) %5) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !162623 !guid !162785 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %.idx = shl nuw nsw i64 %4, 3, !dbg !162817
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 %.idx, !dbg !162817 ; 2 uses
  %i.f = icmp eq i64 %4, 0, !dbg !162818          ; 2 uses
  br i1 %i.f, label %._crit_edge, label %.lr.ph, !dbg !162792

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.061, i64 8, !dbg !162819 ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.e, !dbg !162818
  br i1 %i.h, label %._crit_edge, label %.lr.ph, !dbg !162792

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.061 = phi ptr [ %i.g, %bb.b ], [ %3, %bb.a ] ; 2 uses
  %i.i = load double, ptr %.sroa.0.061, align 8, !dbg !162820, !noundef !3468 ; 2 uses
  %i.j = fcmp oge double %i.i, 0.000000e+00, !dbg !162821
  %i.k = fcmp ole double %i.i, 1.000000e+00
  %spec.select.i = and i1 %i.j, %i.k, !dbg !162822
  br i1 %spec.select.i, label %bb.b, label %bb.c, !dbg !162823

._crit_edge:                                      ; preds = %bb.b, %bb.a
  switch i64 %2, label %bb.f [
    i64 0, label %bb.e
    i64 1, label %bb.i
  ], !dbg !162824

bb.c:                                             ; preds = %.lr.ph
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) @57, i64 72, i1 false), !dbg !162825
  br label %bb.d, !dbg !162826

bb.d:                                             ; preds = %._crit_edge65, %_RNvXNvNtCs2mZqlW55729_12polars_utils7float16s5_1__NtB4_4pf16NtNtCslmKYcnV0hjo_10num_traits4cast11ToPrimitive6to_f64.exit, %bb.e, %bb.c
  ret void, !dbg !162827

bb.e:                                             ; preds = %._crit_edge
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !162828
  tail call void @_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemINtNtCscgRAwXFJnXP_4core6option6OptiondENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, i64 noundef 0, double undef, i64 noundef %4), !dbg !162829
  store i64 18, ptr %0, align 8, !dbg !162828
  br label %bb.d, !dbg !162826

bb.f:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !162797
  store ptr %i.a, ptr %i.b, align 8, !noalias !162798
  %i.m = icmp samesign ult i64 %2, 21, !dbg !162830
  br i1 %i.m, label %bb.h, label %bb.g, !dbg !162831, !prof !3738

bb.g:                                             ; preds = %bb.f
  call void @_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable14driftsort_mainNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBZ_7sort_byNvYBZ_NtNtB13_9total_ord8TotalOrd7tot_cmpE0INtNtB1Q_3vec3VecBZ_EECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 2 %1, i64 noundef range(i64 0, 4611686018427387904) %2, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b), !dbg !162832
  br label %_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSNtNtCs2mZqlW55729_12polars_utils7float164pf167sort_byNvYBw_NtNtBA_9total_ord8TotalOrd7tot_cmpECs1LHh8CLbVkQ_11polars_core.exit, !dbg !162832

bb.h:                                             ; preds = %bb.f
  call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCs2mZqlW55729_12polars_utils7float164pf16NCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1m_7sort_byNvYB1m_NtNtB1q_9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 2 %1, i64 noundef range(i64 0, 4611686018427387904) %2, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b), !dbg !162833
  br label %_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSNtNtCs2mZqlW55729_12polars_utils7float164pf167sort_byNvYBw_NtNtBA_9total_ord8TotalOrd7tot_cmpECs1LHh8CLbVkQ_11polars_core.exit, !dbg !162833

_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSNtNtCs2mZqlW55729_12polars_utils7float164pf167sort_byNvYBw_NtNtBA_9total_ord8TotalOrd7tot_cmpECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !162834, !noalias !162797
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !162835
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !162836
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !dbg !162836
  %i.n = load i64, ptr %i.c, align 8, !dbg !162836, !range !3513, !noundef !3468
  %i.o = trunc nuw i64 %i.n to i1, !dbg !162837
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !162838
  %i.q = load i64, ptr %i.p, align 8, !dbg !162838, !range !3514, !noundef !3468 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !162838 ; 2 uses
  br i1 %i.o, label %bb.t, label %bb.u, !dbg !162837, !prof !3515

bb.i:                                             ; preds = %._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !162803), !dbg !162839
  %i.s = load i16, ptr %1, align 2, !dbg !162840, !alias.scope !162803, !noundef !3468 ; 6 uses
  %i.t = load atomic i64, ptr @_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache5CACHE monotonic, align 8, !dbg !162841, !noalias !162803 ; 2 uses
  %i.u = icmp eq i64 %i.t, 0, !dbg !162842
  br i1 %i.u, label %.split.i.i, label %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i, !dbg !162842, !prof !3515

.split.i.i:                                       ; preds = %bb.i
  %i.v = tail call noundef i128 @_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache21detect_and_initialize(), !dbg !162843, !noalias !162803
  %i.w = and i128 %i.v, 36028797018963968, !dbg !162844
  %.not1.i.i = icmp eq i128 %i.w, 0, !dbg !162844
  br i1 %.not1.i.i, label %bb.j, label %bb.s, !dbg !162845

_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i: ; preds = %bb.i
  %i.x = and i64 %i.t, 36028797018963968, !dbg !162846
  %.not.i.i = icmp eq i64 %i.x, 0, !dbg !162846
  br i1 %.not.i.i, label %bb.j, label %bb.s, !dbg !162845

bb.j:                                             ; preds = %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i, %.split.i.i
  %i.y = and i16 %i.s, 32767, !dbg !162847
  %i.z = icmp eq i16 %i.y, 0, !dbg !162847
  br i1 %i.z, label %bb.k, label %bb.l, !dbg !162847

bb.k:                                             ; preds = %bb.j
  %i.aa = zext i16 %i.s to i64, !dbg !162848
  %i.ab = shl nuw i64 %i.aa, 48, !dbg !162848
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f64_fallback.exit.i.i, !dbg !162849

bb.l:                                             ; preds = %bb.j
  %i.ac = and i16 %i.s, -32768, !dbg !162850
  %i.ad = zext i16 %i.ac to i64, !dbg !162850     ; 2 uses
  %i.ae = and i16 %i.s, 31744, !dbg !162851       ; 3 uses
  %i.af = and i16 %i.s, 1023, !dbg !162852        ; 3 uses
  %i.ag = zext nneg i16 %i.af to i64, !dbg !162852 ; 3 uses
  %i.ah = icmp eq i16 %i.ae, 31744, !dbg !162853
  br i1 %i.ah, label %bb.m, label %bb.n, !dbg !162853

bb.m:                                             ; preds = %bb.l
  %i.ai = icmp eq i16 %i.af, 0, !dbg !162854
  %i.aj = shl nuw i64 %i.ad, 48, !dbg !162855     ; 2 uses
  br i1 %i.ai, label %bb.o, label %bb.p, !dbg !162854

bb.n:                                             ; preds = %bb.l
  %i.ak = shl nuw i64 %i.ad, 48, !dbg !162856     ; 2 uses
  %i.al = icmp eq i16 %i.ae, 0, !dbg !162857
  br i1 %i.al, label %bb.q, label %bb.r, !dbg !162857

bb.o:                                             ; preds = %bb.m
  %i.am = or disjoint i64 %i.aj, 9218868437227405312, !dbg !162858
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f64_fallback.exit.i.i, !dbg !162859

bb.p:                                             ; preds = %bb.m
  %i.an = shl nuw nsw i64 %i.ag, 42, !dbg !162860
  %i.ao = or disjoint i64 %i.aj, %i.an, !dbg !162861
  %i.ap = or i64 %i.ao, 9221120237041090560, !dbg !162861
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f64_fallback.exit.i.i, !dbg !162862

bb.q:                                             ; preds = %bb.n
  %i.aq = tail call range(i16 6, 17) i16 @llvm.ctlz.i16(i16 %i.af, i1 false), !dbg !162863
  %i.ar = zext nneg i16 %i.aq to i32, !dbg !162863 ; 2 uses
  %i.as = sub nuw nsw i32 1014, %i.ar, !dbg !162864
  %i.at = zext nneg i32 %i.as to i64, !dbg !162865
  %i.au = shl nuw nsw i64 %i.at, 52, !dbg !162865
  %i.av = add nuw nsw i32 %i.ar, 37, !dbg !162866
  %i.aw = zext nneg i32 %i.av to i64, !dbg !162867
  %i.ax = shl nuw nsw i64 %i.ag, %i.aw, !dbg !162867
  %i.ay = and i64 %i.ax, 4503599627370495, !dbg !162867
  %i.az = or disjoint i64 %i.ay, %i.au, !dbg !162868
  %i.ba = or disjoint i64 %i.az, %i.ak, !dbg !162868
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f64_fallback.exit.i.i, !dbg !162869

bb.r:                                             ; preds = %bb.n
  %i.bb = lshr exact i16 %i.ae, 10, !dbg !162870
  %narrow.i.i.i = add nuw nsw i16 %i.bb, 1008, !dbg !162871
  %i.bc = zext nneg i16 %narrow.i.i.i to i64, !dbg !162871
  %i.bd = shl nuw nsw i64 %i.bc, 52, !dbg !162872
  %i.be = shl nuw nsw i64 %i.ag, 42, !dbg !162873
  %i.bf = or disjoint i64 %i.bd, %i.be, !dbg !162874
  %i.bg = or disjoint i64 %i.bf, %i.ak, !dbg !162874
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f64_fallback.exit.i.i, !dbg !162875

_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f64_fallback.exit.i.i: ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.k
  %.sroa.0.0.i.i.i = phi i64 [ %i.ab, %bb.k ], [ %i.am, %bb.o ], [ %i.ap, %bb.p ], [ %i.ba, %bb.q ], [ %i.bg, %bb.r ], !dbg !162876
  %i.bh = bitcast i64 %.sroa.0.0.i.i.i to double, !dbg !162875
  br label %_RNvXNvNtCs2mZqlW55729_12polars_utils7float16s5_1__NtB4_4pf16NtNtCslmKYcnV0hjo_10num_traits4cast11ToPrimitive6to_f64.exit, !dbg !162877

bb.s:                                             ; preds = %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i, %.split.i.i
  %i.bi = tail call fastcc noundef float @_RNvNtNtNtCshdiYQzaKNQ1_4half8binary164arch3x8619f16_to_f32_x86_f16c(i16 noundef %i.s), !dbg !162878
  %i.bj = fpext float %i.bi to double, !dbg !162878
  br label %_RNvXNvNtCs2mZqlW55729_12polars_utils7float16s5_1__NtB4_4pf16NtNtCslmKYcnV0hjo_10num_traits4cast11ToPrimitive6to_f64.exit, !dbg !162879

_RNvXNvNtCs2mZqlW55729_12polars_utils7float16s5_1__NtB4_4pf16NtNtCslmKYcnV0hjo_10num_traits4cast11ToPrimitive6to_f64.exit: ; preds = %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f64_fallback.exit.i.i, %bb.s
  %.sroa.0.0.i.i = phi double [ %i.bj, %bb.s ], [ %i.bh, %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f64_fallback.exit.i.i ], !dbg !162880
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !162881
  tail call void @_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemINtNtCscgRAwXFJnXP_4core6option6OptiondENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bk, i64 noundef 1, double %.sroa.0.0.i.i, i64 noundef %4), !dbg !162882
  store i64 18, ptr %0, align 8, !dbg !162881
  br label %bb.d, !dbg !162826

bb.t:                                             ; preds = %_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSNtNtCs2mZqlW55729_12polars_utils7float164pf167sort_byNvYBw_NtNtBA_9total_ord8TotalOrd7tot_cmpECs1LHh8CLbVkQ_11polars_core.exit
  %i.bl = load i64, ptr %i.r, align 8, !dbg !162883
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.q, i64 %i.bl) #43, !dbg !162884
  unreachable, !dbg !162884

bb.u:                                             ; preds = %_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSNtNtCs2mZqlW55729_12polars_utils7float164pf167sort_byNvYBw_NtNtBA_9total_ord8TotalOrd7tot_cmpECs1LHh8CLbVkQ_11polars_core.exit
  %i.bm = load ptr, ptr %i.r, align 8, !dbg !162885, !nonnull !3468, !noundef !3468
  %i.bn = icmp samesign ule i64 %4, %i.q, !dbg !162886
  call void @llvm.assume(i1 %i.bn), !dbg !162887
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !162888
  store i64 %i.q, ptr %i.d, align 8, !dbg !162889
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !162889 ; 2 uses
  store ptr %i.bm, ptr %i.bo, align 8, !dbg !162889
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !162889 ; 3 uses
  store i64 0, ptr %i.bp, align 8, !dbg !162890
  br i1 %i.f, label %._crit_edge65, label %.lr.ph64, !dbg !162891

.lr.ph64:                                         ; preds = %bb.u
  %i.bq = uitofp nneg i64 %2 to double            ; 2 uses
  %i.br = fadd nnan double %i.bq, -1.000000e+00
  %i.bs = add nsw i64 %2, -1
  br label %bb.v, !dbg !162891

bb.v:                                             ; preds = %.lr.ph64, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit
  %.sroa.02.062 = phi ptr [ %3, %.lr.ph64 ], [ %i.bt, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.02.062, i64 8, !dbg !162892 ; 2 uses
  %i.bu = load double, ptr %.sroa.02.062, align 8, !dbg !162893, !noundef !3468 ; 2 uses
  %i.bv = fmul double %i.br, %i.bu, !dbg !162894
  %i.bw = fadd double %i.bv, 0.000000e+00, !dbg !162894 ; 5 uses
  switch i8 %5, label %default.unreachable [
    i8 0, label %bb.w
    i8 1, label %bb.x
    i8 2, label %bb.y
    i8 3, label %bb.x
    i8 4, label %bb.x
    i8 5, label %bb.z
  ], !dbg !162895

default.unreachable:                              ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.bx = call double @llvm.round.f64(double %i.bw), !dbg !162896
  %i.by = call i64 @llvm.fptoui.sat.i64.f64(double %i.bx), !dbg !162897
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !162898

bb.x:                                             ; preds = %bb.v, %bb.v, %bb.v
  %i.bz = call i64 @llvm.fptoui.sat.i64.f64(double %i.bw), !dbg !162899
  %.pre.i = call double @llvm.ceil.f64(double %i.bw), !dbg !162900
  %.pre7.i = call i64 @llvm.fptoui.sat.i64.f64(double %.pre.i), !dbg !162901
  br label %bb.aa, !dbg !162902

bb.y:                                             ; preds = %bb.v
  %i.ca = call double @llvm.ceil.f64(double %i.bw), !dbg !162903
  %i.cb = call i64 @llvm.fptoui.sat.i64.f64(double %i.ca), !dbg !162904 ; 2 uses
  br label %bb.aa, !dbg !162905

bb.z:                                             ; preds = %bb.v
  %i.cc = fmul double %i.bu, %i.bq, !dbg !162906
  %i.cd = call double @llvm.ceil.f64(double %i.cc), !dbg !162907
  %i.ce = fadd double %i.cd, -1.000000e+00, !dbg !162908
  %i.cf = call nsz double @llvm.maximumnum.f64(double %i.ce, double 0.000000e+00), !dbg !162909
  %i.cg = call i64 @llvm.fptoui.sat.i64.f64(double %i.cf), !dbg !162908
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !162898

bb.aa:                                            ; preds = %bb.y, %bb.x
  %.pre-phi8.i = phi i64 [ %i.cb, %bb.y ], [ %.pre7.i, %bb.x ], !dbg !162901
  %.sroa.0.0.i = phi i64 [ %i.cb, %bb.y ], [ %i.bz, %bb.x ], !dbg !162910
  %.sroa.0.0.i.i23 = call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i, i64 %i.bs), !dbg !162911 ; 2 uses
  %i.ch = icmp eq i64 %.pre-phi8.i, %.sroa.0.0.i.i23, !dbg !162912
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !162913

._crit_edge65:                                    ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit, %bb.u
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !162914
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ci, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !162915
  store i64 18, ptr %0, align 8, !dbg !162914
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !162916
  br label %bb.d, !dbg !162827

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.split.i.i51, %bb.bc, %.split.i.i39, %.split.i.i30, %.invoke
  %lpad.loopexit.split-lp91 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB4_6option6OptiondEEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 dereferenceable(24) %i.d) #44
          to label %bb.bs unwind label %bb.br, !dbg !162916

_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit: ; preds = %bb.aa, %bb.z, %bb.w
  %.sink13.i = phi i64 [ %i.by, %bb.w ], [ %i.cg, %bb.z ], [ %.sroa.0.0.i.i23, %bb.aa ] ; 6 uses
  %.sink11.i = phi double [ 0.000000e+00, %bb.w ], [ 0.000000e+00, %bb.z ], [ %i.bw, %bb.aa ]
  %.sink.i = phi i1 [ true, %bb.w ], [ true, %bb.z ], [ %i.ch, %bb.aa ] ; 2 uses
  %i.cj = icmp ult i64 %.sink13.i, %2, !dbg !162917
  br i1 %i.cj, label %bb.ab, label %.invoke, !dbg !162917

bb.ab:                                            ; preds = %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sink13.i, !dbg !162917
  call void @llvm.experimental.noalias.scope.decl(metadata !162811), !dbg !162918
  %i.cl = load i16, ptr %i.ck, align 2, !dbg !162919, !alias.scope !162811, !noundef !3468 ; 6 uses
  %i.cm = load atomic i64, ptr @_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache5CACHE monotonic, align 8, !dbg !162920, !noalias !162811 ; 2 uses
  %i.cn = icmp eq i64 %i.cm, 0, !dbg !162921
  br i1 %i.cn, label %.split.i.i30, label %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i24, !dbg !162921, !prof !3515

.split.i.i30:                                     ; preds = %bb.ab
  %i.co = invoke noundef i128 @_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache21detect_and_initialize()
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !162922

.noexc:                                           ; preds = %.split.i.i30
  %i.cp = and i128 %i.co, 36028797018963968, !dbg !162923
  %.not1.i.i31 = icmp eq i128 %i.cp, 0, !dbg !162923
  br i1 %.not1.i.i31, label %bb.ac, label %bb.al, !dbg !162924

_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i24: ; preds = %bb.ab
  %i.cq = and i64 %i.cm, 36028797018963968, !dbg !162925
  %.not.i.i25 = icmp eq i64 %i.cq, 0, !dbg !162925
  br i1 %.not.i.i25, label %bb.ac, label %bb.al, !dbg !162924

bb.ac:                                            ; preds = %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i24, %.noexc
  %i.cr = and i16 %i.cl, 32767, !dbg !162926
  %i.cs = icmp eq i16 %i.cr, 0, !dbg !162926
  br i1 %i.cs, label %bb.ad, label %bb.ae, !dbg !162926

bb.ad:                                            ; preds = %bb.ac
  %i.ct = zext i16 %i.cl to i64, !dbg !162927
  %i.cu = shl nuw i64 %i.ct, 48, !dbg !162927
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f64_fallback.exit.i.i28, !dbg !162928

bb.ae:                                            ; preds = %bb.ac
  %i.cv = and i16 %i.cl, -32768, !dbg !162929
  %i.cw = zext i16 %i.cv to i64, !dbg !162929     ; 2 uses
  %i.cx = and i16 %i.cl, 31744, !dbg !162930      ; 3 uses
  %i.cy = and i16 %i.cl, 1023, !dbg !162931       ; 3 uses
  %i.cz = zext nneg i16 %i.cy to i64, !dbg !162931 ; 3 uses
  %i.da = icmp eq i16 %i.cx, 31744, !dbg !162932
  br i1 %i.da, label %bb.af, label %bb.ag, !dbg !162932

bb.af:                                            ; preds = %bb.ae
  %i.db = icmp eq i16 %i.cy, 0, !dbg !162933
  %i.dc = shl nuw i64 %i.cw, 48, !dbg !162934     ; 2 uses
  br i1 %i.db, label %bb.ah, label %bb.ai, !dbg !162933

bb.ag:                                            ; preds = %bb.ae
  %i.dd = shl nuw i64 %i.cw, 48, !dbg !162935     ; 2 uses
  %i.de = icmp eq i16 %i.cx, 0, !dbg !162936
  br i1 %i.de, label %bb.aj, label %bb.ak, !dbg !162936

bb.ah:                                            ; preds = %bb.af
  %i.df = or disjoint i64 %i.dc, 9218868437227405312, !dbg !162937
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f64_fallback.exit.i.i28, !dbg !162938

bb.ai:                                            ; preds = %bb.af
  %i.dg = shl nuw nsw i64 %i.cz, 42, !dbg !162939
  %i.dh = or disjoint i64 %i.dc, %i.dg, !dbg !162940
  %i.di = or i64 %i.dh, 9221120237041090560, !dbg !162940
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f64_fallback.exit.i.i28, !dbg !162941

bb.aj:                                            ; preds = %bb.ag
  %i.dj = call range(i16 6, 17) i16 @llvm.ctlz.i16(i16 %i.cy, i1 false), !dbg !162942
  %i.dk = zext nneg i16 %i.dj to i32, !dbg !162942 ; 2 uses
  %i.dl = sub nuw nsw i32 1014, %i.dk, !dbg !162943
  %i.dm = zext nneg i32 %i.dl to i64, !dbg !162944
  %i.dn = shl nuw nsw i64 %i.dm, 52, !dbg !162944
  %i.do = add nuw nsw i32 %i.dk, 37, !dbg !162945
  %i.dp = zext nneg i32 %i.do to i64, !dbg !162946
  %i.dq = shl nuw nsw i64 %i.cz, %i.dp, !dbg !162946
  %i.dr = and i64 %i.dq, 4503599627370495, !dbg !162946
  %i.ds = or disjoint i64 %i.dr, %i.dn, !dbg !162947
  %i.dt = or disjoint i64 %i.ds, %i.dd, !dbg !162947
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f64_fallback.exit.i.i28, !dbg !162948

bb.ak:                                            ; preds = %bb.ag
  %i.du = lshr exact i16 %i.cx, 10, !dbg !162949
  %narrow.i.i.i27 = add nuw nsw i16 %i.du, 1008, !dbg !162950
  %i.dv = zext nneg i16 %narrow.i.i.i27 to i64, !dbg !162950
  %i.dw = shl nuw nsw i64 %i.dv, 52, !dbg !162951
  %i.dx = shl nuw nsw i64 %i.cz, 42, !dbg !162952
  %i.dy = or disjoint i64 %i.dw, %i.dx, !dbg !162953
  %i.dz = or disjoint i64 %i.dy, %i.dd, !dbg !162953
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f64_fallback.exit.i.i28, !dbg !162954

_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f64_fallback.exit.i.i28: ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ad
  %.sroa.0.0.i.i.i29 = phi i64 [ %i.cu, %bb.ad ], [ %i.df, %bb.ah ], [ %i.di, %bb.ai ], [ %i.dt, %bb.aj ], [ %i.dz, %bb.ak ], !dbg !162955
  %i.ea = bitcast i64 %.sroa.0.0.i.i.i29 to double, !dbg !162954
  br label %bb.am, !dbg !162956

bb.al:                                            ; preds = %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i24, %.noexc
  %i.eb = call fastcc noundef float @_RNvNtNtNtCshdiYQzaKNQ1_4half8binary164arch3x8619f16_to_f32_x86_f16c(i16 noundef %i.cl), !dbg !162957
  %i.ec = fpext float %i.eb to double, !dbg !162957
  br label %bb.am, !dbg !162958

bb.am:                                            ; preds = %bb.al, %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f64_fallback.exit.i.i28
  %.sroa.0.0.i.i26 = phi double [ %i.ec, %bb.al ], [ %i.ea, %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f64_fallback.exit.i.i28 ], !dbg !162959 ; 10 uses
  switch i8 %5, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit [
    i8 3, label %bb.an
    i8 4, label %bb.ao
  ], !dbg !162960

bb.an:                                            ; preds = %bb.am
  br i1 %.sink.i, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.ap, !dbg !162961

bb.ao:                                            ; preds = %bb.am
  br i1 %.sink.i, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.bd, !dbg !162912

bb.ap:                                            ; preds = %bb.an
  %i.ed = add nuw nsw i64 %.sink13.i, 1, !dbg !162962 ; 3 uses
  %i.ee = icmp ult i64 %i.ed, %2, !dbg !162963
  br i1 %i.ee, label %bb.aq, label %.invoke, !dbg !162963

bb.aq:                                            ; preds = %bb.ap
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ed, !dbg !162963
  call void @llvm.experimental.noalias.scope.decl(metadata !162812), !dbg !162964
  %i.eg = load i16, ptr %i.ef, align 2, !dbg !162965, !alias.scope !162812, !noundef !3468 ; 6 uses
  %i.eh = load atomic i64, ptr @_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache5CACHE monotonic, align 8, !dbg !162966, !noalias !162812 ; 2 uses
  %i.ei = icmp eq i64 %i.eh, 0, !dbg !162967
  br i1 %i.ei, label %.split.i.i39, label %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i33, !dbg !162967, !prof !3515

.split.i.i39:                                     ; preds = %bb.aq
  %i.ej = invoke noundef i128 @_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache21detect_and_initialize()
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !162968

.noexc41:                                         ; preds = %.split.i.i39
  %i.ek = and i128 %i.ej, 36028797018963968, !dbg !162969
  %.not1.i.i40 = icmp eq i128 %i.ek, 0, !dbg !162969
end_hunk_1
begin_hunk_2_@_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15quantiles_sliceNtNtCs2mZqlW55729_12polars_utils7float164pf16EBa_:bb.a
  %i.gt = icmp eq i16 %i.gs, 0, !dbg !163029
  br i1 %i.gt, label %bb.bg, label %bb.bh, !dbg !163029

bb.bg:                                            ; preds = %bb.bf
  %i.gu = zext i16 %i.gm to i64, !dbg !163030
  %i.gv = shl nuw i64 %i.gu, 48, !dbg !163030
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f64_fallback.exit.i.i49, !dbg !163031

bb.bh:                                            ; preds = %bb.bf
  %i.gw = and i16 %i.gm, -32768, !dbg !163032
  %i.gx = zext i16 %i.gw to i64, !dbg !163032     ; 2 uses
  %i.gy = and i16 %i.gm, 31744, !dbg !163033      ; 3 uses
  %i.gz = and i16 %i.gm, 1023, !dbg !163034       ; 3 uses
  %i.ha = zext nneg i16 %i.gz to i64, !dbg !163034 ; 3 uses
  %i.hb = icmp eq i16 %i.gy, 31744, !dbg !163035
  br i1 %i.hb, label %bb.bi, label %bb.bj, !dbg !163035

bb.bi:                                            ; preds = %bb.bh
  %i.hc = icmp eq i16 %i.gz, 0, !dbg !163036
  %i.hd = shl nuw i64 %i.gx, 48, !dbg !163037     ; 2 uses
  br i1 %i.hc, label %bb.bk, label %bb.bl, !dbg !163036

bb.bj:                                            ; preds = %bb.bh
  %i.he = shl nuw i64 %i.gx, 48, !dbg !163038     ; 2 uses
  %i.hf = icmp eq i16 %i.gy, 0, !dbg !163039
  br i1 %i.hf, label %bb.bm, label %bb.bn, !dbg !163039

bb.bk:                                            ; preds = %bb.bi
  %i.hg = or disjoint i64 %i.hd, 9218868437227405312, !dbg !163040
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f64_fallback.exit.i.i49, !dbg !163041

bb.bl:                                            ; preds = %bb.bi
  %i.hh = shl nuw nsw i64 %i.ha, 42, !dbg !163042
  %i.hi = or disjoint i64 %i.hd, %i.hh, !dbg !163043
  %i.hj = or i64 %i.hi, 9221120237041090560, !dbg !163043
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f64_fallback.exit.i.i49, !dbg !163044

bb.bm:                                            ; preds = %bb.bj
  %i.hk = call range(i16 6, 17) i16 @llvm.ctlz.i16(i16 %i.gz, i1 false), !dbg !163045
  %i.hl = zext nneg i16 %i.hk to i32, !dbg !163045 ; 2 uses
  %i.hm = sub nuw nsw i32 1014, %i.hl, !dbg !163046
  %i.hn = zext nneg i32 %i.hm to i64, !dbg !163047
  %i.ho = shl nuw nsw i64 %i.hn, 52, !dbg !163047
  %i.hp = add nuw nsw i32 %i.hl, 37, !dbg !163048
  %i.hq = zext nneg i32 %i.hp to i64, !dbg !163049
  %i.hr = shl nuw nsw i64 %i.ha, %i.hq, !dbg !163049
  %i.hs = and i64 %i.hr, 4503599627370495, !dbg !163049
  %i.ht = or disjoint i64 %i.hs, %i.ho, !dbg !163050
  %i.hu = or disjoint i64 %i.ht, %i.he, !dbg !163050
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f64_fallback.exit.i.i49, !dbg !163051

bb.bn:                                            ; preds = %bb.bj
  %i.hv = lshr exact i16 %i.gy, 10, !dbg !163052
  %narrow.i.i.i48 = add nuw nsw i16 %i.hv, 1008, !dbg !163053
  %i.hw = zext nneg i16 %narrow.i.i.i48 to i64, !dbg !163053
  %i.hx = shl nuw nsw i64 %i.hw, 52, !dbg !163054
  %i.hy = shl nuw nsw i64 %i.ha, 42, !dbg !163055
  %i.hz = or disjoint i64 %i.hx, %i.hy, !dbg !163056
  %i.ia = or disjoint i64 %i.hz, %i.he, !dbg !163056
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f64_fallback.exit.i.i49, !dbg !163057

_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f64_fallback.exit.i.i49: ; preds = %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bg
  %.sroa.0.0.i.i.i50 = phi i64 [ %i.gv, %bb.bg ], [ %i.hg, %bb.bk ], [ %i.hj, %bb.bl ], [ %i.hu, %bb.bm ], [ %i.ia, %bb.bn ], !dbg !163058
  %i.ib = bitcast i64 %.sroa.0.0.i.i.i50 to double, !dbg !163057
  br label %bb.bp, !dbg !163059

bb.bo:                                            ; preds = %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i45, %.noexc53
  %i.ic = call fastcc noundef float @_RNvNtNtNtCshdiYQzaKNQ1_4half8binary164arch3x8619f16_to_f32_x86_f16c(i16 noundef %i.gm), !dbg !163060
  %i.id = fpext float %i.ic to double, !dbg !163060
  br label %bb.bp, !dbg !163061

.invoke:                                          ; preds = %bb.bd, %bb.ap, %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit
  %i.ie = phi i64 [ %i.ed, %bb.ap ], [ %.sink13.i, %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit ], [ %i.gj, %bb.bd ]
  %i.if = phi ptr [ @62, %bb.ap ], [ @61, %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit ], [ @63, %bb.bd ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ie, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.if) #43
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !163009

.cont:                                            ; preds = %.invoke
  unreachable

bb.bp:                                            ; preds = %bb.bo, %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f64_fallback.exit.i.i49
  %.sroa.0.0.i.i47 = phi double [ %i.id, %bb.bo ], [ %i.ib, %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f64_fallback.exit.i.i49 ], !dbg !163062 ; 2 uses
  %i.ig = fcmp oeq double %.sroa.0.0.i.i26, %.sroa.0.0.i.i47, !dbg !163063
  br i1 %i.ig, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.bq, !dbg !163064

bb.bq:                                            ; preds = %bb.bp
  %i.ih = uitofp nneg i64 %.sink13.i to double, !dbg !163065
  %i.ii = fsub double %.sink11.i, %i.ih, !dbg !163066
  %i.ij = fsub double %.sroa.0.0.i.i47, %.sroa.0.0.i.i26, !dbg !163067
  %i.ik = fmul double %i.ii, %i.ij, !dbg !163068
  %i.il = fadd double %.sroa.0.0.i.i26, %i.ik, !dbg !163069
  br label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, !dbg !163070

bb.br:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.im = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !163071
  unreachable, !dbg !163071

bb.bs:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp91, !dbg !163071
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15quantiles_sliceaEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias noundef nonnull readonly align 8 captures(address) %3, i64 noundef range(i64 0, 1152921504606846976) %4, i8 noundef range(i8 0, 6) %5) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !163072 !guid !163162 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %.idx = shl nuw nsw i64 %4, 3, !dbg !163190
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 %.idx, !dbg !163190 ; 2 uses
  %i.f = icmp eq i64 %4, 0, !dbg !163191          ; 2 uses
  br i1 %i.f, label %._crit_edge, label %.lr.ph, !dbg !163169

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.034, i64 8, !dbg !163192 ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.e, !dbg !163191
  br i1 %i.h, label %._crit_edge, label %.lr.ph, !dbg !163169

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.034 = phi ptr [ %i.g, %bb.b ], [ %3, %bb.a ] ; 2 uses
  %i.i = load double, ptr %.sroa.0.034, align 8, !dbg !163193, !noundef !3468 ; 2 uses
  %i.j = fcmp oge double %i.i, 0.000000e+00, !dbg !163194
  %i.k = fcmp ole double %i.i, 1.000000e+00
  %spec.select.i = and i1 %i.j, %i.k, !dbg !163195
  br i1 %spec.select.i, label %bb.b, label %bb.c, !dbg !163196

._crit_edge:                                      ; preds = %bb.b, %bb.a
  switch i64 %2, label %bb.f [
    i64 0, label %bb.e
    i64 1, label %bb.i
  ], !dbg !163197

bb.c:                                             ; preds = %.lr.ph
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) @57, i64 72, i1 false), !dbg !163198
  br label %bb.d, !dbg !163199

bb.d:                                             ; preds = %._crit_edge38, %bb.i, %bb.e, %bb.c
  ret void, !dbg !163200

bb.e:                                             ; preds = %._crit_edge
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !163201
  tail call void @_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemINtNtCscgRAwXFJnXP_4core6option6OptiondENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, i64 noundef 0, double undef, i64 noundef %4), !dbg !163202
  store i64 18, ptr %0, align 8, !dbg !163201
  br label %bb.d, !dbg !163199

bb.f:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !163174
  store ptr %i.a, ptr %i.b, align 8, !noalias !163175
  %i.m = icmp samesign ult i64 %2, 21, !dbg !163203
  br i1 %i.m, label %bb.h, label %bb.g, !dbg !163204, !prof !3738

bb.g:                                             ; preds = %bb.f
  call void @_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable14driftsort_mainaNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSa7sort_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0INtNtB18_3vec3VecaEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b), !dbg !163205
  br label %_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSa7sort_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpECs1LHh8CLbVkQ_11polars_core.exit, !dbg !163205

bb.h:                                             ; preds = %bb.f
  call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftaNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSa7sort_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b), !dbg !163206
  br label %_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSa7sort_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpECs1LHh8CLbVkQ_11polars_core.exit, !dbg !163206

_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSa7sort_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !163207, !noalias !163174
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !163208
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !163209
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !dbg !163209
  %i.n = load i64, ptr %i.c, align 8, !dbg !163209, !range !3513, !noundef !3468
  %i.o = trunc nuw i64 %i.n to i1, !dbg !163210
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !163211
  %i.q = load i64, ptr %i.p, align 8, !dbg !163211, !range !3514, !noundef !3468 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !163211 ; 2 uses
  br i1 %i.o, label %bb.j, label %bb.k, !dbg !163210, !prof !3515

bb.i:                                             ; preds = %._crit_edge
  %.val26 = load i8, ptr %1, align 1, !dbg !163212, !noundef !3468
  %i.s = sitofp i8 %.val26 to double, !dbg !163213
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !163214
  tail call void @_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemINtNtCscgRAwXFJnXP_4core6option6OptiondENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, i64 noundef 1, double %i.s, i64 noundef %4), !dbg !163215
  store i64 18, ptr %0, align 8, !dbg !163214
  br label %bb.d, !dbg !163199

bb.j:                                             ; preds = %_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSa7sort_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpECs1LHh8CLbVkQ_11polars_core.exit
  %i.u = load i64, ptr %i.r, align 8, !dbg !163216
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.q, i64 %i.u) #43, !dbg !163217
  unreachable, !dbg !163217

bb.k:                                             ; preds = %_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSa7sort_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpECs1LHh8CLbVkQ_11polars_core.exit
  %i.v = load ptr, ptr %i.r, align 8, !dbg !163218, !nonnull !3468, !noundef !3468
  %i.w = icmp samesign ule i64 %4, %i.q, !dbg !163219
  call void @llvm.assume(i1 %i.w), !dbg !163220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !163221
  store i64 %i.q, ptr %i.d, align 8, !dbg !163222
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !163222 ; 2 uses
  store ptr %i.v, ptr %i.x, align 8, !dbg !163222
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !163222 ; 2 uses
  store i64 0, ptr %i.y, align 8, !dbg !163223
  br i1 %i.f, label %._crit_edge38, label %.lr.ph37, !dbg !163224

.lr.ph37:                                         ; preds = %bb.k
  %i.z = uitofp nneg i64 %2 to double             ; 2 uses
  %i.aa = fadd nnan double %i.z, -1.000000e+00
  %i.ab = add nsw i64 %2, -1
  br label %bb.l, !dbg !163224

bb.l:                                             ; preds = %.lr.ph37, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit
  %i.ac = phi i64 [ 0, %.lr.ph37 ], [ %i.bi, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit ] ; 3 uses
  %.sroa.02.035 = phi ptr [ %3, %.lr.ph37 ], [ %i.ad, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.02.035, i64 8, !dbg !163225 ; 2 uses
  %i.ae = load double, ptr %.sroa.02.035, align 8, !dbg !163226, !noundef !3468 ; 2 uses
  %i.af = fmul double %i.aa, %i.ae, !dbg !163227
  %i.ag = fadd double %i.af, 0.000000e+00, !dbg !163227 ; 5 uses
  switch i8 %5, label %default.unreachable [
    i8 0, label %bb.m
    i8 1, label %bb.n
    i8 2, label %bb.o
    i8 3, label %bb.n
    i8 4, label %bb.n
    i8 5, label %bb.p
  ], !dbg !163228

default.unreachable:                              ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.ah = call double @llvm.round.f64(double %i.ag), !dbg !163229
  %i.ai = call i64 @llvm.fptoui.sat.i64.f64(double %i.ah), !dbg !163230
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !163231

bb.n:                                             ; preds = %bb.l, %bb.l, %bb.l
  %i.aj = call i64 @llvm.fptoui.sat.i64.f64(double %i.ag), !dbg !163232
  %.pre.i = call double @llvm.ceil.f64(double %i.ag), !dbg !163233
  %.pre7.i = call i64 @llvm.fptoui.sat.i64.f64(double %.pre.i), !dbg !163234
  br label %bb.q, !dbg !163235

bb.o:                                             ; preds = %bb.l
  %i.ak = call double @llvm.ceil.f64(double %i.ag), !dbg !163236
  %i.al = call i64 @llvm.fptoui.sat.i64.f64(double %i.ak), !dbg !163237 ; 2 uses
  br label %bb.q, !dbg !163238

bb.p:                                             ; preds = %bb.l
  %i.am = fmul double %i.ae, %i.z, !dbg !163239
  %i.an = call double @llvm.ceil.f64(double %i.am), !dbg !163240
  %i.ao = fadd double %i.an, -1.000000e+00, !dbg !163241
  %i.ap = call nsz double @llvm.maximumnum.f64(double %i.ao, double 0.000000e+00), !dbg !163242
  %i.aq = call i64 @llvm.fptoui.sat.i64.f64(double %i.ap), !dbg !163241
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !163231

bb.q:                                             ; preds = %bb.o, %bb.n
  %.pre-phi8.i = phi i64 [ %i.al, %bb.o ], [ %.pre7.i, %bb.n ], !dbg !163234
  %.sroa.0.0.i = phi i64 [ %i.al, %bb.o ], [ %i.aj, %bb.n ], !dbg !163243
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i, i64 %i.ab), !dbg !163244 ; 2 uses
  %i.ar = icmp eq i64 %.pre-phi8.i, %.sroa.0.0.i.i, !dbg !163245
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !163246

._crit_edge38:                                    ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit, %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !163247
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !163248
  store i64 18, ptr %0, align 8, !dbg !163247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !163249
  br label %bb.d, !dbg !163200

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.w, %.invoke
  %lpad.loopexit.split-lp59 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB4_6option6OptiondEEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 dereferenceable(24) %i.d) #44
          to label %bb.ab unwind label %bb.aa, !dbg !163249

_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit: ; preds = %bb.q, %bb.p, %bb.m
  %.sink13.i = phi i64 [ %i.ai, %bb.m ], [ %i.aq, %bb.p ], [ %.sroa.0.0.i.i, %bb.q ] ; 6 uses
  %.sink11.i = phi double [ 0.000000e+00, %bb.m ], [ 0.000000e+00, %bb.p ], [ %i.ag, %bb.q ]
  %.sink.i = phi i1 [ true, %bb.m ], [ true, %bb.p ], [ %i.ar, %bb.q ] ; 2 uses
  %i.at = icmp ult i64 %.sink13.i, %2, !dbg !163250
  br i1 %i.at, label %bb.r, label %.invoke, !dbg !163250

bb.r:                                             ; preds = %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 %.sink13.i, !dbg !163250
  %.val25 = load i8, ptr %i.au, align 1, !dbg !163251, !noundef !3468
  %i.av = sitofp i8 %.val25 to double, !dbg !163252 ; 10 uses
  switch i8 %5, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit [
    i8 3, label %bb.s
    i8 4, label %bb.t
  ], !dbg !163253

bb.s:                                             ; preds = %bb.r
  br i1 %.sink.i, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.u, !dbg !163254

bb.t:                                             ; preds = %bb.r
  br i1 %.sink.i, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.x, !dbg !163245

bb.u:                                             ; preds = %bb.s
  %i.aw = add nuw nsw i64 %.sink13.i, 1, !dbg !163255 ; 3 uses
  %i.ax = icmp ult i64 %i.aw, %2, !dbg !163256
  br i1 %i.ax, label %bb.v, label %.invoke, !dbg !163256

bb.v:                                             ; preds = %bb.u
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 %i.aw, !dbg !163256
  %.val24 = load i8, ptr %i.ay, align 1, !dbg !163257, !noundef !3468
  %i.az = sitofp i8 %.val24 to double, !dbg !163258 ; 2 uses
  %i.ba = fcmp oeq double %i.av, %i.az, !dbg !163259
  %i.bb = fadd nnan double %i.av, %i.az, !dbg !163260
  %i.bc = fmul nnan double %i.bb, 5.000000e-01, !dbg !163260
  %.sroa.0.0.i27 = select i1 %i.ba, double %i.av, double %i.bc, !dbg !163260
  br label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, !dbg !163261

_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit: ; preds = %bb.z, %bb.y, %bb.v, %bb.t, %bb.s, %bb.r
  %.sroa.5.0 = phi double [ %i.av, %bb.r ], [ %i.av, %bb.s ], [ %.sroa.0.0.i27, %bb.v ], [ %i.av, %bb.t ], [ %i.bv, %bb.z ], [ %i.av, %bb.y ], !dbg !163262
  %i.bd = load i64, ptr %i.d, align 8, !dbg !163263, !range !3548, !alias.scope !163187, !noundef !3468
  %i.be = icmp eq i64 %i.ac, %i.bd, !dbg !163264
  br i1 %i.be, label %bb.w, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit, !dbg !163264

bb.w:                                             ; preds = %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8grow_oneCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !163265

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.w, %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit
  %i.bf = load ptr, ptr %i.x, align 8, !dbg !163266, !alias.scope !163187, !nonnull !3468, !noundef !3468
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %i.ac, !dbg !163267 ; 2 uses
  store i64 1, ptr %i.bg, align 8, !dbg !163268
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8, !dbg !163268
  store double %.sroa.5.0, ptr %i.bh, align 8, !dbg !163268
  %i.bi = add i64 %i.ac, 1, !dbg !163269          ; 2 uses
  store i64 %i.bi, ptr %i.y, align 8, !dbg !163223
  %i.bj = icmp eq ptr %i.ad, %i.e, !dbg !163270
  br i1 %i.bj, label %._crit_edge38, label %bb.l, !dbg !163224

bb.x:                                             ; preds = %bb.t
  %i.bk = add nuw nsw i64 %.sink13.i, 1, !dbg !163271 ; 3 uses
  %i.bl = icmp ult i64 %i.bk, %2, !dbg !163272
  br i1 %i.bl, label %bb.y, label %.invoke, !dbg !163272

.invoke:                                          ; preds = %bb.x, %bb.u, %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit
  %i.bm = phi i64 [ %i.aw, %bb.u ], [ %.sink13.i, %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit ], [ %i.bk, %bb.x ]
  %i.bn = phi ptr [ @62, %bb.u ], [ @61, %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit ], [ @63, %bb.x ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.bm, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bn) #43
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !163262

.cont:                                            ; preds = %.invoke
  unreachable

bb.y:                                             ; preds = %bb.x
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 %i.bk, !dbg !163272
  %.val23 = load i8, ptr %i.bo, align 1, !dbg !163273, !noundef !3468
  %i.bp = sitofp i8 %.val23 to double, !dbg !163274 ; 2 uses
  %i.bq = fcmp oeq double %i.av, %i.bp, !dbg !163275
  br i1 %i.bq, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.z, !dbg !163276

bb.z:                                             ; preds = %bb.y
  %i.br = uitofp nneg i64 %.sink13.i to double, !dbg !163277
  %i.bs = fsub double %.sink11.i, %i.br, !dbg !163278
  %i.bt = fsub nnan double %i.bp, %i.av, !dbg !163279
  %i.bu = fmul double %i.bs, %i.bt, !dbg !163280
  %i.bv = fadd double %i.bu, %i.av, !dbg !163281
  br label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, !dbg !163282

bb.aa:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !163283
  unreachable, !dbg !163283

bb.ab:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp59, !dbg !163283
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15quantiles_slicedEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull align 8 %1, i64 noundef range(i64 0, 1152921504606846976) %2, ptr noalias noundef nonnull readonly align 8 captures(address) %3, i64 noundef range(i64 0, 1152921504606846976) %4, i8 noundef range(i8 0, 6) %5) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !163284 !guid !163370 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %.idx = shl nuw nsw i64 %4, 3, !dbg !163398
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 %.idx, !dbg !163398 ; 2 uses
  %i.f = icmp eq i64 %4, 0, !dbg !163399          ; 2 uses
  br i1 %i.f, label %._crit_edge, label %.lr.ph, !dbg !163377

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.034, i64 8, !dbg !163400 ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.e, !dbg !163399
  br i1 %i.h, label %._crit_edge, label %.lr.ph, !dbg !163377

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.034 = phi ptr [ %i.g, %bb.b ], [ %3, %bb.a ] ; 2 uses
  %i.i = load double, ptr %.sroa.0.034, align 8, !dbg !163401, !noundef !3468 ; 2 uses
  %i.j = fcmp oge double %i.i, 0.000000e+00, !dbg !163402
  %i.k = fcmp ole double %i.i, 1.000000e+00
  %spec.select.i = and i1 %i.j, %i.k, !dbg !163403
  br i1 %spec.select.i, label %bb.b, label %bb.c, !dbg !163404

._crit_edge:                                      ; preds = %bb.b, %bb.a
  switch i64 %2, label %bb.f [
    i64 0, label %bb.e
    i64 1, label %bb.i
  ], !dbg !163405

bb.c:                                             ; preds = %.lr.ph
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) @57, i64 72, i1 false), !dbg !163406
  br label %bb.d, !dbg !163407

bb.d:                                             ; preds = %._crit_edge38, %bb.i, %bb.e, %bb.c
  ret void, !dbg !163408

bb.e:                                             ; preds = %._crit_edge
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !163409
  tail call void @_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemINtNtCscgRAwXFJnXP_4core6option6OptiondENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, i64 noundef 0, double undef, i64 noundef %4), !dbg !163410
  store i64 18, ptr %0, align 8, !dbg !163409
  br label %bb.d, !dbg !163407

bb.f:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !163382
  store ptr %i.a, ptr %i.b, align 8, !noalias !163383
  %i.m = icmp samesign ult i64 %2, 21, !dbg !163411
  br i1 %i.m, label %bb.h, label %bb.g, !dbg !163412, !prof !3738

bb.g:                                             ; preds = %bb.f
  call void @_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable14driftsort_maindNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSd7sort_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0INtNtB18_3vec3VecdEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 %1, i64 noundef range(i64 0, 1152921504606846976) %2, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b), !dbg !163413
  br label %_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSd7sort_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpECs1LHh8CLbVkQ_11polars_core.exit, !dbg !163413

bb.h:                                             ; preds = %bb.f
  call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftdNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSd7sort_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 %1, i64 noundef range(i64 0, 1152921504606846976) %2, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b), !dbg !163414
  br label %_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSd7sort_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpECs1LHh8CLbVkQ_11polars_core.exit, !dbg !163414

_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSd7sort_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !163415, !noalias !163382
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !163416
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !163417
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !dbg !163417
  %i.n = load i64, ptr %i.c, align 8, !dbg !163417, !range !3513, !noundef !3468
  %i.o = trunc nuw i64 %i.n to i1, !dbg !163418
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !163419
  %i.q = load i64, ptr %i.p, align 8, !dbg !163419, !range !3514, !noundef !3468 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !163419 ; 2 uses
  br i1 %i.o, label %bb.j, label %bb.k, !dbg !163418, !prof !3515

bb.i:                                             ; preds = %._crit_edge
  %.val26 = load double, ptr %1, align 8, !dbg !163420, !noundef !3468
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !163421
  tail call void @_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemINtNtCscgRAwXFJnXP_4core6option6OptiondENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, i64 noundef 1, double %.val26, i64 noundef %4), !dbg !163422
  store i64 18, ptr %0, align 8, !dbg !163421
  br label %bb.d, !dbg !163407

bb.j:                                             ; preds = %_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSd7sort_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpECs1LHh8CLbVkQ_11polars_core.exit
  %i.t = load i64, ptr %i.r, align 8, !dbg !163423
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.q, i64 %i.t) #43, !dbg !163424
  unreachable, !dbg !163424

bb.k:                                             ; preds = %_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSd7sort_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpECs1LHh8CLbVkQ_11polars_core.exit
  %i.u = load ptr, ptr %i.r, align 8, !dbg !163425, !nonnull !3468, !noundef !3468
  %i.v = icmp samesign ule i64 %4, %i.q, !dbg !163426
  call void @llvm.assume(i1 %i.v), !dbg !163427
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !163428
  store i64 %i.q, ptr %i.d, align 8, !dbg !163429
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !163429 ; 2 uses
  store ptr %i.u, ptr %i.w, align 8, !dbg !163429
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !163429 ; 2 uses
  store i64 0, ptr %i.x, align 8, !dbg !163430
  br i1 %i.f, label %._crit_edge38, label %.lr.ph37, !dbg !163431

.lr.ph37:                                         ; preds = %bb.k
  %i.y = uitofp nneg i64 %2 to double             ; 2 uses
  %i.z = fadd nnan double %i.y, -1.000000e+00
  %i.aa = add nsw i64 %2, -1
  br label %bb.l, !dbg !163431

bb.l:                                             ; preds = %.lr.ph37, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit
  %i.ab = phi i64 [ 0, %.lr.ph37 ], [ %i.bf, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit ] ; 3 uses
  %.sroa.02.035 = phi ptr [ %3, %.lr.ph37 ], [ %i.ac, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.02.035, i64 8, !dbg !163432 ; 2 uses
  %i.ad = load double, ptr %.sroa.02.035, align 8, !dbg !163433, !noundef !3468 ; 2 uses
  %i.ae = fmul double %i.z, %i.ad, !dbg !163434
  %i.af = fadd double %i.ae, 0.000000e+00, !dbg !163434 ; 5 uses
  switch i8 %5, label %default.unreachable [
    i8 0, label %bb.m
    i8 1, label %bb.n
    i8 2, label %bb.o
    i8 3, label %bb.n
    i8 4, label %bb.n
    i8 5, label %bb.p
  ], !dbg !163435

default.unreachable:                              ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.ag = call double @llvm.round.f64(double %i.af), !dbg !163436
  %i.ah = call i64 @llvm.fptoui.sat.i64.f64(double %i.ag), !dbg !163437
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !163438

bb.n:                                             ; preds = %bb.l, %bb.l, %bb.l
  %i.ai = call i64 @llvm.fptoui.sat.i64.f64(double %i.af), !dbg !163439
  %.pre.i = call double @llvm.ceil.f64(double %i.af), !dbg !163440
  %.pre7.i = call i64 @llvm.fptoui.sat.i64.f64(double %.pre.i), !dbg !163441
  br label %bb.q, !dbg !163442

bb.o:                                             ; preds = %bb.l
  %i.aj = call double @llvm.ceil.f64(double %i.af), !dbg !163443
  %i.ak = call i64 @llvm.fptoui.sat.i64.f64(double %i.aj), !dbg !163444 ; 2 uses
  br label %bb.q, !dbg !163445

bb.p:                                             ; preds = %bb.l
  %i.al = fmul double %i.ad, %i.y, !dbg !163446
  %i.am = call double @llvm.ceil.f64(double %i.al), !dbg !163447
  %i.an = fadd double %i.am, -1.000000e+00, !dbg !163448
  %i.ao = call nsz double @llvm.maximumnum.f64(double %i.an, double 0.000000e+00), !dbg !163449
  %i.ap = call i64 @llvm.fptoui.sat.i64.f64(double %i.ao), !dbg !163448
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !163438

bb.q:                                             ; preds = %bb.o, %bb.n
  %.pre-phi8.i = phi i64 [ %i.ak, %bb.o ], [ %.pre7.i, %bb.n ], !dbg !163441
  %.sroa.0.0.i = phi i64 [ %i.ak, %bb.o ], [ %i.ai, %bb.n ], !dbg !163450
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i, i64 %i.aa), !dbg !163451 ; 2 uses
  %i.aq = icmp eq i64 %.pre-phi8.i, %.sroa.0.0.i.i, !dbg !163452
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !163453

._crit_edge38:                                    ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit, %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !163454
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !163455
  store i64 18, ptr %0, align 8, !dbg !163454
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !163456
  br label %bb.d, !dbg !163408

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.w, %.invoke
  %lpad.loopexit.split-lp56 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB4_6option6OptiondEEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 dereferenceable(24) %i.d) #44
          to label %bb.ab unwind label %bb.aa, !dbg !163456

_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit: ; preds = %bb.q, %bb.p, %bb.m
  %.sink13.i = phi i64 [ %i.ah, %bb.m ], [ %i.ap, %bb.p ], [ %.sroa.0.0.i.i, %bb.q ] ; 6 uses
  %.sink11.i = phi double [ 0.000000e+00, %bb.m ], [ 0.000000e+00, %bb.p ], [ %i.af, %bb.q ]
  %.sink.i = phi i1 [ true, %bb.m ], [ true, %bb.p ], [ %i.aq, %bb.q ] ; 2 uses
  %i.as = icmp ult i64 %.sink13.i, %2, !dbg !163457
  br i1 %i.as, label %bb.r, label %.invoke, !dbg !163457

bb.r:                                             ; preds = %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sink13.i, !dbg !163457
  %.val25 = load double, ptr %i.at, align 8, !dbg !163458, !noundef !3468 ; 10 uses
  switch i8 %5, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit [
    i8 3, label %bb.s
    i8 4, label %bb.t
  ], !dbg !163459

bb.s:                                             ; preds = %bb.r
  br i1 %.sink.i, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.u, !dbg !163460

bb.t:                                             ; preds = %bb.r
  br i1 %.sink.i, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.x, !dbg !163452

bb.u:                                             ; preds = %bb.s
  %i.au = add nuw nsw i64 %.sink13.i, 1, !dbg !163461 ; 3 uses
  %i.av = icmp ult i64 %i.au, %2, !dbg !163462
  br i1 %i.av, label %bb.v, label %.invoke, !dbg !163462

bb.v:                                             ; preds = %bb.u
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.au, !dbg !163462
  %.val24 = load double, ptr %i.aw, align 8, !dbg !163463, !noundef !3468 ; 2 uses
  %i.ax = fcmp oeq double %.val25, %.val24, !dbg !163464
  %i.ay = fadd double %.val25, %.val24, !dbg !163465
  %i.az = fmul double %i.ay, 5.000000e-01, !dbg !163465
  %.sroa.0.0.i27 = select i1 %i.ax, double %.val25, double %i.az, !dbg !163465
  br label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, !dbg !163466

_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit: ; preds = %bb.z, %bb.y, %bb.v, %bb.t, %bb.s, %bb.r
  %.sroa.5.0 = phi double [ %.val25, %bb.r ], [ %.val25, %bb.s ], [ %.sroa.0.0.i27, %bb.v ], [ %.val25, %bb.t ], [ %i.br, %bb.z ], [ %.val25, %bb.y ], !dbg !163467
  %i.ba = load i64, ptr %i.d, align 8, !dbg !163468, !range !3548, !alias.scope !163395, !noundef !3468
  %i.bb = icmp eq i64 %i.ab, %i.ba, !dbg !163469
  br i1 %i.bb, label %bb.w, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit, !dbg !163469

bb.w:                                             ; preds = %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8grow_oneCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !163470

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.w, %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit
  %i.bc = load ptr, ptr %i.w, align 8, !dbg !163471, !alias.scope !163395, !nonnull !3468, !noundef !3468
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %i.ab, !dbg !163472 ; 2 uses
  store i64 1, ptr %i.bd, align 8, !dbg !163473
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8, !dbg !163473
  store double %.sroa.5.0, ptr %i.be, align 8, !dbg !163473
  %i.bf = add i64 %i.ab, 1, !dbg !163474          ; 2 uses
  store i64 %i.bf, ptr %i.x, align 8, !dbg !163430
  %i.bg = icmp eq ptr %i.ac, %i.e, !dbg !163475
  br i1 %i.bg, label %._crit_edge38, label %bb.l, !dbg !163431

bb.x:                                             ; preds = %bb.t
  %i.bh = add nuw nsw i64 %.sink13.i, 1, !dbg !163476 ; 3 uses
  %i.bi = icmp ult i64 %i.bh, %2, !dbg !163477
  br i1 %i.bi, label %bb.y, label %.invoke, !dbg !163477

.invoke:                                          ; preds = %bb.x, %bb.u, %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit
  %i.bj = phi i64 [ %i.au, %bb.u ], [ %.sink13.i, %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit ], [ %i.bh, %bb.x ]
  %i.bk = phi ptr [ @62, %bb.u ], [ @61, %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit ], [ @63, %bb.x ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.bj, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bk) #43
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !163467

.cont:                                            ; preds = %.invoke
  unreachable

bb.y:                                             ; preds = %bb.x
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bh, !dbg !163477
  %.val23 = load double, ptr %i.bl, align 8, !dbg !163478, !noundef !3468 ; 2 uses
  %i.bm = fcmp oeq double %.val25, %.val23, !dbg !163479
  br i1 %i.bm, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.z, !dbg !163480

bb.z:                                             ; preds = %bb.y
  %i.bn = uitofp nneg i64 %.sink13.i to double, !dbg !163481
  %i.bo = fsub double %.sink11.i, %i.bn, !dbg !163482
  %i.bp = fsub double %.val23, %.val25, !dbg !163483
  %i.bq = fmul double %i.bo, %i.bp, !dbg !163484
  %i.br = fadd double %.val25, %i.bq, !dbg !163485
  br label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, !dbg !163486

bb.aa:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !163487
  unreachable, !dbg !163487

bb.ab:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp56, !dbg !163487
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15quantiles_slicefEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull align 4 %1, i64 noundef range(i64 0, 2305843009213693952) %2, ptr noalias noundef nonnull readonly align 8 captures(address) %3, i64 noundef range(i64 0, 1152921504606846976) %4, i8 noundef range(i8 0, 6) %5) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !163488 !guid !163578 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %.idx = shl nuw nsw i64 %4, 3, !dbg !163606
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 %.idx, !dbg !163606 ; 2 uses
  %i.f = icmp eq i64 %4, 0, !dbg !163607          ; 2 uses
  br i1 %i.f, label %._crit_edge, label %.lr.ph, !dbg !163585

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.034, i64 8, !dbg !163608 ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.e, !dbg !163607
  br i1 %i.h, label %._crit_edge, label %.lr.ph, !dbg !163585

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.034 = phi ptr [ %i.g, %bb.b ], [ %3, %bb.a ] ; 2 uses
  %i.i = load double, ptr %.sroa.0.034, align 8, !dbg !163609, !noundef !3468 ; 2 uses
  %i.j = fcmp oge double %i.i, 0.000000e+00, !dbg !163610
  %i.k = fcmp ole double %i.i, 1.000000e+00
  %spec.select.i = and i1 %i.j, %i.k, !dbg !163611
  br i1 %spec.select.i, label %bb.b, label %bb.c, !dbg !163612

._crit_edge:                                      ; preds = %bb.b, %bb.a
  switch i64 %2, label %bb.f [
    i64 0, label %bb.e
    i64 1, label %bb.i
  ], !dbg !163613

bb.c:                                             ; preds = %.lr.ph
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) @57, i64 72, i1 false), !dbg !163614
  br label %bb.d, !dbg !163615

bb.d:                                             ; preds = %._crit_edge38, %bb.i, %bb.e, %bb.c
  ret void, !dbg !163616

bb.e:                                             ; preds = %._crit_edge
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !163617
  tail call void @_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemINtNtCscgRAwXFJnXP_4core6option6OptiondENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, i64 noundef 0, double undef, i64 noundef %4), !dbg !163618
  store i64 18, ptr %0, align 8, !dbg !163617
  br label %bb.d, !dbg !163615

bb.f:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !163590
  store ptr %i.a, ptr %i.b, align 8, !noalias !163591
  %i.m = icmp samesign ult i64 %2, 21, !dbg !163619
  br i1 %i.m, label %bb.h, label %bb.g, !dbg !163620, !prof !3738

bb.g:                                             ; preds = %bb.f
  call void @_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable14driftsort_mainfNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSf7sort_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0INtNtB18_3vec3VecfEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 4 %1, i64 noundef range(i64 0, 2305843009213693952) %2, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b), !dbg !163621
  br label %_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSf7sort_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpECs1LHh8CLbVkQ_11polars_core.exit, !dbg !163621

bb.h:                                             ; preds = %bb.f
  call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftfNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSf7sort_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 4 %1, i64 noundef range(i64 0, 2305843009213693952) %2, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b), !dbg !163622
  br label %_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSf7sort_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpECs1LHh8CLbVkQ_11polars_core.exit, !dbg !163622

_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSf7sort_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !163623, !noalias !163590
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !163624
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !163625
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !dbg !163625
  %i.n = load i64, ptr %i.c, align 8, !dbg !163625, !range !3513, !noundef !3468
  %i.o = trunc nuw i64 %i.n to i1, !dbg !163626
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !163627
  %i.q = load i64, ptr %i.p, align 8, !dbg !163627, !range !3514, !noundef !3468 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !163627 ; 2 uses
  br i1 %i.o, label %bb.j, label %bb.k, !dbg !163626, !prof !3515

bb.i:                                             ; preds = %._crit_edge
  %.val26 = load float, ptr %1, align 4, !dbg !163628, !noundef !3468
  %i.s = fpext float %.val26 to double, !dbg !163629
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !163630
  tail call void @_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemINtNtCscgRAwXFJnXP_4core6option6OptiondENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, i64 noundef 1, double %i.s, i64 noundef %4), !dbg !163631
  store i64 18, ptr %0, align 8, !dbg !163630
  br label %bb.d, !dbg !163615

bb.j:                                             ; preds = %_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSf7sort_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpECs1LHh8CLbVkQ_11polars_core.exit
  %i.u = load i64, ptr %i.r, align 8, !dbg !163632
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.q, i64 %i.u) #43, !dbg !163633
  unreachable, !dbg !163633

bb.k:                                             ; preds = %_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSf7sort_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpECs1LHh8CLbVkQ_11polars_core.exit
  %i.v = load ptr, ptr %i.r, align 8, !dbg !163634, !nonnull !3468, !noundef !3468
  %i.w = icmp samesign ule i64 %4, %i.q, !dbg !163635
  call void @llvm.assume(i1 %i.w), !dbg !163636
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !163637
  store i64 %i.q, ptr %i.d, align 8, !dbg !163638
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !163638 ; 2 uses
  store ptr %i.v, ptr %i.x, align 8, !dbg !163638
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !163638 ; 2 uses
  store i64 0, ptr %i.y, align 8, !dbg !163639
  br i1 %i.f, label %._crit_edge38, label %.lr.ph37, !dbg !163640

.lr.ph37:                                         ; preds = %bb.k
  %i.z = uitofp nneg i64 %2 to double             ; 2 uses
  %i.aa = fadd nnan double %i.z, -1.000000e+00
  %i.ab = add nsw i64 %2, -1
  br label %bb.l, !dbg !163640

bb.l:                                             ; preds = %.lr.ph37, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit
  %i.ac = phi i64 [ 0, %.lr.ph37 ], [ %i.bi, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit ] ; 3 uses
  %.sroa.02.035 = phi ptr [ %3, %.lr.ph37 ], [ %i.ad, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.02.035, i64 8, !dbg !163641 ; 2 uses
  %i.ae = load double, ptr %.sroa.02.035, align 8, !dbg !163642, !noundef !3468 ; 2 uses
  %i.af = fmul double %i.aa, %i.ae, !dbg !163643
  %i.ag = fadd double %i.af, 0.000000e+00, !dbg !163643 ; 5 uses
  switch i8 %5, label %default.unreachable [
    i8 0, label %bb.m
    i8 1, label %bb.n
    i8 2, label %bb.o
    i8 3, label %bb.n
    i8 4, label %bb.n
    i8 5, label %bb.p
  ], !dbg !163644

default.unreachable:                              ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.ah = call double @llvm.round.f64(double %i.ag), !dbg !163645
  %i.ai = call i64 @llvm.fptoui.sat.i64.f64(double %i.ah), !dbg !163646
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !163647

bb.n:                                             ; preds = %bb.l, %bb.l, %bb.l
  %i.aj = call i64 @llvm.fptoui.sat.i64.f64(double %i.ag), !dbg !163648
  %.pre.i = call double @llvm.ceil.f64(double %i.ag), !dbg !163649
  %.pre7.i = call i64 @llvm.fptoui.sat.i64.f64(double %.pre.i), !dbg !163650
  br label %bb.q, !dbg !163651

bb.o:                                             ; preds = %bb.l
  %i.ak = call double @llvm.ceil.f64(double %i.ag), !dbg !163652
  %i.al = call i64 @llvm.fptoui.sat.i64.f64(double %i.ak), !dbg !163653 ; 2 uses
  br label %bb.q, !dbg !163654

bb.p:                                             ; preds = %bb.l
  %i.am = fmul double %i.ae, %i.z, !dbg !163655
  %i.an = call double @llvm.ceil.f64(double %i.am), !dbg !163656
  %i.ao = fadd double %i.an, -1.000000e+00, !dbg !163657
  %i.ap = call nsz double @llvm.maximumnum.f64(double %i.ao, double 0.000000e+00), !dbg !163658
  %i.aq = call i64 @llvm.fptoui.sat.i64.f64(double %i.ap), !dbg !163657
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !163647

bb.q:                                             ; preds = %bb.o, %bb.n
  %.pre-phi8.i = phi i64 [ %i.al, %bb.o ], [ %.pre7.i, %bb.n ], !dbg !163650
  %.sroa.0.0.i = phi i64 [ %i.al, %bb.o ], [ %i.aj, %bb.n ], !dbg !163659
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i, i64 %i.ab), !dbg !163660 ; 2 uses
  %i.ar = icmp eq i64 %.pre-phi8.i, %.sroa.0.0.i.i, !dbg !163661
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !163662

._crit_edge38:                                    ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit, %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !163663
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !163664
  store i64 18, ptr %0, align 8, !dbg !163663
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !163665
  br label %bb.d, !dbg !163616

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.w, %.invoke
  %lpad.loopexit.split-lp56 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB4_6option6OptiondEEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 dereferenceable(24) %i.d) #44
          to label %bb.ab unwind label %bb.aa, !dbg !163665

_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit: ; preds = %bb.q, %bb.p, %bb.m
  %.sink13.i = phi i64 [ %i.ai, %bb.m ], [ %i.aq, %bb.p ], [ %.sroa.0.0.i.i, %bb.q ] ; 6 uses
  %.sink11.i = phi double [ 0.000000e+00, %bb.m ], [ 0.000000e+00, %bb.p ], [ %i.ag, %bb.q ]
  %.sink.i = phi i1 [ true, %bb.m ], [ true, %bb.p ], [ %i.ar, %bb.q ] ; 2 uses
  %i.at = icmp ult i64 %.sink13.i, %2, !dbg !163666
  br i1 %i.at, label %bb.r, label %.invoke, !dbg !163666

bb.r:                                             ; preds = %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.sink13.i, !dbg !163666
  %.val25 = load float, ptr %i.au, align 4, !dbg !163667, !noundef !3468 ; 3 uses
  %i.av = fpext float %.val25 to double, !dbg !163668 ; 8 uses
  switch i8 %5, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit [
    i8 3, label %bb.s
    i8 4, label %bb.t
  ], !dbg !163669

bb.s:                                             ; preds = %bb.r
  br i1 %.sink.i, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.u, !dbg !163670

bb.t:                                             ; preds = %bb.r
  br i1 %.sink.i, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.x, !dbg !163661

bb.u:                                             ; preds = %bb.s
  %i.aw = add nuw nsw i64 %.sink13.i, 1, !dbg !163671 ; 3 uses
  %i.ax = icmp ult i64 %i.aw, %2, !dbg !163672
  br i1 %i.ax, label %bb.v, label %.invoke, !dbg !163672

bb.v:                                             ; preds = %bb.u
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aw, !dbg !163672
  %.val24 = load float, ptr %i.ay, align 4, !dbg !163673, !noundef !3468 ; 2 uses
  %i.az = fpext float %.val24 to double, !dbg !163674
  %i.ba = fcmp oeq float %.val25, %.val24, !dbg !163675
  %i.bb = fadd double %i.av, %i.az, !dbg !163676
  %i.bc = fmul double %i.bb, 5.000000e-01, !dbg !163676
  %.sroa.0.0.i27 = select i1 %i.ba, double %i.av, double %i.bc, !dbg !163676
  br label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, !dbg !163677

_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit: ; preds = %bb.z, %bb.y, %bb.v, %bb.t, %bb.s, %bb.r
  %.sroa.5.0 = phi double [ %i.av, %bb.r ], [ %i.av, %bb.s ], [ %.sroa.0.0.i27, %bb.v ], [ %i.av, %bb.t ], [ %i.bv, %bb.z ], [ %i.av, %bb.y ], !dbg !163678
  %i.bd = load i64, ptr %i.d, align 8, !dbg !163679, !range !3548, !alias.scope !163603, !noundef !3468
  %i.be = icmp eq i64 %i.ac, %i.bd, !dbg !163680
  br i1 %i.be, label %bb.w, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit, !dbg !163680

bb.w:                                             ; preds = %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8grow_oneCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !163681

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.w, %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit
  %i.bf = load ptr, ptr %i.x, align 8, !dbg !163682, !alias.scope !163603, !nonnull !3468, !noundef !3468
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %i.ac, !dbg !163683 ; 2 uses
  store i64 1, ptr %i.bg, align 8, !dbg !163684
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8, !dbg !163684
  store double %.sroa.5.0, ptr %i.bh, align 8, !dbg !163684
  %i.bi = add i64 %i.ac, 1, !dbg !163685          ; 2 uses
  store i64 %i.bi, ptr %i.y, align 8, !dbg !163639
  %i.bj = icmp eq ptr %i.ad, %i.e, !dbg !163686
  br i1 %i.bj, label %._crit_edge38, label %bb.l, !dbg !163640

bb.x:                                             ; preds = %bb.t
  %i.bk = add nuw nsw i64 %.sink13.i, 1, !dbg !163687 ; 3 uses
  %i.bl = icmp ult i64 %i.bk, %2, !dbg !163688
  br i1 %i.bl, label %bb.y, label %.invoke, !dbg !163688

.invoke:                                          ; preds = %bb.x, %bb.u, %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit
  %i.bm = phi i64 [ %i.aw, %bb.u ], [ %.sink13.i, %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit ], [ %i.bk, %bb.x ]
  %i.bn = phi ptr [ @62, %bb.u ], [ @61, %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit ], [ @63, %bb.x ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.bm, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bn) #43
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !163678

.cont:                                            ; preds = %.invoke
  unreachable

bb.y:                                             ; preds = %bb.x
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bk, !dbg !163688
  %.val23 = load float, ptr %i.bo, align 4, !dbg !163689, !noundef !3468 ; 2 uses
  %i.bp = fcmp oeq float %.val25, %.val23, !dbg !163690
  br i1 %i.bp, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.z, !dbg !163691

bb.z:                                             ; preds = %bb.y
  %i.bq = fpext float %.val23 to double, !dbg !163692
  %i.br = uitofp nneg i64 %.sink13.i to double, !dbg !163693
  %i.bs = fsub double %.sink11.i, %i.br, !dbg !163694
  %i.bt = fsub double %i.bq, %i.av, !dbg !163695
  %i.bu = fmul double %i.bs, %i.bt, !dbg !163696
  %i.bv = fadd double %i.bu, %i.av, !dbg !163697
  br label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, !dbg !163698

bb.aa:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !163699
  unreachable, !dbg !163699

bb.ab:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp56, !dbg !163699
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15quantiles_slicehEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias noundef nonnull readonly align 8 captures(address) %3, i64 noundef range(i64 0, 1152921504606846976) %4, i8 noundef range(i8 0, 6) %5) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !163700 !guid !163790 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %.idx = shl nuw nsw i64 %4, 3, !dbg !163818
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 %.idx, !dbg !163818 ; 2 uses
  %i.f = icmp eq i64 %4, 0, !dbg !163819          ; 2 uses
  br i1 %i.f, label %._crit_edge, label %.lr.ph, !dbg !163797

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.034, i64 8, !dbg !163820 ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.e, !dbg !163819
  br i1 %i.h, label %._crit_edge, label %.lr.ph, !dbg !163797

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.034 = phi ptr [ %i.g, %bb.b ], [ %3, %bb.a ] ; 2 uses
  %i.i = load double, ptr %.sroa.0.034, align 8, !dbg !163821, !noundef !3468 ; 2 uses
  %i.j = fcmp oge double %i.i, 0.000000e+00, !dbg !163822
  %i.k = fcmp ole double %i.i, 1.000000e+00
  %spec.select.i = and i1 %i.j, %i.k, !dbg !163823
  br i1 %spec.select.i, label %bb.b, label %bb.c, !dbg !163824

._crit_edge:                                      ; preds = %bb.b, %bb.a
  switch i64 %2, label %bb.f [
    i64 0, label %bb.e
    i64 1, label %bb.i
  ], !dbg !163825

bb.c:                                             ; preds = %.lr.ph
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) @57, i64 72, i1 false), !dbg !163826
  br label %bb.d, !dbg !163827

bb.d:                                             ; preds = %._crit_edge38, %bb.i, %bb.e, %bb.c
  ret void, !dbg !163828

bb.e:                                             ; preds = %._crit_edge
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !163829
  tail call void @_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemINtNtCscgRAwXFJnXP_4core6option6OptiondENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, i64 noundef 0, double undef, i64 noundef %4), !dbg !163830
  store i64 18, ptr %0, align 8, !dbg !163829
  br label %bb.d, !dbg !163827

bb.f:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !163802
  store ptr %i.a, ptr %i.b, align 8, !noalias !163803
  %i.m = icmp samesign ult i64 %2, 21, !dbg !163831
  br i1 %i.m, label %bb.h, label %bb.g, !dbg !163832, !prof !3738

bb.g:                                             ; preds = %bb.f
  call void @_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable14driftsort_mainhNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSh7sort_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0INtNtB18_3vec3VechEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b), !dbg !163833
  br label %_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSh7sort_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpECs1LHh8CLbVkQ_11polars_core.exit, !dbg !163833

bb.h:                                             ; preds = %bb.f
  call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort25insertion_sort_shift_lefthNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSh7sort_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b), !dbg !163834
  br label %_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSh7sort_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpECs1LHh8CLbVkQ_11polars_core.exit, !dbg !163834

_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSh7sort_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !163835, !noalias !163802
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !163836
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !163837
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !dbg !163837
  %i.n = load i64, ptr %i.c, align 8, !dbg !163837, !range !3513, !noundef !3468
  %i.o = trunc nuw i64 %i.n to i1, !dbg !163838
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !163839
  %i.q = load i64, ptr %i.p, align 8, !dbg !163839, !range !3514, !noundef !3468 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !163839 ; 2 uses
  br i1 %i.o, label %bb.j, label %bb.k, !dbg !163838, !prof !3515

bb.i:                                             ; preds = %._crit_edge
  %.val26 = load i8, ptr %1, align 1, !dbg !163840, !noundef !3468
  %i.s = uitofp i8 %.val26 to double, !dbg !163841
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !163842
  tail call void @_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemINtNtCscgRAwXFJnXP_4core6option6OptiondENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, i64 noundef 1, double %i.s, i64 noundef %4), !dbg !163843
  store i64 18, ptr %0, align 8, !dbg !163842
  br label %bb.d, !dbg !163827

bb.j:                                             ; preds = %_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSh7sort_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpECs1LHh8CLbVkQ_11polars_core.exit
  %i.u = load i64, ptr %i.r, align 8, !dbg !163844
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.q, i64 %i.u) #43, !dbg !163845
  unreachable, !dbg !163845

bb.k:                                             ; preds = %_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSh7sort_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpECs1LHh8CLbVkQ_11polars_core.exit
  %i.v = load ptr, ptr %i.r, align 8, !dbg !163846, !nonnull !3468, !noundef !3468
  %i.w = icmp samesign ule i64 %4, %i.q, !dbg !163847
  call void @llvm.assume(i1 %i.w), !dbg !163848
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !163849
  store i64 %i.q, ptr %i.d, align 8, !dbg !163850
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !163850 ; 2 uses
  store ptr %i.v, ptr %i.x, align 8, !dbg !163850
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !163850 ; 2 uses
  store i64 0, ptr %i.y, align 8, !dbg !163851
  br i1 %i.f, label %._crit_edge38, label %.lr.ph37, !dbg !163852

.lr.ph37:                                         ; preds = %bb.k
  %i.z = uitofp nneg i64 %2 to double             ; 2 uses
  %i.aa = fadd nnan double %i.z, -1.000000e+00
  %i.ab = add nsw i64 %2, -1
  br label %bb.l, !dbg !163852

bb.l:                                             ; preds = %.lr.ph37, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit
  %i.ac = phi i64 [ 0, %.lr.ph37 ], [ %i.bi, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit ] ; 3 uses
  %.sroa.02.035 = phi ptr [ %3, %.lr.ph37 ], [ %i.ad, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.02.035, i64 8, !dbg !163853 ; 2 uses
  %i.ae = load double, ptr %.sroa.02.035, align 8, !dbg !163854, !noundef !3468 ; 2 uses
  %i.af = fmul double %i.aa, %i.ae, !dbg !163855
  %i.ag = fadd double %i.af, 0.000000e+00, !dbg !163855 ; 5 uses
  switch i8 %5, label %default.unreachable [
    i8 0, label %bb.m
    i8 1, label %bb.n
    i8 2, label %bb.o
    i8 3, label %bb.n
    i8 4, label %bb.n
    i8 5, label %bb.p
  ], !dbg !163856

default.unreachable:                              ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.ah = call double @llvm.round.f64(double %i.ag), !dbg !163857
  %i.ai = call i64 @llvm.fptoui.sat.i64.f64(double %i.ah), !dbg !163858
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !163859

bb.n:                                             ; preds = %bb.l, %bb.l, %bb.l
  %i.aj = call i64 @llvm.fptoui.sat.i64.f64(double %i.ag), !dbg !163860
  %.pre.i = call double @llvm.ceil.f64(double %i.ag), !dbg !163861
  %.pre7.i = call i64 @llvm.fptoui.sat.i64.f64(double %.pre.i), !dbg !163862
  br label %bb.q, !dbg !163863

bb.o:                                             ; preds = %bb.l
  %i.ak = call double @llvm.ceil.f64(double %i.ag), !dbg !163864
  %i.al = call i64 @llvm.fptoui.sat.i64.f64(double %i.ak), !dbg !163865 ; 2 uses
  br label %bb.q, !dbg !163866

bb.p:                                             ; preds = %bb.l
  %i.am = fmul double %i.ae, %i.z, !dbg !163867
  %i.an = call double @llvm.ceil.f64(double %i.am), !dbg !163868
  %i.ao = fadd double %i.an, -1.000000e+00, !dbg !163869
  %i.ap = call nsz double @llvm.maximumnum.f64(double %i.ao, double 0.000000e+00), !dbg !163870
  %i.aq = call i64 @llvm.fptoui.sat.i64.f64(double %i.ap), !dbg !163869
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !163859

bb.q:                                             ; preds = %bb.o, %bb.n
  %.pre-phi8.i = phi i64 [ %i.al, %bb.o ], [ %.pre7.i, %bb.n ], !dbg !163862
  %.sroa.0.0.i = phi i64 [ %i.al, %bb.o ], [ %i.aj, %bb.n ], !dbg !163871
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i, i64 %i.ab), !dbg !163872 ; 2 uses
  %i.ar = icmp eq i64 %.pre-phi8.i, %.sroa.0.0.i.i, !dbg !163873
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !163874

._crit_edge38:                                    ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit, %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !163875
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !163876
  store i64 18, ptr %0, align 8, !dbg !163875
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !163877
  br label %bb.d, !dbg !163828

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.w, %.invoke
  %lpad.loopexit.split-lp59 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB4_6option6OptiondEEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 dereferenceable(24) %i.d) #44
          to label %bb.ab unwind label %bb.aa, !dbg !163877

_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit: ; preds = %bb.q, %bb.p, %bb.m
  %.sink13.i = phi i64 [ %i.ai, %bb.m ], [ %i.aq, %bb.p ], [ %.sroa.0.0.i.i, %bb.q ] ; 6 uses
  %.sink11.i = phi double [ 0.000000e+00, %bb.m ], [ 0.000000e+00, %bb.p ], [ %i.ag, %bb.q ]
  %.sink.i = phi i1 [ true, %bb.m ], [ true, %bb.p ], [ %i.ar, %bb.q ] ; 2 uses
  %i.at = icmp ult i64 %.sink13.i, %2, !dbg !163878
  br i1 %i.at, label %bb.r, label %.invoke, !dbg !163878

bb.r:                                             ; preds = %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 %.sink13.i, !dbg !163878
  %.val25 = load i8, ptr %i.au, align 1, !dbg !163879, !noundef !3468
  %i.av = uitofp i8 %.val25 to double, !dbg !163880 ; 10 uses
  switch i8 %5, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit [
    i8 3, label %bb.s
    i8 4, label %bb.t
  ], !dbg !163881

bb.s:                                             ; preds = %bb.r
  br i1 %.sink.i, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.u, !dbg !163882

bb.t:                                             ; preds = %bb.r
  br i1 %.sink.i, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.x, !dbg !163873

bb.u:                                             ; preds = %bb.s
  %i.aw = add nuw nsw i64 %.sink13.i, 1, !dbg !163883 ; 3 uses
  %i.ax = icmp ult i64 %i.aw, %2, !dbg !163884
  br i1 %i.ax, label %bb.v, label %.invoke, !dbg !163884

bb.v:                                             ; preds = %bb.u
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 %i.aw, !dbg !163884
  %.val24 = load i8, ptr %i.ay, align 1, !dbg !163885, !noundef !3468
  %i.az = uitofp i8 %.val24 to double, !dbg !163886 ; 2 uses
  %i.ba = fcmp oeq double %i.av, %i.az, !dbg !163887
  %i.bb = fadd nnan double %i.av, %i.az, !dbg !163888
  %i.bc = fmul nnan double %i.bb, 5.000000e-01, !dbg !163888
  %.sroa.0.0.i27 = select i1 %i.ba, double %i.av, double %i.bc, !dbg !163888
  br label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, !dbg !163889

_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit: ; preds = %bb.z, %bb.y, %bb.v, %bb.t, %bb.s, %bb.r
  %.sroa.5.0 = phi double [ %i.av, %bb.r ], [ %i.av, %bb.s ], [ %.sroa.0.0.i27, %bb.v ], [ %i.av, %bb.t ], [ %i.bv, %bb.z ], [ %i.av, %bb.y ], !dbg !163890
  %i.bd = load i64, ptr %i.d, align 8, !dbg !163891, !range !3548, !alias.scope !163815, !noundef !3468
  %i.be = icmp eq i64 %i.ac, %i.bd, !dbg !163892
  br i1 %i.be, label %bb.w, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit, !dbg !163892

bb.w:                                             ; preds = %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8grow_oneCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !163893

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.w, %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit
  %i.bf = load ptr, ptr %i.x, align 8, !dbg !163894, !alias.scope !163815, !nonnull !3468, !noundef !3468
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %i.ac, !dbg !163895 ; 2 uses
  store i64 1, ptr %i.bg, align 8, !dbg !163896
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8, !dbg !163896
  store double %.sroa.5.0, ptr %i.bh, align 8, !dbg !163896
  %i.bi = add i64 %i.ac, 1, !dbg !163897          ; 2 uses
  store i64 %i.bi, ptr %i.y, align 8, !dbg !163851
  %i.bj = icmp eq ptr %i.ad, %i.e, !dbg !163898
  br i1 %i.bj, label %._crit_edge38, label %bb.l, !dbg !163852

bb.x:                                             ; preds = %bb.t
  %i.bk = add nuw nsw i64 %.sink13.i, 1, !dbg !163899 ; 3 uses
  %i.bl = icmp ult i64 %i.bk, %2, !dbg !163900
  br i1 %i.bl, label %bb.y, label %.invoke, !dbg !163900

.invoke:                                          ; preds = %bb.x, %bb.u, %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit
  %i.bm = phi i64 [ %i.aw, %bb.u ], [ %.sink13.i, %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit ], [ %i.bk, %bb.x ]
  %i.bn = phi ptr [ @62, %bb.u ], [ @61, %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit ], [ @63, %bb.x ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.bm, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bn) #43
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !163890

.cont:                                            ; preds = %.invoke
  unreachable

bb.y:                                             ; preds = %bb.x
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 %i.bk, !dbg !163900
  %.val23 = load i8, ptr %i.bo, align 1, !dbg !163901, !noundef !3468
  %i.bp = uitofp i8 %.val23 to double, !dbg !163902 ; 2 uses
  %i.bq = fcmp oeq double %i.av, %i.bp, !dbg !163903
  br i1 %i.bq, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.z, !dbg !163904

bb.z:                                             ; preds = %bb.y
  %i.br = uitofp nneg i64 %.sink13.i to double, !dbg !163905
  %i.bs = fsub double %.sink11.i, %i.br, !dbg !163906
  %i.bt = fsub nnan double %i.bp, %i.av, !dbg !163907
  %i.bu = fmul double %i.bs, %i.bt, !dbg !163908
  %i.bv = fadd double %i.bu, %i.av, !dbg !163909
  br label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, !dbg !163910

bb.aa:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !163911
  unreachable, !dbg !163911

bb.ab:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp59, !dbg !163911
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15quantiles_slicelEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull align 4 %1, i64 noundef range(i64 0, 2305843009213693952) %2, ptr noalias noundef nonnull readonly align 8 captures(address) %3, i64 noundef range(i64 0, 1152921504606846976) %4, i8 noundef range(i8 0, 6) %5) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !163912 !guid !164002 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %.idx = shl nuw nsw i64 %4, 3, !dbg !164030
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 %.idx, !dbg !164030 ; 2 uses
  %i.f = icmp eq i64 %4, 0, !dbg !164031          ; 2 uses
  br i1 %i.f, label %._crit_edge, label %.lr.ph, !dbg !164009

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.034, i64 8, !dbg !164032 ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.e, !dbg !164031
  br i1 %i.h, label %._crit_edge, label %.lr.ph, !dbg !164009

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.034 = phi ptr [ %i.g, %bb.b ], [ %3, %bb.a ] ; 2 uses
  %i.i = load double, ptr %.sroa.0.034, align 8, !dbg !164033, !noundef !3468 ; 2 uses
  %i.j = fcmp oge double %i.i, 0.000000e+00, !dbg !164034
  %i.k = fcmp ole double %i.i, 1.000000e+00
  %spec.select.i = and i1 %i.j, %i.k, !dbg !164035
  br i1 %spec.select.i, label %bb.b, label %bb.c, !dbg !164036

._crit_edge:                                      ; preds = %bb.b, %bb.a
  switch i64 %2, label %bb.f [
    i64 0, label %bb.e
    i64 1, label %bb.i
  ], !dbg !164037

bb.c:                                             ; preds = %.lr.ph
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) @57, i64 72, i1 false), !dbg !164038
  br label %bb.d, !dbg !164039

bb.d:                                             ; preds = %._crit_edge38, %bb.i, %bb.e, %bb.c
  ret void, !dbg !164040

bb.e:                                             ; preds = %._crit_edge
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !164041
  tail call void @_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemINtNtCscgRAwXFJnXP_4core6option6OptiondENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, i64 noundef 0, double undef, i64 noundef %4), !dbg !164042
  store i64 18, ptr %0, align 8, !dbg !164041
  br label %bb.d, !dbg !164039

bb.f:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !164014
  store ptr %i.a, ptr %i.b, align 8, !noalias !164015
  %i.m = icmp samesign ult i64 %2, 21, !dbg !164043
  br i1 %i.m, label %bb.h, label %bb.g, !dbg !164044, !prof !3738

bb.g:                                             ; preds = %bb.f
  call void @_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable14driftsort_mainlNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSl7sort_byNvYlNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0INtNtB18_3vec3VeclEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 4 %1, i64 noundef range(i64 0, 2305843009213693952) %2, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b), !dbg !164045
  br label %_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSl7sort_byNvYlNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpECs1LHh8CLbVkQ_11polars_core.exit, !dbg !164045

bb.h:                                             ; preds = %bb.f
  call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftlNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSl7sort_byNvYlNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 4 %1, i64 noundef range(i64 0, 2305843009213693952) %2, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b), !dbg !164046
  br label %_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSl7sort_byNvYlNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpECs1LHh8CLbVkQ_11polars_core.exit, !dbg !164046

_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSl7sort_byNvYlNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !164047, !noalias !164014
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !164048
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !164049
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !dbg !164049
  %i.n = load i64, ptr %i.c, align 8, !dbg !164049, !range !3513, !noundef !3468
  %i.o = trunc nuw i64 %i.n to i1, !dbg !164050
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !164051
  %i.q = load i64, ptr %i.p, align 8, !dbg !164051, !range !3514, !noundef !3468 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !164051 ; 2 uses
  br i1 %i.o, label %bb.j, label %bb.k, !dbg !164050, !prof !3515

bb.i:                                             ; preds = %._crit_edge
  %.val26 = load i32, ptr %1, align 4, !dbg !164052, !noundef !3468
  %i.s = sitofp i32 %.val26 to double, !dbg !164053
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !164054
  tail call void @_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemINtNtCscgRAwXFJnXP_4core6option6OptiondENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, i64 noundef 1, double %i.s, i64 noundef %4), !dbg !164055
  store i64 18, ptr %0, align 8, !dbg !164054
  br label %bb.d, !dbg !164039

bb.j:                                             ; preds = %_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSl7sort_byNvYlNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpECs1LHh8CLbVkQ_11polars_core.exit
  %i.u = load i64, ptr %i.r, align 8, !dbg !164056
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.q, i64 %i.u) #43, !dbg !164057
  unreachable, !dbg !164057

bb.k:                                             ; preds = %_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSl7sort_byNvYlNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpECs1LHh8CLbVkQ_11polars_core.exit
  %i.v = load ptr, ptr %i.r, align 8, !dbg !164058, !nonnull !3468, !noundef !3468
  %i.w = icmp samesign ule i64 %4, %i.q, !dbg !164059
  call void @llvm.assume(i1 %i.w), !dbg !164060
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !164061
  store i64 %i.q, ptr %i.d, align 8, !dbg !164062
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !164062 ; 2 uses
  store ptr %i.v, ptr %i.x, align 8, !dbg !164062
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !164062 ; 2 uses
  store i64 0, ptr %i.y, align 8, !dbg !164063
  br i1 %i.f, label %._crit_edge38, label %.lr.ph37, !dbg !164064

.lr.ph37:                                         ; preds = %bb.k
  %i.z = uitofp nneg i64 %2 to double             ; 2 uses
  %i.aa = fadd nnan double %i.z, -1.000000e+00
  %i.ab = add nsw i64 %2, -1
  br label %bb.l, !dbg !164064

bb.l:                                             ; preds = %.lr.ph37, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit
  %i.ac = phi i64 [ 0, %.lr.ph37 ], [ %i.bi, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit ] ; 3 uses
  %.sroa.02.035 = phi ptr [ %3, %.lr.ph37 ], [ %i.ad, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.02.035, i64 8, !dbg !164065 ; 2 uses
  %i.ae = load double, ptr %.sroa.02.035, align 8, !dbg !164066, !noundef !3468 ; 2 uses
  %i.af = fmul double %i.aa, %i.ae, !dbg !164067
  %i.ag = fadd double %i.af, 0.000000e+00, !dbg !164067 ; 5 uses
  switch i8 %5, label %default.unreachable [
    i8 0, label %bb.m
    i8 1, label %bb.n
    i8 2, label %bb.o
    i8 3, label %bb.n
    i8 4, label %bb.n
    i8 5, label %bb.p
  ], !dbg !164068

default.unreachable:                              ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.ah = call double @llvm.round.f64(double %i.ag), !dbg !164069
  %i.ai = call i64 @llvm.fptoui.sat.i64.f64(double %i.ah), !dbg !164070
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !164071

bb.n:                                             ; preds = %bb.l, %bb.l, %bb.l
  %i.aj = call i64 @llvm.fptoui.sat.i64.f64(double %i.ag), !dbg !164072
  %.pre.i = call double @llvm.ceil.f64(double %i.ag), !dbg !164073
  %.pre7.i = call i64 @llvm.fptoui.sat.i64.f64(double %.pre.i), !dbg !164074
  br label %bb.q, !dbg !164075

bb.o:                                             ; preds = %bb.l
  %i.ak = call double @llvm.ceil.f64(double %i.ag), !dbg !164076
  %i.al = call i64 @llvm.fptoui.sat.i64.f64(double %i.ak), !dbg !164077 ; 2 uses
  br label %bb.q, !dbg !164078

bb.p:                                             ; preds = %bb.l
  %i.am = fmul double %i.ae, %i.z, !dbg !164079
  %i.an = call double @llvm.ceil.f64(double %i.am), !dbg !164080
  %i.ao = fadd double %i.an, -1.000000e+00, !dbg !164081
  %i.ap = call nsz double @llvm.maximumnum.f64(double %i.ao, double 0.000000e+00), !dbg !164082
  %i.aq = call i64 @llvm.fptoui.sat.i64.f64(double %i.ap), !dbg !164081
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !164071

bb.q:                                             ; preds = %bb.o, %bb.n
  %.pre-phi8.i = phi i64 [ %i.al, %bb.o ], [ %.pre7.i, %bb.n ], !dbg !164074
  %.sroa.0.0.i = phi i64 [ %i.al, %bb.o ], [ %i.aj, %bb.n ], !dbg !164083
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i, i64 %i.ab), !dbg !164084 ; 2 uses
  %i.ar = icmp eq i64 %.pre-phi8.i, %.sroa.0.0.i.i, !dbg !164085
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !164086

._crit_edge38:                                    ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit, %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !164087
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !164088
  store i64 18, ptr %0, align 8, !dbg !164087
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !164089
  br label %bb.d, !dbg !164040

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.w, %.invoke
  %lpad.loopexit.split-lp59 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB4_6option6OptiondEEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 dereferenceable(24) %i.d) #44
          to label %bb.ab unwind label %bb.aa, !dbg !164089

_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit: ; preds = %bb.q, %bb.p, %bb.m
  %.sink13.i = phi i64 [ %i.ai, %bb.m ], [ %i.aq, %bb.p ], [ %.sroa.0.0.i.i, %bb.q ] ; 6 uses
  %.sink11.i = phi double [ 0.000000e+00, %bb.m ], [ 0.000000e+00, %bb.p ], [ %i.ag, %bb.q ]
  %.sink.i = phi i1 [ true, %bb.m ], [ true, %bb.p ], [ %i.ar, %bb.q ] ; 2 uses
  %i.at = icmp ult i64 %.sink13.i, %2, !dbg !164090
  br i1 %i.at, label %bb.r, label %.invoke, !dbg !164090

bb.r:                                             ; preds = %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.sink13.i, !dbg !164090
  %.val25 = load i32, ptr %i.au, align 4, !dbg !164091, !noundef !3468
  %i.av = sitofp i32 %.val25 to double, !dbg !164092 ; 10 uses
  switch i8 %5, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit [
    i8 3, label %bb.s
    i8 4, label %bb.t
  ], !dbg !164093

bb.s:                                             ; preds = %bb.r
  br i1 %.sink.i, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.u, !dbg !164094

bb.t:                                             ; preds = %bb.r
  br i1 %.sink.i, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.x, !dbg !164085

bb.u:                                             ; preds = %bb.s
  %i.aw = add nuw nsw i64 %.sink13.i, 1, !dbg !164095 ; 3 uses
  %i.ax = icmp ult i64 %i.aw, %2, !dbg !164096
  br i1 %i.ax, label %bb.v, label %.invoke, !dbg !164096

bb.v:                                             ; preds = %bb.u
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aw, !dbg !164096
  %.val24 = load i32, ptr %i.ay, align 4, !dbg !164097, !noundef !3468
  %i.az = sitofp i32 %.val24 to double, !dbg !164098 ; 2 uses
  %i.ba = fcmp oeq double %i.av, %i.az, !dbg !164099
  %i.bb = fadd nnan double %i.av, %i.az, !dbg !164100
  %i.bc = fmul nnan double %i.bb, 5.000000e-01, !dbg !164100
  %.sroa.0.0.i27 = select i1 %i.ba, double %i.av, double %i.bc, !dbg !164100
  br label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, !dbg !164101

_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit: ; preds = %bb.z, %bb.y, %bb.v, %bb.t, %bb.s, %bb.r
  %.sroa.5.0 = phi double [ %i.av, %bb.r ], [ %i.av, %bb.s ], [ %.sroa.0.0.i27, %bb.v ], [ %i.av, %bb.t ], [ %i.bv, %bb.z ], [ %i.av, %bb.y ], !dbg !164102
  %i.bd = load i64, ptr %i.d, align 8, !dbg !164103, !range !3548, !alias.scope !164027, !noundef !3468
  %i.be = icmp eq i64 %i.ac, %i.bd, !dbg !164104
  br i1 %i.be, label %bb.w, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit, !dbg !164104

bb.w:                                             ; preds = %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8grow_oneCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !164105

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.w, %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit
  %i.bf = load ptr, ptr %i.x, align 8, !dbg !164106, !alias.scope !164027, !nonnull !3468, !noundef !3468
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %i.ac, !dbg !164107 ; 2 uses
  store i64 1, ptr %i.bg, align 8, !dbg !164108
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8, !dbg !164108
  store double %.sroa.5.0, ptr %i.bh, align 8, !dbg !164108
  %i.bi = add i64 %i.ac, 1, !dbg !164109          ; 2 uses
  store i64 %i.bi, ptr %i.y, align 8, !dbg !164063
  %i.bj = icmp eq ptr %i.ad, %i.e, !dbg !164110
  br i1 %i.bj, label %._crit_edge38, label %bb.l, !dbg !164064

bb.x:                                             ; preds = %bb.t
  %i.bk = add nuw nsw i64 %.sink13.i, 1, !dbg !164111 ; 3 uses
  %i.bl = icmp ult i64 %i.bk, %2, !dbg !164112
  br i1 %i.bl, label %bb.y, label %.invoke, !dbg !164112

.invoke:                                          ; preds = %bb.x, %bb.u, %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit
  %i.bm = phi i64 [ %i.aw, %bb.u ], [ %.sink13.i, %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit ], [ %i.bk, %bb.x ]
  %i.bn = phi ptr [ @62, %bb.u ], [ @61, %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit ], [ @63, %bb.x ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.bm, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bn) #43
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !164102

.cont:                                            ; preds = %.invoke
  unreachable

bb.y:                                             ; preds = %bb.x
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bk, !dbg !164112
  %.val23 = load i32, ptr %i.bo, align 4, !dbg !164113, !noundef !3468
  %i.bp = sitofp i32 %.val23 to double, !dbg !164114 ; 2 uses
  %i.bq = fcmp oeq double %i.av, %i.bp, !dbg !164115
  br i1 %i.bq, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.z, !dbg !164116

bb.z:                                             ; preds = %bb.y
  %i.br = uitofp nneg i64 %.sink13.i to double, !dbg !164117
  %i.bs = fsub double %.sink11.i, %i.br, !dbg !164118
  %i.bt = fsub nnan double %i.bp, %i.av, !dbg !164119
  %i.bu = fmul double %i.bs, %i.bt, !dbg !164120
  %i.bv = fadd double %i.bu, %i.av, !dbg !164121
  br label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, !dbg !164122

bb.aa:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !164123
  unreachable, !dbg !164123

bb.ab:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp59, !dbg !164123
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15quantiles_slicemEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull align 4 %1, i64 noundef range(i64 0, 2305843009213693952) %2, ptr noalias noundef nonnull readonly align 8 captures(address) %3, i64 noundef range(i64 0, 1152921504606846976) %4, i8 noundef range(i8 0, 6) %5) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !164124 !guid !164214 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %.idx = shl nuw nsw i64 %4, 3, !dbg !164242
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 %.idx, !dbg !164242 ; 2 uses
  %i.f = icmp eq i64 %4, 0, !dbg !164243          ; 2 uses
  br i1 %i.f, label %._crit_edge, label %.lr.ph, !dbg !164221

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.034, i64 8, !dbg !164244 ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.e, !dbg !164243
  br i1 %i.h, label %._crit_edge, label %.lr.ph, !dbg !164221

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.034 = phi ptr [ %i.g, %bb.b ], [ %3, %bb.a ] ; 2 uses
  %i.i = load double, ptr %.sroa.0.034, align 8, !dbg !164245, !noundef !3468 ; 2 uses
  %i.j = fcmp oge double %i.i, 0.000000e+00, !dbg !164246
  %i.k = fcmp ole double %i.i, 1.000000e+00
  %spec.select.i = and i1 %i.j, %i.k, !dbg !164247
  br i1 %spec.select.i, label %bb.b, label %bb.c, !dbg !164248

._crit_edge:                                      ; preds = %bb.b, %bb.a
  switch i64 %2, label %bb.f [
    i64 0, label %bb.e
    i64 1, label %bb.i
  ], !dbg !164249

bb.c:                                             ; preds = %.lr.ph
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) @57, i64 72, i1 false), !dbg !164250
  br label %bb.d, !dbg !164251

bb.d:                                             ; preds = %._crit_edge38, %bb.i, %bb.e, %bb.c
  ret void, !dbg !164252

bb.e:                                             ; preds = %._crit_edge
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !164253
  tail call void @_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemINtNtCscgRAwXFJnXP_4core6option6OptiondENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, i64 noundef 0, double undef, i64 noundef %4), !dbg !164254
  store i64 18, ptr %0, align 8, !dbg !164253
  br label %bb.d, !dbg !164251

bb.f:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !164226
  store ptr %i.a, ptr %i.b, align 8, !noalias !164227
  %i.m = icmp samesign ult i64 %2, 21, !dbg !164255
  br i1 %i.m, label %bb.h, label %bb.g, !dbg !164256, !prof !3738

bb.g:                                             ; preds = %bb.f
  call void @_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable14driftsort_mainmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNvYmNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0INtNtB18_3vec3VecmEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 4 %1, i64 noundef range(i64 0, 2305843009213693952) %2, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b), !dbg !164257
  br label %_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNvYmNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpECs1LHh8CLbVkQ_11polars_core.exit, !dbg !164257

bb.h:                                             ; preds = %bb.f
  call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNvYmNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 4 %1, i64 noundef range(i64 0, 2305843009213693952) %2, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b), !dbg !164258
  br label %_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNvYmNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpECs1LHh8CLbVkQ_11polars_core.exit, !dbg !164258

_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNvYmNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !164259, !noalias !164226
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !164260
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !164261
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !dbg !164261
  %i.n = load i64, ptr %i.c, align 8, !dbg !164261, !range !3513, !noundef !3468
  %i.o = trunc nuw i64 %i.n to i1, !dbg !164262
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !164263
  %i.q = load i64, ptr %i.p, align 8, !dbg !164263, !range !3514, !noundef !3468 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !164263 ; 2 uses
  br i1 %i.o, label %bb.j, label %bb.k, !dbg !164262, !prof !3515

bb.i:                                             ; preds = %._crit_edge
  %.val26 = load i32, ptr %1, align 4, !dbg !164264, !noundef !3468
  %i.s = uitofp i32 %.val26 to double, !dbg !164265
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !164266
  tail call void @_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemINtNtCscgRAwXFJnXP_4core6option6OptiondENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, i64 noundef 1, double %i.s, i64 noundef %4), !dbg !164267
  store i64 18, ptr %0, align 8, !dbg !164266
  br label %bb.d, !dbg !164251

bb.j:                                             ; preds = %_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNvYmNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpECs1LHh8CLbVkQ_11polars_core.exit
  %i.u = load i64, ptr %i.r, align 8, !dbg !164268
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.q, i64 %i.u) #43, !dbg !164269
  unreachable, !dbg !164269

bb.k:                                             ; preds = %_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNvYmNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpECs1LHh8CLbVkQ_11polars_core.exit
  %i.v = load ptr, ptr %i.r, align 8, !dbg !164270, !nonnull !3468, !noundef !3468
  %i.w = icmp samesign ule i64 %4, %i.q, !dbg !164271
  call void @llvm.assume(i1 %i.w), !dbg !164272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !164273
  store i64 %i.q, ptr %i.d, align 8, !dbg !164274
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !164274 ; 2 uses
  store ptr %i.v, ptr %i.x, align 8, !dbg !164274
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !164274 ; 2 uses
  store i64 0, ptr %i.y, align 8, !dbg !164275
  br i1 %i.f, label %._crit_edge38, label %.lr.ph37, !dbg !164276

.lr.ph37:                                         ; preds = %bb.k
  %i.z = uitofp nneg i64 %2 to double             ; 2 uses
  %i.aa = fadd nnan double %i.z, -1.000000e+00
  %i.ab = add nsw i64 %2, -1
  br label %bb.l, !dbg !164276

bb.l:                                             ; preds = %.lr.ph37, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit
  %i.ac = phi i64 [ 0, %.lr.ph37 ], [ %i.bi, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit ] ; 3 uses
  %.sroa.02.035 = phi ptr [ %3, %.lr.ph37 ], [ %i.ad, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.02.035, i64 8, !dbg !164277 ; 2 uses
  %i.ae = load double, ptr %.sroa.02.035, align 8, !dbg !164278, !noundef !3468 ; 2 uses
  %i.af = fmul double %i.aa, %i.ae, !dbg !164279
  %i.ag = fadd double %i.af, 0.000000e+00, !dbg !164279 ; 5 uses
  switch i8 %5, label %default.unreachable [
    i8 0, label %bb.m
    i8 1, label %bb.n
    i8 2, label %bb.o
    i8 3, label %bb.n
    i8 4, label %bb.n
    i8 5, label %bb.p
  ], !dbg !164280

default.unreachable:                              ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.ah = call double @llvm.round.f64(double %i.ag), !dbg !164281
  %i.ai = call i64 @llvm.fptoui.sat.i64.f64(double %i.ah), !dbg !164282
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !164283

bb.n:                                             ; preds = %bb.l, %bb.l, %bb.l
  %i.aj = call i64 @llvm.fptoui.sat.i64.f64(double %i.ag), !dbg !164284
  %.pre.i = call double @llvm.ceil.f64(double %i.ag), !dbg !164285
  %.pre7.i = call i64 @llvm.fptoui.sat.i64.f64(double %.pre.i), !dbg !164286
  br label %bb.q, !dbg !164287

bb.o:                                             ; preds = %bb.l
  %i.ak = call double @llvm.ceil.f64(double %i.ag), !dbg !164288
  %i.al = call i64 @llvm.fptoui.sat.i64.f64(double %i.ak), !dbg !164289 ; 2 uses
  br label %bb.q, !dbg !164290

bb.p:                                             ; preds = %bb.l
  %i.am = fmul double %i.ae, %i.z, !dbg !164291
  %i.an = call double @llvm.ceil.f64(double %i.am), !dbg !164292
  %i.ao = fadd double %i.an, -1.000000e+00, !dbg !164293
  %i.ap = call nsz double @llvm.maximumnum.f64(double %i.ao, double 0.000000e+00), !dbg !164294
  %i.aq = call i64 @llvm.fptoui.sat.i64.f64(double %i.ap), !dbg !164293
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !164283

bb.q:                                             ; preds = %bb.o, %bb.n
  %.pre-phi8.i = phi i64 [ %i.al, %bb.o ], [ %.pre7.i, %bb.n ], !dbg !164286
  %.sroa.0.0.i = phi i64 [ %i.al, %bb.o ], [ %i.aj, %bb.n ], !dbg !164295
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i, i64 %i.ab), !dbg !164296 ; 2 uses
  %i.ar = icmp eq i64 %.pre-phi8.i, %.sroa.0.0.i.i, !dbg !164297
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !164298

._crit_edge38:                                    ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit, %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !164299
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !164300
  store i64 18, ptr %0, align 8, !dbg !164299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !164301
  br label %bb.d, !dbg !164252

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.w, %.invoke
  %lpad.loopexit.split-lp59 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB4_6option6OptiondEEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 dereferenceable(24) %i.d) #44
          to label %bb.ab unwind label %bb.aa, !dbg !164301

_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit: ; preds = %bb.q, %bb.p, %bb.m
  %.sink13.i = phi i64 [ %i.ai, %bb.m ], [ %i.aq, %bb.p ], [ %.sroa.0.0.i.i, %bb.q ] ; 6 uses
  %.sink11.i = phi double [ 0.000000e+00, %bb.m ], [ 0.000000e+00, %bb.p ], [ %i.ag, %bb.q ]
  %.sink.i = phi i1 [ true, %bb.m ], [ true, %bb.p ], [ %i.ar, %bb.q ] ; 2 uses
  %i.at = icmp ult i64 %.sink13.i, %2, !dbg !164302
  br i1 %i.at, label %bb.r, label %.invoke, !dbg !164302

bb.r:                                             ; preds = %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.sink13.i, !dbg !164302
  %.val25 = load i32, ptr %i.au, align 4, !dbg !164303, !noundef !3468
  %i.av = uitofp i32 %.val25 to double, !dbg !164304 ; 10 uses
  switch i8 %5, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit [
    i8 3, label %bb.s
    i8 4, label %bb.t
  ], !dbg !164305

bb.s:                                             ; preds = %bb.r
  br i1 %.sink.i, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.u, !dbg !164306

bb.t:                                             ; preds = %bb.r
  br i1 %.sink.i, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.x, !dbg !164297

bb.u:                                             ; preds = %bb.s
  %i.aw = add nuw nsw i64 %.sink13.i, 1, !dbg !164307 ; 3 uses
  %i.ax = icmp ult i64 %i.aw, %2, !dbg !164308
  br i1 %i.ax, label %bb.v, label %.invoke, !dbg !164308

bb.v:                                             ; preds = %bb.u
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aw, !dbg !164308
  %.val24 = load i32, ptr %i.ay, align 4, !dbg !164309, !noundef !3468
  %i.az = uitofp i32 %.val24 to double, !dbg !164310 ; 2 uses
  %i.ba = fcmp oeq double %i.av, %i.az, !dbg !164311
  %i.bb = fadd nnan double %i.av, %i.az, !dbg !164312
  %i.bc = fmul nnan double %i.bb, 5.000000e-01, !dbg !164312
  %.sroa.0.0.i27 = select i1 %i.ba, double %i.av, double %i.bc, !dbg !164312
  br label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, !dbg !164313

_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit: ; preds = %bb.z, %bb.y, %bb.v, %bb.t, %bb.s, %bb.r
  %.sroa.5.0 = phi double [ %i.av, %bb.r ], [ %i.av, %bb.s ], [ %.sroa.0.0.i27, %bb.v ], [ %i.av, %bb.t ], [ %i.bv, %bb.z ], [ %i.av, %bb.y ], !dbg !164314
  %i.bd = load i64, ptr %i.d, align 8, !dbg !164315, !range !3548, !alias.scope !164239, !noundef !3468
  %i.be = icmp eq i64 %i.ac, %i.bd, !dbg !164316
  br i1 %i.be, label %bb.w, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit, !dbg !164316

bb.w:                                             ; preds = %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8grow_oneCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !164317

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.w, %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit
  %i.bf = load ptr, ptr %i.x, align 8, !dbg !164318, !alias.scope !164239, !nonnull !3468, !noundef !3468
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %i.ac, !dbg !164319 ; 2 uses
  store i64 1, ptr %i.bg, align 8, !dbg !164320
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8, !dbg !164320
  store double %.sroa.5.0, ptr %i.bh, align 8, !dbg !164320
  %i.bi = add i64 %i.ac, 1, !dbg !164321          ; 2 uses
  store i64 %i.bi, ptr %i.y, align 8, !dbg !164275
  %i.bj = icmp eq ptr %i.ad, %i.e, !dbg !164322
  br i1 %i.bj, label %._crit_edge38, label %bb.l, !dbg !164276

bb.x:                                             ; preds = %bb.t
  %i.bk = add nuw nsw i64 %.sink13.i, 1, !dbg !164323 ; 3 uses
  %i.bl = icmp ult i64 %i.bk, %2, !dbg !164324
  br i1 %i.bl, label %bb.y, label %.invoke, !dbg !164324

.invoke:                                          ; preds = %bb.x, %bb.u, %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit
  %i.bm = phi i64 [ %i.aw, %bb.u ], [ %.sink13.i, %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit ], [ %i.bk, %bb.x ]
  %i.bn = phi ptr [ @62, %bb.u ], [ @61, %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit ], [ @63, %bb.x ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.bm, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bn) #43
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !164314

.cont:                                            ; preds = %.invoke
  unreachable

bb.y:                                             ; preds = %bb.x
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bk, !dbg !164324
  %.val23 = load i32, ptr %i.bo, align 4, !dbg !164325, !noundef !3468
  %i.bp = uitofp i32 %.val23 to double, !dbg !164326 ; 2 uses
  %i.bq = fcmp oeq double %i.av, %i.bp, !dbg !164327
  br i1 %i.bq, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.z, !dbg !164328

bb.z:                                             ; preds = %bb.y
  %i.br = uitofp nneg i64 %.sink13.i to double, !dbg !164329
  %i.bs = fsub double %.sink11.i, %i.br, !dbg !164330
  %i.bt = fsub nnan double %i.bp, %i.av, !dbg !164331
  %i.bu = fmul double %i.bs, %i.bt, !dbg !164332
  %i.bv = fadd double %i.bu, %i.av, !dbg !164333
  br label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, !dbg !164334

bb.aa:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !164335
  unreachable, !dbg !164335

bb.ab:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp59, !dbg !164335
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15quantiles_slicenEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull align 16 %1, i64 noundef range(i64 0, 576460752303423488) %2, ptr noalias noundef nonnull readonly align 8 captures(address) %3, i64 noundef range(i64 0, 1152921504606846976) %4, i8 noundef range(i8 0, 6) %5) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !164336 !guid !164426 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %.idx = shl nuw nsw i64 %4, 3, !dbg !164454
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 %.idx, !dbg !164454 ; 2 uses
  %i.f = icmp eq i64 %4, 0, !dbg !164455          ; 2 uses
  br i1 %i.f, label %._crit_edge, label %.lr.ph, !dbg !164433

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.034, i64 8, !dbg !164456 ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.e, !dbg !164455
  br i1 %i.h, label %._crit_edge, label %.lr.ph, !dbg !164433

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.034 = phi ptr [ %i.g, %bb.b ], [ %3, %bb.a ] ; 2 uses
  %i.i = load double, ptr %.sroa.0.034, align 8, !dbg !164457, !noundef !3468 ; 2 uses
  %i.j = fcmp oge double %i.i, 0.000000e+00, !dbg !164458
  %i.k = fcmp ole double %i.i, 1.000000e+00
  %spec.select.i = and i1 %i.j, %i.k, !dbg !164459
  br i1 %spec.select.i, label %bb.b, label %bb.c, !dbg !164460

._crit_edge:                                      ; preds = %bb.b, %bb.a
  switch i64 %2, label %bb.f [
    i64 0, label %bb.e
    i64 1, label %bb.i
  ], !dbg !164461

bb.c:                                             ; preds = %.lr.ph
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) @57, i64 72, i1 false), !dbg !164462
  br label %bb.d, !dbg !164463

bb.d:                                             ; preds = %._crit_edge38, %bb.i, %bb.e, %bb.c
  ret void, !dbg !164464

bb.e:                                             ; preds = %._crit_edge
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !164465
  tail call void @_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemINtNtCscgRAwXFJnXP_4core6option6OptiondENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, i64 noundef 0, double undef, i64 noundef %4), !dbg !164466
  store i64 18, ptr %0, align 8, !dbg !164465
  br label %bb.d, !dbg !164463

bb.f:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !164438
  store ptr %i.a, ptr %i.b, align 8, !noalias !164439
  %i.m = icmp samesign ult i64 %2, 21, !dbg !164467
  br i1 %i.m, label %bb.h, label %bb.g, !dbg !164468, !prof !3738

bb.g:                                             ; preds = %bb.f
  call void @_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable14driftsort_mainnNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSn7sort_byNvYnNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0INtNtB18_3vec3VecnEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 16 %1, i64 noundef range(i64 0, 576460752303423488) %2, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b), !dbg !164469
  br label %_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSn7sort_byNvYnNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpECs1LHh8CLbVkQ_11polars_core.exit, !dbg !164469

bb.h:                                             ; preds = %bb.f
  call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftnNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSn7sort_byNvYnNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 16 %1, i64 noundef range(i64 0, 576460752303423488) %2, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b), !dbg !164470
  br label %_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSn7sort_byNvYnNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpECs1LHh8CLbVkQ_11polars_core.exit, !dbg !164470

_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSn7sort_byNvYnNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !164471, !noalias !164438
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !164472
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !164473
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !dbg !164473
  %i.n = load i64, ptr %i.c, align 8, !dbg !164473, !range !3513, !noundef !3468
  %i.o = trunc nuw i64 %i.n to i1, !dbg !164474
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !164475
  %i.q = load i64, ptr %i.p, align 8, !dbg !164475, !range !3514, !noundef !3468 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !164475 ; 2 uses
  br i1 %i.o, label %bb.j, label %bb.k, !dbg !164474, !prof !3515

bb.i:                                             ; preds = %._crit_edge
  %.val26 = load i128, ptr %1, align 16, !dbg !164476, !noundef !3468
  %i.s = sitofp i128 %.val26 to double, !dbg !164477
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !164478
  tail call void @_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemINtNtCscgRAwXFJnXP_4core6option6OptiondENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, i64 noundef 1, double %i.s, i64 noundef %4), !dbg !164479
  store i64 18, ptr %0, align 8, !dbg !164478
  br label %bb.d, !dbg !164463

bb.j:                                             ; preds = %_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSn7sort_byNvYnNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpECs1LHh8CLbVkQ_11polars_core.exit
  %i.u = load i64, ptr %i.r, align 8, !dbg !164480
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.q, i64 %i.u) #43, !dbg !164481
  unreachable, !dbg !164481

bb.k:                                             ; preds = %_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSn7sort_byNvYnNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpECs1LHh8CLbVkQ_11polars_core.exit
  %i.v = load ptr, ptr %i.r, align 8, !dbg !164482, !nonnull !3468, !noundef !3468
  %i.w = icmp samesign ule i64 %4, %i.q, !dbg !164483
  call void @llvm.assume(i1 %i.w), !dbg !164484
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !164485
  store i64 %i.q, ptr %i.d, align 8, !dbg !164486
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !164486 ; 2 uses
  store ptr %i.v, ptr %i.x, align 8, !dbg !164486
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !164486 ; 2 uses
  store i64 0, ptr %i.y, align 8, !dbg !164487
  br i1 %i.f, label %._crit_edge38, label %.lr.ph37, !dbg !164488

.lr.ph37:                                         ; preds = %bb.k
  %i.z = uitofp nneg i64 %2 to double             ; 2 uses
  %i.aa = fadd nnan double %i.z, -1.000000e+00
  %i.ab = add nsw i64 %2, -1
  br label %bb.l, !dbg !164488

bb.l:                                             ; preds = %.lr.ph37, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit
  %i.ac = phi i64 [ 0, %.lr.ph37 ], [ %i.bi, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit ] ; 3 uses
  %.sroa.02.035 = phi ptr [ %3, %.lr.ph37 ], [ %i.ad, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.02.035, i64 8, !dbg !164489 ; 2 uses
  %i.ae = load double, ptr %.sroa.02.035, align 8, !dbg !164490, !noundef !3468 ; 2 uses
  %i.af = fmul double %i.aa, %i.ae, !dbg !164491
  %i.ag = fadd double %i.af, 0.000000e+00, !dbg !164491 ; 5 uses
  switch i8 %5, label %default.unreachable [
    i8 0, label %bb.m
    i8 1, label %bb.n
    i8 2, label %bb.o
    i8 3, label %bb.n
    i8 4, label %bb.n
    i8 5, label %bb.p
  ], !dbg !164492

default.unreachable:                              ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.ah = call double @llvm.round.f64(double %i.ag), !dbg !164493
  %i.ai = call i64 @llvm.fptoui.sat.i64.f64(double %i.ah), !dbg !164494
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !164495

bb.n:                                             ; preds = %bb.l, %bb.l, %bb.l
  %i.aj = call i64 @llvm.fptoui.sat.i64.f64(double %i.ag), !dbg !164496
  %.pre.i = call double @llvm.ceil.f64(double %i.ag), !dbg !164497
  %.pre7.i = call i64 @llvm.fptoui.sat.i64.f64(double %.pre.i), !dbg !164498
  br label %bb.q, !dbg !164499

bb.o:                                             ; preds = %bb.l
  %i.ak = call double @llvm.ceil.f64(double %i.ag), !dbg !164500
  %i.al = call i64 @llvm.fptoui.sat.i64.f64(double %i.ak), !dbg !164501 ; 2 uses
  br label %bb.q, !dbg !164502

bb.p:                                             ; preds = %bb.l
  %i.am = fmul double %i.ae, %i.z, !dbg !164503
  %i.an = call double @llvm.ceil.f64(double %i.am), !dbg !164504
  %i.ao = fadd double %i.an, -1.000000e+00, !dbg !164505
  %i.ap = call nsz double @llvm.maximumnum.f64(double %i.ao, double 0.000000e+00), !dbg !164506
  %i.aq = call i64 @llvm.fptoui.sat.i64.f64(double %i.ap), !dbg !164505
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !164495

bb.q:                                             ; preds = %bb.o, %bb.n
  %.pre-phi8.i = phi i64 [ %i.al, %bb.o ], [ %.pre7.i, %bb.n ], !dbg !164498
  %.sroa.0.0.i = phi i64 [ %i.al, %bb.o ], [ %i.aj, %bb.n ], !dbg !164507
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i, i64 %i.ab), !dbg !164508 ; 2 uses
  %i.ar = icmp eq i64 %.pre-phi8.i, %.sroa.0.0.i.i, !dbg !164509
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !164510

._crit_edge38:                                    ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit, %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !164511
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !164512
  store i64 18, ptr %0, align 8, !dbg !164511
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !164513
  br label %bb.d, !dbg !164464

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.w, %.invoke
  %lpad.loopexit.split-lp59 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB4_6option6OptiondEEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 dereferenceable(24) %i.d) #44
          to label %bb.ab unwind label %bb.aa, !dbg !164513

_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit: ; preds = %bb.q, %bb.p, %bb.m
  %.sink13.i = phi i64 [ %i.ai, %bb.m ], [ %i.aq, %bb.p ], [ %.sroa.0.0.i.i, %bb.q ] ; 6 uses
  %.sink11.i = phi double [ 0.000000e+00, %bb.m ], [ 0.000000e+00, %bb.p ], [ %i.ag, %bb.q ]
  %.sink.i = phi i1 [ true, %bb.m ], [ true, %bb.p ], [ %i.ar, %bb.q ] ; 2 uses
  %i.at = icmp ult i64 %.sink13.i, %2, !dbg !164514
  br i1 %i.at, label %bb.r, label %.invoke, !dbg !164514

bb.r:                                             ; preds = %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sink13.i, !dbg !164514
  %.val25 = load i128, ptr %i.au, align 16, !dbg !164515, !noundef !3468
  %i.av = sitofp i128 %.val25 to double, !dbg !164516 ; 10 uses
  switch i8 %5, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit [
    i8 3, label %bb.s
    i8 4, label %bb.t
  ], !dbg !164517

bb.s:                                             ; preds = %bb.r
  br i1 %.sink.i, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.u, !dbg !164518

bb.t:                                             ; preds = %bb.r
  br i1 %.sink.i, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.x, !dbg !164509

bb.u:                                             ; preds = %bb.s
  %i.aw = add nuw nsw i64 %.sink13.i, 1, !dbg !164519 ; 3 uses
  %i.ax = icmp ult i64 %i.aw, %2, !dbg !164520
  br i1 %i.ax, label %bb.v, label %.invoke, !dbg !164520

bb.v:                                             ; preds = %bb.u
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.aw, !dbg !164520
  %.val24 = load i128, ptr %i.ay, align 16, !dbg !164521, !noundef !3468
  %i.az = sitofp i128 %.val24 to double, !dbg !164522 ; 2 uses
  %i.ba = fcmp oeq double %i.av, %i.az, !dbg !164523
  %i.bb = fadd nnan double %i.av, %i.az, !dbg !164524
  %i.bc = fmul nnan double %i.bb, 5.000000e-01, !dbg !164524
  %.sroa.0.0.i27 = select i1 %i.ba, double %i.av, double %i.bc, !dbg !164524
  br label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, !dbg !164525

_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit: ; preds = %bb.z, %bb.y, %bb.v, %bb.t, %bb.s, %bb.r
  %.sroa.5.0 = phi double [ %i.av, %bb.r ], [ %i.av, %bb.s ], [ %.sroa.0.0.i27, %bb.v ], [ %i.av, %bb.t ], [ %i.bv, %bb.z ], [ %i.av, %bb.y ], !dbg !164526
  %i.bd = load i64, ptr %i.d, align 8, !dbg !164527, !range !3548, !alias.scope !164451, !noundef !3468
  %i.be = icmp eq i64 %i.ac, %i.bd, !dbg !164528
  br i1 %i.be, label %bb.w, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit, !dbg !164528

bb.w:                                             ; preds = %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8grow_oneCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !164529

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.w, %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit
  %i.bf = load ptr, ptr %i.x, align 8, !dbg !164530, !alias.scope !164451, !nonnull !3468, !noundef !3468
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %i.ac, !dbg !164531 ; 2 uses
  store i64 1, ptr %i.bg, align 8, !dbg !164532
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8, !dbg !164532
  store double %.sroa.5.0, ptr %i.bh, align 8, !dbg !164532
  %i.bi = add i64 %i.ac, 1, !dbg !164533          ; 2 uses
  store i64 %i.bi, ptr %i.y, align 8, !dbg !164487
  %i.bj = icmp eq ptr %i.ad, %i.e, !dbg !164534
  br i1 %i.bj, label %._crit_edge38, label %bb.l, !dbg !164488

bb.x:                                             ; preds = %bb.t
  %i.bk = add nuw nsw i64 %.sink13.i, 1, !dbg !164535 ; 3 uses
  %i.bl = icmp ult i64 %i.bk, %2, !dbg !164536
  br i1 %i.bl, label %bb.y, label %.invoke, !dbg !164536

.invoke:                                          ; preds = %bb.x, %bb.u, %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit
  %i.bm = phi i64 [ %i.aw, %bb.u ], [ %.sink13.i, %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit ], [ %i.bk, %bb.x ]
  %i.bn = phi ptr [ @62, %bb.u ], [ @61, %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit ], [ @63, %bb.x ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.bm, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bn) #43
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !164526

.cont:                                            ; preds = %.invoke
  unreachable

bb.y:                                             ; preds = %bb.x
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.bk, !dbg !164536
  %.val23 = load i128, ptr %i.bo, align 16, !dbg !164537, !noundef !3468
  %i.bp = sitofp i128 %.val23 to double, !dbg !164538 ; 2 uses
  %i.bq = fcmp oeq double %i.av, %i.bp, !dbg !164539
  br i1 %i.bq, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.z, !dbg !164540

bb.z:                                             ; preds = %bb.y
  %i.br = uitofp nneg i64 %.sink13.i to double, !dbg !164541
  %i.bs = fsub double %.sink11.i, %i.br, !dbg !164542
  %i.bt = fsub nnan double %i.bp, %i.av, !dbg !164543
  %i.bu = fmul double %i.bs, %i.bt, !dbg !164544
  %i.bv = fadd double %i.bu, %i.av, !dbg !164545
  br label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, !dbg !164546

bb.aa:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !164547
  unreachable, !dbg !164547

bb.ab:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp59, !dbg !164547
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15quantiles_sliceoEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull align 16 %1, i64 noundef range(i64 0, 576460752303423488) %2, ptr noalias noundef nonnull readonly align 8 captures(address) %3, i64 noundef range(i64 0, 1152921504606846976) %4, i8 noundef range(i8 0, 6) %5) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !164548 !guid !164638 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %.idx = shl nuw nsw i64 %4, 3, !dbg !164666
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 %.idx, !dbg !164666 ; 2 uses
  %i.f = icmp eq i64 %4, 0, !dbg !164667          ; 2 uses
  br i1 %i.f, label %._crit_edge, label %.lr.ph, !dbg !164645

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.034, i64 8, !dbg !164668 ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.e, !dbg !164667
  br i1 %i.h, label %._crit_edge, label %.lr.ph, !dbg !164645

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.034 = phi ptr [ %i.g, %bb.b ], [ %3, %bb.a ] ; 2 uses
  %i.i = load double, ptr %.sroa.0.034, align 8, !dbg !164669, !noundef !3468 ; 2 uses
  %i.j = fcmp oge double %i.i, 0.000000e+00, !dbg !164670
  %i.k = fcmp ole double %i.i, 1.000000e+00
  %spec.select.i = and i1 %i.j, %i.k, !dbg !164671
  br i1 %spec.select.i, label %bb.b, label %bb.c, !dbg !164672

._crit_edge:                                      ; preds = %bb.b, %bb.a
  switch i64 %2, label %bb.f [
    i64 0, label %bb.e
    i64 1, label %bb.i
  ], !dbg !164673

bb.c:                                             ; preds = %.lr.ph
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) @57, i64 72, i1 false), !dbg !164674
  br label %bb.d, !dbg !164675

bb.d:                                             ; preds = %._crit_edge38, %bb.i, %bb.e, %bb.c
  ret void, !dbg !164676

bb.e:                                             ; preds = %._crit_edge
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !164677
  tail call void @_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemINtNtCscgRAwXFJnXP_4core6option6OptiondENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, i64 noundef 0, double undef, i64 noundef %4), !dbg !164678
  store i64 18, ptr %0, align 8, !dbg !164677
  br label %bb.d, !dbg !164675

bb.f:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !164650
  store ptr %i.a, ptr %i.b, align 8, !noalias !164651
  %i.m = icmp samesign ult i64 %2, 21, !dbg !164679
  br i1 %i.m, label %bb.h, label %bb.g, !dbg !164680, !prof !3738

bb.g:                                             ; preds = %bb.f
  call void @_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable14driftsort_mainoNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSo7sort_byNvYoNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0INtNtB18_3vec3VecoEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 16 %1, i64 noundef range(i64 0, 576460752303423488) %2, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b), !dbg !164681
  br label %_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSo7sort_byNvYoNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpECs1LHh8CLbVkQ_11polars_core.exit, !dbg !164681

bb.h:                                             ; preds = %bb.f
  call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftoNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSo7sort_byNvYoNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 16 %1, i64 noundef range(i64 0, 576460752303423488) %2, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b), !dbg !164682
  br label %_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSo7sort_byNvYoNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpECs1LHh8CLbVkQ_11polars_core.exit, !dbg !164682

_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSo7sort_byNvYoNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !164683, !noalias !164650
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !164684
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !164685
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !dbg !164685
  %i.n = load i64, ptr %i.c, align 8, !dbg !164685, !range !3513, !noundef !3468
  %i.o = trunc nuw i64 %i.n to i1, !dbg !164686
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !164687
  %i.q = load i64, ptr %i.p, align 8, !dbg !164687, !range !3514, !noundef !3468 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !164687 ; 2 uses
  br i1 %i.o, label %bb.j, label %bb.k, !dbg !164686, !prof !3515

bb.i:                                             ; preds = %._crit_edge
  %.val26 = load i128, ptr %1, align 16, !dbg !164688, !noundef !3468
  %i.s = uitofp i128 %.val26 to double, !dbg !164689
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !164690
  tail call void @_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemINtNtCscgRAwXFJnXP_4core6option6OptiondENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, i64 noundef 1, double %i.s, i64 noundef %4), !dbg !164691
  store i64 18, ptr %0, align 8, !dbg !164690
  br label %bb.d, !dbg !164675

bb.j:                                             ; preds = %_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSo7sort_byNvYoNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpECs1LHh8CLbVkQ_11polars_core.exit
  %i.u = load i64, ptr %i.r, align 8, !dbg !164692
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.q, i64 %i.u) #43, !dbg !164693
  unreachable, !dbg !164693

bb.k:                                             ; preds = %_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSo7sort_byNvYoNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpECs1LHh8CLbVkQ_11polars_core.exit
  %i.v = load ptr, ptr %i.r, align 8, !dbg !164694, !nonnull !3468, !noundef !3468
  %i.w = icmp samesign ule i64 %4, %i.q, !dbg !164695
  call void @llvm.assume(i1 %i.w), !dbg !164696
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !164697
  store i64 %i.q, ptr %i.d, align 8, !dbg !164698
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !164698 ; 2 uses
  store ptr %i.v, ptr %i.x, align 8, !dbg !164698
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !164698 ; 2 uses
  store i64 0, ptr %i.y, align 8, !dbg !164699
  br i1 %i.f, label %._crit_edge38, label %.lr.ph37, !dbg !164700

.lr.ph37:                                         ; preds = %bb.k
  %i.z = uitofp nneg i64 %2 to double             ; 2 uses
  %i.aa = fadd nnan double %i.z, -1.000000e+00
  %i.ab = add nsw i64 %2, -1
  br label %bb.l, !dbg !164700

bb.l:                                             ; preds = %.lr.ph37, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit
  %i.ac = phi i64 [ 0, %.lr.ph37 ], [ %i.bi, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit ] ; 3 uses
  %.sroa.02.035 = phi ptr [ %3, %.lr.ph37 ], [ %i.ad, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.02.035, i64 8, !dbg !164701 ; 2 uses
  %i.ae = load double, ptr %.sroa.02.035, align 8, !dbg !164702, !noundef !3468 ; 2 uses
  %i.af = fmul double %i.aa, %i.ae, !dbg !164703
  %i.ag = fadd double %i.af, 0.000000e+00, !dbg !164703 ; 5 uses
  switch i8 %5, label %default.unreachable [
    i8 0, label %bb.m
    i8 1, label %bb.n
    i8 2, label %bb.o
    i8 3, label %bb.n
    i8 4, label %bb.n
    i8 5, label %bb.p
  ], !dbg !164704

default.unreachable:                              ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.ah = call double @llvm.round.f64(double %i.ag), !dbg !164705
  %i.ai = call i64 @llvm.fptoui.sat.i64.f64(double %i.ah), !dbg !164706
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !164707

bb.n:                                             ; preds = %bb.l, %bb.l, %bb.l
  %i.aj = call i64 @llvm.fptoui.sat.i64.f64(double %i.ag), !dbg !164708
  %.pre.i = call double @llvm.ceil.f64(double %i.ag), !dbg !164709
  %.pre7.i = call i64 @llvm.fptoui.sat.i64.f64(double %.pre.i), !dbg !164710
  br label %bb.q, !dbg !164711

bb.o:                                             ; preds = %bb.l
  %i.ak = call double @llvm.ceil.f64(double %i.ag), !dbg !164712
  %i.al = call i64 @llvm.fptoui.sat.i64.f64(double %i.ak), !dbg !164713 ; 2 uses
  br label %bb.q, !dbg !164714

bb.p:                                             ; preds = %bb.l
  %i.am = fmul double %i.ae, %i.z, !dbg !164715
  %i.an = call double @llvm.ceil.f64(double %i.am), !dbg !164716
  %i.ao = fadd double %i.an, -1.000000e+00, !dbg !164717
  %i.ap = call nsz double @llvm.maximumnum.f64(double %i.ao, double 0.000000e+00), !dbg !164718
  %i.aq = call i64 @llvm.fptoui.sat.i64.f64(double %i.ap), !dbg !164717
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !164707

bb.q:                                             ; preds = %bb.o, %bb.n
  %.pre-phi8.i = phi i64 [ %i.al, %bb.o ], [ %.pre7.i, %bb.n ], !dbg !164710
  %.sroa.0.0.i = phi i64 [ %i.al, %bb.o ], [ %i.aj, %bb.n ], !dbg !164719
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i, i64 %i.ab), !dbg !164720 ; 2 uses
  %i.ar = icmp eq i64 %.pre-phi8.i, %.sroa.0.0.i.i, !dbg !164721
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !164722

._crit_edge38:                                    ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit, %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !164723
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !164724
  store i64 18, ptr %0, align 8, !dbg !164723
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !164725
  br label %bb.d, !dbg !164676

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.w, %.invoke
  %lpad.loopexit.split-lp59 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB4_6option6OptiondEEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 dereferenceable(24) %i.d) #44
          to label %bb.ab unwind label %bb.aa, !dbg !164725

_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit: ; preds = %bb.q, %bb.p, %bb.m
  %.sink13.i = phi i64 [ %i.ai, %bb.m ], [ %i.aq, %bb.p ], [ %.sroa.0.0.i.i, %bb.q ] ; 6 uses
  %.sink11.i = phi double [ 0.000000e+00, %bb.m ], [ 0.000000e+00, %bb.p ], [ %i.ag, %bb.q ]
  %.sink.i = phi i1 [ true, %bb.m ], [ true, %bb.p ], [ %i.ar, %bb.q ] ; 2 uses
  %i.at = icmp ult i64 %.sink13.i, %2, !dbg !164726
  br i1 %i.at, label %bb.r, label %.invoke, !dbg !164726

bb.r:                                             ; preds = %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sink13.i, !dbg !164726
  %.val25 = load i128, ptr %i.au, align 16, !dbg !164727, !noundef !3468
  %i.av = uitofp i128 %.val25 to double, !dbg !164728 ; 10 uses
  switch i8 %5, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit [
    i8 3, label %bb.s
    i8 4, label %bb.t
  ], !dbg !164729

bb.s:                                             ; preds = %bb.r
  br i1 %.sink.i, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.u, !dbg !164730

bb.t:                                             ; preds = %bb.r
  br i1 %.sink.i, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.x, !dbg !164721

bb.u:                                             ; preds = %bb.s
  %i.aw = add nuw nsw i64 %.sink13.i, 1, !dbg !164731 ; 3 uses
  %i.ax = icmp ult i64 %i.aw, %2, !dbg !164732
  br i1 %i.ax, label %bb.v, label %.invoke, !dbg !164732

bb.v:                                             ; preds = %bb.u
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.aw, !dbg !164732
  %.val24 = load i128, ptr %i.ay, align 16, !dbg !164733, !noundef !3468
  %i.az = uitofp i128 %.val24 to double, !dbg !164734 ; 2 uses
  %i.ba = fcmp oeq double %i.av, %i.az, !dbg !164735
  %i.bb = fadd nnan double %i.av, %i.az, !dbg !164736
  %i.bc = fmul nnan double %i.bb, 5.000000e-01, !dbg !164736
  %.sroa.0.0.i27 = select i1 %i.ba, double %i.av, double %i.bc, !dbg !164736
  br label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, !dbg !164737

_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit: ; preds = %bb.z, %bb.y, %bb.v, %bb.t, %bb.s, %bb.r
  %.sroa.5.0 = phi double [ %i.av, %bb.r ], [ %i.av, %bb.s ], [ %.sroa.0.0.i27, %bb.v ], [ %i.av, %bb.t ], [ %i.bv, %bb.z ], [ %i.av, %bb.y ], !dbg !164738
  %i.bd = load i64, ptr %i.d, align 8, !dbg !164739, !range !3548, !alias.scope !164663, !noundef !3468
  %i.be = icmp eq i64 %i.ac, %i.bd, !dbg !164740
  br i1 %i.be, label %bb.w, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit, !dbg !164740

bb.w:                                             ; preds = %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8grow_oneCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !164741

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.w, %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit
  %i.bf = load ptr, ptr %i.x, align 8, !dbg !164742, !alias.scope !164663, !nonnull !3468, !noundef !3468
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %i.ac, !dbg !164743 ; 2 uses
  store i64 1, ptr %i.bg, align 8, !dbg !164744
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8, !dbg !164744
  store double %.sroa.5.0, ptr %i.bh, align 8, !dbg !164744
  %i.bi = add i64 %i.ac, 1, !dbg !164745          ; 2 uses
  store i64 %i.bi, ptr %i.y, align 8, !dbg !164699
  %i.bj = icmp eq ptr %i.ad, %i.e, !dbg !164746
  br i1 %i.bj, label %._crit_edge38, label %bb.l, !dbg !164700

bb.x:                                             ; preds = %bb.t
  %i.bk = add nuw nsw i64 %.sink13.i, 1, !dbg !164747 ; 3 uses
  %i.bl = icmp ult i64 %i.bk, %2, !dbg !164748
  br i1 %i.bl, label %bb.y, label %.invoke, !dbg !164748

.invoke:                                          ; preds = %bb.x, %bb.u, %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit
  %i.bm = phi i64 [ %i.aw, %bb.u ], [ %.sink13.i, %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit ], [ %i.bk, %bb.x ]
  %i.bn = phi ptr [ @62, %bb.u ], [ @61, %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit ], [ @63, %bb.x ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.bm, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bn) #43
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !164738

.cont:                                            ; preds = %.invoke
  unreachable

bb.y:                                             ; preds = %bb.x
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.bk, !dbg !164748
  %.val23 = load i128, ptr %i.bo, align 16, !dbg !164749, !noundef !3468
  %i.bp = uitofp i128 %.val23 to double, !dbg !164750 ; 2 uses
  %i.bq = fcmp oeq double %i.av, %i.bp, !dbg !164751
  br i1 %i.bq, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.z, !dbg !164752

bb.z:                                             ; preds = %bb.y
  %i.br = uitofp nneg i64 %.sink13.i to double, !dbg !164753
  %i.bs = fsub double %.sink11.i, %i.br, !dbg !164754
  %i.bt = fsub nnan double %i.bp, %i.av, !dbg !164755
  %i.bu = fmul double %i.bs, %i.bt, !dbg !164756
  %i.bv = fadd double %i.bu, %i.av, !dbg !164757
  br label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, !dbg !164758

bb.aa:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !164759
  unreachable, !dbg !164759

bb.ab:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp59, !dbg !164759
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15quantiles_slicesEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull align 2 %1, i64 noundef range(i64 0, 4611686018427387904) %2, ptr noalias noundef nonnull readonly align 8 captures(address) %3, i64 noundef range(i64 0, 1152921504606846976) %4, i8 noundef range(i8 0, 6) %5) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !164760 !guid !164850 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %.idx = shl nuw nsw i64 %4, 3, !dbg !164878
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 %.idx, !dbg !164878 ; 2 uses
  %i.f = icmp eq i64 %4, 0, !dbg !164879          ; 2 uses
  br i1 %i.f, label %._crit_edge, label %.lr.ph, !dbg !164857

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.034, i64 8, !dbg !164880 ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.e, !dbg !164879
  br i1 %i.h, label %._crit_edge, label %.lr.ph, !dbg !164857

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.034 = phi ptr [ %i.g, %bb.b ], [ %3, %bb.a ] ; 2 uses
  %i.i = load double, ptr %.sroa.0.034, align 8, !dbg !164881, !noundef !3468 ; 2 uses
  %i.j = fcmp oge double %i.i, 0.000000e+00, !dbg !164882
  %i.k = fcmp ole double %i.i, 1.000000e+00
  %spec.select.i = and i1 %i.j, %i.k, !dbg !164883
  br i1 %spec.select.i, label %bb.b, label %bb.c, !dbg !164884

._crit_edge:                                      ; preds = %bb.b, %bb.a
  switch i64 %2, label %bb.f [
    i64 0, label %bb.e
    i64 1, label %bb.i
  ], !dbg !164885

bb.c:                                             ; preds = %.lr.ph
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) @57, i64 72, i1 false), !dbg !164886
  br label %bb.d, !dbg !164887

bb.d:                                             ; preds = %._crit_edge38, %bb.i, %bb.e, %bb.c
  ret void, !dbg !164888

bb.e:                                             ; preds = %._crit_edge
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !164889
  tail call void @_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemINtNtCscgRAwXFJnXP_4core6option6OptiondENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, i64 noundef 0, double undef, i64 noundef %4), !dbg !164890
  store i64 18, ptr %0, align 8, !dbg !164889
  br label %bb.d, !dbg !164887

bb.f:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !164862
  store ptr %i.a, ptr %i.b, align 8, !noalias !164863
  %i.m = icmp samesign ult i64 %2, 21, !dbg !164891
  br i1 %i.m, label %bb.h, label %bb.g, !dbg !164892, !prof !3738

bb.g:                                             ; preds = %bb.f
  call void @_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable14driftsort_mainsNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSs7sort_byNvYsNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0INtNtB18_3vec3VecsEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 2 %1, i64 noundef range(i64 0, 4611686018427387904) %2, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b), !dbg !164893
  br label %_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSs7sort_byNvYsNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpECs1LHh8CLbVkQ_11polars_core.exit, !dbg !164893

bb.h:                                             ; preds = %bb.f
  call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftsNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSs7sort_byNvYsNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 2 %1, i64 noundef range(i64 0, 4611686018427387904) %2, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b), !dbg !164894
  br label %_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSs7sort_byNvYsNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpECs1LHh8CLbVkQ_11polars_core.exit, !dbg !164894

_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSs7sort_byNvYsNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !164895, !noalias !164862
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !164896
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !164897
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !dbg !164897
  %i.n = load i64, ptr %i.c, align 8, !dbg !164897, !range !3513, !noundef !3468
  %i.o = trunc nuw i64 %i.n to i1, !dbg !164898
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !164899
  %i.q = load i64, ptr %i.p, align 8, !dbg !164899, !range !3514, !noundef !3468 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !164899 ; 2 uses
  br i1 %i.o, label %bb.j, label %bb.k, !dbg !164898, !prof !3515

bb.i:                                             ; preds = %._crit_edge
  %.val26 = load i16, ptr %1, align 2, !dbg !164900, !noundef !3468
  %i.s = sitofp i16 %.val26 to double, !dbg !164901
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !164902
  tail call void @_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemINtNtCscgRAwXFJnXP_4core6option6OptiondENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, i64 noundef 1, double %i.s, i64 noundef %4), !dbg !164903
  store i64 18, ptr %0, align 8, !dbg !164902
  br label %bb.d, !dbg !164887

bb.j:                                             ; preds = %_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSs7sort_byNvYsNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpECs1LHh8CLbVkQ_11polars_core.exit
  %i.u = load i64, ptr %i.r, align 8, !dbg !164904
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.q, i64 %i.u) #43, !dbg !164905
  unreachable, !dbg !164905

bb.k:                                             ; preds = %_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSs7sort_byNvYsNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpECs1LHh8CLbVkQ_11polars_core.exit
  %i.v = load ptr, ptr %i.r, align 8, !dbg !164906, !nonnull !3468, !noundef !3468
  %i.w = icmp samesign ule i64 %4, %i.q, !dbg !164907
  call void @llvm.assume(i1 %i.w), !dbg !164908
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !164909
  store i64 %i.q, ptr %i.d, align 8, !dbg !164910
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !164910 ; 2 uses
  store ptr %i.v, ptr %i.x, align 8, !dbg !164910
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !164910 ; 2 uses
  store i64 0, ptr %i.y, align 8, !dbg !164911
  br i1 %i.f, label %._crit_edge38, label %.lr.ph37, !dbg !164912

.lr.ph37:                                         ; preds = %bb.k
  %i.z = uitofp nneg i64 %2 to double             ; 2 uses
  %i.aa = fadd nnan double %i.z, -1.000000e+00
  %i.ab = add nsw i64 %2, -1
  br label %bb.l, !dbg !164912

bb.l:                                             ; preds = %.lr.ph37, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit
  %i.ac = phi i64 [ 0, %.lr.ph37 ], [ %i.bi, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit ] ; 3 uses
  %.sroa.02.035 = phi ptr [ %3, %.lr.ph37 ], [ %i.ad, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.02.035, i64 8, !dbg !164913 ; 2 uses
  %i.ae = load double, ptr %.sroa.02.035, align 8, !dbg !164914, !noundef !3468 ; 2 uses
  %i.af = fmul double %i.aa, %i.ae, !dbg !164915
  %i.ag = fadd double %i.af, 0.000000e+00, !dbg !164915 ; 5 uses
  switch i8 %5, label %default.unreachable [
    i8 0, label %bb.m
    i8 1, label %bb.n
    i8 2, label %bb.o
    i8 3, label %bb.n
    i8 4, label %bb.n
    i8 5, label %bb.p
  ], !dbg !164916

default.unreachable:                              ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.ah = call double @llvm.round.f64(double %i.ag), !dbg !164917
  %i.ai = call i64 @llvm.fptoui.sat.i64.f64(double %i.ah), !dbg !164918
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !164919

bb.n:                                             ; preds = %bb.l, %bb.l, %bb.l
  %i.aj = call i64 @llvm.fptoui.sat.i64.f64(double %i.ag), !dbg !164920
  %.pre.i = call double @llvm.ceil.f64(double %i.ag), !dbg !164921
  %.pre7.i = call i64 @llvm.fptoui.sat.i64.f64(double %.pre.i), !dbg !164922
  br label %bb.q, !dbg !164923

bb.o:                                             ; preds = %bb.l
  %i.ak = call double @llvm.ceil.f64(double %i.ag), !dbg !164924
  %i.al = call i64 @llvm.fptoui.sat.i64.f64(double %i.ak), !dbg !164925 ; 2 uses
  br label %bb.q, !dbg !164926

bb.p:                                             ; preds = %bb.l
  %i.am = fmul double %i.ae, %i.z, !dbg !164927
  %i.an = call double @llvm.ceil.f64(double %i.am), !dbg !164928
  %i.ao = fadd double %i.an, -1.000000e+00, !dbg !164929
  %i.ap = call nsz double @llvm.maximumnum.f64(double %i.ao, double 0.000000e+00), !dbg !164930
  %i.aq = call i64 @llvm.fptoui.sat.i64.f64(double %i.ap), !dbg !164929
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !164919

bb.q:                                             ; preds = %bb.o, %bb.n
  %.pre-phi8.i = phi i64 [ %i.al, %bb.o ], [ %.pre7.i, %bb.n ], !dbg !164922
  %.sroa.0.0.i = phi i64 [ %i.al, %bb.o ], [ %i.aj, %bb.n ], !dbg !164931
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i, i64 %i.ab), !dbg !164932 ; 2 uses
  %i.ar = icmp eq i64 %.pre-phi8.i, %.sroa.0.0.i.i, !dbg !164933
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !164934

._crit_edge38:                                    ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit, %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !164935
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !164936
  store i64 18, ptr %0, align 8, !dbg !164935
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !164937
  br label %bb.d, !dbg !164888

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.w, %.invoke
  %lpad.loopexit.split-lp59 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB4_6option6OptiondEEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 dereferenceable(24) %i.d) #44
          to label %bb.ab unwind label %bb.aa, !dbg !164937

_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit: ; preds = %bb.q, %bb.p, %bb.m
  %.sink13.i = phi i64 [ %i.ai, %bb.m ], [ %i.aq, %bb.p ], [ %.sroa.0.0.i.i, %bb.q ] ; 6 uses
  %.sink11.i = phi double [ 0.000000e+00, %bb.m ], [ 0.000000e+00, %bb.p ], [ %i.ag, %bb.q ]
  %.sink.i = phi i1 [ true, %bb.m ], [ true, %bb.p ], [ %i.ar, %bb.q ] ; 2 uses
  %i.at = icmp ult i64 %.sink13.i, %2, !dbg !164938
  br i1 %i.at, label %bb.r, label %.invoke, !dbg !164938

bb.r:                                             ; preds = %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sink13.i, !dbg !164938
  %.val25 = load i16, ptr %i.au, align 2, !dbg !164939, !noundef !3468
  %i.av = sitofp i16 %.val25 to double, !dbg !164940 ; 10 uses
  switch i8 %5, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit [
    i8 3, label %bb.s
    i8 4, label %bb.t
  ], !dbg !164941

bb.s:                                             ; preds = %bb.r
  br i1 %.sink.i, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.u, !dbg !164942

bb.t:                                             ; preds = %bb.r
  br i1 %.sink.i, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.x, !dbg !164933

bb.u:                                             ; preds = %bb.s
  %i.aw = add nuw nsw i64 %.sink13.i, 1, !dbg !164943 ; 3 uses
  %i.ax = icmp ult i64 %i.aw, %2, !dbg !164944
  br i1 %i.ax, label %bb.v, label %.invoke, !dbg !164944

bb.v:                                             ; preds = %bb.u
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aw, !dbg !164944
  %.val24 = load i16, ptr %i.ay, align 2, !dbg !164945, !noundef !3468
  %i.az = sitofp i16 %.val24 to double, !dbg !164946 ; 2 uses
  %i.ba = fcmp oeq double %i.av, %i.az, !dbg !164947
  %i.bb = fadd nnan double %i.av, %i.az, !dbg !164948
  %i.bc = fmul nnan double %i.bb, 5.000000e-01, !dbg !164948
  %.sroa.0.0.i27 = select i1 %i.ba, double %i.av, double %i.bc, !dbg !164948
  br label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, !dbg !164949

_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit: ; preds = %bb.z, %bb.y, %bb.v, %bb.t, %bb.s, %bb.r
  %.sroa.5.0 = phi double [ %i.av, %bb.r ], [ %i.av, %bb.s ], [ %.sroa.0.0.i27, %bb.v ], [ %i.av, %bb.t ], [ %i.bv, %bb.z ], [ %i.av, %bb.y ], !dbg !164950
  %i.bd = load i64, ptr %i.d, align 8, !dbg !164951, !range !3548, !alias.scope !164875, !noundef !3468
  %i.be = icmp eq i64 %i.ac, %i.bd, !dbg !164952
  br i1 %i.be, label %bb.w, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit, !dbg !164952

bb.w:                                             ; preds = %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8grow_oneCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !164953

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.w, %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit
  %i.bf = load ptr, ptr %i.x, align 8, !dbg !164954, !alias.scope !164875, !nonnull !3468, !noundef !3468
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %i.ac, !dbg !164955 ; 2 uses
  store i64 1, ptr %i.bg, align 8, !dbg !164956
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8, !dbg !164956
  store double %.sroa.5.0, ptr %i.bh, align 8, !dbg !164956
  %i.bi = add i64 %i.ac, 1, !dbg !164957          ; 2 uses
  store i64 %i.bi, ptr %i.y, align 8, !dbg !164911
  %i.bj = icmp eq ptr %i.ad, %i.e, !dbg !164958
  br i1 %i.bj, label %._crit_edge38, label %bb.l, !dbg !164912

bb.x:                                             ; preds = %bb.t
  %i.bk = add nuw nsw i64 %.sink13.i, 1, !dbg !164959 ; 3 uses
  %i.bl = icmp ult i64 %i.bk, %2, !dbg !164960
  br i1 %i.bl, label %bb.y, label %.invoke, !dbg !164960

.invoke:                                          ; preds = %bb.x, %bb.u, %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit
  %i.bm = phi i64 [ %i.aw, %bb.u ], [ %.sink13.i, %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit ], [ %i.bk, %bb.x ]
  %i.bn = phi ptr [ @62, %bb.u ], [ @61, %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit ], [ @63, %bb.x ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.bm, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bn) #43
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !164950

.cont:                                            ; preds = %.invoke
  unreachable

bb.y:                                             ; preds = %bb.x
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.bk, !dbg !164960
  %.val23 = load i16, ptr %i.bo, align 2, !dbg !164961, !noundef !3468
  %i.bp = sitofp i16 %.val23 to double, !dbg !164962 ; 2 uses
  %i.bq = fcmp oeq double %i.av, %i.bp, !dbg !164963
  br i1 %i.bq, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.z, !dbg !164964

bb.z:                                             ; preds = %bb.y
  %i.br = uitofp nneg i64 %.sink13.i to double, !dbg !164965
  %i.bs = fsub double %.sink11.i, %i.br, !dbg !164966
  %i.bt = fsub nnan double %i.bp, %i.av, !dbg !164967
  %i.bu = fmul double %i.bs, %i.bt, !dbg !164968
  %i.bv = fadd double %i.bu, %i.av, !dbg !164969
  br label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, !dbg !164970

bb.aa:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !164971
  unreachable, !dbg !164971

bb.ab:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp59, !dbg !164971
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15quantiles_slicetEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull align 2 %1, i64 noundef range(i64 0, 4611686018427387904) %2, ptr noalias noundef nonnull readonly align 8 captures(address) %3, i64 noundef range(i64 0, 1152921504606846976) %4, i8 noundef range(i8 0, 6) %5) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !164972 !guid !165062 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %.idx = shl nuw nsw i64 %4, 3, !dbg !165090
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 %.idx, !dbg !165090 ; 2 uses
  %i.f = icmp eq i64 %4, 0, !dbg !165091          ; 2 uses
  br i1 %i.f, label %._crit_edge, label %.lr.ph, !dbg !165069

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.034, i64 8, !dbg !165092 ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.e, !dbg !165091
  br i1 %i.h, label %._crit_edge, label %.lr.ph, !dbg !165069

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.034 = phi ptr [ %i.g, %bb.b ], [ %3, %bb.a ] ; 2 uses
  %i.i = load double, ptr %.sroa.0.034, align 8, !dbg !165093, !noundef !3468 ; 2 uses
  %i.j = fcmp oge double %i.i, 0.000000e+00, !dbg !165094
  %i.k = fcmp ole double %i.i, 1.000000e+00
  %spec.select.i = and i1 %i.j, %i.k, !dbg !165095
  br i1 %spec.select.i, label %bb.b, label %bb.c, !dbg !165096

._crit_edge:                                      ; preds = %bb.b, %bb.a
  switch i64 %2, label %bb.f [
    i64 0, label %bb.e
    i64 1, label %bb.i
  ], !dbg !165097

bb.c:                                             ; preds = %.lr.ph
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) @57, i64 72, i1 false), !dbg !165098
  br label %bb.d, !dbg !165099

bb.d:                                             ; preds = %._crit_edge38, %bb.i, %bb.e, %bb.c
  ret void, !dbg !165100

bb.e:                                             ; preds = %._crit_edge
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !165101
  tail call void @_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemINtNtCscgRAwXFJnXP_4core6option6OptiondENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, i64 noundef 0, double undef, i64 noundef %4), !dbg !165102
  store i64 18, ptr %0, align 8, !dbg !165101
  br label %bb.d, !dbg !165099

bb.f:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !165074
  store ptr %i.a, ptr %i.b, align 8, !noalias !165075
  %i.m = icmp samesign ult i64 %2, 21, !dbg !165103
  br i1 %i.m, label %bb.h, label %bb.g, !dbg !165104, !prof !3738

bb.g:                                             ; preds = %bb.f
  call void @_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable14driftsort_maintNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSt7sort_byNvYtNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0INtNtB18_3vec3VectEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 2 %1, i64 noundef range(i64 0, 4611686018427387904) %2, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b), !dbg !165105
  br label %_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSt7sort_byNvYtNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpECs1LHh8CLbVkQ_11polars_core.exit, !dbg !165105

bb.h:                                             ; preds = %bb.f
  call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort25insertion_sort_shift_lefttNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSt7sort_byNvYtNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 2 %1, i64 noundef range(i64 0, 4611686018427387904) %2, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b), !dbg !165106
  br label %_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSt7sort_byNvYtNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpECs1LHh8CLbVkQ_11polars_core.exit, !dbg !165106

_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSt7sort_byNvYtNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !165107, !noalias !165074
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !165108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !165109
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !dbg !165109
  %i.n = load i64, ptr %i.c, align 8, !dbg !165109, !range !3513, !noundef !3468
  %i.o = trunc nuw i64 %i.n to i1, !dbg !165110
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !165111
  %i.q = load i64, ptr %i.p, align 8, !dbg !165111, !range !3514, !noundef !3468 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !165111 ; 2 uses
  br i1 %i.o, label %bb.j, label %bb.k, !dbg !165110, !prof !3515

bb.i:                                             ; preds = %._crit_edge
  %.val26 = load i16, ptr %1, align 2, !dbg !165112, !noundef !3468
  %i.s = uitofp i16 %.val26 to double, !dbg !165113
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !165114
  tail call void @_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemINtNtCscgRAwXFJnXP_4core6option6OptiondENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, i64 noundef 1, double %i.s, i64 noundef %4), !dbg !165115
  store i64 18, ptr %0, align 8, !dbg !165114
  br label %bb.d, !dbg !165099

bb.j:                                             ; preds = %_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSt7sort_byNvYtNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpECs1LHh8CLbVkQ_11polars_core.exit
  %i.u = load i64, ptr %i.r, align 8, !dbg !165116
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.q, i64 %i.u) #43, !dbg !165117
  unreachable, !dbg !165117

bb.k:                                             ; preds = %_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSt7sort_byNvYtNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpECs1LHh8CLbVkQ_11polars_core.exit
  %i.v = load ptr, ptr %i.r, align 8, !dbg !165118, !nonnull !3468, !noundef !3468
  %i.w = icmp samesign ule i64 %4, %i.q, !dbg !165119
  call void @llvm.assume(i1 %i.w), !dbg !165120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !165121
  store i64 %i.q, ptr %i.d, align 8, !dbg !165122
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !165122 ; 2 uses
  store ptr %i.v, ptr %i.x, align 8, !dbg !165122
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !165122 ; 2 uses
  store i64 0, ptr %i.y, align 8, !dbg !165123
  br i1 %i.f, label %._crit_edge38, label %.lr.ph37, !dbg !165124

.lr.ph37:                                         ; preds = %bb.k
  %i.z = uitofp nneg i64 %2 to double             ; 2 uses
  %i.aa = fadd nnan double %i.z, -1.000000e+00
  %i.ab = add nsw i64 %2, -1
  br label %bb.l, !dbg !165124

bb.l:                                             ; preds = %.lr.ph37, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit
  %i.ac = phi i64 [ 0, %.lr.ph37 ], [ %i.bi, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit ] ; 3 uses
  %.sroa.02.035 = phi ptr [ %3, %.lr.ph37 ], [ %i.ad, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.02.035, i64 8, !dbg !165125 ; 2 uses
  %i.ae = load double, ptr %.sroa.02.035, align 8, !dbg !165126, !noundef !3468 ; 2 uses
  %i.af = fmul double %i.aa, %i.ae, !dbg !165127
  %i.ag = fadd double %i.af, 0.000000e+00, !dbg !165127 ; 5 uses
  switch i8 %5, label %default.unreachable [
    i8 0, label %bb.m
    i8 1, label %bb.n
    i8 2, label %bb.o
    i8 3, label %bb.n
    i8 4, label %bb.n
    i8 5, label %bb.p
  ], !dbg !165128

default.unreachable:                              ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.ah = call double @llvm.round.f64(double %i.ag), !dbg !165129
  %i.ai = call i64 @llvm.fptoui.sat.i64.f64(double %i.ah), !dbg !165130
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !165131

bb.n:                                             ; preds = %bb.l, %bb.l, %bb.l
  %i.aj = call i64 @llvm.fptoui.sat.i64.f64(double %i.ag), !dbg !165132
  %.pre.i = call double @llvm.ceil.f64(double %i.ag), !dbg !165133
  %.pre7.i = call i64 @llvm.fptoui.sat.i64.f64(double %.pre.i), !dbg !165134
  br label %bb.q, !dbg !165135

bb.o:                                             ; preds = %bb.l
  %i.ak = call double @llvm.ceil.f64(double %i.ag), !dbg !165136
  %i.al = call i64 @llvm.fptoui.sat.i64.f64(double %i.ak), !dbg !165137 ; 2 uses
  br label %bb.q, !dbg !165138

bb.p:                                             ; preds = %bb.l
  %i.am = fmul double %i.ae, %i.z, !dbg !165139
  %i.an = call double @llvm.ceil.f64(double %i.am), !dbg !165140
  %i.ao = fadd double %i.an, -1.000000e+00, !dbg !165141
  %i.ap = call nsz double @llvm.maximumnum.f64(double %i.ao, double 0.000000e+00), !dbg !165142
  %i.aq = call i64 @llvm.fptoui.sat.i64.f64(double %i.ap), !dbg !165141
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !165131

bb.q:                                             ; preds = %bb.o, %bb.n
  %.pre-phi8.i = phi i64 [ %i.al, %bb.o ], [ %.pre7.i, %bb.n ], !dbg !165134
  %.sroa.0.0.i = phi i64 [ %i.al, %bb.o ], [ %i.aj, %bb.n ], !dbg !165143
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i, i64 %i.ab), !dbg !165144 ; 2 uses
  %i.ar = icmp eq i64 %.pre-phi8.i, %.sroa.0.0.i.i, !dbg !165145
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !165146

._crit_edge38:                                    ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit, %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !165147
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !165148
  store i64 18, ptr %0, align 8, !dbg !165147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !165149
  br label %bb.d, !dbg !165100

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.w, %.invoke
  %lpad.loopexit.split-lp59 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB4_6option6OptiondEEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 dereferenceable(24) %i.d) #44
          to label %bb.ab unwind label %bb.aa, !dbg !165149

_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit: ; preds = %bb.q, %bb.p, %bb.m
  %.sink13.i = phi i64 [ %i.ai, %bb.m ], [ %i.aq, %bb.p ], [ %.sroa.0.0.i.i, %bb.q ] ; 6 uses
  %.sink11.i = phi double [ 0.000000e+00, %bb.m ], [ 0.000000e+00, %bb.p ], [ %i.ag, %bb.q ]
  %.sink.i = phi i1 [ true, %bb.m ], [ true, %bb.p ], [ %i.ar, %bb.q ] ; 2 uses
  %i.at = icmp ult i64 %.sink13.i, %2, !dbg !165150
  br i1 %i.at, label %bb.r, label %.invoke, !dbg !165150

bb.r:                                             ; preds = %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sink13.i, !dbg !165150
  %.val25 = load i16, ptr %i.au, align 2, !dbg !165151, !noundef !3468
  %i.av = uitofp i16 %.val25 to double, !dbg !165152 ; 10 uses
  switch i8 %5, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit [
    i8 3, label %bb.s
    i8 4, label %bb.t
  ], !dbg !165153

bb.s:                                             ; preds = %bb.r
  br i1 %.sink.i, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.u, !dbg !165154

bb.t:                                             ; preds = %bb.r
  br i1 %.sink.i, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.x, !dbg !165145

bb.u:                                             ; preds = %bb.s
  %i.aw = add nuw nsw i64 %.sink13.i, 1, !dbg !165155 ; 3 uses
  %i.ax = icmp ult i64 %i.aw, %2, !dbg !165156
  br i1 %i.ax, label %bb.v, label %.invoke, !dbg !165156

bb.v:                                             ; preds = %bb.u
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aw, !dbg !165156
  %.val24 = load i16, ptr %i.ay, align 2, !dbg !165157, !noundef !3468
  %i.az = uitofp i16 %.val24 to double, !dbg !165158 ; 2 uses
  %i.ba = fcmp oeq double %i.av, %i.az, !dbg !165159
  %i.bb = fadd nnan double %i.av, %i.az, !dbg !165160
  %i.bc = fmul nnan double %i.bb, 5.000000e-01, !dbg !165160
  %.sroa.0.0.i27 = select i1 %i.ba, double %i.av, double %i.bc, !dbg !165160
  br label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, !dbg !165161

_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit: ; preds = %bb.z, %bb.y, %bb.v, %bb.t, %bb.s, %bb.r
  %.sroa.5.0 = phi double [ %i.av, %bb.r ], [ %i.av, %bb.s ], [ %.sroa.0.0.i27, %bb.v ], [ %i.av, %bb.t ], [ %i.bv, %bb.z ], [ %i.av, %bb.y ], !dbg !165162
  %i.bd = load i64, ptr %i.d, align 8, !dbg !165163, !range !3548, !alias.scope !165087, !noundef !3468
  %i.be = icmp eq i64 %i.ac, %i.bd, !dbg !165164
  br i1 %i.be, label %bb.w, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit, !dbg !165164

bb.w:                                             ; preds = %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8grow_oneCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !165165

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.w, %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit
  %i.bf = load ptr, ptr %i.x, align 8, !dbg !165166, !alias.scope !165087, !nonnull !3468, !noundef !3468
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %i.ac, !dbg !165167 ; 2 uses
  store i64 1, ptr %i.bg, align 8, !dbg !165168
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8, !dbg !165168
  store double %.sroa.5.0, ptr %i.bh, align 8, !dbg !165168
  %i.bi = add i64 %i.ac, 1, !dbg !165169          ; 2 uses
  store i64 %i.bi, ptr %i.y, align 8, !dbg !165123
  %i.bj = icmp eq ptr %i.ad, %i.e, !dbg !165170
  br i1 %i.bj, label %._crit_edge38, label %bb.l, !dbg !165124

bb.x:                                             ; preds = %bb.t
  %i.bk = add nuw nsw i64 %.sink13.i, 1, !dbg !165171 ; 3 uses
  %i.bl = icmp ult i64 %i.bk, %2, !dbg !165172
  br i1 %i.bl, label %bb.y, label %.invoke, !dbg !165172

.invoke:                                          ; preds = %bb.x, %bb.u, %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit
  %i.bm = phi i64 [ %i.aw, %bb.u ], [ %.sink13.i, %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit ], [ %i.bk, %bb.x ]
  %i.bn = phi ptr [ @62, %bb.u ], [ @61, %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit ], [ @63, %bb.x ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.bm, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bn) #43
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !165162

.cont:                                            ; preds = %.invoke
  unreachable

bb.y:                                             ; preds = %bb.x
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.bk, !dbg !165172
  %.val23 = load i16, ptr %i.bo, align 2, !dbg !165173, !noundef !3468
  %i.bp = uitofp i16 %.val23 to double, !dbg !165174 ; 2 uses
  %i.bq = fcmp oeq double %i.av, %i.bp, !dbg !165175
  br i1 %i.bq, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.z, !dbg !165176

bb.z:                                             ; preds = %bb.y
  %i.br = uitofp nneg i64 %.sink13.i to double, !dbg !165177
  %i.bs = fsub double %.sink11.i, %i.br, !dbg !165178
  %i.bt = fsub nnan double %i.bp, %i.av, !dbg !165179
  %i.bu = fmul double %i.bs, %i.bt, !dbg !165180
  %i.bv = fadd double %i.bu, %i.av, !dbg !165181
  br label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, !dbg !165182

bb.aa:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !165183
  unreachable, !dbg !165183

bb.ab:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp59, !dbg !165183
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15quantiles_slicexEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull align 8 %1, i64 noundef range(i64 0, 1152921504606846976) %2, ptr noalias noundef nonnull readonly align 8 captures(address) %3, i64 noundef range(i64 0, 1152921504606846976) %4, i8 noundef range(i8 0, 6) %5) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !165184 !guid !165274 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %.idx = shl nuw nsw i64 %4, 3, !dbg !165302
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 %.idx, !dbg !165302 ; 2 uses
  %i.f = icmp eq i64 %4, 0, !dbg !165303          ; 2 uses
  br i1 %i.f, label %._crit_edge, label %.lr.ph, !dbg !165281

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.034, i64 8, !dbg !165304 ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.e, !dbg !165303
  br i1 %i.h, label %._crit_edge, label %.lr.ph, !dbg !165281

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.034 = phi ptr [ %i.g, %bb.b ], [ %3, %bb.a ] ; 2 uses
  %i.i = load double, ptr %.sroa.0.034, align 8, !dbg !165305, !noundef !3468 ; 2 uses
  %i.j = fcmp oge double %i.i, 0.000000e+00, !dbg !165306
  %i.k = fcmp ole double %i.i, 1.000000e+00
  %spec.select.i = and i1 %i.j, %i.k, !dbg !165307
  br i1 %spec.select.i, label %bb.b, label %bb.c, !dbg !165308

._crit_edge:                                      ; preds = %bb.b, %bb.a
  switch i64 %2, label %bb.f [
    i64 0, label %bb.e
    i64 1, label %bb.i
  ], !dbg !165309

bb.c:                                             ; preds = %.lr.ph
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) @57, i64 72, i1 false), !dbg !165310
  br label %bb.d, !dbg !165311

bb.d:                                             ; preds = %._crit_edge38, %bb.i, %bb.e, %bb.c
  ret void, !dbg !165312

bb.e:                                             ; preds = %._crit_edge
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !165313
  tail call void @_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemINtNtCscgRAwXFJnXP_4core6option6OptiondENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, i64 noundef 0, double undef, i64 noundef %4), !dbg !165314
  store i64 18, ptr %0, align 8, !dbg !165313
  br label %bb.d, !dbg !165311

bb.f:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !165286
  store ptr %i.a, ptr %i.b, align 8, !noalias !165287
  %i.m = icmp samesign ult i64 %2, 21, !dbg !165315
  br i1 %i.m, label %bb.h, label %bb.g, !dbg !165316, !prof !3738

bb.g:                                             ; preds = %bb.f
  call void @_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable14driftsort_mainxNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSx7sort_byNvYxNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0INtNtB18_3vec3VecxEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 %1, i64 noundef range(i64 0, 1152921504606846976) %2, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b), !dbg !165317
  br label %_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSx7sort_byNvYxNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpECs1LHh8CLbVkQ_11polars_core.exit, !dbg !165317

bb.h:                                             ; preds = %bb.f
  call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftxNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSx7sort_byNvYxNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 %1, i64 noundef range(i64 0, 1152921504606846976) %2, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b), !dbg !165318
  br label %_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSx7sort_byNvYxNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpECs1LHh8CLbVkQ_11polars_core.exit, !dbg !165318

_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSx7sort_byNvYxNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !165319, !noalias !165286
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !165320
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !165321
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !dbg !165321
  %i.n = load i64, ptr %i.c, align 8, !dbg !165321, !range !3513, !noundef !3468
  %i.o = trunc nuw i64 %i.n to i1, !dbg !165322
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !165323
  %i.q = load i64, ptr %i.p, align 8, !dbg !165323, !range !3514, !noundef !3468 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !165323 ; 2 uses
  br i1 %i.o, label %bb.j, label %bb.k, !dbg !165322, !prof !3515

bb.i:                                             ; preds = %._crit_edge
  %.val26 = load i64, ptr %1, align 8, !dbg !165324, !noundef !3468
  %i.s = sitofp i64 %.val26 to double, !dbg !165325
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !165326
  tail call void @_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemINtNtCscgRAwXFJnXP_4core6option6OptiondENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, i64 noundef 1, double %i.s, i64 noundef %4), !dbg !165327
  store i64 18, ptr %0, align 8, !dbg !165326
  br label %bb.d, !dbg !165311

bb.j:                                             ; preds = %_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSx7sort_byNvYxNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpECs1LHh8CLbVkQ_11polars_core.exit
  %i.u = load i64, ptr %i.r, align 8, !dbg !165328
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.q, i64 %i.u) #43, !dbg !165329
  unreachable, !dbg !165329

bb.k:                                             ; preds = %_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSx7sort_byNvYxNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpECs1LHh8CLbVkQ_11polars_core.exit
  %i.v = load ptr, ptr %i.r, align 8, !dbg !165330, !nonnull !3468, !noundef !3468
  %i.w = icmp samesign ule i64 %4, %i.q, !dbg !165331
  call void @llvm.assume(i1 %i.w), !dbg !165332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !165333
  store i64 %i.q, ptr %i.d, align 8, !dbg !165334
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !165334 ; 2 uses
  store ptr %i.v, ptr %i.x, align 8, !dbg !165334
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !165334 ; 2 uses
  store i64 0, ptr %i.y, align 8, !dbg !165335
  br i1 %i.f, label %._crit_edge38, label %.lr.ph37, !dbg !165336

.lr.ph37:                                         ; preds = %bb.k
  %i.z = uitofp nneg i64 %2 to double             ; 2 uses
  %i.aa = fadd nnan double %i.z, -1.000000e+00
  %i.ab = add nsw i64 %2, -1
  br label %bb.l, !dbg !165336

bb.l:                                             ; preds = %.lr.ph37, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit
  %i.ac = phi i64 [ 0, %.lr.ph37 ], [ %i.bi, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit ] ; 3 uses
  %.sroa.02.035 = phi ptr [ %3, %.lr.ph37 ], [ %i.ad, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.02.035, i64 8, !dbg !165337 ; 2 uses
  %i.ae = load double, ptr %.sroa.02.035, align 8, !dbg !165338, !noundef !3468 ; 2 uses
  %i.af = fmul double %i.aa, %i.ae, !dbg !165339
  %i.ag = fadd double %i.af, 0.000000e+00, !dbg !165339 ; 5 uses
  switch i8 %5, label %default.unreachable [
    i8 0, label %bb.m
    i8 1, label %bb.n
    i8 2, label %bb.o
    i8 3, label %bb.n
    i8 4, label %bb.n
    i8 5, label %bb.p
  ], !dbg !165340

default.unreachable:                              ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.ah = call double @llvm.round.f64(double %i.ag), !dbg !165341
  %i.ai = call i64 @llvm.fptoui.sat.i64.f64(double %i.ah), !dbg !165342
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !165343

bb.n:                                             ; preds = %bb.l, %bb.l, %bb.l
  %i.aj = call i64 @llvm.fptoui.sat.i64.f64(double %i.ag), !dbg !165344
  %.pre.i = call double @llvm.ceil.f64(double %i.ag), !dbg !165345
  %.pre7.i = call i64 @llvm.fptoui.sat.i64.f64(double %.pre.i), !dbg !165346
  br label %bb.q, !dbg !165347

bb.o:                                             ; preds = %bb.l
  %i.ak = call double @llvm.ceil.f64(double %i.ag), !dbg !165348
  %i.al = call i64 @llvm.fptoui.sat.i64.f64(double %i.ak), !dbg !165349 ; 2 uses
  br label %bb.q, !dbg !165350

bb.p:                                             ; preds = %bb.l
  %i.am = fmul double %i.ae, %i.z, !dbg !165351
  %i.an = call double @llvm.ceil.f64(double %i.am), !dbg !165352
  %i.ao = fadd double %i.an, -1.000000e+00, !dbg !165353
  %i.ap = call nsz double @llvm.maximumnum.f64(double %i.ao, double 0.000000e+00), !dbg !165354
  %i.aq = call i64 @llvm.fptoui.sat.i64.f64(double %i.ap), !dbg !165353
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !165343

bb.q:                                             ; preds = %bb.o, %bb.n
  %.pre-phi8.i = phi i64 [ %i.al, %bb.o ], [ %.pre7.i, %bb.n ], !dbg !165346
  %.sroa.0.0.i = phi i64 [ %i.al, %bb.o ], [ %i.aj, %bb.n ], !dbg !165355
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i, i64 %i.ab), !dbg !165356 ; 2 uses
  %i.ar = icmp eq i64 %.pre-phi8.i, %.sroa.0.0.i.i, !dbg !165357
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !165358

._crit_edge38:                                    ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit, %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !165359
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !165360
  store i64 18, ptr %0, align 8, !dbg !165359
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !165361
  br label %bb.d, !dbg !165312

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.w, %.invoke
  %lpad.loopexit.split-lp59 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB4_6option6OptiondEEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 dereferenceable(24) %i.d) #44
          to label %bb.ab unwind label %bb.aa, !dbg !165361

_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit: ; preds = %bb.q, %bb.p, %bb.m
  %.sink13.i = phi i64 [ %i.ai, %bb.m ], [ %i.aq, %bb.p ], [ %.sroa.0.0.i.i, %bb.q ] ; 6 uses
  %.sink11.i = phi double [ 0.000000e+00, %bb.m ], [ 0.000000e+00, %bb.p ], [ %i.ag, %bb.q ]
  %.sink.i = phi i1 [ true, %bb.m ], [ true, %bb.p ], [ %i.ar, %bb.q ] ; 2 uses
  %i.at = icmp ult i64 %.sink13.i, %2, !dbg !165362
  br i1 %i.at, label %bb.r, label %.invoke, !dbg !165362

bb.r:                                             ; preds = %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sink13.i, !dbg !165362
  %.val25 = load i64, ptr %i.au, align 8, !dbg !165363, !noundef !3468
  %i.av = sitofp i64 %.val25 to double, !dbg !165364 ; 10 uses
  switch i8 %5, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit [
    i8 3, label %bb.s
    i8 4, label %bb.t
  ], !dbg !165365

bb.s:                                             ; preds = %bb.r
  br i1 %.sink.i, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.u, !dbg !165366

bb.t:                                             ; preds = %bb.r
  br i1 %.sink.i, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.x, !dbg !165357

bb.u:                                             ; preds = %bb.s
  %i.aw = add nuw nsw i64 %.sink13.i, 1, !dbg !165367 ; 3 uses
  %i.ax = icmp ult i64 %i.aw, %2, !dbg !165368
  br i1 %i.ax, label %bb.v, label %.invoke, !dbg !165368

bb.v:                                             ; preds = %bb.u
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.aw, !dbg !165368
  %.val24 = load i64, ptr %i.ay, align 8, !dbg !165369, !noundef !3468
  %i.az = sitofp i64 %.val24 to double, !dbg !165370 ; 2 uses
  %i.ba = fcmp oeq double %i.av, %i.az, !dbg !165371
  %i.bb = fadd nnan double %i.av, %i.az, !dbg !165372
  %i.bc = fmul nnan double %i.bb, 5.000000e-01, !dbg !165372
  %.sroa.0.0.i27 = select i1 %i.ba, double %i.av, double %i.bc, !dbg !165372
  br label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, !dbg !165373

_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit: ; preds = %bb.z, %bb.y, %bb.v, %bb.t, %bb.s, %bb.r
  %.sroa.5.0 = phi double [ %i.av, %bb.r ], [ %i.av, %bb.s ], [ %.sroa.0.0.i27, %bb.v ], [ %i.av, %bb.t ], [ %i.bv, %bb.z ], [ %i.av, %bb.y ], !dbg !165374
  %i.bd = load i64, ptr %i.d, align 8, !dbg !165375, !range !3548, !alias.scope !165299, !noundef !3468
  %i.be = icmp eq i64 %i.ac, %i.bd, !dbg !165376
  br i1 %i.be, label %bb.w, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit, !dbg !165376

bb.w:                                             ; preds = %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8grow_oneCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !165377

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.w, %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit
  %i.bf = load ptr, ptr %i.x, align 8, !dbg !165378, !alias.scope !165299, !nonnull !3468, !noundef !3468
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %i.ac, !dbg !165379 ; 2 uses
  store i64 1, ptr %i.bg, align 8, !dbg !165380
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8, !dbg !165380
  store double %.sroa.5.0, ptr %i.bh, align 8, !dbg !165380
  %i.bi = add i64 %i.ac, 1, !dbg !165381          ; 2 uses
  store i64 %i.bi, ptr %i.y, align 8, !dbg !165335
  %i.bj = icmp eq ptr %i.ad, %i.e, !dbg !165382
  br i1 %i.bj, label %._crit_edge38, label %bb.l, !dbg !165336

bb.x:                                             ; preds = %bb.t
  %i.bk = add nuw nsw i64 %.sink13.i, 1, !dbg !165383 ; 3 uses
  %i.bl = icmp ult i64 %i.bk, %2, !dbg !165384
  br i1 %i.bl, label %bb.y, label %.invoke, !dbg !165384

.invoke:                                          ; preds = %bb.x, %bb.u, %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit
  %i.bm = phi i64 [ %i.aw, %bb.u ], [ %.sink13.i, %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit ], [ %i.bk, %bb.x ]
  %i.bn = phi ptr [ @62, %bb.u ], [ @61, %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit ], [ @63, %bb.x ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.bm, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bn) #43
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !165374

.cont:                                            ; preds = %.invoke
  unreachable

bb.y:                                             ; preds = %bb.x
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bk, !dbg !165384
  %.val23 = load i64, ptr %i.bo, align 8, !dbg !165385, !noundef !3468
  %i.bp = sitofp i64 %.val23 to double, !dbg !165386 ; 2 uses
  %i.bq = fcmp oeq double %i.av, %i.bp, !dbg !165387
  br i1 %i.bq, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.z, !dbg !165388

bb.z:                                             ; preds = %bb.y
  %i.br = uitofp nneg i64 %.sink13.i to double, !dbg !165389
  %i.bs = fsub double %.sink11.i, %i.br, !dbg !165390
  %i.bt = fsub nnan double %i.bp, %i.av, !dbg !165391
  %i.bu = fmul double %i.bs, %i.bt, !dbg !165392
  %i.bv = fadd double %i.bu, %i.av, !dbg !165393
  br label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, !dbg !165394

bb.aa:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !165395
  unreachable, !dbg !165395

bb.ab:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp59, !dbg !165395
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15quantiles_sliceyEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull align 8 %1, i64 noundef range(i64 0, 1152921504606846976) %2, ptr noalias noundef nonnull readonly align 8 captures(address) %3, i64 noundef range(i64 0, 1152921504606846976) %4, i8 noundef range(i8 0, 6) %5) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !165396 !guid !165486 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %.idx = shl nuw nsw i64 %4, 3, !dbg !165514
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 %.idx, !dbg !165514 ; 2 uses
  %i.f = icmp eq i64 %4, 0, !dbg !165515          ; 2 uses
  br i1 %i.f, label %._crit_edge, label %.lr.ph, !dbg !165493

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.034, i64 8, !dbg !165516 ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.e, !dbg !165515
  br i1 %i.h, label %._crit_edge, label %.lr.ph, !dbg !165493

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.034 = phi ptr [ %i.g, %bb.b ], [ %3, %bb.a ] ; 2 uses
  %i.i = load double, ptr %.sroa.0.034, align 8, !dbg !165517, !noundef !3468 ; 2 uses
  %i.j = fcmp oge double %i.i, 0.000000e+00, !dbg !165518
  %i.k = fcmp ole double %i.i, 1.000000e+00
  %spec.select.i = and i1 %i.j, %i.k, !dbg !165519
  br i1 %spec.select.i, label %bb.b, label %bb.c, !dbg !165520

._crit_edge:                                      ; preds = %bb.b, %bb.a
  switch i64 %2, label %bb.f [
    i64 0, label %bb.e
    i64 1, label %bb.i
  ], !dbg !165521

bb.c:                                             ; preds = %.lr.ph
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) @57, i64 72, i1 false), !dbg !165522
  br label %bb.d, !dbg !165523

bb.d:                                             ; preds = %._crit_edge38, %bb.i, %bb.e, %bb.c
  ret void, !dbg !165524

bb.e:                                             ; preds = %._crit_edge
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !165525
  tail call void @_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemINtNtCscgRAwXFJnXP_4core6option6OptiondENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, i64 noundef 0, double undef, i64 noundef %4), !dbg !165526
  store i64 18, ptr %0, align 8, !dbg !165525
  br label %bb.d, !dbg !165523

bb.f:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !165498
  store ptr %i.a, ptr %i.b, align 8, !noalias !165499
  %i.m = icmp samesign ult i64 %2, 21, !dbg !165527
  br i1 %i.m, label %bb.h, label %bb.g, !dbg !165528, !prof !3738

bb.g:                                             ; preds = %bb.f
  call void @_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable14driftsort_mainyNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSy7sort_byNvYyNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0INtNtB18_3vec3VecyEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 %1, i64 noundef range(i64 0, 1152921504606846976) %2, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b), !dbg !165529
  br label %_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSy7sort_byNvYyNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpECs1LHh8CLbVkQ_11polars_core.exit, !dbg !165529

bb.h:                                             ; preds = %bb.f
  call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftyNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSy7sort_byNvYyNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 %1, i64 noundef range(i64 0, 1152921504606846976) %2, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b), !dbg !165530
  br label %_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSy7sort_byNvYyNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpECs1LHh8CLbVkQ_11polars_core.exit, !dbg !165530

_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSy7sort_byNvYyNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !165531, !noalias !165498
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !165532
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !165533
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !dbg !165533
  %i.n = load i64, ptr %i.c, align 8, !dbg !165533, !range !3513, !noundef !3468
  %i.o = trunc nuw i64 %i.n to i1, !dbg !165534
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !165535
  %i.q = load i64, ptr %i.p, align 8, !dbg !165535, !range !3514, !noundef !3468 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !165535 ; 2 uses
  br i1 %i.o, label %bb.j, label %bb.k, !dbg !165534, !prof !3515

bb.i:                                             ; preds = %._crit_edge
  %.val26 = load i64, ptr %1, align 8, !dbg !165536, !noundef !3468
  %i.s = uitofp i64 %.val26 to double, !dbg !165537
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !165538
  tail call void @_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemINtNtCscgRAwXFJnXP_4core6option6OptiondENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, i64 noundef 1, double %i.s, i64 noundef %4), !dbg !165539
  store i64 18, ptr %0, align 8, !dbg !165538
  br label %bb.d, !dbg !165523

bb.j:                                             ; preds = %_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSy7sort_byNvYyNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpECs1LHh8CLbVkQ_11polars_core.exit
  %i.u = load i64, ptr %i.r, align 8, !dbg !165540
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.q, i64 %i.u) #43, !dbg !165541
  unreachable, !dbg !165541

bb.k:                                             ; preds = %_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSy7sort_byNvYyNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpECs1LHh8CLbVkQ_11polars_core.exit
  %i.v = load ptr, ptr %i.r, align 8, !dbg !165542, !nonnull !3468, !noundef !3468
  %i.w = icmp samesign ule i64 %4, %i.q, !dbg !165543
  call void @llvm.assume(i1 %i.w), !dbg !165544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !165545
  store i64 %i.q, ptr %i.d, align 8, !dbg !165546
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !165546 ; 2 uses
  store ptr %i.v, ptr %i.x, align 8, !dbg !165546
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !165546 ; 2 uses
  store i64 0, ptr %i.y, align 8, !dbg !165547
  br i1 %i.f, label %._crit_edge38, label %.lr.ph37, !dbg !165548

.lr.ph37:                                         ; preds = %bb.k
  %i.z = uitofp nneg i64 %2 to double             ; 2 uses
  %i.aa = fadd nnan double %i.z, -1.000000e+00
  %i.ab = add nsw i64 %2, -1
  br label %bb.l, !dbg !165548

bb.l:                                             ; preds = %.lr.ph37, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit
  %i.ac = phi i64 [ 0, %.lr.ph37 ], [ %i.bi, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit ] ; 3 uses
  %.sroa.02.035 = phi ptr [ %3, %.lr.ph37 ], [ %i.ad, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.02.035, i64 8, !dbg !165549 ; 2 uses
  %i.ae = load double, ptr %.sroa.02.035, align 8, !dbg !165550, !noundef !3468 ; 2 uses
  %i.af = fmul double %i.aa, %i.ae, !dbg !165551
  %i.ag = fadd double %i.af, 0.000000e+00, !dbg !165551 ; 5 uses
  switch i8 %5, label %default.unreachable [
    i8 0, label %bb.m
    i8 1, label %bb.n
    i8 2, label %bb.o
    i8 3, label %bb.n
    i8 4, label %bb.n
    i8 5, label %bb.p
  ], !dbg !165552

default.unreachable:                              ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.ah = call double @llvm.round.f64(double %i.ag), !dbg !165553
  %i.ai = call i64 @llvm.fptoui.sat.i64.f64(double %i.ah), !dbg !165554
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !165555

bb.n:                                             ; preds = %bb.l, %bb.l, %bb.l
  %i.aj = call i64 @llvm.fptoui.sat.i64.f64(double %i.ag), !dbg !165556
  %.pre.i = call double @llvm.ceil.f64(double %i.ag), !dbg !165557
  %.pre7.i = call i64 @llvm.fptoui.sat.i64.f64(double %.pre.i), !dbg !165558
  br label %bb.q, !dbg !165559

bb.o:                                             ; preds = %bb.l
  %i.ak = call double @llvm.ceil.f64(double %i.ag), !dbg !165560
  %i.al = call i64 @llvm.fptoui.sat.i64.f64(double %i.ak), !dbg !165561 ; 2 uses
  br label %bb.q, !dbg !165562

bb.p:                                             ; preds = %bb.l
  %i.am = fmul double %i.ae, %i.z, !dbg !165563
  %i.an = call double @llvm.ceil.f64(double %i.am), !dbg !165564
  %i.ao = fadd double %i.an, -1.000000e+00, !dbg !165565
  %i.ap = call nsz double @llvm.maximumnum.f64(double %i.ao, double 0.000000e+00), !dbg !165566
  %i.aq = call i64 @llvm.fptoui.sat.i64.f64(double %i.ap), !dbg !165565
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !165555

bb.q:                                             ; preds = %bb.o, %bb.n
  %.pre-phi8.i = phi i64 [ %i.al, %bb.o ], [ %.pre7.i, %bb.n ], !dbg !165558
  %.sroa.0.0.i = phi i64 [ %i.al, %bb.o ], [ %i.aj, %bb.n ], !dbg !165567
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i, i64 %i.ab), !dbg !165568 ; 2 uses
  %i.ar = icmp eq i64 %.pre-phi8.i, %.sroa.0.0.i.i, !dbg !165569
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !165570

._crit_edge38:                                    ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit, %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !165571
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !165572
  store i64 18, ptr %0, align 8, !dbg !165571
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !165573
  br label %bb.d, !dbg !165524

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.w, %.invoke
  %lpad.loopexit.split-lp59 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB4_6option6OptiondEEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 dereferenceable(24) %i.d) #44
          to label %bb.ab unwind label %bb.aa, !dbg !165573

_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit: ; preds = %bb.q, %bb.p, %bb.m
  %.sink13.i = phi i64 [ %i.ai, %bb.m ], [ %i.aq, %bb.p ], [ %.sroa.0.0.i.i, %bb.q ] ; 6 uses
  %.sink11.i = phi double [ 0.000000e+00, %bb.m ], [ 0.000000e+00, %bb.p ], [ %i.ag, %bb.q ]
  %.sink.i = phi i1 [ true, %bb.m ], [ true, %bb.p ], [ %i.ar, %bb.q ] ; 2 uses
  %i.at = icmp ult i64 %.sink13.i, %2, !dbg !165574
  br i1 %i.at, label %bb.r, label %.invoke, !dbg !165574

bb.r:                                             ; preds = %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sink13.i, !dbg !165574
  %.val25 = load i64, ptr %i.au, align 8, !dbg !165575, !noundef !3468
  %i.av = uitofp i64 %.val25 to double, !dbg !165576 ; 10 uses
  switch i8 %5, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit [
    i8 3, label %bb.s
    i8 4, label %bb.t
  ], !dbg !165577

bb.s:                                             ; preds = %bb.r
  br i1 %.sink.i, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.u, !dbg !165578

bb.t:                                             ; preds = %bb.r
  br i1 %.sink.i, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.x, !dbg !165569

bb.u:                                             ; preds = %bb.s
  %i.aw = add nuw nsw i64 %.sink13.i, 1, !dbg !165579 ; 3 uses
  %i.ax = icmp ult i64 %i.aw, %2, !dbg !165580
  br i1 %i.ax, label %bb.v, label %.invoke, !dbg !165580

bb.v:                                             ; preds = %bb.u
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.aw, !dbg !165580
  %.val24 = load i64, ptr %i.ay, align 8, !dbg !165581, !noundef !3468
  %i.az = uitofp i64 %.val24 to double, !dbg !165582 ; 2 uses
  %i.ba = fcmp oeq double %i.av, %i.az, !dbg !165583
  %i.bb = fadd nnan double %i.av, %i.az, !dbg !165584
  %i.bc = fmul nnan double %i.bb, 5.000000e-01, !dbg !165584
  %.sroa.0.0.i27 = select i1 %i.ba, double %i.av, double %i.bc, !dbg !165584
  br label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, !dbg !165585

_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit: ; preds = %bb.z, %bb.y, %bb.v, %bb.t, %bb.s, %bb.r
  %.sroa.5.0 = phi double [ %i.av, %bb.r ], [ %i.av, %bb.s ], [ %.sroa.0.0.i27, %bb.v ], [ %i.av, %bb.t ], [ %i.bv, %bb.z ], [ %i.av, %bb.y ], !dbg !165586
  %i.bd = load i64, ptr %i.d, align 8, !dbg !165587, !range !3548, !alias.scope !165511, !noundef !3468
  %i.be = icmp eq i64 %i.ac, %i.bd, !dbg !165588
  br i1 %i.be, label %bb.w, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit, !dbg !165588

bb.w:                                             ; preds = %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8grow_oneCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !165589

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.w, %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit
  %i.bf = load ptr, ptr %i.x, align 8, !dbg !165590, !alias.scope !165511, !nonnull !3468, !noundef !3468
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %i.ac, !dbg !165591 ; 2 uses
  store i64 1, ptr %i.bg, align 8, !dbg !165592
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8, !dbg !165592
  store double %.sroa.5.0, ptr %i.bh, align 8, !dbg !165592
  %i.bi = add i64 %i.ac, 1, !dbg !165593          ; 2 uses
  store i64 %i.bi, ptr %i.y, align 8, !dbg !165547
  %i.bj = icmp eq ptr %i.ad, %i.e, !dbg !165594
  br i1 %i.bj, label %._crit_edge38, label %bb.l, !dbg !165548

bb.x:                                             ; preds = %bb.t
  %i.bk = add nuw nsw i64 %.sink13.i, 1, !dbg !165595 ; 3 uses
  %i.bl = icmp ult i64 %i.bk, %2, !dbg !165596
  br i1 %i.bl, label %bb.y, label %.invoke, !dbg !165596

.invoke:                                          ; preds = %bb.x, %bb.u, %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit
  %i.bm = phi i64 [ %i.aw, %bb.u ], [ %.sink13.i, %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit ], [ %i.bk, %bb.x ]
  %i.bn = phi ptr [ @62, %bb.u ], [ @61, %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit ], [ @63, %bb.x ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.bm, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bn) #43
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !165586

.cont:                                            ; preds = %.invoke
  unreachable

bb.y:                                             ; preds = %bb.x
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bk, !dbg !165596
  %.val23 = load i64, ptr %i.bo, align 8, !dbg !165597, !noundef !3468
  %i.bp = uitofp i64 %.val23 to double, !dbg !165598 ; 2 uses
  %i.bq = fcmp oeq double %i.av, %i.bp, !dbg !165599
  br i1 %i.bq, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.z, !dbg !165600

bb.z:                                             ; preds = %bb.y
  %i.br = uitofp nneg i64 %.sink13.i to double, !dbg !165601
  %i.bs = fsub double %.sink11.i, %i.br, !dbg !165602
  %i.bt = fsub nnan double %i.bp, %i.av, !dbg !165603
  %i.bu = fmul double %i.bs, %i.bt, !dbg !165604
  %i.bv = fadd double %i.bu, %i.av, !dbg !165605
  br label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, !dbg !165606

bb.aa:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !165607
  unreachable, !dbg !165607

bb.ab:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp59, !dbg !165607
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile17generic_quantilesNtNtBa_9datatypes10Int128TypeEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56) %1, ptr noalias noundef nonnull readonly align 8 captures(address) %2, i64 noundef range(i64 0, 1152921504606846976) %3, i8 noundef range(i8 0, 6) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !165608 !guid !165693 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 16               ; 6 uses
  %i.c = alloca [32 x i8], align 16               ; 6 uses
  %i.d = alloca [32 x i8], align 16               ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = alloca [56 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %.idx = shl nuw nsw i64 %3, 3, !dbg !165724
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %.idx, !dbg !165724 ; 2 uses
  %i.i = icmp eq i64 %3, 0, !dbg !165725
  br i1 %i.i, label %._crit_edge59, label %.lr.ph58, !dbg !165700

bb.b:                                             ; preds = %.lr.ph58
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.056, i64 8, !dbg !165726 ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.h, !dbg !165725
  br i1 %i.k, label %._crit_edge59, label %.lr.ph58, !dbg !165700

bb.c:                                             ; preds = %bb.j, %bb.d
  %.pn28 = phi { ptr, i32 } [ %i.l, %bb.d ], [ %.pn, %bb.j ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10Int128TypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %1) #44
          to label %bb.ao unwind label %bb.ak, !dbg !165727

bb.d:                                             ; preds = %._crit_edge, %bb.h, %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.lr.ph58:                                         ; preds = %bb.a, %bb.b
  %.sroa.0.056 = phi ptr [ %i.j, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %i.m = load double, ptr %.sroa.0.056, align 8, !dbg !165728, !noundef !3468 ; 2 uses
  %i.n = fcmp oge double %i.m, 0.000000e+00, !dbg !165729
  %i.o = fcmp ole double %i.m, 1.000000e+00
  %spec.select.i = and i1 %i.n, %i.o, !dbg !165730
  br i1 %spec.select.i, label %bb.b, label %bb.e, !dbg !165731

bb.e:                                             ; preds = %.lr.ph58
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) @65, i64 72, i1 false), !dbg !165732
  br label %bb.f, !dbg !165733

bb.f:                                             ; preds = %bb.an, %bb.e
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10Int128TypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %1), !dbg !165727
  br label %bb.am, !dbg !165727

._crit_edge59:                                    ; preds = %bb.b, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !165734
  %.val = load i64, ptr %i.p, align 8, !dbg !165734, !noundef !3468 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !165735
  %.val30 = load i64, ptr %i.q, align 8, !dbg !165735, !noundef !3468 ; 3 uses
  %i.r = icmp eq i64 %.val, %.val30, !dbg !165736
  br i1 %i.r, label %bb.h, label %bb.g, !dbg !165736

bb.g:                                             ; preds = %._crit_edge59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !165737
  invoke void @_RNvXNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sortINtB6_12ChunkedArrayNtNtB8_9datatypes10Int128TypeEINtB4_9ChunkSortB1h_E4sortB8_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.f, ptr noundef nonnull align 8 %1, i1 noundef zeroext false)
          to label %bb.i unwind label %bb.d, !dbg !165738

bb.h:                                             ; preds = %._crit_edge59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !165704
  invoke void @_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemINtNtCscgRAwXFJnXP_4core6option6OptiondENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef 0, double undef, i64 noundef %3)
          to label %bb.an unwind label %bb.d, !dbg !165739

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !165740
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !165741
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %3, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
          to label %bb.l unwind label %bb.k, !dbg !165741

bb.j:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.k
  %.pn = phi { ptr, i32 } [ %i.s, %bb.k ], [ %lpad.loopexit.split-lp60, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10Int128TypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %i.f) #44
          to label %bb.c unwind label %bb.ak, !dbg !165742

bb.k:                                             ; preds = %bb.m, %bb.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.l:                                             ; preds = %bb.i
  %i.t = load i64, ptr %i.a, align 8, !dbg !165741, !range !3513, !noundef !3468
  %i.u = trunc nuw i64 %i.t to i1, !dbg !165743
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !165744
  %i.w = load i64, ptr %i.v, align 8, !dbg !165744, !range !3514, !noundef !3468 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !165744 ; 2 uses
  br i1 %i.u, label %bb.m, label %bb.n, !dbg !165743, !prof !3515

bb.m:                                             ; preds = %bb.l
  %i.y = load i64, ptr %i.x, align 8, !dbg !165745
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.w, i64 %i.y) #43
          to label %bb.aa unwind label %bb.k, !dbg !165746

bb.n:                                             ; preds = %bb.l
  %i.z = load ptr, ptr %i.x, align 8, !dbg !165747, !nonnull !3468, !noundef !3468
  %i.aa = icmp samesign ule i64 %3, %i.w, !dbg !165748
  call void @llvm.assume(i1 %i.aa), !dbg !165749
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !165750
  store i64 %i.w, ptr %i.e, align 8, !dbg !165751
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !165751 ; 2 uses
  store ptr %i.z, ptr %i.ab, align 8, !dbg !165751
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !165751 ; 3 uses
  store i64 0, ptr %i.ac, align 8, !dbg !165752
  %i.ad = icmp eq i64 %3, 0, !dbg !165753
  br i1 %i.ad, label %._crit_edge, label %.lr.ph, !dbg !165754

.lr.ph:                                           ; preds = %bb.n
  %i.ae = sub i64 %.val30, %.val
  %i.af = uitofp i64 %i.ae to double              ; 2 uses
  %i.ag = fadd nnan double %i.af, -1.000000e+00
  %i.ah = uitofp i64 %.val to double
  %i.ai = add i64 %.val30, -1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.o, !dbg !165754

bb.o:                                             ; preds = %.lr.ph, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit
  %.sroa.02.040 = phi ptr [ %2, %.lr.ph ], [ %i.am, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.02.040, i64 8, !dbg !165755 ; 2 uses
  %i.an = load double, ptr %.sroa.02.040, align 8, !dbg !165756, !noundef !3468 ; 2 uses
  %i.ao = fmul double %i.ag, %i.an, !dbg !165757
  %i.ap = fadd double %i.ao, %i.ah, !dbg !165757  ; 5 uses
  switch i8 %4, label %default.unreachable [
    i8 0, label %bb.p
    i8 1, label %bb.q
    i8 2, label %bb.r
    i8 3, label %bb.q
    i8 4, label %bb.q
    i8 5, label %bb.s
  ], !dbg !165758

default.unreachable:                              ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.aq = call double @llvm.round.f64(double %i.ap), !dbg !165759
  %i.ar = call i64 @llvm.fptoui.sat.i64.f64(double %i.aq), !dbg !165760
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !165761

bb.q:                                             ; preds = %bb.o, %bb.o, %bb.o
  %i.as = call i64 @llvm.fptoui.sat.i64.f64(double %i.ap), !dbg !165762
  %.pre.i = call double @llvm.ceil.f64(double %i.ap), !dbg !165763
  %.pre7.i = call i64 @llvm.fptoui.sat.i64.f64(double %.pre.i), !dbg !165764
  br label %bb.t, !dbg !165765

bb.r:                                             ; preds = %bb.o
  %i.at = call double @llvm.ceil.f64(double %i.ap), !dbg !165766
  %i.au = call i64 @llvm.fptoui.sat.i64.f64(double %i.at), !dbg !165767 ; 2 uses
  br label %bb.t, !dbg !165768

bb.s:                                             ; preds = %bb.o
  %i.av = fmul double %i.an, %i.af, !dbg !165769
  %i.aw = call double @llvm.ceil.f64(double %i.av), !dbg !165770
  %i.ax = fadd double %i.aw, -1.000000e+00, !dbg !165771
  %i.ay = call nsz double @llvm.maximumnum.f64(double %i.ax, double 0.000000e+00), !dbg !165772
  %i.az = call i64 @llvm.fptoui.sat.i64.f64(double %i.ay), !dbg !165771
  %i.ba = add i64 %i.az, %.val, !dbg !165771
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !165761

bb.t:                                             ; preds = %bb.r, %bb.q
  %.pre-phi8.i = phi i64 [ %i.au, %bb.r ], [ %.pre7.i, %bb.q ], !dbg !165764
  %.sroa.0.0.i = phi i64 [ %i.au, %bb.r ], [ %i.as, %bb.q ], !dbg !165773
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i, i64 %i.ai), !dbg !165774 ; 2 uses
  %i.bb = icmp eq i64 %.pre-phi8.i, %.sroa.0.0.i.i, !dbg !165775
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !165776

._crit_edge:                                      ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit, %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !165777
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !165778
  store i64 18, ptr %0, align 8, !dbg !165777
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !165779
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10Int128TypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %i.f)
          to label %bb.al unwind label %bb.d, !dbg !165742

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ad, %bb.ae, %bb.x, %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, %.loopexit35.invoke
  %lpad.loopexit.split-lp60 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB4_6option6OptiondEEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 dereferenceable(24) %i.e) #44
          to label %bb.j unwind label %bb.ak, !dbg !165779

_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit: ; preds = %bb.t, %bb.s, %bb.p
  %.sink13.i = phi i64 [ %i.ar, %bb.p ], [ %i.ba, %bb.s ], [ %.sroa.0.0.i.i, %bb.t ] ; 4 uses
  %.sink11.i = phi double [ 0.000000e+00, %bb.p ], [ 0.000000e+00, %bb.s ], [ %i.ap, %bb.t ]
  %.sink.i = phi i1 [ true, %bb.p ], [ true, %bb.s ], [ %i.bb, %bb.t ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !165780
  invoke fastcc void @_RNvMs_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB4_12ChunkedArrayNtNtB6_9datatypes10Int128TypeE3getB6_(ptr noalias noundef align 16 captures(address) dereferenceable(32) %i.d, ptr noundef nonnull align 8 %i.f, i64 noundef %.sink13.i)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !165781

bb.u:                                             ; preds = %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit
  %i.bd = load i128, ptr %i.d, align 16, !dbg !165782, !range !3892, !noundef !3468 ; 2 uses
  %i.be = trunc nuw i128 %i.bd to i1, !dbg !165783 ; 5 uses
  %i.bf = load i128, ptr %i.aj, align 16, !dbg !165783
  %i.bg = sitofp i128 %i.bf to double, !dbg !165783 ; 8 uses
  %.sroa.9.0 = select i1 %i.be, double %i.bg, double undef, !dbg !165783 ; 3 uses
  %i.bh = trunc nuw nsw i128 %i.bd to i64, !dbg !165783
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !165784
  switch i8 %4, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit [
    i8 3, label %bb.v
    i8 4, label %bb.w
  ], !dbg !165785

bb.v:                                             ; preds = %bb.u
  br i1 %.sink.i, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.x, !dbg !165786

bb.w:                                             ; preds = %bb.u
  br i1 %.sink.i, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.ae, !dbg !165775

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !165787
  %i.bi = add i64 %.sink13.i, 1, !dbg !165788
  invoke fastcc void @_RNvMs_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB4_12ChunkedArrayNtNtB6_9datatypes10Int128TypeE3getB6_(ptr noalias noundef align 16 captures(address) dereferenceable(32) %i.c, ptr noundef nonnull align 8 %i.f, i64 noundef %i.bi)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !165789

bb.y:                                             ; preds = %bb.x
  %i.bj = load i128, ptr %i.c, align 16, !dbg !165790, !range !3892, !noundef !3468
  %i.bk = trunc nuw i128 %i.bj to i1, !dbg !165791
  br i1 %i.bk, label %bb.ab, label %bb.z, !dbg !165791, !prof !3738

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !165792
  br i1 %i.be, label %.loopexit35.invoke, label %.loopexit36, !dbg !165793

.loopexit36:                                      ; preds = %bb.ab, %bb.z
  br label %.loopexit35.invoke, !dbg !165794

bb.aa:                                            ; preds = %bb.m
  unreachable

bb.ab:                                            ; preds = %bb.y
  %i.bl = load i128, ptr %i.al, align 16, !dbg !165795, !noundef !3468
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !165792
  br i1 %i.be, label %bb.ac, label %.loopexit36, !dbg !165793, !prof !3738

bb.ac:                                            ; preds = %bb.ab
  %i.bm = sitofp i128 %i.bl to double, !dbg !165796 ; 2 uses
  %i.bn = fcmp oeq double %i.bg, %i.bm, !dbg !165797
  %i.bo = fadd nnan double %i.bg, %i.bm, !dbg !165798
  %i.bp = fmul nnan double %i.bo, 5.000000e-01, !dbg !165798
  %.sroa.0.0.i32 = select i1 %i.bn, double %i.bg, double %i.bp, !dbg !165798
  br label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, !dbg !165799

_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit: ; preds = %bb.aj, %bb.ai, %bb.ac, %bb.w, %bb.v, %bb.u
  %.sroa.9.1 = phi double [ %.sroa.9.0, %bb.u ], [ %.sroa.9.0, %bb.v ], [ %.sroa.0.0.i32, %bb.ac ], [ %.sroa.9.0, %bb.w ], [ %i.cj, %bb.aj ], [ %i.bg, %bb.ai ], !dbg !165800
  %i.bq = load i64, ptr %i.ac, align 8, !dbg !165801, !alias.scope !165719, !noundef !3468 ; 3 uses
  %i.br = load i64, ptr %i.e, align 8, !dbg !165802, !range !3548, !alias.scope !165719, !noundef !3468
  %i.bs = icmp eq i64 %i.bq, %i.br, !dbg !165803
  br i1 %i.bs, label %bb.ad, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit, !dbg !165803

bb.ad:                                            ; preds = %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8grow_oneCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !165804

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.ad, %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit
  %i.bt = load ptr, ptr %i.ab, align 8, !dbg !165805, !alias.scope !165719, !nonnull !3468, !noundef !3468
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.bt, i64 %i.bq, !dbg !165806 ; 2 uses
  store i64 %i.bh, ptr %i.bu, align 8, !dbg !165807
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8, !dbg !165807
  store double %.sroa.9.1, ptr %i.bv, align 8, !dbg !165807
  %i.bw = add i64 %i.bq, 1, !dbg !165808
  store i64 %i.bw, ptr %i.ac, align 8, !dbg !165752
  %i.bx = icmp eq ptr %i.am, %i.h, !dbg !165753
  br i1 %i.bx, label %._crit_edge, label %bb.o, !dbg !165754

bb.ae:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !165809
  %i.by = add i64 %.sink13.i, 1, !dbg !165810
  invoke fastcc void @_RNvMs_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB4_12ChunkedArrayNtNtB6_9datatypes10Int128TypeE3getB6_(ptr noalias noundef align 16 captures(address) dereferenceable(32) %i.b, ptr noundef nonnull align 8 %i.f, i64 noundef %i.by)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !165811

bb.af:                                            ; preds = %bb.ae
  %i.bz = load i128, ptr %i.b, align 16, !dbg !165812, !range !3892, !noundef !3468
  %i.ca = trunc nuw i128 %i.bz to i1, !dbg !165813
  br i1 %i.ca, label %bb.ah, label %bb.ag, !dbg !165813, !prof !3738

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !165814
  br i1 %i.be, label %.loopexit35.invoke, label %.loopexit35, !dbg !165815

.loopexit35:                                      ; preds = %bb.ah, %bb.ag
  br label %.loopexit35.invoke, !dbg !165816

.loopexit35.invoke:                               ; preds = %bb.ag, %bb.z, %.loopexit36, %.loopexit35
  %i.cb = phi ptr [ @69, %.loopexit35 ], [ @66, %bb.z ], [ @67, %.loopexit36 ], [ @68, %bb.ag ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cb) #43
          to label %.loopexit35.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !165817

.loopexit35.cont:                                 ; preds = %.loopexit35.invoke
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.cc = load i128, ptr %i.ak, align 16, !dbg !165818, !noundef !3468
  %i.cd = sitofp i128 %i.cc to double, !dbg !165819 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !165814
  br i1 %i.be, label %bb.ai, label %.loopexit35, !dbg !165815, !prof !3738

bb.ai:                                            ; preds = %bb.ah
  %i.ce = fcmp oeq double %i.bg, %i.cd, !dbg !165820
  br i1 %i.ce, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.aj, !dbg !165821

bb.aj:                                            ; preds = %bb.ai
  %i.cf = uitofp i64 %.sink13.i to double, !dbg !165822
  %i.cg = fsub double %.sink11.i, %i.cf, !dbg !165823
  %i.ch = fsub nnan double %i.cd, %i.bg, !dbg !165824
  %i.ci = fmul double %i.cg, %i.ch, !dbg !165825
  %i.cj = fadd double %i.ci, %i.bg, !dbg !165826
  br label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, !dbg !165827

bb.ak:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.j, %bb.c
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !165828
  unreachable, !dbg !165828

bb.al:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !165742
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10Int128TypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %1), !dbg !165727
  br label %bb.am, !dbg !165727

bb.am:                                            ; preds = %bb.al, %bb.f
  ret void, !dbg !165829

bb.an:                                            ; preds = %bb.h
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !165830
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !dbg !165830
  store i64 18, ptr %0, align 8, !dbg !165830
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !165831
  br label %bb.f, !dbg !165733

bb.ao:                                            ; preds = %bb.c
  resume { ptr, i32 } %.pn28, !dbg !165828
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile17generic_quantilesNtNtBa_9datatypes10UInt16TypeEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56) %1, ptr noalias noundef nonnull readonly align 8 captures(address) %2, i64 noundef range(i64 0, 1152921504606846976) %3, i8 noundef range(i8 0, 6) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !165832 !guid !165917 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [56 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %.idx = shl nuw nsw i64 %3, 3, !dbg !165948
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %.idx, !dbg !165948 ; 2 uses
  %i.f = icmp eq i64 %3, 0, !dbg !165949
  br i1 %i.f, label %._crit_edge66, label %.lr.ph65, !dbg !165924

bb.b:                                             ; preds = %.lr.ph65
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.063, i64 8, !dbg !165950 ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.e, !dbg !165949
  br i1 %i.h, label %._crit_edge66, label %.lr.ph65, !dbg !165924

bb.c:                                             ; preds = %bb.j, %bb.d
  %.pn35 = phi { ptr, i32 } [ %i.i, %bb.d ], [ %.pn, %bb.j ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt16TypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %1) #44
          to label %bb.ao unwind label %bb.ak, !dbg !165951

bb.d:                                             ; preds = %._crit_edge, %bb.h, %bb.g
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.lr.ph65:                                         ; preds = %bb.a, %bb.b
  %.sroa.0.063 = phi ptr [ %i.g, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %i.j = load double, ptr %.sroa.0.063, align 8, !dbg !165952, !noundef !3468 ; 2 uses
  %i.k = fcmp oge double %i.j, 0.000000e+00, !dbg !165953
  %i.l = fcmp ole double %i.j, 1.000000e+00
  %spec.select.i = and i1 %i.k, %i.l, !dbg !165954
  br i1 %spec.select.i, label %bb.b, label %bb.e, !dbg !165955

bb.e:                                             ; preds = %.lr.ph65
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) @65, i64 72, i1 false), !dbg !165956
  br label %bb.f, !dbg !165957

bb.f:                                             ; preds = %bb.an, %bb.e
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt16TypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %1), !dbg !165951
  br label %bb.am, !dbg !165951

._crit_edge66:                                    ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !165958
  %.val = load i64, ptr %i.m, align 8, !dbg !165958, !noundef !3468 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !165959
  %.val37 = load i64, ptr %i.n, align 8, !dbg !165959, !noundef !3468 ; 3 uses
  %i.o = icmp eq i64 %.val, %.val37, !dbg !165960
  br i1 %i.o, label %bb.h, label %bb.g, !dbg !165960

bb.g:                                             ; preds = %._crit_edge66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !165961
  invoke void @_RNvXNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sortINtB6_12ChunkedArrayNtNtB8_9datatypes10UInt16TypeEINtB4_9ChunkSortB1h_E4sortB8_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.c, ptr noundef nonnull align 8 %1, i1 noundef zeroext false)
          to label %bb.i unwind label %bb.d, !dbg !165962

bb.h:                                             ; preds = %._crit_edge66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !165928
  invoke void @_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemINtNtCscgRAwXFJnXP_4core6option6OptiondENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef 0, double undef, i64 noundef %3)
          to label %bb.an unwind label %bb.d, !dbg !165963

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !165964
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !165965
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %3, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
          to label %bb.l unwind label %bb.k, !dbg !165965

bb.j:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.k
  %.pn = phi { ptr, i32 } [ %i.p, %bb.k ], [ %lpad.loopexit.split-lp67, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt16TypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %i.c) #44
          to label %bb.c unwind label %bb.ak, !dbg !165966

bb.k:                                             ; preds = %bb.m, %bb.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.l:                                             ; preds = %bb.i
  %i.q = load i64, ptr %i.a, align 8, !dbg !165965, !range !3513, !noundef !3468
  %i.r = trunc nuw i64 %i.q to i1, !dbg !165967
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !165968
  %i.t = load i64, ptr %i.s, align 8, !dbg !165968, !range !3514, !noundef !3468 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !165968 ; 2 uses
  br i1 %i.r, label %bb.m, label %bb.n, !dbg !165967, !prof !3515

bb.m:                                             ; preds = %bb.l
  %i.v = load i64, ptr %i.u, align 8, !dbg !165969
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.t, i64 %i.v) #43
          to label %bb.aa unwind label %bb.k, !dbg !165970

bb.n:                                             ; preds = %bb.l
  %i.w = load ptr, ptr %i.u, align 8, !dbg !165971, !nonnull !3468, !noundef !3468
  %i.x = icmp samesign ule i64 %3, %i.t, !dbg !165972
  call void @llvm.assume(i1 %i.x), !dbg !165973
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !165974
  store i64 %i.t, ptr %i.b, align 8, !dbg !165975
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !165975 ; 2 uses
  store ptr %i.w, ptr %i.y, align 8, !dbg !165975
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !165975 ; 3 uses
  store i64 0, ptr %i.z, align 8, !dbg !165976
  %i.aa = icmp eq i64 %3, 0, !dbg !165977
  br i1 %i.aa, label %._crit_edge, label %.lr.ph, !dbg !165978

.lr.ph:                                           ; preds = %bb.n
  %i.ab = sub i64 %.val37, %.val
  %i.ac = uitofp i64 %i.ab to double              ; 2 uses
  %i.ad = fadd nnan double %i.ac, -1.000000e+00
  %i.ae = uitofp i64 %.val to double
  %i.af = add i64 %.val37, -1
  br label %bb.o, !dbg !165978

bb.o:                                             ; preds = %.lr.ph, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit
  %.sroa.02.047 = phi ptr [ %2, %.lr.ph ], [ %i.ag, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.02.047, i64 8, !dbg !165979 ; 2 uses
  %i.ah = load double, ptr %.sroa.02.047, align 8, !dbg !165980, !noundef !3468 ; 2 uses
  %i.ai = fmul double %i.ad, %i.ah, !dbg !165981
  %i.aj = fadd double %i.ai, %i.ae, !dbg !165981  ; 5 uses
  switch i8 %4, label %default.unreachable [
    i8 0, label %bb.p
    i8 1, label %bb.q
    i8 2, label %bb.r
    i8 3, label %bb.q
    i8 4, label %bb.q
    i8 5, label %bb.s
  ], !dbg !165982

default.unreachable:                              ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.ak = call double @llvm.round.f64(double %i.aj), !dbg !165983
  %i.al = call i64 @llvm.fptoui.sat.i64.f64(double %i.ak), !dbg !165984
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !165985

bb.q:                                             ; preds = %bb.o, %bb.o, %bb.o
  %i.am = call i64 @llvm.fptoui.sat.i64.f64(double %i.aj), !dbg !165986
  %.pre.i = call double @llvm.ceil.f64(double %i.aj), !dbg !165987
  %.pre7.i = call i64 @llvm.fptoui.sat.i64.f64(double %.pre.i), !dbg !165988
  br label %bb.t, !dbg !165989

bb.r:                                             ; preds = %bb.o
  %i.an = call double @llvm.ceil.f64(double %i.aj), !dbg !165990
  %i.ao = call i64 @llvm.fptoui.sat.i64.f64(double %i.an), !dbg !165991 ; 2 uses
  br label %bb.t, !dbg !165992

bb.s:                                             ; preds = %bb.o
  %i.ap = fmul double %i.ah, %i.ac, !dbg !165993
  %i.aq = call double @llvm.ceil.f64(double %i.ap), !dbg !165994
  %i.ar = fadd double %i.aq, -1.000000e+00, !dbg !165995
  %i.as = call nsz double @llvm.maximumnum.f64(double %i.ar, double 0.000000e+00), !dbg !165996
  %i.at = call i64 @llvm.fptoui.sat.i64.f64(double %i.as), !dbg !165995
  %i.au = add i64 %i.at, %.val, !dbg !165995
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !165985

bb.t:                                             ; preds = %bb.r, %bb.q
  %.pre-phi8.i = phi i64 [ %i.ao, %bb.r ], [ %.pre7.i, %bb.q ], !dbg !165988
  %.sroa.0.0.i = phi i64 [ %i.ao, %bb.r ], [ %i.am, %bb.q ], !dbg !165997
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i, i64 %i.af), !dbg !165998 ; 2 uses
  %i.av = icmp eq i64 %.pre-phi8.i, %.sroa.0.0.i.i, !dbg !165999
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !166000

._crit_edge:                                      ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit, %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !166001
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !166002
  store i64 18, ptr %0, align 8, !dbg !166001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !166003
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt16TypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %i.c)
          to label %bb.al unwind label %bb.d, !dbg !165966

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ad, %bb.ae, %bb.x, %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, %.loopexit42.invoke
  %lpad.loopexit.split-lp67 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB4_6option6OptiondEEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 dereferenceable(24) %i.b) #44
          to label %bb.j unwind label %bb.ak, !dbg !166003

_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit: ; preds = %bb.t, %bb.s, %bb.p
  %.sink13.i = phi i64 [ %i.al, %bb.p ], [ %i.au, %bb.s ], [ %.sroa.0.0.i.i, %bb.t ] ; 4 uses
  %.sink11.i = phi double [ 0.000000e+00, %bb.p ], [ 0.000000e+00, %bb.s ], [ %i.aj, %bb.t ]
  %.sink.i = phi i1 [ true, %bb.p ], [ true, %bb.s ], [ %i.av, %bb.t ] ; 2 uses
  %i.ax = invoke fastcc { i16, i16 } @_RNvMs_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB4_12ChunkedArrayNtNtB6_9datatypes10UInt16TypeE3getB6_(ptr noundef nonnull align 8 %i.c, i64 noundef %.sink13.i)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !166004 ; 2 uses

bb.u:                                             ; preds = %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit
  %i.ay = extractvalue { i16, i16 } %i.ax, 0, !dbg !166005 ; 2 uses
  %i.az = trunc i16 %i.ay to i1, !dbg !166006     ; 5 uses
  %i.ba = extractvalue { i16, i16 } %i.ax, 1, !dbg !166006
  %i.bb = uitofp i16 %i.ba to double, !dbg !166006 ; 8 uses
  %.sroa.9.0 = select i1 %i.az, double %i.bb, double undef, !dbg !166006 ; 3 uses
  %.mask = and i16 %i.ay, 1, !dbg !166006
  %.sroa.05.0 = zext nneg i16 %.mask to i64, !dbg !166006
  switch i8 %4, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit [
    i8 3, label %bb.v
    i8 4, label %bb.w
  ], !dbg !166007

bb.v:                                             ; preds = %bb.u
  br i1 %.sink.i, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.x, !dbg !166008

bb.w:                                             ; preds = %bb.u
  br i1 %.sink.i, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.ae, !dbg !165999

bb.x:                                             ; preds = %bb.v
  %i.bc = add i64 %.sink13.i, 1, !dbg !166009
  %i.bd = invoke fastcc { i16, i16 } @_RNvMs_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB4_12ChunkedArrayNtNtB6_9datatypes10UInt16TypeE3getB6_(ptr noundef nonnull align 8 %i.c, i64 noundef %i.bc)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !166010 ; 2 uses

bb.y:                                             ; preds = %bb.x
  %i.be = extractvalue { i16, i16 } %i.bd, 0, !dbg !166011
  %i.bf = trunc i16 %i.be to i1, !dbg !166012
  br i1 %i.bf, label %bb.ab, label %bb.z, !dbg !166012, !prof !3738

bb.z:                                             ; preds = %bb.y
  br i1 %i.az, label %.loopexit42.invoke, label %.loopexit43, !dbg !166013

.loopexit43:                                      ; preds = %bb.ab, %bb.z
  br label %.loopexit42.invoke, !dbg !166014

bb.aa:                                            ; preds = %bb.m
  unreachable

bb.ab:                                            ; preds = %bb.y
  br i1 %i.az, label %bb.ac, label %.loopexit43, !dbg !166013, !prof !3738

bb.ac:                                            ; preds = %bb.ab
  %i.bg = extractvalue { i16, i16 } %i.bd, 1, !dbg !166011
  %i.bh = uitofp i16 %i.bg to double, !dbg !166015 ; 2 uses
  %i.bi = fcmp oeq double %i.bb, %i.bh, !dbg !166016
  %i.bj = fadd nnan double %i.bb, %i.bh, !dbg !166017
  %i.bk = fmul nnan double %i.bj, 5.000000e-01, !dbg !166017
  %.sroa.0.0.i39 = select i1 %i.bi, double %i.bb, double %i.bk, !dbg !166017
  br label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, !dbg !166018

_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit: ; preds = %bb.aj, %bb.ai, %bb.ac, %bb.w, %bb.v, %bb.u
  %.sroa.9.1 = phi double [ %.sroa.9.0, %bb.u ], [ %.sroa.9.0, %bb.v ], [ %.sroa.0.0.i39, %bb.ac ], [ %.sroa.9.0, %bb.w ], [ %i.cf, %bb.aj ], [ %i.bb, %bb.ai ], !dbg !166019
  %i.bl = load i64, ptr %i.z, align 8, !dbg !166020, !alias.scope !165943, !noundef !3468 ; 3 uses
  %i.bm = load i64, ptr %i.b, align 8, !dbg !166021, !range !3548, !alias.scope !165943, !noundef !3468
  %i.bn = icmp eq i64 %i.bl, %i.bm, !dbg !166022
  br i1 %i.bn, label %bb.ad, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit, !dbg !166022

bb.ad:                                            ; preds = %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8grow_oneCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !166023

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.ad, %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit
  %i.bo = load ptr, ptr %i.y, align 8, !dbg !166024, !alias.scope !165943, !nonnull !3468, !noundef !3468
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %i.bl, !dbg !166025 ; 2 uses
  store i64 %.sroa.05.0, ptr %i.bp, align 8, !dbg !166026
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8, !dbg !166026
  store double %.sroa.9.1, ptr %i.bq, align 8, !dbg !166026
  %i.br = add i64 %i.bl, 1, !dbg !166027
  store i64 %i.br, ptr %i.z, align 8, !dbg !165976
  %i.bs = icmp eq ptr %i.ag, %i.e, !dbg !165977
  br i1 %i.bs, label %._crit_edge, label %bb.o, !dbg !165978

bb.ae:                                            ; preds = %bb.w
  %i.bt = add i64 %.sink13.i, 1, !dbg !166028
  %i.bu = invoke fastcc { i16, i16 } @_RNvMs_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB4_12ChunkedArrayNtNtB6_9datatypes10UInt16TypeE3getB6_(ptr noundef nonnull align 8 %i.c, i64 noundef %i.bt)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !166029 ; 2 uses

bb.af:                                            ; preds = %bb.ae
  %i.bv = extractvalue { i16, i16 } %i.bu, 0, !dbg !166030
  %i.bw = trunc i16 %i.bv to i1, !dbg !166031
  br i1 %i.bw, label %bb.ah, label %bb.ag, !dbg !166031, !prof !3738

bb.ag:                                            ; preds = %bb.af
  br i1 %i.az, label %.loopexit42.invoke, label %.loopexit42, !dbg !166032

.loopexit42:                                      ; preds = %bb.ah, %bb.ag
  br label %.loopexit42.invoke, !dbg !166033

.loopexit42.invoke:                               ; preds = %bb.ag, %bb.z, %.loopexit43, %.loopexit42
  %i.bx = phi ptr [ @69, %.loopexit42 ], [ @66, %bb.z ], [ @67, %.loopexit43 ], [ @68, %bb.ag ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bx) #43
          to label %.loopexit42.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !166034

.loopexit42.cont:                                 ; preds = %.loopexit42.invoke
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.by = extractvalue { i16, i16 } %i.bu, 1, !dbg !166030
  %i.bz = uitofp i16 %i.by to double, !dbg !166035 ; 2 uses
  br i1 %i.az, label %bb.ai, label %.loopexit42, !dbg !166032, !prof !3738

bb.ai:                                            ; preds = %bb.ah
  %i.ca = fcmp oeq double %i.bb, %i.bz, !dbg !166036
  br i1 %i.ca, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.aj, !dbg !166037

bb.aj:                                            ; preds = %bb.ai
  %i.cb = uitofp i64 %.sink13.i to double, !dbg !166038
  %i.cc = fsub double %.sink11.i, %i.cb, !dbg !166039
  %i.cd = fsub nnan double %i.bz, %i.bb, !dbg !166040
  %i.ce = fmul double %i.cc, %i.cd, !dbg !166041
  %i.cf = fadd double %i.ce, %i.bb, !dbg !166042
  br label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, !dbg !166043

bb.ak:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.j, %bb.c
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !166044
  unreachable, !dbg !166044

bb.al:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !165966
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt16TypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %1), !dbg !165951
  br label %bb.am, !dbg !165951

bb.am:                                            ; preds = %bb.al, %bb.f
  ret void, !dbg !166045

bb.an:                                            ; preds = %bb.h
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !166046
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !166046
  store i64 18, ptr %0, align 8, !dbg !166046
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !166047
  br label %bb.f, !dbg !165957

bb.ao:                                            ; preds = %bb.c
  resume { ptr, i32 } %.pn35, !dbg !166044
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile17generic_quantilesNtNtBa_9datatypes10UInt32TypeEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56) %1, ptr noalias noundef nonnull readonly align 8 captures(address) %2, i64 noundef range(i64 0, 1152921504606846976) %3, i8 noundef range(i8 0, 6) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !166048 !guid !166133 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [56 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %.idx = shl nuw nsw i64 %3, 3, !dbg !166164
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %.idx, !dbg !166164 ; 2 uses
  %i.f = icmp eq i64 %3, 0, !dbg !166165
  br i1 %i.f, label %._crit_edge66, label %.lr.ph65, !dbg !166140

bb.b:                                             ; preds = %.lr.ph65
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.063, i64 8, !dbg !166166 ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.e, !dbg !166165
  br i1 %i.h, label %._crit_edge66, label %.lr.ph65, !dbg !166140

bb.c:                                             ; preds = %bb.j, %bb.d
  %.pn35 = phi { ptr, i32 } [ %i.i, %bb.d ], [ %.pn, %bb.j ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt32TypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %1) #44
          to label %bb.ao unwind label %bb.ak, !dbg !166167

bb.d:                                             ; preds = %._crit_edge, %bb.h, %bb.g
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.lr.ph65:                                         ; preds = %bb.a, %bb.b
  %.sroa.0.063 = phi ptr [ %i.g, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %i.j = load double, ptr %.sroa.0.063, align 8, !dbg !166168, !noundef !3468 ; 2 uses
  %i.k = fcmp oge double %i.j, 0.000000e+00, !dbg !166169
  %i.l = fcmp ole double %i.j, 1.000000e+00
  %spec.select.i = and i1 %i.k, %i.l, !dbg !166170
  br i1 %spec.select.i, label %bb.b, label %bb.e, !dbg !166171

bb.e:                                             ; preds = %.lr.ph65
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) @65, i64 72, i1 false), !dbg !166172
  br label %bb.f, !dbg !166173

bb.f:                                             ; preds = %bb.an, %bb.e
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt32TypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %1), !dbg !166167
  br label %bb.am, !dbg !166167

._crit_edge66:                                    ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !166174
  %.val = load i64, ptr %i.m, align 8, !dbg !166174, !noundef !3468 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !166175
  %.val37 = load i64, ptr %i.n, align 8, !dbg !166175, !noundef !3468 ; 3 uses
  %i.o = icmp eq i64 %.val, %.val37, !dbg !166176
  br i1 %i.o, label %bb.h, label %bb.g, !dbg !166176

bb.g:                                             ; preds = %._crit_edge66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !166177
  invoke void @_RNvXNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sortINtB6_12ChunkedArrayNtNtB8_9datatypes10UInt32TypeEINtB4_9ChunkSortB1h_E4sortB8_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.c, ptr noundef nonnull align 8 %1, i1 noundef zeroext false)
          to label %bb.i unwind label %bb.d, !dbg !166178

bb.h:                                             ; preds = %._crit_edge66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !166144
  invoke void @_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemINtNtCscgRAwXFJnXP_4core6option6OptiondENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef 0, double undef, i64 noundef %3)
          to label %bb.an unwind label %bb.d, !dbg !166179

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !166180
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !166181
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %3, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
          to label %bb.l unwind label %bb.k, !dbg !166181

bb.j:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.k
  %.pn = phi { ptr, i32 } [ %i.p, %bb.k ], [ %lpad.loopexit.split-lp67, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt32TypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %i.c) #44
          to label %bb.c unwind label %bb.ak, !dbg !166182

bb.k:                                             ; preds = %bb.m, %bb.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.l:                                             ; preds = %bb.i
  %i.q = load i64, ptr %i.a, align 8, !dbg !166181, !range !3513, !noundef !3468
  %i.r = trunc nuw i64 %i.q to i1, !dbg !166183
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !166184
  %i.t = load i64, ptr %i.s, align 8, !dbg !166184, !range !3514, !noundef !3468 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !166184 ; 2 uses
  br i1 %i.r, label %bb.m, label %bb.n, !dbg !166183, !prof !3515

bb.m:                                             ; preds = %bb.l
  %i.v = load i64, ptr %i.u, align 8, !dbg !166185
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.t, i64 %i.v) #43
          to label %bb.aa unwind label %bb.k, !dbg !166186

bb.n:                                             ; preds = %bb.l
  %i.w = load ptr, ptr %i.u, align 8, !dbg !166187, !nonnull !3468, !noundef !3468
  %i.x = icmp samesign ule i64 %3, %i.t, !dbg !166188
  call void @llvm.assume(i1 %i.x), !dbg !166189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !166190
  store i64 %i.t, ptr %i.b, align 8, !dbg !166191
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !166191 ; 2 uses
  store ptr %i.w, ptr %i.y, align 8, !dbg !166191
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !166191 ; 3 uses
  store i64 0, ptr %i.z, align 8, !dbg !166192
  %i.aa = icmp eq i64 %3, 0, !dbg !166193
  br i1 %i.aa, label %._crit_edge, label %.lr.ph, !dbg !166194

.lr.ph:                                           ; preds = %bb.n
  %i.ab = sub i64 %.val37, %.val
  %i.ac = uitofp i64 %i.ab to double              ; 2 uses
  %i.ad = fadd nnan double %i.ac, -1.000000e+00
  %i.ae = uitofp i64 %.val to double
  %i.af = add i64 %.val37, -1
  br label %bb.o, !dbg !166194

bb.o:                                             ; preds = %.lr.ph, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit
  %.sroa.02.047 = phi ptr [ %2, %.lr.ph ], [ %i.ag, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.02.047, i64 8, !dbg !166195 ; 2 uses
  %i.ah = load double, ptr %.sroa.02.047, align 8, !dbg !166196, !noundef !3468 ; 2 uses
  %i.ai = fmul double %i.ad, %i.ah, !dbg !166197
  %i.aj = fadd double %i.ai, %i.ae, !dbg !166197  ; 5 uses
  switch i8 %4, label %default.unreachable [
    i8 0, label %bb.p
    i8 1, label %bb.q
    i8 2, label %bb.r
    i8 3, label %bb.q
    i8 4, label %bb.q
    i8 5, label %bb.s
  ], !dbg !166198

default.unreachable:                              ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.ak = call double @llvm.round.f64(double %i.aj), !dbg !166199
  %i.al = call i64 @llvm.fptoui.sat.i64.f64(double %i.ak), !dbg !166200
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !166201

bb.q:                                             ; preds = %bb.o, %bb.o, %bb.o
  %i.am = call i64 @llvm.fptoui.sat.i64.f64(double %i.aj), !dbg !166202
  %.pre.i = call double @llvm.ceil.f64(double %i.aj), !dbg !166203
  %.pre7.i = call i64 @llvm.fptoui.sat.i64.f64(double %.pre.i), !dbg !166204
  br label %bb.t, !dbg !166205

bb.r:                                             ; preds = %bb.o
  %i.an = call double @llvm.ceil.f64(double %i.aj), !dbg !166206
  %i.ao = call i64 @llvm.fptoui.sat.i64.f64(double %i.an), !dbg !166207 ; 2 uses
  br label %bb.t, !dbg !166208

bb.s:                                             ; preds = %bb.o
  %i.ap = fmul double %i.ah, %i.ac, !dbg !166209
  %i.aq = call double @llvm.ceil.f64(double %i.ap), !dbg !166210
  %i.ar = fadd double %i.aq, -1.000000e+00, !dbg !166211
  %i.as = call nsz double @llvm.maximumnum.f64(double %i.ar, double 0.000000e+00), !dbg !166212
  %i.at = call i64 @llvm.fptoui.sat.i64.f64(double %i.as), !dbg !166211
  %i.au = add i64 %i.at, %.val, !dbg !166211
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !166201

bb.t:                                             ; preds = %bb.r, %bb.q
  %.pre-phi8.i = phi i64 [ %i.ao, %bb.r ], [ %.pre7.i, %bb.q ], !dbg !166204
  %.sroa.0.0.i = phi i64 [ %i.ao, %bb.r ], [ %i.am, %bb.q ], !dbg !166213
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i, i64 %i.af), !dbg !166214 ; 2 uses
  %i.av = icmp eq i64 %.pre-phi8.i, %.sroa.0.0.i.i, !dbg !166215
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !166216

._crit_edge:                                      ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit, %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !166217
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !166218
  store i64 18, ptr %0, align 8, !dbg !166217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !166219
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt32TypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %i.c)
          to label %bb.al unwind label %bb.d, !dbg !166182

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ad, %bb.ae, %bb.x, %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, %.loopexit42.invoke
  %lpad.loopexit.split-lp67 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB4_6option6OptiondEEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 dereferenceable(24) %i.b) #44
          to label %bb.j unwind label %bb.ak, !dbg !166219

_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit: ; preds = %bb.t, %bb.s, %bb.p
  %.sink13.i = phi i64 [ %i.al, %bb.p ], [ %i.au, %bb.s ], [ %.sroa.0.0.i.i, %bb.t ] ; 4 uses
  %.sink11.i = phi double [ 0.000000e+00, %bb.p ], [ 0.000000e+00, %bb.s ], [ %i.aj, %bb.t ]
  %.sink.i = phi i1 [ true, %bb.p ], [ true, %bb.s ], [ %i.av, %bb.t ] ; 2 uses
  %i.ax = invoke fastcc { i32, i32 } @_RNvMs_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB4_12ChunkedArrayNtNtB6_9datatypes10UInt32TypeE3getB6_(ptr noundef nonnull align 8 %i.c, i64 noundef %.sink13.i)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !166220 ; 2 uses

bb.u:                                             ; preds = %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit
  %i.ay = extractvalue { i32, i32 } %i.ax, 0, !dbg !166221 ; 2 uses
  %i.az = trunc i32 %i.ay to i1, !dbg !166222     ; 5 uses
  %i.ba = extractvalue { i32, i32 } %i.ax, 1, !dbg !166222
  %i.bb = uitofp i32 %i.ba to double, !dbg !166222 ; 8 uses
  %.sroa.9.0 = select i1 %i.az, double %i.bb, double undef, !dbg !166222 ; 3 uses
  %.mask = and i32 %i.ay, 1, !dbg !166222
  %.sroa.05.0 = zext nneg i32 %.mask to i64, !dbg !166222
  switch i8 %4, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit [
    i8 3, label %bb.v
    i8 4, label %bb.w
  ], !dbg !166223

bb.v:                                             ; preds = %bb.u
  br i1 %.sink.i, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.x, !dbg !166224

bb.w:                                             ; preds = %bb.u
  br i1 %.sink.i, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.ae, !dbg !166215

bb.x:                                             ; preds = %bb.v
  %i.bc = add i64 %.sink13.i, 1, !dbg !166225
  %i.bd = invoke fastcc { i32, i32 } @_RNvMs_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB4_12ChunkedArrayNtNtB6_9datatypes10UInt32TypeE3getB6_(ptr noundef nonnull align 8 %i.c, i64 noundef %i.bc)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !166226 ; 2 uses

bb.y:                                             ; preds = %bb.x
  %i.be = extractvalue { i32, i32 } %i.bd, 0, !dbg !166227
  %i.bf = trunc i32 %i.be to i1, !dbg !166228
  br i1 %i.bf, label %bb.ab, label %bb.z, !dbg !166228, !prof !3738

bb.z:                                             ; preds = %bb.y
  br i1 %i.az, label %.loopexit42.invoke, label %.loopexit43, !dbg !166229

.loopexit43:                                      ; preds = %bb.ab, %bb.z
  br label %.loopexit42.invoke, !dbg !166230

bb.aa:                                            ; preds = %bb.m
  unreachable

bb.ab:                                            ; preds = %bb.y
  br i1 %i.az, label %bb.ac, label %.loopexit43, !dbg !166229, !prof !3738

bb.ac:                                            ; preds = %bb.ab
  %i.bg = extractvalue { i32, i32 } %i.bd, 1, !dbg !166227
  %i.bh = uitofp i32 %i.bg to double, !dbg !166231 ; 2 uses
  %i.bi = fcmp oeq double %i.bb, %i.bh, !dbg !166232
  %i.bj = fadd nnan double %i.bb, %i.bh, !dbg !166233
  %i.bk = fmul nnan double %i.bj, 5.000000e-01, !dbg !166233
  %.sroa.0.0.i39 = select i1 %i.bi, double %i.bb, double %i.bk, !dbg !166233
  br label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, !dbg !166234

_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit: ; preds = %bb.aj, %bb.ai, %bb.ac, %bb.w, %bb.v, %bb.u
  %.sroa.9.1 = phi double [ %.sroa.9.0, %bb.u ], [ %.sroa.9.0, %bb.v ], [ %.sroa.0.0.i39, %bb.ac ], [ %.sroa.9.0, %bb.w ], [ %i.cf, %bb.aj ], [ %i.bb, %bb.ai ], !dbg !166235
  %i.bl = load i64, ptr %i.z, align 8, !dbg !166236, !alias.scope !166159, !noundef !3468 ; 3 uses
  %i.bm = load i64, ptr %i.b, align 8, !dbg !166237, !range !3548, !alias.scope !166159, !noundef !3468
  %i.bn = icmp eq i64 %i.bl, %i.bm, !dbg !166238
  br i1 %i.bn, label %bb.ad, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit, !dbg !166238

bb.ad:                                            ; preds = %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8grow_oneCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !166239

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.ad, %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit
  %i.bo = load ptr, ptr %i.y, align 8, !dbg !166240, !alias.scope !166159, !nonnull !3468, !noundef !3468
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %i.bl, !dbg !166241 ; 2 uses
  store i64 %.sroa.05.0, ptr %i.bp, align 8, !dbg !166242
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8, !dbg !166242
  store double %.sroa.9.1, ptr %i.bq, align 8, !dbg !166242
  %i.br = add i64 %i.bl, 1, !dbg !166243
  store i64 %i.br, ptr %i.z, align 8, !dbg !166192
  %i.bs = icmp eq ptr %i.ag, %i.e, !dbg !166193
  br i1 %i.bs, label %._crit_edge, label %bb.o, !dbg !166194

bb.ae:                                            ; preds = %bb.w
  %i.bt = add i64 %.sink13.i, 1, !dbg !166244
  %i.bu = invoke fastcc { i32, i32 } @_RNvMs_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB4_12ChunkedArrayNtNtB6_9datatypes10UInt32TypeE3getB6_(ptr noundef nonnull align 8 %i.c, i64 noundef %i.bt)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !166245 ; 2 uses

bb.af:                                            ; preds = %bb.ae
  %i.bv = extractvalue { i32, i32 } %i.bu, 0, !dbg !166246
  %i.bw = trunc i32 %i.bv to i1, !dbg !166247
  br i1 %i.bw, label %bb.ah, label %bb.ag, !dbg !166247, !prof !3738

bb.ag:                                            ; preds = %bb.af
  br i1 %i.az, label %.loopexit42.invoke, label %.loopexit42, !dbg !166248

.loopexit42:                                      ; preds = %bb.ah, %bb.ag
  br label %.loopexit42.invoke, !dbg !166249

.loopexit42.invoke:                               ; preds = %bb.ag, %bb.z, %.loopexit43, %.loopexit42
  %i.bx = phi ptr [ @69, %.loopexit42 ], [ @66, %bb.z ], [ @67, %.loopexit43 ], [ @68, %bb.ag ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bx) #43
          to label %.loopexit42.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !166250

.loopexit42.cont:                                 ; preds = %.loopexit42.invoke
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.by = extractvalue { i32, i32 } %i.bu, 1, !dbg !166246
  %i.bz = uitofp i32 %i.by to double, !dbg !166251 ; 2 uses
  br i1 %i.az, label %bb.ai, label %.loopexit42, !dbg !166248, !prof !3738

bb.ai:                                            ; preds = %bb.ah
  %i.ca = fcmp oeq double %i.bb, %i.bz, !dbg !166252
  br i1 %i.ca, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.aj, !dbg !166253

bb.aj:                                            ; preds = %bb.ai
  %i.cb = uitofp i64 %.sink13.i to double, !dbg !166254
  %i.cc = fsub double %.sink11.i, %i.cb, !dbg !166255
  %i.cd = fsub nnan double %i.bz, %i.bb, !dbg !166256
  %i.ce = fmul double %i.cc, %i.cd, !dbg !166257
  %i.cf = fadd double %i.ce, %i.bb, !dbg !166258
  br label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, !dbg !166259

bb.ak:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.j, %bb.c
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !166260
  unreachable, !dbg !166260

bb.al:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !166182
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt32TypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %1), !dbg !166167
  br label %bb.am, !dbg !166167

bb.am:                                            ; preds = %bb.al, %bb.f
  ret void, !dbg !166261

bb.an:                                            ; preds = %bb.h
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !166262
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !166262
  store i64 18, ptr %0, align 8, !dbg !166262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !166263
  br label %bb.f, !dbg !166173

bb.ao:                                            ; preds = %bb.c
  resume { ptr, i32 } %.pn35, !dbg !166260
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile17generic_quantilesNtNtBa_9datatypes10UInt64TypeEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56) %1, ptr noalias noundef nonnull readonly align 8 captures(address) %2, i64 noundef range(i64 0, 1152921504606846976) %3, i8 noundef range(i8 0, 6) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !166264 !guid !166349 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [56 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %.idx = shl nuw nsw i64 %3, 3, !dbg !166380
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %.idx, !dbg !166380 ; 2 uses
  %i.f = icmp eq i64 %3, 0, !dbg !166381
  br i1 %i.f, label %._crit_edge66, label %.lr.ph65, !dbg !166356

bb.b:                                             ; preds = %.lr.ph65
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.063, i64 8, !dbg !166382 ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.e, !dbg !166381
  br i1 %i.h, label %._crit_edge66, label %.lr.ph65, !dbg !166356

bb.c:                                             ; preds = %bb.j, %bb.d
  %.pn35 = phi { ptr, i32 } [ %i.i, %bb.d ], [ %.pn, %bb.j ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt64TypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %1) #44
          to label %bb.ao unwind label %bb.ak, !dbg !166383

bb.d:                                             ; preds = %._crit_edge, %bb.h, %bb.g
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.lr.ph65:                                         ; preds = %bb.a, %bb.b
  %.sroa.0.063 = phi ptr [ %i.g, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %i.j = load double, ptr %.sroa.0.063, align 8, !dbg !166384, !noundef !3468 ; 2 uses
  %i.k = fcmp oge double %i.j, 0.000000e+00, !dbg !166385
  %i.l = fcmp ole double %i.j, 1.000000e+00
  %spec.select.i = and i1 %i.k, %i.l, !dbg !166386
  br i1 %spec.select.i, label %bb.b, label %bb.e, !dbg !166387

bb.e:                                             ; preds = %.lr.ph65
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) @65, i64 72, i1 false), !dbg !166388
  br label %bb.f, !dbg !166389

bb.f:                                             ; preds = %bb.an, %bb.e
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt64TypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %1), !dbg !166383
  br label %bb.am, !dbg !166383

._crit_edge66:                                    ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !166390
  %.val = load i64, ptr %i.m, align 8, !dbg !166390, !noundef !3468 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !166391
  %.val37 = load i64, ptr %i.n, align 8, !dbg !166391, !noundef !3468 ; 3 uses
  %i.o = icmp eq i64 %.val, %.val37, !dbg !166392
  br i1 %i.o, label %bb.h, label %bb.g, !dbg !166392

bb.g:                                             ; preds = %._crit_edge66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !166393
  invoke void @_RNvXNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sortINtB6_12ChunkedArrayNtNtB8_9datatypes10UInt64TypeEINtB4_9ChunkSortB1h_E4sortB8_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.c, ptr noundef nonnull align 8 %1, i1 noundef zeroext false)
          to label %bb.i unwind label %bb.d, !dbg !166394

bb.h:                                             ; preds = %._crit_edge66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !166360
  invoke void @_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemINtNtCscgRAwXFJnXP_4core6option6OptiondENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef 0, double undef, i64 noundef %3)
          to label %bb.an unwind label %bb.d, !dbg !166395

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !166396
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !166397
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %3, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
          to label %bb.l unwind label %bb.k, !dbg !166397

bb.j:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.k
  %.pn = phi { ptr, i32 } [ %i.p, %bb.k ], [ %lpad.loopexit.split-lp67, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt64TypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %i.c) #44
          to label %bb.c unwind label %bb.ak, !dbg !166398

bb.k:                                             ; preds = %bb.m, %bb.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.l:                                             ; preds = %bb.i
  %i.q = load i64, ptr %i.a, align 8, !dbg !166397, !range !3513, !noundef !3468
  %i.r = trunc nuw i64 %i.q to i1, !dbg !166399
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !166400
  %i.t = load i64, ptr %i.s, align 8, !dbg !166400, !range !3514, !noundef !3468 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !166400 ; 2 uses
  br i1 %i.r, label %bb.m, label %bb.n, !dbg !166399, !prof !3515

bb.m:                                             ; preds = %bb.l
  %i.v = load i64, ptr %i.u, align 8, !dbg !166401
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.t, i64 %i.v) #43
          to label %bb.aa unwind label %bb.k, !dbg !166402

bb.n:                                             ; preds = %bb.l
  %i.w = load ptr, ptr %i.u, align 8, !dbg !166403, !nonnull !3468, !noundef !3468
  %i.x = icmp samesign ule i64 %3, %i.t, !dbg !166404
  call void @llvm.assume(i1 %i.x), !dbg !166405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !166406
  store i64 %i.t, ptr %i.b, align 8, !dbg !166407
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !166407 ; 2 uses
  store ptr %i.w, ptr %i.y, align 8, !dbg !166407
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !166407 ; 3 uses
  store i64 0, ptr %i.z, align 8, !dbg !166408
  %i.aa = icmp eq i64 %3, 0, !dbg !166409
  br i1 %i.aa, label %._crit_edge, label %.lr.ph, !dbg !166410

.lr.ph:                                           ; preds = %bb.n
  %i.ab = sub i64 %.val37, %.val
  %i.ac = uitofp i64 %i.ab to double              ; 2 uses
  %i.ad = fadd nnan double %i.ac, -1.000000e+00
  %i.ae = uitofp i64 %.val to double
  %i.af = add i64 %.val37, -1
  br label %bb.o, !dbg !166410

bb.o:                                             ; preds = %.lr.ph, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit
  %.sroa.02.047 = phi ptr [ %2, %.lr.ph ], [ %i.ag, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.02.047, i64 8, !dbg !166411 ; 2 uses
  %i.ah = load double, ptr %.sroa.02.047, align 8, !dbg !166412, !noundef !3468 ; 2 uses
  %i.ai = fmul double %i.ad, %i.ah, !dbg !166413
  %i.aj = fadd double %i.ai, %i.ae, !dbg !166413  ; 5 uses
  switch i8 %4, label %default.unreachable [
    i8 0, label %bb.p
    i8 1, label %bb.q
    i8 2, label %bb.r
    i8 3, label %bb.q
    i8 4, label %bb.q
    i8 5, label %bb.s
  ], !dbg !166414

default.unreachable:                              ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.ak = call double @llvm.round.f64(double %i.aj), !dbg !166415
  %i.al = call i64 @llvm.fptoui.sat.i64.f64(double %i.ak), !dbg !166416
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !166417

bb.q:                                             ; preds = %bb.o, %bb.o, %bb.o
  %i.am = call i64 @llvm.fptoui.sat.i64.f64(double %i.aj), !dbg !166418
  %.pre.i = call double @llvm.ceil.f64(double %i.aj), !dbg !166419
  %.pre7.i = call i64 @llvm.fptoui.sat.i64.f64(double %.pre.i), !dbg !166420
  br label %bb.t, !dbg !166421

bb.r:                                             ; preds = %bb.o
  %i.an = call double @llvm.ceil.f64(double %i.aj), !dbg !166422
  %i.ao = call i64 @llvm.fptoui.sat.i64.f64(double %i.an), !dbg !166423 ; 2 uses
  br label %bb.t, !dbg !166424

bb.s:                                             ; preds = %bb.o
  %i.ap = fmul double %i.ah, %i.ac, !dbg !166425
  %i.aq = call double @llvm.ceil.f64(double %i.ap), !dbg !166426
  %i.ar = fadd double %i.aq, -1.000000e+00, !dbg !166427
  %i.as = call nsz double @llvm.maximumnum.f64(double %i.ar, double 0.000000e+00), !dbg !166428
  %i.at = call i64 @llvm.fptoui.sat.i64.f64(double %i.as), !dbg !166427
  %i.au = add i64 %i.at, %.val, !dbg !166427
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !166417

bb.t:                                             ; preds = %bb.r, %bb.q
  %.pre-phi8.i = phi i64 [ %i.ao, %bb.r ], [ %.pre7.i, %bb.q ], !dbg !166420
  %.sroa.0.0.i = phi i64 [ %i.ao, %bb.r ], [ %i.am, %bb.q ], !dbg !166429
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i, i64 %i.af), !dbg !166430 ; 2 uses
  %i.av = icmp eq i64 %.pre-phi8.i, %.sroa.0.0.i.i, !dbg !166431
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !166432

._crit_edge:                                      ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit, %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !166433
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !166434
  store i64 18, ptr %0, align 8, !dbg !166433
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !166435
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt64TypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %i.c)
          to label %bb.al unwind label %bb.d, !dbg !166398

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ad, %bb.ae, %bb.x, %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, %.loopexit42.invoke
  %lpad.loopexit.split-lp67 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB4_6option6OptiondEEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 dereferenceable(24) %i.b) #44
          to label %bb.j unwind label %bb.ak, !dbg !166435

_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit: ; preds = %bb.t, %bb.s, %bb.p
  %.sink13.i = phi i64 [ %i.al, %bb.p ], [ %i.au, %bb.s ], [ %.sroa.0.0.i.i, %bb.t ] ; 4 uses
  %.sink11.i = phi double [ 0.000000e+00, %bb.p ], [ 0.000000e+00, %bb.s ], [ %i.aj, %bb.t ]
  %.sink.i = phi i1 [ true, %bb.p ], [ true, %bb.s ], [ %i.av, %bb.t ] ; 2 uses
  %i.ax = invoke fastcc { i64, i64 } @_RNvMs_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB4_12ChunkedArrayNtNtB6_9datatypes10UInt64TypeE3getB6_(ptr noundef nonnull align 8 %i.c, i64 noundef %.sink13.i)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !166436 ; 2 uses

bb.u:                                             ; preds = %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit
  %i.ay = extractvalue { i64, i64 } %i.ax, 0, !dbg !166437 ; 2 uses
  %i.az = trunc nuw i64 %i.ay to i1, !dbg !166438 ; 5 uses
  %i.ba = extractvalue { i64, i64 } %i.ax, 1, !dbg !166438
  %i.bb = uitofp i64 %i.ba to double, !dbg !166438 ; 8 uses
  %.sroa.9.0 = select i1 %i.az, double %i.bb, double undef, !dbg !166438 ; 3 uses
  switch i8 %4, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit [
    i8 3, label %bb.v
    i8 4, label %bb.w
  ], !dbg !166439

bb.v:                                             ; preds = %bb.u
  br i1 %.sink.i, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.x, !dbg !166440

bb.w:                                             ; preds = %bb.u
  br i1 %.sink.i, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.ae, !dbg !166431

bb.x:                                             ; preds = %bb.v
  %i.bc = add i64 %.sink13.i, 1, !dbg !166441
  %i.bd = invoke fastcc { i64, i64 } @_RNvMs_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB4_12ChunkedArrayNtNtB6_9datatypes10UInt64TypeE3getB6_(ptr noundef nonnull align 8 %i.c, i64 noundef %i.bc)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !166442 ; 2 uses

bb.y:                                             ; preds = %bb.x
  %i.be = extractvalue { i64, i64 } %i.bd, 0, !dbg !166443
  %i.bf = trunc nuw i64 %i.be to i1, !dbg !166444
  br i1 %i.bf, label %bb.ab, label %bb.z, !dbg !166444, !prof !3738

bb.z:                                             ; preds = %bb.y
  br i1 %i.az, label %.loopexit42.invoke, label %.loopexit43, !dbg !166445

.loopexit43:                                      ; preds = %bb.ab, %bb.z
  br label %.loopexit42.invoke, !dbg !166446

bb.aa:                                            ; preds = %bb.m
  unreachable

bb.ab:                                            ; preds = %bb.y
  br i1 %i.az, label %bb.ac, label %.loopexit43, !dbg !166445, !prof !3738

bb.ac:                                            ; preds = %bb.ab
  %i.bg = extractvalue { i64, i64 } %i.bd, 1, !dbg !166443
  %i.bh = uitofp i64 %i.bg to double, !dbg !166447 ; 2 uses
  %i.bi = fcmp oeq double %i.bb, %i.bh, !dbg !166448
  %i.bj = fadd nnan double %i.bb, %i.bh, !dbg !166449
  %i.bk = fmul nnan double %i.bj, 5.000000e-01, !dbg !166449
  %.sroa.0.0.i39 = select i1 %i.bi, double %i.bb, double %i.bk, !dbg !166449
  br label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, !dbg !166450

_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit: ; preds = %bb.aj, %bb.ai, %bb.ac, %bb.w, %bb.v, %bb.u
  %.sroa.9.1 = phi double [ %.sroa.9.0, %bb.u ], [ %.sroa.9.0, %bb.v ], [ %.sroa.0.0.i39, %bb.ac ], [ %.sroa.9.0, %bb.w ], [ %i.cf, %bb.aj ], [ %i.bb, %bb.ai ], !dbg !166451
  %i.bl = load i64, ptr %i.z, align 8, !dbg !166452, !alias.scope !166375, !noundef !3468 ; 3 uses
  %i.bm = load i64, ptr %i.b, align 8, !dbg !166453, !range !3548, !alias.scope !166375, !noundef !3468
  %i.bn = icmp eq i64 %i.bl, %i.bm, !dbg !166454
  br i1 %i.bn, label %bb.ad, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit, !dbg !166454

bb.ad:                                            ; preds = %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8grow_oneCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !166455

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.ad, %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit
  %i.bo = load ptr, ptr %i.y, align 8, !dbg !166456, !alias.scope !166375, !nonnull !3468, !noundef !3468
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %i.bl, !dbg !166457 ; 2 uses
  store i64 %i.ay, ptr %i.bp, align 8, !dbg !166458
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8, !dbg !166458
  store double %.sroa.9.1, ptr %i.bq, align 8, !dbg !166458
  %i.br = add i64 %i.bl, 1, !dbg !166459
  store i64 %i.br, ptr %i.z, align 8, !dbg !166408
  %i.bs = icmp eq ptr %i.ag, %i.e, !dbg !166409
  br i1 %i.bs, label %._crit_edge, label %bb.o, !dbg !166410

bb.ae:                                            ; preds = %bb.w
  %i.bt = add i64 %.sink13.i, 1, !dbg !166460
  %i.bu = invoke fastcc { i64, i64 } @_RNvMs_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB4_12ChunkedArrayNtNtB6_9datatypes10UInt64TypeE3getB6_(ptr noundef nonnull align 8 %i.c, i64 noundef %i.bt)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !166461 ; 2 uses

bb.af:                                            ; preds = %bb.ae
  %i.bv = extractvalue { i64, i64 } %i.bu, 0, !dbg !166462
  %i.bw = trunc nuw i64 %i.bv to i1, !dbg !166463
  br i1 %i.bw, label %bb.ah, label %bb.ag, !dbg !166463, !prof !3738

bb.ag:                                            ; preds = %bb.af
  br i1 %i.az, label %.loopexit42.invoke, label %.loopexit42, !dbg !166464

.loopexit42:                                      ; preds = %bb.ah, %bb.ag
  br label %.loopexit42.invoke, !dbg !166465

.loopexit42.invoke:                               ; preds = %bb.ag, %bb.z, %.loopexit43, %.loopexit42
  %i.bx = phi ptr [ @69, %.loopexit42 ], [ @66, %bb.z ], [ @67, %.loopexit43 ], [ @68, %bb.ag ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bx) #43
          to label %.loopexit42.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !166466

.loopexit42.cont:                                 ; preds = %.loopexit42.invoke
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.by = extractvalue { i64, i64 } %i.bu, 1, !dbg !166462
  %i.bz = uitofp i64 %i.by to double, !dbg !166467 ; 2 uses
  br i1 %i.az, label %bb.ai, label %.loopexit42, !dbg !166464, !prof !3738

bb.ai:                                            ; preds = %bb.ah
  %i.ca = fcmp oeq double %i.bb, %i.bz, !dbg !166468
  br i1 %i.ca, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.aj, !dbg !166469

bb.aj:                                            ; preds = %bb.ai
  %i.cb = uitofp i64 %.sink13.i to double, !dbg !166470
  %i.cc = fsub double %.sink11.i, %i.cb, !dbg !166471
  %i.cd = fsub nnan double %i.bz, %i.bb, !dbg !166472
  %i.ce = fmul double %i.cc, %i.cd, !dbg !166473
  %i.cf = fadd double %i.ce, %i.bb, !dbg !166474
  br label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, !dbg !166475

bb.ak:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.j, %bb.c
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !166476
  unreachable, !dbg !166476

bb.al:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !166398
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt64TypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %1), !dbg !166383
  br label %bb.am, !dbg !166383

bb.am:                                            ; preds = %bb.al, %bb.f
  ret void, !dbg !166477

bb.an:                                            ; preds = %bb.h
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !166478
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !166478
  store i64 18, ptr %0, align 8, !dbg !166478
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !166479
  br label %bb.f, !dbg !166389

bb.ao:                                            ; preds = %bb.c
  resume { ptr, i32 } %.pn35, !dbg !166476
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile17generic_quantilesNtNtBa_9datatypes11Float16TypeEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56) %1, ptr noalias noundef nonnull readonly align 8 captures(address) %2, i64 noundef range(i64 0, 1152921504606846976) %3, i8 noundef range(i8 0, 6) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !166480 !guid !166623 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [56 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %.idx = shl nuw nsw i64 %3, 3, !dbg !166657
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %.idx, !dbg !166657 ; 2 uses
  %i.f = icmp eq i64 %3, 0, !dbg !166658
  br i1 %i.f, label %._crit_edge90, label %.lr.ph89, !dbg !166630

bb.b:                                             ; preds = %.lr.ph89
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.087, i64 8, !dbg !166659 ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.e, !dbg !166658
  br i1 %i.h, label %._crit_edge90, label %.lr.ph89, !dbg !166630

bb.c:                                             ; preds = %bb.j, %bb.d
  %.pn35 = phi { ptr, i32 } [ %i.i, %bb.d ], [ %.pn, %bb.j ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float16TypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %1) #44
          to label %bb.bt unwind label %bb.bp, !dbg !166660

bb.d:                                             ; preds = %._crit_edge, %bb.h, %bb.g
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.lr.ph89:                                         ; preds = %bb.a, %bb.b
  %.sroa.0.087 = phi ptr [ %i.g, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %i.j = load double, ptr %.sroa.0.087, align 8, !dbg !166661, !noundef !3468 ; 2 uses
  %i.k = fcmp oge double %i.j, 0.000000e+00, !dbg !166662
  %i.l = fcmp ole double %i.j, 1.000000e+00
  %spec.select.i = and i1 %i.k, %i.l, !dbg !166663
  br i1 %spec.select.i, label %bb.b, label %bb.e, !dbg !166664

bb.e:                                             ; preds = %.lr.ph89
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) @65, i64 72, i1 false), !dbg !166665
  br label %bb.f, !dbg !166666

bb.f:                                             ; preds = %bb.bs, %bb.e
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float16TypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %1), !dbg !166660
  br label %bb.br, !dbg !166660

._crit_edge90:                                    ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !166667
  %.val = load i64, ptr %i.m, align 8, !dbg !166667, !noundef !3468 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !166668
  %.val37 = load i64, ptr %i.n, align 8, !dbg !166668, !noundef !3468 ; 3 uses
  %i.o = icmp eq i64 %.val, %.val37, !dbg !166669
  br i1 %i.o, label %bb.h, label %bb.g, !dbg !166669

bb.g:                                             ; preds = %._crit_edge90
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !166670
  invoke void @_RNvXNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sortINtB6_12ChunkedArrayNtNtB8_9datatypes11Float16TypeEINtB4_9ChunkSortB1h_E4sortB8_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.c, ptr noundef nonnull align 8 %1, i1 noundef zeroext false)
          to label %bb.i unwind label %bb.d, !dbg !166671

bb.h:                                             ; preds = %._crit_edge90
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !166634
  invoke void @_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemINtNtCscgRAwXFJnXP_4core6option6OptiondENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef 0, double undef, i64 noundef %3)
          to label %bb.bs unwind label %bb.d, !dbg !166672

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !166673
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !166674
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %3, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
          to label %bb.l unwind label %bb.k, !dbg !166674

bb.j:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.k
  %.pn = phi { ptr, i32 } [ %i.p, %bb.k ], [ %lpad.loopexit.split-lp91, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float16TypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %i.c) #44
          to label %bb.c unwind label %bb.bp, !dbg !166675

bb.k:                                             ; preds = %bb.m, %bb.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.l:                                             ; preds = %bb.i
  %i.q = load i64, ptr %i.a, align 8, !dbg !166674, !range !3513, !noundef !3468
  %i.r = trunc nuw i64 %i.q to i1, !dbg !166676
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !166677
  %i.t = load i64, ptr %i.s, align 8, !dbg !166677, !range !3514, !noundef !3468 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !166677 ; 2 uses
  br i1 %i.r, label %bb.m, label %bb.n, !dbg !166676, !prof !3515

bb.m:                                             ; preds = %bb.l
  %i.v = load i64, ptr %i.u, align 8, !dbg !166678
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.t, i64 %i.v) #43
          to label %bb.aw unwind label %bb.k, !dbg !166679

bb.n:                                             ; preds = %bb.l
  %i.w = load ptr, ptr %i.u, align 8, !dbg !166680, !nonnull !3468, !noundef !3468
  %i.x = icmp samesign ule i64 %3, %i.t, !dbg !166681
  call void @llvm.assume(i1 %i.x), !dbg !166682
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !166683
  store i64 %i.t, ptr %i.b, align 8, !dbg !166684
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !166684 ; 2 uses
  store ptr %i.w, ptr %i.y, align 8, !dbg !166684
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !166684 ; 3 uses
  store i64 0, ptr %i.z, align 8, !dbg !166685
  %i.aa = icmp eq i64 %3, 0, !dbg !166686
  br i1 %i.aa, label %._crit_edge, label %.lr.ph, !dbg !166687

.lr.ph:                                           ; preds = %bb.n
  %i.ab = sub i64 %.val37, %.val
  %i.ac = uitofp i64 %i.ab to double              ; 2 uses
  %i.ad = fadd nnan double %i.ac, -1.000000e+00
  %i.ae = uitofp i64 %.val to double
  %i.af = add i64 %.val37, -1
  br label %bb.o, !dbg !166687

bb.o:                                             ; preds = %.lr.ph, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit
  %.sroa.02.066 = phi ptr [ %2, %.lr.ph ], [ %i.ag, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.02.066, i64 8, !dbg !166688 ; 2 uses
  %i.ah = load double, ptr %.sroa.02.066, align 8, !dbg !166689, !noundef !3468 ; 2 uses
  %i.ai = fmul double %i.ad, %i.ah, !dbg !166690
  %i.aj = fadd double %i.ai, %i.ae, !dbg !166690  ; 5 uses
  switch i8 %4, label %default.unreachable [
    i8 0, label %bb.p
    i8 1, label %bb.q
    i8 2, label %bb.r
    i8 3, label %bb.q
    i8 4, label %bb.q
    i8 5, label %bb.s
  ], !dbg !166691

default.unreachable:                              ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.ak = call double @llvm.round.f64(double %i.aj), !dbg !166692
  %i.al = call i64 @llvm.fptoui.sat.i64.f64(double %i.ak), !dbg !166693
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !166694

bb.q:                                             ; preds = %bb.o, %bb.o, %bb.o
  %i.am = call i64 @llvm.fptoui.sat.i64.f64(double %i.aj), !dbg !166695
  %.pre.i = call double @llvm.ceil.f64(double %i.aj), !dbg !166696
  %.pre7.i = call i64 @llvm.fptoui.sat.i64.f64(double %.pre.i), !dbg !166697
  br label %bb.t, !dbg !166698

bb.r:                                             ; preds = %bb.o
  %i.an = call double @llvm.ceil.f64(double %i.aj), !dbg !166699
  %i.ao = call i64 @llvm.fptoui.sat.i64.f64(double %i.an), !dbg !166700 ; 2 uses
  br label %bb.t, !dbg !166701

bb.s:                                             ; preds = %bb.o
  %i.ap = fmul double %i.ah, %i.ac, !dbg !166702
  %i.aq = call double @llvm.ceil.f64(double %i.ap), !dbg !166703
  %i.ar = fadd double %i.aq, -1.000000e+00, !dbg !166704
  %i.as = call nsz double @llvm.maximumnum.f64(double %i.ar, double 0.000000e+00), !dbg !166705
  %i.at = call i64 @llvm.fptoui.sat.i64.f64(double %i.as), !dbg !166704
  %i.au = add i64 %i.at, %.val, !dbg !166704
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !166694

bb.t:                                             ; preds = %bb.r, %bb.q
  %.pre-phi8.i = phi i64 [ %i.ao, %bb.r ], [ %.pre7.i, %bb.q ], !dbg !166697
  %.sroa.0.0.i = phi i64 [ %i.ao, %bb.r ], [ %i.am, %bb.q ], !dbg !166706
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i, i64 %i.af), !dbg !166707 ; 2 uses
  %i.av = icmp eq i64 %.pre-phi8.i, %.sroa.0.0.i.i, !dbg !166708
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !166709

._crit_edge:                                      ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit, %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !166710
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !166711
  store i64 18, ptr %0, align 8, !dbg !166710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !166712
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float16TypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %i.c)
          to label %bb.bq unwind label %bb.d, !dbg !166675

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.split.i.i.i56, %bb.ay, %.split.i.i.i45, %.split.i.i.i, %bb.az, %bb.ai, %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, %.loopexit61.invoke
  %lpad.loopexit.split-lp91 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB4_6option6OptiondEEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 dereferenceable(24) %i.b) #44
          to label %bb.j unwind label %bb.bp, !dbg !166712

_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit: ; preds = %bb.t, %bb.s, %bb.p
  %.sink13.i = phi i64 [ %i.al, %bb.p ], [ %i.au, %bb.s ], [ %.sroa.0.0.i.i, %bb.t ] ; 4 uses
  %.sink11.i = phi double [ 0.000000e+00, %bb.p ], [ 0.000000e+00, %bb.s ], [ %i.aj, %bb.t ]
  %.sink.i = phi i1 [ true, %bb.p ], [ true, %bb.s ], [ %i.av, %bb.t ] ; 2 uses
  %i.ax = invoke fastcc { i16, i16 } @_RNvMs_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB4_12ChunkedArrayNtNtB6_9datatypes11Float16TypeE3getB6_(ptr noundef nonnull align 8 %i.c, i64 noundef %.sink13.i)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !166713 ; 2 uses

bb.u:                                             ; preds = %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit
  %i.ay = extractvalue { i16, i16 } %i.ax, 0, !dbg !166714
  %i.az = trunc i16 %i.ay to i1, !dbg !166715
  br i1 %i.az, label %bb.v, label %_RNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile17generic_quantilesNtNtBc_9datatypes11Float16TypeE0Bc_.exit, !dbg !166715

bb.v:                                             ; preds = %bb.u
  %i.ba = extractvalue { i16, i16 } %i.ax, 1, !dbg !166714 ; 6 uses
  %i.bb = load atomic i64, ptr @_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache5CACHE monotonic, align 8, !dbg !166716, !noalias !166647 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 0, !dbg !166717
  br i1 %i.bc, label %.split.i.i.i, label %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i.i, !dbg !166717, !prof !3515

.split.i.i.i:                                     ; preds = %bb.v
  %i.bd = invoke noundef i128 @_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache21detect_and_initialize()
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !166718

.noexc:                                           ; preds = %.split.i.i.i
  %i.be = and i128 %i.bd, 36028797018963968, !dbg !166719
  %.not1.i.i.i = icmp eq i128 %i.be, 0, !dbg !166719
  br i1 %.not1.i.i.i, label %bb.w, label %bb.af, !dbg !166720

_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i.i: ; preds = %bb.v
  %i.bf = and i64 %i.bb, 36028797018963968, !dbg !166721
  %.not.i.i.i = icmp eq i64 %i.bf, 0, !dbg !166721
  br i1 %.not.i.i.i, label %bb.w, label %bb.af, !dbg !166720

bb.w:                                             ; preds = %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i.i, %.noexc
  %i.bg = and i16 %i.ba, 32767, !dbg !166722
  %i.bh = icmp eq i16 %i.bg, 0, !dbg !166722
  br i1 %i.bh, label %bb.x, label %bb.y, !dbg !166722

bb.x:                                             ; preds = %bb.w
  %i.bi = zext i16 %i.ba to i64, !dbg !166723
  %i.bj = shl nuw i64 %i.bi, 48, !dbg !166723
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f64_fallback.exit.i.i.i, !dbg !166724

bb.y:                                             ; preds = %bb.w
  %i.bk = and i16 %i.ba, -32768, !dbg !166725
  %i.bl = zext i16 %i.bk to i64, !dbg !166725     ; 2 uses
  %i.bm = and i16 %i.ba, 31744, !dbg !166726      ; 3 uses
  %i.bn = and i16 %i.ba, 1023, !dbg !166727       ; 3 uses
  %i.bo = zext nneg i16 %i.bn to i64, !dbg !166727 ; 3 uses
  %i.bp = icmp eq i16 %i.bm, 31744, !dbg !166728
  br i1 %i.bp, label %bb.z, label %bb.aa, !dbg !166728

bb.z:                                             ; preds = %bb.y
  %i.bq = icmp eq i16 %i.bn, 0, !dbg !166729
  %i.br = shl nuw i64 %i.bl, 48, !dbg !166730     ; 2 uses
  br i1 %i.bq, label %bb.ab, label %bb.ac, !dbg !166729

bb.aa:                                            ; preds = %bb.y
  %i.bs = shl nuw i64 %i.bl, 48, !dbg !166731     ; 2 uses
  %i.bt = icmp eq i16 %i.bm, 0, !dbg !166732
  br i1 %i.bt, label %bb.ad, label %bb.ae, !dbg !166732

bb.ab:                                            ; preds = %bb.z
  %i.bu = or disjoint i64 %i.br, 9218868437227405312, !dbg !166733
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f64_fallback.exit.i.i.i, !dbg !166734

bb.ac:                                            ; preds = %bb.z
  %i.bv = shl nuw nsw i64 %i.bo, 42, !dbg !166735
  %i.bw = or disjoint i64 %i.br, %i.bv, !dbg !166736
  %i.bx = or i64 %i.bw, 9221120237041090560, !dbg !166736
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f64_fallback.exit.i.i.i, !dbg !166737

bb.ad:                                            ; preds = %bb.aa
  %i.by = call range(i16 6, 17) i16 @llvm.ctlz.i16(i16 %i.bn, i1 false), !dbg !166738
  %i.bz = zext nneg i16 %i.by to i32, !dbg !166738 ; 2 uses
  %i.ca = sub nuw nsw i32 1014, %i.bz, !dbg !166739
  %i.cb = zext nneg i32 %i.ca to i64, !dbg !166740
  %i.cc = shl nuw nsw i64 %i.cb, 52, !dbg !166740
  %i.cd = add nuw nsw i32 %i.bz, 37, !dbg !166741
  %i.ce = zext nneg i32 %i.cd to i64, !dbg !166742
  %i.cf = shl nuw nsw i64 %i.bo, %i.ce, !dbg !166742
  %i.cg = and i64 %i.cf, 4503599627370495, !dbg !166742
  %i.ch = or disjoint i64 %i.cg, %i.cc, !dbg !166743
  %i.ci = or disjoint i64 %i.ch, %i.bs, !dbg !166743
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f64_fallback.exit.i.i.i, !dbg !166744

bb.ae:                                            ; preds = %bb.aa
  %i.cj = lshr exact i16 %i.bm, 10, !dbg !166745
  %narrow.i.i.i.i = add nuw nsw i16 %i.cj, 1008, !dbg !166746
  %i.ck = zext nneg i16 %narrow.i.i.i.i to i64, !dbg !166746
  %i.cl = shl nuw nsw i64 %i.ck, 52, !dbg !166747
  %i.cm = shl nuw nsw i64 %i.bo, 42, !dbg !166748
  %i.cn = or disjoint i64 %i.cl, %i.cm, !dbg !166749
  %i.co = or disjoint i64 %i.cn, %i.bs, !dbg !166749
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f64_fallback.exit.i.i.i, !dbg !166750

_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f64_fallback.exit.i.i.i: ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.x
  %.sroa.0.0.i.i.i.i = phi i64 [ %i.bj, %bb.x ], [ %i.bu, %bb.ab ], [ %i.bx, %bb.ac ], [ %i.ci, %bb.ad ], [ %i.co, %bb.ae ], !dbg !166751
  %i.cp = bitcast i64 %.sroa.0.0.i.i.i.i to double, !dbg !166750
  br label %_RNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile17generic_quantilesNtNtBc_9datatypes11Float16TypeE0Bc_.exit, !dbg !166752

bb.af:                                            ; preds = %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i.i, %.noexc
  %i.cq = call fastcc noundef float @_RNvNtNtNtCshdiYQzaKNQ1_4half8binary164arch3x8619f16_to_f32_x86_f16c(i16 noundef %i.ba), !dbg !166753
  %i.cr = fpext float %i.cq to double, !dbg !166753
  br label %_RNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile17generic_quantilesNtNtBc_9datatypes11Float16TypeE0Bc_.exit, !dbg !166754

_RNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile17generic_quantilesNtNtBc_9datatypes11Float16TypeE0Bc_.exit: ; preds = %bb.af, %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f64_fallback.exit.i.i.i, %bb.u
  %.sroa.9.0 = phi double [ undef, %bb.u ], [ %i.cr, %bb.af ], [ %i.cp, %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f64_fallback.exit.i.i.i ], !dbg !166755 ; 10 uses
  %.sroa.05.0 = phi i64 [ 0, %bb.u ], [ 1, %bb.af ], [ 1, %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f64_fallback.exit.i.i.i ], !dbg !166755 ; 5 uses
  switch i8 %4, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit [
    i8 3, label %bb.ag
    i8 4, label %bb.ah
  ], !dbg !166756

bb.ag:                                            ; preds = %_RNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile17generic_quantilesNtNtBc_9datatypes11Float16TypeE0Bc_.exit
  br i1 %.sink.i, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.ai, !dbg !166757

bb.ah:                                            ; preds = %_RNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile17generic_quantilesNtNtBc_9datatypes11Float16TypeE0Bc_.exit
  br i1 %.sink.i, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.az, !dbg !166708

bb.ai:                                            ; preds = %bb.ag
  %i.cs = add i64 %.sink13.i, 1, !dbg !166758
  %i.ct = invoke fastcc { i16, i16 } @_RNvMs_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB4_12ChunkedArrayNtNtB6_9datatypes11Float16TypeE3getB6_(ptr noundef nonnull align 8 %i.c, i64 noundef %i.cs)
          to label %bb.aj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !166759 ; 2 uses

bb.aj:                                            ; preds = %bb.ai
  %i.cu = extractvalue { i16, i16 } %i.ct, 0, !dbg !166760
  %i.cv = trunc i16 %i.cu to i1, !dbg !166761
  br i1 %i.cv, label %bb.ak, label %bb.av, !dbg !166761, !prof !3738

bb.ak:                                            ; preds = %bb.aj
  %i.cw = extractvalue { i16, i16 } %i.ct, 1, !dbg !166760 ; 6 uses
  %i.cx = load atomic i64, ptr @_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache5CACHE monotonic, align 8, !dbg !166762, !noalias !166649 ; 2 uses
end_hunk_2
begin_hunk_3_@_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile17generic_quantilesNtNtBa_9datatypes11Float16TypeEBa_:bb.a
  %i.gc = or i64 %i.gb, 9221120237041090560, !dbg !166840
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f64_fallback.exit.i.i.i54, !dbg !166841

bb.bj:                                            ; preds = %bb.bg
  %i.gd = call range(i16 6, 17) i16 @llvm.ctlz.i16(i16 %i.fs, i1 false), !dbg !166842
  %i.ge = zext nneg i16 %i.gd to i32, !dbg !166842 ; 2 uses
  %i.gf = sub nuw nsw i32 1014, %i.ge, !dbg !166843
  %i.gg = zext nneg i32 %i.gf to i64, !dbg !166844
  %i.gh = shl nuw nsw i64 %i.gg, 52, !dbg !166844
  %i.gi = add nuw nsw i32 %i.ge, 37, !dbg !166845
  %i.gj = zext nneg i32 %i.gi to i64, !dbg !166846
  %i.gk = shl nuw nsw i64 %i.ft, %i.gj, !dbg !166846
  %i.gl = and i64 %i.gk, 4503599627370495, !dbg !166846
  %i.gm = or disjoint i64 %i.gl, %i.gh, !dbg !166847
  %i.gn = or disjoint i64 %i.gm, %i.fx, !dbg !166847
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f64_fallback.exit.i.i.i54, !dbg !166848

bb.bk:                                            ; preds = %bb.bg
  %i.go = lshr exact i16 %i.fr, 10, !dbg !166849
  %narrow.i.i.i.i53 = add nuw nsw i16 %i.go, 1008, !dbg !166850
  %i.gp = zext nneg i16 %narrow.i.i.i.i53 to i64, !dbg !166850
  %i.gq = shl nuw nsw i64 %i.gp, 52, !dbg !166851
  %i.gr = shl nuw nsw i64 %i.ft, 42, !dbg !166852
  %i.gs = or disjoint i64 %i.gq, %i.gr, !dbg !166853
  %i.gt = or disjoint i64 %i.gs, %i.fx, !dbg !166853
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f64_fallback.exit.i.i.i54, !dbg !166854

_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f64_fallback.exit.i.i.i54: ; preds = %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bd
  %.sroa.0.0.i.i.i.i55 = phi i64 [ %i.fo, %bb.bd ], [ %i.fz, %bb.bh ], [ %i.gc, %bb.bi ], [ %i.gn, %bb.bj ], [ %i.gt, %bb.bk ], !dbg !166855
  %i.gu = bitcast i64 %.sroa.0.0.i.i.i.i55 to double, !dbg !166854
  br label %_RNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile17generic_quantilesNtNtBc_9datatypes11Float16TypeEs0_0Bc_.exit, !dbg !166856

bb.bl:                                            ; preds = %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i.i50, %.noexc58
  %i.gv = call fastcc noundef float @_RNvNtNtNtCshdiYQzaKNQ1_4half8binary164arch3x8619f16_to_f32_x86_f16c(i16 noundef %i.ff), !dbg !166857
  %i.gw = fpext float %i.gv to double, !dbg !166857
  br label %_RNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile17generic_quantilesNtNtBc_9datatypes11Float16TypeEs0_0Bc_.exit, !dbg !166858

bb.bm:                                            ; preds = %bb.ba
  %i.gx = trunc nuw i64 %.sroa.05.0 to i1, !dbg !166859
  br i1 %i.gx, label %.loopexit61.invoke, label %.loopexit61, !dbg !166859

.loopexit61:                                      ; preds = %_RNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile17generic_quantilesNtNtBc_9datatypes11Float16TypeEs0_0Bc_.exit, %bb.bm
  br label %.loopexit61.invoke, !dbg !166860

.loopexit61.invoke:                               ; preds = %bb.bm, %bb.av, %.loopexit62, %.loopexit61
  %i.gy = phi ptr [ @69, %.loopexit61 ], [ @66, %bb.av ], [ @67, %.loopexit62 ], [ @68, %bb.bm ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gy) #43
          to label %.loopexit61.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !166861

.loopexit61.cont:                                 ; preds = %.loopexit61.invoke
  unreachable

_RNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile17generic_quantilesNtNtBc_9datatypes11Float16TypeEs0_0Bc_.exit: ; preds = %bb.bl, %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f64_fallback.exit.i.i.i54
  %.sroa.0.0.i.i.i52 = phi double [ %i.gw, %bb.bl ], [ %i.gu, %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f64_fallback.exit.i.i.i54 ], !dbg !166862 ; 2 uses
  %i.gz = trunc nuw i64 %.sroa.05.0 to i1, !dbg !166859
  br i1 %i.gz, label %bb.bn, label %.loopexit61, !dbg !166859, !prof !3738

bb.bn:                                            ; preds = %_RNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile17generic_quantilesNtNtBc_9datatypes11Float16TypeEs0_0Bc_.exit
  %i.ha = fcmp oeq double %.sroa.9.0, %.sroa.0.0.i.i.i52, !dbg !166863
  br i1 %i.ha, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.bo, !dbg !166864

bb.bo:                                            ; preds = %bb.bn
  %i.hb = uitofp i64 %.sink13.i to double, !dbg !166865
  %i.hc = fsub double %.sink11.i, %i.hb, !dbg !166866
  %i.hd = fsub double %.sroa.0.0.i.i.i52, %.sroa.9.0, !dbg !166867
  %i.he = fmul double %i.hc, %i.hd, !dbg !166868
  %i.hf = fadd double %.sroa.9.0, %i.he, !dbg !166869
  br label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, !dbg !166870

bb.bp:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.j, %bb.c
  %i.hg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !166871
  unreachable, !dbg !166871

bb.bq:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !166675
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float16TypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %1), !dbg !166660
  br label %bb.br, !dbg !166660

bb.br:                                            ; preds = %bb.bq, %bb.f
  ret void, !dbg !166872

bb.bs:                                            ; preds = %bb.h
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !166873
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hh, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !166873
  store i64 18, ptr %0, align 8, !dbg !166873
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !166874
  br label %bb.f, !dbg !166666

bb.bt:                                            ; preds = %bb.c
  resume { ptr, i32 } %.pn35, !dbg !166871
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile17generic_quantilesNtNtBa_9datatypes11Float32TypeEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56) %1, ptr noalias noundef nonnull readonly align 8 captures(address) %2, i64 noundef range(i64 0, 1152921504606846976) %3, i8 noundef range(i8 0, 6) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !166875 !guid !166960 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [56 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %.idx = shl nuw nsw i64 %3, 3, !dbg !166991
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %.idx, !dbg !166991 ; 2 uses
  %i.f = icmp eq i64 %3, 0, !dbg !166992
  br i1 %i.f, label %._crit_edge66, label %.lr.ph65, !dbg !166967

bb.b:                                             ; preds = %.lr.ph65
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.063, i64 8, !dbg !166993 ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.e, !dbg !166992
  br i1 %i.h, label %._crit_edge66, label %.lr.ph65, !dbg !166967

bb.c:                                             ; preds = %bb.j, %bb.d
  %.pn35 = phi { ptr, i32 } [ %i.i, %bb.d ], [ %.pn, %bb.j ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float32TypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %1) #44
          to label %bb.ao unwind label %bb.ak, !dbg !166994

bb.d:                                             ; preds = %._crit_edge, %bb.h, %bb.g
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.lr.ph65:                                         ; preds = %bb.a, %bb.b
  %.sroa.0.063 = phi ptr [ %i.g, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %i.j = load double, ptr %.sroa.0.063, align 8, !dbg !166995, !noundef !3468 ; 2 uses
  %i.k = fcmp oge double %i.j, 0.000000e+00, !dbg !166996
  %i.l = fcmp ole double %i.j, 1.000000e+00
  %spec.select.i = and i1 %i.k, %i.l, !dbg !166997
  br i1 %spec.select.i, label %bb.b, label %bb.e, !dbg !166998

bb.e:                                             ; preds = %.lr.ph65
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) @65, i64 72, i1 false), !dbg !166999
  br label %bb.f, !dbg !167000

bb.f:                                             ; preds = %bb.an, %bb.e
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float32TypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %1), !dbg !166994
  br label %bb.am, !dbg !166994

._crit_edge66:                                    ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !167001
  %.val = load i64, ptr %i.m, align 8, !dbg !167001, !noundef !3468 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !167002
  %.val37 = load i64, ptr %i.n, align 8, !dbg !167002, !noundef !3468 ; 3 uses
  %i.o = icmp eq i64 %.val, %.val37, !dbg !167003
  br i1 %i.o, label %bb.h, label %bb.g, !dbg !167003

bb.g:                                             ; preds = %._crit_edge66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !167004
  invoke void @_RNvXNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sortINtB6_12ChunkedArrayNtNtB8_9datatypes11Float32TypeEINtB4_9ChunkSortB1h_E4sortB8_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.c, ptr noundef nonnull align 8 %1, i1 noundef zeroext false)
          to label %bb.i unwind label %bb.d, !dbg !167005

bb.h:                                             ; preds = %._crit_edge66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !166971
  invoke void @_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemINtNtCscgRAwXFJnXP_4core6option6OptiondENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef 0, double undef, i64 noundef %3)
          to label %bb.an unwind label %bb.d, !dbg !167006

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !167007
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !167008
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %3, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
          to label %bb.l unwind label %bb.k, !dbg !167008

bb.j:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.k
  %.pn = phi { ptr, i32 } [ %i.p, %bb.k ], [ %lpad.loopexit.split-lp67, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float32TypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %i.c) #44
          to label %bb.c unwind label %bb.ak, !dbg !167009

bb.k:                                             ; preds = %bb.m, %bb.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.l:                                             ; preds = %bb.i
  %i.q = load i64, ptr %i.a, align 8, !dbg !167008, !range !3513, !noundef !3468
  %i.r = trunc nuw i64 %i.q to i1, !dbg !167010
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !167011
  %i.t = load i64, ptr %i.s, align 8, !dbg !167011, !range !3514, !noundef !3468 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !167011 ; 2 uses
  br i1 %i.r, label %bb.m, label %bb.n, !dbg !167010, !prof !3515

bb.m:                                             ; preds = %bb.l
  %i.v = load i64, ptr %i.u, align 8, !dbg !167012
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.t, i64 %i.v) #43
          to label %bb.aa unwind label %bb.k, !dbg !167013

bb.n:                                             ; preds = %bb.l
  %i.w = load ptr, ptr %i.u, align 8, !dbg !167014, !nonnull !3468, !noundef !3468
  %i.x = icmp samesign ule i64 %3, %i.t, !dbg !167015
  call void @llvm.assume(i1 %i.x), !dbg !167016
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !167017
  store i64 %i.t, ptr %i.b, align 8, !dbg !167018
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !167018 ; 2 uses
  store ptr %i.w, ptr %i.y, align 8, !dbg !167018
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !167018 ; 3 uses
  store i64 0, ptr %i.z, align 8, !dbg !167019
  %i.aa = icmp eq i64 %3, 0, !dbg !167020
  br i1 %i.aa, label %._crit_edge, label %.lr.ph, !dbg !167021

.lr.ph:                                           ; preds = %bb.n
  %i.ab = sub i64 %.val37, %.val
  %i.ac = uitofp i64 %i.ab to double              ; 2 uses
  %i.ad = fadd nnan double %i.ac, -1.000000e+00
  %i.ae = uitofp i64 %.val to double
  %i.af = add i64 %.val37, -1
  br label %bb.o, !dbg !167021

bb.o:                                             ; preds = %.lr.ph, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit
  %.sroa.02.047 = phi ptr [ %2, %.lr.ph ], [ %i.ag, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.02.047, i64 8, !dbg !167022 ; 2 uses
  %i.ah = load double, ptr %.sroa.02.047, align 8, !dbg !167023, !noundef !3468 ; 2 uses
  %i.ai = fmul double %i.ad, %i.ah, !dbg !167024
  %i.aj = fadd double %i.ai, %i.ae, !dbg !167024  ; 5 uses
  switch i8 %4, label %default.unreachable [
    i8 0, label %bb.p
    i8 1, label %bb.q
    i8 2, label %bb.r
    i8 3, label %bb.q
    i8 4, label %bb.q
    i8 5, label %bb.s
  ], !dbg !167025

default.unreachable:                              ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.ak = call double @llvm.round.f64(double %i.aj), !dbg !167026
  %i.al = call i64 @llvm.fptoui.sat.i64.f64(double %i.ak), !dbg !167027
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !167028

bb.q:                                             ; preds = %bb.o, %bb.o, %bb.o
  %i.am = call i64 @llvm.fptoui.sat.i64.f64(double %i.aj), !dbg !167029
  %.pre.i = call double @llvm.ceil.f64(double %i.aj), !dbg !167030
  %.pre7.i = call i64 @llvm.fptoui.sat.i64.f64(double %.pre.i), !dbg !167031
  br label %bb.t, !dbg !167032

bb.r:                                             ; preds = %bb.o
  %i.an = call double @llvm.ceil.f64(double %i.aj), !dbg !167033
  %i.ao = call i64 @llvm.fptoui.sat.i64.f64(double %i.an), !dbg !167034 ; 2 uses
  br label %bb.t, !dbg !167035

bb.s:                                             ; preds = %bb.o
  %i.ap = fmul double %i.ah, %i.ac, !dbg !167036
  %i.aq = call double @llvm.ceil.f64(double %i.ap), !dbg !167037
  %i.ar = fadd double %i.aq, -1.000000e+00, !dbg !167038
  %i.as = call nsz double @llvm.maximumnum.f64(double %i.ar, double 0.000000e+00), !dbg !167039
  %i.at = call i64 @llvm.fptoui.sat.i64.f64(double %i.as), !dbg !167038
  %i.au = add i64 %i.at, %.val, !dbg !167038
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !167028

bb.t:                                             ; preds = %bb.r, %bb.q
  %.pre-phi8.i = phi i64 [ %i.ao, %bb.r ], [ %.pre7.i, %bb.q ], !dbg !167031
  %.sroa.0.0.i = phi i64 [ %i.ao, %bb.r ], [ %i.am, %bb.q ], !dbg !167040
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i, i64 %i.af), !dbg !167041 ; 2 uses
  %i.av = icmp eq i64 %.pre-phi8.i, %.sroa.0.0.i.i, !dbg !167042
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !167043

._crit_edge:                                      ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit, %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !167044
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !167045
  store i64 18, ptr %0, align 8, !dbg !167044
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !167046
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float32TypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %i.c)
          to label %bb.al unwind label %bb.d, !dbg !167009

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ad, %bb.ae, %bb.x, %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, %.loopexit42.invoke
  %lpad.loopexit.split-lp67 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB4_6option6OptiondEEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 dereferenceable(24) %i.b) #44
          to label %bb.j unwind label %bb.ak, !dbg !167046

_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit: ; preds = %bb.t, %bb.s, %bb.p
  %.sink13.i = phi i64 [ %i.al, %bb.p ], [ %i.au, %bb.s ], [ %.sroa.0.0.i.i, %bb.t ] ; 4 uses
  %.sink11.i = phi double [ 0.000000e+00, %bb.p ], [ 0.000000e+00, %bb.s ], [ %i.aj, %bb.t ]
  %.sink.i = phi i1 [ true, %bb.p ], [ true, %bb.s ], [ %i.av, %bb.t ] ; 2 uses
  %i.ax = invoke fastcc { i32, float } @_RNvMs_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB4_12ChunkedArrayNtNtB6_9datatypes11Float32TypeE3getB6_(ptr noundef nonnull align 8 %i.c, i64 noundef %.sink13.i)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !167047 ; 2 uses

bb.u:                                             ; preds = %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit
  %i.ay = extractvalue { i32, float } %i.ax, 0, !dbg !167048 ; 2 uses
  %i.az = trunc i32 %i.ay to i1, !dbg !167049     ; 5 uses
  %i.ba = extractvalue { i32, float } %i.ax, 1, !dbg !167049 ; 3 uses
  %i.bb = fpext float %i.ba to double, !dbg !167049 ; 6 uses
  %.sroa.9.0 = select i1 %i.az, double %i.bb, double undef, !dbg !167049 ; 3 uses
  %.mask = and i32 %i.ay, 1, !dbg !167049
  %.sroa.05.0 = zext nneg i32 %.mask to i64, !dbg !167049
  switch i8 %4, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit [
    i8 3, label %bb.v
    i8 4, label %bb.w
  ], !dbg !167050

bb.v:                                             ; preds = %bb.u
  br i1 %.sink.i, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.x, !dbg !167051

bb.w:                                             ; preds = %bb.u
  br i1 %.sink.i, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.ae, !dbg !167042

bb.x:                                             ; preds = %bb.v
  %i.bc = add i64 %.sink13.i, 1, !dbg !167052
  %i.bd = invoke fastcc { i32, float } @_RNvMs_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB4_12ChunkedArrayNtNtB6_9datatypes11Float32TypeE3getB6_(ptr noundef nonnull align 8 %i.c, i64 noundef %i.bc)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !167053 ; 2 uses

bb.y:                                             ; preds = %bb.x
  %i.be = extractvalue { i32, float } %i.bd, 0, !dbg !167054
  %i.bf = trunc i32 %i.be to i1, !dbg !167055
  br i1 %i.bf, label %bb.ab, label %bb.z, !dbg !167055, !prof !3738

bb.z:                                             ; preds = %bb.y
  br i1 %i.az, label %.loopexit42.invoke, label %.loopexit43, !dbg !167056

.loopexit43:                                      ; preds = %bb.ab, %bb.z
  br label %.loopexit42.invoke, !dbg !167057

bb.aa:                                            ; preds = %bb.m
  unreachable

bb.ab:                                            ; preds = %bb.y
  br i1 %i.az, label %bb.ac, label %.loopexit43, !dbg !167056, !prof !3738

bb.ac:                                            ; preds = %bb.ab
  %i.bg = extractvalue { i32, float } %i.bd, 1, !dbg !167054 ; 2 uses
  %i.bh = fpext float %i.bg to double, !dbg !167058
  %i.bi = fcmp oeq float %i.ba, %i.bg, !dbg !167059
  %i.bj = fadd double %i.bb, %i.bh, !dbg !167060
  %i.bk = fmul double %i.bj, 5.000000e-01, !dbg !167060
  %.sroa.0.0.i39 = select i1 %i.bi, double %i.bb, double %i.bk, !dbg !167060
  br label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, !dbg !167061

_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit: ; preds = %bb.aj, %bb.ai, %bb.ac, %bb.w, %bb.v, %bb.u
  %.sroa.9.1 = phi double [ %.sroa.9.0, %bb.u ], [ %.sroa.9.0, %bb.v ], [ %.sroa.0.0.i39, %bb.ac ], [ %.sroa.9.0, %bb.w ], [ %i.cf, %bb.aj ], [ %i.bb, %bb.ai ], !dbg !167062
  %i.bl = load i64, ptr %i.z, align 8, !dbg !167063, !alias.scope !166986, !noundef !3468 ; 3 uses
  %i.bm = load i64, ptr %i.b, align 8, !dbg !167064, !range !3548, !alias.scope !166986, !noundef !3468
  %i.bn = icmp eq i64 %i.bl, %i.bm, !dbg !167065
  br i1 %i.bn, label %bb.ad, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit, !dbg !167065

bb.ad:                                            ; preds = %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8grow_oneCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !167066

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.ad, %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit
  %i.bo = load ptr, ptr %i.y, align 8, !dbg !167067, !alias.scope !166986, !nonnull !3468, !noundef !3468
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %i.bl, !dbg !167068 ; 2 uses
  store i64 %.sroa.05.0, ptr %i.bp, align 8, !dbg !167069
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8, !dbg !167069
  store double %.sroa.9.1, ptr %i.bq, align 8, !dbg !167069
  %i.br = add i64 %i.bl, 1, !dbg !167070
  store i64 %i.br, ptr %i.z, align 8, !dbg !167019
  %i.bs = icmp eq ptr %i.ag, %i.e, !dbg !167020
  br i1 %i.bs, label %._crit_edge, label %bb.o, !dbg !167021

bb.ae:                                            ; preds = %bb.w
  %i.bt = add i64 %.sink13.i, 1, !dbg !167071
  %i.bu = invoke fastcc { i32, float } @_RNvMs_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB4_12ChunkedArrayNtNtB6_9datatypes11Float32TypeE3getB6_(ptr noundef nonnull align 8 %i.c, i64 noundef %i.bt)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !167072 ; 2 uses

bb.af:                                            ; preds = %bb.ae
  %i.bv = extractvalue { i32, float } %i.bu, 0, !dbg !167073
  %i.bw = trunc i32 %i.bv to i1, !dbg !167074
  br i1 %i.bw, label %bb.ah, label %bb.ag, !dbg !167074, !prof !3738

bb.ag:                                            ; preds = %bb.af
  br i1 %i.az, label %.loopexit42.invoke, label %.loopexit42, !dbg !167075

.loopexit42:                                      ; preds = %bb.ah, %bb.ag
  br label %.loopexit42.invoke, !dbg !167076

.loopexit42.invoke:                               ; preds = %bb.ag, %bb.z, %.loopexit43, %.loopexit42
  %i.bx = phi ptr [ @69, %.loopexit42 ], [ @66, %bb.z ], [ @67, %.loopexit43 ], [ @68, %bb.ag ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bx) #43
          to label %.loopexit42.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !167077

.loopexit42.cont:                                 ; preds = %.loopexit42.invoke
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.by = extractvalue { i32, float } %i.bu, 1, !dbg !167073 ; 2 uses
  %i.bz = fpext float %i.by to double, !dbg !167078
  br i1 %i.az, label %bb.ai, label %.loopexit42, !dbg !167075, !prof !3738

bb.ai:                                            ; preds = %bb.ah
  %i.ca = fcmp oeq float %i.ba, %i.by, !dbg !167079
  br i1 %i.ca, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.aj, !dbg !167080

bb.aj:                                            ; preds = %bb.ai
  %i.cb = uitofp i64 %.sink13.i to double, !dbg !167081
  %i.cc = fsub double %.sink11.i, %i.cb, !dbg !167082
  %i.cd = fsub double %i.bz, %i.bb, !dbg !167083
  %i.ce = fmul double %i.cc, %i.cd, !dbg !167084
  %i.cf = fadd double %i.ce, %i.bb, !dbg !167085
  br label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, !dbg !167086

bb.ak:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.j, %bb.c
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !167087
  unreachable, !dbg !167087

bb.al:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !167009
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float32TypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %1), !dbg !166994
  br label %bb.am, !dbg !166994

bb.am:                                            ; preds = %bb.al, %bb.f
  ret void, !dbg !167088

bb.an:                                            ; preds = %bb.h
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !167089
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !167089
  store i64 18, ptr %0, align 8, !dbg !167089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !167090
  br label %bb.f, !dbg !167000

bb.ao:                                            ; preds = %bb.c
  resume { ptr, i32 } %.pn35, !dbg !167087
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile17generic_quantilesNtNtBa_9datatypes11Float64TypeEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56) %1, ptr noalias noundef nonnull readonly align 8 captures(address) %2, i64 noundef range(i64 0, 1152921504606846976) %3, i8 noundef range(i8 0, 6) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !167091 !guid !167168 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [56 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %.idx = shl nuw nsw i64 %3, 3, !dbg !167199
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %.idx, !dbg !167199 ; 2 uses
  %i.f = icmp eq i64 %3, 0, !dbg !167200
  br i1 %i.f, label %._crit_edge66, label %.lr.ph65, !dbg !167175

bb.b:                                             ; preds = %.lr.ph65
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.063, i64 8, !dbg !167201 ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.e, !dbg !167200
  br i1 %i.h, label %._crit_edge66, label %.lr.ph65, !dbg !167175

bb.c:                                             ; preds = %bb.j, %bb.d
  %.pn35 = phi { ptr, i32 } [ %i.i, %bb.d ], [ %.pn, %bb.j ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float64TypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %1) #44
          to label %bb.ao unwind label %bb.ak, !dbg !167202

bb.d:                                             ; preds = %._crit_edge, %bb.h, %bb.g
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.lr.ph65:                                         ; preds = %bb.a, %bb.b
  %.sroa.0.063 = phi ptr [ %i.g, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %i.j = load double, ptr %.sroa.0.063, align 8, !dbg !167203, !noundef !3468 ; 2 uses
  %i.k = fcmp oge double %i.j, 0.000000e+00, !dbg !167204
  %i.l = fcmp ole double %i.j, 1.000000e+00
  %spec.select.i = and i1 %i.k, %i.l, !dbg !167205
  br i1 %spec.select.i, label %bb.b, label %bb.e, !dbg !167206

bb.e:                                             ; preds = %.lr.ph65
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) @65, i64 72, i1 false), !dbg !167207
  br label %bb.f, !dbg !167208

bb.f:                                             ; preds = %bb.an, %bb.e
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float64TypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %1), !dbg !167202
  br label %bb.am, !dbg !167202

._crit_edge66:                                    ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !167209
  %.val = load i64, ptr %i.m, align 8, !dbg !167209, !noundef !3468 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !167210
  %.val37 = load i64, ptr %i.n, align 8, !dbg !167210, !noundef !3468 ; 3 uses
  %i.o = icmp eq i64 %.val, %.val37, !dbg !167211
  br i1 %i.o, label %bb.h, label %bb.g, !dbg !167211

bb.g:                                             ; preds = %._crit_edge66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !167212
  invoke void @_RNvXNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sortINtB6_12ChunkedArrayNtNtB8_9datatypes11Float64TypeEINtB4_9ChunkSortB1h_E4sortB8_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.c, ptr noundef nonnull align 8 %1, i1 noundef zeroext false)
          to label %bb.i unwind label %bb.d, !dbg !167213

bb.h:                                             ; preds = %._crit_edge66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !167179
  invoke void @_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemINtNtCscgRAwXFJnXP_4core6option6OptiondENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef 0, double undef, i64 noundef %3)
          to label %bb.an unwind label %bb.d, !dbg !167214

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !167215
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !167216
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %3, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
          to label %bb.l unwind label %bb.k, !dbg !167216

bb.j:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.k
  %.pn = phi { ptr, i32 } [ %i.p, %bb.k ], [ %lpad.loopexit.split-lp67, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float64TypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %i.c) #44
          to label %bb.c unwind label %bb.ak, !dbg !167217

bb.k:                                             ; preds = %bb.m, %bb.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.l:                                             ; preds = %bb.i
  %i.q = load i64, ptr %i.a, align 8, !dbg !167216, !range !3513, !noundef !3468
  %i.r = trunc nuw i64 %i.q to i1, !dbg !167218
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !167219
  %i.t = load i64, ptr %i.s, align 8, !dbg !167219, !range !3514, !noundef !3468 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !167219 ; 2 uses
  br i1 %i.r, label %bb.m, label %bb.n, !dbg !167218, !prof !3515

bb.m:                                             ; preds = %bb.l
  %i.v = load i64, ptr %i.u, align 8, !dbg !167220
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.t, i64 %i.v) #43
          to label %bb.aa unwind label %bb.k, !dbg !167221

bb.n:                                             ; preds = %bb.l
  %i.w = load ptr, ptr %i.u, align 8, !dbg !167222, !nonnull !3468, !noundef !3468
  %i.x = icmp samesign ule i64 %3, %i.t, !dbg !167223
  call void @llvm.assume(i1 %i.x), !dbg !167224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !167225
  store i64 %i.t, ptr %i.b, align 8, !dbg !167226
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !167226 ; 2 uses
  store ptr %i.w, ptr %i.y, align 8, !dbg !167226
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !167226 ; 3 uses
  store i64 0, ptr %i.z, align 8, !dbg !167227
  %i.aa = icmp eq i64 %3, 0, !dbg !167228
  br i1 %i.aa, label %._crit_edge, label %.lr.ph, !dbg !167229

.lr.ph:                                           ; preds = %bb.n
  %i.ab = sub i64 %.val37, %.val
  %i.ac = uitofp i64 %i.ab to double              ; 2 uses
  %i.ad = fadd nnan double %i.ac, -1.000000e+00
  %i.ae = uitofp i64 %.val to double
  %i.af = add i64 %.val37, -1
  br label %bb.o, !dbg !167229

bb.o:                                             ; preds = %.lr.ph, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit
  %.sroa.02.047 = phi ptr [ %2, %.lr.ph ], [ %i.ag, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.02.047, i64 8, !dbg !167230 ; 2 uses
  %i.ah = load double, ptr %.sroa.02.047, align 8, !dbg !167231, !noundef !3468 ; 2 uses
  %i.ai = fmul double %i.ad, %i.ah, !dbg !167232
  %i.aj = fadd double %i.ai, %i.ae, !dbg !167232  ; 5 uses
  switch i8 %4, label %default.unreachable [
    i8 0, label %bb.p
    i8 1, label %bb.q
    i8 2, label %bb.r
    i8 3, label %bb.q
    i8 4, label %bb.q
    i8 5, label %bb.s
  ], !dbg !167233

default.unreachable:                              ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.ak = call double @llvm.round.f64(double %i.aj), !dbg !167234
  %i.al = call i64 @llvm.fptoui.sat.i64.f64(double %i.ak), !dbg !167235
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !167236

bb.q:                                             ; preds = %bb.o, %bb.o, %bb.o
  %i.am = call i64 @llvm.fptoui.sat.i64.f64(double %i.aj), !dbg !167237
  %.pre.i = call double @llvm.ceil.f64(double %i.aj), !dbg !167238
  %.pre7.i = call i64 @llvm.fptoui.sat.i64.f64(double %.pre.i), !dbg !167239
  br label %bb.t, !dbg !167240

bb.r:                                             ; preds = %bb.o
  %i.an = call double @llvm.ceil.f64(double %i.aj), !dbg !167241
  %i.ao = call i64 @llvm.fptoui.sat.i64.f64(double %i.an), !dbg !167242 ; 2 uses
  br label %bb.t, !dbg !167243

bb.s:                                             ; preds = %bb.o
  %i.ap = fmul double %i.ah, %i.ac, !dbg !167244
  %i.aq = call double @llvm.ceil.f64(double %i.ap), !dbg !167245
  %i.ar = fadd double %i.aq, -1.000000e+00, !dbg !167246
  %i.as = call nsz double @llvm.maximumnum.f64(double %i.ar, double 0.000000e+00), !dbg !167247
  %i.at = call i64 @llvm.fptoui.sat.i64.f64(double %i.as), !dbg !167246
  %i.au = add i64 %i.at, %.val, !dbg !167246
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !167236

bb.t:                                             ; preds = %bb.r, %bb.q
  %.pre-phi8.i = phi i64 [ %i.ao, %bb.r ], [ %.pre7.i, %bb.q ], !dbg !167239
  %.sroa.0.0.i = phi i64 [ %i.ao, %bb.r ], [ %i.am, %bb.q ], !dbg !167248
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i, i64 %i.af), !dbg !167249 ; 2 uses
  %i.av = icmp eq i64 %.pre-phi8.i, %.sroa.0.0.i.i, !dbg !167250
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !167251

._crit_edge:                                      ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit, %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !167252
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !167253
  store i64 18, ptr %0, align 8, !dbg !167252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !167254
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float64TypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %i.c)
          to label %bb.al unwind label %bb.d, !dbg !167217

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ad, %bb.ae, %bb.x, %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, %.loopexit42.invoke
  %lpad.loopexit.split-lp67 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB4_6option6OptiondEEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 dereferenceable(24) %i.b) #44
          to label %bb.j unwind label %bb.ak, !dbg !167254

_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit: ; preds = %bb.t, %bb.s, %bb.p
  %.sink13.i = phi i64 [ %i.al, %bb.p ], [ %i.au, %bb.s ], [ %.sroa.0.0.i.i, %bb.t ] ; 4 uses
  %.sink11.i = phi double [ 0.000000e+00, %bb.p ], [ 0.000000e+00, %bb.s ], [ %i.aj, %bb.t ]
  %.sink.i = phi i1 [ true, %bb.p ], [ true, %bb.s ], [ %i.av, %bb.t ] ; 2 uses
  %i.ax = invoke fastcc { i64, double } @_RNvMs_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB4_12ChunkedArrayNtNtB6_9datatypes11Float64TypeE3getB6_(ptr noundef nonnull align 8 %i.c, i64 noundef %.sink13.i)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !167255 ; 2 uses

bb.u:                                             ; preds = %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit
  %i.ay = extractvalue { i64, double } %i.ax, 0, !dbg !167256 ; 2 uses
  %i.az = trunc nuw i64 %i.ay to i1, !dbg !167257 ; 5 uses
  %i.ba = extractvalue { i64, double } %i.ax, 1, !dbg !167257 ; 8 uses
  %.sroa.9.0 = select i1 %i.az, double %i.ba, double undef, !dbg !167257 ; 3 uses
  switch i8 %4, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit [
    i8 3, label %bb.v
    i8 4, label %bb.w
  ], !dbg !167258

bb.v:                                             ; preds = %bb.u
  br i1 %.sink.i, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.x, !dbg !167259

bb.w:                                             ; preds = %bb.u
  br i1 %.sink.i, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.ae, !dbg !167250

bb.x:                                             ; preds = %bb.v
  %i.bb = add i64 %.sink13.i, 1, !dbg !167260
  %i.bc = invoke fastcc { i64, double } @_RNvMs_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB4_12ChunkedArrayNtNtB6_9datatypes11Float64TypeE3getB6_(ptr noundef nonnull align 8 %i.c, i64 noundef %i.bb)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !167261 ; 2 uses

bb.y:                                             ; preds = %bb.x
  %i.bd = extractvalue { i64, double } %i.bc, 0, !dbg !167262
  %i.be = trunc nuw i64 %i.bd to i1, !dbg !167263
  br i1 %i.be, label %bb.ab, label %bb.z, !dbg !167263, !prof !3738

bb.z:                                             ; preds = %bb.y
  br i1 %i.az, label %.loopexit42.invoke, label %.loopexit43, !dbg !167264

.loopexit43:                                      ; preds = %bb.ab, %bb.z
  br label %.loopexit42.invoke, !dbg !167265

bb.aa:                                            ; preds = %bb.m
  unreachable

bb.ab:                                            ; preds = %bb.y
  br i1 %i.az, label %bb.ac, label %.loopexit43, !dbg !167264, !prof !3738

bb.ac:                                            ; preds = %bb.ab
  %i.bf = extractvalue { i64, double } %i.bc, 1, !dbg !167262 ; 2 uses
  %i.bg = fcmp oeq double %i.ba, %i.bf, !dbg !167266
  %i.bh = fadd double %i.ba, %i.bf, !dbg !167267
  %i.bi = fmul double %i.bh, 5.000000e-01, !dbg !167267
  %.sroa.0.0.i39 = select i1 %i.bg, double %i.ba, double %i.bi, !dbg !167267
  br label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, !dbg !167268

_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit: ; preds = %bb.aj, %bb.ai, %bb.ac, %bb.w, %bb.v, %bb.u
  %.sroa.9.1 = phi double [ %.sroa.9.0, %bb.u ], [ %.sroa.9.0, %bb.v ], [ %.sroa.0.0.i39, %bb.ac ], [ %.sroa.9.0, %bb.w ], [ %i.cc, %bb.aj ], [ %i.ba, %bb.ai ], !dbg !167269
  %i.bj = load i64, ptr %i.z, align 8, !dbg !167270, !alias.scope !167194, !noundef !3468 ; 3 uses
  %i.bk = load i64, ptr %i.b, align 8, !dbg !167271, !range !3548, !alias.scope !167194, !noundef !3468
  %i.bl = icmp eq i64 %i.bj, %i.bk, !dbg !167272
  br i1 %i.bl, label %bb.ad, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit, !dbg !167272

bb.ad:                                            ; preds = %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8grow_oneCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !167273

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.ad, %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit
  %i.bm = load ptr, ptr %i.y, align 8, !dbg !167274, !alias.scope !167194, !nonnull !3468, !noundef !3468
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bm, i64 %i.bj, !dbg !167275 ; 2 uses
  store i64 %i.ay, ptr %i.bn, align 8, !dbg !167276
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8, !dbg !167276
  store double %.sroa.9.1, ptr %i.bo, align 8, !dbg !167276
  %i.bp = add i64 %i.bj, 1, !dbg !167277
  store i64 %i.bp, ptr %i.z, align 8, !dbg !167227
  %i.bq = icmp eq ptr %i.ag, %i.e, !dbg !167228
  br i1 %i.bq, label %._crit_edge, label %bb.o, !dbg !167229

bb.ae:                                            ; preds = %bb.w
  %i.br = add i64 %.sink13.i, 1, !dbg !167278
  %i.bs = invoke fastcc { i64, double } @_RNvMs_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB4_12ChunkedArrayNtNtB6_9datatypes11Float64TypeE3getB6_(ptr noundef nonnull align 8 %i.c, i64 noundef %i.br)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !167279 ; 2 uses

bb.af:                                            ; preds = %bb.ae
  %i.bt = extractvalue { i64, double } %i.bs, 0, !dbg !167280
  %i.bu = trunc nuw i64 %i.bt to i1, !dbg !167281
  br i1 %i.bu, label %bb.ah, label %bb.ag, !dbg !167281, !prof !3738

bb.ag:                                            ; preds = %bb.af
  br i1 %i.az, label %.loopexit42.invoke, label %.loopexit42, !dbg !167282

.loopexit42:                                      ; preds = %bb.ah, %bb.ag
  br label %.loopexit42.invoke, !dbg !167283

.loopexit42.invoke:                               ; preds = %bb.ag, %bb.z, %.loopexit43, %.loopexit42
  %i.bv = phi ptr [ @69, %.loopexit42 ], [ @66, %bb.z ], [ @67, %.loopexit43 ], [ @68, %bb.ag ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bv) #43
          to label %.loopexit42.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !167284

.loopexit42.cont:                                 ; preds = %.loopexit42.invoke
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.bw = extractvalue { i64, double } %i.bs, 1, !dbg !167280 ; 2 uses
  br i1 %i.az, label %bb.ai, label %.loopexit42, !dbg !167282, !prof !3738

bb.ai:                                            ; preds = %bb.ah
  %i.bx = fcmp oeq double %i.ba, %i.bw, !dbg !167285
  br i1 %i.bx, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.aj, !dbg !167286

bb.aj:                                            ; preds = %bb.ai
  %i.by = uitofp i64 %.sink13.i to double, !dbg !167287
  %i.bz = fsub double %.sink11.i, %i.by, !dbg !167288
  %i.ca = fsub double %i.bw, %i.ba, !dbg !167289
  %i.cb = fmul double %i.bz, %i.ca, !dbg !167290
  %i.cc = fadd double %i.ba, %i.cb, !dbg !167291
  br label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, !dbg !167292

bb.ak:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.j, %bb.c
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !167293
  unreachable, !dbg !167293

bb.al:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !167217
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11Float64TypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %1), !dbg !167202
  br label %bb.am, !dbg !167202

bb.am:                                            ; preds = %bb.al, %bb.f
  ret void, !dbg !167294

bb.an:                                            ; preds = %bb.h
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !167295
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ce, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !167295
  store i64 18, ptr %0, align 8, !dbg !167295
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !167296
  br label %bb.f, !dbg !167208

bb.ao:                                            ; preds = %bb.c
  resume { ptr, i32 } %.pn35, !dbg !167293
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile17generic_quantilesNtNtBa_9datatypes11UInt128TypeEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56) %1, ptr noalias noundef nonnull readonly align 8 captures(address) %2, i64 noundef range(i64 0, 1152921504606846976) %3, i8 noundef range(i8 0, 6) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !167297 !guid !167382 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 16               ; 6 uses
  %i.c = alloca [32 x i8], align 16               ; 6 uses
  %i.d = alloca [32 x i8], align 16               ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = alloca [56 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %.idx = shl nuw nsw i64 %3, 3, !dbg !167413
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %.idx, !dbg !167413 ; 2 uses
  %i.i = icmp eq i64 %3, 0, !dbg !167414
  br i1 %i.i, label %._crit_edge59, label %.lr.ph58, !dbg !167389

bb.b:                                             ; preds = %.lr.ph58
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.056, i64 8, !dbg !167415 ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.h, !dbg !167414
  br i1 %i.k, label %._crit_edge59, label %.lr.ph58, !dbg !167389

bb.c:                                             ; preds = %bb.j, %bb.d
  %.pn28 = phi { ptr, i32 } [ %i.l, %bb.d ], [ %.pn, %bb.j ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11UInt128TypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %1) #44
          to label %bb.ao unwind label %bb.ak, !dbg !167416

bb.d:                                             ; preds = %._crit_edge, %bb.h, %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.lr.ph58:                                         ; preds = %bb.a, %bb.b
  %.sroa.0.056 = phi ptr [ %i.j, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %i.m = load double, ptr %.sroa.0.056, align 8, !dbg !167417, !noundef !3468 ; 2 uses
  %i.n = fcmp oge double %i.m, 0.000000e+00, !dbg !167418
  %i.o = fcmp ole double %i.m, 1.000000e+00
  %spec.select.i = and i1 %i.n, %i.o, !dbg !167419
  br i1 %spec.select.i, label %bb.b, label %bb.e, !dbg !167420

bb.e:                                             ; preds = %.lr.ph58
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) @65, i64 72, i1 false), !dbg !167421
  br label %bb.f, !dbg !167422

bb.f:                                             ; preds = %bb.an, %bb.e
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11UInt128TypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %1), !dbg !167416
  br label %bb.am, !dbg !167416

._crit_edge59:                                    ; preds = %bb.b, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !167423
  %.val = load i64, ptr %i.p, align 8, !dbg !167423, !noundef !3468 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !167424
  %.val30 = load i64, ptr %i.q, align 8, !dbg !167424, !noundef !3468 ; 3 uses
  %i.r = icmp eq i64 %.val, %.val30, !dbg !167425
  br i1 %i.r, label %bb.h, label %bb.g, !dbg !167425

bb.g:                                             ; preds = %._crit_edge59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !167426
  invoke void @_RNvXNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sortINtB6_12ChunkedArrayNtNtB8_9datatypes11UInt128TypeEINtB4_9ChunkSortB1h_E4sortB8_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.f, ptr noundef nonnull align 8 %1, i1 noundef zeroext false)
          to label %bb.i unwind label %bb.d, !dbg !167427

bb.h:                                             ; preds = %._crit_edge59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !167393
  invoke void @_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemINtNtCscgRAwXFJnXP_4core6option6OptiondENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef 0, double undef, i64 noundef %3)
          to label %bb.an unwind label %bb.d, !dbg !167428

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !167429
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !167430
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %3, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
          to label %bb.l unwind label %bb.k, !dbg !167430

bb.j:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.k
  %.pn = phi { ptr, i32 } [ %i.s, %bb.k ], [ %lpad.loopexit.split-lp60, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11UInt128TypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %i.f) #44
          to label %bb.c unwind label %bb.ak, !dbg !167431

bb.k:                                             ; preds = %bb.m, %bb.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.l:                                             ; preds = %bb.i
  %i.t = load i64, ptr %i.a, align 8, !dbg !167430, !range !3513, !noundef !3468
  %i.u = trunc nuw i64 %i.t to i1, !dbg !167432
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !167433
  %i.w = load i64, ptr %i.v, align 8, !dbg !167433, !range !3514, !noundef !3468 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !167433 ; 2 uses
  br i1 %i.u, label %bb.m, label %bb.n, !dbg !167432, !prof !3515

bb.m:                                             ; preds = %bb.l
  %i.y = load i64, ptr %i.x, align 8, !dbg !167434
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.w, i64 %i.y) #43
          to label %bb.aa unwind label %bb.k, !dbg !167435

bb.n:                                             ; preds = %bb.l
  %i.z = load ptr, ptr %i.x, align 8, !dbg !167436, !nonnull !3468, !noundef !3468
  %i.aa = icmp samesign ule i64 %3, %i.w, !dbg !167437
  call void @llvm.assume(i1 %i.aa), !dbg !167438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !167439
  store i64 %i.w, ptr %i.e, align 8, !dbg !167440
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !167440 ; 2 uses
  store ptr %i.z, ptr %i.ab, align 8, !dbg !167440
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !167440 ; 3 uses
  store i64 0, ptr %i.ac, align 8, !dbg !167441
  %i.ad = icmp eq i64 %3, 0, !dbg !167442
  br i1 %i.ad, label %._crit_edge, label %.lr.ph, !dbg !167443

.lr.ph:                                           ; preds = %bb.n
  %i.ae = sub i64 %.val30, %.val
  %i.af = uitofp i64 %i.ae to double              ; 2 uses
  %i.ag = fadd nnan double %i.af, -1.000000e+00
  %i.ah = uitofp i64 %.val to double
  %i.ai = add i64 %.val30, -1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.o, !dbg !167443

bb.o:                                             ; preds = %.lr.ph, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit
  %.sroa.02.040 = phi ptr [ %2, %.lr.ph ], [ %i.am, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.02.040, i64 8, !dbg !167444 ; 2 uses
  %i.an = load double, ptr %.sroa.02.040, align 8, !dbg !167445, !noundef !3468 ; 2 uses
  %i.ao = fmul double %i.ag, %i.an, !dbg !167446
  %i.ap = fadd double %i.ao, %i.ah, !dbg !167446  ; 5 uses
  switch i8 %4, label %default.unreachable [
    i8 0, label %bb.p
    i8 1, label %bb.q
    i8 2, label %bb.r
    i8 3, label %bb.q
    i8 4, label %bb.q
    i8 5, label %bb.s
  ], !dbg !167447

default.unreachable:                              ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.aq = call double @llvm.round.f64(double %i.ap), !dbg !167448
  %i.ar = call i64 @llvm.fptoui.sat.i64.f64(double %i.aq), !dbg !167449
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !167450

bb.q:                                             ; preds = %bb.o, %bb.o, %bb.o
  %i.as = call i64 @llvm.fptoui.sat.i64.f64(double %i.ap), !dbg !167451
  %.pre.i = call double @llvm.ceil.f64(double %i.ap), !dbg !167452
  %.pre7.i = call i64 @llvm.fptoui.sat.i64.f64(double %.pre.i), !dbg !167453
  br label %bb.t, !dbg !167454

bb.r:                                             ; preds = %bb.o
  %i.at = call double @llvm.ceil.f64(double %i.ap), !dbg !167455
  %i.au = call i64 @llvm.fptoui.sat.i64.f64(double %i.at), !dbg !167456 ; 2 uses
  br label %bb.t, !dbg !167457

bb.s:                                             ; preds = %bb.o
  %i.av = fmul double %i.an, %i.af, !dbg !167458
  %i.aw = call double @llvm.ceil.f64(double %i.av), !dbg !167459
  %i.ax = fadd double %i.aw, -1.000000e+00, !dbg !167460
  %i.ay = call nsz double @llvm.maximumnum.f64(double %i.ax, double 0.000000e+00), !dbg !167461
  %i.az = call i64 @llvm.fptoui.sat.i64.f64(double %i.ay), !dbg !167460
  %i.ba = add i64 %i.az, %.val, !dbg !167460
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !167450

bb.t:                                             ; preds = %bb.r, %bb.q
  %.pre-phi8.i = phi i64 [ %i.au, %bb.r ], [ %.pre7.i, %bb.q ], !dbg !167453
  %.sroa.0.0.i = phi i64 [ %i.au, %bb.r ], [ %i.as, %bb.q ], !dbg !167462
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i, i64 %i.ai), !dbg !167463 ; 2 uses
  %i.bb = icmp eq i64 %.pre-phi8.i, %.sroa.0.0.i.i, !dbg !167464
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !167465

._crit_edge:                                      ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit, %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !167466
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !167467
  store i64 18, ptr %0, align 8, !dbg !167466
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !167468
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11UInt128TypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %i.f)
          to label %bb.al unwind label %bb.d, !dbg !167431

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ad, %bb.ae, %bb.x, %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, %.loopexit35.invoke
  %lpad.loopexit.split-lp60 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB4_6option6OptiondEEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 dereferenceable(24) %i.e) #44
          to label %bb.j unwind label %bb.ak, !dbg !167468

_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit: ; preds = %bb.t, %bb.s, %bb.p
  %.sink13.i = phi i64 [ %i.ar, %bb.p ], [ %i.ba, %bb.s ], [ %.sroa.0.0.i.i, %bb.t ] ; 4 uses
  %.sink11.i = phi double [ 0.000000e+00, %bb.p ], [ 0.000000e+00, %bb.s ], [ %i.ap, %bb.t ]
  %.sink.i = phi i1 [ true, %bb.p ], [ true, %bb.s ], [ %i.bb, %bb.t ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !167469
  invoke fastcc void @_RNvMs_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB4_12ChunkedArrayNtNtB6_9datatypes11UInt128TypeE3getB6_(ptr noalias noundef align 16 captures(address) dereferenceable(32) %i.d, ptr noundef nonnull align 8 %i.f, i64 noundef %.sink13.i)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !167470

bb.u:                                             ; preds = %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit
  %i.bd = load i128, ptr %i.d, align 16, !dbg !167471, !range !3892, !noundef !3468 ; 2 uses
  %i.be = trunc nuw i128 %i.bd to i1, !dbg !167472 ; 5 uses
  %i.bf = load i128, ptr %i.aj, align 16, !dbg !167472
  %i.bg = uitofp i128 %i.bf to double, !dbg !167472 ; 8 uses
  %.sroa.9.0 = select i1 %i.be, double %i.bg, double undef, !dbg !167472 ; 3 uses
  %i.bh = trunc nuw nsw i128 %i.bd to i64, !dbg !167472
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !167473
  switch i8 %4, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit [
    i8 3, label %bb.v
    i8 4, label %bb.w
  ], !dbg !167474

bb.v:                                             ; preds = %bb.u
  br i1 %.sink.i, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.x, !dbg !167475

bb.w:                                             ; preds = %bb.u
  br i1 %.sink.i, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.ae, !dbg !167464

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !167476
  %i.bi = add i64 %.sink13.i, 1, !dbg !167477
  invoke fastcc void @_RNvMs_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB4_12ChunkedArrayNtNtB6_9datatypes11UInt128TypeE3getB6_(ptr noalias noundef align 16 captures(address) dereferenceable(32) %i.c, ptr noundef nonnull align 8 %i.f, i64 noundef %i.bi)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !167478

bb.y:                                             ; preds = %bb.x
  %i.bj = load i128, ptr %i.c, align 16, !dbg !167479, !range !3892, !noundef !3468
  %i.bk = trunc nuw i128 %i.bj to i1, !dbg !167480
  br i1 %i.bk, label %bb.ab, label %bb.z, !dbg !167480, !prof !3738

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !167481
  br i1 %i.be, label %.loopexit35.invoke, label %.loopexit36, !dbg !167482

.loopexit36:                                      ; preds = %bb.ab, %bb.z
  br label %.loopexit35.invoke, !dbg !167483

bb.aa:                                            ; preds = %bb.m
  unreachable

bb.ab:                                            ; preds = %bb.y
  %i.bl = load i128, ptr %i.al, align 16, !dbg !167484, !noundef !3468
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !167481
  br i1 %i.be, label %bb.ac, label %.loopexit36, !dbg !167482, !prof !3738

bb.ac:                                            ; preds = %bb.ab
  %i.bm = uitofp i128 %i.bl to double, !dbg !167485 ; 2 uses
  %i.bn = fcmp oeq double %i.bg, %i.bm, !dbg !167486
  %i.bo = fadd nnan double %i.bg, %i.bm, !dbg !167487
  %i.bp = fmul nnan double %i.bo, 5.000000e-01, !dbg !167487
  %.sroa.0.0.i32 = select i1 %i.bn, double %i.bg, double %i.bp, !dbg !167487
  br label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, !dbg !167488

_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit: ; preds = %bb.aj, %bb.ai, %bb.ac, %bb.w, %bb.v, %bb.u
  %.sroa.9.1 = phi double [ %.sroa.9.0, %bb.u ], [ %.sroa.9.0, %bb.v ], [ %.sroa.0.0.i32, %bb.ac ], [ %.sroa.9.0, %bb.w ], [ %i.cj, %bb.aj ], [ %i.bg, %bb.ai ], !dbg !167489
  %i.bq = load i64, ptr %i.ac, align 8, !dbg !167490, !alias.scope !167408, !noundef !3468 ; 3 uses
  %i.br = load i64, ptr %i.e, align 8, !dbg !167491, !range !3548, !alias.scope !167408, !noundef !3468
  %i.bs = icmp eq i64 %i.bq, %i.br, !dbg !167492
  br i1 %i.bs, label %bb.ad, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit, !dbg !167492

bb.ad:                                            ; preds = %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8grow_oneCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !167493

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.ad, %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit
  %i.bt = load ptr, ptr %i.ab, align 8, !dbg !167494, !alias.scope !167408, !nonnull !3468, !noundef !3468
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.bt, i64 %i.bq, !dbg !167495 ; 2 uses
  store i64 %i.bh, ptr %i.bu, align 8, !dbg !167496
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8, !dbg !167496
  store double %.sroa.9.1, ptr %i.bv, align 8, !dbg !167496
  %i.bw = add i64 %i.bq, 1, !dbg !167497
  store i64 %i.bw, ptr %i.ac, align 8, !dbg !167441
  %i.bx = icmp eq ptr %i.am, %i.h, !dbg !167442
  br i1 %i.bx, label %._crit_edge, label %bb.o, !dbg !167443

bb.ae:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !167498
  %i.by = add i64 %.sink13.i, 1, !dbg !167499
  invoke fastcc void @_RNvMs_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB4_12ChunkedArrayNtNtB6_9datatypes11UInt128TypeE3getB6_(ptr noalias noundef align 16 captures(address) dereferenceable(32) %i.b, ptr noundef nonnull align 8 %i.f, i64 noundef %i.by)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !167500

bb.af:                                            ; preds = %bb.ae
  %i.bz = load i128, ptr %i.b, align 16, !dbg !167501, !range !3892, !noundef !3468
  %i.ca = trunc nuw i128 %i.bz to i1, !dbg !167502
  br i1 %i.ca, label %bb.ah, label %bb.ag, !dbg !167502, !prof !3738

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !167503
  br i1 %i.be, label %.loopexit35.invoke, label %.loopexit35, !dbg !167504

.loopexit35:                                      ; preds = %bb.ah, %bb.ag
  br label %.loopexit35.invoke, !dbg !167505

.loopexit35.invoke:                               ; preds = %bb.ag, %bb.z, %.loopexit36, %.loopexit35
  %i.cb = phi ptr [ @69, %.loopexit35 ], [ @66, %bb.z ], [ @67, %.loopexit36 ], [ @68, %bb.ag ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cb) #43
          to label %.loopexit35.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !167506

.loopexit35.cont:                                 ; preds = %.loopexit35.invoke
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.cc = load i128, ptr %i.ak, align 16, !dbg !167507, !noundef !3468
  %i.cd = uitofp i128 %i.cc to double, !dbg !167508 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !167503
  br i1 %i.be, label %bb.ai, label %.loopexit35, !dbg !167504, !prof !3738

bb.ai:                                            ; preds = %bb.ah
  %i.ce = fcmp oeq double %i.bg, %i.cd, !dbg !167509
  br i1 %i.ce, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.aj, !dbg !167510

bb.aj:                                            ; preds = %bb.ai
  %i.cf = uitofp i64 %.sink13.i to double, !dbg !167511
  %i.cg = fsub double %.sink11.i, %i.cf, !dbg !167512
  %i.ch = fsub nnan double %i.cd, %i.bg, !dbg !167513
  %i.ci = fmul double %i.cg, %i.ch, !dbg !167514
  %i.cj = fadd double %i.ci, %i.bg, !dbg !167515
  br label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, !dbg !167516

bb.ak:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.j, %bb.c
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !167517
  unreachable, !dbg !167517

bb.al:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !167431
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11UInt128TypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %1), !dbg !167416
  br label %bb.am, !dbg !167416

bb.am:                                            ; preds = %bb.al, %bb.f
  ret void, !dbg !167518

bb.an:                                            ; preds = %bb.h
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !167519
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !dbg !167519
  store i64 18, ptr %0, align 8, !dbg !167519
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !167520
  br label %bb.f, !dbg !167422

bb.ao:                                            ; preds = %bb.c
  resume { ptr, i32 } %.pn28, !dbg !167517
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile17generic_quantilesNtNtBa_9datatypes8Int8TypeEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56) %1, ptr noalias noundef nonnull readonly align 8 captures(address) %2, i64 noundef range(i64 0, 1152921504606846976) %3, i8 noundef range(i8 0, 6) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !167521 !guid !167606 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [56 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %.idx = shl nuw nsw i64 %3, 3, !dbg !167637
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %.idx, !dbg !167637 ; 2 uses
  %i.f = icmp eq i64 %3, 0, !dbg !167638
  br i1 %i.f, label %._crit_edge66, label %.lr.ph65, !dbg !167613

bb.b:                                             ; preds = %.lr.ph65
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.063, i64 8, !dbg !167639 ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.e, !dbg !167638
  br i1 %i.h, label %._crit_edge66, label %.lr.ph65, !dbg !167613

bb.c:                                             ; preds = %bb.j, %bb.d
  %.pn35 = phi { ptr, i32 } [ %i.i, %bb.d ], [ %.pn, %bb.j ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes8Int8TypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %1) #44
          to label %bb.ao unwind label %bb.ak, !dbg !167640

bb.d:                                             ; preds = %._crit_edge, %bb.h, %bb.g
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.lr.ph65:                                         ; preds = %bb.a, %bb.b
  %.sroa.0.063 = phi ptr [ %i.g, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %i.j = load double, ptr %.sroa.0.063, align 8, !dbg !167641, !noundef !3468 ; 2 uses
  %i.k = fcmp oge double %i.j, 0.000000e+00, !dbg !167642
  %i.l = fcmp ole double %i.j, 1.000000e+00
  %spec.select.i = and i1 %i.k, %i.l, !dbg !167643
  br i1 %spec.select.i, label %bb.b, label %bb.e, !dbg !167644

bb.e:                                             ; preds = %.lr.ph65
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) @65, i64 72, i1 false), !dbg !167645
  br label %bb.f, !dbg !167646

bb.f:                                             ; preds = %bb.an, %bb.e
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes8Int8TypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %1), !dbg !167640
  br label %bb.am, !dbg !167640

._crit_edge66:                                    ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !167647
  %.val = load i64, ptr %i.m, align 8, !dbg !167647, !noundef !3468 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !167648
  %.val37 = load i64, ptr %i.n, align 8, !dbg !167648, !noundef !3468 ; 3 uses
  %i.o = icmp eq i64 %.val, %.val37, !dbg !167649
  br i1 %i.o, label %bb.h, label %bb.g, !dbg !167649

bb.g:                                             ; preds = %._crit_edge66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !167650
  invoke void @_RNvXNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sortINtB6_12ChunkedArrayNtNtB8_9datatypes8Int8TypeEINtB4_9ChunkSortB1h_E4sortB8_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.c, ptr noundef nonnull align 8 %1, i1 noundef zeroext false)
          to label %bb.i unwind label %bb.d, !dbg !167651

bb.h:                                             ; preds = %._crit_edge66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !167617
  invoke void @_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemINtNtCscgRAwXFJnXP_4core6option6OptiondENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef 0, double undef, i64 noundef %3)
          to label %bb.an unwind label %bb.d, !dbg !167652

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !167653
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !167654
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %3, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
          to label %bb.l unwind label %bb.k, !dbg !167654

bb.j:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.k
  %.pn = phi { ptr, i32 } [ %i.p, %bb.k ], [ %lpad.loopexit.split-lp67, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes8Int8TypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %i.c) #44
          to label %bb.c unwind label %bb.ak, !dbg !167655

bb.k:                                             ; preds = %bb.m, %bb.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.l:                                             ; preds = %bb.i
  %i.q = load i64, ptr %i.a, align 8, !dbg !167654, !range !3513, !noundef !3468
  %i.r = trunc nuw i64 %i.q to i1, !dbg !167656
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !167657
  %i.t = load i64, ptr %i.s, align 8, !dbg !167657, !range !3514, !noundef !3468 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !167657 ; 2 uses
  br i1 %i.r, label %bb.m, label %bb.n, !dbg !167656, !prof !3515

bb.m:                                             ; preds = %bb.l
  %i.v = load i64, ptr %i.u, align 8, !dbg !167658
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.t, i64 %i.v) #43
          to label %bb.aa unwind label %bb.k, !dbg !167659

bb.n:                                             ; preds = %bb.l
  %i.w = load ptr, ptr %i.u, align 8, !dbg !167660, !nonnull !3468, !noundef !3468
  %i.x = icmp samesign ule i64 %3, %i.t, !dbg !167661
  call void @llvm.assume(i1 %i.x), !dbg !167662
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !167663
  store i64 %i.t, ptr %i.b, align 8, !dbg !167664
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !167664 ; 2 uses
  store ptr %i.w, ptr %i.y, align 8, !dbg !167664
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !167664 ; 3 uses
  store i64 0, ptr %i.z, align 8, !dbg !167665
  %i.aa = icmp eq i64 %3, 0, !dbg !167666
  br i1 %i.aa, label %._crit_edge, label %.lr.ph, !dbg !167667

.lr.ph:                                           ; preds = %bb.n
  %i.ab = sub i64 %.val37, %.val
  %i.ac = uitofp i64 %i.ab to double              ; 2 uses
  %i.ad = fadd nnan double %i.ac, -1.000000e+00
  %i.ae = uitofp i64 %.val to double
  %i.af = add i64 %.val37, -1
  br label %bb.o, !dbg !167667

bb.o:                                             ; preds = %.lr.ph, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit
  %.sroa.02.047 = phi ptr [ %2, %.lr.ph ], [ %i.ag, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.02.047, i64 8, !dbg !167668 ; 2 uses
  %i.ah = load double, ptr %.sroa.02.047, align 8, !dbg !167669, !noundef !3468 ; 2 uses
  %i.ai = fmul double %i.ad, %i.ah, !dbg !167670
  %i.aj = fadd double %i.ai, %i.ae, !dbg !167670  ; 5 uses
  switch i8 %4, label %default.unreachable [
    i8 0, label %bb.p
    i8 1, label %bb.q
    i8 2, label %bb.r
    i8 3, label %bb.q
    i8 4, label %bb.q
    i8 5, label %bb.s
  ], !dbg !167671

default.unreachable:                              ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.ak = call double @llvm.round.f64(double %i.aj), !dbg !167672
  %i.al = call i64 @llvm.fptoui.sat.i64.f64(double %i.ak), !dbg !167673
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !167674

bb.q:                                             ; preds = %bb.o, %bb.o, %bb.o
  %i.am = call i64 @llvm.fptoui.sat.i64.f64(double %i.aj), !dbg !167675
  %.pre.i = call double @llvm.ceil.f64(double %i.aj), !dbg !167676
  %.pre7.i = call i64 @llvm.fptoui.sat.i64.f64(double %.pre.i), !dbg !167677
  br label %bb.t, !dbg !167678

bb.r:                                             ; preds = %bb.o
  %i.an = call double @llvm.ceil.f64(double %i.aj), !dbg !167679
  %i.ao = call i64 @llvm.fptoui.sat.i64.f64(double %i.an), !dbg !167680 ; 2 uses
  br label %bb.t, !dbg !167681

bb.s:                                             ; preds = %bb.o
  %i.ap = fmul double %i.ah, %i.ac, !dbg !167682
  %i.aq = call double @llvm.ceil.f64(double %i.ap), !dbg !167683
  %i.ar = fadd double %i.aq, -1.000000e+00, !dbg !167684
  %i.as = call nsz double @llvm.maximumnum.f64(double %i.ar, double 0.000000e+00), !dbg !167685
  %i.at = call i64 @llvm.fptoui.sat.i64.f64(double %i.as), !dbg !167684
  %i.au = add i64 %i.at, %.val, !dbg !167684
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !167674

bb.t:                                             ; preds = %bb.r, %bb.q
  %.pre-phi8.i = phi i64 [ %i.ao, %bb.r ], [ %.pre7.i, %bb.q ], !dbg !167677
  %.sroa.0.0.i = phi i64 [ %i.ao, %bb.r ], [ %i.am, %bb.q ], !dbg !167686
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i, i64 %i.af), !dbg !167687 ; 2 uses
  %i.av = icmp eq i64 %.pre-phi8.i, %.sroa.0.0.i.i, !dbg !167688
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !167689

._crit_edge:                                      ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit, %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !167690
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !167691
  store i64 18, ptr %0, align 8, !dbg !167690
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !167692
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes8Int8TypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %i.c)
          to label %bb.al unwind label %bb.d, !dbg !167655

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ad, %bb.ae, %bb.x, %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, %.loopexit42.invoke
  %lpad.loopexit.split-lp67 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB4_6option6OptiondEEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 dereferenceable(24) %i.b) #44
          to label %bb.j unwind label %bb.ak, !dbg !167692

_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit: ; preds = %bb.t, %bb.s, %bb.p
  %.sink13.i = phi i64 [ %i.al, %bb.p ], [ %i.au, %bb.s ], [ %.sroa.0.0.i.i, %bb.t ] ; 4 uses
  %.sink11.i = phi double [ 0.000000e+00, %bb.p ], [ 0.000000e+00, %bb.s ], [ %i.aj, %bb.t ]
  %.sink.i = phi i1 [ true, %bb.p ], [ true, %bb.s ], [ %i.av, %bb.t ] ; 2 uses
  %i.ax = invoke fastcc { i1, i8 } @_RNvMs_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB4_12ChunkedArrayNtNtB6_9datatypes8Int8TypeE3getB6_(ptr noundef nonnull align 8 %i.c, i64 noundef %.sink13.i)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !167693 ; 2 uses

bb.u:                                             ; preds = %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit
  %i.ay = extractvalue { i1, i8 } %i.ax, 0, !dbg !167694 ; 6 uses
  %i.az = extractvalue { i1, i8 } %i.ax, 1, !dbg !167695
  %i.ba = sitofp i8 %i.az to double, !dbg !167695 ; 8 uses
  %.sroa.9.0 = select i1 %i.ay, double %i.ba, double undef, !dbg !167695 ; 3 uses
  %.sroa.05.0 = zext i1 %i.ay to i64, !dbg !167695
  switch i8 %4, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit [
    i8 3, label %bb.v
    i8 4, label %bb.w
  ], !dbg !167696

bb.v:                                             ; preds = %bb.u
  br i1 %.sink.i, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.x, !dbg !167697

bb.w:                                             ; preds = %bb.u
  br i1 %.sink.i, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.ae, !dbg !167688

bb.x:                                             ; preds = %bb.v
  %i.bb = add i64 %.sink13.i, 1, !dbg !167698
  %i.bc = invoke fastcc { i1, i8 } @_RNvMs_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB4_12ChunkedArrayNtNtB6_9datatypes8Int8TypeE3getB6_(ptr noundef nonnull align 8 %i.c, i64 noundef %i.bb)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !167699 ; 2 uses

bb.y:                                             ; preds = %bb.x
  %i.bd = extractvalue { i1, i8 } %i.bc, 0, !dbg !167700
  br i1 %i.bd, label %bb.ab, label %bb.z, !dbg !167701, !prof !3738

bb.z:                                             ; preds = %bb.y
  br i1 %i.ay, label %.loopexit42.invoke, label %.loopexit43, !dbg !167702

.loopexit43:                                      ; preds = %bb.ab, %bb.z
  br label %.loopexit42.invoke, !dbg !167703

bb.aa:                                            ; preds = %bb.m
  unreachable

bb.ab:                                            ; preds = %bb.y
  br i1 %i.ay, label %bb.ac, label %.loopexit43, !dbg !167702, !prof !3738

bb.ac:                                            ; preds = %bb.ab
  %i.be = extractvalue { i1, i8 } %i.bc, 1, !dbg !167700
  %i.bf = sitofp i8 %i.be to double, !dbg !167704 ; 2 uses
  %i.bg = fcmp oeq double %i.ba, %i.bf, !dbg !167705
  %i.bh = fadd nnan double %i.ba, %i.bf, !dbg !167706
  %i.bi = fmul nnan double %i.bh, 5.000000e-01, !dbg !167706
  %.sroa.0.0.i39 = select i1 %i.bg, double %i.ba, double %i.bi, !dbg !167706
  br label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, !dbg !167707

_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit: ; preds = %bb.aj, %bb.ai, %bb.ac, %bb.w, %bb.v, %bb.u
  %.sroa.9.1 = phi double [ %.sroa.9.0, %bb.u ], [ %.sroa.9.0, %bb.v ], [ %.sroa.0.0.i39, %bb.ac ], [ %.sroa.9.0, %bb.w ], [ %i.cc, %bb.aj ], [ %i.ba, %bb.ai ], !dbg !167708
  %i.bj = load i64, ptr %i.z, align 8, !dbg !167709, !alias.scope !167632, !noundef !3468 ; 3 uses
  %i.bk = load i64, ptr %i.b, align 8, !dbg !167710, !range !3548, !alias.scope !167632, !noundef !3468
  %i.bl = icmp eq i64 %i.bj, %i.bk, !dbg !167711
  br i1 %i.bl, label %bb.ad, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit, !dbg !167711

bb.ad:                                            ; preds = %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8grow_oneCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !167712

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.ad, %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit
  %i.bm = load ptr, ptr %i.y, align 8, !dbg !167713, !alias.scope !167632, !nonnull !3468, !noundef !3468
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bm, i64 %i.bj, !dbg !167714 ; 2 uses
  store i64 %.sroa.05.0, ptr %i.bn, align 8, !dbg !167715
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8, !dbg !167715
  store double %.sroa.9.1, ptr %i.bo, align 8, !dbg !167715
  %i.bp = add i64 %i.bj, 1, !dbg !167716
  store i64 %i.bp, ptr %i.z, align 8, !dbg !167665
  %i.bq = icmp eq ptr %i.ag, %i.e, !dbg !167666
  br i1 %i.bq, label %._crit_edge, label %bb.o, !dbg !167667

bb.ae:                                            ; preds = %bb.w
  %i.br = add i64 %.sink13.i, 1, !dbg !167717
  %i.bs = invoke fastcc { i1, i8 } @_RNvMs_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB4_12ChunkedArrayNtNtB6_9datatypes8Int8TypeE3getB6_(ptr noundef nonnull align 8 %i.c, i64 noundef %i.br)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !167718 ; 2 uses

bb.af:                                            ; preds = %bb.ae
  %i.bt = extractvalue { i1, i8 } %i.bs, 0, !dbg !167719
  br i1 %i.bt, label %bb.ah, label %bb.ag, !dbg !167720, !prof !3738

bb.ag:                                            ; preds = %bb.af
  br i1 %i.ay, label %.loopexit42.invoke, label %.loopexit42, !dbg !167721

.loopexit42:                                      ; preds = %bb.ah, %bb.ag
  br label %.loopexit42.invoke, !dbg !167722

.loopexit42.invoke:                               ; preds = %bb.ag, %bb.z, %.loopexit43, %.loopexit42
  %i.bu = phi ptr [ @69, %.loopexit42 ], [ @66, %bb.z ], [ @67, %.loopexit43 ], [ @68, %bb.ag ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bu) #43
          to label %.loopexit42.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !167723

.loopexit42.cont:                                 ; preds = %.loopexit42.invoke
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.bv = extractvalue { i1, i8 } %i.bs, 1, !dbg !167719
  %i.bw = sitofp i8 %i.bv to double, !dbg !167724 ; 2 uses
  br i1 %i.ay, label %bb.ai, label %.loopexit42, !dbg !167721, !prof !3738

bb.ai:                                            ; preds = %bb.ah
  %i.bx = fcmp oeq double %i.ba, %i.bw, !dbg !167725
  br i1 %i.bx, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.aj, !dbg !167726

bb.aj:                                            ; preds = %bb.ai
  %i.by = uitofp i64 %.sink13.i to double, !dbg !167727
  %i.bz = fsub double %.sink11.i, %i.by, !dbg !167728
  %i.ca = fsub nnan double %i.bw, %i.ba, !dbg !167729
  %i.cb = fmul double %i.bz, %i.ca, !dbg !167730
  %i.cc = fadd double %i.cb, %i.ba, !dbg !167731
  br label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, !dbg !167732

bb.ak:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.j, %bb.c
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !167733
  unreachable, !dbg !167733

bb.al:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !167655
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes8Int8TypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %1), !dbg !167640
  br label %bb.am, !dbg !167640

bb.am:                                            ; preds = %bb.al, %bb.f
  ret void, !dbg !167734

bb.an:                                            ; preds = %bb.h
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !167735
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ce, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !167735
  store i64 18, ptr %0, align 8, !dbg !167735
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !167736
  br label %bb.f, !dbg !167646

bb.ao:                                            ; preds = %bb.c
  resume { ptr, i32 } %.pn35, !dbg !167733
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile17generic_quantilesNtNtBa_9datatypes9Int16TypeEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56) %1, ptr noalias noundef nonnull readonly align 8 captures(address) %2, i64 noundef range(i64 0, 1152921504606846976) %3, i8 noundef range(i8 0, 6) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !167737 !guid !167822 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [56 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %.idx = shl nuw nsw i64 %3, 3, !dbg !167853
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %.idx, !dbg !167853 ; 2 uses
  %i.f = icmp eq i64 %3, 0, !dbg !167854
  br i1 %i.f, label %._crit_edge66, label %.lr.ph65, !dbg !167829

bb.b:                                             ; preds = %.lr.ph65
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.063, i64 8, !dbg !167855 ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.e, !dbg !167854
  br i1 %i.h, label %._crit_edge66, label %.lr.ph65, !dbg !167829

bb.c:                                             ; preds = %bb.j, %bb.d
  %.pn35 = phi { ptr, i32 } [ %i.i, %bb.d ], [ %.pn, %bb.j ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes9Int16TypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %1) #44
          to label %bb.ao unwind label %bb.ak, !dbg !167856

bb.d:                                             ; preds = %._crit_edge, %bb.h, %bb.g
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.lr.ph65:                                         ; preds = %bb.a, %bb.b
  %.sroa.0.063 = phi ptr [ %i.g, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %i.j = load double, ptr %.sroa.0.063, align 8, !dbg !167857, !noundef !3468 ; 2 uses
  %i.k = fcmp oge double %i.j, 0.000000e+00, !dbg !167858
  %i.l = fcmp ole double %i.j, 1.000000e+00
  %spec.select.i = and i1 %i.k, %i.l, !dbg !167859
  br i1 %spec.select.i, label %bb.b, label %bb.e, !dbg !167860

bb.e:                                             ; preds = %.lr.ph65
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) @65, i64 72, i1 false), !dbg !167861
  br label %bb.f, !dbg !167862

bb.f:                                             ; preds = %bb.an, %bb.e
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes9Int16TypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %1), !dbg !167856
  br label %bb.am, !dbg !167856

._crit_edge66:                                    ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !167863
  %.val = load i64, ptr %i.m, align 8, !dbg !167863, !noundef !3468 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !167864
  %.val37 = load i64, ptr %i.n, align 8, !dbg !167864, !noundef !3468 ; 3 uses
  %i.o = icmp eq i64 %.val, %.val37, !dbg !167865
  br i1 %i.o, label %bb.h, label %bb.g, !dbg !167865

bb.g:                                             ; preds = %._crit_edge66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !167866
  invoke void @_RNvXNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sortINtB6_12ChunkedArrayNtNtB8_9datatypes9Int16TypeEINtB4_9ChunkSortB1h_E4sortB8_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.c, ptr noundef nonnull align 8 %1, i1 noundef zeroext false)
          to label %bb.i unwind label %bb.d, !dbg !167867

bb.h:                                             ; preds = %._crit_edge66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !167833
  invoke void @_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemINtNtCscgRAwXFJnXP_4core6option6OptiondENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef 0, double undef, i64 noundef %3)
          to label %bb.an unwind label %bb.d, !dbg !167868

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !167869
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !167870
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %3, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
          to label %bb.l unwind label %bb.k, !dbg !167870

bb.j:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.k
  %.pn = phi { ptr, i32 } [ %i.p, %bb.k ], [ %lpad.loopexit.split-lp67, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes9Int16TypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %i.c) #44
          to label %bb.c unwind label %bb.ak, !dbg !167871

bb.k:                                             ; preds = %bb.m, %bb.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.l:                                             ; preds = %bb.i
  %i.q = load i64, ptr %i.a, align 8, !dbg !167870, !range !3513, !noundef !3468
  %i.r = trunc nuw i64 %i.q to i1, !dbg !167872
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !167873
  %i.t = load i64, ptr %i.s, align 8, !dbg !167873, !range !3514, !noundef !3468 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !167873 ; 2 uses
  br i1 %i.r, label %bb.m, label %bb.n, !dbg !167872, !prof !3515

bb.m:                                             ; preds = %bb.l
  %i.v = load i64, ptr %i.u, align 8, !dbg !167874
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.t, i64 %i.v) #43
          to label %bb.aa unwind label %bb.k, !dbg !167875

bb.n:                                             ; preds = %bb.l
  %i.w = load ptr, ptr %i.u, align 8, !dbg !167876, !nonnull !3468, !noundef !3468
  %i.x = icmp samesign ule i64 %3, %i.t, !dbg !167877
  call void @llvm.assume(i1 %i.x), !dbg !167878
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !167879
  store i64 %i.t, ptr %i.b, align 8, !dbg !167880
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !167880 ; 2 uses
  store ptr %i.w, ptr %i.y, align 8, !dbg !167880
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !167880 ; 3 uses
  store i64 0, ptr %i.z, align 8, !dbg !167881
  %i.aa = icmp eq i64 %3, 0, !dbg !167882
  br i1 %i.aa, label %._crit_edge, label %.lr.ph, !dbg !167883

.lr.ph:                                           ; preds = %bb.n
  %i.ab = sub i64 %.val37, %.val
  %i.ac = uitofp i64 %i.ab to double              ; 2 uses
  %i.ad = fadd nnan double %i.ac, -1.000000e+00
  %i.ae = uitofp i64 %.val to double
  %i.af = add i64 %.val37, -1
  br label %bb.o, !dbg !167883

bb.o:                                             ; preds = %.lr.ph, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit
  %.sroa.02.047 = phi ptr [ %2, %.lr.ph ], [ %i.ag, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.02.047, i64 8, !dbg !167884 ; 2 uses
  %i.ah = load double, ptr %.sroa.02.047, align 8, !dbg !167885, !noundef !3468 ; 2 uses
  %i.ai = fmul double %i.ad, %i.ah, !dbg !167886
  %i.aj = fadd double %i.ai, %i.ae, !dbg !167886  ; 5 uses
  switch i8 %4, label %default.unreachable [
    i8 0, label %bb.p
    i8 1, label %bb.q
    i8 2, label %bb.r
    i8 3, label %bb.q
    i8 4, label %bb.q
    i8 5, label %bb.s
  ], !dbg !167887

default.unreachable:                              ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.ak = call double @llvm.round.f64(double %i.aj), !dbg !167888
  %i.al = call i64 @llvm.fptoui.sat.i64.f64(double %i.ak), !dbg !167889
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !167890

bb.q:                                             ; preds = %bb.o, %bb.o, %bb.o
  %i.am = call i64 @llvm.fptoui.sat.i64.f64(double %i.aj), !dbg !167891
  %.pre.i = call double @llvm.ceil.f64(double %i.aj), !dbg !167892
  %.pre7.i = call i64 @llvm.fptoui.sat.i64.f64(double %.pre.i), !dbg !167893
  br label %bb.t, !dbg !167894

bb.r:                                             ; preds = %bb.o
  %i.an = call double @llvm.ceil.f64(double %i.aj), !dbg !167895
  %i.ao = call i64 @llvm.fptoui.sat.i64.f64(double %i.an), !dbg !167896 ; 2 uses
  br label %bb.t, !dbg !167897

bb.s:                                             ; preds = %bb.o
  %i.ap = fmul double %i.ah, %i.ac, !dbg !167898
  %i.aq = call double @llvm.ceil.f64(double %i.ap), !dbg !167899
  %i.ar = fadd double %i.aq, -1.000000e+00, !dbg !167900
  %i.as = call nsz double @llvm.maximumnum.f64(double %i.ar, double 0.000000e+00), !dbg !167901
  %i.at = call i64 @llvm.fptoui.sat.i64.f64(double %i.as), !dbg !167900
  %i.au = add i64 %i.at, %.val, !dbg !167900
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !167890

bb.t:                                             ; preds = %bb.r, %bb.q
  %.pre-phi8.i = phi i64 [ %i.ao, %bb.r ], [ %.pre7.i, %bb.q ], !dbg !167893
  %.sroa.0.0.i = phi i64 [ %i.ao, %bb.r ], [ %i.am, %bb.q ], !dbg !167902
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i, i64 %i.af), !dbg !167903 ; 2 uses
  %i.av = icmp eq i64 %.pre-phi8.i, %.sroa.0.0.i.i, !dbg !167904
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !167905

._crit_edge:                                      ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit, %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !167906
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !167907
  store i64 18, ptr %0, align 8, !dbg !167906
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !167908
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes9Int16TypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %i.c)
          to label %bb.al unwind label %bb.d, !dbg !167871

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ad, %bb.ae, %bb.x, %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, %.loopexit42.invoke
  %lpad.loopexit.split-lp67 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB4_6option6OptiondEEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 dereferenceable(24) %i.b) #44
          to label %bb.j unwind label %bb.ak, !dbg !167908

_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit: ; preds = %bb.t, %bb.s, %bb.p
  %.sink13.i = phi i64 [ %i.al, %bb.p ], [ %i.au, %bb.s ], [ %.sroa.0.0.i.i, %bb.t ] ; 4 uses
  %.sink11.i = phi double [ 0.000000e+00, %bb.p ], [ 0.000000e+00, %bb.s ], [ %i.aj, %bb.t ]
  %.sink.i = phi i1 [ true, %bb.p ], [ true, %bb.s ], [ %i.av, %bb.t ] ; 2 uses
  %i.ax = invoke fastcc { i16, i16 } @_RNvMs_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB4_12ChunkedArrayNtNtB6_9datatypes9Int16TypeE3getB6_(ptr noundef nonnull align 8 %i.c, i64 noundef %.sink13.i)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !167909 ; 2 uses

bb.u:                                             ; preds = %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit
  %i.ay = extractvalue { i16, i16 } %i.ax, 0, !dbg !167910 ; 2 uses
  %i.az = trunc i16 %i.ay to i1, !dbg !167911     ; 5 uses
  %i.ba = extractvalue { i16, i16 } %i.ax, 1, !dbg !167911
  %i.bb = sitofp i16 %i.ba to double, !dbg !167911 ; 8 uses
  %.sroa.9.0 = select i1 %i.az, double %i.bb, double undef, !dbg !167911 ; 3 uses
  %.mask = and i16 %i.ay, 1, !dbg !167911
  %.sroa.05.0 = zext nneg i16 %.mask to i64, !dbg !167911
  switch i8 %4, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit [
    i8 3, label %bb.v
    i8 4, label %bb.w
  ], !dbg !167912

bb.v:                                             ; preds = %bb.u
  br i1 %.sink.i, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.x, !dbg !167913

bb.w:                                             ; preds = %bb.u
  br i1 %.sink.i, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.ae, !dbg !167904

bb.x:                                             ; preds = %bb.v
  %i.bc = add i64 %.sink13.i, 1, !dbg !167914
  %i.bd = invoke fastcc { i16, i16 } @_RNvMs_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB4_12ChunkedArrayNtNtB6_9datatypes9Int16TypeE3getB6_(ptr noundef nonnull align 8 %i.c, i64 noundef %i.bc)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !167915 ; 2 uses

bb.y:                                             ; preds = %bb.x
  %i.be = extractvalue { i16, i16 } %i.bd, 0, !dbg !167916
  %i.bf = trunc i16 %i.be to i1, !dbg !167917
  br i1 %i.bf, label %bb.ab, label %bb.z, !dbg !167917, !prof !3738

bb.z:                                             ; preds = %bb.y
  br i1 %i.az, label %.loopexit42.invoke, label %.loopexit43, !dbg !167918

.loopexit43:                                      ; preds = %bb.ab, %bb.z
  br label %.loopexit42.invoke, !dbg !167919

bb.aa:                                            ; preds = %bb.m
  unreachable

bb.ab:                                            ; preds = %bb.y
  br i1 %i.az, label %bb.ac, label %.loopexit43, !dbg !167918, !prof !3738

bb.ac:                                            ; preds = %bb.ab
  %i.bg = extractvalue { i16, i16 } %i.bd, 1, !dbg !167916
  %i.bh = sitofp i16 %i.bg to double, !dbg !167920 ; 2 uses
  %i.bi = fcmp oeq double %i.bb, %i.bh, !dbg !167921
  %i.bj = fadd nnan double %i.bb, %i.bh, !dbg !167922
  %i.bk = fmul nnan double %i.bj, 5.000000e-01, !dbg !167922
  %.sroa.0.0.i39 = select i1 %i.bi, double %i.bb, double %i.bk, !dbg !167922
  br label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, !dbg !167923

_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit: ; preds = %bb.aj, %bb.ai, %bb.ac, %bb.w, %bb.v, %bb.u
  %.sroa.9.1 = phi double [ %.sroa.9.0, %bb.u ], [ %.sroa.9.0, %bb.v ], [ %.sroa.0.0.i39, %bb.ac ], [ %.sroa.9.0, %bb.w ], [ %i.cf, %bb.aj ], [ %i.bb, %bb.ai ], !dbg !167924
  %i.bl = load i64, ptr %i.z, align 8, !dbg !167925, !alias.scope !167848, !noundef !3468 ; 3 uses
  %i.bm = load i64, ptr %i.b, align 8, !dbg !167926, !range !3548, !alias.scope !167848, !noundef !3468
  %i.bn = icmp eq i64 %i.bl, %i.bm, !dbg !167927
  br i1 %i.bn, label %bb.ad, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit, !dbg !167927

bb.ad:                                            ; preds = %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8grow_oneCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !167928

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.ad, %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit
  %i.bo = load ptr, ptr %i.y, align 8, !dbg !167929, !alias.scope !167848, !nonnull !3468, !noundef !3468
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %i.bl, !dbg !167930 ; 2 uses
  store i64 %.sroa.05.0, ptr %i.bp, align 8, !dbg !167931
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8, !dbg !167931
  store double %.sroa.9.1, ptr %i.bq, align 8, !dbg !167931
  %i.br = add i64 %i.bl, 1, !dbg !167932
  store i64 %i.br, ptr %i.z, align 8, !dbg !167881
  %i.bs = icmp eq ptr %i.ag, %i.e, !dbg !167882
  br i1 %i.bs, label %._crit_edge, label %bb.o, !dbg !167883

bb.ae:                                            ; preds = %bb.w
  %i.bt = add i64 %.sink13.i, 1, !dbg !167933
  %i.bu = invoke fastcc { i16, i16 } @_RNvMs_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB4_12ChunkedArrayNtNtB6_9datatypes9Int16TypeE3getB6_(ptr noundef nonnull align 8 %i.c, i64 noundef %i.bt)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !167934 ; 2 uses

bb.af:                                            ; preds = %bb.ae
  %i.bv = extractvalue { i16, i16 } %i.bu, 0, !dbg !167935
  %i.bw = trunc i16 %i.bv to i1, !dbg !167936
  br i1 %i.bw, label %bb.ah, label %bb.ag, !dbg !167936, !prof !3738

bb.ag:                                            ; preds = %bb.af
  br i1 %i.az, label %.loopexit42.invoke, label %.loopexit42, !dbg !167937

.loopexit42:                                      ; preds = %bb.ah, %bb.ag
  br label %.loopexit42.invoke, !dbg !167938

.loopexit42.invoke:                               ; preds = %bb.ag, %bb.z, %.loopexit43, %.loopexit42
  %i.bx = phi ptr [ @69, %.loopexit42 ], [ @66, %bb.z ], [ @67, %.loopexit43 ], [ @68, %bb.ag ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bx) #43
          to label %.loopexit42.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !167939

.loopexit42.cont:                                 ; preds = %.loopexit42.invoke
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.by = extractvalue { i16, i16 } %i.bu, 1, !dbg !167935
  %i.bz = sitofp i16 %i.by to double, !dbg !167940 ; 2 uses
  br i1 %i.az, label %bb.ai, label %.loopexit42, !dbg !167937, !prof !3738

bb.ai:                                            ; preds = %bb.ah
  %i.ca = fcmp oeq double %i.bb, %i.bz, !dbg !167941
  br i1 %i.ca, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.aj, !dbg !167942

bb.aj:                                            ; preds = %bb.ai
  %i.cb = uitofp i64 %.sink13.i to double, !dbg !167943
  %i.cc = fsub double %.sink11.i, %i.cb, !dbg !167944
  %i.cd = fsub nnan double %i.bz, %i.bb, !dbg !167945
  %i.ce = fmul double %i.cc, %i.cd, !dbg !167946
  %i.cf = fadd double %i.ce, %i.bb, !dbg !167947
  br label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, !dbg !167948

bb.ak:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.j, %bb.c
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !167949
  unreachable, !dbg !167949

bb.al:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !167871
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes9Int16TypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %1), !dbg !167856
  br label %bb.am, !dbg !167856

bb.am:                                            ; preds = %bb.al, %bb.f
  ret void, !dbg !167950

bb.an:                                            ; preds = %bb.h
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !167951
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !167951
  store i64 18, ptr %0, align 8, !dbg !167951
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !167952
  br label %bb.f, !dbg !167862

bb.ao:                                            ; preds = %bb.c
  resume { ptr, i32 } %.pn35, !dbg !167949
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile17generic_quantilesNtNtBa_9datatypes9Int32TypeEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56) %1, ptr noalias noundef nonnull readonly align 8 captures(address) %2, i64 noundef range(i64 0, 1152921504606846976) %3, i8 noundef range(i8 0, 6) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !167953 !guid !168038 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [56 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %.idx = shl nuw nsw i64 %3, 3, !dbg !168069
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %.idx, !dbg !168069 ; 2 uses
  %i.f = icmp eq i64 %3, 0, !dbg !168070
  br i1 %i.f, label %._crit_edge66, label %.lr.ph65, !dbg !168045

bb.b:                                             ; preds = %.lr.ph65
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.063, i64 8, !dbg !168071 ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.e, !dbg !168070
  br i1 %i.h, label %._crit_edge66, label %.lr.ph65, !dbg !168045

bb.c:                                             ; preds = %bb.j, %bb.d
  %.pn35 = phi { ptr, i32 } [ %i.i, %bb.d ], [ %.pn, %bb.j ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes9Int32TypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %1) #44
          to label %bb.ao unwind label %bb.ak, !dbg !168072

bb.d:                                             ; preds = %._crit_edge, %bb.h, %bb.g
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.lr.ph65:                                         ; preds = %bb.a, %bb.b
  %.sroa.0.063 = phi ptr [ %i.g, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %i.j = load double, ptr %.sroa.0.063, align 8, !dbg !168073, !noundef !3468 ; 2 uses
  %i.k = fcmp oge double %i.j, 0.000000e+00, !dbg !168074
  %i.l = fcmp ole double %i.j, 1.000000e+00
  %spec.select.i = and i1 %i.k, %i.l, !dbg !168075
  br i1 %spec.select.i, label %bb.b, label %bb.e, !dbg !168076

bb.e:                                             ; preds = %.lr.ph65
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) @65, i64 72, i1 false), !dbg !168077
  br label %bb.f, !dbg !168078

bb.f:                                             ; preds = %bb.an, %bb.e
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes9Int32TypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %1), !dbg !168072
  br label %bb.am, !dbg !168072

._crit_edge66:                                    ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !168079
  %.val = load i64, ptr %i.m, align 8, !dbg !168079, !noundef !3468 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !168080
  %.val37 = load i64, ptr %i.n, align 8, !dbg !168080, !noundef !3468 ; 3 uses
  %i.o = icmp eq i64 %.val, %.val37, !dbg !168081
  br i1 %i.o, label %bb.h, label %bb.g, !dbg !168081

bb.g:                                             ; preds = %._crit_edge66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !168082
  invoke void @_RNvXNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sortINtB6_12ChunkedArrayNtNtB8_9datatypes9Int32TypeEINtB4_9ChunkSortB1h_E4sortB8_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.c, ptr noundef nonnull align 8 %1, i1 noundef zeroext false)
          to label %bb.i unwind label %bb.d, !dbg !168083

bb.h:                                             ; preds = %._crit_edge66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !168049
  invoke void @_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemINtNtCscgRAwXFJnXP_4core6option6OptiondENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef 0, double undef, i64 noundef %3)
          to label %bb.an unwind label %bb.d, !dbg !168084

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !168085
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !168086
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %3, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
          to label %bb.l unwind label %bb.k, !dbg !168086

bb.j:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.k
  %.pn = phi { ptr, i32 } [ %i.p, %bb.k ], [ %lpad.loopexit.split-lp67, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes9Int32TypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %i.c) #44
          to label %bb.c unwind label %bb.ak, !dbg !168087

bb.k:                                             ; preds = %bb.m, %bb.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.l:                                             ; preds = %bb.i
  %i.q = load i64, ptr %i.a, align 8, !dbg !168086, !range !3513, !noundef !3468
  %i.r = trunc nuw i64 %i.q to i1, !dbg !168088
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !168089
  %i.t = load i64, ptr %i.s, align 8, !dbg !168089, !range !3514, !noundef !3468 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !168089 ; 2 uses
  br i1 %i.r, label %bb.m, label %bb.n, !dbg !168088, !prof !3515

bb.m:                                             ; preds = %bb.l
  %i.v = load i64, ptr %i.u, align 8, !dbg !168090
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.t, i64 %i.v) #43
          to label %bb.aa unwind label %bb.k, !dbg !168091

bb.n:                                             ; preds = %bb.l
  %i.w = load ptr, ptr %i.u, align 8, !dbg !168092, !nonnull !3468, !noundef !3468
  %i.x = icmp samesign ule i64 %3, %i.t, !dbg !168093
  call void @llvm.assume(i1 %i.x), !dbg !168094
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !168095
  store i64 %i.t, ptr %i.b, align 8, !dbg !168096
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !168096 ; 2 uses
  store ptr %i.w, ptr %i.y, align 8, !dbg !168096
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !168096 ; 3 uses
  store i64 0, ptr %i.z, align 8, !dbg !168097
  %i.aa = icmp eq i64 %3, 0, !dbg !168098
  br i1 %i.aa, label %._crit_edge, label %.lr.ph, !dbg !168099

.lr.ph:                                           ; preds = %bb.n
  %i.ab = sub i64 %.val37, %.val
  %i.ac = uitofp i64 %i.ab to double              ; 2 uses
  %i.ad = fadd nnan double %i.ac, -1.000000e+00
  %i.ae = uitofp i64 %.val to double
  %i.af = add i64 %.val37, -1
  br label %bb.o, !dbg !168099

bb.o:                                             ; preds = %.lr.ph, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit
  %.sroa.02.047 = phi ptr [ %2, %.lr.ph ], [ %i.ag, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.02.047, i64 8, !dbg !168100 ; 2 uses
  %i.ah = load double, ptr %.sroa.02.047, align 8, !dbg !168101, !noundef !3468 ; 2 uses
  %i.ai = fmul double %i.ad, %i.ah, !dbg !168102
  %i.aj = fadd double %i.ai, %i.ae, !dbg !168102  ; 5 uses
  switch i8 %4, label %default.unreachable [
    i8 0, label %bb.p
    i8 1, label %bb.q
    i8 2, label %bb.r
    i8 3, label %bb.q
    i8 4, label %bb.q
    i8 5, label %bb.s
  ], !dbg !168103

default.unreachable:                              ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.ak = call double @llvm.round.f64(double %i.aj), !dbg !168104
  %i.al = call i64 @llvm.fptoui.sat.i64.f64(double %i.ak), !dbg !168105
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !168106

bb.q:                                             ; preds = %bb.o, %bb.o, %bb.o
  %i.am = call i64 @llvm.fptoui.sat.i64.f64(double %i.aj), !dbg !168107
  %.pre.i = call double @llvm.ceil.f64(double %i.aj), !dbg !168108
  %.pre7.i = call i64 @llvm.fptoui.sat.i64.f64(double %.pre.i), !dbg !168109
  br label %bb.t, !dbg !168110

bb.r:                                             ; preds = %bb.o
  %i.an = call double @llvm.ceil.f64(double %i.aj), !dbg !168111
  %i.ao = call i64 @llvm.fptoui.sat.i64.f64(double %i.an), !dbg !168112 ; 2 uses
  br label %bb.t, !dbg !168113

bb.s:                                             ; preds = %bb.o
  %i.ap = fmul double %i.ah, %i.ac, !dbg !168114
  %i.aq = call double @llvm.ceil.f64(double %i.ap), !dbg !168115
  %i.ar = fadd double %i.aq, -1.000000e+00, !dbg !168116
  %i.as = call nsz double @llvm.maximumnum.f64(double %i.ar, double 0.000000e+00), !dbg !168117
  %i.at = call i64 @llvm.fptoui.sat.i64.f64(double %i.as), !dbg !168116
  %i.au = add i64 %i.at, %.val, !dbg !168116
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !168106

bb.t:                                             ; preds = %bb.r, %bb.q
  %.pre-phi8.i = phi i64 [ %i.ao, %bb.r ], [ %.pre7.i, %bb.q ], !dbg !168109
  %.sroa.0.0.i = phi i64 [ %i.ao, %bb.r ], [ %i.am, %bb.q ], !dbg !168118
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i, i64 %i.af), !dbg !168119 ; 2 uses
  %i.av = icmp eq i64 %.pre-phi8.i, %.sroa.0.0.i.i, !dbg !168120
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !168121

._crit_edge:                                      ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit, %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !168122
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !168123
  store i64 18, ptr %0, align 8, !dbg !168122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !168124
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes9Int32TypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %i.c)
          to label %bb.al unwind label %bb.d, !dbg !168087

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ad, %bb.ae, %bb.x, %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, %.loopexit42.invoke
  %lpad.loopexit.split-lp67 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB4_6option6OptiondEEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 dereferenceable(24) %i.b) #44
          to label %bb.j unwind label %bb.ak, !dbg !168124

_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit: ; preds = %bb.t, %bb.s, %bb.p
  %.sink13.i = phi i64 [ %i.al, %bb.p ], [ %i.au, %bb.s ], [ %.sroa.0.0.i.i, %bb.t ] ; 4 uses
  %.sink11.i = phi double [ 0.000000e+00, %bb.p ], [ 0.000000e+00, %bb.s ], [ %i.aj, %bb.t ]
  %.sink.i = phi i1 [ true, %bb.p ], [ true, %bb.s ], [ %i.av, %bb.t ] ; 2 uses
  %i.ax = invoke fastcc { i32, i32 } @_RNvMs_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB4_12ChunkedArrayNtNtB6_9datatypes9Int32TypeE3getB6_(ptr noundef nonnull align 8 %i.c, i64 noundef %.sink13.i)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !168125 ; 2 uses

bb.u:                                             ; preds = %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit
  %i.ay = extractvalue { i32, i32 } %i.ax, 0, !dbg !168126 ; 2 uses
  %i.az = trunc i32 %i.ay to i1, !dbg !168127     ; 5 uses
  %i.ba = extractvalue { i32, i32 } %i.ax, 1, !dbg !168127
  %i.bb = sitofp i32 %i.ba to double, !dbg !168127 ; 8 uses
  %.sroa.9.0 = select i1 %i.az, double %i.bb, double undef, !dbg !168127 ; 3 uses
  %.mask = and i32 %i.ay, 1, !dbg !168127
  %.sroa.05.0 = zext nneg i32 %.mask to i64, !dbg !168127
  switch i8 %4, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit [
    i8 3, label %bb.v
    i8 4, label %bb.w
  ], !dbg !168128

bb.v:                                             ; preds = %bb.u
  br i1 %.sink.i, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.x, !dbg !168129

bb.w:                                             ; preds = %bb.u
  br i1 %.sink.i, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.ae, !dbg !168120

bb.x:                                             ; preds = %bb.v
  %i.bc = add i64 %.sink13.i, 1, !dbg !168130
  %i.bd = invoke fastcc { i32, i32 } @_RNvMs_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB4_12ChunkedArrayNtNtB6_9datatypes9Int32TypeE3getB6_(ptr noundef nonnull align 8 %i.c, i64 noundef %i.bc)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !168131 ; 2 uses

bb.y:                                             ; preds = %bb.x
  %i.be = extractvalue { i32, i32 } %i.bd, 0, !dbg !168132
  %i.bf = trunc i32 %i.be to i1, !dbg !168133
  br i1 %i.bf, label %bb.ab, label %bb.z, !dbg !168133, !prof !3738

bb.z:                                             ; preds = %bb.y
  br i1 %i.az, label %.loopexit42.invoke, label %.loopexit43, !dbg !168134

.loopexit43:                                      ; preds = %bb.ab, %bb.z
  br label %.loopexit42.invoke, !dbg !168135

bb.aa:                                            ; preds = %bb.m
  unreachable

bb.ab:                                            ; preds = %bb.y
  br i1 %i.az, label %bb.ac, label %.loopexit43, !dbg !168134, !prof !3738

bb.ac:                                            ; preds = %bb.ab
  %i.bg = extractvalue { i32, i32 } %i.bd, 1, !dbg !168132
  %i.bh = sitofp i32 %i.bg to double, !dbg !168136 ; 2 uses
  %i.bi = fcmp oeq double %i.bb, %i.bh, !dbg !168137
  %i.bj = fadd nnan double %i.bb, %i.bh, !dbg !168138
  %i.bk = fmul nnan double %i.bj, 5.000000e-01, !dbg !168138
  %.sroa.0.0.i39 = select i1 %i.bi, double %i.bb, double %i.bk, !dbg !168138
  br label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, !dbg !168139

_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit: ; preds = %bb.aj, %bb.ai, %bb.ac, %bb.w, %bb.v, %bb.u
  %.sroa.9.1 = phi double [ %.sroa.9.0, %bb.u ], [ %.sroa.9.0, %bb.v ], [ %.sroa.0.0.i39, %bb.ac ], [ %.sroa.9.0, %bb.w ], [ %i.cf, %bb.aj ], [ %i.bb, %bb.ai ], !dbg !168140
  %i.bl = load i64, ptr %i.z, align 8, !dbg !168141, !alias.scope !168064, !noundef !3468 ; 3 uses
  %i.bm = load i64, ptr %i.b, align 8, !dbg !168142, !range !3548, !alias.scope !168064, !noundef !3468
  %i.bn = icmp eq i64 %i.bl, %i.bm, !dbg !168143
  br i1 %i.bn, label %bb.ad, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit, !dbg !168143

bb.ad:                                            ; preds = %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8grow_oneCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !168144

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.ad, %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit
  %i.bo = load ptr, ptr %i.y, align 8, !dbg !168145, !alias.scope !168064, !nonnull !3468, !noundef !3468
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %i.bl, !dbg !168146 ; 2 uses
  store i64 %.sroa.05.0, ptr %i.bp, align 8, !dbg !168147
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8, !dbg !168147
  store double %.sroa.9.1, ptr %i.bq, align 8, !dbg !168147
  %i.br = add i64 %i.bl, 1, !dbg !168148
  store i64 %i.br, ptr %i.z, align 8, !dbg !168097
  %i.bs = icmp eq ptr %i.ag, %i.e, !dbg !168098
  br i1 %i.bs, label %._crit_edge, label %bb.o, !dbg !168099

bb.ae:                                            ; preds = %bb.w
  %i.bt = add i64 %.sink13.i, 1, !dbg !168149
  %i.bu = invoke fastcc { i32, i32 } @_RNvMs_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB4_12ChunkedArrayNtNtB6_9datatypes9Int32TypeE3getB6_(ptr noundef nonnull align 8 %i.c, i64 noundef %i.bt)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !168150 ; 2 uses

bb.af:                                            ; preds = %bb.ae
  %i.bv = extractvalue { i32, i32 } %i.bu, 0, !dbg !168151
  %i.bw = trunc i32 %i.bv to i1, !dbg !168152
  br i1 %i.bw, label %bb.ah, label %bb.ag, !dbg !168152, !prof !3738

bb.ag:                                            ; preds = %bb.af
  br i1 %i.az, label %.loopexit42.invoke, label %.loopexit42, !dbg !168153

.loopexit42:                                      ; preds = %bb.ah, %bb.ag
  br label %.loopexit42.invoke, !dbg !168154

.loopexit42.invoke:                               ; preds = %bb.ag, %bb.z, %.loopexit43, %.loopexit42
  %i.bx = phi ptr [ @69, %.loopexit42 ], [ @66, %bb.z ], [ @67, %.loopexit43 ], [ @68, %bb.ag ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bx) #43
          to label %.loopexit42.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !168155

.loopexit42.cont:                                 ; preds = %.loopexit42.invoke
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.by = extractvalue { i32, i32 } %i.bu, 1, !dbg !168151
  %i.bz = sitofp i32 %i.by to double, !dbg !168156 ; 2 uses
  br i1 %i.az, label %bb.ai, label %.loopexit42, !dbg !168153, !prof !3738

bb.ai:                                            ; preds = %bb.ah
  %i.ca = fcmp oeq double %i.bb, %i.bz, !dbg !168157
  br i1 %i.ca, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.aj, !dbg !168158

bb.aj:                                            ; preds = %bb.ai
  %i.cb = uitofp i64 %.sink13.i to double, !dbg !168159
  %i.cc = fsub double %.sink11.i, %i.cb, !dbg !168160
  %i.cd = fsub nnan double %i.bz, %i.bb, !dbg !168161
  %i.ce = fmul double %i.cc, %i.cd, !dbg !168162
  %i.cf = fadd double %i.ce, %i.bb, !dbg !168163
  br label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, !dbg !168164

bb.ak:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.j, %bb.c
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !168165
  unreachable, !dbg !168165

bb.al:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !168087
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes9Int32TypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %1), !dbg !168072
  br label %bb.am, !dbg !168072

bb.am:                                            ; preds = %bb.al, %bb.f
  ret void, !dbg !168166

bb.an:                                            ; preds = %bb.h
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !168167
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !168167
  store i64 18, ptr %0, align 8, !dbg !168167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !168168
  br label %bb.f, !dbg !168078

bb.ao:                                            ; preds = %bb.c
  resume { ptr, i32 } %.pn35, !dbg !168165
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile17generic_quantilesNtNtBa_9datatypes9Int64TypeEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56) %1, ptr noalias noundef nonnull readonly align 8 captures(address) %2, i64 noundef range(i64 0, 1152921504606846976) %3, i8 noundef range(i8 0, 6) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !168169 !guid !168254 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [56 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %.idx = shl nuw nsw i64 %3, 3, !dbg !168285
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %.idx, !dbg !168285 ; 2 uses
  %i.f = icmp eq i64 %3, 0, !dbg !168286
  br i1 %i.f, label %._crit_edge66, label %.lr.ph65, !dbg !168261

bb.b:                                             ; preds = %.lr.ph65
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.063, i64 8, !dbg !168287 ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.e, !dbg !168286
  br i1 %i.h, label %._crit_edge66, label %.lr.ph65, !dbg !168261

bb.c:                                             ; preds = %bb.j, %bb.d
  %.pn35 = phi { ptr, i32 } [ %i.i, %bb.d ], [ %.pn, %bb.j ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes9Int64TypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %1) #44
          to label %bb.ao unwind label %bb.ak, !dbg !168288

bb.d:                                             ; preds = %._crit_edge, %bb.h, %bb.g
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.lr.ph65:                                         ; preds = %bb.a, %bb.b
  %.sroa.0.063 = phi ptr [ %i.g, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %i.j = load double, ptr %.sroa.0.063, align 8, !dbg !168289, !noundef !3468 ; 2 uses
  %i.k = fcmp oge double %i.j, 0.000000e+00, !dbg !168290
  %i.l = fcmp ole double %i.j, 1.000000e+00
  %spec.select.i = and i1 %i.k, %i.l, !dbg !168291
  br i1 %spec.select.i, label %bb.b, label %bb.e, !dbg !168292

bb.e:                                             ; preds = %.lr.ph65
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) @65, i64 72, i1 false), !dbg !168293
  br label %bb.f, !dbg !168294

bb.f:                                             ; preds = %bb.an, %bb.e
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes9Int64TypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %1), !dbg !168288
  br label %bb.am, !dbg !168288

._crit_edge66:                                    ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !168295
  %.val = load i64, ptr %i.m, align 8, !dbg !168295, !noundef !3468 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !168296
  %.val37 = load i64, ptr %i.n, align 8, !dbg !168296, !noundef !3468 ; 3 uses
  %i.o = icmp eq i64 %.val, %.val37, !dbg !168297
  br i1 %i.o, label %bb.h, label %bb.g, !dbg !168297

bb.g:                                             ; preds = %._crit_edge66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !168298
  invoke void @_RNvXNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sortINtB6_12ChunkedArrayNtNtB8_9datatypes9Int64TypeEINtB4_9ChunkSortB1h_E4sortB8_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.c, ptr noundef nonnull align 8 %1, i1 noundef zeroext false)
          to label %bb.i unwind label %bb.d, !dbg !168299

bb.h:                                             ; preds = %._crit_edge66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !168265
  invoke void @_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemINtNtCscgRAwXFJnXP_4core6option6OptiondENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef 0, double undef, i64 noundef %3)
          to label %bb.an unwind label %bb.d, !dbg !168300

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !168301
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !168302
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %3, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
          to label %bb.l unwind label %bb.k, !dbg !168302

bb.j:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.k
  %.pn = phi { ptr, i32 } [ %i.p, %bb.k ], [ %lpad.loopexit.split-lp67, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes9Int64TypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %i.c) #44
          to label %bb.c unwind label %bb.ak, !dbg !168303

bb.k:                                             ; preds = %bb.m, %bb.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.l:                                             ; preds = %bb.i
  %i.q = load i64, ptr %i.a, align 8, !dbg !168302, !range !3513, !noundef !3468
  %i.r = trunc nuw i64 %i.q to i1, !dbg !168304
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !168305
  %i.t = load i64, ptr %i.s, align 8, !dbg !168305, !range !3514, !noundef !3468 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !168305 ; 2 uses
  br i1 %i.r, label %bb.m, label %bb.n, !dbg !168304, !prof !3515

bb.m:                                             ; preds = %bb.l
  %i.v = load i64, ptr %i.u, align 8, !dbg !168306
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.t, i64 %i.v) #43
          to label %bb.aa unwind label %bb.k, !dbg !168307

bb.n:                                             ; preds = %bb.l
  %i.w = load ptr, ptr %i.u, align 8, !dbg !168308, !nonnull !3468, !noundef !3468
  %i.x = icmp samesign ule i64 %3, %i.t, !dbg !168309
  call void @llvm.assume(i1 %i.x), !dbg !168310
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !168311
  store i64 %i.t, ptr %i.b, align 8, !dbg !168312
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !168312 ; 2 uses
  store ptr %i.w, ptr %i.y, align 8, !dbg !168312
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !168312 ; 3 uses
  store i64 0, ptr %i.z, align 8, !dbg !168313
  %i.aa = icmp eq i64 %3, 0, !dbg !168314
  br i1 %i.aa, label %._crit_edge, label %.lr.ph, !dbg !168315

.lr.ph:                                           ; preds = %bb.n
  %i.ab = sub i64 %.val37, %.val
  %i.ac = uitofp i64 %i.ab to double              ; 2 uses
  %i.ad = fadd nnan double %i.ac, -1.000000e+00
  %i.ae = uitofp i64 %.val to double
  %i.af = add i64 %.val37, -1
  br label %bb.o, !dbg !168315

bb.o:                                             ; preds = %.lr.ph, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit
  %.sroa.02.047 = phi ptr [ %2, %.lr.ph ], [ %i.ag, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.02.047, i64 8, !dbg !168316 ; 2 uses
  %i.ah = load double, ptr %.sroa.02.047, align 8, !dbg !168317, !noundef !3468 ; 2 uses
  %i.ai = fmul double %i.ad, %i.ah, !dbg !168318
  %i.aj = fadd double %i.ai, %i.ae, !dbg !168318  ; 5 uses
  switch i8 %4, label %default.unreachable [
    i8 0, label %bb.p
    i8 1, label %bb.q
    i8 2, label %bb.r
    i8 3, label %bb.q
    i8 4, label %bb.q
    i8 5, label %bb.s
  ], !dbg !168319

default.unreachable:                              ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.ak = call double @llvm.round.f64(double %i.aj), !dbg !168320
  %i.al = call i64 @llvm.fptoui.sat.i64.f64(double %i.ak), !dbg !168321
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !168322

bb.q:                                             ; preds = %bb.o, %bb.o, %bb.o
  %i.am = call i64 @llvm.fptoui.sat.i64.f64(double %i.aj), !dbg !168323
  %.pre.i = call double @llvm.ceil.f64(double %i.aj), !dbg !168324
  %.pre7.i = call i64 @llvm.fptoui.sat.i64.f64(double %.pre.i), !dbg !168325
  br label %bb.t, !dbg !168326

bb.r:                                             ; preds = %bb.o
  %i.an = call double @llvm.ceil.f64(double %i.aj), !dbg !168327
  %i.ao = call i64 @llvm.fptoui.sat.i64.f64(double %i.an), !dbg !168328 ; 2 uses
  br label %bb.t, !dbg !168329

bb.s:                                             ; preds = %bb.o
  %i.ap = fmul double %i.ah, %i.ac, !dbg !168330
  %i.aq = call double @llvm.ceil.f64(double %i.ap), !dbg !168331
  %i.ar = fadd double %i.aq, -1.000000e+00, !dbg !168332
  %i.as = call nsz double @llvm.maximumnum.f64(double %i.ar, double 0.000000e+00), !dbg !168333
  %i.at = call i64 @llvm.fptoui.sat.i64.f64(double %i.as), !dbg !168332
  %i.au = add i64 %i.at, %.val, !dbg !168332
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !168322

bb.t:                                             ; preds = %bb.r, %bb.q
  %.pre-phi8.i = phi i64 [ %i.ao, %bb.r ], [ %.pre7.i, %bb.q ], !dbg !168325
  %.sroa.0.0.i = phi i64 [ %i.ao, %bb.r ], [ %i.am, %bb.q ], !dbg !168334
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i, i64 %i.af), !dbg !168335 ; 2 uses
  %i.av = icmp eq i64 %.pre-phi8.i, %.sroa.0.0.i.i, !dbg !168336
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !168337

._crit_edge:                                      ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit, %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !168338
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !168339
  store i64 18, ptr %0, align 8, !dbg !168338
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !168340
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes9Int64TypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %i.c)
          to label %bb.al unwind label %bb.d, !dbg !168303

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ad, %bb.ae, %bb.x, %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, %.loopexit42.invoke
  %lpad.loopexit.split-lp67 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB4_6option6OptiondEEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 dereferenceable(24) %i.b) #44
          to label %bb.j unwind label %bb.ak, !dbg !168340

_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit: ; preds = %bb.t, %bb.s, %bb.p
  %.sink13.i = phi i64 [ %i.al, %bb.p ], [ %i.au, %bb.s ], [ %.sroa.0.0.i.i, %bb.t ] ; 4 uses
  %.sink11.i = phi double [ 0.000000e+00, %bb.p ], [ 0.000000e+00, %bb.s ], [ %i.aj, %bb.t ]
  %.sink.i = phi i1 [ true, %bb.p ], [ true, %bb.s ], [ %i.av, %bb.t ] ; 2 uses
  %i.ax = invoke fastcc { i64, i64 } @_RNvMs_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB4_12ChunkedArrayNtNtB6_9datatypes9Int64TypeE3getB6_(ptr noundef nonnull align 8 %i.c, i64 noundef %.sink13.i)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !168341 ; 2 uses

bb.u:                                             ; preds = %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit
  %i.ay = extractvalue { i64, i64 } %i.ax, 0, !dbg !168342 ; 2 uses
  %i.az = trunc nuw i64 %i.ay to i1, !dbg !168343 ; 5 uses
  %i.ba = extractvalue { i64, i64 } %i.ax, 1, !dbg !168343
  %i.bb = sitofp i64 %i.ba to double, !dbg !168343 ; 8 uses
  %.sroa.9.0 = select i1 %i.az, double %i.bb, double undef, !dbg !168343 ; 3 uses
  switch i8 %4, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit [
    i8 3, label %bb.v
    i8 4, label %bb.w
  ], !dbg !168344

bb.v:                                             ; preds = %bb.u
  br i1 %.sink.i, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.x, !dbg !168345

bb.w:                                             ; preds = %bb.u
  br i1 %.sink.i, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.ae, !dbg !168336

bb.x:                                             ; preds = %bb.v
  %i.bc = add i64 %.sink13.i, 1, !dbg !168346
  %i.bd = invoke fastcc { i64, i64 } @_RNvMs_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB4_12ChunkedArrayNtNtB6_9datatypes9Int64TypeE3getB6_(ptr noundef nonnull align 8 %i.c, i64 noundef %i.bc)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !168347 ; 2 uses

bb.y:                                             ; preds = %bb.x
  %i.be = extractvalue { i64, i64 } %i.bd, 0, !dbg !168348
  %i.bf = trunc nuw i64 %i.be to i1, !dbg !168349
  br i1 %i.bf, label %bb.ab, label %bb.z, !dbg !168349, !prof !3738

bb.z:                                             ; preds = %bb.y
  br i1 %i.az, label %.loopexit42.invoke, label %.loopexit43, !dbg !168350

.loopexit43:                                      ; preds = %bb.ab, %bb.z
  br label %.loopexit42.invoke, !dbg !168351

bb.aa:                                            ; preds = %bb.m
  unreachable

bb.ab:                                            ; preds = %bb.y
  br i1 %i.az, label %bb.ac, label %.loopexit43, !dbg !168350, !prof !3738

bb.ac:                                            ; preds = %bb.ab
  %i.bg = extractvalue { i64, i64 } %i.bd, 1, !dbg !168348
  %i.bh = sitofp i64 %i.bg to double, !dbg !168352 ; 2 uses
  %i.bi = fcmp oeq double %i.bb, %i.bh, !dbg !168353
  %i.bj = fadd nnan double %i.bb, %i.bh, !dbg !168354
  %i.bk = fmul nnan double %i.bj, 5.000000e-01, !dbg !168354
  %.sroa.0.0.i39 = select i1 %i.bi, double %i.bb, double %i.bk, !dbg !168354
  br label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, !dbg !168355

_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit: ; preds = %bb.aj, %bb.ai, %bb.ac, %bb.w, %bb.v, %bb.u
  %.sroa.9.1 = phi double [ %.sroa.9.0, %bb.u ], [ %.sroa.9.0, %bb.v ], [ %.sroa.0.0.i39, %bb.ac ], [ %.sroa.9.0, %bb.w ], [ %i.cf, %bb.aj ], [ %i.bb, %bb.ai ], !dbg !168356
  %i.bl = load i64, ptr %i.z, align 8, !dbg !168357, !alias.scope !168280, !noundef !3468 ; 3 uses
  %i.bm = load i64, ptr %i.b, align 8, !dbg !168358, !range !3548, !alias.scope !168280, !noundef !3468
  %i.bn = icmp eq i64 %i.bl, %i.bm, !dbg !168359
  br i1 %i.bn, label %bb.ad, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit, !dbg !168359

bb.ad:                                            ; preds = %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8grow_oneCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !168360

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.ad, %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit
  %i.bo = load ptr, ptr %i.y, align 8, !dbg !168361, !alias.scope !168280, !nonnull !3468, !noundef !3468
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %i.bl, !dbg !168362 ; 2 uses
  store i64 %i.ay, ptr %i.bp, align 8, !dbg !168363
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8, !dbg !168363
  store double %.sroa.9.1, ptr %i.bq, align 8, !dbg !168363
  %i.br = add i64 %i.bl, 1, !dbg !168364
  store i64 %i.br, ptr %i.z, align 8, !dbg !168313
  %i.bs = icmp eq ptr %i.ag, %i.e, !dbg !168314
  br i1 %i.bs, label %._crit_edge, label %bb.o, !dbg !168315

bb.ae:                                            ; preds = %bb.w
  %i.bt = add i64 %.sink13.i, 1, !dbg !168365
  %i.bu = invoke fastcc { i64, i64 } @_RNvMs_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB4_12ChunkedArrayNtNtB6_9datatypes9Int64TypeE3getB6_(ptr noundef nonnull align 8 %i.c, i64 noundef %i.bt)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !168366 ; 2 uses

bb.af:                                            ; preds = %bb.ae
  %i.bv = extractvalue { i64, i64 } %i.bu, 0, !dbg !168367
  %i.bw = trunc nuw i64 %i.bv to i1, !dbg !168368
  br i1 %i.bw, label %bb.ah, label %bb.ag, !dbg !168368, !prof !3738

bb.ag:                                            ; preds = %bb.af
  br i1 %i.az, label %.loopexit42.invoke, label %.loopexit42, !dbg !168369

.loopexit42:                                      ; preds = %bb.ah, %bb.ag
  br label %.loopexit42.invoke, !dbg !168370

.loopexit42.invoke:                               ; preds = %bb.ag, %bb.z, %.loopexit43, %.loopexit42
  %i.bx = phi ptr [ @69, %.loopexit42 ], [ @66, %bb.z ], [ @67, %.loopexit43 ], [ @68, %bb.ag ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bx) #43
          to label %.loopexit42.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !168371

.loopexit42.cont:                                 ; preds = %.loopexit42.invoke
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.by = extractvalue { i64, i64 } %i.bu, 1, !dbg !168367
  %i.bz = sitofp i64 %i.by to double, !dbg !168372 ; 2 uses
  br i1 %i.az, label %bb.ai, label %.loopexit42, !dbg !168369, !prof !3738

bb.ai:                                            ; preds = %bb.ah
  %i.ca = fcmp oeq double %i.bb, %i.bz, !dbg !168373
  br i1 %i.ca, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.aj, !dbg !168374

bb.aj:                                            ; preds = %bb.ai
  %i.cb = uitofp i64 %.sink13.i to double, !dbg !168375
  %i.cc = fsub double %.sink11.i, %i.cb, !dbg !168376
  %i.cd = fsub nnan double %i.bz, %i.bb, !dbg !168377
  %i.ce = fmul double %i.cc, %i.cd, !dbg !168378
  %i.cf = fadd double %i.ce, %i.bb, !dbg !168379
  br label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, !dbg !168380

bb.ak:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.j, %bb.c
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !168381
  unreachable, !dbg !168381

bb.al:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !168303
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes9Int64TypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %1), !dbg !168288
  br label %bb.am, !dbg !168288

bb.am:                                            ; preds = %bb.al, %bb.f
  ret void, !dbg !168382

bb.an:                                            ; preds = %bb.h
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !168383
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !168383
  store i64 18, ptr %0, align 8, !dbg !168383
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !168384
  br label %bb.f, !dbg !168294

bb.ao:                                            ; preds = %bb.c
  resume { ptr, i32 } %.pn35, !dbg !168381
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile17generic_quantilesNtNtBa_9datatypes9UInt8TypeEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56) %1, ptr noalias noundef nonnull readonly align 8 captures(address) %2, i64 noundef range(i64 0, 1152921504606846976) %3, i8 noundef range(i8 0, 6) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !168385 !guid !168470 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [56 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %.idx = shl nuw nsw i64 %3, 3, !dbg !168501
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %.idx, !dbg !168501 ; 2 uses
  %i.f = icmp eq i64 %3, 0, !dbg !168502
  br i1 %i.f, label %._crit_edge66, label %.lr.ph65, !dbg !168477

bb.b:                                             ; preds = %.lr.ph65
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.063, i64 8, !dbg !168503 ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.e, !dbg !168502
  br i1 %i.h, label %._crit_edge66, label %.lr.ph65, !dbg !168477

bb.c:                                             ; preds = %bb.j, %bb.d
  %.pn35 = phi { ptr, i32 } [ %i.i, %bb.d ], [ %.pn, %bb.j ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes9UInt8TypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %1) #44
          to label %bb.ao unwind label %bb.ak, !dbg !168504

bb.d:                                             ; preds = %._crit_edge, %bb.h, %bb.g
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.lr.ph65:                                         ; preds = %bb.a, %bb.b
  %.sroa.0.063 = phi ptr [ %i.g, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %i.j = load double, ptr %.sroa.0.063, align 8, !dbg !168505, !noundef !3468 ; 2 uses
  %i.k = fcmp oge double %i.j, 0.000000e+00, !dbg !168506
  %i.l = fcmp ole double %i.j, 1.000000e+00
  %spec.select.i = and i1 %i.k, %i.l, !dbg !168507
  br i1 %spec.select.i, label %bb.b, label %bb.e, !dbg !168508

bb.e:                                             ; preds = %.lr.ph65
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) @65, i64 72, i1 false), !dbg !168509
  br label %bb.f, !dbg !168510

bb.f:                                             ; preds = %bb.an, %bb.e
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes9UInt8TypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %1), !dbg !168504
  br label %bb.am, !dbg !168504

._crit_edge66:                                    ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !168511
  %.val = load i64, ptr %i.m, align 8, !dbg !168511, !noundef !3468 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !168512
  %.val37 = load i64, ptr %i.n, align 8, !dbg !168512, !noundef !3468 ; 3 uses
  %i.o = icmp eq i64 %.val, %.val37, !dbg !168513
  br i1 %i.o, label %bb.h, label %bb.g, !dbg !168513

bb.g:                                             ; preds = %._crit_edge66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !168514
  invoke void @_RNvXNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sortINtB6_12ChunkedArrayNtNtB8_9datatypes9UInt8TypeEINtB4_9ChunkSortB1h_E4sortB8_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.c, ptr noundef nonnull align 8 %1, i1 noundef zeroext false)
          to label %bb.i unwind label %bb.d, !dbg !168515

bb.h:                                             ; preds = %._crit_edge66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !168481
  invoke void @_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemINtNtCscgRAwXFJnXP_4core6option6OptiondENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef 0, double undef, i64 noundef %3)
          to label %bb.an unwind label %bb.d, !dbg !168516

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !168517
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !168518
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %3, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
          to label %bb.l unwind label %bb.k, !dbg !168518

bb.j:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.k
  %.pn = phi { ptr, i32 } [ %i.p, %bb.k ], [ %lpad.loopexit.split-lp67, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes9UInt8TypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %i.c) #44
          to label %bb.c unwind label %bb.ak, !dbg !168519

bb.k:                                             ; preds = %bb.m, %bb.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.l:                                             ; preds = %bb.i
  %i.q = load i64, ptr %i.a, align 8, !dbg !168518, !range !3513, !noundef !3468
  %i.r = trunc nuw i64 %i.q to i1, !dbg !168520
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !168521
  %i.t = load i64, ptr %i.s, align 8, !dbg !168521, !range !3514, !noundef !3468 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !168521 ; 2 uses
  br i1 %i.r, label %bb.m, label %bb.n, !dbg !168520, !prof !3515

bb.m:                                             ; preds = %bb.l
  %i.v = load i64, ptr %i.u, align 8, !dbg !168522
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.t, i64 %i.v) #43
          to label %bb.aa unwind label %bb.k, !dbg !168523

bb.n:                                             ; preds = %bb.l
  %i.w = load ptr, ptr %i.u, align 8, !dbg !168524, !nonnull !3468, !noundef !3468
  %i.x = icmp samesign ule i64 %3, %i.t, !dbg !168525
  call void @llvm.assume(i1 %i.x), !dbg !168526
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !168527
  store i64 %i.t, ptr %i.b, align 8, !dbg !168528
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !168528 ; 2 uses
  store ptr %i.w, ptr %i.y, align 8, !dbg !168528
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !168528 ; 3 uses
  store i64 0, ptr %i.z, align 8, !dbg !168529
  %i.aa = icmp eq i64 %3, 0, !dbg !168530
  br i1 %i.aa, label %._crit_edge, label %.lr.ph, !dbg !168531

.lr.ph:                                           ; preds = %bb.n
  %i.ab = sub i64 %.val37, %.val
  %i.ac = uitofp i64 %i.ab to double              ; 2 uses
  %i.ad = fadd nnan double %i.ac, -1.000000e+00
  %i.ae = uitofp i64 %.val to double
  %i.af = add i64 %.val37, -1
  br label %bb.o, !dbg !168531

bb.o:                                             ; preds = %.lr.ph, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit
  %.sroa.02.047 = phi ptr [ %2, %.lr.ph ], [ %i.ag, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.02.047, i64 8, !dbg !168532 ; 2 uses
  %i.ah = load double, ptr %.sroa.02.047, align 8, !dbg !168533, !noundef !3468 ; 2 uses
  %i.ai = fmul double %i.ad, %i.ah, !dbg !168534
  %i.aj = fadd double %i.ai, %i.ae, !dbg !168534  ; 5 uses
  switch i8 %4, label %default.unreachable [
    i8 0, label %bb.p
    i8 1, label %bb.q
    i8 2, label %bb.r
    i8 3, label %bb.q
    i8 4, label %bb.q
    i8 5, label %bb.s
  ], !dbg !168535

default.unreachable:                              ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.ak = call double @llvm.round.f64(double %i.aj), !dbg !168536
  %i.al = call i64 @llvm.fptoui.sat.i64.f64(double %i.ak), !dbg !168537
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !168538

bb.q:                                             ; preds = %bb.o, %bb.o, %bb.o
  %i.am = call i64 @llvm.fptoui.sat.i64.f64(double %i.aj), !dbg !168539
  %.pre.i = call double @llvm.ceil.f64(double %i.aj), !dbg !168540
  %.pre7.i = call i64 @llvm.fptoui.sat.i64.f64(double %.pre.i), !dbg !168541
  br label %bb.t, !dbg !168542

bb.r:                                             ; preds = %bb.o
  %i.an = call double @llvm.ceil.f64(double %i.aj), !dbg !168543
  %i.ao = call i64 @llvm.fptoui.sat.i64.f64(double %i.an), !dbg !168544 ; 2 uses
  br label %bb.t, !dbg !168545

bb.s:                                             ; preds = %bb.o
  %i.ap = fmul double %i.ah, %i.ac, !dbg !168546
  %i.aq = call double @llvm.ceil.f64(double %i.ap), !dbg !168547
  %i.ar = fadd double %i.aq, -1.000000e+00, !dbg !168548
  %i.as = call nsz double @llvm.maximumnum.f64(double %i.ar, double 0.000000e+00), !dbg !168549
  %i.at = call i64 @llvm.fptoui.sat.i64.f64(double %i.as), !dbg !168548
  %i.au = add i64 %i.at, %.val, !dbg !168548
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !168538

bb.t:                                             ; preds = %bb.r, %bb.q
  %.pre-phi8.i = phi i64 [ %i.ao, %bb.r ], [ %.pre7.i, %bb.q ], !dbg !168541
  %.sroa.0.0.i = phi i64 [ %i.ao, %bb.r ], [ %i.am, %bb.q ], !dbg !168550
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i, i64 %i.af), !dbg !168551 ; 2 uses
  %i.av = icmp eq i64 %.pre-phi8.i, %.sroa.0.0.i.i, !dbg !168552
  br label %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, !dbg !168553

._crit_edge:                                      ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit, %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !168554
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !168555
  store i64 18, ptr %0, align 8, !dbg !168554
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !168556
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes9UInt8TypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %i.c)
          to label %bb.al unwind label %bb.d, !dbg !168519

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ad, %bb.ae, %bb.x, %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit, %.loopexit42.invoke
  %lpad.loopexit.split-lp67 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB4_6option6OptiondEEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 dereferenceable(24) %i.b) #44
          to label %bb.j unwind label %bb.ak, !dbg !168556

_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit: ; preds = %bb.t, %bb.s, %bb.p
  %.sink13.i = phi i64 [ %i.al, %bb.p ], [ %i.au, %bb.s ], [ %.sroa.0.0.i.i, %bb.t ] ; 4 uses
  %.sink11.i = phi double [ 0.000000e+00, %bb.p ], [ 0.000000e+00, %bb.s ], [ %i.aj, %bb.t ]
  %.sink.i = phi i1 [ true, %bb.p ], [ true, %bb.s ], [ %i.av, %bb.t ] ; 2 uses
  %i.ax = invoke fastcc { i1, i8 } @_RNvMs_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB4_12ChunkedArrayNtNtB6_9datatypes9UInt8TypeE3getB6_(ptr noundef nonnull align 8 %i.c, i64 noundef %.sink13.i)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !168557 ; 2 uses

bb.u:                                             ; preds = %_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx.exit
  %i.ay = extractvalue { i1, i8 } %i.ax, 0, !dbg !168558 ; 6 uses
  %i.az = extractvalue { i1, i8 } %i.ax, 1, !dbg !168559
  %i.ba = uitofp i8 %i.az to double, !dbg !168559 ; 8 uses
  %.sroa.9.0 = select i1 %i.ay, double %i.ba, double undef, !dbg !168559 ; 3 uses
  %.sroa.05.0 = zext i1 %i.ay to i64, !dbg !168559
  switch i8 %4, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit [
    i8 3, label %bb.v
    i8 4, label %bb.w
  ], !dbg !168560

bb.v:                                             ; preds = %bb.u
  br i1 %.sink.i, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.x, !dbg !168561

bb.w:                                             ; preds = %bb.u
  br i1 %.sink.i, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.ae, !dbg !168552

bb.x:                                             ; preds = %bb.v
  %i.bb = add i64 %.sink13.i, 1, !dbg !168562
  %i.bc = invoke fastcc { i1, i8 } @_RNvMs_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB4_12ChunkedArrayNtNtB6_9datatypes9UInt8TypeE3getB6_(ptr noundef nonnull align 8 %i.c, i64 noundef %i.bb)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !168563 ; 2 uses

bb.y:                                             ; preds = %bb.x
  %i.bd = extractvalue { i1, i8 } %i.bc, 0, !dbg !168564
  br i1 %i.bd, label %bb.ab, label %bb.z, !dbg !168565, !prof !3738

bb.z:                                             ; preds = %bb.y
  br i1 %i.ay, label %.loopexit42.invoke, label %.loopexit43, !dbg !168566

.loopexit43:                                      ; preds = %bb.ab, %bb.z
  br label %.loopexit42.invoke, !dbg !168567

bb.aa:                                            ; preds = %bb.m
  unreachable

bb.ab:                                            ; preds = %bb.y
  br i1 %i.ay, label %bb.ac, label %.loopexit43, !dbg !168566, !prof !3738

bb.ac:                                            ; preds = %bb.ab
  %i.be = extractvalue { i1, i8 } %i.bc, 1, !dbg !168564
  %i.bf = uitofp i8 %i.be to double, !dbg !168568 ; 2 uses
  %i.bg = fcmp oeq double %i.ba, %i.bf, !dbg !168569
  %i.bh = fadd nnan double %i.ba, %i.bf, !dbg !168570
  %i.bi = fmul nnan double %i.bh, 5.000000e-01, !dbg !168570
  %.sroa.0.0.i39 = select i1 %i.bg, double %i.ba, double %i.bi, !dbg !168570
  br label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, !dbg !168571

_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit: ; preds = %bb.aj, %bb.ai, %bb.ac, %bb.w, %bb.v, %bb.u
  %.sroa.9.1 = phi double [ %.sroa.9.0, %bb.u ], [ %.sroa.9.0, %bb.v ], [ %.sroa.0.0.i39, %bb.ac ], [ %.sroa.9.0, %bb.w ], [ %i.cc, %bb.aj ], [ %i.ba, %bb.ai ], !dbg !168572
  %i.bj = load i64, ptr %i.z, align 8, !dbg !168573, !alias.scope !168496, !noundef !3468 ; 3 uses
  %i.bk = load i64, ptr %i.b, align 8, !dbg !168574, !range !3548, !alias.scope !168496, !noundef !3468
  %i.bl = icmp eq i64 %i.bj, %i.bk, !dbg !168575
  br i1 %i.bl, label %bb.ad, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit, !dbg !168575

bb.ad:                                            ; preds = %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8grow_oneCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !168576

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEE8push_mutCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.ad, %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit
  %i.bm = load ptr, ptr %i.y, align 8, !dbg !168577, !alias.scope !168496, !nonnull !3468, !noundef !3468
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bm, i64 %i.bj, !dbg !168578 ; 2 uses
  store i64 %.sroa.05.0, ptr %i.bn, align 8, !dbg !168579
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8, !dbg !168579
  store double %.sroa.9.1, ptr %i.bo, align 8, !dbg !168579
  %i.bp = add i64 %i.bj, 1, !dbg !168580
  store i64 %i.bp, ptr %i.z, align 8, !dbg !168529
  %i.bq = icmp eq ptr %i.ag, %i.e, !dbg !168530
  br i1 %i.bq, label %._crit_edge, label %bb.o, !dbg !168531

bb.ae:                                            ; preds = %bb.w
  %i.br = add i64 %.sink13.i, 1, !dbg !168581
  %i.bs = invoke fastcc { i1, i8 } @_RNvMs_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB4_12ChunkedArrayNtNtB6_9datatypes9UInt8TypeE3getB6_(ptr noundef nonnull align 8 %i.c, i64 noundef %i.br)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !168582 ; 2 uses

bb.af:                                            ; preds = %bb.ae
  %i.bt = extractvalue { i1, i8 } %i.bs, 0, !dbg !168583
  br i1 %i.bt, label %bb.ah, label %bb.ag, !dbg !168584, !prof !3738

bb.ag:                                            ; preds = %bb.af
  br i1 %i.ay, label %.loopexit42.invoke, label %.loopexit42, !dbg !168585

.loopexit42:                                      ; preds = %bb.ah, %bb.ag
  br label %.loopexit42.invoke, !dbg !168586

.loopexit42.invoke:                               ; preds = %bb.ag, %bb.z, %.loopexit43, %.loopexit42
  %i.bu = phi ptr [ @69, %.loopexit42 ], [ @66, %bb.z ], [ @67, %.loopexit43 ], [ @68, %bb.ag ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bu) #43
          to label %.loopexit42.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !168587

.loopexit42.cont:                                 ; preds = %.loopexit42.invoke
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.bv = extractvalue { i1, i8 } %i.bs, 1, !dbg !168583
  %i.bw = uitofp i8 %i.bv to double, !dbg !168588 ; 2 uses
  br i1 %i.ay, label %bb.ai, label %.loopexit42, !dbg !168585, !prof !3738

bb.ai:                                            ; preds = %bb.ah
  %i.bx = fcmp oeq double %i.ba, %i.bw, !dbg !168589
  br i1 %i.bx, label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, label %bb.aj, !dbg !168590

bb.aj:                                            ; preds = %bb.ai
  %i.by = uitofp i64 %.sink13.i to double, !dbg !168591
  %i.bz = fsub double %.sink11.i, %i.by, !dbg !168592
  %i.ca = fsub nnan double %i.bw, %i.ba, !dbg !168593
  %i.cb = fmul double %i.bz, %i.ca, !dbg !168594
  %i.cc = fadd double %i.cb, %i.ba, !dbg !168595
  br label %_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile15linear_interpoldEBa_.exit, !dbg !168596

bb.ak:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.j, %bb.c
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !168597
  unreachable, !dbg !168597

bb.al:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !168519
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes9UInt8TypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %1), !dbg !168504
  br label %bb.am, !dbg !168504

bb.am:                                            ; preds = %bb.al, %bb.f
  ret void, !dbg !168598

bb.an:                                            ; preds = %bb.h
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !168599
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ce, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !168599
  store i64 18, ptr %0, align 8, !dbg !168599
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !168600
  br label %bb.f, !dbg !168510

bb.ao:                                            ; preds = %bb.c
  resume { ptr, i32 } %.pn35, !dbg !168597
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc i16 @_RINvXNvNtCs2mZqlW55729_12polars_utils7float16s3_1__NtB5_4pf16NtNtCslmKYcnV0hjo_10num_traits4cast7NumCast4fromBN_ECs1LHh8CLbVkQ_11polars_core(i16 noundef %0) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !168601 !guid !168651 {
bb.a:
  %i.a = load atomic i64, ptr @_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache5CACHE monotonic, align 8, !dbg !168653, !noalias !168652 ; 2 uses
  %i.b = icmp eq i64 %i.a, 0, !dbg !168654
  br i1 %i.b, label %.split.i.i.i, label %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i.i, !dbg !168654, !prof !3515

.split.i.i.i:                                     ; preds = %bb.a
  %i.c = tail call noundef i128 @_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache21detect_and_initialize(), !dbg !168655, !noalias !168652
  %i.d = and i128 %i.c, 36028797018963968, !dbg !168656
  %.not1.i.i.i = icmp eq i128 %i.d, 0, !dbg !168656
  br i1 %.not1.i.i.i, label %bb.b, label %bb.k, !dbg !168657

_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i.i: ; preds = %bb.a
  %i.e = and i64 %i.a, 36028797018963968, !dbg !168658
  %.not.i.i.i = icmp eq i64 %i.e, 0, !dbg !168658
  br i1 %.not.i.i.i, label %bb.b, label %bb.k, !dbg !168657

bb.b:                                             ; preds = %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i.i, %.split.i.i.i
  %i.f = and i16 %0, 32767, !dbg !168659
  %i.g = icmp eq i16 %i.f, 0, !dbg !168659
  br i1 %i.g, label %bb.c, label %bb.d, !dbg !168659

bb.c:                                             ; preds = %bb.b
  %i.h = zext i16 %0 to i32, !dbg !168660
  %i.i = shl nuw i32 %i.h, 16, !dbg !168660
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f32_fallback.exit.i.i.i, !dbg !168661

bb.d:                                             ; preds = %bb.b
  %i.j = and i16 %0, -32768, !dbg !168662
  %i.k = zext i16 %i.j to i32, !dbg !168662       ; 2 uses
  %i.l = and i16 %0, 31744, !dbg !168663          ; 3 uses
  %i.m = and i16 %0, 1023, !dbg !168664           ; 3 uses
  %i.n = zext nneg i16 %i.m to i32, !dbg !168664  ; 3 uses
  %i.o = icmp eq i16 %i.l, 31744, !dbg !168665
  br i1 %i.o, label %bb.e, label %bb.f, !dbg !168665

bb.e:                                             ; preds = %bb.d
  %i.p = icmp eq i16 %i.m, 0, !dbg !168666
  %i.q = shl nuw i32 %i.k, 16, !dbg !168667       ; 2 uses
  br i1 %i.p, label %bb.g, label %bb.h, !dbg !168666

bb.f:                                             ; preds = %bb.d
  %i.r = shl nuw i32 %i.k, 16, !dbg !168668       ; 2 uses
  %i.s = icmp eq i16 %i.l, 0, !dbg !168669
  br i1 %i.s, label %bb.i, label %bb.j, !dbg !168669

bb.g:                                             ; preds = %bb.e
  %i.t = or disjoint i32 %i.q, 2139095040, !dbg !168670
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f32_fallback.exit.i.i.i, !dbg !168671

bb.h:                                             ; preds = %bb.e
  %i.u = shl nuw nsw i32 %i.n, 13, !dbg !168672
  %i.v = or disjoint i32 %i.q, %i.u, !dbg !168673
  %i.w = or i32 %i.v, 2143289344, !dbg !168673
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f32_fallback.exit.i.i.i, !dbg !168674

bb.i:                                             ; preds = %bb.f
  %i.x = tail call range(i16 6, 17) i16 @llvm.ctlz.i16(i16 %i.m, i1 false), !dbg !168675
  %i.y = zext nneg i16 %i.x to i32, !dbg !168675  ; 2 uses
  %i.z = add nuw nsw i32 %i.y, 8, !dbg !168676
  %i.aa = shl i32 %i.n, %i.z, !dbg !168677
  %i.ab = and i32 %i.aa, 8388607, !dbg !168677
  %reass.sub.i.i.i.i = or disjoint i32 %i.r, 989855744, !dbg !168678
  %i.ac = shl nuw nsw i32 %i.y, 23, !dbg !168678
  %i.ad = sub nuw nsw i32 %reass.sub.i.i.i.i, %i.ac, !dbg !168678
  %i.ae = or disjoint i32 %i.ab, %i.ad, !dbg !168678
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f32_fallback.exit.i.i.i, !dbg !168679

bb.j:                                             ; preds = %bb.f
  %i.af = lshr exact i16 %i.l, 10, !dbg !168680
  %narrow.i.i.i.i = add nuw nsw i16 %i.af, 112, !dbg !168681
  %i.ag = zext nneg i16 %narrow.i.i.i.i to i32, !dbg !168681
  %i.ah = shl nuw nsw i32 %i.ag, 23, !dbg !168682
  %i.ai = shl nuw nsw i32 %i.n, 13, !dbg !168683
  %i.aj = or disjoint i32 %i.ah, %i.ai, !dbg !168684
  %i.ak = or disjoint i32 %i.aj, %i.r, !dbg !168684
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f32_fallback.exit.i.i.i, !dbg !168685

_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f32_fallback.exit.i.i.i: ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.c
  %.sroa.0.0.i.i.i.i = phi i32 [ %i.i, %bb.c ], [ %i.t, %bb.g ], [ %i.w, %bb.h ], [ %i.ae, %bb.i ], [ %i.ak, %bb.j ], !dbg !168686
  %i.al = bitcast i32 %.sroa.0.0.i.i.i.i to float, !dbg !168685
  br label %_RNvXNvNtCs2mZqlW55729_12polars_utils7float16s5_1__NtB4_4pf16NtNtCslmKYcnV0hjo_10num_traits4cast11ToPrimitive6to_f32.exit.i, !dbg !168687

bb.k:                                             ; preds = %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i.i, %.split.i.i.i
  %i.am = tail call fastcc noundef float @_RNvNtNtNtCshdiYQzaKNQ1_4half8binary164arch3x8619f16_to_f32_x86_f16c(i16 noundef %0), !dbg !168688
  br label %_RNvXNvNtCs2mZqlW55729_12polars_utils7float16s5_1__NtB4_4pf16NtNtCslmKYcnV0hjo_10num_traits4cast11ToPrimitive6to_f32.exit.i, !dbg !168688

_RNvXNvNtCs2mZqlW55729_12polars_utils7float16s5_1__NtB4_4pf16NtNtCslmKYcnV0hjo_10num_traits4cast11ToPrimitive6to_f32.exit.i: ; preds = %bb.k, %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f32_fallback.exit.i.i.i
  %.sroa.0.0.i.i.i = phi float [ %i.am, %bb.k ], [ %i.al, %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f32_fallback.exit.i.i.i ], !dbg !168689 ; 2 uses
  %i.an = load atomic i64, ptr @_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache5CACHE monotonic, align 8, !dbg !168690 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 0, !dbg !168691
  br i1 %i.ao, label %.split.i, label %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i, !dbg !168691, !prof !3515

.split.i:                                         ; preds = %_RNvXNvNtCs2mZqlW55729_12polars_utils7float16s5_1__NtB4_4pf16NtNtCslmKYcnV0hjo_10num_traits4cast11ToPrimitive6to_f32.exit.i
  %i.ap = tail call noundef i128 @_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache21detect_and_initialize(), !dbg !168692
  %i.aq = and i128 %i.ap, 36028797018963968, !dbg !168693
  %.not6.i = icmp eq i128 %i.aq, 0, !dbg !168693
  br i1 %.not6.i, label %bb.l, label %bb.w, !dbg !168694

_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i: ; preds = %_RNvXNvNtCs2mZqlW55729_12polars_utils7float16s5_1__NtB4_4pf16NtNtCslmKYcnV0hjo_10num_traits4cast11ToPrimitive6to_f32.exit.i
  %i.ar = and i64 %i.an, 36028797018963968, !dbg !168695
  %.not.i = icmp eq i64 %i.ar, 0, !dbg !168695
  br i1 %.not.i, label %bb.l, label %bb.w, !dbg !168694

bb.l:                                             ; preds = %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i, %.split.i
  %i.as = bitcast float %.sroa.0.0.i.i.i to i32, !dbg !168696 ; 5 uses
  %i.at = and i32 %i.as, -2147483648, !dbg !168697 ; 2 uses
  %i.au = and i32 %i.as, 2139095040, !dbg !168698 ; 6 uses
  %i.av = and i32 %i.as, 8388607, !dbg !168699    ; 4 uses
  %i.aw = icmp eq i32 %i.au, 2139095040, !dbg !168700
  br i1 %i.aw, label %bb.m, label %bb.n, !dbg !168700

bb.m:                                             ; preds = %bb.l
  %i.ax = icmp eq i32 %i.av, 0, !dbg !168701
  %..i.i = select i1 %i.ax, i32 0, i32 512, !dbg !168702
  %i.ay = lshr exact i32 %i.at, 16, !dbg !168703
  %i.az = lshr i32 %i.av, 13, !dbg !168704
  %i.ba = or disjoint i32 %i.az, %i.ay, !dbg !168703
  %i.bb = or i32 %i.ba, %..i.i, !dbg !168705
  %i.bc = trunc nuw i32 %i.bb to i16, !dbg !168705
  %i.bd = or disjoint i16 %i.bc, 31744, !dbg !168705
  br label %_RINvXs3_NtCshdiYQzaKNQ1_4half10num_traitsNtNtB8_8binary163f16NtNtCslmKYcnV0hjo_10num_traits4cast7NumCast4fromNtNtCs2mZqlW55729_12polars_utils7float164pf16ECs1LHh8CLbVkQ_11polars_core.exit, !dbg !168706

bb.n:                                             ; preds = %bb.l
  %i.be = lshr exact i32 %i.at, 16, !dbg !168707  ; 4 uses
  %i.bf = lshr exact i32 %i.au, 23, !dbg !168708  ; 2 uses
  %i.bg = icmp samesign ugt i32 %i.au, 1191182336, !dbg !168709
  br i1 %i.bg, label %bb.p, label %bb.o, !dbg !168709

bb.o:                                             ; preds = %bb.n
  %i.bh = icmp samesign ult i32 %i.au, 947912704, !dbg !168710
  br i1 %i.bh, label %bb.r, label %bb.q, !dbg !168710

bb.p:                                             ; preds = %bb.n
  %i.bi = trunc nuw i32 %i.be to i16, !dbg !168711
  %i.bj = or disjoint i16 %i.bi, 31744, !dbg !168711
  br label %_RINvXs3_NtCshdiYQzaKNQ1_4half10num_traitsNtNtB8_8binary163f16NtNtCslmKYcnV0hjo_10num_traits4cast7NumCast4fromNtNtCs2mZqlW55729_12polars_utils7float164pf16ECs1LHh8CLbVkQ_11polars_core.exit, !dbg !168712

bb.q:                                             ; preds = %bb.o
  %i.bk = lshr exact i32 %i.au, 13, !dbg !168713
  %i.bl = add nuw nsw i32 %i.bk, 16384, !dbg !168713
  %i.bm = lshr i32 %i.av, 13, !dbg !168714
  %i.bn = and i32 %i.as, 4096, !dbg !168715
  %i.bo = icmp ne i32 %i.bn, 0, !dbg !168715
  %i.bp = and i32 %i.as, 12287
  %i.bq = icmp ne i32 %i.bp, 0
  %or.cond.not.i.i = and i1 %i.bo, %i.bq, !dbg !168716
  %i.br = or disjoint i32 %i.bl, %i.bm, !dbg !168716
  %i.bs = or i32 %i.br, %i.be, !dbg !168716
  %i.bt = trunc i32 %i.bs to i16, !dbg !168716
  %i.bu = zext i1 %or.cond.not.i.i to i16, !dbg !168715
  %spec.select7.i.i = add i16 %i.bt, %i.bu, !dbg !168715
  br label %_RINvXs3_NtCshdiYQzaKNQ1_4half10num_traitsNtNtB8_8binary163f16NtNtCslmKYcnV0hjo_10num_traits4cast7NumCast4fromNtNtCs2mZqlW55729_12polars_utils7float164pf16ECs1LHh8CLbVkQ_11polars_core.exit, !dbg !168715

bb.r:                                             ; preds = %bb.o
  %i.bv = icmp samesign ult i32 %i.au, 855638016, !dbg !168717
  br i1 %i.bv, label %bb.t, label %bb.s, !dbg !168717

bb.s:                                             ; preds = %bb.r
  %i.bw = sub nsw i32 126, %i.bf, !dbg !168717
  %i.bx = or disjoint i32 %i.av, 8388608, !dbg !168718 ; 3 uses
  %i.by = lshr i32 %i.bx, %i.bw, !dbg !168719     ; 2 uses
  %i.bz = sub nsw i32 29, %i.bf, !dbg !168720
  %i.ca = and i32 %i.bz, 31, !dbg !168721         ; 2 uses
  %i.cb = shl nuw i32 1, %i.ca, !dbg !168721
  %i.cc = and i32 %i.cb, %i.bx, !dbg !168722
  %i.cd = icmp eq i32 %i.cc, 0, !dbg !168722
  br i1 %i.cd, label %bb.v, label %bb.u, !dbg !168722

bb.t:                                             ; preds = %bb.r
end_hunk_3
begin_hunk_4_@_RNvNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations25rolling_numeric_minmax_by:bb.a
  %i.ps = load ptr, ptr %i.pr, align 8, !dbg !220899, !noundef !3468
  %.not51 = icmp eq ptr %i.ps, null, !dbg !220899
  %.88 = select i1 %.not51, ptr null, ptr %i.pr, !dbg !220900 ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.r, i64 8, !dbg !220901
  %i.pu = load ptr, ptr %i.pt, align 8, !dbg !220901, !nonnull !3468, !noundef !3468 ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.r, i64 16, !dbg !220902
  %i.pw = load i64, ptr %i.pv, align 8, !dbg !220902, !noundef !3468 ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !220901
  %i.py = load ptr, ptr %i.px, align 8, !dbg !220901, !nonnull !3468, !noundef !3468 ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !220902
  %i.qa = load i64, ptr %i.pz, align 8, !dbg !220902, !noundef !3468 ; 2 uses
  br i1 %3, label %bb.bx, label %bb.bw, !dbg !220903

bb.bw:                                            ; preds = %bb.bv
  invoke void @_RINvNtNtCslFlrwjHoTci_14polars_compute7rolling13min_by_max_by23rolling_arg_extremum_byfNtNtCs2mZqlW55729_12polars_utils7min_max15MinPropagateNanECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.p, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.po, i64 noundef %i.pq, ptr noundef align 8 %.88, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.pu, i64 noundef %i.pw, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.py, i64 noundef %i.qa, i64 noundef 1)
          to label %bb.u unwind label %bb.o, !dbg !220904

bb.bx:                                            ; preds = %bb.bv
  invoke void @_RINvNtNtCslFlrwjHoTci_14polars_compute7rolling13min_by_max_by23rolling_arg_extremum_byfNtNtCs2mZqlW55729_12polars_utils7min_max15MaxPropagateNanECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.p, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.po, i64 noundef %i.pq, ptr noundef align 8 %.88, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.pu, i64 noundef %i.pw, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.py, i64 noundef %i.qa, i64 noundef 1)
          to label %bb.u unwind label %bb.o, !dbg !220905

bb.by:                                            ; preds = %bb.m
  %i.qb = load ptr, ptr %i.t, align 8, !dbg !220906, !noundef !3468
  %.not48 = icmp eq ptr %i.qb, null, !dbg !220906 ; 2 uses
  %i.qc = load ptr, ptr %i.bk, align 8, !dbg !220907, !nonnull !3468, !align !3637 ; 2 uses
  %.sroa.034.0 = select i1 %.not48, ptr %i.qc, ptr %i.t, !dbg !220907
  %.sroa.034.0.val = load ptr, ptr %.sroa.034.0, align 8, !dbg !220677, !nonnull !3468, !noundef !3468
  %.sroa.gep159 = getelementptr i8, ptr %i.qc, i64 8, !dbg !220677
  %.sroa.034.0.sroa.sel = select i1 %.not48, ptr %.sroa.gep159, ptr %i.bk, !dbg !220677
  %.sroa.034.0.val90 = load ptr, ptr %.sroa.034.0.sroa.sel, align 8, !dbg !220677, !nonnull !3468, !align !3637, !noundef !3468 ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %.sroa.034.0.val90, i64 16, !dbg !220908
  %i.qe = load i64, ptr %i.qd, align 8, !dbg !220908, !range !3610, !invariant.load !3468
  %i.qf = add nsw i64 %i.qe, -1, !dbg !220908
  %i.qg = and i64 %i.qf, -16, !dbg !220908
  %i.qh = getelementptr inbounds nuw i8, ptr %.sroa.034.0.val, i64 %i.qg, !dbg !220908
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 16, !dbg !220908
  %i.qj = invoke noundef nonnull align 8 ptr @_RNvXs5_NtCs1LHh8CLbVkQ_11polars_core6seriesDNtNtB5_12series_trait11SeriesTraitEL_INtNtCscgRAwXFJnXP_4core7convert5AsRefINtNtB7_13chunked_array12ChunkedArrayNtNtB7_9datatypes11Float64TypeEE6as_refB7_(ptr noundef nonnull %i.qi, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(896) %.sroa.034.0.val90)
          to label %bb.bz unwind label %bb.o, !dbg !220679 ; 2 uses

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !220909
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 16, !dbg !220909
  %i.ql = load i64, ptr %i.qk, align 8, !dbg !220909, !noundef !3468 ; 3 uses
  store i64 %i.ql, ptr %i.a, align 8, !dbg !220909
  %i.qm = icmp ult i64 %i.ql, 576460752303423488, !dbg !220910
  call void @llvm.assume(i1 %i.qm), !dbg !220911
  %i.qn = icmp eq i64 %i.ql, 1, !dbg !220912
  br i1 %i.qn, label %bb.ca, label %.invoke, !dbg !220912, !prof !3738

.invoke:                                          ; preds = %bb.bz, %bb.bu, %bb.bp, %bb.bk, %bb.bf, %bb.ba, %bb.av, %bb.aq, %bb.al, %bb.ag, %bb.ab, %bb.w, %bb.q
  %i.qo = phi ptr [ %i.b, %bb.bu ], [ %i.c, %bb.bp ], [ %i.d, %bb.bk ], [ %i.e, %bb.bf ], [ %i.f, %bb.ba ], [ %i.g, %bb.av ], [ %i.h, %bb.aq ], [ %i.i, %bb.al ], [ %i.j, %bb.ag ], [ %i.k, %bb.ab ], [ %i.l, %bb.w ], [ %i.m, %bb.q ], [ %i.a, %bb.bz ]
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.qo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @11, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @135) #46
          to label %.cont unwind label %bb.o, !dbg !220913

.cont:                                            ; preds = %.invoke
  unreachable

bb.ca:                                            ; preds = %bb.bz
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qj, i64 8, !dbg !220914
  %i.qq = load ptr, ptr %i.qp, align 8, !dbg !220914, !nonnull !3468, !noundef !3468
  %i.qr = load ptr, ptr %i.qq, align 8, !dbg !220915, !nonnull !3468, !noundef !3468 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !220916
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 40, !dbg !220917
  %i.qt = load ptr, ptr %i.qs, align 8, !dbg !220917, !noundef !3468 ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qr, i64 48, !dbg !220918
  %i.qv = load i64, ptr %i.qu, align 8, !dbg !220918, !noundef !3468 ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qr, i64 56, !dbg !220919 ; 2 uses
  %i.qx = load ptr, ptr %i.qw, align 8, !dbg !220919, !noundef !3468
  %.not49 = icmp eq ptr %i.qx, null, !dbg !220919
  %.89 = select i1 %.not49, ptr null, ptr %i.qw, !dbg !220920 ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.r, i64 8, !dbg !220921
  %i.qz = load ptr, ptr %i.qy, align 8, !dbg !220921, !nonnull !3468, !noundef !3468 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.r, i64 16, !dbg !220922
  %i.rb = load i64, ptr %i.ra, align 8, !dbg !220922, !noundef !3468 ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !220921
  %i.rd = load ptr, ptr %i.rc, align 8, !dbg !220921, !nonnull !3468, !noundef !3468 ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !220922
  %i.rf = load i64, ptr %i.re, align 8, !dbg !220922, !noundef !3468 ; 2 uses
  br i1 %3, label %bb.cc, label %bb.cb, !dbg !220923

bb.cb:                                            ; preds = %bb.ca
  invoke void @_RINvNtNtCslFlrwjHoTci_14polars_compute7rolling13min_by_max_by23rolling_arg_extremum_bydNtNtCs2mZqlW55729_12polars_utils7min_max15MinPropagateNanECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.qt, i64 noundef %i.qv, ptr noundef align 8 %.89, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.qz, i64 noundef %i.rb, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.rd, i64 noundef %i.rf, i64 noundef 1)
          to label %bb.u unwind label %bb.o, !dbg !220924

bb.cc:                                            ; preds = %bb.ca
  invoke void @_RINvNtNtCslFlrwjHoTci_14polars_compute7rolling13min_by_max_by23rolling_arg_extremum_bydNtNtCs2mZqlW55729_12polars_utils7min_max15MaxPropagateNanECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.qt, i64 noundef %i.qv, ptr noundef align 8 %.89, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.qz, i64 noundef %i.rb, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.rd, i64 noundef %i.rf, i64 noundef 1)
          to label %bb.u unwind label %bb.o, !dbg !220925

bb.cd:                                            ; preds = %bb.u
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecmENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %bb.cf unwind label %bb.ce, !dbg !220926

bb.ce:                                            ; preds = %bb.cd
  %i.rg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecmENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.body unwind label %bb.cg, !dbg !220927

bb.cf:                                            ; preds = %bb.cd
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecmENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECs1LHh8CLbVkQ_11polars_core.exit unwind label %bb.l, !dbg !220928

bb.cg:                                            ; preds = %bb.ce
  %i.rh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !220926
  unreachable, !dbg !220926

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !220674
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecmENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %bb.ci unwind label %bb.ch, !dbg !220929

bb.ch:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECs1LHh8CLbVkQ_11polars_core.exit
  %i.ri = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecmENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %.body128 unwind label %bb.cj, !dbg !220930

bb.ci:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECs1LHh8CLbVkQ_11polars_core.exit
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecmENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECs1LHh8CLbVkQ_11polars_core.exit130 unwind label %bb.g, !dbg !220931

bb.cj:                                            ; preds = %bb.ch
  %i.rj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !220929
  unreachable, !dbg !220929

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECs1LHh8CLbVkQ_11polars_core.exit130: ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !220668
  call void @llvm.experimental.noalias.scope.decl(metadata !220610), !dbg !220642
  %i.rk = load ptr, ptr %i.t, align 8, !dbg !220932, !alias.scope !220610, !noundef !3468 ; 2 uses
  %i.rl = icmp eq ptr %i.rk, null, !dbg !220932
  br i1 %i.rl, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit132, label %bb.ck, !dbg !220932

bb.ck:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECs1LHh8CLbVkQ_11polars_core.exit130
  %i.rm = atomicrmw add ptr %i.rk, i64 -1 release, align 8, !dbg !220933, !noalias !220611
  %i.rn = icmp eq i64 %i.rm, 1, !dbg !220934
  br i1 %i.rn, label %bb.cl, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit132, !dbg !220934

bb.cl:                                            ; preds = %bb.ck
  fence acquire, !dbg !220935
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.t) #41
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit132 unwind label %bb.d, !dbg !220936

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit132: ; preds = %bb.ck, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECs1LHh8CLbVkQ_11polars_core.exit130, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !220642
  call void @llvm.experimental.noalias.scope.decl(metadata !220612), !dbg !220634
  call void @llvm.experimental.noalias.scope.decl(metadata !220613), !dbg !220937
  call void @llvm.experimental.noalias.scope.decl(metadata !220614), !dbg !220938
  %i.ro = load ptr, ptr %i.u, align 8, !dbg !220939, !alias.scope !220615, !nonnull !3468, !noundef !3468
  %i.rp = atomicrmw add ptr %i.ro, i64 -1 release, align 8, !dbg !220940, !noalias !220615
  %i.rq = icmp eq i64 %i.rp, 1, !dbg !220941
  br i1 %i.rq, label %bb.cm, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit133, !dbg !220941

bb.cm:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit132
  fence acquire, !dbg !220942
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.u) #41, !dbg !220943
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit133, !dbg !220943

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit133: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit132, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !220634
  ret void, !dbg !220944

bb.cn:                                            ; preds = %bb.n, %_RNvMs4_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataType20is_primitive_numeric.exit.thread164
  unreachable

bb.co:                                            ; preds = %bb.f, %bb.c, %bb.o, %.body
  %i.rr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !220945
  unreachable, !dbg !220945

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEB1k_.exit, %bb.c
  resume { ptr, i32 } %.pn75.pn, !dbg !220945
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal fastcc noundef float @_RNvNtNtNtCshdiYQzaKNQ1_4half8binary164arch3x8619f16_to_f32_x86_f16c(i16 noundef %0) unnamed_addr #9 !dbg !220946 !guid !220952 {
bb.a:
  %i.a = bitcast i16 %0 to half, !dbg !220954
  %.sroa.04.0.vec.extract = fpext half %i.a to float, !dbg !220954
  ret float %.sroa.04.0.vec.extract, !dbg !220955
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal fastcc noundef i16 @_RNvNtNtNtCshdiYQzaKNQ1_4half8binary164arch3x8619f32_to_f16_x86_f16c(float noundef %0) unnamed_addr #9 !dbg !220956 !guid !220965 {
bb.a:
  %.sroa.0.12.vec.insert = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %0, i64 0, !dbg !220972
  %i.a = tail call <8 x i16> @llvm.x86.vcvtps2ph.128(<4 x float> %.sroa.0.12.vec.insert, i32 0), !dbg !220973
  %.sroa.02.0.vec.extract = extractelement <8 x i16> %i.a, i64 0, !dbg !220974
  ret i16 %.sroa.02.0.vec.extract, !dbg !220975
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantile12quantile_idx(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, double noundef %1, i64 noundef %2, i64 noundef %3, i8 noundef range(i8 0, 6) %4) unnamed_addr #2 !dbg !1259 !guid !220977 {
bb.a:
  %i.a = sub i64 %2, %3, !dbg !220987
  %i.b = uitofp i64 %i.a to double, !dbg !220987  ; 2 uses
  %i.c = fadd nnan double %i.b, -1.000000e+00, !dbg !220988
  %i.d = fmul double %1, %i.c, !dbg !220988
  %i.e = uitofp i64 %3 to double, !dbg !220989
  %i.f = fadd double %i.d, %i.e, !dbg !220988     ; 5 uses
  switch i8 %4, label %default.unreachable9 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.c
    i8 4, label %bb.c
    i8 5, label %bb.e
  ], !dbg !220990

default.unreachable9:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.g = tail call double @llvm.round.f64(double %i.f), !dbg !220991
  %i.h = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.g), !dbg !220992 ; 2 uses
  br label %bb.g, !dbg !220993

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.i = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.f), !dbg !220994
  %.pre = tail call double @llvm.ceil.f64(double %i.f), !dbg !220995
  %.pre7 = tail call i64 @llvm.fptoui.sat.i64.f64(double %.pre), !dbg !220980
  br label %bb.f, !dbg !220996

bb.d:                                             ; preds = %bb.a
  %i.j = tail call double @llvm.ceil.f64(double %i.f), !dbg !220997
  %i.k = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.j), !dbg !220998 ; 2 uses
  br label %bb.f, !dbg !220999

bb.e:                                             ; preds = %bb.a
  %i.l = fmul double %1, %i.b, !dbg !221000
  %i.m = tail call double @llvm.ceil.f64(double %i.l), !dbg !221001
  %i.n = fadd double %i.m, -1.000000e+00, !dbg !221002
  %i.o = tail call nsz double @llvm.maximumnum.f64(double %i.n, double 0.000000e+00), !dbg !221003
  %i.p = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.o), !dbg !221002
  %i.q = add i64 %i.p, %3, !dbg !221002           ; 2 uses
  br label %bb.g, !dbg !220993

bb.f:                                             ; preds = %bb.d, %bb.c
  %.pre-phi8 = phi i64 [ %i.k, %bb.d ], [ %.pre7, %bb.c ], !dbg !220980
  %.sroa.0.0 = phi i64 [ %i.k, %bb.d ], [ %i.i, %bb.c ], !dbg !221004
  %i.r = add i64 %2, -1, !dbg !221005
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0, i64 %i.r), !dbg !221006
  br label %bb.g, !dbg !221007

bb.g:                                             ; preds = %bb.b, %bb.e, %bb.f
  %.sink13 = phi i64 [ %i.h, %bb.b ], [ %i.q, %bb.e ], [ %.sroa.0.0.i, %bb.f ]
  %.sink11 = phi double [ 0.000000e+00, %bb.b ], [ 0.000000e+00, %bb.e ], [ %i.f, %bb.f ]
  %.sink = phi i64 [ %i.h, %bb.b ], [ %i.q, %bb.e ], [ %.pre-phi8, %bb.f ]
  store i64 %.sink13, ptr %0, align 8, !dbg !221004
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !221004
  store double %.sink11, ptr %i.s, align 8, !dbg !221004
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !221004
  store i64 %.sink, ptr %i.t, align 8, !dbg !221004
  ret void, !dbg !221007
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull ptr @_RNvXCsLMQD3BJNpw_9dyn_cloneINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtB2_8DynClone11___clone_boxCs1LHh8CLbVkQ_11polars_core(ptr nofree noundef nonnull align 8 captures(address, read_provenance) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !221008 !guid !221043 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [88 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !221047
  tail call void @llvm.experimental.noalias.scope.decl(metadata !221044), !dbg !221048
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !221049, !noalias !221044
  call fastcc void @_RNvXs3_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) #47, !dbg !221049, !noalias !221044
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !221050
  %i.d = load ptr, ptr %i.c, align 8, !dbg !221050, !noalias !221044, !nonnull !3468, !noundef !3468 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !dbg !221051, !range !4232, !noalias !221044, !noundef !3468
  %i.f = icmp eq i64 %i.e, 3, !dbg !221052
  br i1 %i.f, label %bb.b, label %bb.c, !dbg !221052

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !221053
  %i.h = load ptr, ptr %i.g, align 8, !dbg !221053, !noalias !221044, !noundef !3468
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !221054
  %i.j = load i64, ptr %i.i, align 8, !dbg !221054, !noalias !221044, !noundef !3468
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !221055
  %i.l = load ptr, ptr %i.k, align 8, !dbg !221055, !noalias !221044, !noundef !3468 ; 4 uses
  %.not.i = icmp eq ptr %i.l, null, !dbg !221055
  br i1 %.not.i, label %_RNvXs6_NtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB5_14PrimitiveArrayNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs1LHh8CLbVkQ_11polars_core.exit, label %bb.d, !dbg !221056

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !221057
  %i.n = atomicrmw add ptr %i.m, i64 1 monotonic, align 8, !dbg !221058, !noalias !221044 ; 0 uses
  br label %bb.b, !dbg !221059

bb.d:                                             ; preds = %bb.b
  %i.o = load i64, ptr %i.l, align 8, !dbg !221060, !range !4232, !noalias !221045, !noundef !3468
  %i.p = icmp eq i64 %i.o, 3, !dbg !221061
  br i1 %i.p, label %bb.f, label %bb.e, !dbg !221061

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 24, !dbg !221062
  %i.r = atomicrmw add ptr %i.q, i64 1 monotonic, align 8, !dbg !221063, !noalias !221045 ; 0 uses
  br label %bb.f, !dbg !221064

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !221065
  %i.t = load <2 x i64>, ptr %i.s, align 8, !dbg !221065, !noalias !221045
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !221066
  %i.v = load atomic i64, ptr %i.u monotonic, align 8, !dbg !221067, !noalias !221045
  br label %_RNvXs6_NtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB5_14PrimitiveArrayNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs1LHh8CLbVkQ_11polars_core.exit, !dbg !221068

_RNvXs6_NtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB5_14PrimitiveArrayNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.b, %bb.f
  %.sroa.5.sroa.5.0.i = phi i64 [ undef, %bb.b ], [ %i.v, %bb.f ], !dbg !221069
  %i.w = phi <2 x i64> [ undef, %bb.b ], [ %i.t, %bb.f ], !dbg !221069
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !dbg !221070
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !221070
  store ptr %i.d, ptr %i.x, align 8, !dbg !221070, !alias.scope !221044
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !221070
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !221070, !alias.scope !221044
  %.sroa.5.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !221070
  store i64 %i.j, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !221070, !alias.scope !221044
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !221070
  store ptr %i.l, ptr %i.y, align 8, !dbg !221070, !alias.scope !221044
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !221070
  store <2 x i64> %i.w, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !221070, !alias.scope !221044
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 80, !dbg !221070
  store i64 %.sroa.5.sroa.5.0.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8, !dbg !221070, !alias.scope !221044
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !221071, !noalias !221044
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !dbg !221072, !noalias !221046
  %i.z = tail call noundef align 8 dereferenceable_or_null(88) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 32, 97) 88, i64 noundef range(i64 8, 17) 8) #45, !dbg !221073, !noalias !221046 ; 3 uses
  %i.aa = icmp eq ptr %i.z, null, !dbg !221074
  br i1 %i.aa, label %bb.g, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayNtNtCs2mZqlW55729_12polars_utils7float164pf16EE3newCs1LHh8CLbVkQ_11polars_core.exit, !dbg !221075, !prof !3515

bb.g:                                             ; preds = %_RNvXs6_NtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB5_14PrimitiveArrayNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs1LHh8CLbVkQ_11polars_core.exit
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 88) #43
          to label %.noexc unwind label %bb.h, !dbg !221076

.noexc:                                           ; preds = %bb.g
  unreachable, !dbg !221076

bb.h:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayNtNtCs2mZqlW55729_12polars_utils7float164pf16EECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.b) #44
          to label %bb.j unwind label %bb.i, !dbg !221077

bb.i:                                             ; preds = %bb.h
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !221078
  unreachable, !dbg !221078

bb.j:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.ab, !dbg !221078

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayNtNtCs2mZqlW55729_12polars_utils7float164pf16EE3newCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %_RNvXs6_NtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB5_14PrimitiveArrayNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs1LHh8CLbVkQ_11polars_core.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.z, ptr noundef nonnull align 8 dereferenceable(88) %i.b, i64 88, i1 false), !dbg !221079
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !221080
  ret ptr %i.z, !dbg !221081
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull ptr @_RNvXCsLMQD3BJNpw_9dyn_cloneINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB2_8DynClone11___clone_boxCs1LHh8CLbVkQ_11polars_core(ptr nofree noundef nonnull align 8 captures(address, read_provenance) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !221082 !guid !221117 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [88 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !221121
  tail call void @llvm.experimental.noalias.scope.decl(metadata !221118), !dbg !221122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !221123, !noalias !221118
  call fastcc void @_RNvXs3_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) #47, !dbg !221123, !noalias !221118
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !221124
  %i.d = load ptr, ptr %i.c, align 8, !dbg !221124, !noalias !221118, !nonnull !3468, !noundef !3468 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !dbg !221125, !range !4232, !noalias !221118, !noundef !3468
  %i.f = icmp eq i64 %i.e, 3, !dbg !221126
  br i1 %i.f, label %bb.b, label %bb.c, !dbg !221126

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !221127
  %i.h = load ptr, ptr %i.g, align 8, !dbg !221127, !noalias !221118, !noundef !3468
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !221128
  %i.j = load i64, ptr %i.i, align 8, !dbg !221128, !noalias !221118, !noundef !3468
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !221129
  %i.l = load ptr, ptr %i.k, align 8, !dbg !221129, !noalias !221118, !noundef !3468 ; 4 uses
  %.not.i = icmp eq ptr %i.l, null, !dbg !221129
  br i1 %.not.i, label %_RNvXs6_NtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB5_14PrimitiveArrayaENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs1LHh8CLbVkQ_11polars_core.exit, label %bb.d, !dbg !221130

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !221131
  %i.n = atomicrmw add ptr %i.m, i64 1 monotonic, align 8, !dbg !221132, !noalias !221118 ; 0 uses
  br label %bb.b, !dbg !221133

bb.d:                                             ; preds = %bb.b
  %i.o = load i64, ptr %i.l, align 8, !dbg !221134, !range !4232, !noalias !221119, !noundef !3468
  %i.p = icmp eq i64 %i.o, 3, !dbg !221135
  br i1 %i.p, label %bb.f, label %bb.e, !dbg !221135

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 24, !dbg !221136
  %i.r = atomicrmw add ptr %i.q, i64 1 monotonic, align 8, !dbg !221137, !noalias !221119 ; 0 uses
  br label %bb.f, !dbg !221138

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !221139
  %i.t = load <2 x i64>, ptr %i.s, align 8, !dbg !221139, !noalias !221119
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !221140
end_hunk_4
begin_hunk_5_@_RNvXNtNtNtCscgRAwXFJnXP_4core3ops8function5implsRDG_INtB4_2FnTRL0_INtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayNtNtCs2mZqlW55729_12polars_utils7float164pf16EEEp6OutputINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtB17_5ArrayEL_EEL_IBP_TRB12_EE4callCs1LHh8CLbVkQ_11polars_core:bb.a
  %i.a = load ptr, ptr %0, align 8, !dbg !231061, !nonnull !3468, !noundef !3468
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !231061
  %i.c = load ptr, ptr %i.b, align 8, !dbg !231061, !nonnull !3468, !align !3637, !noundef !3468
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !231061
  %i.e = load ptr, ptr %i.d, align 8, !dbg !231061, !invariant.load !3468, !nonnull !3468
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 %1) #47, !dbg !231062
  ret { ptr, ptr } %i.f, !dbg !231063
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXNtNtNtCscgRAwXFJnXP_4core3ops8function5implsRDG_INtB4_2FnTRL0_INtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaEEEp6OutputINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtB17_5ArrayEL_EEL_IBP_TRB12_EE4callCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 !dbg !231064 !guid !231065 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !231066, !nonnull !3468, !noundef !3468
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !231066
  %i.c = load ptr, ptr %i.b, align 8, !dbg !231066, !nonnull !3468, !align !3637, !noundef !3468
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !231066
  %i.e = load ptr, ptr %i.d, align 8, !dbg !231066, !invariant.load !3468, !nonnull !3468
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 %1) #47, !dbg !231067
  ret { ptr, ptr } %i.f, !dbg !231068
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXNtNtNtCscgRAwXFJnXP_4core3ops8function5implsRDG_INtB4_2FnTRL0_INtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraydEEEp6OutputINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtB17_5ArrayEL_EEL_IBP_TRB12_EE4callCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 !dbg !231069 !guid !231070 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !231071, !nonnull !3468, !noundef !3468
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !231071
  %i.c = load ptr, ptr %i.b, align 8, !dbg !231071, !nonnull !3468, !align !3637, !noundef !3468
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !231071
  %i.e = load ptr, ptr %i.d, align 8, !dbg !231071, !invariant.load !3468, !nonnull !3468
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 %1) #47, !dbg !231072
  ret { ptr, ptr } %i.f, !dbg !231073
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXNtNtNtCscgRAwXFJnXP_4core3ops8function5implsRDG_INtB4_2FnTRL0_INtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayfEEEp6OutputINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtB17_5ArrayEL_EEL_IBP_TRB12_EE4callCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 !dbg !231074 !guid !231075 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !231076, !nonnull !3468, !noundef !3468
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !231076
  %i.c = load ptr, ptr %i.b, align 8, !dbg !231076, !nonnull !3468, !align !3637, !noundef !3468
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !231076
  %i.e = load ptr, ptr %i.d, align 8, !dbg !231076, !invariant.load !3468, !nonnull !3468
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 %1) #47, !dbg !231077
  ret { ptr, ptr } %i.f, !dbg !231078
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXNtNtNtCscgRAwXFJnXP_4core3ops8function5implsRDG_INtB4_2FnTRL0_INtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhEEEp6OutputINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtB17_5ArrayEL_EEL_IBP_TRB12_EE4callCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 !dbg !231079 !guid !231080 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !231081, !nonnull !3468, !noundef !3468
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !231081
  %i.c = load ptr, ptr %i.b, align 8, !dbg !231081, !nonnull !3468, !align !3637, !noundef !3468
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !231081
  %i.e = load ptr, ptr %i.d, align 8, !dbg !231081, !invariant.load !3468, !nonnull !3468
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 %1) #47, !dbg !231082
  ret { ptr, ptr } %i.f, !dbg !231083
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXNtNtNtCscgRAwXFJnXP_4core3ops8function5implsRDG_INtB4_2FnTRL0_INtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraylEEEp6OutputINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtB17_5ArrayEL_EEL_IBP_TRB12_EE4callCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 !dbg !231084 !guid !231085 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !231086, !nonnull !3468, !noundef !3468
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !231086
  %i.c = load ptr, ptr %i.b, align 8, !dbg !231086, !nonnull !3468, !align !3637, !noundef !3468
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !231086
  %i.e = load ptr, ptr %i.d, align 8, !dbg !231086, !invariant.load !3468, !nonnull !3468
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 %1) #47, !dbg !231087
  ret { ptr, ptr } %i.f, !dbg !231088
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXNtNtNtCscgRAwXFJnXP_4core3ops8function5implsRDG_INtB4_2FnTRL0_INtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraymEEEp6OutputINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtB17_5ArrayEL_EEL_IBP_TRB12_EE4callCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 !dbg !231089 !guid !231090 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !231091, !nonnull !3468, !noundef !3468
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !231091
  %i.c = load ptr, ptr %i.b, align 8, !dbg !231091, !nonnull !3468, !align !3637, !noundef !3468
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !231091
  %i.e = load ptr, ptr %i.d, align 8, !dbg !231091, !invariant.load !3468, !nonnull !3468
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 %1) #47, !dbg !231092
  ret { ptr, ptr } %i.f, !dbg !231093
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXNtNtNtCscgRAwXFJnXP_4core3ops8function5implsRDG_INtB4_2FnTRL0_INtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraynEEEp6OutputINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtB17_5ArrayEL_EEL_IBP_TRB12_EE4callCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 !dbg !231094 !guid !231095 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !231096, !nonnull !3468, !noundef !3468
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !231096
  %i.c = load ptr, ptr %i.b, align 8, !dbg !231096, !nonnull !3468, !align !3637, !noundef !3468
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !231096
  %i.e = load ptr, ptr %i.d, align 8, !dbg !231096, !invariant.load !3468, !nonnull !3468
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 %1) #47, !dbg !231097
  ret { ptr, ptr } %i.f, !dbg !231098
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXNtNtNtCscgRAwXFJnXP_4core3ops8function5implsRDG_INtB4_2FnTRL0_INtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayoEEEp6OutputINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtB17_5ArrayEL_EEL_IBP_TRB12_EE4callCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 !dbg !231099 !guid !231100 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !231101, !nonnull !3468, !noundef !3468
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !231101
  %i.c = load ptr, ptr %i.b, align 8, !dbg !231101, !nonnull !3468, !align !3637, !noundef !3468
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !231101
  %i.e = load ptr, ptr %i.d, align 8, !dbg !231101, !invariant.load !3468, !nonnull !3468
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 %1) #47, !dbg !231102
  ret { ptr, ptr } %i.f, !dbg !231103
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXNtNtNtCscgRAwXFJnXP_4core3ops8function5implsRDG_INtB4_2FnTRL0_INtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysEEEp6OutputINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtB17_5ArrayEL_EEL_IBP_TRB12_EE4callCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 !dbg !231104 !guid !231105 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !231106, !nonnull !3468, !noundef !3468
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !231106
  %i.c = load ptr, ptr %i.b, align 8, !dbg !231106, !nonnull !3468, !align !3637, !noundef !3468
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !231106
  %i.e = load ptr, ptr %i.d, align 8, !dbg !231106, !invariant.load !3468, !nonnull !3468
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 %1) #47, !dbg !231107
  ret { ptr, ptr } %i.f, !dbg !231108
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXNtNtNtCscgRAwXFJnXP_4core3ops8function5implsRDG_INtB4_2FnTRL0_INtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytEEEp6OutputINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtB17_5ArrayEL_EEL_IBP_TRB12_EE4callCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 !dbg !231109 !guid !231110 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !231111, !nonnull !3468, !noundef !3468
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !231111
  %i.c = load ptr, ptr %i.b, align 8, !dbg !231111, !nonnull !3468, !align !3637, !noundef !3468
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !231111
  %i.e = load ptr, ptr %i.d, align 8, !dbg !231111, !invariant.load !3468, !nonnull !3468
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 %1) #47, !dbg !231112
  ret { ptr, ptr } %i.f, !dbg !231113
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXNtNtNtCscgRAwXFJnXP_4core3ops8function5implsRDG_INtB4_2FnTRL0_INtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayxEEEp6OutputINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtB17_5ArrayEL_EEL_IBP_TRB12_EE4callCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 !dbg !231114 !guid !231115 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !231116, !nonnull !3468, !noundef !3468
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !231116
  %i.c = load ptr, ptr %i.b, align 8, !dbg !231116, !nonnull !3468, !align !3637, !noundef !3468
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !231116
  %i.e = load ptr, ptr %i.d, align 8, !dbg !231116, !invariant.load !3468, !nonnull !3468
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 %1) #47, !dbg !231117
  ret { ptr, ptr } %i.f, !dbg !231118
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXNtNtNtCscgRAwXFJnXP_4core3ops8function5implsRDG_INtB4_2FnTRL0_INtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayyEEEp6OutputINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtB17_5ArrayEL_EEL_IBP_TRB12_EE4callCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 !dbg !231119 !guid !231120 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !231121, !nonnull !3468, !noundef !3468
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !231121
  %i.c = load ptr, ptr %i.b, align 8, !dbg !231121, !nonnull !3468, !align !3637, !noundef !3468
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !231121
  %i.e = load ptr, ptr %i.d, align 8, !dbg !231121, !invariant.load !3468, !nonnull !3468
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 %1) #47, !dbg !231122
  ret { ptr, ptr } %i.f, !dbg !231123
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantileINtB2_14QuantileWindowNtNtCs2mZqlW55729_12polars_utils7float164pf16EINtB4_23RollingAggWindowNoNullsB1o_E6updateCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 dereferenceable(96) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 !dbg !231124 !guid !231125 {
bb.a:
  tail call void @_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling6windowINtB2_9SortedBufNtNtCs2mZqlW55729_12polars_utils7float164pf16E6updateCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i64 noundef %2), !dbg !231126
  ret void, !dbg !231127
}

; Function Attrs: nonlazybind uwtable
define hidden { i16, i16 } @_RNvXNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantileINtB2_14QuantileWindowNtNtCs2mZqlW55729_12polars_utils7float164pf16EINtB4_23RollingAggWindowNoNullsB1o_E7get_aggCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !231128 !guid !231279 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36, !dbg !231329
  %i.b = load i32, ptr %i.a, align 4, !dbg !231329, !noundef !3468 ; 2 uses
  %i.c = icmp eq i32 %i.b, -1, !dbg !231330
  br i1 %i.c, label %bb.cd, label %bb.b, !dbg !231330

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !231331
  %i.e = load ptr, ptr %i.d, align 8, !dbg !231331, !nonnull !3468, !noundef !3468
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !231332
  %i.g = load i64, ptr %i.f, align 8, !dbg !231332, !noundef !3468
  %i.h = zext i32 %i.b to i64, !dbg !231333       ; 2 uses
  %i.i = icmp ugt i64 %i.g, %i.h, !dbg !231334
  tail call void @llvm.assume(i1 %i.i), !dbg !231335
  %i.j = getelementptr inbounds nuw [48 x i8], ptr %i.e, i64 %i.h, !dbg !231336
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 36, !dbg !231337
  %i.l = load i32, ptr %i.k, align 4, !dbg !231337, !noundef !3468 ; 3 uses
  %i.m = zext i32 %i.l to i64, !dbg !231337       ; 3 uses
  %i.n = icmp eq i32 %i.l, 0, !dbg !231338
  br i1 %i.n, label %bb.cd, label %bb.c, !dbg !231338

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !231339
  %i.p = load i8, ptr %i.o, align 8, !dbg !231339, !range !3976, !noundef !3468
  %i.q = uitofp i32 %i.l to double, !dbg !231340  ; 6 uses
  switch i8 %i.p, label %default.unreachable75 [
    i8 0, label %bb.d
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.h
    i8 5, label %bb.i
  ], !dbg !231341

default.unreachable75:                            ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.r = fadd nnan double %i.q, -1.000000e+00, !dbg !231342
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !231343
  %i.t = load double, ptr %i.s, align 8, !dbg !231343, !noundef !3468
  %i.u = fmul double %i.r, %i.t, !dbg !231344
  %i.v = tail call double @llvm.round.f64(double %i.u), !dbg !231345
  %i.w = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.v), !dbg !231344
  %i.x = add nsw i64 %i.m, -1, !dbg !231346
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.x, i64 %i.w), !dbg !231347
  br label %bb.j, !dbg !231348

bb.e:                                             ; preds = %bb.c
  %i.y = fadd nnan double %i.q, -1.000000e+00, !dbg !231349
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !231350
  %i.aa = load double, ptr %i.z, align 8, !dbg !231350, !noundef !3468
  %i.ab = fmul double %i.y, %i.aa, !dbg !231351
  %i.ac = tail call double @llvm.floor.f64(double %i.ab), !dbg !231352
  %i.ad = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.ac), !dbg !231351
  br label %bb.j, !dbg !231353

bb.f:                                             ; preds = %bb.c
  %i.ae = fadd nnan double %i.q, -1.000000e+00, !dbg !231354
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !231355
  %i.ag = load double, ptr %i.af, align 8, !dbg !231355, !noundef !3468
  %i.ah = fmul double %i.ae, %i.ag, !dbg !231356
  %i.ai = tail call double @llvm.ceil.f64(double %i.ah), !dbg !231357
  %i.aj = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.ai), !dbg !231356
  %i.ak = add nsw i64 %i.m, -1, !dbg !231358
  %.sroa.0.0.i27 = tail call noundef i64 @llvm.umin.i64(i64 %i.ak, i64 %i.aj), !dbg !231359
  br label %bb.j, !dbg !231360

bb.g:                                             ; preds = %bb.c
  %i.al = fadd nnan double %i.q, -1.000000e+00, !dbg !231361
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !231362
  %i.an = load double, ptr %i.am, align 8, !dbg !231362, !noundef !3468
  %i.ao = fmul double %i.al, %i.an, !dbg !231363  ; 2 uses
  %i.ap = tail call double @llvm.floor.f64(double %i.ao), !dbg !231364
  %i.aq = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.ap), !dbg !231363
  %i.ar = add nsw i64 %i.m, -1, !dbg !231365
  %.sroa.0.0.i28 = tail call noundef i64 @llvm.umin.i64(i64 %i.ar, i64 %i.aq), !dbg !231366 ; 3 uses
  %i.as = tail call double @llvm.ceil.f64(double %i.ao), !dbg !231367
  %i.at = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.as), !dbg !231368
  %i.au = icmp eq i64 %i.at, %.sroa.0.0.i28, !dbg !231369
  %i.av = tail call noundef i16 @_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling6windowINtB2_9SortedBufNtNtCs2mZqlW55729_12polars_utils7float164pf16E3getCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, i64 noundef %.sroa.0.0.i28), !dbg !231370 ; 2 uses
  br i1 %i.au, label %bb.cd, label %bb.k, !dbg !231369

bb.h:                                             ; preds = %bb.c
  %i.aw = fadd nnan double %i.q, -1.000000e+00, !dbg !231371
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !231372
  %i.ay = load double, ptr %i.ax, align 8, !dbg !231372, !noundef !3468
  %i.az = fmul double %i.aw, %i.ay, !dbg !231373  ; 3 uses
  %i.ba = tail call double @llvm.floor.f64(double %i.az), !dbg !231374
  %i.bb = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.ba), !dbg !231373 ; 5 uses
  %i.bc = tail call double @llvm.ceil.f64(double %i.az), !dbg !231375
  %i.bd = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.bc), !dbg !231376
  %i.be = icmp eq i64 %i.bb, %i.bd, !dbg !231377
  br i1 %i.be, label %bb.cc, label %bb.l, !dbg !231377

bb.i:                                             ; preds = %bb.c
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !231378
  %i.bg = load double, ptr %i.bf, align 8, !dbg !231378, !noundef !3468
  %i.bh = fmul double %i.bg, %i.q, !dbg !231379
  %i.bi = tail call double @llvm.ceil.f64(double %i.bh), !dbg !231380
  %i.bj = fadd double %i.bi, -1.000000e+00, !dbg !231381
  %i.bk = tail call nsz double @llvm.maximumnum.f64(double %i.bj, double 0.000000e+00), !dbg !231382
  %i.bl = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.bk), !dbg !231381
  br label %bb.j, !dbg !231383

bb.j:                                             ; preds = %bb.i, %bb.f, %bb.e, %bb.d
  %.sroa.011.0 = phi i64 [ %.sroa.0.0.i, %bb.d ], [ %i.ad, %bb.e ], [ %.sroa.0.0.i27, %bb.f ], [ %i.bl, %bb.i ], !dbg !231340
  %i.bm = tail call noundef i16 @_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling6windowINtB2_9SortedBufNtNtCs2mZqlW55729_12polars_utils7float164pf16E3getCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, i64 noundef %.sroa.011.0), !dbg !231384
  br label %bb.cd, !dbg !231385

bb.k:                                             ; preds = %bb.g
  %i.bn = add nuw nsw i64 %.sroa.0.0.i28, 1, !dbg !231386
  %i.bo = tail call noundef i16 @_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling6windowINtB2_9SortedBufNtNtCs2mZqlW55729_12polars_utils7float164pf16E3getCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, i64 noundef %i.bn), !dbg !231387
  %i.bp = tail call fastcc noundef i16 @_RNvXsA_NtCs2mZqlW55729_12polars_utils7float16NtB5_4pf16NtNtNtCscgRAwXFJnXP_4core3ops5arith3Add3add(i16 noundef %i.av, i16 noundef %i.bo) #47, !dbg !231388
  %i.bq = tail call fastcc noundef i16 @_RNvXsA_NtCs2mZqlW55729_12polars_utils7float16NtB5_4pf16NtNtNtCscgRAwXFJnXP_4core3ops5arith3Add3add(i16 noundef 15360, i16 noundef 15360) #47, !dbg !231389
  %i.br = tail call fastcc noundef i16 @_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19divide_f16_fallback(i16 noundef %i.bp, i16 noundef %i.bq) #47, !dbg !231390
  br label %bb.cd, !dbg !231391

bb.l:                                             ; preds = %bb.h
  %i.bs = uitofp i64 %i.bb to double, !dbg !231392
  %i.bt = fsub double %i.az, %i.bs, !dbg !231393
  %i.bu = tail call fastcc i16 @_RINvXNvNtCs2mZqlW55729_12polars_utils7float16s3_1__NtB5_4pf16NtNtCslmKYcnV0hjo_10num_traits4cast7NumCast4fromdECs1LHh8CLbVkQ_11polars_core(double noundef %i.bt) #47, !dbg !231394 ; 6 uses
  %i.bv = tail call noundef i16 @_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling6windowINtB2_9SortedBufNtNtCs2mZqlW55729_12polars_utils7float164pf16E3getCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, i64 noundef %i.bb), !dbg !231395 ; 7 uses
  %i.bw = add i64 %i.bb, 1, !dbg !231396
  %i.bx = tail call noundef i16 @_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling6windowINtB2_9SortedBufNtNtCs2mZqlW55729_12polars_utils7float164pf16E3getCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, i64 noundef %i.bw), !dbg !231397 ; 6 uses
  %i.by = load atomic i64, ptr @_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache5CACHE monotonic, align 8, !dbg !231398 ; 2 uses
  %i.bz = icmp eq i64 %i.by, 0, !dbg !231399
  br i1 %i.bz, label %.split.i.i, label %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i, !dbg !231399, !prof !3515

.split.i.i:                                       ; preds = %bb.l
  %i.ca = tail call noundef i128 @_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache21detect_and_initialize(), !dbg !231400
  %i.cb = and i128 %i.ca, 36028797018963968, !dbg !231401
  %.not14.i.i = icmp eq i128 %i.cb, 0, !dbg !231401
  br i1 %.not14.i.i, label %bb.m, label %bb.v, !dbg !231402

_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i: ; preds = %bb.l
  %i.cc = and i64 %i.by, 36028797018963968, !dbg !231403
  %.not.i.i = icmp eq i64 %i.cc, 0, !dbg !231403
  br i1 %.not.i.i, label %bb.m, label %bb.v, !dbg !231402

bb.m:                                             ; preds = %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i, %.split.i.i
  %i.cd = and i16 %i.bx, 32767, !dbg !231404
  %i.ce = icmp eq i16 %i.cd, 0, !dbg !231404
  br i1 %i.ce, label %bb.n, label %bb.o, !dbg !231404

bb.n:                                             ; preds = %bb.m
  %i.cf = zext i16 %i.bx to i32, !dbg !231405
  %i.cg = shl nuw i32 %i.cf, 16, !dbg !231405
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f32_fallback.exit.i.i, !dbg !231406

bb.o:                                             ; preds = %bb.m
  %i.ch = and i16 %i.bx, -32768, !dbg !231407
  %i.ci = zext i16 %i.ch to i32, !dbg !231407     ; 2 uses
  %i.cj = and i16 %i.bx, 31744, !dbg !231408      ; 3 uses
  %i.ck = and i16 %i.bx, 1023, !dbg !231409       ; 3 uses
  %i.cl = zext nneg i16 %i.ck to i32, !dbg !231409 ; 3 uses
  %i.cm = icmp eq i16 %i.cj, 31744, !dbg !231410
  br i1 %i.cm, label %bb.p, label %bb.q, !dbg !231410

bb.p:                                             ; preds = %bb.o
  %i.cn = icmp eq i16 %i.ck, 0, !dbg !231411
  %i.co = shl nuw i32 %i.ci, 16, !dbg !231412     ; 2 uses
  br i1 %i.cn, label %bb.r, label %bb.s, !dbg !231411

bb.q:                                             ; preds = %bb.o
  %i.cp = shl nuw i32 %i.ci, 16, !dbg !231413     ; 2 uses
  %i.cq = icmp eq i16 %i.cj, 0, !dbg !231414
  br i1 %i.cq, label %bb.t, label %bb.u, !dbg !231414

bb.r:                                             ; preds = %bb.p
  %i.cr = or disjoint i32 %i.co, 2139095040, !dbg !231415
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f32_fallback.exit.i.i, !dbg !231416

bb.s:                                             ; preds = %bb.p
  %i.cs = shl nuw nsw i32 %i.cl, 13, !dbg !231417
  %i.ct = or disjoint i32 %i.co, %i.cs, !dbg !231418
  %i.cu = or i32 %i.ct, 2143289344, !dbg !231418
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f32_fallback.exit.i.i, !dbg !231419

bb.t:                                             ; preds = %bb.q
  %i.cv = tail call range(i16 6, 17) i16 @llvm.ctlz.i16(i16 %i.ck, i1 false), !dbg !231420
  %i.cw = zext nneg i16 %i.cv to i32, !dbg !231420 ; 2 uses
  %i.cx = add nuw nsw i32 %i.cw, 8, !dbg !231421
  %i.cy = shl i32 %i.cl, %i.cx, !dbg !231422
  %i.cz = and i32 %i.cy, 8388607, !dbg !231422
  %reass.sub.i.i.i = or disjoint i32 %i.cp, 989855744, !dbg !231423
  %i.da = shl nuw nsw i32 %i.cw, 23, !dbg !231423
  %i.db = sub nuw nsw i32 %reass.sub.i.i.i, %i.da, !dbg !231423
  %i.dc = or disjoint i32 %i.cz, %i.db, !dbg !231423
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f32_fallback.exit.i.i, !dbg !231424

bb.u:                                             ; preds = %bb.q
  %i.dd = lshr exact i16 %i.cj, 10, !dbg !231425
  %narrow.i.i.i = add nuw nsw i16 %i.dd, 112, !dbg !231426
  %i.de = zext nneg i16 %narrow.i.i.i to i32, !dbg !231426
  %i.df = shl nuw nsw i32 %i.de, 23, !dbg !231427
  %i.dg = shl nuw nsw i32 %i.cl, 13, !dbg !231428
  %i.dh = or disjoint i32 %i.df, %i.dg, !dbg !231429
  %i.di = or disjoint i32 %i.dh, %i.cp, !dbg !231429
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f32_fallback.exit.i.i, !dbg !231430

_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f32_fallback.exit.i.i: ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.n
  %.sroa.0.0.i.i.i = phi i32 [ %i.cg, %bb.n ], [ %i.cr, %bb.r ], [ %i.cu, %bb.s ], [ %i.dc, %bb.t ], [ %i.di, %bb.u ], !dbg !231431
  %i.dj = bitcast i32 %.sroa.0.0.i.i.i to float, !dbg !231430
  br label %bb.w, !dbg !231432

bb.v:                                             ; preds = %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i, %.split.i.i
  %i.dk = tail call fastcc noundef float @_RNvNtNtNtCshdiYQzaKNQ1_4half8binary164arch3x8619f16_to_f32_x86_f16c(i16 noundef %i.bx), !dbg !231433
  br label %bb.w, !dbg !231433

bb.w:                                             ; preds = %bb.v, %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f32_fallback.exit.i.i
  %.sroa.01.0.i.i = phi float [ %i.dk, %bb.v ], [ %i.dj, %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f32_fallback.exit.i.i ], !dbg !231434
  %i.dl = load atomic i64, ptr @_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache5CACHE monotonic, align 8, !dbg !231435 ; 2 uses
  %i.dm = icmp eq i64 %i.dl, 0, !dbg !231436
  br i1 %i.dm, label %.split12.i.i, label %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit4.i.i, !dbg !231436, !prof !3515

.split12.i.i:                                     ; preds = %bb.w
  %i.dn = tail call noundef i128 @_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache21detect_and_initialize(), !dbg !231437
  %i.do = and i128 %i.dn, 36028797018963968, !dbg !231438
  %.not16.i.i = icmp eq i128 %i.do, 0, !dbg !231438
  br i1 %.not16.i.i, label %bb.x, label %bb.ag, !dbg !231439

_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit4.i.i: ; preds = %bb.w
  %i.dp = and i64 %i.dl, 36028797018963968, !dbg !231440
  %.not15.i.i = icmp eq i64 %i.dp, 0, !dbg !231440
  br i1 %.not15.i.i, label %bb.x, label %bb.ag, !dbg !231439

bb.x:                                             ; preds = %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit4.i.i, %.split12.i.i
  %i.dq = and i16 %i.bv, 32767, !dbg !231441
  %i.dr = icmp eq i16 %i.dq, 0, !dbg !231441
  br i1 %i.dr, label %bb.y, label %bb.z, !dbg !231441

bb.y:                                             ; preds = %bb.x
  %i.ds = zext i16 %i.bv to i32, !dbg !231442
  %i.dt = shl nuw i32 %i.ds, 16, !dbg !231442
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f32_fallback.exit8.i.i, !dbg !231443

bb.z:                                             ; preds = %bb.x
  %i.du = and i16 %i.bv, -32768, !dbg !231444
  %i.dv = zext i16 %i.du to i32, !dbg !231444     ; 2 uses
  %i.dw = and i16 %i.bv, 31744, !dbg !231445      ; 3 uses
  %i.dx = and i16 %i.bv, 1023, !dbg !231446       ; 3 uses
  %i.dy = zext nneg i16 %i.dx to i32, !dbg !231446 ; 3 uses
  %i.dz = icmp eq i16 %i.dw, 31744, !dbg !231447
  br i1 %i.dz, label %bb.aa, label %bb.ab, !dbg !231447

bb.aa:                                            ; preds = %bb.z
  %i.ea = icmp eq i16 %i.dx, 0, !dbg !231448
  %i.eb = shl nuw i32 %i.dv, 16, !dbg !231449     ; 2 uses
  br i1 %i.ea, label %bb.ac, label %bb.ad, !dbg !231448

bb.ab:                                            ; preds = %bb.z
  %i.ec = shl nuw i32 %i.dv, 16, !dbg !231450     ; 2 uses
  %i.ed = icmp eq i16 %i.dw, 0, !dbg !231451
  br i1 %i.ed, label %bb.ae, label %bb.af, !dbg !231451

bb.ac:                                            ; preds = %bb.aa
  %i.ee = or disjoint i32 %i.eb, 2139095040, !dbg !231452
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f32_fallback.exit8.i.i, !dbg !231453

bb.ad:                                            ; preds = %bb.aa
  %i.ef = shl nuw nsw i32 %i.dy, 13, !dbg !231454
  %i.eg = or disjoint i32 %i.eb, %i.ef, !dbg !231455
  %i.eh = or i32 %i.eg, 2143289344, !dbg !231455
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f32_fallback.exit8.i.i, !dbg !231456

bb.ae:                                            ; preds = %bb.ab
  %i.ei = tail call range(i16 6, 17) i16 @llvm.ctlz.i16(i16 %i.dx, i1 false), !dbg !231457
  %i.ej = zext nneg i16 %i.ei to i32, !dbg !231457 ; 2 uses
  %i.ek = add nuw nsw i32 %i.ej, 8, !dbg !231458
  %i.el = shl i32 %i.dy, %i.ek, !dbg !231459
  %i.em = and i32 %i.el, 8388607, !dbg !231459
  %reass.sub.i7.i.i = or disjoint i32 %i.ec, 989855744, !dbg !231460
  %i.en = shl nuw nsw i32 %i.ej, 23, !dbg !231460
  %i.eo = sub nuw nsw i32 %reass.sub.i7.i.i, %i.en, !dbg !231460
  %i.ep = or disjoint i32 %i.em, %i.eo, !dbg !231460
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f32_fallback.exit8.i.i, !dbg !231461

bb.af:                                            ; preds = %bb.ab
  %i.eq = lshr exact i16 %i.dw, 10, !dbg !231462
  %narrow.i5.i.i = add nuw nsw i16 %i.eq, 112, !dbg !231463
  %i.er = zext nneg i16 %narrow.i5.i.i to i32, !dbg !231463
  %i.es = shl nuw nsw i32 %i.er, 23, !dbg !231464
  %i.et = shl nuw nsw i32 %i.dy, 13, !dbg !231465
  %i.eu = or disjoint i32 %i.es, %i.et, !dbg !231466
end_hunk_5
begin_hunk_6_@_RNvXNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantileINtB2_14QuantileWindowNtNtCs2mZqlW55729_12polars_utils7float164pf16EINtB4_23RollingAggWindowNoNullsB1o_E7get_aggCs1LHh8CLbVkQ_11polars_core:bb.a
  %i.jj = tail call range(i16 6, 17) i16 @llvm.ctlz.i16(i16 %i.iy, i1 false), !dbg !231573
  %i.jk = zext nneg i16 %i.jj to i32, !dbg !231573 ; 2 uses
  %i.jl = add nuw nsw i32 %i.jk, 8, !dbg !231574
  %i.jm = shl i32 %i.iz, %i.jl, !dbg !231575
  %i.jn = and i32 %i.jm, 8388607, !dbg !231575
  %reass.sub.i7.i.i48 = or disjoint i32 %i.jd, 989855744, !dbg !231576
  %i.jo = shl nuw nsw i32 %i.jk, 23, !dbg !231576
  %i.jp = sub nuw nsw i32 %reass.sub.i7.i.i48, %i.jo, !dbg !231576
  %i.jq = or disjoint i32 %i.jn, %i.jp, !dbg !231576
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f32_fallback.exit8.i.i46, !dbg !231577

bb.bn:                                            ; preds = %bb.bj
  %i.jr = lshr exact i16 %i.ix, 10, !dbg !231578
  %narrow.i5.i.i45 = add nuw nsw i16 %i.jr, 112, !dbg !231579
  %i.js = zext nneg i16 %narrow.i5.i.i45 to i32, !dbg !231579
  %i.jt = shl nuw nsw i32 %i.js, 23, !dbg !231580
  %i.ju = shl nuw nsw i32 %i.iz, 13, !dbg !231581
  %i.jv = or disjoint i32 %i.jt, %i.ju, !dbg !231582
  %i.jw = or disjoint i32 %i.jv, %i.jd, !dbg !231582
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f32_fallback.exit8.i.i46, !dbg !231583

_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f32_fallback.exit8.i.i46: ; preds = %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bg
  %.sroa.0.0.i6.i.i47 = phi i32 [ %i.iu, %bb.bg ], [ %i.jf, %bb.bk ], [ %i.ji, %bb.bl ], [ %i.jq, %bb.bm ], [ %i.jw, %bb.bn ], !dbg !231584
  %i.jx = bitcast i32 %.sroa.0.0.i6.i.i47 to float, !dbg !231583
  br label %bb.bp, !dbg !231585

bb.bo:                                            ; preds = %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit4.i.i32, %.split12.i.i49
  %i.jy = tail call fastcc noundef float @_RNvNtNtNtCshdiYQzaKNQ1_4half8binary164arch3x8619f16_to_f32_x86_f16c(i16 noundef %.sroa.0.0.i.i), !dbg !231586
  br label %bb.bp, !dbg !231586

bb.bp:                                            ; preds = %bb.bo, %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f32_fallback.exit8.i.i46
  %.sroa.02.0.i.i34 = phi float [ %i.jy, %bb.bo ], [ %i.jx, %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f32_fallback.exit8.i.i46 ], !dbg !231587
  %i.jz = fmul float %.sroa.01.0.i.i31, %.sroa.02.0.i.i34, !dbg !231588 ; 2 uses
  %i.ka = load atomic i64, ptr @_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache5CACHE monotonic, align 8, !dbg !231589 ; 2 uses
  %i.kb = icmp eq i64 %i.ka, 0, !dbg !231590
  br i1 %i.kb, label %.split13.i.i43, label %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit10.i.i35, !dbg !231590, !prof !3515

.split13.i.i43:                                   ; preds = %bb.bp
  %i.kc = tail call noundef i128 @_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache21detect_and_initialize(), !dbg !231591
  %i.kd = and i128 %i.kc, 36028797018963968, !dbg !231592
  %.not18.i.i44 = icmp eq i128 %i.kd, 0, !dbg !231592
  br i1 %.not18.i.i44, label %bb.bq, label %bb.cb, !dbg !231593

_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit10.i.i35: ; preds = %bb.bp
  %i.ke = and i64 %i.ka, 36028797018963968, !dbg !231594
  %.not17.i.i36 = icmp eq i64 %i.ke, 0, !dbg !231594
  br i1 %.not17.i.i36, label %bb.bq, label %bb.cb, !dbg !231593

bb.bq:                                            ; preds = %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit10.i.i35, %.split13.i.i43
  %i.kf = bitcast float %i.jz to i32, !dbg !231595 ; 5 uses
  %i.kg = and i32 %i.kf, -2147483648, !dbg !231596 ; 2 uses
  %i.kh = and i32 %i.kf, 2139095040, !dbg !231597 ; 6 uses
  %i.ki = and i32 %i.kf, 8388607, !dbg !231598    ; 4 uses
  %i.kj = icmp eq i32 %i.kh, 2139095040, !dbg !231599
  br i1 %i.kj, label %bb.br, label %bb.bs, !dbg !231599

bb.br:                                            ; preds = %bb.bq
  %i.kk = icmp eq i32 %i.ki, 0, !dbg !231600
  %..i.i.i42 = select i1 %i.kk, i32 0, i32 512, !dbg !231601
  %i.kl = lshr exact i32 %i.kg, 16, !dbg !231602
  %i.km = lshr i32 %i.ki, 13, !dbg !231603
  %i.kn = or disjoint i32 %i.km, %i.kl, !dbg !231602
  %i.ko = or i32 %i.kn, %..i.i.i42, !dbg !231604
  %i.kp = trunc nuw i32 %i.ko to i16, !dbg !231604
  %i.kq = or disjoint i16 %i.kp, 31744, !dbg !231604
  br label %_RNvXsC_NtCs2mZqlW55729_12polars_utils7float16NtB5_4pf16NtNtNtCscgRAwXFJnXP_4core3ops5arith3Mul3mul.exit, !dbg !231605

bb.bs:                                            ; preds = %bb.bq
  %i.kr = lshr exact i32 %i.kg, 16, !dbg !231606  ; 4 uses
  %i.ks = lshr exact i32 %i.kh, 23, !dbg !231607  ; 2 uses
  %i.kt = icmp samesign ugt i32 %i.kh, 1191182336, !dbg !231608
  br i1 %i.kt, label %bb.bu, label %bb.bt, !dbg !231608

bb.bt:                                            ; preds = %bb.bs
  %i.ku = icmp samesign ult i32 %i.kh, 947912704, !dbg !231609
  br i1 %i.ku, label %bb.bw, label %bb.bv, !dbg !231609

bb.bu:                                            ; preds = %bb.bs
  %i.kv = trunc nuw i32 %i.kr to i16, !dbg !231610
  %i.kw = or disjoint i16 %i.kv, 31744, !dbg !231610
  br label %_RNvXsC_NtCs2mZqlW55729_12polars_utils7float16NtB5_4pf16NtNtNtCscgRAwXFJnXP_4core3ops5arith3Mul3mul.exit, !dbg !231611

bb.bv:                                            ; preds = %bb.bt
  %i.kx = lshr exact i32 %i.kh, 13, !dbg !231612
  %i.ky = add nuw nsw i32 %i.kx, 16384, !dbg !231612
  %i.kz = lshr i32 %i.ki, 13, !dbg !231613
  %i.la = and i32 %i.kf, 4096, !dbg !231614
  %i.lb = icmp ne i32 %i.la, 0, !dbg !231614
  %i.lc = and i32 %i.kf, 12287
  %i.ld = icmp ne i32 %i.lc, 0
  %or.cond.not.i.i.i38 = and i1 %i.lb, %i.ld, !dbg !231615
  %i.le = or disjoint i32 %i.ky, %i.kz, !dbg !231615
  %i.lf = or i32 %i.le, %i.kr, !dbg !231615
  %i.lg = trunc i32 %i.lf to i16, !dbg !231615
  %i.lh = zext i1 %or.cond.not.i.i.i38 to i16, !dbg !231614
  %spec.select7.i.i.i39 = add i16 %i.lg, %i.lh, !dbg !231614
  br label %_RNvXsC_NtCs2mZqlW55729_12polars_utils7float16NtB5_4pf16NtNtNtCscgRAwXFJnXP_4core3ops5arith3Mul3mul.exit, !dbg !231614

bb.bw:                                            ; preds = %bb.bt
  %i.li = icmp samesign ult i32 %i.kh, 855638016, !dbg !231616
  br i1 %i.li, label %bb.by, label %bb.bx, !dbg !231616

bb.bx:                                            ; preds = %bb.bw
  %i.lj = sub nsw i32 126, %i.ks, !dbg !231616
  %i.lk = or disjoint i32 %i.ki, 8388608, !dbg !231617 ; 3 uses
  %i.ll = lshr i32 %i.lk, %i.lj, !dbg !231618     ; 2 uses
  %i.lm = sub nsw i32 29, %i.ks, !dbg !231619
  %i.ln = and i32 %i.lm, 31, !dbg !231620         ; 2 uses
  %i.lo = shl nuw i32 1, %i.ln, !dbg !231620
  %i.lp = and i32 %i.lo, %i.lk, !dbg !231621
  %i.lq = icmp eq i32 %i.lp, 0, !dbg !231621
  br i1 %i.lq, label %bb.ca, label %bb.bz, !dbg !231621

bb.by:                                            ; preds = %bb.bw
  %i.lr = trunc nuw i32 %i.kr to i16, !dbg !231622
  br label %_RNvXsC_NtCs2mZqlW55729_12polars_utils7float16NtB5_4pf16NtNtNtCscgRAwXFJnXP_4core3ops5arith3Mul3mul.exit, !dbg !231611

bb.bz:                                            ; preds = %bb.bx
  %i.ls = shl i32 3, %i.ln, !dbg !231623
  %i.lt = add nuw i32 %i.ls, 16777215, !dbg !231624
  %i.lu = and i32 %i.lt, %i.lk, !dbg !231625
  %i.lv = icmp ne i32 %i.lu, 0, !dbg !231625
  %i.lw = zext i1 %i.lv to i32, !dbg !231625
  %spec.select.i.i.i40 = add nuw nsw i32 %i.ll, %i.lw, !dbg !231625
  br label %bb.ca, !dbg !231625

bb.ca:                                            ; preds = %bb.bz, %bb.bx
  %.sroa.03.0.i.i.i41 = phi i32 [ %i.ll, %bb.bx ], [ %spec.select.i.i.i40, %bb.bz ], !dbg !231626
  %i.lx = or i32 %.sroa.03.0.i.i.i41, %i.kr, !dbg !231627
  %i.ly = trunc nuw i32 %i.lx to i16, !dbg !231627
  br label %_RNvXsC_NtCs2mZqlW55729_12polars_utils7float16NtB5_4pf16NtNtNtCscgRAwXFJnXP_4core3ops5arith3Mul3mul.exit, !dbg !231611

bb.cb:                                            ; preds = %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit10.i.i35, %.split13.i.i43
  %i.lz = tail call fastcc noundef i16 @_RNvNtNtNtCshdiYQzaKNQ1_4half8binary164arch3x8619f32_to_f16_x86_f16c(float noundef %i.jz), !dbg !231628
  br label %_RNvXsC_NtCs2mZqlW55729_12polars_utils7float16NtB5_4pf16NtNtNtCscgRAwXFJnXP_4core3ops5arith3Mul3mul.exit, !dbg !231628

_RNvXsC_NtCs2mZqlW55729_12polars_utils7float16NtB5_4pf16NtNtNtCscgRAwXFJnXP_4core3ops5arith3Mul3mul.exit: ; preds = %bb.br, %bb.bu, %bb.bv, %bb.by, %bb.ca, %bb.cb
  %.sroa.0.0.i.i37 = phi i16 [ %i.lz, %bb.cb ], [ %i.kq, %bb.br ], [ %i.kw, %bb.bu ], [ %i.lr, %bb.by ], [ %i.ly, %bb.ca ], [ %spec.select7.i.i.i39, %bb.bv ], !dbg !231629
  %i.ma = tail call fastcc noundef i16 @_RNvXsA_NtCs2mZqlW55729_12polars_utils7float16NtB5_4pf16NtNtNtCscgRAwXFJnXP_4core3ops5arith3Add3add(i16 noundef %.sroa.0.0.i.i37, i16 noundef %i.bv) #47, !dbg !231630
  br label %bb.cd, !dbg !231631

bb.cc:                                            ; preds = %bb.h
  %i.mb = tail call noundef i16 @_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling6windowINtB2_9SortedBufNtNtCs2mZqlW55729_12polars_utils7float164pf16E3getCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, i64 noundef %i.bb), !dbg !231632
  br label %bb.cd, !dbg !231631

bb.cd:                                            ; preds = %bb.g, %bb.b, %bb.a, %bb.k, %_RNvXsC_NtCs2mZqlW55729_12polars_utils7float16NtB5_4pf16NtNtNtCscgRAwXFJnXP_4core3ops5arith3Mul3mul.exit, %bb.cc, %bb.j
  %.sroa.7.0 = phi i16 [ %i.ma, %_RNvXsC_NtCs2mZqlW55729_12polars_utils7float16NtB5_4pf16NtNtNtCscgRAwXFJnXP_4core3ops5arith3Mul3mul.exit ], [ %i.bm, %bb.j ], [ undef, %bb.b ], [ %i.br, %bb.k ], [ %i.mb, %bb.cc ], [ undef, %bb.a ], [ %i.av, %bb.g ]
  %.sroa.0.0 = phi i16 [ 1, %_RNvXsC_NtCs2mZqlW55729_12polars_utils7float16NtB5_4pf16NtNtNtCscgRAwXFJnXP_4core3ops5arith3Mul3mul.exit ], [ 1, %bb.j ], [ 0, %bb.b ], [ 1, %bb.k ], [ 1, %bb.cc ], [ 0, %bb.a ], [ 1, %bb.g ], !dbg !231340
  %i.mc = insertvalue { i16, i16 } poison, i16 %.sroa.0.0, 0, !dbg !231385
  %i.md = insertvalue { i16, i16 } %i.mc, i16 %.sroa.7.0, 1, !dbg !231385
  ret { i16, i16 } %i.md, !dbg !231385
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantileINtB2_14QuantileWindowdEINtB4_23RollingAggWindowNoNullsdE6updateCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 dereferenceable(96) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 !dbg !231633 !guid !231634 {
bb.a:
  tail call void @_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling6windowINtB2_9SortedBufdE6updateCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i64 noundef %2), !dbg !231635
  ret void, !dbg !231636
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, double } @_RNvXNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantileINtB2_14QuantileWindowdEINtB4_23RollingAggWindowNoNullsdE7get_aggCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !231637 !guid !231684 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36, !dbg !231723
  %i.b = load i32, ptr %i.a, align 4, !dbg !231723, !noundef !3468 ; 2 uses
  %i.c = icmp eq i32 %i.b, -1, !dbg !231724
  br i1 %i.c, label %bb.n, label %bb.b, !dbg !231724

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !231725
  %i.e = load ptr, ptr %i.d, align 8, !dbg !231725, !nonnull !3468, !noundef !3468
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !231726
  %i.g = load i64, ptr %i.f, align 8, !dbg !231726, !noundef !3468
  %i.h = zext i32 %i.b to i64, !dbg !231727       ; 2 uses
  %i.i = icmp ugt i64 %i.g, %i.h, !dbg !231728
  tail call void @llvm.assume(i1 %i.i), !dbg !231729
  %i.j = getelementptr inbounds nuw [48 x i8], ptr %i.e, i64 %i.h, !dbg !231730
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 36, !dbg !231731
  %i.l = load i32, ptr %i.k, align 4, !dbg !231731, !noundef !3468 ; 3 uses
  %i.m = zext i32 %i.l to i64, !dbg !231731       ; 3 uses
  %i.n = icmp eq i32 %i.l, 0, !dbg !231732
  br i1 %i.n, label %bb.n, label %bb.c, !dbg !231732

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !231733
  %i.p = load i8, ptr %i.o, align 8, !dbg !231733, !range !3976, !noundef !3468
  %i.q = uitofp i32 %i.l to double, !dbg !231734  ; 6 uses
  switch i8 %i.p, label %default.unreachable31 [
    i8 0, label %bb.d
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.h
    i8 5, label %bb.i
  ], !dbg !231735

default.unreachable31:                            ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.r = fadd nnan double %i.q, -1.000000e+00, !dbg !231736
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !231737
  %i.t = load double, ptr %i.s, align 8, !dbg !231737, !noundef !3468
  %i.u = fmul double %i.r, %i.t, !dbg !231738
  %i.v = tail call double @llvm.round.f64(double %i.u), !dbg !231739
  %i.w = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.v), !dbg !231738
  %i.x = add nsw i64 %i.m, -1, !dbg !231740
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.x, i64 %i.w), !dbg !231741
  br label %bb.j, !dbg !231742

bb.e:                                             ; preds = %bb.c
  %i.y = fadd nnan double %i.q, -1.000000e+00, !dbg !231743
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !231744
  %i.aa = load double, ptr %i.z, align 8, !dbg !231744, !noundef !3468
  %i.ab = fmul double %i.y, %i.aa, !dbg !231745
  %i.ac = tail call double @llvm.floor.f64(double %i.ab), !dbg !231746
  %i.ad = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.ac), !dbg !231745
  br label %bb.j, !dbg !231747

bb.f:                                             ; preds = %bb.c
  %i.ae = fadd nnan double %i.q, -1.000000e+00, !dbg !231748
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !231749
  %i.ag = load double, ptr %i.af, align 8, !dbg !231749, !noundef !3468
  %i.ah = fmul double %i.ae, %i.ag, !dbg !231750
  %i.ai = tail call double @llvm.ceil.f64(double %i.ah), !dbg !231751
  %i.aj = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.ai), !dbg !231750
  %i.ak = add nsw i64 %i.m, -1, !dbg !231752
  %.sroa.0.0.i27 = tail call noundef i64 @llvm.umin.i64(i64 %i.ak, i64 %i.aj), !dbg !231753
  br label %bb.j, !dbg !231754

bb.g:                                             ; preds = %bb.c
  %i.al = fadd nnan double %i.q, -1.000000e+00, !dbg !231755
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !231756
  %i.an = load double, ptr %i.am, align 8, !dbg !231756, !noundef !3468
  %i.ao = fmul double %i.al, %i.an, !dbg !231757  ; 2 uses
  %i.ap = tail call double @llvm.floor.f64(double %i.ao), !dbg !231758
  %i.aq = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.ap), !dbg !231757
  %i.ar = add nsw i64 %i.m, -1, !dbg !231759
  %.sroa.0.0.i28 = tail call noundef i64 @llvm.umin.i64(i64 %i.ar, i64 %i.aq), !dbg !231760 ; 3 uses
  %i.as = tail call double @llvm.ceil.f64(double %i.ao), !dbg !231761
  %i.at = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.as), !dbg !231762
  %i.au = icmp eq i64 %i.at, %.sroa.0.0.i28, !dbg !231763
  %i.av = tail call noundef double @_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling6windowINtB2_9SortedBufdE3getCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, i64 noundef %.sroa.0.0.i28), !dbg !231764 ; 2 uses
  br i1 %i.au, label %bb.n, label %bb.k, !dbg !231763

bb.h:                                             ; preds = %bb.c
  %i.aw = fadd nnan double %i.q, -1.000000e+00, !dbg !231765
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !231766
  %i.ay = load double, ptr %i.ax, align 8, !dbg !231766, !noundef !3468
  %i.az = fmul double %i.aw, %i.ay, !dbg !231767  ; 3 uses
  %i.ba = tail call double @llvm.floor.f64(double %i.az), !dbg !231768
  %i.bb = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.ba), !dbg !231767 ; 5 uses
  %i.bc = tail call double @llvm.ceil.f64(double %i.az), !dbg !231769
  %i.bd = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.bc), !dbg !231770
  %i.be = icmp eq i64 %i.bb, %i.bd, !dbg !231771
  br i1 %i.be, label %bb.m, label %bb.l, !dbg !231771

bb.i:                                             ; preds = %bb.c
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !231772
  %i.bg = load double, ptr %i.bf, align 8, !dbg !231772, !noundef !3468
  %i.bh = fmul double %i.bg, %i.q, !dbg !231773
  %i.bi = tail call double @llvm.ceil.f64(double %i.bh), !dbg !231774
  %i.bj = fadd double %i.bi, -1.000000e+00, !dbg !231775
  %i.bk = tail call nsz double @llvm.maximumnum.f64(double %i.bj, double 0.000000e+00), !dbg !231776
  %i.bl = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.bk), !dbg !231775
  br label %bb.j, !dbg !231777

bb.j:                                             ; preds = %bb.i, %bb.f, %bb.e, %bb.d
  %.sroa.011.0 = phi i64 [ %.sroa.0.0.i, %bb.d ], [ %i.ad, %bb.e ], [ %.sroa.0.0.i27, %bb.f ], [ %i.bl, %bb.i ], !dbg !231734
  %i.bm = tail call noundef double @_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling6windowINtB2_9SortedBufdE3getCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, i64 noundef %.sroa.011.0), !dbg !231778
  br label %bb.n, !dbg !231779

bb.k:                                             ; preds = %bb.g
  %i.bn = add nuw nsw i64 %.sroa.0.0.i28, 1, !dbg !231780
  %i.bo = tail call noundef double @_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling6windowINtB2_9SortedBufdE3getCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, i64 noundef %i.bn), !dbg !231781
  %i.bp = fadd double %i.av, %i.bo, !dbg !231782
  %i.bq = fmul double %i.bp, 5.000000e-01, !dbg !231783
  br label %bb.n, !dbg !231784

bb.l:                                             ; preds = %bb.h
  %i.br = uitofp i64 %i.bb to double, !dbg !231785
  %i.bs = fsub double %i.az, %i.br, !dbg !231786
  %i.bt = tail call noundef double @_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling6windowINtB2_9SortedBufdE3getCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, i64 noundef %i.bb), !dbg !231787 ; 2 uses
  %i.bu = add i64 %i.bb, 1, !dbg !231788
  %i.bv = tail call noundef double @_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling6windowINtB2_9SortedBufdE3getCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, i64 noundef %i.bu), !dbg !231789
  %i.bw = fsub double %i.bv, %i.bt, !dbg !231790
  %i.bx = fmul double %i.bs, %i.bw, !dbg !231791
  %i.by = fadd double %i.bt, %i.bx, !dbg !231792
  br label %bb.n, !dbg !231793

bb.m:                                             ; preds = %bb.h
  %i.bz = tail call noundef double @_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling6windowINtB2_9SortedBufdE3getCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, i64 noundef %i.bb), !dbg !231794
  br label %bb.n, !dbg !231793

bb.n:                                             ; preds = %bb.g, %bb.b, %bb.a, %bb.k, %bb.l, %bb.m, %bb.j
  %.sroa.7.0 = phi double [ %i.by, %bb.l ], [ %i.bm, %bb.j ], [ undef, %bb.b ], [ %i.bq, %bb.k ], [ %i.bz, %bb.m ], [ undef, %bb.a ], [ %i.av, %bb.g ]
  %.sroa.0.0 = phi i64 [ 1, %bb.l ], [ 1, %bb.j ], [ 0, %bb.b ], [ 1, %bb.k ], [ 1, %bb.m ], [ 0, %bb.a ], [ 1, %bb.g ], !dbg !231734
  %i.ca = insertvalue { i64, double } poison, i64 %.sroa.0.0, 0, !dbg !231779
  %i.cb = insertvalue { i64, double } %i.ca, double %.sroa.7.0, 1, !dbg !231779
  ret { i64, double } %i.cb, !dbg !231779
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantileINtB2_14QuantileWindowfEINtB4_23RollingAggWindowNoNullsfE6updateCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 dereferenceable(96) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 !dbg !231795 !guid !231796 {
bb.a:
  tail call void @_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling6windowINtB2_9SortedBuffE6updateCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i64 noundef %2), !dbg !231797
  ret void, !dbg !231798
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, float } @_RNvXNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantileINtB2_14QuantileWindowfEINtB4_23RollingAggWindowNoNullsfE7get_aggCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !231799 !guid !231851 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36, !dbg !231893
  %i.b = load i32, ptr %i.a, align 4, !dbg !231893, !noundef !3468 ; 2 uses
  %i.c = icmp eq i32 %i.b, -1, !dbg !231894
  br i1 %i.c, label %bb.n, label %bb.b, !dbg !231894

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !231895
  %i.e = load ptr, ptr %i.d, align 8, !dbg !231895, !nonnull !3468, !noundef !3468
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !231896
  %i.g = load i64, ptr %i.f, align 8, !dbg !231896, !noundef !3468
  %i.h = zext i32 %i.b to i64, !dbg !231897       ; 2 uses
  %i.i = icmp ugt i64 %i.g, %i.h, !dbg !231898
  tail call void @llvm.assume(i1 %i.i), !dbg !231899
  %i.j = getelementptr inbounds nuw [48 x i8], ptr %i.e, i64 %i.h, !dbg !231900
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 36, !dbg !231901
  %i.l = load i32, ptr %i.k, align 4, !dbg !231901, !noundef !3468 ; 3 uses
  %i.m = zext i32 %i.l to i64, !dbg !231901       ; 3 uses
  %i.n = icmp eq i32 %i.l, 0, !dbg !231902
  br i1 %i.n, label %bb.n, label %bb.c, !dbg !231902

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !231903
  %i.p = load i8, ptr %i.o, align 8, !dbg !231903, !range !3976, !noundef !3468
  %i.q = uitofp i32 %i.l to double, !dbg !231904  ; 6 uses
  switch i8 %i.p, label %default.unreachable31 [
    i8 0, label %bb.d
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.h
    i8 5, label %bb.i
  ], !dbg !231905

default.unreachable31:                            ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.r = fadd nnan double %i.q, -1.000000e+00, !dbg !231906
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !231907
  %i.t = load double, ptr %i.s, align 8, !dbg !231907, !noundef !3468
  %i.u = fmul double %i.r, %i.t, !dbg !231908
  %i.v = tail call double @llvm.round.f64(double %i.u), !dbg !231909
  %i.w = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.v), !dbg !231908
  %i.x = add nsw i64 %i.m, -1, !dbg !231910
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.x, i64 %i.w), !dbg !231911
  br label %bb.j, !dbg !231912

bb.e:                                             ; preds = %bb.c
  %i.y = fadd nnan double %i.q, -1.000000e+00, !dbg !231913
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !231914
  %i.aa = load double, ptr %i.z, align 8, !dbg !231914, !noundef !3468
  %i.ab = fmul double %i.y, %i.aa, !dbg !231915
  %i.ac = tail call double @llvm.floor.f64(double %i.ab), !dbg !231916
  %i.ad = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.ac), !dbg !231915
  br label %bb.j, !dbg !231917

bb.f:                                             ; preds = %bb.c
  %i.ae = fadd nnan double %i.q, -1.000000e+00, !dbg !231918
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !231919
  %i.ag = load double, ptr %i.af, align 8, !dbg !231919, !noundef !3468
  %i.ah = fmul double %i.ae, %i.ag, !dbg !231920
  %i.ai = tail call double @llvm.ceil.f64(double %i.ah), !dbg !231921
  %i.aj = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.ai), !dbg !231920
  %i.ak = add nsw i64 %i.m, -1, !dbg !231922
  %.sroa.0.0.i27 = tail call noundef i64 @llvm.umin.i64(i64 %i.ak, i64 %i.aj), !dbg !231923
  br label %bb.j, !dbg !231924

bb.g:                                             ; preds = %bb.c
  %i.al = fadd nnan double %i.q, -1.000000e+00, !dbg !231925
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !231926
  %i.an = load double, ptr %i.am, align 8, !dbg !231926, !noundef !3468
  %i.ao = fmul double %i.al, %i.an, !dbg !231927  ; 2 uses
  %i.ap = tail call double @llvm.floor.f64(double %i.ao), !dbg !231928
  %i.aq = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.ap), !dbg !231927
  %i.ar = add nsw i64 %i.m, -1, !dbg !231929
  %.sroa.0.0.i28 = tail call noundef i64 @llvm.umin.i64(i64 %i.ar, i64 %i.aq), !dbg !231930 ; 3 uses
  %i.as = tail call double @llvm.ceil.f64(double %i.ao), !dbg !231931
  %i.at = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.as), !dbg !231932
  %i.au = icmp eq i64 %i.at, %.sroa.0.0.i28, !dbg !231933
  %i.av = tail call noundef float @_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling6windowINtB2_9SortedBuffE3getCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, i64 noundef %.sroa.0.0.i28), !dbg !231934 ; 2 uses
  br i1 %i.au, label %bb.n, label %bb.k, !dbg !231933

bb.h:                                             ; preds = %bb.c
  %i.aw = fadd nnan double %i.q, -1.000000e+00, !dbg !231935
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !231936
  %i.ay = load double, ptr %i.ax, align 8, !dbg !231936, !noundef !3468
  %i.az = fmul double %i.aw, %i.ay, !dbg !231937  ; 3 uses
  %i.ba = tail call double @llvm.floor.f64(double %i.az), !dbg !231938
  %i.bb = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.ba), !dbg !231937 ; 5 uses
  %i.bc = tail call double @llvm.ceil.f64(double %i.az), !dbg !231939
  %i.bd = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.bc), !dbg !231940
  %i.be = icmp eq i64 %i.bb, %i.bd, !dbg !231941
  br i1 %i.be, label %bb.m, label %bb.l, !dbg !231941

bb.i:                                             ; preds = %bb.c
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !231942
  %i.bg = load double, ptr %i.bf, align 8, !dbg !231942, !noundef !3468
  %i.bh = fmul double %i.bg, %i.q, !dbg !231943
  %i.bi = tail call double @llvm.ceil.f64(double %i.bh), !dbg !231944
  %i.bj = fadd double %i.bi, -1.000000e+00, !dbg !231945
  %i.bk = tail call nsz double @llvm.maximumnum.f64(double %i.bj, double 0.000000e+00), !dbg !231946
  %i.bl = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.bk), !dbg !231945
  br label %bb.j, !dbg !231947

bb.j:                                             ; preds = %bb.i, %bb.f, %bb.e, %bb.d
  %.sroa.011.0 = phi i64 [ %.sroa.0.0.i, %bb.d ], [ %i.ad, %bb.e ], [ %.sroa.0.0.i27, %bb.f ], [ %i.bl, %bb.i ], !dbg !231904
  %i.bm = tail call noundef float @_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling6windowINtB2_9SortedBuffE3getCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, i64 noundef %.sroa.011.0), !dbg !231948
  br label %bb.n, !dbg !231949

bb.k:                                             ; preds = %bb.g
  %i.bn = add nuw nsw i64 %.sroa.0.0.i28, 1, !dbg !231950
  %i.bo = tail call noundef float @_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling6windowINtB2_9SortedBuffE3getCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, i64 noundef %i.bn), !dbg !231951
  %i.bp = fadd float %i.av, %i.bo, !dbg !231952
  %i.bq = fmul float %i.bp, 5.000000e-01, !dbg !231953
  br label %bb.n, !dbg !231954

bb.l:                                             ; preds = %bb.h
  %i.br = uitofp i64 %i.bb to double, !dbg !231955
  %i.bs = fsub double %i.az, %i.br, !dbg !231956
  %i.bt = fptrunc double %i.bs to float, !dbg !231957
  %i.bu = tail call noundef float @_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling6windowINtB2_9SortedBuffE3getCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, i64 noundef %i.bb), !dbg !231958 ; 2 uses
  %i.bv = add i64 %i.bb, 1, !dbg !231959
  %i.bw = tail call noundef float @_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling6windowINtB2_9SortedBuffE3getCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, i64 noundef %i.bv), !dbg !231960
  %i.bx = fsub float %i.bw, %i.bu, !dbg !231961
  %i.by = fmul float %i.bx, %i.bt, !dbg !231962
  %i.bz = fadd float %i.bu, %i.by, !dbg !231963
  br label %bb.n, !dbg !231964

bb.m:                                             ; preds = %bb.h
  %i.ca = tail call noundef float @_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling6windowINtB2_9SortedBuffE3getCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, i64 noundef %i.bb), !dbg !231965
  br label %bb.n, !dbg !231964

bb.n:                                             ; preds = %bb.g, %bb.b, %bb.a, %bb.k, %bb.l, %bb.m, %bb.j
  %.sroa.7.0 = phi float [ %i.bz, %bb.l ], [ %i.bm, %bb.j ], [ undef, %bb.b ], [ %i.bq, %bb.k ], [ %i.ca, %bb.m ], [ undef, %bb.a ], [ %i.av, %bb.g ]
  %.sroa.0.0 = phi i32 [ 1, %bb.l ], [ 1, %bb.j ], [ 0, %bb.b ], [ 1, %bb.k ], [ 1, %bb.m ], [ 0, %bb.a ], [ 1, %bb.g ], !dbg !231904
  %i.cb = insertvalue { i32, float } poison, i32 %.sroa.0.0, 0, !dbg !231949
  %i.cc = insertvalue { i32, float } %i.cb, float %.sroa.7.0, 1, !dbg !231949
  ret { i32, float } %i.cc, !dbg !231949
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXNvNtCscgRAwXFJnXP_4core4hint20select_unpredictableINtB2_11DropOnPanicOAmj2_ENtNtNtB6_3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 !dbg !231966 !guid !231967 {
bb.a:
  ret void, !dbg !231968
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXNvNtCscgRAwXFJnXP_4core4hint20select_unpredictableINtB2_11DropOnPanicONtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtB6_3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 !dbg !231969 !guid !231970 {
bb.a:
  ret void, !dbg !231971
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXNvNtCscgRAwXFJnXP_4core4hint20select_unpredictableINtB2_11DropOnPanicONtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENtNtNtB6_3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 !dbg !231972 !guid !231973 {
bb.a:
  ret void, !dbg !231974
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXNvNtCscgRAwXFJnXP_4core4hint20select_unpredictableINtB2_11DropOnPanicORShENtNtNtB6_3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 !dbg !231975 !guid !231976 {
bb.a:
  ret void, !dbg !231977
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXNvNtCscgRAwXFJnXP_4core4hint20select_unpredictableINtB2_11DropOnPanicOTINtNtB6_6option6OptionhEIB1c_ReEEENtNtNtB6_3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 !dbg !231978 !guid !231979 {
bb.a:
  ret void, !dbg !231980
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXNvNtCscgRAwXFJnXP_4core4hint20select_unpredictableINtB2_11DropOnPanicOTINtNtB6_6option6OptionmEIB1c_ReEEENtNtNtB6_3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 !dbg !231981 !guid !231982 {
bb.a:
  ret void, !dbg !231983
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXNvNtCscgRAwXFJnXP_4core4hint20select_unpredictableINtB2_11DropOnPanicOTINtNtB6_6option6OptiontEIB1c_ReEEENtNtNtB6_3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 !dbg !231984 !guid !231985 {
bb.a:
  ret void, !dbg !231986
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXNvNtCscgRAwXFJnXP_4core4hint20select_unpredictableINtB2_11DropOnPanicOTmINtNtB6_6option6OptionNtNtCs2mZqlW55729_12polars_utils7float164pf16EEENtNtNtB6_3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 !dbg !231987 !guid !231988 {
bb.a:
  ret void, !dbg !231989
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXNvNtCscgRAwXFJnXP_4core4hint20select_unpredictableINtB2_11DropOnPanicOTmINtNtB6_6option6OptionRShEEENtNtNtB6_3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 !dbg !231990 !guid !231991 {
bb.a:
  ret void, !dbg !231992
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXNvNtCscgRAwXFJnXP_4core4hint20select_unpredictableINtB2_11DropOnPanicOTmINtNtB6_6option6OptionaEEENtNtNtB6_3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 !dbg !231993 !guid !231994 {
bb.a:
  ret void, !dbg !231995
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXNvNtCscgRAwXFJnXP_4core4hint20select_unpredictableINtB2_11DropOnPanicOTmINtNtB6_6option6OptiondEEENtNtNtB6_3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 !dbg !231996 !guid !231997 {
bb.a:
  ret void, !dbg !231998
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXNvNtCscgRAwXFJnXP_4core4hint20select_unpredictableINtB2_11DropOnPanicOTmINtNtB6_6option6OptionfEEENtNtNtB6_3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 !dbg !231999 !guid !232000 {
bb.a:
  ret void, !dbg !232001
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXNvNtCscgRAwXFJnXP_4core4hint20select_unpredictableINtB2_11DropOnPanicOTmINtNtB6_6option6OptionhEEENtNtNtB6_3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 !dbg !232002 !guid !232003 {
bb.a:
  ret void, !dbg !232004
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXNvNtCscgRAwXFJnXP_4core4hint20select_unpredictableINtB2_11DropOnPanicOTmINtNtB6_6option6OptionlEEENtNtNtB6_3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 !dbg !232005 !guid !232006 {
bb.a:
  ret void, !dbg !232007
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXNvNtCscgRAwXFJnXP_4core4hint20select_unpredictableINtB2_11DropOnPanicOTmINtNtB6_6option6OptionmEEENtNtNtB6_3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 !dbg !232008 !guid !232009 {
bb.a:
  ret void, !dbg !232010
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXNvNtCscgRAwXFJnXP_4core4hint20select_unpredictableINtB2_11DropOnPanicOTmINtNtB6_6option6OptionnEEENtNtNtB6_3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 !dbg !232011 !guid !232012 {
bb.a:
  ret void, !dbg !232013
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXNvNtCscgRAwXFJnXP_4core4hint20select_unpredictableINtB2_11DropOnPanicOTmINtNtB6_6option6OptionoEEENtNtNtB6_3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 !dbg !232014 !guid !232015 {
bb.a:
  ret void, !dbg !232016
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXNvNtCscgRAwXFJnXP_4core4hint20select_unpredictableINtB2_11DropOnPanicOTmINtNtB6_6option6OptionsEEENtNtNtB6_3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 !dbg !232017 !guid !232018 {
bb.a:
  ret void, !dbg !232019
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXNvNtCscgRAwXFJnXP_4core4hint20select_unpredictableINtB2_11DropOnPanicOTmINtNtB6_6option6OptiontEEENtNtNtB6_3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 !dbg !232020 !guid !232021 {
bb.a:
  ret void, !dbg !232022
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXNvNtCscgRAwXFJnXP_4core4hint20select_unpredictableINtB2_11DropOnPanicOTmINtNtB6_6option6OptionxEEENtNtNtB6_3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 !dbg !232023 !guid !232024 {
bb.a:
  ret void, !dbg !232025
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXNvNtCscgRAwXFJnXP_4core4hint20select_unpredictableINtB2_11DropOnPanicOTmINtNtB6_6option6OptionyEEENtNtNtB6_3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 !dbg !232026 !guid !232027 {
bb.a:
  ret void, !dbg !232028
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXNvNtCscgRAwXFJnXP_4core4hint20select_unpredictableINtB2_11DropOnPanicOTmINtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13compare_inner7NonNullNtNtCs2mZqlW55729_12polars_utils7float164pf16EEENtNtNtB6_3ops4drop4Drop4dropB1l_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 !dbg !232029 !guid !232030 {
bb.a:
  ret void, !dbg !232031
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXNvNtCscgRAwXFJnXP_4core4hint20select_unpredictableINtB2_11DropOnPanicOTmINtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13compare_inner7NonNullaEEENtNtNtB6_3ops4drop4Drop4dropB1l_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 !dbg !232032 !guid !232033 {
bb.a:
  ret void, !dbg !232034
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXNvNtCscgRAwXFJnXP_4core4hint20select_unpredictableINtB2_11DropOnPanicOTmINtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops13compare_inner7NonNulldEEENtNtNtB6_3ops4drop4Drop4dropB1l_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 !dbg !232035 !guid !232036 {
bb.a:
  ret void, !dbg !232037
}

end_hunk_6
