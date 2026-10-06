Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.03?download=true
inline.NumInlined: 920
inline.NumDeleted: 323
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_RINvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing6bridgeINtNtB4_9enumerate9EnumerateINtNtB6_5slice4IterNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEINtNtB4_3map11MapConsumerINtNtB4_6reduce14ReduceConsumerNCNvMs4_NtB1A_7trainerNtB3t_10BpeTrainer11count_pairss0_0NCB3n_s_0ENCB3n_0EEB1E_:bb.a
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %2, ptr %i.c, align 8
  %i.d = call noundef i64 @_RNvXs0_NtNtCsgbNVBrIJ05E_5rayon4iter9enumerateINtB5_9EnumerateINtNtB9_5slice4IterNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEENtB7_23IndexedParallelIterator3lenB1p_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.d, ptr %i.e, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @_RINvXs0_NtNtCsgbNVBrIJ05E_5rayon4iter9enumerateINtB6_9EnumerateINtNtBa_5slice4IterNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEENtB8_23IndexedParallelIterator13with_producerINtNvNtB8_8plumbing6bridge8CallbackINtNtB8_3map11MapConsumerINtNtB8_6reduce14ReduceConsumerNCNvMs4_NtB1m_7trainerNtB4x_10BpeTrainer11count_pairss0_0NCB4r_s_0ENCB4r_0EEEB1q_(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing6bridgeINtNtB6_3vec8IntoIterRjEINtNtB4_8flat_map15FlatMapConsumerINtNtNtB4_7collect8consumer15CollectConsumerTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2I_10BpeTrainer8do_trains_0EEB2O_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val = load i64, ptr %i.c, align 8, !noundef !3 ; 2 uses
  %i.d = icmp ult i64 %.val, 1152921504606846976
  tail call void @llvm.assume(i1 %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.val, ptr %i.e, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @_RINvXs3_NtCsgbNVBrIJ05E_5rayon3vecINtB6_8IntoIterRjENtNtB8_4iter23IndexedParallelIterator13with_producerINtNvNtBQ_8plumbing6bridge8CallbackINtNtBQ_8flat_map15FlatMapConsumerINtNtNtBQ_7collect8consumer15CollectConsumerTTTmmElEjEENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB3M_10BpeTrainer8do_trains_0EEEB3S_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing6bridgeINtNtB6_3vec8IntoIterRjEINtNtB4_8flat_map15FlatMapConsumerNtNtB4_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2k_10BpeTrainer8do_trains_0EEB2q_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val = load i64, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %i.c = icmp ult i64 %.val, 1152921504606846976
  tail call void @llvm.assume(i1 %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_RINvXs3_NtCsgbNVBrIJ05E_5rayon3vecINtB6_8IntoIterRjENtNtB8_4iter23IndexedParallelIterator13with_producerINtNvNtBQ_8plumbing6bridge8CallbackINtNtBQ_8flat_map15FlatMapConsumerNtNtBQ_6extend15ListVecConsumerNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB3o_10BpeTrainer8do_trains_0EEEB3u_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, i64 noundef %.val)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing6bridgeINtNtB6_3vec8IntoIterTTTmmElEjEEINtNtNtB4_7collect8consumer15CollectConsumerB16_EECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val = load i64, ptr %i.c, align 8, !noundef !3 ; 2 uses
  %i.d = icmp ult i64 %.val, 384307168202282326
  tail call void @llvm.assume(i1 %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.val, ptr %i.e, align 8
  store ptr %2, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %3, ptr %i.f, align 8
  call void @_RINvXs3_NtCsgbNVBrIJ05E_5rayon3vecINtB6_8IntoIterTTTmmElEjEENtNtB8_4iter23IndexedParallelIterator13with_producerINtNvNtBY_8plumbing6bridge8CallbackINtNtNtBY_7collect8consumer15CollectConsumerBL_EEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing6bridgeINtNtB6_3vec8IntoIterTTTmmElEjEENtNtB4_6extend15ListVecConsumerECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val = load i64, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %i.c = icmp ult i64 %.val, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_RINvXs3_NtCsgbNVBrIJ05E_5rayon3vecINtB6_8IntoIterTTTmmElEjEENtNtB8_4iter23IndexedParallelIterator13with_producerINtNvNtBY_8plumbing6bridge8CallbackNtNtBY_6extend15ListVecConsumerEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %.val)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing6bridgeINtNtB6_5slice4IterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB4_3map11MapConsumerINtNtB4_4fold12FoldConsumerINtNtB4_6reduce14ReduceConsumerNCINvNvNtB4_16ParallelIterator11reduce_with10opt_reducejRNvYjNtNtCs4NRVxsYgnAr_4core3cmp3Ord3maxE0NvYINtNtB4r_6option6OptionjENtNtB4r_7default7Default7defaultEB4Y_NCINvB3t_8opt_foldjB4i_E0ENCNvNtNtB1a_5utils7padding13pad_encodings0EEB1a_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %1, ptr %i.b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  %i.c = call { i64, i64 } @_RINvXs6_NtCsgbNVBrIJ05E_5rayon5sliceINtB6_4IterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENtNtB8_4iter23IndexedParallelIterator13with_producerINtNvNtB1K_8plumbing6bridge8CallbackINtNtB1K_3map11MapConsumerINtNtB1K_4fold12FoldConsumerINtNtB1K_6reduce14ReduceConsumerNCINvNvNtB1K_16ParallelIterator11reduce_with10opt_reducejRNvYjNtNtCs4NRVxsYgnAr_4core3cmp3Ord3maxE0NvYINtNtB5A_6option6OptionjENtNtB5A_7default7Default7defaultEB67_NCINvB4B_8opt_foldjB5r_E0ENCNvNtNtBP_5utils7padding13pad_encodings0EEEBP_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, i64 } %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing6bridgeINtNtB6_5slice7IterMutNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB4_8for_each15ForEachConsumerNCNvMB19_B17_3pad0EEB1d_(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RINvXs9_NtCsgbNVBrIJ05E_5rayon5sliceINtB6_7IterMutNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENtNtB8_4iter23IndexedParallelIterator13with_producerINtNvNtB1N_8plumbing6bridge8CallbackINtNtB1N_8for_each15ForEachConsumerNCNvMBO_BM_3pad0EEEBS_(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, i64 noundef %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing6bridgeINtNtB6_5slice7IterMutNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtB4_8for_each15ForEachConsumerNCNvNtNtB1d_5utils7padding13pad_encodingss_0EEB1d_(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RINvXs9_NtCsgbNVBrIJ05E_5rayon5sliceINtB6_7IterMutNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENtNtB8_4iter23IndexedParallelIterator13with_producerINtNvNtB1N_8plumbing6bridge8CallbackINtNtB1N_8for_each15ForEachConsumerNCNvNtNtBS_5utils7padding13pad_encodingss_0EEEBS_(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i64 noundef %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing6bridgeINtNtNtB6_5slice6chunks6ChunksTNtNtCscdodAO9FK5_5alloc6string6StringmEEINtNtB4_3map11MapConsumerINtNtB4_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2V_14UnigramTrainer10run_e_steps1_0NCB2Q_s0_0ENCB2Q_s_0EEB31_(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3 = load i64, ptr %i.b, align 8, !noundef !3 ; 3 uses
  %i.c = icmp eq i64 %.val3, 0
  br i1 %i.c, label %bb.b, label %_RNvXs1_NtNtCsgbNVBrIJ05E_5rayon5slice6chunksINtB5_6ChunksTNtNtCscdodAO9FK5_5alloc6string6StringmEENtNtB9_4iter23IndexedParallelIterator3lenCs2JiOgHzbbc7_10tokenizers.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #22
  unreachable

_RNvXs1_NtNtCsgbNVBrIJ05E_5rayon5slice6chunksINtB5_6ChunksTNtNtCscdodAO9FK5_5alloc6string6StringmEENtNtB9_4iter23IndexedParallelIterator3lenCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load i64, ptr %i.d, align 8             ; 2 uses
  %i.e = udiv i64 %.val, %.val3
  %i.f = urem i64 %.val, %.val3
  %.not.i = icmp ne i64 %i.f, 0
  %i.g = zext i1 %.not.i to i64
  %.sroa.0.0.i = add i64 %i.e, %i.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.0.0.i, ptr %i.h, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @_RINvXs1_NtNtCsgbNVBrIJ05E_5rayon5slice6chunksINtB6_6ChunksTNtNtCscdodAO9FK5_5alloc6string6StringmEENtNtBa_4iter23IndexedParallelIterator13with_producerINtNvNtB1B_8plumbing6bridge8CallbackINtNtB1B_3map11MapConsumerINtNtB1B_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB42_14UnigramTrainer10run_e_steps1_0NCB3X_s0_0ENCB3X_s_0EEEB48_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsgbNVBrIJ05E_5rayon4iter8plumbing6bridgeINtNtNtB6_5slice6chunks6ChunksTjRTNtNtCscdodAO9FK5_5alloc6string6StringmEEEINtNtB4_3map11MapConsumerINtNtB4_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2Z_14UnigramTrainer21prune_sentence_piecess0_0NCB2U_s_0ENCB2U_0EEB35_(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3 = load i64, ptr %i.b, align 8, !noundef !3 ; 3 uses
  %i.c = icmp eq i64 %.val3, 0
  br i1 %i.c, label %bb.b, label %_RNvXs1_NtNtCsgbNVBrIJ05E_5rayon5slice6chunksINtB5_6ChunksTjRTNtNtCscdodAO9FK5_5alloc6string6StringmEEENtNtB9_4iter23IndexedParallelIterator3lenCs2JiOgHzbbc7_10tokenizers.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #22
  unreachable

_RNvXs1_NtNtCsgbNVBrIJ05E_5rayon5slice6chunksINtB5_6ChunksTjRTNtNtCscdodAO9FK5_5alloc6string6StringmEEENtNtB9_4iter23IndexedParallelIterator3lenCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load i64, ptr %i.d, align 8             ; 2 uses
  %i.e = udiv i64 %.val, %.val3
  %i.f = urem i64 %.val, %.val3
  %.not.i = icmp ne i64 %i.f, 0
  %i.g = zext i1 %.not.i to i64
  %.sroa.0.0.i = add i64 %i.e, %i.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.0.0.i, ptr %i.h, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @_RINvXs1_NtNtCsgbNVBrIJ05E_5rayon5slice6chunksINtB6_6ChunksTjRTNtNtCscdodAO9FK5_5alloc6string6StringmEEENtNtBa_4iter23IndexedParallelIterator13with_producerINtNvNtB1F_8plumbing6bridge8CallbackINtNtB1F_3map11MapConsumerINtNtB1F_6reduce14ReduceConsumerNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB46_14UnigramTrainer21prune_sentence_piecess0_0NCB41_s_0ENCB41_0EEEB4c_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable7ipnsortTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB6_SBT_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2h_9WordPieceNtNtB2l_9tokenizer5Model4save0E0EB2l_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtCscdodAO9FK5_5alloc6string6StringRmE7reverseCs2JiOgHzbbc7_10tokenizers.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 24
  %.val6 = load ptr, ptr %i.b, align 8, !nonnull !3, !align !4, !noundef !3
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val7 = load ptr, ptr %i.c, align 8, !nonnull !3, !align !4, !noundef !3
  %i.d = load i32, ptr %.val6, align 4, !noundef !3 ; 3 uses
  %i.e = load i32, ptr %.val7, align 4, !noundef !3
  %i.f = icmp ult i32 %i.d, %i.e                  ; 2 uses
  %.not22 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.f, label %.preheader, label %.preheader12

.preheader12:                                     ; preds = %bb.b
  br i1 %.not22, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB6_SB12_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2r_9WordPieceNtNtB2v_9tokenizer5Model4save0E0EB2v_.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not22, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB6_SB12_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2r_9WordPieceNtNtB2v_9tokenizer5Model4save0E0EB2v_.exit, label %.lr.ph18

.lr.ph:                                           ; preds = %.preheader12, %bb.c
  %i.g = phi i32 [ %i.j, %bb.c ], [ %i.d, %.preheader12 ]
  %.sroa.01.0.i14 = phi i64 [ %i.l, %bb.c ], [ 2, %.preheader12 ] ; 4 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i14
  %3 = add nsw i64 %.sroa.01.0.i14, -1
  %4 = icmp samesign ult i64 %3, %1
  tail call void @llvm.assume(i1 %4)
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %.val4 = load ptr, ptr %i.i, align 8, !nonnull !3, !align !4, !noundef !3
  %i.j = load i32, ptr %.val4, align 4, !noundef !3 ; 2 uses
  %i.k = icmp ult i32 %i.j, %i.g
  br i1 %i.k, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB6_SB12_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2r_9WordPieceNtNtB2v_9tokenizer5Model4save0E0EB2v_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.l = add nuw nsw i64 %.sroa.01.0.i14, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.l, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB6_SB12_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2r_9WordPieceNtNtB2v_9tokenizer5Model4save0E0EB2v_.exit.thread, label %.lr.ph

.lr.ph18:                                         ; preds = %.preheader, %bb.d
  %i.m = phi i32 [ %i.p, %bb.d ], [ %i.d, %.preheader ]
  %.sroa.01.1.i17 = phi i64 [ %i.r, %bb.d ], [ 2, %.preheader ] ; 4 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.1.i17
  %5 = add nsw i64 %.sroa.01.1.i17, -1
  %6 = icmp samesign ult i64 %5, %1
  tail call void @llvm.assume(i1 %6)
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %.val = load ptr, ptr %i.o, align 8, !nonnull !3, !align !4, !noundef !3
  %i.p = load i32, ptr %.val, align 4, !noundef !3 ; 2 uses
  %i.q = icmp ult i32 %i.p, %i.m
  br i1 %i.q, label %bb.d, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB6_SB12_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2r_9WordPieceNtNtB2v_9tokenizer5Model4save0E0EB2v_.exit

bb.d:                                             ; preds = %.lr.ph18
  %i.r = add nuw nsw i64 %.sroa.01.1.i17, 1       ; 2 uses
  %exitcond25.not = icmp eq i64 %i.r, %1
  br i1 %exitcond25.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB6_SB12_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2r_9WordPieceNtNtB2v_9tokenizer5Model4save0E0EB2v_.exit.thread, label %.lr.ph18

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB6_SB12_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2r_9WordPieceNtNtB2v_9tokenizer5Model4save0E0EB2v_.exit: ; preds = %.lr.ph, %.lr.ph18, %.preheader12, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader12 ], [ 2, %.preheader ], [ %.sroa.01.1.i17, %.lr.ph18 ], [ %.sroa.01.0.i14, %.lr.ph ] ; 2 uses
  %i.s = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.s)
  %i.t = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.t, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB6_SB12_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2r_9WordPieceNtNtB2v_9tokenizer5Model4save0E0EB2v_.exit.thread, label %bb.e

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB6_SB12_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2r_9WordPieceNtNtB2v_9tokenizer5Model4save0E0EB2v_.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB6_SB12_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2r_9WordPieceNtNtB2v_9tokenizer5Model4save0E0EB2v_.exit
  br i1 %i.f, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtCscdodAO9FK5_5alloc6string6StringRmE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtCscdodAO9FK5_5alloc6string6StringRmE7reverseCs2JiOgHzbbc7_10tokenizers.exit

bb.e:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB6_SB12_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2r_9WordPieceNtNtB2v_9tokenizer5Model4save0E0EB2v_.exit
  %i.u = or i64 %1, 1
  %i.v = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.u, i1 true)
  %i.w = trunc nuw nsw i64 %i.v to i32
  %i.x = shl nuw nsw i32 %i.w, 1
  %i.y = xor i32 %i.x, 126
  tail call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB8_SB17_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2w_9WordPieceNtNtB2A_9tokenizer5Model4save0E0EB2A_(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, i32 noundef %i.y, ptr noalias noundef align 8 dereferenceable(8) %2)
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtCscdodAO9FK5_5alloc6string6StringRmE7reverseCs2JiOgHzbbc7_10tokenizers.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtCscdodAO9FK5_5alloc6string6StringRmE7reverseCs2JiOgHzbbc7_10tokenizers.exit.loopexit.unr-lcssa: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtCscdodAO9FK5_5alloc6string6StringRmE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i
  %i.z = and i64 %1, 2
  %lcmp.mod.not = icmp eq i64 %i.z, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtCscdodAO9FK5_5alloc6string6StringRmE7reverseCs2JiOgHzbbc7_10tokenizers.exit, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtCscdodAO9FK5_5alloc6string6StringRmE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i.epil.preheader

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtCscdodAO9FK5_5alloc6string6StringRmE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i.epil.preheader: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtCscdodAO9FK5_5alloc6string6StringRmE7reverseCs2JiOgHzbbc7_10tokenizers.exit.loopexit.unr-lcssa, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtCscdodAO9FK5_5alloc6string6StringRmE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i.i
  %.sroa.0.016.i.i.epil.init = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtCscdodAO9FK5_5alloc6string6StringRmE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i.i ], [ %i.aq, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtCscdodAO9FK5_5alloc6string6StringRmE7reverseCs2JiOgHzbbc7_10tokenizers.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod50 = trunc i64 %i.ae to i1
  tail call void @llvm.assume(i1 %lcmp.mod50)
  %i.aa = xor i64 %.sroa.0.016.i.i.epil.init, -1
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016.i.i.epil.init ; 2 uses
  %i.ac = getelementptr [16 x i8], ptr %i.af, i64 %i.aa ; 2 uses
  %i.ad = load <2 x ptr>, ptr %i.ab, align 8, !alias.scope !17, !noalias !18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false), !alias.scope !19
  store <2 x ptr> %i.ad, ptr %i.ac, align 8, !alias.scope !20, !noalias !21
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtCscdodAO9FK5_5alloc6string6StringRmE7reverseCs2JiOgHzbbc7_10tokenizers.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtCscdodAO9FK5_5alloc6string6StringRmE7reverseCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtCscdodAO9FK5_5alloc6string6StringRmE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i.epil.preheader, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtCscdodAO9FK5_5alloc6string6StringRmE7reverseCs2JiOgHzbbc7_10tokenizers.exit.loopexit.unr-lcssa, %bb.a, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB6_SB12_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2r_9WordPieceNtNtB2v_9tokenizer5Model4save0E0EB2v_.exit.thread, %bb.e
  ret void

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtCscdodAO9FK5_5alloc6string6StringRmE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB6_SB12_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2r_9WordPieceNtNtB2v_9tokenizer5Model4save0E0EB2v_.exit.thread
  %i.ae = lshr i64 %1, 1                          ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18)
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1 ; 3 uses
  %i.ag = icmp eq i64 %i.ae, 1
  br i1 %i.ag, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtCscdodAO9FK5_5alloc6string6StringRmE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i.epil.preheader, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtCscdodAO9FK5_5alloc6string6StringRmE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i.i.new

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtCscdodAO9FK5_5alloc6string6StringRmE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i.i.new: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtCscdodAO9FK5_5alloc6string6StringRmE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i.i
  %unroll_iter = and i64 %i.ae, 288230376151711742
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtCscdodAO9FK5_5alloc6string6StringRmE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtCscdodAO9FK5_5alloc6string6StringRmE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtCscdodAO9FK5_5alloc6string6StringRmE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtCscdodAO9FK5_5alloc6string6StringRmE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i.i.new
  %.sroa.0.016.i.i = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtCscdodAO9FK5_5alloc6string6StringRmE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i.i.new ], [ %i.aq, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtCscdodAO9FK5_5alloc6string6StringRmE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtCscdodAO9FK5_5alloc6string6StringRmE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i.i.new ], [ %niter.next.1, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtCscdodAO9FK5_5alloc6string6StringRmE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i ]
  %i.ah = xor i64 %.sroa.0.016.i.i, -1
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016.i.i ; 2 uses
  %i.aj = getelementptr [16 x i8], ptr %i.af, i64 %i.ah ; 2 uses
  %i.ak = load <2 x ptr>, ptr %i.ai, align 8, !alias.scope !17, !noalias !18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 16, i1 false), !alias.scope !19
  store <2 x ptr> %i.ak, ptr %i.aj, align 8, !alias.scope !20, !noalias !21
  %i.al = xor i64 %.sroa.0.016.i.i, -2
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %i.ao = getelementptr [16 x i8], ptr %i.af, i64 %i.al ; 2 uses
  %i.ap = load <2 x ptr>, ptr %i.an, align 8, !alias.scope !17, !noalias !18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i64 16, i1 false), !alias.scope !19
  store <2 x ptr> %i.ap, ptr %i.ao, align 8, !alias.scope !20, !noalias !21
  %i.aq = add nuw nsw i64 %.sroa.0.016.i.i, 2     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtCscdodAO9FK5_5alloc6string6StringRmE7reverseCs2JiOgHzbbc7_10tokenizers.exit.loopexit.unr-lcssa, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRNtNtCscdodAO9FK5_5alloc6string6StringRmE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable7ipnsortTRTmmERmENCINvMB6_SBT_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB1K_3BPENtNtB1Q_9tokenizer5Model4saves_0E0EB1Q_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRTmmERmE7reverseCs2JiOgHzbbc7_10tokenizers.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 24
  %.val6 = load ptr, ptr %i.b, align 8, !nonnull !3, !align !4, !noundef !3
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val7 = load ptr, ptr %i.c, align 8, !nonnull !3, !align !4, !noundef !3
  %i.d = load i32, ptr %.val6, align 4, !noundef !3 ; 3 uses
  %i.e = load i32, ptr %.val7, align 4, !noundef !3
  %i.f = icmp ult i32 %i.d, %i.e                  ; 2 uses
  %.not22 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.f, label %.preheader, label %.preheader12

