Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.181?download=true
inline.NumInlined: 658
inline.NumDeleted: 211
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvXs_NtNtCs14kzo5Se9zC_5bytes3buf5chainINtB4_5ChainIBD_RShNtNtB8_5bytes5BytesEBS_ENtNtB6_8buf_impl3Buf9remainingCsl8OoimOLbh_6qdrant:bb.a
  %i.b = getelementptr i8, ptr %0, i64 32
  %.val2 = load i64, ptr %i.b, align 8, !noundef !6
  %i.c = tail call noundef i64 @llvm.uadd.sat.i64(i64 %.val1, i64 %.val2)
  %i.d = getelementptr i8, ptr %0, i64 56
  %.val = load i64, ptr %i.d, align 8, !noundef !6
  %i.e = tail call i64 @llvm.uadd.sat.i64(i64 %i.c, i64 %.val)
  ret i64 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvXs_NtNtCs14kzo5Se9zC_5bytes3buf5chainINtB4_5ChainQINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCs1EZwNlLr5NN_2h25proto7streams10prioritize11PrioritizedNtNtB8_5bytes5BytesEENtNtB6_8buf_impl3Buf15chunks_vectoredCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 %1, i64 noundef range(i64 0, 576460752303423488) %2) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !6, !align !19, !noundef !6
  %i.a = tail call noundef i64 @_RNvYINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtCs14kzo5Se9zC_5bytes9bytes_mut8BytesMutENtNtNtBN_3buf8buf_impl3Buf15chunks_vectoredCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.val, ptr noalias nofree noundef nonnull align 8 %1, i64 noundef range(i64 0, 576460752303423488) %2) ; 5 uses
  %i.b = icmp ugt i64 %i.a, %2
  br i1 %i.b, label %bb.c, label %bb.b, !prof !2516

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = sub nuw nsw i64 %2, %i.a
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.a
  %.val5 = load ptr, ptr %i.c, align 8, !nonnull !6, !align !19, !noundef !6
  %i.f = tail call noundef i64 @_RNvXs_NtNtNtCs1EZwNlLr5NN_2h25proto7streams10prioritizeINtB4_11PrioritizedNtNtCs14kzo5Se9zC_5bytes5bytes5BytesENtNtNtB1e_3buf8buf_impl3Buf15chunks_vectoredCsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %.val5, ptr noalias nofree noundef nonnull align 8 %i.e, i64 noundef range(i64 0, 576460752303423488) %i.d)
  %i.g = add i64 %i.f, %i.a
  ret i64 %i.g

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.a, i64 noundef %2, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvXs_NtNtCs14kzo5Se9zC_5bytes3buf5chainINtB4_5ChainQINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCs1EZwNlLr5NN_2h25proto7streams10prioritize11PrioritizedNtNtB8_5bytes5BytesEENtNtB6_8buf_impl3Buf5chunkCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val2 = load ptr, ptr %0, align 8, !nonnull !6, !align !19, !noundef !6 ; 4 uses
  %i.a = tail call noundef zeroext i1 @_RNvYINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtCs14kzo5Se9zC_5bytes9bytes_mut8BytesMutENtNtNtBN_3buf8buf_impl3Buf13has_remainingCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.val2)
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !6, !align !19, !noundef !6
  %i.c = tail call { ptr, i64 } @_RNvXs_NtNtNtCs1EZwNlLr5NN_2h25proto7streams10prioritizeINtB4_11PrioritizedNtNtCs14kzo5Se9zC_5bytes5bytes5BytesENtNtNtB1e_3buf8buf_impl3Buf5chunkCsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %.val)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.val.i.i = load ptr, ptr %.val2, align 8, !alias.scope !2726, !nonnull !6, !noundef !6
  %i.d = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %.val3.i.i = load i64, ptr %i.d, align 8, !alias.scope !2726, !noundef !6 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val2, i64 32
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !2726, !noundef !6
  %..i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.val3.i.i, i64 %i.f) ; 2 uses
  %i.g = sub nuw i64 %.val3.i.i, %..i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %..i.i.i
  %i.i = insertvalue { ptr, i64 } poison, ptr %i.h, 0
  %i.j = insertvalue { ptr, i64 } %i.i, i64 %i.g, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn = phi { ptr, i64 } [ %i.j, %bb.c ], [ %i.c, %bb.b ]
  ret { ptr, i64 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs14kzo5Se9zC_5bytes3buf5chainINtB4_5ChainQINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCs1EZwNlLr5NN_2h25proto7streams10prioritize11PrioritizedNtNtB8_5bytes5BytesEENtNtB6_8buf_impl3Buf7advanceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %.val5 = load ptr, ptr %0, align 8, !nonnull !6, !align !19, !noundef !6 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val5, i64 8
  %.val1.i.i = load i64, ptr %i.a, align 8, !alias.scope !2729, !noundef !6 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val5, i64 32 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !2729, !noundef !6 ; 4 uses
  %i.d = tail call i64 @llvm.usub.sat.i64(i64 %.val1.i.i, i64 %i.c) ; 3 uses
  %.not10 = icmp ugt i64 %.val1.i.i, %i.c
  br i1 %.not10, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_RNvXNtNtCs14kzo5Se9zC_5bytes3buf8buf_implQINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtB6_9bytes_mut8BytesMutENtB2_3Buf7advanceCsl8OoimOLbh_6qdrant.exit, %bb.a
  %.sroa.0.0 = phi i64 [ %1, %bb.a ], [ %i.g, %_RNvXNtNtCs14kzo5Se9zC_5bytes3buf8buf_implQINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtB6_9bytes_mut8BytesMutENtB2_3Buf7advanceCsl8OoimOLbh_6qdrant.exit ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.e, align 8, !nonnull !6, !align !19, !noundef !6
  tail call void @_RNvXs_NtNtNtCs1EZwNlLr5NN_2h25proto7streams10prioritizeINtB4_11PrioritizedNtNtCs14kzo5Se9zC_5bytes5bytes5BytesENtNtNtB1e_3buf8buf_impl3Buf7advanceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.val, i64 noundef %.sroa.0.0)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.not = icmp ult i64 %i.d, %1
  br i1 %.not, label %_RNvXNtNtCs14kzo5Se9zC_5bytes3buf8buf_implQINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtB6_9bytes_mut8BytesMutENtB2_3Buf7advanceCsl8OoimOLbh_6qdrant.exit, label %_RNvXNtNtCs14kzo5Se9zC_5bytes3buf8buf_implQINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtB6_9bytes_mut8BytesMutENtB2_3Buf7advanceCsl8OoimOLbh_6qdrant.exit9

_RNvXNtNtCs14kzo5Se9zC_5bytes3buf8buf_implQINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtB6_9bytes_mut8BytesMutENtB2_3Buf7advanceCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.c
  %i.f = add i64 %i.d, %i.c
  store i64 %i.f, ptr %i.b, align 8, !alias.scope !2732
  %i.g = sub nuw i64 %1, %i.d
  br label %bb.b

_RNvXNtNtCs14kzo5Se9zC_5bytes3buf8buf_implQINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtB6_9bytes_mut8BytesMutENtB2_3Buf7advanceCsl8OoimOLbh_6qdrant.exit9: ; preds = %bb.c
  %i.h = add i64 %i.c, %1
  store i64 %i.h, ptr %i.b, align 8, !alias.scope !2735
  br label %bb.d

bb.d:                                             ; preds = %_RNvXNtNtCs14kzo5Se9zC_5bytes3buf8buf_implQINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtB6_9bytes_mut8BytesMutENtB2_3Buf7advanceCsl8OoimOLbh_6qdrant.exit9, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvXs_NtNtCs14kzo5Se9zC_5bytes3buf5chainINtB4_5ChainQINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCsgwvynAR9gqy_2h25proto7streams10prioritize11PrioritizedINtNtNtCs3WWrd2JY12C_5hyper5proto2h27SendBufNtNtB8_5bytes5BytesEEENtNtB6_8buf_impl3Buf15chunks_vectoredCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 %1, i64 noundef range(i64 0, 576460752303423488) %2) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !6, !align !19, !noundef !6
  %i.a = tail call noundef i64 @_RNvYINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtCs14kzo5Se9zC_5bytes9bytes_mut8BytesMutENtNtNtBN_3buf8buf_impl3Buf15chunks_vectoredCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.val, ptr noalias nofree noundef nonnull align 8 %1, i64 noundef range(i64 0, 576460752303423488) %2) ; 5 uses
  %i.b = icmp ugt i64 %i.a, %2
  br i1 %i.b, label %bb.c, label %bb.b, !prof !2516

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = sub nuw nsw i64 %2, %i.a
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.a
  %.val5 = load ptr, ptr %i.c, align 8, !nonnull !6, !align !19, !noundef !6
  %i.f = tail call noundef i64 @_RNvXs_NtNtNtCsgwvynAR9gqy_2h25proto7streams10prioritizeINtB4_11PrioritizedINtNtNtCs3WWrd2JY12C_5hyper5proto2h27SendBufNtNtCs14kzo5Se9zC_5bytes5bytes5BytesEENtNtNtB1W_3buf8buf_impl3Buf15chunks_vectoredCsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %.val5, ptr noalias nofree noundef nonnull align 8 %i.e, i64 noundef range(i64 0, 576460752303423488) %i.d)
  %i.g = add i64 %i.f, %i.a
  ret i64 %i.g

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.a, i64 noundef %2, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvXs_NtNtCs14kzo5Se9zC_5bytes3buf5chainINtB4_5ChainQINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCsgwvynAR9gqy_2h25proto7streams10prioritize11PrioritizedINtNtNtCs3WWrd2JY12C_5hyper5proto2h27SendBufNtNtB8_5bytes5BytesEEENtNtB6_8buf_impl3Buf5chunkCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val2 = load ptr, ptr %0, align 8, !nonnull !6, !align !19, !noundef !6 ; 4 uses
  %i.a = tail call noundef zeroext i1 @_RNvYINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtCs14kzo5Se9zC_5bytes9bytes_mut8BytesMutENtNtNtBN_3buf8buf_impl3Buf13has_remainingCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.val2)
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !6, !align !19, !noundef !6
  %i.c = tail call { ptr, i64 } @_RNvXs_NtNtNtCsgwvynAR9gqy_2h25proto7streams10prioritizeINtB4_11PrioritizedINtNtNtCs3WWrd2JY12C_5hyper5proto2h27SendBufNtNtCs14kzo5Se9zC_5bytes5bytes5BytesEENtNtNtB1W_3buf8buf_impl3Buf5chunkCsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %.val)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.val.i.i = load ptr, ptr %.val2, align 8, !alias.scope !2738, !nonnull !6, !noundef !6
  %i.d = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %.val3.i.i = load i64, ptr %i.d, align 8, !alias.scope !2738, !noundef !6 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val2, i64 32
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !2738, !noundef !6
  %..i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.val3.i.i, i64 %i.f) ; 2 uses
  %i.g = sub nuw i64 %.val3.i.i, %..i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %..i.i.i
  %i.i = insertvalue { ptr, i64 } poison, ptr %i.h, 0
  %i.j = insertvalue { ptr, i64 } %i.i, i64 %i.g, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn = phi { ptr, i64 } [ %i.j, %bb.c ], [ %i.c, %bb.b ]
  ret { ptr, i64 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs14kzo5Se9zC_5bytes3buf5chainINtB4_5ChainQINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtB8_9bytes_mut8BytesMutEQINtNtNtNtCsgwvynAR9gqy_2h25proto7streams10prioritize11PrioritizedINtNtNtCs3WWrd2JY12C_5hyper5proto2h27SendBufNtNtB8_5bytes5BytesEEENtNtB6_8buf_impl3Buf7advanceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %.val5 = load ptr, ptr %0, align 8, !nonnull !6, !align !19, !noundef !6 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val5, i64 8
  %.val1.i.i = load i64, ptr %i.a, align 8, !alias.scope !2741, !noundef !6 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val5, i64 32 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !2741, !noundef !6 ; 4 uses
  %i.d = tail call i64 @llvm.usub.sat.i64(i64 %.val1.i.i, i64 %i.c) ; 3 uses
  %.not10 = icmp ugt i64 %.val1.i.i, %i.c
  br i1 %.not10, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_RNvXNtNtCs14kzo5Se9zC_5bytes3buf8buf_implQINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtB6_9bytes_mut8BytesMutENtB2_3Buf7advanceCsl8OoimOLbh_6qdrant.exit, %bb.a
  %.sroa.0.0 = phi i64 [ %1, %bb.a ], [ %i.g, %_RNvXNtNtCs14kzo5Se9zC_5bytes3buf8buf_implQINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtB6_9bytes_mut8BytesMutENtB2_3Buf7advanceCsl8OoimOLbh_6qdrant.exit ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.e, align 8, !nonnull !6, !align !19, !noundef !6
  tail call void @_RNvXs_NtNtNtCsgwvynAR9gqy_2h25proto7streams10prioritizeINtB4_11PrioritizedINtNtNtCs3WWrd2JY12C_5hyper5proto2h27SendBufNtNtCs14kzo5Se9zC_5bytes5bytes5BytesEENtNtNtB1W_3buf8buf_impl3Buf7advanceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %.val, i64 noundef %.sroa.0.0)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.not = icmp ult i64 %i.d, %1
  br i1 %.not, label %_RNvXNtNtCs14kzo5Se9zC_5bytes3buf8buf_implQINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtB6_9bytes_mut8BytesMutENtB2_3Buf7advanceCsl8OoimOLbh_6qdrant.exit, label %_RNvXNtNtCs14kzo5Se9zC_5bytes3buf8buf_implQINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtB6_9bytes_mut8BytesMutENtB2_3Buf7advanceCsl8OoimOLbh_6qdrant.exit9

_RNvXNtNtCs14kzo5Se9zC_5bytes3buf8buf_implQINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtB6_9bytes_mut8BytesMutENtB2_3Buf7advanceCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.c
  %i.f = add i64 %i.d, %i.c
  store i64 %i.f, ptr %i.b, align 8, !alias.scope !2744
  %i.g = sub nuw i64 %1, %i.d
  br label %bb.b

_RNvXNtNtCs14kzo5Se9zC_5bytes3buf8buf_implQINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtB6_9bytes_mut8BytesMutENtB2_3Buf7advanceCsl8OoimOLbh_6qdrant.exit9: ; preds = %bb.c
  %i.h = add i64 %i.c, %1
  store i64 %i.h, ptr %i.b, align 8, !alias.scope !2747
  br label %bb.d

bb.d:                                             ; preds = %_RNvXNtNtCs14kzo5Se9zC_5bytes3buf8buf_implQINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtB6_9bytes_mut8BytesMutENtB2_3Buf7advanceCsl8OoimOLbh_6qdrant.exit9, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs6EFb6a2W5dE_10actix_http4body12message_bodyINtB4_17MessageBodyMapErrNtNtCs14kzo5Se9zC_5bytes9bytes_mut8BytesMutNvYzINtNtCskKLDkoKarTP_4core7convert4IntoINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB26_5error5ErrorEL_EE4intoENtB4_11MessageBody9poll_nextCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 10 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.5 = alloca ptr, align 8                  ; 5 uses
  %.sroa.11 = alloca ptr, align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2750)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2753)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !2753, !noalias !2750, !noundef !6 ; 3 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2755
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !2755
  %i.j = load i64, ptr %i.f, align 8, !range !2555, !noalias !2755, !noundef !6
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !2556, !noalias !2755, !noundef !6 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.k, label %bb.c, label %_RNvMs_NtCs14kzo5Se9zC_5bytes9bytes_mutNtB4_8BytesMut13with_capacity.exit.i, !prof !2516

