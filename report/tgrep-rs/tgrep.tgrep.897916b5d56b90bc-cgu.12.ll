Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep.tgrep.897916b5d56b90bc-cgu.12?download=true
inline.NumInlined: 822
inline.NumDeleted: 442
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_RNvXs6_NtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerNtB5_14CollectReducerINtNtB9_8plumbing7ReducerINtB5_13CollectResultNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEE6reduceB20_:bb.a
  store i64 %i.v, ptr %i.t, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.413.0.copyload = load i64, ptr %.sroa.413.0..sroa_idx, align 8
  %i.w = add i64 %.sroa.413.0.copyload, %i.c
  store i64 %i.w, ptr %i.b, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEEB1J_.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEEB1J_.exit: ; preds = %bb.c, %bb.b, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEEB1J_.exit12
  ret void

.body:                                            ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.n
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs6_NtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerNtB5_14CollectReducerINtNtB9_8plumbing7ReducerINtB5_13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTINtNtB21_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB3x_11FileVersionEEE6reduceCsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !noundef !9
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !9 ; 2 uses
  %i.d = getelementptr inbounds nuw [144 x i8], ptr %i.a, i64 %i.c
  %i.e = load ptr, ptr %2, align 8, !noundef !9   ; 3 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB4_6option6OptionTINtNtB1K_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB30_11FileVersionEEECsbNLsQi0JuJ4_5tgrep.exit12, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val7 = load i64, ptr %i.g, align 8, !alias.scope !22, !noundef !9 ; 4 uses
  %i.h = icmp eq i64 %.val7, 0
  br i1 %i.h, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB4_6option6OptionTINtNtB1K_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB30_11FileVersionEEECsbNLsQi0JuJ4_5tgrep.exit, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.i = icmp eq i64 %i.k, %.val7
  br i1 %i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB4_6option6OptionTINtNtB1K_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB30_11FileVersionEEECsbNLsQi0JuJ4_5tgrep.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.0.0.i.i.i16 = phi i64 [ %i.k, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw [144 x i8], ptr %i.e, i64 %.sroa.0.0.i.i.i16
  %i.k = add nuw nsw i64 %.sroa.0.0.i.i.i16, 1    ; 4 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB4_6option6OptionTINtNtBG_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB1V_11FileVersionEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(144) %i.j)
          to label %bb.c unwind label %bb.e, !noalias !3045

bb.d:                                             ; preds = %.lr.ph18
  %i.l = add i64 %.sroa.0.1.i.i.i17, 1            ; 2 uses
  %i.m = icmp eq i64 %i.l, %.val7
  br i1 %i.m, label %.body, label %.lr.ph18

bb.e:                                             ; preds = %.lr.ph
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = icmp eq i64 %i.k, %.val7
  br i1 %i.o, label %.body, label %.lr.ph18

.lr.ph18:                                         ; preds = %bb.e, %bb.d
  %.sroa.0.1.i.i.i17 = phi i64 [ %i.l, %bb.d ], [ %i.k, %bb.e ] ; 2 uses
  %i.p = getelementptr inbounds nuw [144 x i8], ptr %i.e, i64 %.sroa.0.1.i.i.i17
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB4_6option6OptionTINtNtBG_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB1V_11FileVersionEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(144) %i.p) #28
          to label %bb.d unwind label %bb.f, !noalias !3045

bb.f:                                             ; preds = %.lr.ph18
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !noalias !3045
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB4_6option6OptionTINtNtB1K_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB30_11FileVersionEEECsbNLsQi0JuJ4_5tgrep.exit12: ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load i64, ptr %i.r, align 8, !noundef !9
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !noundef !9
  %i.v = add i64 %i.u, %i.s
  store i64 %i.v, ptr %i.t, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.413.0.copyload = load i64, ptr %.sroa.413.0..sroa_idx, align 8
  %i.w = add i64 %.sroa.413.0.copyload, %i.c
  store i64 %i.w, ptr %i.b, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB4_6option6OptionTINtNtB1K_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB30_11FileVersionEEECsbNLsQi0JuJ4_5tgrep.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB4_6option6OptionTINtNtB1K_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB30_11FileVersionEEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.c, %bb.b, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB4_6option6OptionTINtNtB1K_3vec3VecmENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB30_11FileVersionEEECsbNLsQi0JuJ4_5tgrep.exit12
  ret void