.preheader12:                                     ; preds = %bb.b
  br i1 %.not22, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTRTmmERmENCINvMB6_SB12_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB1U_3BPENtNtB20_9tokenizer5Model4saves_0E0EB20_.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not22, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTRTmmERmENCINvMB6_SB12_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB1U_3BPENtNtB20_9tokenizer5Model4saves_0E0EB20_.exit, label %.lr.ph18

.lr.ph:                                           ; preds = %.preheader12, %bb.c
  %i.g = phi i32 [ %i.j, %bb.c ], [ %i.d, %.preheader12 ]
  %.sroa.01.0.i14 = phi i64 [ %i.l, %bb.c ], [ 2, %.preheader12 ] ; 4 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i14
  %3 = add nsw i64 %.sroa.01.0.i14, -1
  %4 = icmp samesign ult i64 %3, %1
  tail call void @llvm.assume(i1 %4)
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %.val4 = load ptr, ptr %i.i, align 8, !nonnull !3, !align !4, !noundef !3
  %i.j = load i32, ptr %.val4, align 4, !noundef !3 ; 2 uses
  %i.k = icmp ult i32 %i.j, %i.g
  br i1 %i.k, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTRTmmERmENCINvMB6_SB12_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB1U_3BPENtNtB20_9tokenizer5Model4saves_0E0EB20_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.l = add nuw nsw i64 %.sroa.01.0.i14, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.l, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTRTmmERmENCINvMB6_SB12_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB1U_3BPENtNtB20_9tokenizer5Model4saves_0E0EB20_.exit.thread, label %.lr.ph

.lr.ph18:                                         ; preds = %.preheader, %bb.d
  %i.m = phi i32 [ %i.p, %bb.d ], [ %i.d, %.preheader ]
  %.sroa.01.1.i17 = phi i64 [ %i.r, %bb.d ], [ 2, %.preheader ] ; 4 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.1.i17
  %5 = add nsw i64 %.sroa.01.1.i17, -1
  %6 = icmp samesign ult i64 %5, %1
  tail call void @llvm.assume(i1 %6)
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %.val = load ptr, ptr %i.o, align 8, !nonnull !3, !align !4, !noundef !3
  %i.p = load i32, ptr %.val, align 4, !noundef !3 ; 2 uses
  %i.q = icmp ult i32 %i.p, %i.m
  br i1 %i.q, label %bb.d, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTRTmmERmENCINvMB6_SB12_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB1U_3BPENtNtB20_9tokenizer5Model4saves_0E0EB20_.exit

bb.d:                                             ; preds = %.lr.ph18
  %i.r = add nuw nsw i64 %.sroa.01.1.i17, 1       ; 2 uses
  %exitcond25.not = icmp eq i64 %i.r, %1
  br i1 %exitcond25.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTRTmmERmENCINvMB6_SB12_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB1U_3BPENtNtB20_9tokenizer5Model4saves_0E0EB20_.exit.thread, label %.lr.ph18

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTRTmmERmENCINvMB6_SB12_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB1U_3BPENtNtB20_9tokenizer5Model4saves_0E0EB20_.exit: ; preds = %.lr.ph, %.lr.ph18, %.preheader12, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader12 ], [ 2, %.preheader ], [ %.sroa.01.1.i17, %.lr.ph18 ], [ %.sroa.01.0.i14, %.lr.ph ] ; 2 uses
  %i.s = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.s)
  %i.t = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.t, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTRTmmERmENCINvMB6_SB12_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB1U_3BPENtNtB20_9tokenizer5Model4saves_0E0EB20_.exit.thread, label %bb.e

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTRTmmERmENCINvMB6_SB12_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB1U_3BPENtNtB20_9tokenizer5Model4saves_0E0EB20_.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTRTmmERmENCINvMB6_SB12_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB1U_3BPENtNtB20_9tokenizer5Model4saves_0E0EB20_.exit
  br i1 %i.f, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRTmmERmE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRTmmERmE7reverseCs2JiOgHzbbc7_10tokenizers.exit

bb.e:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTRTmmERmENCINvMB6_SB12_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB1U_3BPENtNtB20_9tokenizer5Model4saves_0E0EB20_.exit
  %i.u = or i64 %1, 1
  %i.v = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.u, i1 true)
  %i.w = trunc nuw nsw i64 %i.v to i32
  %i.x = shl nuw nsw i32 %i.w, 1
  %i.y = xor i32 %i.x, 126
  tail call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortTRTmmERmENCINvMB8_SB17_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB1Z_3BPENtNtB25_9tokenizer5Model4saves_0E0EB25_(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, i32 noundef %i.y, ptr noalias noundef align 8 dereferenceable(8) %2)
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRTmmERmE7reverseCs2JiOgHzbbc7_10tokenizers.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRTmmERmE7reverseCs2JiOgHzbbc7_10tokenizers.exit.loopexit.unr-lcssa: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRTmmERmE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i
  %i.z = and i64 %1, 2
  %lcmp.mod.not = icmp eq i64 %i.z, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRTmmERmE7reverseCs2JiOgHzbbc7_10tokenizers.exit, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRTmmERmE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i.epil.preheader

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRTmmERmE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i.epil.preheader: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRTmmERmE7reverseCs2JiOgHzbbc7_10tokenizers.exit.loopexit.unr-lcssa, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRTmmERmE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i.i
  %.sroa.0.016.i.i.epil.init = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRTmmERmE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i.i ], [ %i.aq, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRTmmERmE7reverseCs2JiOgHzbbc7_10tokenizers.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod50 = trunc i64 %i.ae to i1
  tail call void @llvm.assume(i1 %lcmp.mod50)
  %i.aa = xor i64 %.sroa.0.016.i.i.epil.init, -1
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016.i.i.epil.init ; 2 uses
  %i.ac = getelementptr [16 x i8], ptr %i.af, i64 %i.aa ; 2 uses
  %i.ad = load <2 x ptr>, ptr %i.ab, align 8, !alias.scope !27, !noalias !28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false), !alias.scope !29
  store <2 x ptr> %i.ad, ptr %i.ac, align 8, !alias.scope !30, !noalias !31
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRTmmERmE7reverseCs2JiOgHzbbc7_10tokenizers.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRTmmERmE7reverseCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRTmmERmE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i.epil.preheader, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRTmmERmE7reverseCs2JiOgHzbbc7_10tokenizers.exit.loopexit.unr-lcssa, %bb.a, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTRTmmERmENCINvMB6_SB12_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB1U_3BPENtNtB20_9tokenizer5Model4saves_0E0EB20_.exit.thread, %bb.e
  ret void

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRTmmERmE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTRTmmERmENCINvMB6_SB12_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB1U_3BPENtNtB20_9tokenizer5Model4saves_0E0EB20_.exit.thread
  %i.ae = lshr i64 %1, 1                          ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28)
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1 ; 3 uses
  %i.ag = icmp eq i64 %i.ae, 1
  br i1 %i.ag, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRTmmERmE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i.epil.preheader, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRTmmERmE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i.i.new

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRTmmERmE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i.i.new: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRTmmERmE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i.i
  %unroll_iter = and i64 %i.ae, 288230376151711742
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRTmmERmE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRTmmERmE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRTmmERmE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRTmmERmE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i.i.new
  %.sroa.0.016.i.i = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRTmmERmE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i.i.new ], [ %i.aq, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRTmmERmE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRTmmERmE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i.i.new ], [ %niter.next.1, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRTmmERmE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i ]
  %i.ah = xor i64 %.sroa.0.016.i.i, -1
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016.i.i ; 2 uses
  %i.aj = getelementptr [16 x i8], ptr %i.af, i64 %i.ah ; 2 uses
  %i.ak = load <2 x ptr>, ptr %i.ai, align 8, !alias.scope !27, !noalias !28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 16, i1 false), !alias.scope !29
  store <2 x ptr> %i.ak, ptr %i.aj, align 8, !alias.scope !30, !noalias !31
  %i.al = xor i64 %.sroa.0.016.i.i, -2
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %i.ao = getelementptr [16 x i8], ptr %i.af, i64 %i.al ; 2 uses
  %i.ap = load <2 x ptr>, ptr %i.an, align 8, !alias.scope !27, !noalias !28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i64 16, i1 false), !alias.scope !29
  store <2 x ptr> %i.ap, ptr %i.ao, align 8, !alias.scope !30, !noalias !31
  %i.aq = add nuw nsw i64 %.sroa.0.016.i.i, 2     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRTmmERmE7reverseCs2JiOgHzbbc7_10tokenizers.exit.loopexit.unr-lcssa, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRTmmERmE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable7ipnsortTRcRjENCINvMB6_SBT_20sort_unstable_by_keyjNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1H_10BpeTrainer16compute_alphabets_0E0EB1N_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE7reverseCs2JiOgHzbbc7_10tokenizers.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 24
  %.val6 = load ptr, ptr %i.b, align 8, !nonnull !3, !align !5, !noundef !3
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val7 = load ptr, ptr %i.c, align 8, !nonnull !3, !align !5, !noundef !3
  %i.d = load i64, ptr %.val6, align 8, !noundef !3 ; 3 uses
  %i.e = load i64, ptr %.val7, align 8, !noundef !3
  %i.f = icmp ult i64 %i.d, %i.e                  ; 2 uses
  %.not22 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.f, label %.preheader, label %.preheader12

.preheader12:                                     ; preds = %bb.b
  br i1 %.not22, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTRcRjENCINvMB6_SB12_20sort_unstable_by_keyjNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1R_10BpeTrainer16compute_alphabets_0E0EB1X_.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not22, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTRcRjENCINvMB6_SB12_20sort_unstable_by_keyjNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1R_10BpeTrainer16compute_alphabets_0E0EB1X_.exit, label %.lr.ph18

.lr.ph:                                           ; preds = %.preheader12, %bb.c
  %i.g = phi i64 [ %i.j, %bb.c ], [ %i.d, %.preheader12 ]
  %.sroa.01.0.i14 = phi i64 [ %i.l, %bb.c ], [ 2, %.preheader12 ] ; 4 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i14
  %3 = add nsw i64 %.sroa.01.0.i14, -1
  %4 = icmp samesign ult i64 %3, %1
  tail call void @llvm.assume(i1 %4)
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %.val4 = load ptr, ptr %i.i, align 8, !nonnull !3, !align !5, !noundef !3
  %i.j = load i64, ptr %.val4, align 8, !noundef !3 ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.g
  br i1 %i.k, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTRcRjENCINvMB6_SB12_20sort_unstable_by_keyjNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1R_10BpeTrainer16compute_alphabets_0E0EB1X_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.l = add nuw nsw i64 %.sroa.01.0.i14, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.l, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTRcRjENCINvMB6_SB12_20sort_unstable_by_keyjNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1R_10BpeTrainer16compute_alphabets_0E0EB1X_.exit.thread, label %.lr.ph

.lr.ph18:                                         ; preds = %.preheader, %bb.d
  %i.m = phi i64 [ %i.p, %bb.d ], [ %i.d, %.preheader ]
  %.sroa.01.1.i17 = phi i64 [ %i.r, %bb.d ], [ 2, %.preheader ] ; 4 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.1.i17
  %5 = add nsw i64 %.sroa.01.1.i17, -1
  %6 = icmp samesign ult i64 %5, %1
  tail call void @llvm.assume(i1 %6)
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %.val = load ptr, ptr %i.o, align 8, !nonnull !3, !align !5, !noundef !3
  %i.p = load i64, ptr %.val, align 8, !noundef !3 ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.m
  br i1 %i.q, label %bb.d, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTRcRjENCINvMB6_SB12_20sort_unstable_by_keyjNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1R_10BpeTrainer16compute_alphabets_0E0EB1X_.exit

bb.d:                                             ; preds = %.lr.ph18
  %i.r = add nuw nsw i64 %.sroa.01.1.i17, 1       ; 2 uses
  %exitcond25.not = icmp eq i64 %i.r, %1
  br i1 %exitcond25.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTRcRjENCINvMB6_SB12_20sort_unstable_by_keyjNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1R_10BpeTrainer16compute_alphabets_0E0EB1X_.exit.thread, label %.lr.ph18

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTRcRjENCINvMB6_SB12_20sort_unstable_by_keyjNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1R_10BpeTrainer16compute_alphabets_0E0EB1X_.exit: ; preds = %.lr.ph, %.lr.ph18, %.preheader12, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader12 ], [ 2, %.preheader ], [ %.sroa.01.1.i17, %.lr.ph18 ], [ %.sroa.01.0.i14, %.lr.ph ] ; 2 uses
  %i.s = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.s)
  %i.t = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.t, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTRcRjENCINvMB6_SB12_20sort_unstable_by_keyjNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1R_10BpeTrainer16compute_alphabets_0E0EB1X_.exit.thread, label %bb.e

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTRcRjENCINvMB6_SB12_20sort_unstable_by_keyjNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1R_10BpeTrainer16compute_alphabets_0E0EB1X_.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTRcRjENCINvMB6_SB12_20sort_unstable_by_keyjNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1R_10BpeTrainer16compute_alphabets_0E0EB1X_.exit
  br i1 %i.f, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE7reverseCs2JiOgHzbbc7_10tokenizers.exit

bb.e:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTRcRjENCINvMB6_SB12_20sort_unstable_by_keyjNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1R_10BpeTrainer16compute_alphabets_0E0EB1X_.exit
  %i.u = or i64 %1, 1
  %i.v = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.u, i1 true)
  %i.w = trunc nuw nsw i64 %i.v to i32
  %i.x = shl nuw nsw i32 %i.w, 1
  %i.y = xor i32 %i.x, 126
  tail call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortTRcRjENCINvMB8_SB17_20sort_unstable_by_keyjNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1W_10BpeTrainer16compute_alphabets_0E0EB22_(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, i32 noundef %i.y, ptr noalias noundef align 8 dereferenceable(8) %2)
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE7reverseCs2JiOgHzbbc7_10tokenizers.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE7reverseCs2JiOgHzbbc7_10tokenizers.exit.loopexit.unr-lcssa: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i
  %i.z = and i64 %1, 2
  %lcmp.mod.not = icmp eq i64 %i.z, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE7reverseCs2JiOgHzbbc7_10tokenizers.exit, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i.epil.preheader

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i.epil.preheader: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE7reverseCs2JiOgHzbbc7_10tokenizers.exit.loopexit.unr-lcssa, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i.i
  %.sroa.0.016.i.i.epil.init = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i.i ], [ %i.aq, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE7reverseCs2JiOgHzbbc7_10tokenizers.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod50 = trunc i64 %i.ae to i1
  tail call void @llvm.assume(i1 %lcmp.mod50)
  %i.aa = xor i64 %.sroa.0.016.i.i.epil.init, -1
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016.i.i.epil.init ; 2 uses
  %i.ac = getelementptr [16 x i8], ptr %i.af, i64 %i.aa ; 2 uses
  %i.ad = load <2 x ptr>, ptr %i.ab, align 8, !alias.scope !37, !noalias !38
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false), !alias.scope !39
  store <2 x ptr> %i.ad, ptr %i.ac, align 8, !alias.scope !40, !noalias !41
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE7reverseCs2JiOgHzbbc7_10tokenizers.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE7reverseCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i.epil.preheader, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE7reverseCs2JiOgHzbbc7_10tokenizers.exit.loopexit.unr-lcssa, %bb.a, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTRcRjENCINvMB6_SB12_20sort_unstable_by_keyjNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1R_10BpeTrainer16compute_alphabets_0E0EB1X_.exit.thread, %bb.e
  ret void

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTRcRjENCINvMB6_SB12_20sort_unstable_by_keyjNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1R_10BpeTrainer16compute_alphabets_0E0EB1X_.exit.thread
  %i.ae = lshr i64 %1, 1                          ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38)
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1 ; 3 uses
  %i.ag = icmp eq i64 %i.ae, 1
  br i1 %i.ag, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i.epil.preheader, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i.i.new

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i.i.new: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i.i
  %unroll_iter = and i64 %i.ae, 288230376151711742
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i.i.new
  %.sroa.0.016.i.i = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i.i.new ], [ %i.aq, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i.i.new ], [ %niter.next.1, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i ]
  %i.ah = xor i64 %.sroa.0.016.i.i, -1
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016.i.i ; 2 uses
  %i.aj = getelementptr [16 x i8], ptr %i.af, i64 %i.ah ; 2 uses
  %i.ak = load <2 x ptr>, ptr %i.ai, align 8, !alias.scope !37, !noalias !38
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 16, i1 false), !alias.scope !39
  store <2 x ptr> %i.ak, ptr %i.aj, align 8, !alias.scope !40, !noalias !41
  %i.al = xor i64 %.sroa.0.016.i.i, -2
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %i.ao = getelementptr [16 x i8], ptr %i.af, i64 %i.al ; 2 uses
  %i.ap = load <2 x ptr>, ptr %i.an, align 8, !alias.scope !37, !noalias !38
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i64 16, i1 false), !alias.scope !39
  store <2 x ptr> %i.ap, ptr %i.ao, align 8, !alias.scope !40, !noalias !41
  %i.aq = add nuw nsw i64 %.sroa.0.016.i.i, 2     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE7reverseCs2JiOgHzbbc7_10tokenizers.exit.loopexit.unr-lcssa, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable7ipnsortTRcRjENCINvMB6_SBT_20sort_unstable_by_keymNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1H_10BpeTrainer16compute_alphabets0_0E0EB1N_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE7reverseCs2JiOgHzbbc7_10tokenizers.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val6 = load ptr, ptr %i.b, align 8, !nonnull !3, !align !4, !noundef !3
  %.val7 = load ptr, ptr %0, align 8, !nonnull !3, !align !4, !noundef !3
  %i.c = load i32, ptr %.val6, align 4, !range !6, !noundef !3 ; 3 uses
  %i.d = load i32, ptr %.val7, align 4, !range !6, !noundef !3
  %i.e = icmp samesign ult i32 %i.c, %i.d         ; 2 uses
  %.not22 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.e, label %.preheader, label %.preheader12