bb.c:                                             ; preds = %bb.b
  %i.o = load i64, ptr %i.n, align 8, !noalias !2755
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.m, i64 %i.o) #26, !noalias !2755
  unreachable

_RNvMs_NtCs14kzo5Se9zC_5bytes9bytes_mutNtB4_8BytesMut13with_capacity.exit.i: ; preds = %bb.b
  %i.p = load ptr, ptr %i.n, align 8, !noalias !2755, !nonnull !6, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2755
  %i.q = lshr i64 %i.m, 10
  %i.r = tail call range(i64 11, 65) i64 @llvm.ctlz.i64(i64 %i.q, i1 false)
  %i.s = sub nuw nsw i64 64, %i.r
  %..i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.s, i64 7)
  %i.t = shl nuw nsw i64 %..i.i.i.i, 2
  %i.u = getelementptr i8, ptr null, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 1
  %.sroa.015.0.copyload.i = load ptr, ptr %1, align 8, !alias.scope !2753, !noalias !2750 ; 4 uses
  %.sroa.719.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.719.0.copyload.i = load i64, ptr %.sroa.719.0..sroa_idx.i, align 8, !alias.scope !2753, !noalias !2750
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.8.0.copyload.i = load ptr, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !2753, !noalias !2750 ; 2 uses
  store ptr %i.p, ptr %1, align 8, !alias.scope !2753, !noalias !2750
  store i64 0, ptr %i.g, align 8, !alias.scope !2753, !noalias !2750
  store i64 %i.m, ptr %.sroa.719.0..sroa_idx.i, align 8, !alias.scope !2753, !noalias !2750
  store ptr %i.v, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !2753, !noalias !2750
  %i.w = ptrtoint ptr %.sroa.8.0.copyload.i to i64 ; 2 uses
  %i.x = and i64 %i.w, 1
  %.not.i.i = icmp eq i64 %i.x, 0
  br i1 %.not.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_RNvMs_NtCs14kzo5Se9zC_5bytes9bytes_mutNtB4_8BytesMut13with_capacity.exit.i
  %i.y = lshr i64 %i.w, 5                         ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2758
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.015.0.copyload.i) ]
  %i.z = sub nsw i64 0, %i.y
  %i.aa = getelementptr inbounds i8, ptr %.sroa.015.0.copyload.i, i64 %i.z
  %i.ab = add i64 %i.y, %i.h
  %i.ac = add i64 %i.y, %.sroa.719.0.copyload.i   ; 2 uses
  %i.ad = icmp sgt i64 %i.ac, -1
  tail call void @llvm.assume(i1 %i.ad)
  store i64 %i.ac, ptr %i.e, align 8, !noalias !2758
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.aa, ptr %i.ae, align 8, !noalias !2758
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.ab, ptr %i.af, align 8, !noalias !2758
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2758
  call void @_RNvXsE_NtCs14kzo5Se9zC_5bytes5bytesNtB5_5BytesINtNtCskKLDkoKarTP_4core7convert4FromINtNtCsexYYUdYSQU6_5alloc3vec3VechEE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !2758
  call void @llvm.experimental.noalias.scope.decl(metadata !2762)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2758
  store i64 %i.y, ptr %i.c, align 8, !noalias !2765
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !2762, !noalias !2758, !noundef !6 ; 4 uses
  %.not.i.i.i = icmp ugt i64 %i.y, %i.ah
  br i1 %.not.i.i.i, label %bb.e, label %bb.h, !prof !2516

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2765
  store i64 %i.ah, ptr %i.b, align 8, !noalias !2765
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2765
  store ptr %i.c, ptr %i.a, align 8, !noalias !2765
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !2765
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.ai, align 8, !noalias !2765
  %.sroa.46.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i.i.i, align 8, !noalias !2765
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #25
          to label %.noexc.i.i unwind label %bb.g, !noalias !2758