.body:                                            ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.n
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs7_NtCsjFxWRWgRcyr_5rayon5sliceINtB5_12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufENtNtNtB7_4iter8plumbing8Producer8split_atCsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %.not.i = icmp ugt i64 %3, %2
  br i1 %.not.i, label %bb.b, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs5Xr050g3D4S_3std4path7PathBuf8split_atCsbNLsQi0JuJ4_5tgrep.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @20, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #27, !noalias !3049
  unreachable

_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs5Xr050g3D4S_3std4path7PathBuf8split_atCsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.a
  %i.a = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %3
  %i.b = sub nuw nsw i64 %2, %3
  store ptr %1, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.b, ptr %i.e, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs7_NtCsjFxWRWgRcyr_5rayon5sliceINtB5_12IterProducerTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBW_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEENtNtNtB7_4iter8plumbing8Producer8split_atB1P_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %.not.i = icmp ugt i64 %3, %2
  br i1 %.not.i, label %bb.b, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBz_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEE8split_atB1s_.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @20, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #27, !noalias !3053
  unreachable

_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBz_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEE8split_atB1s_.exit: ; preds = %bb.a
  %i.a = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %3
  %i.b = sub nuw nsw i64 %2, %3
  store ptr %1, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.b, ptr %i.e, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvXs_NvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtCsbNLsQi0JuJ4_5tgrep16IndexStrategyArgENCNvXso_NtNtCs1L7Mk9ubPba_12clap_builder7builder12value_parserINtB35_15EnumValueParserB2i_ENtB35_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2k_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtCsbNLsQi0JuJ4_5tgrep16IndexStrategyArgENCNvXso_NtNtCs1L7Mk9ubPba_12clap_builder7builder12value_parserINtB2o_15EnumValueParserB1B_ENtB2o_16TypedValueParser15possible_values0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4q_10advance_byBV_NtB5K_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB57_EEB1D_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3062)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3063)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !3064, !nonnull !9, !noundef !9 ; 2 uses
  %.promoted.i.i = load ptr, ptr %0, align 8, !alias.scope !3064 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.f = icmp eq ptr %.promoted.i.i, %i.d
  br i1 %i.f, label %_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtCsbNLsQi0JuJ4_5tgrep16IndexStrategyArgENCNvXso_NtNtCs1L7Mk9ubPba_12clap_builder7builder12value_parserINtB2o_15EnumValueParserB1B_ENtB2o_16TypedValueParser15possible_values0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4q_10advance_byBV_NtB5K_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB57_EEB1D_.exit, label %.lr.ph