.preheader12:                                     ; preds = %bb.b
  br i1 %.not22, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTRcRjENCINvMB6_SB12_20sort_unstable_by_keymNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1R_10BpeTrainer16compute_alphabets0_0E0EB1X_.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not22, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTRcRjENCINvMB6_SB12_20sort_unstable_by_keymNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1R_10BpeTrainer16compute_alphabets0_0E0EB1X_.exit, label %.lr.ph18

.lr.ph:                                           ; preds = %.preheader12, %bb.c
  %i.f = phi i32 [ %i.h, %bb.c ], [ %i.c, %.preheader12 ]
  %.sroa.01.0.i14 = phi i64 [ %i.j, %bb.c ], [ 2, %.preheader12 ] ; 4 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i14
  %3 = add nsw i64 %.sroa.01.0.i14, -1
  %4 = icmp samesign ult i64 %3, %1
  tail call void @llvm.assume(i1 %4)
  %.val4 = load ptr, ptr %i.g, align 8, !nonnull !3, !align !4, !noundef !3
  %i.h = load i32, ptr %.val4, align 4, !range !6, !noundef !3 ; 2 uses
  %i.i = icmp samesign ult i32 %i.h, %i.f
  br i1 %i.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTRcRjENCINvMB6_SB12_20sort_unstable_by_keymNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1R_10BpeTrainer16compute_alphabets0_0E0EB1X_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.j = add nuw nsw i64 %.sroa.01.0.i14, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTRcRjENCINvMB6_SB12_20sort_unstable_by_keymNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1R_10BpeTrainer16compute_alphabets0_0E0EB1X_.exit.thread, label %.lr.ph

.lr.ph18:                                         ; preds = %.preheader, %bb.d
  %i.k = phi i32 [ %i.m, %bb.d ], [ %i.c, %.preheader ]
  %.sroa.01.1.i17 = phi i64 [ %i.o, %bb.d ], [ 2, %.preheader ] ; 4 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.1.i17
  %5 = add nsw i64 %.sroa.01.1.i17, -1
  %6 = icmp samesign ult i64 %5, %1
  tail call void @llvm.assume(i1 %6)
  %.val = load ptr, ptr %i.l, align 8, !nonnull !3, !align !4, !noundef !3
  %i.m = load i32, ptr %.val, align 4, !range !6, !noundef !3 ; 2 uses
  %i.n = icmp samesign ult i32 %i.m, %i.k
  br i1 %i.n, label %bb.d, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTRcRjENCINvMB6_SB12_20sort_unstable_by_keymNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1R_10BpeTrainer16compute_alphabets0_0E0EB1X_.exit

bb.d:                                             ; preds = %.lr.ph18
  %i.o = add nuw nsw i64 %.sroa.01.1.i17, 1       ; 2 uses
  %exitcond25.not = icmp eq i64 %i.o, %1
  br i1 %exitcond25.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTRcRjENCINvMB6_SB12_20sort_unstable_by_keymNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1R_10BpeTrainer16compute_alphabets0_0E0EB1X_.exit.thread, label %.lr.ph18

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTRcRjENCINvMB6_SB12_20sort_unstable_by_keymNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1R_10BpeTrainer16compute_alphabets0_0E0EB1X_.exit: ; preds = %.lr.ph, %.lr.ph18, %.preheader12, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader12 ], [ 2, %.preheader ], [ %.sroa.01.1.i17, %.lr.ph18 ], [ %.sroa.01.0.i14, %.lr.ph ] ; 2 uses
  %i.p = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.p)
  %i.q = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.q, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTRcRjENCINvMB6_SB12_20sort_unstable_by_keymNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1R_10BpeTrainer16compute_alphabets0_0E0EB1X_.exit.thread, label %bb.e

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTRcRjENCINvMB6_SB12_20sort_unstable_by_keymNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1R_10BpeTrainer16compute_alphabets0_0E0EB1X_.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTRcRjENCINvMB6_SB12_20sort_unstable_by_keymNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1R_10BpeTrainer16compute_alphabets0_0E0EB1X_.exit
  br i1 %i.e, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE7reverseCs2JiOgHzbbc7_10tokenizers.exit

bb.e:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTRcRjENCINvMB6_SB12_20sort_unstable_by_keymNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1R_10BpeTrainer16compute_alphabets0_0E0EB1X_.exit
  %i.r = or i64 %1, 1
  %i.s = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = trunc nuw nsw i64 %i.s to i32
  %i.u = shl nuw nsw i32 %i.t, 1
  %i.v = xor i32 %i.u, 126
  tail call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortTRcRjENCINvMB8_SB17_20sort_unstable_by_keymNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1W_10BpeTrainer16compute_alphabets0_0E0EB22_(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, i32 noundef %i.v, ptr noalias noundef align 8 dereferenceable(8) %2)
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE7reverseCs2JiOgHzbbc7_10tokenizers.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE7reverseCs2JiOgHzbbc7_10tokenizers.exit.loopexit.unr-lcssa: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i
  %i.w = and i64 %1, 2
  %lcmp.mod.not = icmp eq i64 %i.w, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE7reverseCs2JiOgHzbbc7_10tokenizers.exit, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i.epil.preheader

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i.epil.preheader: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE7reverseCs2JiOgHzbbc7_10tokenizers.exit.loopexit.unr-lcssa, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i.i
  %.sroa.0.016.i.i.epil.init = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i.i ], [ %i.an, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE7reverseCs2JiOgHzbbc7_10tokenizers.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod48 = trunc i64 %i.ab to i1
  tail call void @llvm.assume(i1 %lcmp.mod48)
  %i.x = xor i64 %.sroa.0.016.i.i.epil.init, -1
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016.i.i.epil.init ; 2 uses
  %i.z = getelementptr [16 x i8], ptr %i.ac, i64 %i.x ; 2 uses
  %i.aa = load <2 x ptr>, ptr %i.y, align 8, !alias.scope !47, !noalias !48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 16, i1 false), !alias.scope !49
  store <2 x ptr> %i.aa, ptr %i.z, align 8, !alias.scope !50, !noalias !51
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE7reverseCs2JiOgHzbbc7_10tokenizers.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE7reverseCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i.epil.preheader, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE7reverseCs2JiOgHzbbc7_10tokenizers.exit.loopexit.unr-lcssa, %bb.a, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTRcRjENCINvMB6_SB12_20sort_unstable_by_keymNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1R_10BpeTrainer16compute_alphabets0_0E0EB1X_.exit.thread, %bb.e
  ret void

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTRcRjENCINvMB6_SB12_20sort_unstable_by_keymNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1R_10BpeTrainer16compute_alphabets0_0E0EB1X_.exit.thread
  %i.ab = lshr i64 %1, 1                          ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1 ; 3 uses
  %i.ad = icmp eq i64 %i.ab, 1
  br i1 %i.ad, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i.epil.preheader, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i.i.new

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i.i.new: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i.i
  %unroll_iter = and i64 %i.ab, 288230376151711742
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i.i.new
  %.sroa.0.016.i.i = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i.i.new ], [ %i.an, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i.i.new ], [ %niter.next.1, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i ]
  %i.ae = xor i64 %.sroa.0.016.i.i, -1
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016.i.i ; 2 uses
  %i.ag = getelementptr [16 x i8], ptr %i.ac, i64 %i.ae ; 2 uses
  %i.ah = load <2 x ptr>, ptr %i.af, align 8, !alias.scope !47, !noalias !48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i64 16, i1 false), !alias.scope !49
  store <2 x ptr> %i.ah, ptr %i.ag, align 8, !alias.scope !50, !noalias !51
  %i.ai = xor i64 %.sroa.0.016.i.i, -2
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %i.al = getelementptr [16 x i8], ptr %i.ac, i64 %i.ai ; 2 uses
  %i.am = load <2 x ptr>, ptr %i.ak, align 8, !alias.scope !47, !noalias !48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %i.al, i64 16, i1 false), !alias.scope !49
  store <2 x ptr> %i.am, ptr %i.al, align 8, !alias.scope !50, !noalias !51
  %i.an = add nuw nsw i64 %.sroa.0.016.i.i, 2     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE7reverseCs2JiOgHzbbc7_10tokenizers.exit.loopexit.unr-lcssa, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRcRjE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvMNtB19_5sliceSB14_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2k_14UnigramTrainer8finalizes_0E0EB2q_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 36028797018963968) %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvMNtB19_5sliceSB14_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2k_14UnigramTrainer8finalizes_0E0EB2q_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b)
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.e
  %i.j = tail call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvMNtB19_5sliceSB14_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2k_14UnigramTrainer8finalizes_0E0EB2q_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b)
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.e
  %i.m = tail call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvMNtB19_5sliceSB14_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2k_14UnigramTrainer8finalizes_0E0EB2q_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %i.n = getelementptr i8, ptr %.sroa.0.0, i64 24
  %.sroa.0.0.val13 = load double, ptr %i.n, align 8, !noundef !3 ; 4 uses
  %i.o = getelementptr i8, ptr %.sroa.04.0, i64 24
  %.sroa.04.0.val14 = load double, ptr %i.o, align 8, !noundef !3 ; 4 uses
  %brmerge.not.i = fcmp uno double %.sroa.04.0.val14, %.sroa.0.0.val13
  br i1 %brmerge.not.i, label %bb.d, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit, !prof !7

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #22
  unreachable

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit: ; preds = %bb.c
  %.mux.i = fcmp olt double %.sroa.04.0.val14, %.sroa.0.0.val13 ; 2 uses
  %i.p = getelementptr i8, ptr %.sroa.08.0, i64 24
  %.sroa.08.0.val12 = load double, ptr %i.p, align 8, !noundef !3 ; 4 uses
  %brmerge.not.i15 = fcmp uno double %.sroa.08.0.val12, %.sroa.0.0.val13
  br i1 %brmerge.not.i15, label %bb.e, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit17, !prof !7

bb.e:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #22
  unreachable

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit17: ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit
  %.mux.i16 = fcmp olt double %.sroa.08.0.val12, %.sroa.0.0.val13
  %i.q = xor i1 %.mux.i, %.mux.i16
  br i1 %i.q, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3TNtNtCscdodAO9FK5_5alloc6string6StringdENCINvMNtB14_5sliceSBZ_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2e_14UnigramTrainer8finalizes_0E0EB2k_.exit, label %bb.f

bb.f:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit17
  %brmerge.not.i18 = fcmp uno double %.sroa.08.0.val12, %.sroa.04.0.val14
  br i1 %brmerge.not.i18, label %bb.g, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit20, !prof !7

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #22
  unreachable

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit20: ; preds = %bb.f
  %.mux.i19 = fcmp olt double %.sroa.08.0.val12, %.sroa.04.0.val14
  %i.r = xor i1 %.mux.i, %.mux.i19
  %..i = select i1 %i.r, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3TNtNtCscdodAO9FK5_5alloc6string6StringdENCINvMNtB14_5sliceSBZ_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2e_14UnigramTrainer8finalizes_0E0EB2k_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3TNtNtCscdodAO9FK5_5alloc6string6StringdENCINvMNtB14_5sliceSBZ_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2e_14UnigramTrainer8finalizes_0E0EB2k_.exit: ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit17, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit20
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit17 ], [ %..i, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit20 ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB8_SB14_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2t_9WordPieceNtNtB2x_9tokenizer5Model4save0E0EB2x_(ptr nofree noundef nonnull readonly %0, ptr nofree noundef nonnull readonly %1, ptr nofree noundef nonnull readonly %2, i64 noundef range(i64 0, 72057594037927936) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3TRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB8_SBZ_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2n_9WordPieceNtNtB2r_9tokenizer5Model4save0E0EB2r_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB8_SB14_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2t_9WordPieceNtNtB2x_9tokenizer5Model4save0E0EB2x_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b)
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.e
  %i.j = tail call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB8_SB14_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2t_9WordPieceNtNtB2x_9tokenizer5Model4save0E0EB2x_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b)
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.e
  %i.m = tail call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB8_SB14_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2t_9WordPieceNtNtB2x_9tokenizer5Model4save0E0EB2x_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3TRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB8_SBZ_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2n_9WordPieceNtNtB2r_9tokenizer5Model4save0E0EB2r_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3TRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB8_SBZ_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2n_9WordPieceNtNtB2r_9tokenizer5Model4save0E0EB2r_.exit: ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %i.n = getelementptr i8, ptr %.sroa.0.0, i64 8
  %.sroa.0.0.val13 = load ptr, ptr %i.n, align 8, !nonnull !3, !align !4, !noundef !3
  %i.o = getelementptr i8, ptr %.sroa.04.0, i64 8
  %.sroa.04.0.val14 = load ptr, ptr %i.o, align 8, !nonnull !3, !align !4, !noundef !3
  %i.p = load i32, ptr %.sroa.0.0.val13, align 4, !noundef !3 ; 2 uses
  %i.q = load i32, ptr %.sroa.04.0.val14, align 4, !noundef !3 ; 2 uses
  %i.r = icmp ult i32 %i.p, %i.q                  ; 2 uses
  %i.s = getelementptr i8, ptr %.sroa.08.0, i64 8
  %.sroa.08.0.val12 = load ptr, ptr %i.s, align 8, !nonnull !3, !align !4, !noundef !3
  %i.t = load i32, ptr %.sroa.08.0.val12, align 4, !noundef !3 ; 2 uses
  %i.u = icmp ult i32 %i.p, %i.t
  %i.v = xor i1 %i.r, %i.u
  %i.w = icmp ult i32 %i.q, %i.t
  %i.x = xor i1 %i.r, %i.w
  %..i = select i1 %i.x, ptr %.sroa.08.0, ptr %.sroa.04.0
  %.sroa.0.0.i = select i1 %i.v, ptr %.sroa.0.0, ptr %..i
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1a_5sliceSB14_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2m_16WordLevelTrainer8do_train0E0EB2s_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 72057594037927936) %3) unnamed_addr #3 {
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB1m_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2h_14UnigramTrainer21prune_sentence_piecess1_0E0EB2n_:bb.a

.lr.ph29:                                         ; preds = %bb.e, %bb.f
  %.sroa.0.0.i27 = phi ptr [ %.sroa.0.0.i, %bb.f ], [ %.sroa.0.0.i25, %bb.e ] ; 6 uses
  %.sroa.5.0.i26 = phi ptr [ %.sroa.0.0.i27, %bb.f ], [ %.sroa.0.08, %bb.e ] ; 3 uses
  %i.i = getelementptr i8, ptr %.sroa.5.0.i26, i64 -24
  %.val8.i = load double, ptr %i.i, align 8, !noundef !3 ; 2 uses
  %brmerge.not.i11.i = fcmp uno double %.val8.i, %.val9.i
  br i1 %brmerge.not.i11.i, label %bb.g, label %bb.h, !prof !7

bb.g:                                             ; preds = %.lr.ph29
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #22
          to label %.noexc.i unwind label %bb.i

.noexc.i:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %.lr.ph29
  %.mux.i12.i = fcmp olt double %.val8.i, %.val9.i
  br i1 %.mux.i12.i, label %bb.f, label %._crit_edge30

._crit_edge30:                                    ; preds = %bb.f, %bb.h, %bb.e
  %.sroa.5.0.i.lcssa = phi ptr [ %.sroa.0.08, %bb.e ], [ %.sroa.0.0.i27, %bb.f ], [ %.sroa.5.0.i26, %bb.h ]
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.e ], [ %0, %bb.f ], [ %.sroa.0.0.i27, %bb.h ]
  store i64 %i.f, ptr %.sroa.0.0.i.lcssa, align 8, !noalias !385
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.lcssa, i64 -8
  store double %.val9.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !385
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB23_14UnigramTrainer21prune_sentence_piecess1_0E0EB29_.exit

bb.i:                                             ; preds = %bb.g
  %i.j = landingpad { ptr, i32 }
          cleanup
  store i64 %i.f, ptr %.sroa.0.0.i27, align 8, !noalias !386
  %.sroa.5.0..sroa.0.0.lcssa7.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i26, i64 -8
  store double %.val9.i, ptr %.sroa.5.0..sroa.0.0.lcssa7.sroa_idx.i, align 8, !noalias !386
  resume { ptr, i32 } %i.j

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB23_14UnigramTrainer21prune_sentence_piecess1_0E0EB29_.exit: ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTjdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtBQ_14UnigramTrainer21prune_sentence_piecess1_0E0BW_.exit.i, %._crit_edge30
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.08, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.k, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSB1m_11sort_by_keyINtNtBa_3cmp7ReverseB1m_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2N_14UnigramTrainer25make_seed_sentence_piecess2_0E0EB2T_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 384307168202282326) %1, i64 noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %3) unnamed_addr #0 {
bb.a:
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %1
  %.not4 = icmp samesign eq i64 %2, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.d, %.lr.ph ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  tail call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyINtNtBa_3cmp7ReverseB18_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2z_14UnigramTrainer25make_seed_sentence_piecess2_0E0EB2F_(ptr noundef %0, ptr noundef %.sroa.0.05)
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.d, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB1m_11sort_by_keyINtNtBa_3cmp7ReverseB1m_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2L_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2R_(ptr noalias nofree noundef nonnull align 4 captures(address) %0, i64 noundef range(i64 0, 1152921504606846976) %1, i64 noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %3) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1
  %.not4 = icmp samesign eq i64 %2, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyINtNtBa_3cmp7ReverseB18_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2x_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2D_.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyINtNtBa_3cmp7ReverseB18_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2x_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2D_.exit
  %.sroa.0.05 = phi ptr [ %i.u, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyINtNtBa_3cmp7ReverseB18_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2x_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2D_.exit ], [ %i.c, %.lr.ph.preheader ] ; 5 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -8 ; 4 uses
  %.val11.i = load i64, ptr %.sroa.0.05, align 4  ; 3 uses
  %i.e = trunc i64 %.val11.i to i32               ; 4 uses
  %i.f = lshr i64 %.val11.i, 32
  %i.g = trunc nuw i64 %i.f to i32                ; 2 uses
  %.val13.i = load i32, ptr %i.d, align 4, !noundef !3 ; 2 uses
  %i.h = getelementptr i8, ptr %.sroa.0.05, i64 -4
  %.val14.i = load i32, ptr %i.h, align 4, !range !6, !noundef !3
  %i.i = icmp eq i32 %.val13.i, %i.e
  %i.j = icmp ult i32 %.val13.i, %i.e
  %i.k = icmp samesign ult i32 %.val14.i, %i.g
  %.sroa.0.0.i.i.i.i = select i1 %i.i, i1 %i.k, i1 %i.j
  br i1 %.sroa.0.0.i.i.i.i, label %.preheader.preheader, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyINtNtBa_3cmp7ReverseB18_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2x_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2D_.exit

.preheader.preheader:                             ; preds = %.lr.ph
  %i.l = load i64, ptr %i.d, align 4
  store i64 %i.l, ptr %.sroa.0.05, align 4
  %i.m = icmp eq ptr %i.d, %0
  br i1 %i.m, label %._crit_edge10, label %.lr.ph9

.preheader:                                       ; preds = %.lr.ph9
  %i.n = load i64, ptr %i.p, align 4
  store i64 %i.n, ptr %.sroa.0.0.i8, align 4
  %i.o = icmp eq ptr %i.p, %0
  br i1 %i.o, label %._crit_edge10, label %.lr.ph9