.noexc.i.i:                                       ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %_RNvMs_NtCs14kzo5Se9zC_5bytes9bytes_mutNtB4_8BytesMut13with_capacity.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.015.0.copyload.i) ]
  br label %_RNvMs_NtCs14kzo5Se9zC_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i

bb.g:                                             ; preds = %bb.e
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !2766)
  call void @llvm.experimental.noalias.scope.decl(metadata !2769)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !2772, !noalias !2758, !noundef !6
  %i.am = load ptr, ptr %i.d, align 8, !alias.scope !2772, !noalias !2758, !nonnull !6, !align !19, !noundef !6
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !2773, !nonnull !6, !noundef !6
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !2772, !noalias !2758, !noundef !6
  invoke void %i.ao(ptr noundef %i.al, ptr noundef %i.aq, i64 noundef %i.ah)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs14kzo5Se9zC_5bytes5bytes5BytesECsl8OoimOLbh_6qdrant.exit.i.i unwind label %bb.i, !noalias !2758, !inline_history !21

bb.h:                                             ; preds = %bb.d
  %i.ar = sub nuw i64 %i.ah, %i.y
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !2762, !noalias !2758, !noundef !6
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2758
  %.sroa.0.0.copyload1.i = load ptr, ptr %i.d, align 8, !noalias !2774
  %.sroa.7.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.7.0.copyload7.i = load ptr, ptr %.sroa.7.0..sroa_idx6.i, align 8, !noalias !2774
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2758
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2758
  br label %_RNvMs_NtCs14kzo5Se9zC_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i