bb.c:                                             ; preds = %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map19filter_map_try_foldRNtCsbNLsQi0JuJ4_5tgrep16IndexStrategyArgNtNtNtCs1L7Mk9ubPba_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB34_ENCNvXso_NtB1X_12value_parserINtB49_15EnumValueParserB1f_ENtB49_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB41_ENtB5J_13SpecAdvanceBy15spec_advance_by0E0B1h_.exit.i.i
  %i.g = icmp eq ptr %i.i, %i.d
  br i1 %i.g, label %_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtCsbNLsQi0JuJ4_5tgrep16IndexStrategyArgENCNvXso_NtNtCs1L7Mk9ubPba_12clap_builder7builder12value_parserINtB2o_15EnumValueParserB1B_ENtB2o_16TypedValueParser15possible_values0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4q_10advance_byBV_NtB5K_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB57_EEB1D_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.01.0.i.i7 = phi i64 [ %.sroa.0.0.i8.i.i, %bb.c ], [ %1, %bb.b ] ; 3 uses
  %i.h = phi ptr [ %i.i, %bb.c ], [ %.promoted.i.i, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 3 uses
  store ptr %i.i, ptr %0, align 8, !alias.scope !3064
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3065
  call void @_RNvXsc_CsbNLsQi0JuJ4_5tgrepNtB5_16IndexStrategyArgNtNtCs1L7Mk9ubPba_12clap_builder6derive9ValueEnum17to_possible_value(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.h), !noalias !3066
  %i.j = load i64, ptr %i.b, align 8, !range !11, !noalias !3065, !noundef !9
  %.not.i.i.i = icmp eq i64 %i.j, -1
  br i1 %.not.i.i.i, label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map19filter_map_try_foldRNtCsbNLsQi0JuJ4_5tgrep16IndexStrategyArgNtNtNtCs1L7Mk9ubPba_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB34_ENCNvXso_NtB1X_12value_parserINtB49_15EnumValueParserB1f_ENtB49_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB41_ENtB5J_13SpecAdvanceBy15spec_advance_by0E0B1h_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3065
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false), !noalias !3065
  store i64 %.sroa.01.0.i.i7, ptr %i.a, align 8, !noalias !3065
  %i.k = add i64 %.sroa.01.0.i.i7, -1
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs1L7Mk9ubPba_12clap_builder7builder14possible_value13PossibleValueECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.e), !noalias !3066
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3065
  br label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map19filter_map_try_foldRNtCsbNLsQi0JuJ4_5tgrep16IndexStrategyArgNtNtNtCs1L7Mk9ubPba_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB34_ENCNvXso_NtB1X_12value_parserINtB49_15EnumValueParserB1f_ENtB49_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB41_ENtB5J_13SpecAdvanceBy15spec_advance_by0E0B1h_.exit.i.i