.lr.ph9:                                          ; preds = %.preheader.preheader, %.preheader
  %.sroa.0.0.i8 = phi ptr [ %i.p, %.preheader ], [ %i.d, %.preheader.preheader ] ; 4 uses
  %i.p = getelementptr inbounds i8, ptr %.sroa.0.0.i8, i64 -8 ; 4 uses
  %.val9.i = load i32, ptr %i.p, align 4, !noundef !3 ; 2 uses
  %i.q = getelementptr i8, ptr %.sroa.0.0.i8, i64 -4
  %.val10.i = load i32, ptr %i.q, align 4, !range !6, !noundef !3
  %i.r = icmp eq i32 %.val9.i, %i.e
  %i.s = icmp ult i32 %.val9.i, %i.e
  %i.t = icmp samesign ult i32 %.val10.i, %i.g
  %.sroa.0.0.i.i.i15.i = select i1 %i.r, i1 %i.t, i1 %i.s
  br i1 %.sroa.0.0.i.i.i15.i, label %.preheader, label %._crit_edge10

._crit_edge10:                                    ; preds = %.preheader, %.lr.ph9, %.preheader.preheader
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %.preheader.preheader ], [ %0, %.preheader ], [ %.sroa.0.0.i8, %.lr.ph9 ]
  store i64 %.val11.i, ptr %.sroa.0.0.i.lcssa, align 4, !noalias !391
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyINtNtBa_3cmp7ReverseB18_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2x_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2D_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyINtNtBa_3cmp7ReverseB18_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2x_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2D_.exit: ; preds = %.lr.ph, %._crit_edge10
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.u, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvMNtB11_5sliceSBW_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2b_14UnigramTrainer8finalizes_0E0EB2h_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i1 noundef zeroext %4, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ak, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i122 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i127 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.ag, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ag ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.dm, %bb.ag ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.dk, %bb.ag ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvMNtB18_5sliceSB13_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2j_14UnigramTrainer8finalizes_0E0EB2p_.exit
  %.sroa.021.0 = phi i8 [ %i.au, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvMNtB18_5sliceSB13_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2j_14UnigramTrainer8finalizes_0E0EB2p_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvMNtB18_5sliceSB13_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2j_14UnigramTrainer8finalizes_0E0EB2p_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph81, label %._crit_edge

.lr.ph81:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.u

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 13 uses
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.09.0 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !413)
  %.not.i33 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvMNtB17_5sliceSB12_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2i_14UnigramTrainer8finalizes_0E0EB2o_.exit.i.thread125, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvMNtB17_5sliceSB12_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2i_14UnigramTrainer8finalizes_0E0EB2o_.exit.i.thread, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvMNtB17_5sliceSB12_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2i_14UnigramTrainer8finalizes_0E0EB2o_.exit.i, %bb.h
  br i1 %4, label %bb.s, label %bb.r

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCscdodAO9FK5_5alloc6string6StringdE7reverseCs2JiOgHzbbc7_10tokenizers.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr i8, ptr %i.o, i64 56
  %.val10.i = load double, ptr %i.q, align 8, !alias.scope !413, !noalias !414, !noundef !3 ; 4 uses
  %i.r = getelementptr i8, ptr %i.o, i64 24
  %.val11.i = load double, ptr %i.r, align 8, !alias.scope !413, !noalias !414, !noundef !3 ; 2 uses
  %brmerge.not.i44 = fcmp uno double %.val11.i, %.val10.i
  br i1 %brmerge.not.i44, label %bb.l, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit46, !prof !7

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #22, !noalias !415
  unreachable

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit46: ; preds = %bb.k
  %.mux.i45 = fcmp uge double %.val11.i, %.val10.i ; 2 uses
  %.not88 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %.mux.i45, label %.preheader56, label %.preheader

.preheader56:                                     ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit46
  br i1 %.not88, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvMNtB17_5sliceSB12_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2i_14UnigramTrainer8finalizes_0E0EB2o_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit46
  br i1 %.not88, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvMNtB17_5sliceSB12_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2i_14UnigramTrainer8finalizes_0E0EB2o_.exit.i.thread125, label %.lr.ph76

.lr.ph:                                           ; preds = %.preheader56, %bb.n
  %.val9.i = phi double [ %.val8.i, %bb.n ], [ %.val10.i, %.preheader56 ] ; 2 uses
  %.sroa.01.0.i.i73 = phi i64 [ %i.u, %bb.n ], [ 2, %.preheader56 ] ; 4 uses
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.01.0.i.i73
  %6 = add nsw i64 %.sroa.01.0.i.i73, -1
  %7 = icmp ult i64 %6, %i.n
  tail call void @llvm.assume(i1 %7)
  %i.t = getelementptr i8, ptr %i.s, i64 24
  %.val8.i = load double, ptr %i.t, align 8, !alias.scope !413, !noalias !414, !noundef !3 ; 3 uses
  %brmerge.not.i41 = fcmp uno double %.val9.i, %.val8.i
  br i1 %brmerge.not.i41, label %bb.m, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit43, !prof !7

bb.m:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #22, !noalias !415
  unreachable

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit43: ; preds = %.lr.ph
  %.mux.i42 = fcmp olt double %.val9.i, %.val8.i
  br i1 %.mux.i42, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvMNtB17_5sliceSB12_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2i_14UnigramTrainer8finalizes_0E0EB2o_.exit.i, label %bb.n

bb.n:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit43
  %i.u = add nuw i64 %.sroa.01.0.i.i73, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvMNtB17_5sliceSB12_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2i_14UnigramTrainer8finalizes_0E0EB2o_.exit.i, label %.lr.ph

.lr.ph76:                                         ; preds = %.preheader, %bb.p
  %.val7.i = phi double [ %.val.i, %bb.p ], [ %.val10.i, %.preheader ] ; 2 uses
  %.sroa.01.1.i.i75 = phi i64 [ %i.x, %bb.p ], [ 2, %.preheader ] ; 4 uses
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.01.1.i.i75
  %8 = add nsw i64 %.sroa.01.1.i.i75, -1
  %9 = icmp ult i64 %8, %i.n
  tail call void @llvm.assume(i1 %9)
  %i.w = getelementptr i8, ptr %i.v, i64 24
  %.val.i = load double, ptr %i.w, align 8, !alias.scope !413, !noalias !414, !noundef !3 ; 3 uses
  %brmerge.not.i = fcmp uno double %.val7.i, %.val.i
  br i1 %brmerge.not.i, label %bb.o, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit, !prof !7

bb.o:                                             ; preds = %.lr.ph76
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #22, !noalias !415
  unreachable

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit: ; preds = %.lr.ph76
  %.mux.i = fcmp olt double %.val7.i, %.val.i
  br i1 %.mux.i, label %bb.p, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvMNtB17_5sliceSB12_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2i_14UnigramTrainer8finalizes_0E0EB2o_.exit.i

bb.p:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit
  %i.x = add nuw i64 %.sroa.01.1.i.i75, 1         ; 2 uses
  %exitcond101.not = icmp eq i64 %i.x, %i.n
  br i1 %exitcond101.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvMNtB17_5sliceSB12_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2i_14UnigramTrainer8finalizes_0E0EB2o_.exit.i, label %.lr.ph76

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvMNtB17_5sliceSB12_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2i_14UnigramTrainer8finalizes_0E0EB2o_.exit.i: ; preds = %bb.p, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit, %bb.n, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit43
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.0.i.i73, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit43 ], [ %i.n, %bb.n ], [ %.sroa.01.1.i.i75, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit ], [ %i.n, %bb.p ] ; 5 uses
  %i.y = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.y)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.q

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvMNtB17_5sliceSB12_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2i_14UnigramTrainer8finalizes_0E0EB2o_.exit.i.thread125: ; preds = %.preheader
  br i1 %.not5.i127, label %bb.i, label %.lr.ph.preheader.i.i

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvMNtB17_5sliceSB12_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2i_14UnigramTrainer8finalizes_0E0EB2o_.exit.i.thread: ; preds = %.preheader56
  br i1 %.not5.i122, label %bb.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCscdodAO9FK5_5alloc6string6StringdE7reverseCs2JiOgHzbbc7_10tokenizers.exit

bb.q:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvMNtB17_5sliceSB12_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2i_14UnigramTrainer8finalizes_0E0EB2o_.exit.i
  %i.z = lshr i64 %.sroa.0.0.i.i, 1               ; 2 uses
  %.not.i.i = icmp eq i64 %i.z, 0
  %or.cond = or i1 %.mux.i45, %.not.i.i
  br i1 %or.cond, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCscdodAO9FK5_5alloc6string6StringdE7reverseCs2JiOgHzbbc7_10tokenizers.exit, label %.lr.ph.preheader.i.i

bb.r:                                             ; preds = %bb.i
  %.sroa.0.0.i40 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 288230376151711744) %i.n, i64 %.sroa.01.0)
  %i.aa = shl nuw nsw i64 %.sroa.0.0.i40, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvMNtB18_5sliceSB13_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2j_14UnigramTrainer8finalizes_0E0EB2p_.exit

bb.s:                                             ; preds = %bb.i
  %.sroa.0.0.i39 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 288230376151711744) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvMNtB1a_5sliceSB15_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2l_14UnigramTrainer8finalizes_0E0EB2r_(ptr noalias noundef nonnull align 8 %i.o, i64 noundef %.sroa.0.0.i39, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !396
  %i.ab = shl nuw nsw i64 %.sroa.0.0.i39, 1
  %i.ac = or disjoint i64 %i.ab, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvMNtB18_5sliceSB13_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2j_14UnigramTrainer8finalizes_0E0EB2p_.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCscdodAO9FK5_5alloc6string6StringdE7reverseCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingTNtNtCscdodAO9FK5_5alloc6string6StringdEECs2JiOgHzbbc7_10tokenizers.exit.i.i, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvMNtB17_5sliceSB12_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2i_14UnigramTrainer8finalizes_0E0EB2o_.exit.i.thread, %bb.j, %bb.q
  %.sroa.0.0.i.i5154 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvMNtB17_5sliceSB12_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2i_14UnigramTrainer8finalizes_0E0EB2o_.exit.i.thread ], [ %.sroa.0.0.i.i123130134, %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingTNtNtCscdodAO9FK5_5alloc6string6StringdEECs2JiOgHzbbc7_10tokenizers.exit.i.i ]
  %i.ad = shl nuw nsw i64 %.sroa.0.0.i.i5154, 1
  %i.ae = or disjoint i64 %i.ad, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvMNtB18_5sliceSB13_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2j_14UnigramTrainer8finalizes_0E0EB2p_.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.q, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvMNtB17_5sliceSB12_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2i_14UnigramTrainer8finalizes_0E0EB2o_.exit.i.thread125
  %i.af = phi i64 [ %i.z, %bb.q ], [ 1, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvMNtB17_5sliceSB12_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2i_14UnigramTrainer8finalizes_0E0EB2o_.exit.i.thread125 ]
  %.sroa.0.0.i.i123130134 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvMNtB17_5sliceSB12_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2i_14UnigramTrainer8finalizes_0E0EB2o_.exit.i.thread125 ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.0.0.i.i123130134
  br label %.lr.ph.i.i38

.lr.ph.i.i38:                                     ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingTNtNtCscdodAO9FK5_5alloc6string6StringdEECs2JiOgHzbbc7_10tokenizers.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.al, %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingTNtNtCscdodAO9FK5_5alloc6string6StringdEECs2JiOgHzbbc7_10tokenizers.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ah = xor i64 %.sroa.0.017.i.i, -1
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.0.017.i.i
  %i.aj = getelementptr [32 x i8], ptr %i.ag, i64 %i.ah
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull %i.ai, ptr noundef nonnull %i.aj, i64 noundef 4)
          to label %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingTNtNtCscdodAO9FK5_5alloc6string6StringdEECs2JiOgHzbbc7_10tokenizers.exit.i.i unwind label %bb.t, !noalias !414

bb.t:                                             ; preds = %.lr.ph.i.i38
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #23, !noalias !414
  unreachable

_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingTNtNtCscdodAO9FK5_5alloc6string6StringdEECs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %.lr.ph.i.i38
  %i.al = add nuw nsw i64 %.sroa.0.017.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.al, %i.af
  br i1 %exitcond.not.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCscdodAO9FK5_5alloc6string6StringdE7reverseCs2JiOgHzbbc7_10tokenizers.exit, label %.lr.ph.i.i38

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvMNtB18_5sliceSB13_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2j_14UnigramTrainer8finalizes_0E0EB2p_.exit: ; preds = %bb.r, %bb.s, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCscdodAO9FK5_5alloc6string6StringdE7reverseCs2JiOgHzbbc7_10tokenizers.exit
  %.sroa.0.0.i34 = phi i64 [ %i.ae, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCscdodAO9FK5_5alloc6string6StringdE7reverseCs2JiOgHzbbc7_10tokenizers.exit ], [ %i.ac, %bb.s ], [ %i.aa, %bb.r ] ; 2 uses
  %i.am = lshr i64 %.sroa.023.0, 1
  %i.an = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.ao = sub nsw i64 %factor, %i.am
  %i.ap = add nuw nsw i64 %i.an, %factor
  %i.aq = mul i64 %i.ao, %.sroa.0.0
  %i.ar = mul i64 %i.ap, %.sroa.0.0
  %i.as = xor i64 %i.ar, %i.aq
  %i.at = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.as, i1 false)
  %i.au = trunc nuw nsw i64 %i.at to i8
  br label %bb.g

bb.u:                                             ; preds = %.lr.ph81, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvMNtB1b_5sliceSB16_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2m_14UnigramTrainer8finalizes_0E0EB2s_.exit
  %.sroa.02.180 = phi i64 [ %.sroa.02.0, %.lr.ph81 ], [ %i.av, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvMNtB1b_5sliceSB16_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2m_14UnigramTrainer8finalizes_0E0EB2s_.exit ] ; 2 uses
  %.sroa.023.179 = phi i64 [ %.sroa.023.0, %.lr.ph81 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvMNtB1b_5sliceSB16_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2m_14UnigramTrainer8finalizes_0E0EB2s_.exit ] ; 4 uses
  %i.av = add i64 %.sroa.02.180, -1               ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !noundef !3
  %.not29 = icmp ult i8 %i.ax, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.v

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvMNtB1b_5sliceSB16_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2m_14UnigramTrainer8finalizes_0E0EB2s_.exit, %bb.u, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.179, %bb.u ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvMNtB1b_5sliceSB16_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2m_14UnigramTrainer8finalizes_0E0EB2s_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.180, %bb.u ], [ 1, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvMNtB1b_5sliceSB16_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2m_14UnigramTrainer8finalizes_0E0EB2s_.exit ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.az, align 1
  br i1 %i.k, label %bb.ag, label %bb.ah

bb.v:                                             ; preds = %bb.u
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.av
  %i.bb = load i64, ptr %i.ba, align 8, !noundef !3 ; 3 uses
  %i.bc = lshr i64 %i.bb, 1                       ; 8 uses
  %i.bd = lshr i64 %.sroa.023.179, 1              ; 6 uses
  %i.be = add nuw i64 %i.bc, %i.bd                ; 4 uses
  %i.bf = sub i64 %.sroa.09.0, %i.be
  %i.bg = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.bf ; 6 uses
  %i.bh = icmp samesign ugt i64 %i.be, %3
  %i.bi = trunc i64 %.sroa.023.179 to i1
  %i.bj = or i64 %i.bb, %.sroa.023.179
  %i.bk = trunc i64 %i.bj to i1
  %or.cond3.i = or i1 %i.bh, %i.bk
  br i1 %or.cond3.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bl = trunc i64 %i.bb to i1
  br i1 %i.bl, label %bb.y, label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.bm = shl nuw nsw i64 %i.be, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvMNtB1b_5sliceSB16_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2m_14UnigramTrainer8finalizes_0E0EB2s_.exit

bb.y:                                             ; preds = %bb.z, %bb.w
  br i1 %i.bi, label %bb.aa, label %bb.af

bb.z:                                             ; preds = %bb.w
  %i.bn = or i64 %i.bc, 1
  %i.bo = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.bn, i1 true)
  %i.bp = trunc nuw nsw i64 %i.bo to i32
  %i.bq = shl nuw nsw i32 %i.bp, 1
  %i.br = xor i32 %i.bq, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvMNtB1a_5sliceSB15_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2l_14UnigramTrainer8finalizes_0E0EB2r_(ptr noalias noundef nonnull align 8 %i.bg, i64 noundef range(i64 0, 288230376151711744) %i.bc, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.br, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !397
  br label %bb.y

bb.aa:                                            ; preds = %bb.af, %bb.y
  tail call void @llvm.experimental.noalias.scope.decl(metadata !416)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !417)
  %i.bs = icmp eq i64 %i.bc, 0
  %i.bt = icmp eq i64 %i.bd, 0
  %or.cond.i = or i1 %i.bt, %i.bs
  br i1 %or.cond.i, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvMNtB12_5sliceSBX_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2c_14UnigramTrainer8finalizes_0E0EB2i_.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.sroa.0.0.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.bd, i64 range(i64 0, -9223372036854775808) %i.bc) ; 2 uses
  %i.bu = icmp samesign ult i64 %3, %.sroa.0.0.i.i35
  br i1 %i.bu, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvMNtB12_5sliceSBX_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2c_14UnigramTrainer8finalizes_0E0EB2i_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.ab
  %i.bv = getelementptr inbounds nuw [32 x i8], ptr %i.bg, i64 %i.bc ; 3 uses
  %.not.i36 = icmp samesign ugt i64 %i.bc, %i.bd  ; 2 uses
  %spec.select.i = select i1 %.not.i36, ptr %i.bv, ptr %i.bg
  %i.bw = shl nuw nsw i64 %.sroa.0.0.i.i35, 5     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.bw, i1 false), !alias.scope !418
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 %i.bw ; 4 uses
  br i1 %.not.i36, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit.i.i
  %.sroa.13.0.i = phi ptr [ %i.cf, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit.i.i ], [ %i.bv, %.critedge.i ] ; 3 uses
  %.sroa.7.0.i = phi ptr [ %i.ch, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit.i.i ], [ %i.bx, %.critedge.i ] ; 3 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.cc, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit.i.i ], [ %i.m, %.critedge.i ]
  %i.by = getelementptr i8, ptr %.sroa.7.0.i, i64 -8
  %.val.i.i = load double, ptr %i.by, align 8, !alias.scope !417, !noalias !419, !noundef !3 ; 2 uses
  %i.bz = getelementptr i8, ptr %.sroa.13.0.i, i64 -8
  %.val10.i.i = load double, ptr %i.bz, align 8, !alias.scope !416, !noalias !420, !noundef !3 ; 2 uses
  %brmerge.not.i.i.i = fcmp uno double %.val10.i.i, %.val.i.i
  br i1 %brmerge.not.i.i.i, label %bb.ac, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit.i.i, !prof !7

bb.ac:                                            ; preds = %.preheader.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #22
          to label %.noexc.i unwind label %bb.ae, !noalias !418

.noexc.i:                                         ; preds = %bb.ac
  unreachable

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTNtNtB7_6string6StringdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1a_14UnigramTrainer8finalizes_0E0B1g_.exit.i.i: ; preds = %.preheader.i
  %i.ca = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -32 ; 2 uses
  %i.cb = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -32 ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -32 ; 2 uses
  %.mux.i.i.i = fcmp olt double %.val10.i.i, %.val.i.i ; 3 uses
  %..i.i = select i1 %.mux.i.i.i, ptr %i.ca, ptr %i.cb
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cc, ptr noundef nonnull align 8 dereferenceable(32) %..i.i, i64 32, i1 false), !alias.scope !418, !noalias !421
  %i.cd = xor i1 %.mux.i.i.i, true
  %i.ce = zext i1 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [32 x i8], ptr %i.ca, i64 %i.ce ; 3 uses
  %i.cg = zext i1 %.mux.i.i.i to i64
  %i.ch = getelementptr inbounds nuw [32 x i8], ptr %i.cb, i64 %i.cg ; 3 uses
  %i.ci = icmp eq ptr %i.cf, %i.bg