bb.i:                                             ; preds = %bb.g
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !2758
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs14kzo5Se9zC_5bytes5bytes5BytesECsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.g
  resume { ptr, i32 } %i.aj

_RNvMs_NtCs14kzo5Se9zC_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i: ; preds = %bb.h, %bb.f
  %.sroa.7.0.i = phi ptr [ %.sroa.8.0.copyload.i, %bb.f ], [ %.sroa.7.0.copyload7.i, %bb.h ]
  %.sroa.6.0.i = phi i64 [ %i.h, %bb.f ], [ %i.ar, %bb.h ]
  %.sroa.5.0.i = phi ptr [ %.sroa.015.0.copyload.i, %bb.f ], [ %i.au, %bb.h ]
  %.sroa.0.0.i = phi ptr [ @_RNvNtCs14kzo5Se9zC_5bytes9bytes_mut13SHARED_VTABLE, %bb.f ], [ %.sroa.0.0.copyload1.i, %bb.h ]
  store ptr %.sroa.0.0.i, ptr %.sroa.5, align 8, !alias.scope !2750, !noalias !2753
  br label %bb.j

bb.j:                                             ; preds = %_RNvMs_NtCs14kzo5Se9zC_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i, %bb.a
  %.sroa.10.0 = phi i64 [ undef, %bb.a ], [ %.sroa.6.0.i, %_RNvMs_NtCs14kzo5Se9zC_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i ]
  %.sroa.8.0 = phi ptr [ undef, %bb.a ], [ %.sroa.5.0.i, %_RNvMs_NtCs14kzo5Se9zC_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i ]
  %.sink27.i.sroa.phi = phi ptr [ %.sroa.5, %bb.a ], [ %.sroa.11, %_RNvMs_NtCs14kzo5Se9zC_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i ]
  %.sink.i = phi ptr [ null, %bb.a ], [ %.sroa.7.0.i, %_RNvMs_NtCs14kzo5Se9zC_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i ]
  store ptr %.sink.i, ptr %.sink27.i.sroa.phi, align 8, !alias.scope !2750, !noalias !2753
  %.sroa.5.0..sroa.5.0..sroa.5.0..sroa.5.8..sroa.0.0.copyload = load ptr, ptr %.sroa.5, align 8 ; 2 uses
  %.not = icmp eq ptr %.sroa.5.0..sroa.5.0..sroa.5.0..sroa.5.8..sroa.0.0.copyload, null
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.11.0..sroa.11.0..sroa.11.0..sroa.11.16.copyload = load ptr, ptr %.sroa.11, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0..sroa.5.0..sroa.5.0..sroa.5.8..sroa.0.0.copyload, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.45.sroa.4.0..sroa.45.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.8.0, ptr %.sroa.45.sroa.4.0..sroa.45.0..sroa_idx.sroa_idx, align 8
  %.sroa.45.sroa.4.sroa.4.0..sroa.45.sroa.4.0..sroa.45.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.10.0, ptr %.sroa.45.sroa.4.sroa.4.0..sroa.45.sroa.4.0..sroa.45.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.45.sroa.4.sroa.5.0..sroa.45.sroa.4.0..sroa.45.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.11.0..sroa.11.0..sroa.11.0..sroa.11.16.copyload, ptr %.sroa.45.sroa.4.sroa.5.0..sroa.45.sroa.4.0..sroa.45.0..sroa_idx.sroa_idx.sroa_idx, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.sink = phi i64 [ 1, %bb.k ], [ 0, %bb.j ]
  store i64 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs6EFb6a2W5dE_10actix_http4body12message_bodyINtB4_17MessageBodyMapErrNtNtCsexYYUdYSQU6_5alloc6string6StringNvYzINtNtCskKLDkoKarTP_4core7convert4IntoINtNtB1k_5boxed3BoxDNtNtB21_5error5ErrorEL_EE4intoENtB4_11MessageBody9poll_nextCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2775)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !2775, !noalias !2778, !noundef !6 ; 2 uses
  %i.f = icmp sgt i64 %i.e, -1
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp eq i64 %i.e, 0
  br i1 %i.g, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2780
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !noalias !2778
  store i64 0, ptr %1, align 8, !alias.scope !2775, !noalias !2778
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.44.0..sroa_idx.i, align 8, !alias.scope !2775, !noalias !2778
  store i64 0, ptr %i.d, align 8, !alias.scope !2775, !noalias !2778
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  call void @_RNvXsH_NtCs14kzo5Se9zC_5bytes5bytesNtB5_5BytesINtNtCskKLDkoKarTP_4core7convert4FromNtNtCsexYYUdYSQU6_5alloc6string6StringE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2780
  %.sroa.0.0.copyload.pre = load ptr, ptr %i.h, align 8 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0.copyload.pre, null
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.45.sroa.4.0..sroa.45.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.45.sroa.4.0..sroa.45.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.copyload.pre, ptr %.sroa.45.0..sroa_idx, align 8
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.c
  %.sink = phi i64 [ 1, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtCs6EFb6a2W5dE_10actix_http4body12message_bodyINtB4_17MessageBodyMapErrReNvYzINtNtCskKLDkoKarTP_4core7convert4IntoINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB1r_5error5ErrorEL_EE4intoENtB4_11MessageBody9poll_nextCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(32) %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2781, !noalias !2784, !noundef !6 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !alias.scope !2781, !noalias !2784, !nonnull !6, !noundef !6
  store ptr inttoptr (i64 1 to ptr), ptr %1, align 8, !alias.scope !2781, !noalias !2784, !captures !2635
  store i64 0, ptr %i.a, align 8, !alias.scope !2781, !noalias !2784
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @0, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.45.sroa.4.0..sroa.45.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.d, ptr %.sroa.45.sroa.4.0..sroa.45.0..sroa_idx.sroa_idx, align 8
  %.sroa.45.sroa.4.sroa.4.0..sroa.45.sroa.4.0..sroa.45.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.b, ptr %.sroa.45.sroa.4.sroa.4.0..sroa.45.sroa.4.0..sroa.45.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.45.sroa.4.sroa.5.0..sroa.45.sroa.4.0..sroa.45.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %.sroa.45.sroa.4.sroa.5.0..sroa.45.sroa.4.0..sroa.45.0..sroa_idx.sroa_idx.sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvXs_NtNtCs6EFb6a2W5dE_10actix_http4body12message_bodyINtB4_17MessageBodyMapErruNvYzINtNtCskKLDkoKarTP_4core7convert4IntoINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB1q_5error5ErrorEL_EE4intoENtB4_11MessageBody9poll_nextCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 8)) %0, ptr noalias nofree noundef readnone captures(none) dereferenceable(1) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  store i64 0, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvYINtNtNtCs14kzo5Se9zC_5bytes3buf4take4TakeQINtNtCs2Co0DGPNz3P_14http_body_util4util7BufListNtNtB9_5bytes5BytesEENtNtB7_8buf_impl3Buf13has_remainingCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2786)
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !2786, !nonnull !6, !align !19, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2786
  call void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs14kzo5Se9zC_5bytes5bytes5BytesE4iterCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val.i), !noalias !2786
  %i.b = call noundef i64 @_RINvXs2_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iterINtB6_4IterNtNtCs14kzo5Se9zC_5bytes5bytes5BytesENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1Q_8adapters3map8map_foldRB19_jjNCNvXs_NtCs2Co0DGPNz3P_14http_body_util4utilINtB3y_7BufListB19_ENtNtNtB1d_3buf8buf_impl3Buf9remaining0NCINvXsK_NtB1O_5accumjNtB5e_3Sum3sumINtB2Q_3MapBY_B3r_EE0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a, i64 noundef 0), !noalias !2786
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2786
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !2786, !noundef !6
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.d, i64 %i.b)
  %i.e = icmp ne i64 %..i.i, 0
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvYINtNtNtCs14kzo5Se9zC_5bytes3buf4take4TakeQINtNtNtNtCs1EZwNlLr5NN_2h25proto7streams10prioritize11PrioritizedNtNtB9_5bytes5BytesEENtNtB7_8buf_impl3Buf13has_remainingCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2789)
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !2789, !nonnull !6, !align !19, !noundef !6
  %i.a = tail call noundef i64 @_RNvXs_NtNtNtCs1EZwNlLr5NN_2h25proto7streams10prioritizeINtB4_11PrioritizedNtNtCs14kzo5Se9zC_5bytes5bytes5BytesENtNtNtB1e_3buf8buf_impl3Buf9remainingCsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %.val.i), !noalias !2789
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !2789, !noundef !6
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.c, i64 %i.a)
  %i.d = icmp ne i64 %..i.i, 0
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvYINtNtNtCs14kzo5Se9zC_5bytes3buf4take4TakeQINtNtNtNtCsgwvynAR9gqy_2h25proto7streams10prioritize11PrioritizedINtNtNtCs3WWrd2JY12C_5hyper5proto2h27SendBufNtNtB9_5bytes5BytesEEENtNtB7_8buf_impl3Buf13has_remainingCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2792)
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !2792, !nonnull !6, !align !19, !noundef !6
  %i.a = tail call noundef i64 @_RNvXs_NtNtNtCsgwvynAR9gqy_2h25proto7streams10prioritizeINtB4_11PrioritizedINtNtNtCs3WWrd2JY12C_5hyper5proto2h27SendBufNtNtCs14kzo5Se9zC_5bytes5bytes5BytesEENtNtNtB1W_3buf8buf_impl3Buf9remainingCsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %.val.i), !noalias !2792
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !2792, !noundef !6
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.c, i64 %i.a)
  %i.d = icmp ne i64 %..i.i, 0
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvYINtNtNtCs14kzo5Se9zC_5bytes3buf4take4TakeQQQNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9DecodeBufENtNtB7_8buf_impl3Buf13has_remainingCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2795)
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !2795, !nonnull !6, !align !19, !noundef !6
  %.val.i.i = load ptr, ptr %.val.i, align 8, !noalias !2795, !nonnull !6, !align !19, !noundef !6
  %.val.i.i.i = load ptr, ptr %.val.i.i, align 8, !noalias !2795, !nonnull !6, !align !19, !noundef !6
  %i.a = getelementptr i8, ptr %.val.i.i.i, i64 8
  %.val.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !2795, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !2795, !noundef !6
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.c, i64 %.val.i.i.i.i)
  %i.d = icmp ne i64 %..i.i, 0
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvYINtNtNtCs14kzo5Se9zC_5bytes3buf4take4TakeQRShENtNtB7_8buf_impl3Buf13has_remainingCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2798)
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !2798, !nonnull !6, !align !19, !noundef !6
  %i.a = getelementptr i8, ptr %.val.i, i64 8
  %.val.i.i = load i64, ptr %i.a, align 8, !noalias !2798, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !2798, !noundef !6
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.c, i64 %.val.i.i)
  %i.d = icmp ne i64 %..i.i, 0
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvYINtNtNtCs14kzo5Se9zC_5bytes3buf5chain5ChainQINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtB9_9bytes_mut8BytesMutEQINtNtNtNtCs1EZwNlLr5NN_2h25proto7streams10prioritize11PrioritizedNtNtB9_5bytes5BytesEENtNtB7_8buf_impl3Buf13has_remainingCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !6, !align !19, !noundef !6 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !6, !align !19, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.val1.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !2801, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !2801, !noundef !6
  %i.e = tail call noundef i64 @llvm.usub.sat.i64(i64 %.val1.i.i.i, i64 %i.d)
  %i.f = tail call noundef i64 @_RNvXs_NtNtNtCs1EZwNlLr5NN_2h25proto7streams10prioritizeINtB4_11PrioritizedNtNtCs14kzo5Se9zC_5bytes5bytes5BytesENtNtNtB1e_3buf8buf_impl3Buf9remainingCsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %.val1)
  %i.g = or i64 %i.e, %i.f
  %i.h = icmp ne i64 %i.g, 0
  ret i1 %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvYINtNtNtCs14kzo5Se9zC_5bytes3buf5chain5ChainQINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorNtNtB9_9bytes_mut8BytesMutEQINtNtNtNtCsgwvynAR9gqy_2h25proto7streams10prioritize11PrioritizedINtNtNtCs3WWrd2JY12C_5hyper5proto2h27SendBufNtNtB9_5bytes5BytesEEENtNtB7_8buf_impl3Buf13has_remainingCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !6, !align !19, !noundef !6 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !6, !align !19, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.val1.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !2804, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !2804, !noundef !6
  %i.e = tail call noundef i64 @llvm.usub.sat.i64(i64 %.val1.i.i.i, i64 %i.d)
  %i.f = tail call noundef i64 @_RNvXs_NtNtNtCsgwvynAR9gqy_2h25proto7streams10prioritizeINtB4_11PrioritizedINtNtNtCs3WWrd2JY12C_5hyper5proto2h27SendBufNtNtCs14kzo5Se9zC_5bytes5bytes5BytesEENtNtNtB1W_3buf8buf_impl3Buf9remainingCsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %.val1)
  %i.g = or i64 %i.e, %i.f
  %i.h = icmp ne i64 %i.g, 0
  ret i1 %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYRShNtNtNtCs14kzo5Se9zC_5bytes3buf8buf_impl3Buf13copy_to_bytesCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 9 uses
end_hunk_0