_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map19filter_map_try_foldRNtCsbNLsQi0JuJ4_5tgrep16IndexStrategyArgNtNtNtCs1L7Mk9ubPba_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB34_ENCNvXso_NtB1X_12value_parserINtB49_15EnumValueParserB1f_ENtB49_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB41_ENtB5J_13SpecAdvanceBy15spec_advance_by0E0B1h_.exit.i.i: ; preds = %bb.d, %.lr.ph
  %.sroa.0.0.i8.i.i = phi i64 [ %i.k, %bb.d ], [ %.sroa.01.0.i.i7, %.lr.ph ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3065
  %i.l = icmp eq i64 %.sroa.0.0.i8.i.i, 0
  br i1 %i.l, label %_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtCsbNLsQi0JuJ4_5tgrep16IndexStrategyArgENCNvXso_NtNtCs1L7Mk9ubPba_12clap_builder7builder12value_parserINtB2o_15EnumValueParserB1B_ENtB2o_16TypedValueParser15possible_values0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4q_10advance_byBV_NtB5K_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB57_EEB1D_.exit, label %bb.c

_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtCsbNLsQi0JuJ4_5tgrep16IndexStrategyArgENCNvXso_NtNtCs1L7Mk9ubPba_12clap_builder7builder12value_parserINtB2o_15EnumValueParserB1B_ENtB2o_16TypedValueParser15possible_values0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4q_10advance_byBV_NtB5K_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB57_EEB1D_.exit: ; preds = %bb.c, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map19filter_map_try_foldRNtCsbNLsQi0JuJ4_5tgrep16IndexStrategyArgNtNtNtCs1L7Mk9ubPba_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB34_ENCNvXso_NtB1X_12value_parserINtB49_15EnumValueParserB1f_ENtB49_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB41_ENtB5J_13SpecAdvanceBy15spec_advance_by0E0B1h_.exit.i.i, %bb.b, %bb.a
  %.sroa.0.1 = phi i64 [ 0, %bb.a ], [ %1, %bb.b ], [ 0, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map19filter_map_try_foldRNtCsbNLsQi0JuJ4_5tgrep16IndexStrategyArgNtNtNtCs1L7Mk9ubPba_12clap_builder7builder14possible_value13PossibleValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB34_ENCNvXso_NtB1X_12value_parserINtB49_15EnumValueParserB1f_ENtB49_16TypedValueParser15possible_values0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB41_ENtB5J_13SpecAdvanceBy15spec_advance_by0E0B1h_.exit.i.i ], [ %.sroa.0.0.i8.i.i, %bb.c ]
  ret i64 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvXs_NvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterNtNtCsbNLsQi0JuJ4_5tgrep5serve9WatchModeENCNvXso_NtNtCs1L7Mk9ubPba_12clap_builder7builder12value_parserINtB35_15EnumValueParserB2i_ENtB35_16TypedValueParser15possible_values0ENtB4_13SpecAdvanceBy15spec_advance_byB2m_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 10 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtCsbNLsQi0JuJ4_5tgrep5serve9WatchModeENCNvXso_NtNtCs1L7Mk9ubPba_12clap_builder7builder12value_parserINtB2o_15EnumValueParserB1B_ENtB2o_16TypedValueParser15possible_values0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4q_10advance_byBV_NtB5K_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB57_EEB1F_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3073)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3074)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !3075, !nonnull !9, !noundef !9
  %.promoted.i.i = load ptr, ptr %0, align 8, !alias.scope !3075
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.64.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.86.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.97.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.108.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs1L7Mk9ubPba_12clap_builder7builder14possible_value13PossibleValueECsbNLsQi0JuJ4_5tgrep.exit.i.i, %bb.b
  %i.e = phi ptr [ %.promoted.i.i, %bb.b ], [ %i.g, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs1L7Mk9ubPba_12clap_builder7builder14possible_value13PossibleValueECsbNLsQi0JuJ4_5tgrep.exit.i.i ] ; 3 uses
  %.sroa.01.0.i.i = phi i64 [ %1, %bb.b ], [ %6, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs1L7Mk9ubPba_12clap_builder7builder14possible_value13PossibleValueECsbNLsQi0JuJ4_5tgrep.exit.i.i ] ; 3 uses
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtCsbNLsQi0JuJ4_5tgrep5serve9WatchModeENCNvXso_NtNtCs1L7Mk9ubPba_12clap_builder7builder12value_parserINtB2o_15EnumValueParserB1B_ENtB2o_16TypedValueParser15possible_values0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4q_10advance_byBV_NtB5K_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB57_EEB1F_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !alias.scope !3075
  %.val.i.i = load i8, ptr %i.e, align 1, !range !16, !noalias !3076, !noundef !9
  %i.h = trunc nuw i8 %.val.i.i to i1
  %spec.select.i.i.i.i.i = select i1 %i.h, ptr @33, ptr @32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3076
  store i64 %.sroa.01.0.i.i, ptr %i.a, align 8, !noalias !3076
  store i64 0, ptr %i.d, align 8, !noalias !3076
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !3076
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8, !noalias !3076
  store i64 -1, ptr %.sroa.64.0..sroa_idx.i.i.i, align 8, !noalias !3076
  store ptr %spec.select.i.i.i.i.i, ptr %.sroa.86.0..sroa_idx.i.i.i, align 8, !noalias !3076
  store i64 4, ptr %.sroa.97.0..sroa_idx.i.i.i, align 8, !noalias !3076
  store i8 0, ptr %.sroa.108.0..sroa_idx.i.i.i, align 8, !noalias !3076
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs1L7Mk9ubPba_12clap_builder7builder3str3StrENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs1L7Mk9ubPba_12clap_builder7builder14possible_value13PossibleValueECsbNLsQi0JuJ4_5tgrep.exit.i.i unwind label %2, !noalias !3076

2:                                                ; preds = %bb.d
  %3 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1L7Mk9ubPba_12clap_builder7builder3str3StrENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d)
          to label %common.resume.i.i.i unwind label %4, !noalias !3076

4:                                                ; preds = %2
  %5 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29, !noalias !3076
  unreachable