end_hunk_1
begin_hunk_2_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB12_5sliceSBW_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2d_16WordLevelTrainer8do_train0E0EB2j_:bb.a
  %i.eu = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8, !noalias !464, !nonnull !3, !noundef !3
  %i.ew = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16
  %i.ex = load i64, ptr %i.ew, align 8, !noalias !464, !noundef !3 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.val11.i.i, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8, !noalias !464, !nonnull !3, !noundef !3
  %i.fa = getelementptr inbounds nuw i8, ptr %.val11.i.i, i64 16
  %i.fb = load i64, ptr %i.fa, align 8, !noalias !464, !noundef !3 ; 2 uses
  %spec.store.select.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ex, i64 %i.fb)
  %i.fc = tail call i32 @memcmp(ptr nonnull %i.ev, ptr nonnull %i.ez, i64 %spec.store.select.i.i.i.i), !noalias !464 ; 2 uses
  %i.fd = sext i32 %i.fc to i64
  %i.fe = icmp eq i32 %i.fc, 0
  %i.ff = sub i64 %i.ex, %i.fb
  %spec.select.i.i.i.i = select i1 %i.fe, i64 %i.ff, i64 %i.fd
  %i.fg = icmp slt i64 %spec.select.i.i.i.i, 0
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit.i.i

switch.lookup.i.i.i.i:                            ; preds = %.preheader.i
  %i.fh = icmp ult i64 %i.et, %i.es
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit.i.i

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit.i.i: ; preds = %switch.lookup.i.i.i.i, %bb.z
  %.sroa.0.0.i.i.i.i = phi i1 [ %i.fg, %bb.z ], [ %i.fh, %switch.lookup.i.i.i.i ] ; 3 uses
  %..i.i = select i1 %.sroa.0.0.i.i.i.i, ptr %i.en, ptr %i.eo
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ep, ptr noundef nonnull align 8 dereferenceable(16) %..i.i, i64 16, i1 false), !alias.scope !461, !noalias !465
  %i.fi = xor i1 %.sroa.0.0.i.i.i.i, true
  %i.fj = zext i1 %i.fi to i64
  %i.fk = getelementptr inbounds nuw [16 x i8], ptr %i.en, i64 %i.fj ; 3 uses
  %i.fl = zext i1 %.sroa.0.0.i.i.i.i to i64
  %i.fm = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %i.fl ; 3 uses
  %i.fn = icmp eq ptr %i.fk, %i.dt
  %i.fo = icmp eq ptr %i.fm, %2
  %or.cond.i.i = select i1 %i.fn, i1 true, i1 %i.fo
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateTRNtNtCscdodAO9FK5_5alloc6string6StringRyEE10merge_downNCINvMNtB1g_5sliceSB1a_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2F_16WordLevelTrainer8do_train0E0EB2L_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %bb.ab
  %i.fp = phi ptr [ %i.gm, %bb.ab ], [ %i.dt, %.critedge.i ] ; 2 uses
  %.sroa.0.04.i.i = phi ptr [ %i.gl, %bb.ab ], [ %i.ei, %.critedge.i ] ; 5 uses
  %i.fq = phi ptr [ %i.gk, %bb.ab ], [ %2, %.critedge.i ] ; 4 uses
  %i.fr = getelementptr i8, ptr %.sroa.0.04.i.i, i64 8
  %.sroa.0.0.val6.i.i = load ptr, ptr %i.fr, align 8, !alias.scope !459, !noalias !466, !nonnull !3, !align !5, !noundef !3
  %i.fs = getelementptr i8, ptr %i.fq, i64 8
  %.val7.i.i = load ptr, ptr %i.fs, align 8, !alias.scope !460, !noalias !467, !nonnull !3, !align !5, !noundef !3
  %i.ft = load i64, ptr %.sroa.0.0.val6.i.i, align 8, !noalias !468, !noundef !3 ; 2 uses
  %i.fu = load i64, ptr %.val7.i.i, align 8, !noalias !468, !noundef !3 ; 2 uses
  %.not.i.i.i19.i = icmp eq i64 %i.ft, %i.fu
  br i1 %.not.i.i.i19.i, label %.split.i.i, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit.i20.i

.split.i.i:                                       ; preds = %.lr.ph.i.i
  %.val.i22.i = load ptr, ptr %i.fq, align 8, !alias.scope !460, !noalias !467, !nonnull !3, !noundef !3 ; 2 uses
  %.sroa.0.0.val.i.i = load ptr, ptr %.sroa.0.04.i.i, align 8, !alias.scope !459, !noalias !466, !nonnull !3, !noundef !3 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i.i, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !noalias !468, !nonnull !3, !noundef !3
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i.i, i64 16
  %i.fy = load i64, ptr %i.fx, align 8, !noalias !468, !noundef !3 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.val.i22.i, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8, !noalias !468, !nonnull !3, !noundef !3
  %i.gb = getelementptr inbounds nuw i8, ptr %.val.i22.i, i64 16
  %i.gc = load i64, ptr %i.gb, align 8, !noalias !468, !noundef !3 ; 2 uses
  %spec.store.select.i.i.i23.i = tail call i64 @llvm.umin.i64(i64 %i.fy, i64 %i.gc)
  %i.gd = tail call i32 @memcmp(ptr nonnull %i.fw, ptr nonnull %i.ga, i64 %spec.store.select.i.i.i23.i), !noalias !468 ; 2 uses
  %i.ge = sext i32 %i.gd to i64
  %i.gf = icmp eq i32 %i.gd, 0
  %i.gg = sub i64 %i.fy, %i.gc
  %spec.select.i.i.i24.i = select i1 %i.gf, i64 %i.gg, i64 %i.ge
  %i.gh = icmp slt i64 %spec.select.i.i.i24.i, 0
  br i1 %i.gh, label %bb.ab, label %bb.aa

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit.i20.i: ; preds = %.lr.ph.i.i
  %i.gi = icmp ult i64 %i.fu, %i.ft
  br i1 %i.gi, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit.i20.i, %.split.i.i
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit.i20.i, %.split.i.i
  %i.gj = phi i64 [ 1, %bb.aa ], [ 0, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit.i20.i ], [ 0, %.split.i.i ]
  %.sroa.0.0.i.i2.i.i = phi i64 [ 0, %bb.aa ], [ 1, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit.i20.i ], [ 1, %.split.i.i ]
  %.sroa.05.0.i.i = phi ptr [ %i.fq, %bb.aa ], [ %.sroa.0.04.i.i, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit.i20.i ], [ %.sroa.0.04.i.i, %.split.i.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fp, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.0.i.i, i64 16, i1 false), !alias.scope !461, !noalias !469
  %i.gk = getelementptr inbounds nuw [16 x i8], ptr %i.fq, i64 %i.gj ; 3 uses
  %i.gl = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.04.i.i, i64 %.sroa.0.0.i.i2.i.i ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fp, i64 16 ; 2 uses
  %i.gn = icmp ne ptr %i.gk, %i.ek
  %i.go = icmp ne ptr %i.gl, %i.m
  %or.cond.i21.i = select i1 %i.gn, i1 %i.go, i1 false
  br i1 %or.cond.i21.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateTRNtNtCscdodAO9FK5_5alloc6string6StringRyEE10merge_downNCINvMNtB1g_5sliceSB1a_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2F_16WordLevelTrainer8do_train0E0EB2L_.exit.i

_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateTRNtNtCscdodAO9FK5_5alloc6string6StringRyEE10merge_downNCINvMNtB1g_5sliceSB1a_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2F_16WordLevelTrainer8do_train0E0EB2L_.exit.i: ; preds = %bb.ab, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit.i.i
  %.sroa.13.1.i = phi ptr [ %i.fk, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit.i.i ], [ %i.gm, %bb.ab ]
  %.sroa.7.0.i = phi ptr [ %i.fm, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit.i.i ], [ %i.ek, %bb.ab ]
  %.sroa.0.1.i = phi ptr [ %2, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTRNtNtB7_6string6StringRyE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB1c_16WordLevelTrainer8do_train0E0B1i_.exit.i.i ], [ %i.gk, %bb.ab ] ; 2 uses
  %i.gp = ptrtoint ptr %.sroa.7.0.i to i64
  %i.gq = ptrtoint ptr %.sroa.0.1.i to i64
  %i.gr = sub nuw i64 %i.gp, %i.gq
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.gr, i1 false), !alias.scope !461, !noalias !470
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB13_5sliceSBX_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2e_16WordLevelTrainer8do_train0E0EB2k_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB13_5sliceSBX_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2e_16WordLevelTrainer8do_train0E0EB2k_.exit: ; preds = %bb.x, %bb.y, %_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateTRNtNtCscdodAO9FK5_5alloc6string6StringRyEE10merge_downNCINvMNtB1g_5sliceSB1a_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2F_16WordLevelTrainer8do_train0E0EB2L_.exit.i
  %i.gs = shl nuw nsw i64 %i.dr, 1
  %i.gt = or disjoint i64 %i.gs, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1c_5sliceSB16_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2o_16WordLevelTrainer8do_train0E0EB2u_.exit

bb.ac:                                            ; preds = %bb.v
  %i.gu = getelementptr inbounds nuw [16 x i8], ptr %i.dt, i64 %i.dp
  %i.gv = or i64 %i.dq, 1
  %i.gw = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.gv, i1 true)
  %i.gx = trunc nuw nsw i64 %i.gw to i32
  %i.gy = shl nuw nsw i32 %i.gx, 1
  %i.gz = xor i32 %i.gy, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1b_5sliceSB15_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2n_16WordLevelTrainer8do_train0E0EB2t_(ptr noalias noundef nonnull align 8 %i.gu, i64 noundef range(i64 0, 576460752303423488) %i.dq, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.gz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !437
  br label %bb.x

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1c_5sliceSB16_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2o_16WordLevelTrainer8do_train0E0EB2u_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB13_5sliceSBX_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2e_16WordLevelTrainer8do_train0E0EB2k_.exit
  %.sroa.0.0.i = phi i64 [ %i.gt, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB13_5sliceSBX_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2e_16WordLevelTrainer8do_train0E0EB2k_.exit ], [ %i.dz, %bb.u ] ; 2 uses
  %i.ha = icmp ugt i64 %i.di, 1
  br i1 %i.ha, label %bb.r, label %._crit_edge

bb.ad:                                            ; preds = %._crit_edge
  %i.hb = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.hc = lshr i64 %.sroa.018.0, 1
  %i.hd = add nuw i64 %i.hc, %.sroa.09.0
  br label %bb.f

bb.ae:                                            ; preds = %._crit_edge
  %i.he = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.he, 0
  br i1 %.not31, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.hf = or i64 %1, 1
  %i.hg = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.hf, i1 true)
  %i.hh = trunc nuw nsw i64 %i.hg to i32
  %i.hi = shl nuw nsw i32 %i.hh, 1
  %i.hj = xor i32 %i.hi, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRNtNtCscdodAO9FK5_5alloc6string6StringRyENCINvMNtB1b_5sliceSB15_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB2n_16WordLevelTrainer8do_train0E0EB2t_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.hj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !437
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.a, %bb.ag
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortThciENCINvMNtCscdodAO9FK5_5alloc5sliceSBW_11sort_by_keyhNCNvMNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decomposeINtB1V_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i1 noundef zeroext %4, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i95 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i100 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.dr, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.dp, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runThciENCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyhNCNvMNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decomposeINtB23_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECs2JiOgHzbbc7_10tokenizers.exit
  %.sroa.021.0 = phi i8 [ %i.ax, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runThciENCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyhNCNvMNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decomposeINtB23_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECs2JiOgHzbbc7_10tokenizers.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runThciENCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyhNCNvMNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decomposeINtB23_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECs2JiOgHzbbc7_10tokenizers.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph64, label %._crit_edge

.lr.ph64:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 13 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 7 uses
  %.not.i33 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runThciENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyhNCNvMNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decomposeINtB22_14DecompositionsNtNtNtB8_3str4iter5CharsE12sort_pending0E0ECs2JiOgHzbbc7_10tokenizers.exit.i.thread98, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runThciENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyhNCNvMNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decomposeINtB22_14DecompositionsNtNtNtB8_3str4iter5CharsE12sort_pending0E0ECs2JiOgHzbbc7_10tokenizers.exit.i.thread, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runThciENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyhNCNvMNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decomposeINtB22_14DecompositionsNtNtNtB8_3str4iter5CharsE12sort_pending0E0ECs2JiOgHzbbc7_10tokenizers.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSThciE7reverseCs2JiOgHzbbc7_10tokenizers.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr i8, ptr %i.o, i64 20
  %.val10.i = load i8, ptr %i.q, align 4, !alias.scope !488, !noalias !489, !noundef !3 ; 3 uses
  %i.r = getelementptr i8, ptr %i.o, i64 4
  %.val11.i = load i8, ptr %i.r, align 4, !alias.scope !488, !noalias !489, !noundef !3
  %i.s = icmp uge i8 %.val10.i, %.val11.i         ; 2 uses
  %.not71 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.s, label %.preheader49, label %.preheader

.preheader49:                                     ; preds = %bb.k
  br i1 %.not71, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runThciENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyhNCNvMNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decomposeINtB22_14DecompositionsNtNtNtB8_3str4iter5CharsE12sort_pending0E0ECs2JiOgHzbbc7_10tokenizers.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not71, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runThciENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyhNCNvMNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decomposeINtB22_14DecompositionsNtNtNtB8_3str4iter5CharsE12sort_pending0E0ECs2JiOgHzbbc7_10tokenizers.exit.i.thread98, label %.lr.ph58

.lr.ph:                                           ; preds = %.preheader49, %bb.l
  %.val9.i = phi i8 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader49 ]
  %.sroa.01.0.i.i54 = phi i64 [ %i.w, %bb.l ], [ 2, %.preheader49 ] ; 4 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.01.0.i.i54
  %6 = add nsw i64 %.sroa.01.0.i.i54, -1
  %7 = icmp ult i64 %6, %i.n
  tail call void @llvm.assume(i1 %7)
  %i.u = getelementptr i8, ptr %i.t, i64 4
  %.val8.i = load i8, ptr %i.u, align 4, !alias.scope !488, !noalias !489, !noundef !3 ; 2 uses
  %i.v = icmp ult i8 %.val8.i, %.val9.i
  br i1 %i.v, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runThciENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyhNCNvMNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decomposeINtB22_14DecompositionsNtNtNtB8_3str4iter5CharsE12sort_pending0E0ECs2JiOgHzbbc7_10tokenizers.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.w = add nuw i64 %.sroa.01.0.i.i54, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runThciENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyhNCNvMNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decomposeINtB22_14DecompositionsNtNtNtB8_3str4iter5CharsE12sort_pending0E0ECs2JiOgHzbbc7_10tokenizers.exit.i, label %.lr.ph

.lr.ph58:                                         ; preds = %.preheader, %bb.m
  %.val7.i = phi i8 [ %.val.i, %bb.m ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i57 = phi i64 [ %i.aa, %bb.m ], [ 2, %.preheader ] ; 4 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.01.1.i.i57
  %8 = add nsw i64 %.sroa.01.1.i.i57, -1
  %9 = icmp ult i64 %8, %i.n
  tail call void @llvm.assume(i1 %9)
  %i.y = getelementptr i8, ptr %i.x, i64 4
  %.val.i = load i8, ptr %i.y, align 4, !alias.scope !488, !noalias !489, !noundef !3 ; 2 uses
  %i.z = icmp ult i8 %.val.i, %.val7.i
  br i1 %i.z, label %bb.m, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runThciENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyhNCNvMNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decomposeINtB22_14DecompositionsNtNtNtB8_3str4iter5CharsE12sort_pending0E0ECs2JiOgHzbbc7_10tokenizers.exit.i

bb.m:                                             ; preds = %.lr.ph58
  %i.aa = add nuw i64 %.sroa.01.1.i.i57, 1        ; 2 uses
  %exitcond78.not = icmp eq i64 %i.aa, %i.n
  br i1 %exitcond78.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runThciENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyhNCNvMNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decomposeINtB22_14DecompositionsNtNtNtB8_3str4iter5CharsE12sort_pending0E0ECs2JiOgHzbbc7_10tokenizers.exit.i, label %.lr.ph58

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runThciENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyhNCNvMNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decomposeINtB22_14DecompositionsNtNtNtB8_3str4iter5CharsE12sort_pending0E0ECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.m, %.lr.ph58, %bb.l, %.lr.ph
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.0.i.i54, %.lr.ph ], [ %i.n, %bb.l ], [ %.sroa.01.1.i.i57, %.lr.ph58 ], [ %i.n, %bb.m ] ; 5 uses
  %i.ab = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ab)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runThciENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyhNCNvMNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decomposeINtB22_14DecompositionsNtNtNtB8_3str4iter5CharsE12sort_pending0E0ECs2JiOgHzbbc7_10tokenizers.exit.i.thread98: ; preds = %.preheader
  br i1 %.not5.i100, label %bb.i, label %.lr.ph.preheader.i.i

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runThciENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyhNCNvMNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decomposeINtB22_14DecompositionsNtNtNtB8_3str4iter5CharsE12sort_pending0E0ECs2JiOgHzbbc7_10tokenizers.exit.i.thread: ; preds = %.preheader49
  br i1 %.not5.i95, label %bb.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSThciE7reverseCs2JiOgHzbbc7_10tokenizers.exit

bb.n:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runThciENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyhNCNvMNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decomposeINtB22_14DecompositionsNtNtNtB8_3str4iter5CharsE12sort_pending0E0ECs2JiOgHzbbc7_10tokenizers.exit.i
  %i.ac = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i = icmp eq i64 %i.ac, 0
  %or.cond = or i1 %i.s, %.not.i.i
  br i1 %or.cond, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSThciE7reverseCs2JiOgHzbbc7_10tokenizers.exit, label %.lr.ph.preheader.i.i

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i39 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.n, i64 %.sroa.01.0)
  %i.ad = shl nuw nsw i64 %.sroa.0.0.i39, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runThciENCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyhNCNvMNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decomposeINtB23_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECs2JiOgHzbbc7_10tokenizers.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortThciENCINvMNtCscdodAO9FK5_5alloc5sliceSB15_11sort_by_keyhNCNvMNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decomposeINtB25_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %i.o, i64 noundef %.sroa.0.0.i38, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !475
  %i.ae = shl nuw nsw i64 %.sroa.0.0.i38, 1
  %i.af = or disjoint i64 %i.ae, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runThciENCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyhNCNvMNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decomposeINtB23_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECs2JiOgHzbbc7_10tokenizers.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSThciE7reverseCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingThciEECs2JiOgHzbbc7_10tokenizers.exit.i.i, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runThciENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyhNCNvMNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decomposeINtB22_14DecompositionsNtNtNtB8_3str4iter5CharsE12sort_pending0E0ECs2JiOgHzbbc7_10tokenizers.exit.i.thread, %bb.j, %bb.n
  %.sroa.0.0.i.i4447 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runThciENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyhNCNvMNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decomposeINtB22_14DecompositionsNtNtNtB8_3str4iter5CharsE12sort_pending0E0ECs2JiOgHzbbc7_10tokenizers.exit.i.thread ], [ %.sroa.0.0.i.i96103107, %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingThciEECs2JiOgHzbbc7_10tokenizers.exit.i.i ]
  %i.ag = shl nuw nsw i64 %.sroa.0.0.i.i4447, 1
  %i.ah = or disjoint i64 %i.ag, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runThciENCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyhNCNvMNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decomposeINtB23_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECs2JiOgHzbbc7_10tokenizers.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.n, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runThciENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyhNCNvMNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decomposeINtB22_14DecompositionsNtNtNtB8_3str4iter5CharsE12sort_pending0E0ECs2JiOgHzbbc7_10tokenizers.exit.i.thread98
  %i.ai = phi i64 [ %i.ac, %bb.n ], [ 1, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runThciENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyhNCNvMNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decomposeINtB22_14DecompositionsNtNtNtB8_3str4iter5CharsE12sort_pending0E0ECs2JiOgHzbbc7_10tokenizers.exit.i.thread98 ]
  %.sroa.0.0.i.i96103107 = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runThciENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyhNCNvMNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decomposeINtB22_14DecompositionsNtNtNtB8_3str4iter5CharsE12sort_pending0E0ECs2JiOgHzbbc7_10tokenizers.exit.i.thread98 ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.0.i.i96103107
  br label %.lr.ph.i.i37

.lr.ph.i.i37:                                     ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingThciEECs2JiOgHzbbc7_10tokenizers.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.ao, %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingThciEECs2JiOgHzbbc7_10tokenizers.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ak = xor i64 %.sroa.0.017.i.i, -1
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.017.i.i
  %i.am = getelementptr [16 x i8], ptr %i.aj, i64 %i.ak
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull %i.al, ptr noundef nonnull %i.am, i64 noundef 2)
          to label %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingThciEECs2JiOgHzbbc7_10tokenizers.exit.i.i unwind label %bb.q, !noalias !489

bb.q:                                             ; preds = %.lr.ph.i.i37
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #23, !noalias !489
  unreachable

_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingThciEECs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %.lr.ph.i.i37
  %i.ao = add nuw nsw i64 %.sroa.0.017.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ao, %i.ai
  br i1 %exitcond.not.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSThciE7reverseCs2JiOgHzbbc7_10tokenizers.exit, label %.lr.ph.i.i37

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runThciENCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyhNCNvMNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decomposeINtB23_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSThciE7reverseCs2JiOgHzbbc7_10tokenizers.exit
  %.sroa.0.0.i34 = phi i64 [ %i.ah, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSThciE7reverseCs2JiOgHzbbc7_10tokenizers.exit ], [ %i.af, %bb.p ], [ %i.ad, %bb.o ] ; 2 uses
  %i.ap = lshr i64 %.sroa.023.0, 1
  %i.aq = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.ar = sub nsw i64 %factor, %i.ap
  %i.as = add nuw nsw i64 %i.aq, %factor
  %i.at = mul i64 %i.ar, %.sroa.0.0
  %i.au = mul i64 %i.as, %.sroa.0.0
  %i.av = xor i64 %i.au, %i.at
  %i.aw = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.av, i1 false)
  %i.ax = trunc nuw nsw i64 %i.aw to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph64, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeThciENCINvMNtCscdodAO9FK5_5alloc5sliceSB16_11sort_by_keyhNCNvMNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decomposeINtB26_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECs2JiOgHzbbc7_10tokenizers.exit
  %.sroa.02.163 = phi i64 [ %.sroa.02.0, %.lr.ph64 ], [ %i.ay, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeThciENCINvMNtCscdodAO9FK5_5alloc5sliceSB16_11sort_by_keyhNCNvMNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decomposeINtB26_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECs2JiOgHzbbc7_10tokenizers.exit ] ; 2 uses
  %.sroa.023.162 = phi i64 [ %.sroa.023.0, %.lr.ph64 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeThciENCINvMNtCscdodAO9FK5_5alloc5sliceSB16_11sort_by_keyhNCNvMNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decomposeINtB26_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECs2JiOgHzbbc7_10tokenizers.exit ] ; 4 uses
  %i.ay = add i64 %.sroa.02.163, -1               ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !noundef !3
  %.not29 = icmp ult i8 %i.ba, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeThciENCINvMNtCscdodAO9FK5_5alloc5sliceSB16_11sort_by_keyhNCNvMNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decomposeINtB26_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECs2JiOgHzbbc7_10tokenizers.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.162, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeThciENCINvMNtCscdodAO9FK5_5alloc5sliceSB16_11sort_by_keyhNCNvMNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decomposeINtB26_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECs2JiOgHzbbc7_10tokenizers.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.163, %bb.r ], [ 1, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeThciENCINvMNtCscdodAO9FK5_5alloc5sliceSB16_11sort_by_keyhNCNvMNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decomposeINtB26_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECs2JiOgHzbbc7_10tokenizers.exit ] ; 3 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bc, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ay
  %i.be = load i64, ptr %i.bd, align 8, !noundef !3 ; 3 uses
  %i.bf = lshr i64 %i.be, 1                       ; 8 uses
  %i.bg = lshr i64 %.sroa.023.162, 1              ; 6 uses
  %i.bh = add nuw i64 %i.bf, %i.bg                ; 4 uses
  %i.bi = sub i64 %.sroa.09.0, %i.bh
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bi ; 6 uses
  %i.bk = icmp samesign ugt i64 %i.bh, %3
  %i.bl = trunc i64 %.sroa.023.162 to i1
  %i.bm = or i64 %i.be, %.sroa.023.162
  %i.bn = trunc i64 %i.bm to i1
  %or.cond3.i = or i1 %i.bk, %i.bn
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bo = trunc i64 %i.be to i1
  br i1 %i.bo, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.bp = shl nuw nsw i64 %i.bh, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeThciENCINvMNtCscdodAO9FK5_5alloc5sliceSB16_11sort_by_keyhNCNvMNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decomposeINtB26_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECs2JiOgHzbbc7_10tokenizers.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.bl, label %bb.x, label %bb.z

bb.w:                                             ; preds = %bb.t
  %i.bq = or i64 %i.bf, 1
  %i.br = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.bq, i1 true)
  %i.bs = trunc nuw nsw i64 %i.br to i32
  %i.bt = shl nuw nsw i32 %i.bs, 1
  %i.bu = xor i32 %i.bt, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortThciENCINvMNtCscdodAO9FK5_5alloc5sliceSB15_11sort_by_keyhNCNvMNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decomposeINtB25_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %i.bj, i64 noundef range(i64 0, 576460752303423488) %i.bf, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.bu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !476
  br label %bb.v

bb.x:                                             ; preds = %bb.z, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !490)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !491)
  %i.bv = icmp eq i64 %i.bf, 0
  %i.bw = icmp eq i64 %i.bg, 0
  %or.cond.i = or i1 %i.bw, %i.bv
  br i1 %or.cond.i, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeThciENCINvMNtCscdodAO9FK5_5alloc5sliceSBX_11sort_by_keyhNCNvMNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decomposeINtB1W_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECs2JiOgHzbbc7_10tokenizers.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.0.0.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.bg, i64 range(i64 0, -9223372036854775808) %i.bf) ; 2 uses
  %i.bx = icmp samesign ult i64 %3, %.sroa.0.0.i.i35
  br i1 %i.bx, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeThciENCINvMNtCscdodAO9FK5_5alloc5sliceSBX_11sort_by_keyhNCNvMNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decomposeINtB1W_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECs2JiOgHzbbc7_10tokenizers.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.y
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %i.bf ; 3 uses
  %.not.i36 = icmp samesign ugt i64 %i.bf, %i.bg  ; 2 uses
  %spec.select.i = select i1 %.not.i36, ptr %i.by, ptr %i.bj
  %i.bz = shl nuw nsw i64 %.sroa.0.0.i.i35, 4     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.bz, i1 false), !alias.scope !492
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 %i.bz ; 3 uses
  br i1 %.not.i36, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.cb = phi ptr [ %i.cn, %.preheader.i ], [ %i.ca, %.critedge.i ] ; 2 uses
  %i.cc = phi ptr [ %i.cl, %.preheader.i ], [ %i.by, %.critedge.i ] ; 2 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.cf, %.preheader.i ], [ %i.m, %.critedge.i ]
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -16 ; 2 uses
  %i.ce = getelementptr inbounds i8, ptr %i.cb, i64 -16 ; 2 uses
  %i.cf = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -16 ; 2 uses
  %i.cg = getelementptr i8, ptr %i.cb, i64 -12
  %.val.i.i = load i8, ptr %i.cg, align 4, !alias.scope !491, !noalias !493, !noundef !3
  %i.ch = getelementptr i8, ptr %i.cc, i64 -12
  %.val10.i.i = load i8, ptr %i.ch, align 4, !alias.scope !490, !noalias !494, !noundef !3
  %i.ci = icmp ult i8 %.val.i.i, %.val10.i.i      ; 3 uses
  %..i.i = select i1 %i.ci, ptr %i.cd, ptr %i.ce
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cf, ptr noundef nonnull align 8 dereferenceable(16) %..i.i, i64 16, i1 false), !alias.scope !492, !noalias !495
  %i.cj = xor i1 %i.ci, true
  %i.ck = zext i1 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %i.ck ; 3 uses
  %i.cm = zext i1 %i.ci to i64
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %i.ce, i64 %i.cm ; 3 uses
  %i.co = icmp eq ptr %i.cl, %i.bj
  %i.cp = icmp eq ptr %i.cn, %2
  %or.cond.i.i = select i1 %i.co, i1 true, i1 %i.cp
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateThciEE10merge_downNCINvMNtCscdodAO9FK5_5alloc5sliceSB1a_11sort_by_keyhNCNvMNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decomposeINtB2n_14DecompositionsNtNtNtBb_3str4iter5CharsE12sort_pending0E0ECs2JiOgHzbbc7_10tokenizers.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.cq = phi ptr [ %i.da, %.lr.ph.i.i ], [ %i.bj, %.critedge.i ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.cz, %.lr.ph.i.i ], [ %i.by, %.critedge.i ] ; 3 uses
  %i.cr = phi ptr [ %i.cx, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 3 uses
  %i.cs = getelementptr i8, ptr %.sroa.0.02.i.i, i64 4
  %.sroa.0.0.val.i.i = load i8, ptr %i.cs, align 4, !alias.scope !490, !noalias !496, !noundef !3
  %i.ct = getelementptr i8, ptr %i.cr, i64 4
  %.val.i19.i = load i8, ptr %i.ct, align 4, !alias.scope !491, !noalias !497, !noundef !3
  %i.cu = icmp ult i8 %.sroa.0.0.val.i.i, %.val.i19.i ; 3 uses
  %i.cv = xor i1 %i.cu, true
  %spec.select.i.i = select i1 %i.cu, ptr %.sroa.0.02.i.i, ptr %i.cr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, ptr noundef nonnull align 8 dereferenceable(16) %spec.select.i.i, i64 16, i1 false), !alias.scope !492, !noalias !498
  %i.cw = zext i1 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.cr, i64 %i.cw ; 3 uses
  %i.cy = zext i1 %i.cu to i64
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.02.i.i, i64 %i.cy ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 2 uses
  %i.db = icmp ne ptr %i.cx, %i.ca
  %i.dc = icmp ne ptr %i.cz, %i.m
  %or.cond.i20.i = select i1 %i.db, i1 %i.dc, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateThciEE10merge_downNCINvMNtCscdodAO9FK5_5alloc5sliceSB1a_11sort_by_keyhNCNvMNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decomposeINtB2n_14DecompositionsNtNtNtBb_3str4iter5CharsE12sort_pending0E0ECs2JiOgHzbbc7_10tokenizers.exit.i

_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateThciEE10merge_downNCINvMNtCscdodAO9FK5_5alloc5sliceSB1a_11sort_by_keyhNCNvMNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decomposeINtB2n_14DecompositionsNtNtNtBb_3str4iter5CharsE12sort_pending0E0ECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.cl, %.preheader.i ], [ %i.da, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.cn, %.preheader.i ], [ %i.ca, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.cx, %.lr.ph.i.i ] ; 2 uses
  %i.dd = ptrtoint ptr %.sroa.7.0.i to i64
  %i.de = ptrtoint ptr %.sroa.0.1.i to i64
  %i.df = sub nuw i64 %i.dd, %i.de
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.df, i1 false), !alias.scope !492, !noalias !499
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeThciENCINvMNtCscdodAO9FK5_5alloc5sliceSBX_11sort_by_keyhNCNvMNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decomposeINtB1W_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECs2JiOgHzbbc7_10tokenizers.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeThciENCINvMNtCscdodAO9FK5_5alloc5sliceSBX_11sort_by_keyhNCNvMNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decomposeINtB1W_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.x, %bb.y, %_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateThciEE10merge_downNCINvMNtCscdodAO9FK5_5alloc5sliceSB1a_11sort_by_keyhNCNvMNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decomposeINtB2n_14DecompositionsNtNtNtBb_3str4iter5CharsE12sort_pending0E0ECs2JiOgHzbbc7_10tokenizers.exit.i
  %i.dg = shl nuw nsw i64 %i.bh, 1
  %i.dh = or disjoint i64 %i.dg, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeThciENCINvMNtCscdodAO9FK5_5alloc5sliceSB16_11sort_by_keyhNCNvMNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decomposeINtB26_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECs2JiOgHzbbc7_10tokenizers.exit

bb.z:                                             ; preds = %bb.v
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %i.bf
  %i.dj = or i64 %i.bg, 1
  %i.dk = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.dj, i1 true)
  %i.dl = trunc nuw nsw i64 %i.dk to i32
  %i.dm = shl nuw nsw i32 %i.dl, 1
  %i.dn = xor i32 %i.dm, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortThciENCINvMNtCscdodAO9FK5_5alloc5sliceSB15_11sort_by_keyhNCNvMNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decomposeINtB25_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %i.di, i64 noundef range(i64 0, 576460752303423488) %i.bg, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.dn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !476
  br label %bb.x

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeThciENCINvMNtCscdodAO9FK5_5alloc5sliceSB16_11sort_by_keyhNCNvMNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decomposeINtB26_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.u, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeThciENCINvMNtCscdodAO9FK5_5alloc5sliceSBX_11sort_by_keyhNCNvMNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decomposeINtB1W_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECs2JiOgHzbbc7_10tokenizers.exit
  %.sroa.0.0.i = phi i64 [ %i.dh, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeThciENCINvMNtCscdodAO9FK5_5alloc5sliceSBX_11sort_by_keyhNCNvMNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decomposeINtB1W_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECs2JiOgHzbbc7_10tokenizers.exit ], [ %i.bp, %bb.u ] ; 2 uses
  %i.do = icmp ugt i64 %i.ay, 1
  br i1 %i.do, label %bb.r, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.dp = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.dq = lshr i64 %.sroa.018.0, 1
  %i.dr = add nuw i64 %i.dq, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.ds = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.ds, 0
  br i1 %.not31, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dt = or i64 %1, 1
  %i.du = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.dt, i1 true)
  %i.dv = trunc nuw nsw i64 %i.du to i32
  %i.dw = shl nuw nsw i32 %i.dv, 1
  %i.dx = xor i32 %i.dw, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortThciENCINvMNtCscdodAO9FK5_5alloc5sliceSB15_11sort_by_keyhNCNvMNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decomposeINtB25_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.dx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !476
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSBW_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1Q_14UnigramTrainer21prune_sentence_piecess1_0E0EB1W_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i1 noundef zeroext %4, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ak, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i120 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i125 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.ag, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ag ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ef, %bb.ag ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ed, %bb.ag ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1Y_14UnigramTrainer21prune_sentence_piecess1_0E0EB24_.exit
  %.sroa.021.0 = phi i8 [ %i.bn, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1Y_14UnigramTrainer21prune_sentence_piecess1_0E0EB24_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1Y_14UnigramTrainer21prune_sentence_piecess1_0E0EB24_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph80, label %._crit_edge

.lr.ph80:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.u

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 13 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !526)
  %.not.i33 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1X_14UnigramTrainer21prune_sentence_piecess1_0E0EB23_.exit.i.thread123, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1X_14UnigramTrainer21prune_sentence_piecess1_0E0EB23_.exit.i.thread, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1X_14UnigramTrainer21prune_sentence_piecess1_0E0EB23_.exit.i, %bb.h
  br i1 %4, label %bb.s, label %bb.r

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjdE7reverseCs2JiOgHzbbc7_10tokenizers.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr i8, ptr %i.o, i64 24
  %.val10.i = load double, ptr %i.q, align 8, !alias.scope !526, !noalias !527, !noundef !3 ; 4 uses
  %i.r = getelementptr i8, ptr %i.o, i64 8
  %.val11.i = load double, ptr %i.r, align 8, !alias.scope !526, !noalias !527, !noundef !3 ; 2 uses
  %brmerge.not.i43 = fcmp uno double %.val11.i, %.val10.i
  br i1 %brmerge.not.i43, label %bb.l, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTjdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtBQ_14UnigramTrainer21prune_sentence_piecess1_0E0BW_.exit45, !prof !7

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #22, !noalias !528
  unreachable

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTjdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtBQ_14UnigramTrainer21prune_sentence_piecess1_0E0BW_.exit45: ; preds = %bb.k
  %.mux.i44 = fcmp olt double %.val11.i, %.val10.i ; 2 uses
  %.not87 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %.mux.i44, label %.preheader, label %.preheader55

.preheader55:                                     ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTjdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtBQ_14UnigramTrainer21prune_sentence_piecess1_0E0BW_.exit45
  br i1 %.not87, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1X_14UnigramTrainer21prune_sentence_piecess1_0E0EB23_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTjdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtBQ_14UnigramTrainer21prune_sentence_piecess1_0E0BW_.exit45
  br i1 %.not87, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1X_14UnigramTrainer21prune_sentence_piecess1_0E0EB23_.exit.i.thread123, label %.lr.ph75

.lr.ph:                                           ; preds = %.preheader55, %bb.n
  %.val9.i = phi double [ %.val8.i, %bb.n ], [ %.val10.i, %.preheader55 ] ; 2 uses
  %.sroa.01.0.i.i72 = phi i64 [ %i.u, %bb.n ], [ 2, %.preheader55 ] ; 4 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.01.0.i.i72
  %6 = add nsw i64 %.sroa.01.0.i.i72, -1
  %7 = icmp ult i64 %6, %i.n
  tail call void @llvm.assume(i1 %7)
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %.val8.i = load double, ptr %i.t, align 8, !alias.scope !526, !noalias !527, !noundef !3 ; 3 uses
  %brmerge.not.i40 = fcmp uno double %.val9.i, %.val8.i
  br i1 %brmerge.not.i40, label %bb.m, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTjdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtBQ_14UnigramTrainer21prune_sentence_piecess1_0E0BW_.exit42, !prof !7

bb.m:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #22, !noalias !528
  unreachable

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTjdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtBQ_14UnigramTrainer21prune_sentence_piecess1_0E0BW_.exit42: ; preds = %.lr.ph
  %.mux.i41 = fcmp olt double %.val9.i, %.val8.i
  br i1 %.mux.i41, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1X_14UnigramTrainer21prune_sentence_piecess1_0E0EB23_.exit.i, label %bb.n

bb.n:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTjdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtBQ_14UnigramTrainer21prune_sentence_piecess1_0E0BW_.exit42
  %i.u = add nuw i64 %.sroa.01.0.i.i72, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1X_14UnigramTrainer21prune_sentence_piecess1_0E0EB23_.exit.i, label %.lr.ph

.lr.ph75:                                         ; preds = %.preheader, %bb.p
  %.val7.i = phi double [ %.val.i, %bb.p ], [ %.val10.i, %.preheader ] ; 2 uses
  %.sroa.01.1.i.i74 = phi i64 [ %i.x, %bb.p ], [ 2, %.preheader ] ; 4 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.01.1.i.i74
  %8 = add nsw i64 %.sroa.01.1.i.i74, -1
  %9 = icmp ult i64 %8, %i.n
  tail call void @llvm.assume(i1 %9)
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %.val.i = load double, ptr %i.w, align 8, !alias.scope !526, !noalias !527, !noundef !3 ; 3 uses
  %brmerge.not.i = fcmp uno double %.val7.i, %.val.i
  br i1 %brmerge.not.i, label %bb.o, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTjdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtBQ_14UnigramTrainer21prune_sentence_piecess1_0E0BW_.exit, !prof !7