common.resume.i.i.i:                              ; preds = %2
  resume { ptr, i32 } %3

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs1L7Mk9ubPba_12clap_builder7builder14possible_value13PossibleValueECsbNLsQi0JuJ4_5tgrep.exit.i.i: ; preds = %bb.d
  %6 = add i64 %.sroa.01.0.i.i, -1                ; 2 uses
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1L7Mk9ubPba_12clap_builder7builder3str3StrENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d), !noalias !3076
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3076
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtCsbNLsQi0JuJ4_5tgrep5serve9WatchModeENCNvXso_NtNtCs1L7Mk9ubPba_12clap_builder7builder12value_parserINtB2o_15EnumValueParserB1B_ENtB2o_16TypedValueParser15possible_values0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4q_10advance_byBV_NtB5K_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB57_EEB1F_.exit, label %bb.c

_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtCsbNLsQi0JuJ4_5tgrep5serve9WatchModeENCNvXso_NtNtCs1L7Mk9ubPba_12clap_builder7builder12value_parserINtB2o_15EnumValueParserB1B_ENtB2o_16TypedValueParser15possible_values0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4q_10advance_byBV_NtB5K_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB57_EEB1F_.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs1L7Mk9ubPba_12clap_builder7builder14possible_value13PossibleValueECsbNLsQi0JuJ4_5tgrep.exit.i.i, %bb.c, %bb.a
  %.sroa.0.1 = phi i64 [ 0, %bb.a ], [ 0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs1L7Mk9ubPba_12clap_builder7builder14possible_value13PossibleValueECsbNLsQi0JuJ4_5tgrep.exit.i.i ], [ %.sroa.01.0.i.i, %bb.c ]
  ret i64 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtNtCsjFxWRWgRcyr_5rayon4iter6extendNtB5_11ListReducerINtNtB7_8plumbing7ReducerINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1t_3vec3VecNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEEE6reduceB2K_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !9 ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !noundef !9   ; 3 uses
  store ptr null, ptr %2, align 8
  %.not3 = icmp eq ptr %i.c, null
  br i1 %.not3, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %i.b to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3085)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3086)
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %1, align 8, !alias.scope !3085
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load <2 x i64>, ptr %2, align 8
  store i64 %.sroa.0.0.copyload.i.i.i.i.i, ptr %2, align 8, !alias.scope !3086
  store <2 x i64> %i.f, ptr %1, align 8
  store i64 %i.d, ptr %i.e, align 8, !alias.scope !3087
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3088)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3089)
  %.sroa.0.0.copyload.i.i.i.2.i.i = load i64, ptr %i.g, align 8, !alias.scope !3088
  %.sroa.02.0.copyload.i.i.i.2.i.i = load i64, ptr %i.h, align 8, !alias.scope !3089
  store i64 %.sroa.02.0.copyload.i.i.i.2.i.i, ptr %i.g, align 8, !alias.scope !3088
  store i64 %.sroa.0.0.copyload.i.i.i.2.i.i, ptr %i.h, align 8, !alias.scope !3089
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.e, %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  tail call void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecNtNtCsbNLsQi0JuJ4_5tgrep5serve16FileSearchResultEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  ret void

bb.e:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.c, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.b, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !noundef !9
  store ptr null, ptr %i.k, align 8
  store ptr %i.l, ptr %i.a, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !noundef !9
  store i64 0, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !noundef !9
  %i.q = add i64 %i.p, %i.n
  store i64 %i.q, ptr %i.o, align 8
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtNtCsjFxWRWgRcyr_5rayon4iter6extendNtB5_11ListReducerINtNtB7_8plumbing7ReducerINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1t_3vec3VecTNtNtB1t_6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTIB2q_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB3P_11FileVersionEEEE6reduceCsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !9 ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !noundef !9   ; 3 uses
  store ptr null, ptr %2, align 8
  %.not3 = icmp eq ptr %i.c, null
  br i1 %.not3, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %i.b to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3098)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3099)
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %1, align 8, !alias.scope !3098
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load <2 x i64>, ptr %2, align 8
  store i64 %.sroa.0.0.copyload.i.i.i.i.i, ptr %2, align 8, !alias.scope !3099
  store <2 x i64> %i.f, ptr %1, align 8
  store i64 %i.d, ptr %i.e, align 8, !alias.scope !3100
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3101)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3102)
  %.sroa.0.0.copyload.i.i.i.2.i.i = load i64, ptr %i.g, align 8, !alias.scope !3101
  %.sroa.02.0.copyload.i.i.i.2.i.i = load i64, ptr %i.h, align 8, !alias.scope !3102
  store i64 %.sroa.02.0.copyload.i.i.i.2.i.i, ptr %i.g, align 8, !alias.scope !3101
  store i64 %.sroa.0.0.copyload.i.i.i.2.i.i, ptr %i.h, align 8, !alias.scope !3102
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.e, %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  tail call void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTNtNtB9_6string6StringINtNtCsf3Ta7LF998c_4core6option6OptionTIB1c_mENtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdEENtB2z_11FileVersionEEENtNtNtB1S_3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  ret void

bb.e:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.c, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.b, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !noundef !9
  store ptr null, ptr %i.k, align 8
  store ptr %i.l, ptr %i.a, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !noundef !9
  store i64 0, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !noundef !9
  %i.q = add i64 %i.p, %i.n
  store i64 %i.q, ptr %i.o, align 8
  br label %bb.d
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #13

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCs1L7Mk9ubPba_12clap_builder4util2id2IdE6removeCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtNtCs1L7Mk9ubPba_12clap_builder6parser7matches11matched_arg10MatchedArgE6removeCsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104), ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #13

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMCsfmY3yR2dyUD_8clap_lexNtB3_7RawArgs3newNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringNtNtBN_3env6ArgsOsECsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path9file_stem(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMCsfmY3yR2dyUD_8clap_lexNtB3_7RawArgs6insertRNtNtCsgCecv3eZDcN_5alloc6string6StringABK_j1_ECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs3_NtNtCs1L7Mk9ubPba_12clap_builder7builder7commandNtB5_7Command9__do_parse(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef align 8 dereferenceable(712), ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path9file_name(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsf3Ta7LF998c_4core3str8converts9from_utf8(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs1L7Mk9ubPba_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef align 8 dereferenceable(712), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(600)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXsk_NtNtCs1L7Mk9ubPba_12clap_builder7builder10resettableNtNtNtB9_4util2id2IdINtB5_14IntoResettableBV_E15into_resettableCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs6_NtNtCs1L7Mk9ubPba_12clap_builder7builder10resettableINtNtCsf3Ta7LF998c_4core6option6OptionReEINtB5_14IntoResettableNtNtB7_10styled_str9StyledStrE15into_resettable(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly captures(address, read_provenance), i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsh_NtNtCs1L7Mk9ubPba_12clap_builder7builder10resettableReINtB5_14IntoResettableNtNtB7_10styled_str9StyledStrE15into_resettableCsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXsj_NtNtCs1L7Mk9ubPba_12clap_builder7builder10resettableReINtB5_14IntoResettableNtNtB7_3str3StrE15into_resettableCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef align 8 ptr @_RNvMNtNtNtCs1L7Mk9ubPba_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg5first(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvMNtNtCs1L7Mk9ubPba_12clap_builder4util9any_valueNtB3_8AnyValue12downcast_refNtNtCsbNLsQi0JuJ4_5tgrep5serve9WatchModeEB1k_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #18

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtNtCs1L7Mk9ubPba_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg17into_vals_flatten(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 8 captures(none) dereferenceable(96), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtCs1L7Mk9ubPba_12clap_builder4util9any_valueNtB3_8AnyValue13downcast_intoNtCsbNLsQi0JuJ4_5tgrep16IndexStrategyArgEB1j_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

end_hunk_0