bb.o:                                             ; preds = %.lr.ph75
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #22, !noalias !528
  unreachable

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTjdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtBQ_14UnigramTrainer21prune_sentence_piecess1_0E0BW_.exit: ; preds = %.lr.ph75
  %.mux.i = fcmp olt double %.val7.i, %.val.i
  br i1 %.mux.i, label %bb.p, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1X_14UnigramTrainer21prune_sentence_piecess1_0E0EB23_.exit.i

bb.p:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTjdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtBQ_14UnigramTrainer21prune_sentence_piecess1_0E0BW_.exit
  %i.x = add nuw i64 %.sroa.01.1.i.i74, 1         ; 2 uses
  %exitcond100.not = icmp eq i64 %i.x, %i.n
  br i1 %exitcond100.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1X_14UnigramTrainer21prune_sentence_piecess1_0E0EB23_.exit.i, label %.lr.ph75

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1X_14UnigramTrainer21prune_sentence_piecess1_0E0EB23_.exit.i: ; preds = %bb.n, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTjdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtBQ_14UnigramTrainer21prune_sentence_piecess1_0E0BW_.exit42, %bb.p, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTjdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtBQ_14UnigramTrainer21prune_sentence_piecess1_0E0BW_.exit
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i74, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTjdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtBQ_14UnigramTrainer21prune_sentence_piecess1_0E0BW_.exit ], [ %i.n, %bb.p ], [ %.sroa.01.0.i.i72, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTjdE7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtBQ_14UnigramTrainer21prune_sentence_piecess1_0E0BW_.exit42 ], [ %i.n, %bb.n ] ; 6 uses
  %i.y = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.y)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.q

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1X_14UnigramTrainer21prune_sentence_piecess1_0E0EB23_.exit.i.thread123: ; preds = %.preheader
  br i1 %.not5.i125, label %bb.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjdE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i.i

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1X_14UnigramTrainer21prune_sentence_piecess1_0E0EB23_.exit.i.thread: ; preds = %.preheader55
  br i1 %.not5.i120, label %bb.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjdE7reverseCs2JiOgHzbbc7_10tokenizers.exit

bb.q:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1X_14UnigramTrainer21prune_sentence_piecess1_0E0EB23_.exit.i
  br i1 %.mux.i44, label %bb.t, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjdE7reverseCs2JiOgHzbbc7_10tokenizers.exit

bb.r:                                             ; preds = %bb.i
  %.sroa.0.0.i39 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.n, i64 %.sroa.01.0)
  %i.z = shl nuw nsw i64 %.sroa.0.0.i39, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1Y_14UnigramTrainer21prune_sentence_piecess1_0E0EB24_.exit

bb.s:                                             ; preds = %bb.i
  %.sroa.0.0.i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB15_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB20_14UnigramTrainer21prune_sentence_piecess1_0E0EB26_(ptr noalias noundef nonnull align 8 %i.o, i64 noundef %.sroa.0.0.i38, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !504
  %i.aa = shl nuw nsw i64 %.sroa.0.0.i38, 1
  %i.ab = or disjoint i64 %i.aa, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1Y_14UnigramTrainer21prune_sentence_piecess1_0E0EB24_.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjdE7reverseCs2JiOgHzbbc7_10tokenizers.exit.loopexit.unr-lcssa: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjdE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjdE7reverseCs2JiOgHzbbc7_10tokenizers.exit, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjdE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i.epil.preheader

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjdE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i.epil.preheader: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjdE7reverseCs2JiOgHzbbc7_10tokenizers.exit.loopexit.unr-lcssa, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjdE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i.i
  %.sroa.0.016.i.i.epil.init = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjdE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i.i ], [ %i.be, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjdE7reverseCs2JiOgHzbbc7_10tokenizers.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod169 = trunc i64 %i.am to i1
  tail call void @llvm.assume(i1 %lcmp.mod169)
  %i.ac = xor i64 %.sroa.0.016.i.i.epil.init, -1
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.016.i.i.epil.init ; 3 uses
  %i.ae = getelementptr [16 x i8], ptr %i.an, i64 %i.ac ; 3 uses
  %i.af = load i64, ptr %i.ad, align 8, !alias.scope !529, !noalias !530, !noundef !3
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ah = load double, ptr %i.ag, align 8, !alias.scope !529, !noalias !530, !noundef !3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i64 16, i1 false), !alias.scope !531, !noalias !527
  store i64 %i.af, ptr %i.ae, align 8, !alias.scope !532, !noalias !533
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store double %i.ah, ptr %i.ai, align 8, !alias.scope !532, !noalias !533
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjdE7reverseCs2JiOgHzbbc7_10tokenizers.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjdE7reverseCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjdE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i.epil.preheader, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjdE7reverseCs2JiOgHzbbc7_10tokenizers.exit.loopexit.unr-lcssa, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1X_14UnigramTrainer21prune_sentence_piecess1_0E0EB23_.exit.i.thread, %bb.j, %bb.t, %bb.q
  %.sroa.0.0.i.i5053 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.q ], [ %.sroa.0.0.i.i, %bb.t ], [ 2, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1X_14UnigramTrainer21prune_sentence_piecess1_0E0EB23_.exit.i.thread ], [ %.sroa.0.0.i.i121128132, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjdE7reverseCs2JiOgHzbbc7_10tokenizers.exit.loopexit.unr-lcssa ], [ %.sroa.0.0.i.i121128132, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjdE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i.epil.preheader ]
  %i.aj = shl nuw nsw i64 %.sroa.0.0.i.i5053, 1
  %i.ak = or disjoint i64 %i.aj, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1Y_14UnigramTrainer21prune_sentence_piecess1_0E0EB24_.exit

bb.t:                                             ; preds = %bb.q
  %i.al = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !534), !noalias !527
  tail call void @llvm.experimental.noalias.scope.decl(metadata !535), !noalias !527
  %.not.i.i = icmp eq i64 %i.al, 0
  br i1 %.not.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjdE7reverseCs2JiOgHzbbc7_10tokenizers.exit, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjdE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjdE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1X_14UnigramTrainer21prune_sentence_piecess1_0E0EB23_.exit.i.thread123, %bb.t
  %i.am = phi i64 [ %i.al, %bb.t ], [ 1, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1X_14UnigramTrainer21prune_sentence_piecess1_0E0EB23_.exit.i.thread123 ] ; 4 uses
  %.sroa.0.0.i.i121128132 = phi i64 [ %.sroa.0.0.i.i, %bb.t ], [ 2, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1X_14UnigramTrainer21prune_sentence_piecess1_0E0EB23_.exit.i.thread123 ] ; 3 uses
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.0.i.i121128132 ; 3 uses
  %xtraiter = and i64 %i.am, 1
  %i.ao = icmp eq i64 %i.am, 1
  br i1 %i.ao, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjdE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i.epil.preheader, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjdE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i.i.new

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjdE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i.i.new: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjdE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i.i
  %unroll_iter = and i64 %i.am, 9223372036854775806
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjdE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjdE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjdE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjdE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i.i.new
  %.sroa.0.016.i.i = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjdE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i.i.new ], [ %i.be, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjdE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjdE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i.i.new ], [ %niter.next.1, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjdE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i ]
  %i.ap = xor i64 %.sroa.0.016.i.i, -1
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 3 uses
  %i.ar = getelementptr [16 x i8], ptr %i.an, i64 %i.ap ; 3 uses
  %i.as = load i64, ptr %i.aq, align 8, !alias.scope !529, !noalias !530, !noundef !3
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.au = load double, ptr %i.at, align 8, !alias.scope !529, !noalias !530, !noundef !3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i64 16, i1 false), !alias.scope !531, !noalias !527
  store i64 %i.as, ptr %i.ar, align 8, !alias.scope !532, !noalias !533
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store double %i.au, ptr %i.av, align 8, !alias.scope !532, !noalias !533
  %i.aw = xor i64 %.sroa.0.016.i.i, -2
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 2 uses
  %i.az = getelementptr [16 x i8], ptr %i.an, i64 %i.aw ; 3 uses
  %i.ba = load i64, ptr %i.ay, align 8, !alias.scope !529, !noalias !530, !noundef !3
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.bc = load double, ptr %i.bb, align 8, !alias.scope !529, !noalias !530, !noundef !3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %i.az, i64 16, i1 false), !alias.scope !531, !noalias !527
  store i64 %i.ba, ptr %i.az, align 8, !alias.scope !532, !noalias !533
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store double %i.bc, ptr %i.bd, align 8, !alias.scope !532, !noalias !533
  %i.be = add nuw nsw i64 %.sroa.0.016.i.i, 2     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjdE7reverseCs2JiOgHzbbc7_10tokenizers.exit.loopexit.unr-lcssa, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjdE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1Y_14UnigramTrainer21prune_sentence_piecess1_0E0EB24_.exit: ; preds = %bb.r, %bb.s, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjdE7reverseCs2JiOgHzbbc7_10tokenizers.exit
  %.sroa.0.0.i34 = phi i64 [ %i.ak, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTjdE7reverseCs2JiOgHzbbc7_10tokenizers.exit ], [ %i.ab, %bb.s ], [ %i.z, %bb.r ] ; 2 uses
  %i.bf = lshr i64 %.sroa.023.0, 1
  %i.bg = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bh = sub nsw i64 %factor, %i.bf
  %i.bi = add nuw nsw i64 %i.bg, %factor
  %i.bj = mul i64 %i.bh, %.sroa.0.0
  %i.bk = mul i64 %i.bi, %.sroa.0.0
  %i.bl = xor i64 %i.bk, %i.bj
  %i.bm = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bl, i1 false)
  %i.bn = trunc nuw nsw i64 %i.bm to i8
  br label %bb.g

bb.u:                                             ; preds = %.lr.ph80, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB21_14UnigramTrainer21prune_sentence_piecess1_0E0EB27_.exit
  %.sroa.02.179 = phi i64 [ %.sroa.02.0, %.lr.ph80 ], [ %i.bo, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB21_14UnigramTrainer21prune_sentence_piecess1_0E0EB27_.exit ] ; 2 uses
  %.sroa.023.178 = phi i64 [ %.sroa.023.0, %.lr.ph80 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB21_14UnigramTrainer21prune_sentence_piecess1_0E0EB27_.exit ] ; 4 uses
  %i.bo = add i64 %.sroa.02.179, -1               ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !noundef !3
  %.not29 = icmp ult i8 %i.bq, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.v

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB21_14UnigramTrainer21prune_sentence_piecess1_0E0EB27_.exit, %bb.u, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.178, %bb.u ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB21_14UnigramTrainer21prune_sentence_piecess1_0E0EB27_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.179, %bb.u ], [ 1, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB21_14UnigramTrainer21prune_sentence_piecess1_0E0EB27_.exit ] ; 3 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bs, align 1
  br i1 %i.k, label %bb.ag, label %bb.ah

bb.v:                                             ; preds = %bb.u
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bo
  %i.bu = load i64, ptr %i.bt, align 8, !noundef !3 ; 3 uses
  %i.bv = lshr i64 %i.bu, 1                       ; 8 uses
  %i.bw = lshr i64 %.sroa.023.178, 1              ; 6 uses
  %i.bx = add nuw i64 %i.bv, %i.bw                ; 4 uses
  %i.by = sub i64 %.sroa.09.0, %i.bx
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.by ; 6 uses
  %i.ca = icmp samesign ugt i64 %i.bx, %3
  %i.cb = trunc i64 %.sroa.023.178 to i1
  %i.cc = or i64 %i.bu, %.sroa.023.178
  %i.cd = trunc i64 %i.cc to i1
  %or.cond3.i = or i1 %i.ca, %i.cd
  br i1 %or.cond3.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ce = trunc i64 %i.bu to i1
  br i1 %i.ce, label %bb.y, label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.cf = shl nuw nsw i64 %i.bx, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB21_14UnigramTrainer21prune_sentence_piecess1_0E0EB27_.exit

bb.y:                                             ; preds = %bb.z, %bb.w
  br i1 %i.cb, label %bb.aa, label %bb.af

bb.z:                                             ; preds = %bb.w
  %i.cg = or i64 %i.bv, 1
  %i.ch = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cg, i1 true)
  %i.ci = trunc nuw nsw i64 %i.ch to i32
  %i.cj = shl nuw nsw i32 %i.ci, 1
  %i.ck = xor i32 %i.cj, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSB15_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB20_14UnigramTrainer21prune_sentence_piecess1_0E0EB26_(ptr noalias noundef nonnull align 8 %i.bz, i64 noundef range(i64 0, 576460752303423488) %i.bv, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.ck, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !510
  br label %bb.y

bb.aa:                                            ; preds = %bb.af, %bb.y
  tail call void @llvm.experimental.noalias.scope.decl(metadata !536)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !537)
  %i.cl = icmp eq i64 %i.bv, 0
  %i.cm = icmp eq i64 %i.bw, 0
  %or.cond.i = or i1 %i.cm, %i.cl
  br i1 %or.cond.i, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSBX_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1R_14UnigramTrainer21prune_sentence_piecess1_0E0EB1X_.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.sroa.0.0.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.bw, i64 range(i64 0, -9223372036854775808) %i.bv) ; 2 uses
  %i.cn = icmp samesign ult i64 %3, %.sroa.0.0.i.i35
  br i1 %i.cn, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeTjdENCINvMNtCscdodAO9FK5_5alloc5sliceSBX_7sort_byNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1R_14UnigramTrainer21prune_sentence_piecess1_0E0EB1X_.exit, label %.critedge.i

end_hunk_2
begin_hunk_3_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSBW_11sort_by_keyINtNtBa_3cmp7ReverseBW_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2l_14UnigramTrainer25make_seed_sentence_piecess2_0E0EB2r_:bb.a

.noexc.i:                                         ; preds = %bb.ab
  %i.cs = icmp eq i8 %i.cr, 1
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit.i.i

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit.i.i: ; preds = %.noexc.i, %bb.aa
  %.sroa.0.0.i.i.i.i.i = phi i1 [ %i.cq, %bb.aa ], [ %i.cs, %.noexc.i ] ; 3 uses
  %..i.i = select i1 %.sroa.0.0.i.i.i.i.i, ptr %i.cm, ptr %i.cn
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.co, ptr noundef nonnull align 8 dereferenceable(24) %..i.i, i64 24, i1 false), !alias.scope !654, !noalias !661
  %i.ct = xor i1 %.sroa.0.0.i.i.i.i.i, true
  %i.cu = zext i1 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [24 x i8], ptr %i.cm, i64 %i.cu ; 3 uses
  %i.cw = zext i1 %.sroa.0.0.i.i.i.i.i to i64
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %i.cn, i64 %i.cw ; 3 uses
  %i.cy = icmp eq ptr %i.cv, %i.bu
  %i.cz = icmp eq ptr %i.cx, %2
  %or.cond.i.i = select i1 %i.cy, i1 true, i1 %i.cz
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateTmRScEE10merge_downNCINvMNtCscdodAO9FK5_5alloc5sliceSB1a_11sort_by_keyINtNtBb_3cmp7ReverseB1a_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2O_14UnigramTrainer25make_seed_sentence_piecess2_0E0EB2U_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %bb.ad
  %.sroa.13.1.i = phi ptr [ %i.dh, %bb.ad ], [ %i.bu, %.critedge.i ] ; 3 uses
  %.sroa.0.0.i37 = phi ptr [ %i.df, %bb.ad ], [ %2, %.critedge.i ] ; 6 uses
  %.sroa.0.04.i.i = phi ptr [ %i.dg, %bb.ad ], [ %i.cj, %.critedge.i ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !662)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !663)
  %.sroa.0.0.copyload.i.i19.i = load i32, ptr %.sroa.0.04.i.i, align 8, !alias.scope !664, !noalias !665 ; 2 uses
  %.sroa.02.0.copyload.i.i20.i = load i32, ptr %.sroa.0.0.i37, align 8, !alias.scope !666, !noalias !667 ; 2 uses
  %i.da = icmp eq i32 %.sroa.02.0.copyload.i.i20.i, %.sroa.0.0.copyload.i.i19.i
  br i1 %i.da, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit.i22.i, label %.split.i.i

.split.i.i:                                       ; preds = %.lr.ph.i.i
  %i.db = icmp ult i32 %.sroa.02.0.copyload.i.i20.i, %.sroa.0.0.copyload.i.i19.i
  br i1 %i.db, label %bb.ad, label %bb.ac

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit.i22.i: ; preds = %.lr.ph.i.i
  %.sroa.55.0..sroa_idx.i.i23.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i37, i64 16
  %.sroa.55.0.copyload.i.i24.i = load i64, ptr %.sroa.55.0..sroa_idx.i.i23.i, align 8, !alias.scope !666, !noalias !667
  %.sroa.44.0..sroa_idx.i.i25.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i37, i64 8
  %.sroa.44.0.copyload.i.i26.i = load ptr, ptr %.sroa.44.0..sroa_idx.i.i25.i, align 8, !alias.scope !666, !noalias !667, !nonnull !3, !noundef !3
  %.sroa.5.0..sroa_idx.i.i27.i = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i.i, i64 16
  %.sroa.5.0.copyload.i.i28.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i27.i, align 8, !alias.scope !664, !noalias !665
  %.sroa.41.0..sroa_idx.i.i29.i = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i.i, i64 8
  %.sroa.41.0.copyload.i.i30.i = load ptr, ptr %.sroa.41.0..sroa_idx.i.i29.i, align 8, !alias.scope !664, !noalias !665, !nonnull !3, !noundef !3
  %i.dc = invoke noundef i8 @_RNvXs5_NtNtCs4NRVxsYgnAr_4core5slice3cmpcNtB5_10SliceChain11chaining_ltCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.44.0.copyload.i.i26.i, i64 noundef range(i64 0, 2305843009213693952) %.sroa.55.0.copyload.i.i24.i, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.41.0.copyload.i.i30.i, i64 noundef range(i64 0, 2305843009213693952) %.sroa.5.0.copyload.i.i28.i)
          to label %.noexc31.i unwind label %.loopexit.split-lp.i, !noalias !654

.noexc31.i:                                       ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit.i22.i
  %i.dd = icmp eq i8 %i.dc, 1
  br i1 %i.dd, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.noexc31.i, %.split.i.i
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.noexc31.i, %.split.i.i
  %i.de = phi i64 [ 1, %bb.ac ], [ 0, %.noexc31.i ], [ 0, %.split.i.i ]
  %.sroa.0.0.i.i.i2.i.i = phi i64 [ 0, %bb.ac ], [ 1, %.noexc31.i ], [ 1, %.split.i.i ]
  %.sroa.05.0.i.i = phi ptr [ %.sroa.0.0.i37, %bb.ac ], [ %.sroa.0.04.i.i, %.noexc31.i ], [ %.sroa.0.04.i.i, %.split.i.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.1.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.05.0.i.i, i64 24, i1 false), !alias.scope !654, !noalias !668
  %i.df = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.i37, i64 %i.de ; 3 uses
  %i.dg = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.04.i.i, i64 %.sroa.0.0.i.i.i2.i.i ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 24 ; 2 uses
  %i.di = icmp ne ptr %i.df, %i.cl
  %i.dj = icmp ne ptr %i.dg, %i.m
  %or.cond.i21.i = select i1 %i.di, i1 %i.dj, i1 false
  br i1 %or.cond.i21.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateTmRScEE10merge_downNCINvMNtCscdodAO9FK5_5alloc5sliceSB1a_11sort_by_keyINtNtBb_3cmp7ReverseB1a_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2O_14UnigramTrainer25make_seed_sentence_piecess2_0E0EB2U_.exit.i

_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateTmRScEE10merge_downNCINvMNtCscdodAO9FK5_5alloc5sliceSB1a_11sort_by_keyINtNtBb_3cmp7ReverseB1a_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2O_14UnigramTrainer25make_seed_sentence_piecess2_0E0EB2U_.exit.i: ; preds = %bb.ad, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit.i.i
  %.sroa.13.4.i = phi ptr [ %i.cv, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit.i.i ], [ %i.dh, %bb.ad ]
  %.sroa.7.2.i = phi ptr [ %i.cx, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit.i.i ], [ %i.cl, %bb.ad ]
  %.sroa.0.3.i = phi ptr [ %2, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit.i.i ], [ %i.df, %bb.ad ] ; 2 uses
  %i.dk = ptrtoint ptr %.sroa.7.2.i to i64
  %i.dl = ptrtoint ptr %.sroa.0.3.i to i64
  %i.dm = sub nuw i64 %i.dk, %i.dl
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.dm, i1 false), !alias.scope !654, !noalias !669
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReverseBX_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2m_14UnigramTrainer25make_seed_sentence_piecess2_0E0EB2s_.exit

.loopexit.i:                                      ; preds = %bb.ab
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

.loopexit.split-lp.i:                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_.exit.i22.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ae:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.loopexit.i ], [ %.sroa.13.1.i, %.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i ], [ %i.cl, %.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %.sroa.0.0.i37, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.dn = ptrtoint ptr %.sroa.7.1.i to i64
  %i.do = ptrtoint ptr %.sroa.0.2.i to i64
  %i.dp = sub nuw i64 %i.dn, %i.do
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr nonnull align 8 %.sroa.0.2.i, i64 %i.dp, i1 false), !alias.scope !654, !noalias !670
  resume { ptr, i32 } %lpad.phi.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReverseBX_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2m_14UnigramTrainer25make_seed_sentence_piecess2_0E0EB2s_.exit: ; preds = %bb.y, %bb.z, %_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateTmRScEE10merge_downNCINvMNtCscdodAO9FK5_5alloc5sliceSB1a_11sort_by_keyINtNtBb_3cmp7ReverseB1a_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2O_14UnigramTrainer25make_seed_sentence_piecess2_0E0EB2U_.exit.i
  %i.dq = shl nuw nsw i64 %i.bs, 1
  %i.dr = or disjoint i64 %i.dq, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseB16_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2x_14UnigramTrainer25make_seed_sentence_piecess2_0E0EB2D_.exit

bb.af:                                            ; preds = %bb.w
  %i.ds = getelementptr inbounds nuw [24 x i8], ptr %i.bu, i64 %i.bq
  %i.dt = or i64 %i.br, 1
  %i.du = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.dt, i1 true)
  %i.dv = trunc nuw nsw i64 %i.du to i32
  %i.dw = shl nuw nsw i32 %i.dv, 1
  %i.dx = xor i32 %i.dw, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseB15_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2w_14UnigramTrainer25make_seed_sentence_piecess2_0E0EB2C_(ptr noalias noundef nonnull align 8 %i.ds, i64 noundef range(i64 0, 384307168202282326) %i.br, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.dx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !596
  br label %bb.y

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseB16_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2x_14UnigramTrainer25make_seed_sentence_piecess2_0E0EB2D_.exit: ; preds = %bb.v, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReverseBX_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2m_14UnigramTrainer25make_seed_sentence_piecess2_0E0EB2s_.exit
  %.sroa.0.0.i = phi i64 [ %i.dr, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReverseBX_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2m_14UnigramTrainer25make_seed_sentence_piecess2_0E0EB2s_.exit ], [ %i.ca, %bb.v ] ; 2 uses
  %i.dy = icmp ugt i64 %i.bj, 1
  br i1 %i.dy, label %bb.s, label %._crit_edge

bb.ag:                                            ; preds = %._crit_edge
  %i.dz = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.ea = lshr i64 %.sroa.018.0, 1
  %i.eb = add nuw i64 %i.ea, %.sroa.09.0
  br label %bb.f

bb.ah:                                            ; preds = %._crit_edge
  %i.ec = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.ec, 0
  br i1 %.not31, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ed = or i64 %1, 1
  %i.ee = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.ed, i1 true)
  %i.ef = trunc nuw nsw i64 %i.ee to i32
  %i.eg = shl nuw nsw i32 %i.ef, 1
  %i.eh = xor i32 %i.eg, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseB15_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2w_14UnigramTrainer25make_seed_sentence_piecess2_0E0EB2C_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.eh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !596
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.a, %bb.aj
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSBW_11sort_by_keyINtNtBa_3cmp7ReverseBW_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2j_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2p_(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i97 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i102 = icmp ugt i64 %.sroa.01.0, 2
  %scevgep = getelementptr i8, ptr %0, i64 -8
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.fe, %bb.aa ] ; 8 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.fc, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseB13_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2s_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2y_.exit
  %.sroa.021.0 = phi i8 [ %i.ce, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseB13_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2s_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2y_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseB13_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2s_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2y_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph65, label %._crit_edge

.lr.ph65:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 13 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 12 uses
  %.not.i33 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseB12_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2r_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2x_.exit.i.thread100, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseB12_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2r_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2x_.exit.i.thread, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseB12_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2r_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2x_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmcE7reverseCs2JiOgHzbbc7_10tokenizers.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.val14.i = load i32, ptr %i.q, align 4, !alias.scope !695, !noalias !696, !noundef !3 ; 4 uses
  %i.r = getelementptr i8, ptr %i.o, i64 12
  %.val15.i = load i32, ptr %i.r, align 4, !range !6, !alias.scope !695, !noalias !696, !noundef !3 ; 3 uses
  %.val16.i = load i32, ptr %i.o, align 4, !alias.scope !695, !noalias !696, !noundef !3 ; 2 uses
  %i.s = getelementptr i8, ptr %i.o, i64 4
  %.val17.i = load i32, ptr %i.s, align 4, !range !6, !alias.scope !695, !noalias !696, !noundef !3
  %i.t = icmp eq i32 %.val16.i, %.val14.i
  %i.u = icmp ult i32 %.val16.i, %.val14.i
  %i.v = icmp samesign ult i32 %.val17.i, %.val15.i
  %.sroa.0.0.i.i.i40 = select i1 %i.t, i1 %i.v, i1 %i.u ; 2 uses
  %.not72 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %.sroa.0.0.i.i.i40, label %.preheader, label %.preheader50

.preheader50:                                     ; preds = %bb.k
  br i1 %.not72, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseB12_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2r_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2x_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not72, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseB12_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2r_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2x_.exit.i.thread100, label %.lr.ph59

.lr.ph:                                           ; preds = %.preheader50, %bb.l
  %.val13.i = phi i32 [ %.val11.i, %bb.l ], [ %.val15.i, %.preheader50 ]
  %.val12.i = phi i32 [ %.val10.i, %bb.l ], [ %.val14.i, %.preheader50 ] ; 2 uses
  %.sroa.01.0.i.i55 = phi i64 [ %i.ab, %bb.l ], [ 2, %.preheader50 ] ; 4 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.0.i.i55 ; 2 uses
  %6 = add nsw i64 %.sroa.01.0.i.i55, -1
  %7 = icmp ult i64 %6, %i.n
  tail call void @llvm.assume(i1 %7)
  %.val10.i = load i32, ptr %i.w, align 4, !alias.scope !695, !noalias !696, !noundef !3 ; 3 uses
  %i.x = getelementptr i8, ptr %i.w, i64 4
  %.val11.i = load i32, ptr %i.x, align 4, !range !6, !alias.scope !695, !noalias !696, !noundef !3 ; 2 uses
  %i.y = icmp eq i32 %.val12.i, %.val10.i
  %i.z = icmp ult i32 %.val12.i, %.val10.i
  %i.aa = icmp samesign ult i32 %.val13.i, %.val11.i
  %.sroa.0.0.i.i.i39 = select i1 %i.y, i1 %i.aa, i1 %i.z
  br i1 %.sroa.0.0.i.i.i39, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseB12_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2r_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2x_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.ab = add nuw i64 %.sroa.01.0.i.i55, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ab, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseB12_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2r_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2x_.exit.i, label %.lr.ph

.lr.ph59:                                         ; preds = %.preheader, %bb.m
  %.val9.i = phi i32 [ %.val7.i, %bb.m ], [ %.val15.i, %.preheader ]
  %.val8.i = phi i32 [ %.val.i, %bb.m ], [ %.val14.i, %.preheader ] ; 2 uses
  %.sroa.01.1.i.i58 = phi i64 [ %i.ah, %bb.m ], [ 2, %.preheader ] ; 4 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.1.i.i58 ; 2 uses
  %8 = add nsw i64 %.sroa.01.1.i.i58, -1
  %9 = icmp ult i64 %8, %i.n
  tail call void @llvm.assume(i1 %9)
  %.val.i = load i32, ptr %i.ac, align 4, !alias.scope !695, !noalias !696, !noundef !3 ; 3 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 4
  %.val7.i = load i32, ptr %i.ad, align 4, !range !6, !alias.scope !695, !noalias !696, !noundef !3 ; 2 uses
  %i.ae = icmp eq i32 %.val8.i, %.val.i
  %i.af = icmp ult i32 %.val8.i, %.val.i
  %i.ag = icmp samesign ult i32 %.val9.i, %.val7.i
  %.sroa.0.0.i.i.i = select i1 %i.ae, i1 %i.ag, i1 %i.af
  br i1 %.sroa.0.0.i.i.i, label %bb.m, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseB12_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2r_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2x_.exit.i

bb.m:                                             ; preds = %.lr.ph59
  %i.ah = add nuw i64 %.sroa.01.1.i.i58, 1        ; 2 uses
  %exitcond79.not = icmp eq i64 %i.ah, %i.n
  br i1 %exitcond79.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseB12_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2r_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2x_.exit.i, label %.lr.ph59

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseB12_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2r_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2x_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph59
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i58, %.lr.ph59 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i55, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.ai = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ai)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseB12_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2r_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2x_.exit.i.thread100: ; preds = %.preheader
  br i1 %.not5.i102, label %bb.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmcE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i.i

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseB12_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2r_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2x_.exit.i.thread: ; preds = %.preheader50
  br i1 %.not5.i97, label %bb.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmcE7reverseCs2JiOgHzbbc7_10tokenizers.exit

bb.n:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseB12_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2r_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2x_.exit.i
  br i1 %.sroa.0.0.i.i.i40, label %bb.q, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmcE7reverseCs2JiOgHzbbc7_10tokenizers.exit

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 %.sroa.01.0)
  %i.aj = shl nuw nsw i64 %.sroa.0.0.i38, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseB13_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2s_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2y_.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseB15_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2u_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2A_(ptr noalias noundef nonnull align 4 %i.o, i64 noundef %.sroa.0.0.i37, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !675
  %i.ak = shl nuw nsw i64 %.sroa.0.0.i37, 1
  %i.al = or disjoint i64 %i.ak, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseB13_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2s_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2y_.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmcE7reverseCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmcE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i.prol.loopexit, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmcE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i, %middle.block, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseB12_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2r_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2x_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4548 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseB12_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2r_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2x_.exit.i.thread ], [ %.sroa.0.0.i.i98105109, %middle.block ], [ %.sroa.0.0.i.i98105109, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmcE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i ], [ %.sroa.0.0.i.i98105109, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmcE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i.prol.loopexit ]
  %i.am = shl nuw nsw i64 %.sroa.0.0.i.i4548, 1
  %i.an = or disjoint i64 %i.am, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseB13_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2s_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2y_.exit

bb.q:                                             ; preds = %bb.n
  %i.ao = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !697), !noalias !696
  tail call void @llvm.experimental.noalias.scope.decl(metadata !698), !noalias !696
  %.not.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmcE7reverseCs2JiOgHzbbc7_10tokenizers.exit, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmcE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmcE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseB12_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2r_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2x_.exit.i.thread100, %bb.q
  %i.ap = phi i64 [ %i.ao, %bb.q ], [ 1, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseB12_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2r_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2x_.exit.i.thread100 ] ; 7 uses
  %.sroa.0.0.i.i98105109 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReverseB12_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2r_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2x_.exit.i.thread100 ] ; 5 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.0.i.i98105109 ; 4 uses
  %min.iters.check = icmp samesign ult i64 %i.ap, 18
  br i1 %min.iters.check, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmcE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmcE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i.i
  %i.ar = add nsw i64 %i.ap, -1                   ; 2 uses
  %i.as = add i64 %.sroa.0.0.i.i98105109, %.sroa.09.0
  %i.at = shl i64 %i.as, 3
  %scevgep122 = getelementptr i8, ptr %scevgep, i64 %i.at ; 2 uses
  %mul.result.neg = mul i64 %i.ar, -8
  %mul.overflow = icmp ugt i64 %i.ar, 2305843009213693951
  %i.au = getelementptr i8, ptr %scevgep122, i64 %mul.result.neg
  %i.av = icmp ugt ptr %i.au, %scevgep122
  %i.aw = or i1 %i.av, %mul.overflow
  br i1 %i.aw, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmcE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.ap, 4611686018427387902     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ax = xor i64 %index, -1
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index ; 2 uses
  %i.az = getelementptr [8 x i8], ptr %i.aq, i64 %i.ax ; 2 uses
  %wide.vec = load <4 x i32>, ptr %i.ay, align 4, !alias.scope !699, !noalias !700
  %i.ba = getelementptr i8, ptr %i.az, i64 -8
  %wide.load = load <2 x i64>, ptr %i.ba, align 4, !alias.scope !701, !noalias !702
  %reverse = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse, ptr %i.ay, align 4, !alias.scope !699, !noalias !700
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 -8
  %interleaved.vec = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec, ptr %i.bb, align 4, !alias.scope !701, !noalias !702
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !681

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br i1 %cmp.n, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmcE7reverseCs2JiOgHzbbc7_10tokenizers.exit, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmcE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i.preheader

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmcE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i.preheader: ; preds = %vector.scevcheck, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmcE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmcE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i.i ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.sroa.0.016.i.i.ph, 1
  %xtraiter = and i64 %i.ap, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmcE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i.prol.loopexit, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmcE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i.prol

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmcE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i.prol: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmcE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i.preheader
  %i.bd = xor i64 %.sroa.0.016.i.i.ph, -1
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.016.i.i.ph ; 2 uses
  %i.bf = getelementptr [8 x i8], ptr %i.aq, i64 %i.bd ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 4, !alias.scope !701, !noalias !702
  %i.bh = load <2 x i32>, ptr %i.be, align 4, !alias.scope !699, !noalias !700
  store i64 %i.bg, ptr %i.be, align 4, !alias.scope !699, !noalias !700
  store <2 x i32> %i.bh, ptr %i.bf, align 4, !alias.scope !701, !noalias !702
  %i.bi = or disjoint i64 %.sroa.0.016.i.i.ph, 1
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmcE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i.prol.loopexit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmcE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i.prol.loopexit: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmcE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i.prol, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmcE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i.preheader
  %.sroa.0.016.i.i.unr = phi i64 [ %.sroa.0.016.i.i.ph, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmcE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i.preheader ], [ %i.bi, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmcE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i.prol ]
  %i.bj = icmp eq i64 %i.ap, %.neg
  br i1 %i.bj, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmcE7reverseCs2JiOgHzbbc7_10tokenizers.exit, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmcE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmcE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmcE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i.prol.loopexit, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmcE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.bv, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmcE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i ], [ %.sroa.0.016.i.i.unr, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmcE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i.prol.loopexit ] ; 5 uses
  %i.bk = xor i64 %.sroa.0.016.i.i, -1
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 2 uses
  %i.bm = getelementptr [8 x i8], ptr %i.aq, i64 %i.bk ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 4, !alias.scope !701, !noalias !702
  %i.bo = load <2 x i32>, ptr %i.bl, align 4, !alias.scope !699, !noalias !700
  store i64 %i.bn, ptr %i.bl, align 4, !alias.scope !699, !noalias !700
  store <2 x i32> %i.bo, ptr %i.bm, align 4, !alias.scope !701, !noalias !702
  %i.bp = sub i64 -2, %.sroa.0.016.i.i
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.016.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.bs = getelementptr [8 x i8], ptr %i.aq, i64 %i.bp ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 4, !alias.scope !701, !noalias !702
  %i.bu = load <2 x i32>, ptr %i.br, align 4, !alias.scope !699, !noalias !700
  store i64 %i.bt, ptr %i.br, align 4, !alias.scope !699, !noalias !700
  store <2 x i32> %i.bu, ptr %i.bs, align 4, !alias.scope !701, !noalias !702
  %i.bv = add nuw nsw i64 %.sroa.0.016.i.i, 2     ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.bv, %i.ap
  br i1 %exitcond.not.i.i.1, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmcE7reverseCs2JiOgHzbbc7_10tokenizers.exit, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmcE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i, !llvm.loop !682

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReverseB13_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2s_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2y_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmcE7reverseCs2JiOgHzbbc7_10tokenizers.exit
  %.sroa.0.0.i34 = phi i64 [ %i.an, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmcE7reverseCs2JiOgHzbbc7_10tokenizers.exit ], [ %i.al, %bb.p ], [ %i.aj, %bb.o ] ; 2 uses
  %i.bw = lshr i64 %.sroa.023.0, 1
  %i.bx = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.by = sub nsw i64 %factor, %i.bw
  %i.bz = add nuw nsw i64 %i.bx, %factor
  %i.ca = mul i64 %i.by, %.sroa.0.0
  %i.cb = mul i64 %i.bz, %.sroa.0.0
  %i.cc = xor i64 %i.cb, %i.ca
  %i.cd = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cc, i1 false)
  %i.ce = trunc nuw nsw i64 %i.cd to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph65, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseB16_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2v_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2B_.exit
  %.sroa.02.164 = phi i64 [ %.sroa.02.0, %.lr.ph65 ], [ %i.cf, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseB16_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2v_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2B_.exit ] ; 2 uses
  %.sroa.023.163 = phi i64 [ %.sroa.023.0, %.lr.ph65 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseB16_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2v_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2B_.exit ] ; 4 uses
  %i.cf = add i64 %.sroa.02.164, -1               ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !noundef !3
  %.not29 = icmp ult i8 %i.ch, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseB16_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2v_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2B_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.163, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseB16_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2v_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2B_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.164, %bb.r ], [ 1, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseB16_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2v_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2B_.exit ] ; 3 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.cj, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cf
  %i.cl = load i64, ptr %i.ck, align 8, !noundef !3 ; 3 uses
  %i.cm = lshr i64 %i.cl, 1                       ; 8 uses
  %i.cn = lshr i64 %.sroa.023.163, 1              ; 6 uses
  %i.co = add nuw i64 %i.cm, %i.cn                ; 4 uses
  %i.cp = sub i64 %.sroa.09.0, %i.co
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cp ; 6 uses
  %i.cr = icmp samesign ugt i64 %i.co, %3
  %i.cs = trunc i64 %.sroa.023.163 to i1
  %i.ct = or i64 %i.cl, %.sroa.023.163
  %i.cu = trunc i64 %i.ct to i1
  %or.cond3.i = or i1 %i.cr, %i.cu
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cv = trunc i64 %i.cl to i1
  br i1 %i.cv, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.cw = shl nuw nsw i64 %i.co, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReverseB16_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2v_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2B_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.cs, label %bb.x, label %bb.z
end_hunk_3
