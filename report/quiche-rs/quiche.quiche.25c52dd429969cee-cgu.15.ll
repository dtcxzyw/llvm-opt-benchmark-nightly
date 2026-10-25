Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/quiche.quiche.25c52dd429969cee-cgu.15?download=true
inline.NumInlined: 225
inline.NumDeleted: 114
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs2_NtCs3f36owOmepS_6quiche3tlsNtB5_9Handshake25set_quic_transport_params:bb.a
  %.sroa.0.0 = phi i64 [ %i.h, %bb.b ], [ %i.m, %bb.c ], !dbg !8572
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !8573
  %i.n = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0, !dbg !8567
  %i.o = insertvalue { i64, i64 } %i.n, i64 %.sroa.3.0, 1, !dbg !8567
  ret { i64, i64 } %i.o, !dbg !8567
}

; Function Attrs: nounwind nonlazybind uwtable
define { i64, i64 } @_RNvMs2_NtCs3f36owOmepS_6quiche3tlsNtB5_9Handshake4init(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, i1 noundef zeroext %1) unnamed_addr #2 !dbg !8582 {
bb.a:
    #dbg_value(ptr %0, !8625, !DIExpression(), !8636)
    #dbg_value(i1 %1, !8626, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !8636)
  %.val = load ptr, ptr %0, align 8, !dbg !8692   ; 7 uses
    #dbg_value(ptr poison, !8637, !DIExpression(), !8585)
    #dbg_value(i1 %1, !8640, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !8585)
  br i1 %1, label %bb.c, label %bb.b, !dbg !8693

bb.b:                                             ; preds = %bb.a
  tail call void @SSL_set_connect_state(ptr noundef %.val) #21, !dbg !8694
  br label %_RNvMs2_NtCs3f36owOmepS_6quiche3tlsNtB5_9Handshake9set_state.exit, !dbg !8695

bb.c:                                             ; preds = %bb.a
  tail call void @SSL_set_accept_state(ptr noundef %.val) #21, !dbg !8696
  br label %_RNvMs2_NtCs3f36owOmepS_6quiche3tlsNtB5_9Handshake9set_state.exit, !dbg !8695

_RNvMs2_NtCs3f36owOmepS_6quiche3tlsNtB5_9Handshake9set_state.exit: ; preds = %bb.b, %bb.c
    #dbg_value(ptr poison, !8642, !DIExpression(), !8588)
    #dbg_value(i16 772, !8647, !DIExpression(), !8588)
  %i.a = tail call noundef i32 @SSL_set_min_proto_version(ptr noundef %.val, i16 noundef zeroext 772) #21, !dbg !8697
    #dbg_value(i32 %i.a, !8649, !DIExpression(), !8591)
  %i.b = icmp eq i32 %i.a, 1, !dbg !8698
    #dbg_value(i64 poison, !8651, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8662)
    #dbg_value(i64 undef, !8651, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8662)
  br i1 %i.b, label %bb.d, label %bb.h, !dbg !8699

bb.d:                                             ; preds = %_RNvMs2_NtCs3f36owOmepS_6quiche3tlsNtB5_9Handshake9set_state.exit
    #dbg_value(ptr poison, !8663, !DIExpression(), !8603)
    #dbg_value(i16 772, !8665, !DIExpression(), !8603)
  %i.c = tail call noundef i32 @SSL_set_max_proto_version(ptr noundef %.val, i16 noundef zeroext 772) #21, !dbg !8700
    #dbg_value(i32 %i.c, !8667, !DIExpression(), !8606)
  %i.d = icmp eq i32 %i.c, 1, !dbg !8701
    #dbg_value(i64 poison, !8651, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8670)
    #dbg_value(i64 undef, !8651, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8670)
  br i1 %i.d, label %bb.e, label %bb.h, !dbg !8702

bb.e:                                             ; preds = %bb.d
    #dbg_value(ptr poison, !8671, !DIExpression(), !8609)
  %i.e = tail call noundef i32 @SSL_set_quic_method(ptr noundef %.val, ptr noundef nonnull @_RNvNtNtCs3f36owOmepS_6quiche3tls9boringssl20QUICHE_STREAM_METHOD) #21, !dbg !8703
    #dbg_value(i32 %i.e, !8675, !DIExpression(), !8612)
  %i.f = icmp eq i32 %i.e, 1, !dbg !8704
    #dbg_value(i64 poison, !8651, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8678)
    #dbg_value(i64 undef, !8651, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8678)
  br i1 %i.f, label %bb.f, label %bb.h, !dbg !8705

bb.f:                                             ; preds = %bb.e
    #dbg_value(ptr poison, !8679, !DIExpression(), !8615)
    #dbg_value(ptr @26, !8682, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8615)
    #dbg_value(i64 6, !8682, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8615)
  %i.g = tail call noundef i32 @SSL_set_quic_early_data_context(ptr noundef %.val, ptr noundef nonnull @26, i64 noundef 6) #21, !dbg !8706
    #dbg_value(i32 %i.g, !8684, !DIExpression(), !8618)
  %i.h = icmp eq i32 %i.g, 1, !dbg !8707
    #dbg_value(i64 poison, !8651, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8687)
    #dbg_value(i64 undef, !8651, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8687)
  br i1 %i.h, label %bb.g, label %bb.h, !dbg !8708

bb.g:                                             ; preds = %bb.f
    #dbg_value(ptr poison, !8688, !DIExpression(), !8621)
    #dbg_value(i1 true, !8690, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !8621)
  tail call void @SSL_set_quiet_shutdown(ptr noundef %.val, i32 noundef 1) #21, !dbg !8709
  br label %bb.h, !dbg !8710

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.d, %_RNvMs2_NtCs3f36owOmepS_6quiche3tlsNtB5_9Handshake9set_state.exit, %bb.g
  %.sroa.0.0 = phi i64 [ -1, %bb.g ], [ 9, %_RNvMs2_NtCs3f36owOmepS_6quiche3tlsNtB5_9Handshake9set_state.exit ], [ 9, %bb.d ], [ 9, %bb.e ], [ 9, %bb.f ], !dbg !8636
  %i.i = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0, !dbg !8710
  %i.j = insertvalue { i64, i64 } %i.i, i64 undef, 1, !dbg !8710
  ret { i64, i64 } %i.j, !dbg !8710
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvMs2_NtCs3f36owOmepS_6quiche3tlsNtB5_9Handshake5clear(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 !dbg !8712 {
bb.a:
    #dbg_value(ptr %0, !8715, !DIExpression(), !8718)
    #dbg_value(ptr %0, !8719, !DIExpression(), !8722)
  %i.a = load ptr, ptr %0, align 8, !dbg !8724, !noundef !1281 ; 2 uses
  %i.b = tail call noundef i32 @SSL_clear(ptr noundef %i.a) #21, !dbg !8725
    #dbg_value(i32 %i.b, !8716, !DIExpression(), !8723)
  %i.c = tail call fastcc { i64, i64 } @_RNvMs2_NtCs3f36owOmepS_6quiche3tlsNtB5_9Handshake14map_result_ssl(ptr %i.a, i32 noundef %i.b), !dbg !8726
  ret { i64, i64 } %i.c, !dbg !8727
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef range(i8 -1, 3) i8 @_RNvMs2_NtCs3f36owOmepS_6quiche3tlsNtB5_9Handshake6cipher(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 !dbg !8739 {
bb.a:
    #dbg_value(ptr %0, !8766, !DIExpression(), !8783)
    #dbg_value(ptr %0, !8784, !DIExpression(), !8787)
  %i.a = load ptr, ptr %0, align 8, !dbg !8822, !noundef !1281
  %i.b = tail call noundef ptr @SSL_get_current_cipher(ptr noundef %i.a) #21, !dbg !8823 ; 2 uses
    #dbg_value(ptr %i.b, !8788, !DIExpression(), !8796)
    #dbg_value(ptr %i.b, !8797, !DIExpression(), !8810)
    #dbg_value(ptr %i.b, !8811, !DIExpression(), !8816)
  %i.c = icmp eq ptr %i.b, null, !dbg !8824
  br i1 %i.c, label %_RNvNtCs3f36owOmepS_6quiche3tls19get_cipher_from_ptr.exit, label %bb.b, !dbg !8825

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %i.b, !8767, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8820)
    #dbg_value(i64 -1, !8767, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8820)
    #dbg_value(ptr %i.b, !4932, !DIExpression(), !8751)
  %i.d = tail call noundef i32 @SSL_CIPHER_get_id(ptr noundef nonnull %i.b) #21, !dbg !8826, !noalias !8821
    #dbg_value(i32 %i.d, !4945, !DIExpression(), !8754)
  %switch.tableidx.i = add i32 %i.d, -50336513, !dbg !8827 ; 2 uses
  %i.e = icmp ult i32 %switch.tableidx.i, 3, !dbg !8827
  %switch.idx.cast.i = trunc nuw nsw i32 %switch.tableidx.i to i8
  %spec.select = select i1 %i.e, i8 %switch.idx.cast.i, i8 -1, !dbg !8827
  br label %_RNvNtCs3f36owOmepS_6quiche3tls19get_cipher_from_ptr.exit, !dbg !8827

_RNvNtCs3f36owOmepS_6quiche3tls19get_cipher_from_ptr.exit: ; preds = %bb.b, %bb.a
  %.sroa.0.1 = phi i8 [ -1, %bb.a ], [ %spec.select, %bb.b ], !dbg !8828
  ret i8 %.sroa.0.1, !dbg !8829
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i64 @_RNvMs3_NtNtCs3f36owOmepS_6quiche8recovery9bandwidthNtB5_9Bandwidth19to_bytes_per_period(i64 noundef %0, i64 noundef %1, i32 noundef range(i32 0, 1000000000) %2) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !898 {
bb.a:
    #dbg_value(i64 %0, !4951, !DIExpression(), !8832)
    #dbg_value(i64 %1, !4952, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8832)
    #dbg_value(i32 %2, !4952, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !8832)
    #dbg_value(ptr poison, !4960, !DIExpression(), !8834)
    #dbg_value(ptr poison, !4969, !DIExpression(), !8836)
    #dbg_value(i64 %0, !4973, !DIExpression(), !8838)
    #dbg_value(i64 %0, !4978, !DIExpression(), !8840)
  %i.a = icmp eq i64 %0, -1, !dbg !8866
  br i1 %i.a, label %bb.b, label %bb.c, !dbg !8866

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr poison, !4964, !DIExpression(), !8841)
    #dbg_value(ptr poison, !4971, !DIExpression(), !8842)
  %i.b = icmp ne i64 %1, 0, !dbg !8842
  %.not = icmp ne i32 %2, 0
  %or.cond.not = or i1 %i.b, %.not, !dbg !8842
  %spec.select = sext i1 %or.cond.not to i64, !dbg !8842
  br label %bb.d, !dbg !8842

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr poison, !4981, !DIExpression(), !8844)
  %i.c = zext i64 %1 to i128, !dbg !8867
  %i.d = mul nuw nsw i128 %i.c, 1000000000, !dbg !8867
  %i.e = zext nneg i32 %2 to i128, !dbg !8868
  %i.f = add nuw nsw i128 %i.d, %i.e, !dbg !8867  ; 3 uses
    #dbg_value(i128 %i.f, !4955, !DIExpression(), !8845)
    #dbg_value(i128 %i.f, !4986, !DIExpression(), !8847)
    #dbg_value(i128 %i.f, !5004, !DIExpression(), !8849)
    #dbg_value(i128 %i.f, !5009, !DIExpression(), !8851)
    #dbg_value(i128 %i.f, !5016, !DIExpression(), !8853)
  %i.g = icmp samesign ugt i128 %i.f, 18446744073709551615, !dbg !8869
  br i1 %i.g, label %bb.g, label %bb.e, !dbg !8869

bb.d:                                             ; preds = %bb.b, %bb.i, %bb.f
  %.sroa.0.0 = phi i64 [ %spec.select, %bb.b ], [ %i.l, %bb.f ], [ %i.r, %bb.i ], !dbg !8832
  ret i64 %.sroa.0.0, !dbg !8870

bb.e:                                             ; preds = %bb.c
  %i.h = trunc nuw i128 %i.f to i64, !dbg !8871
    #dbg_value(i64 %i.h, !4953, !DIExpression(), !8854)
    #dbg_value(i64 %i.h, !4974, !DIExpression(), !8838)
    #dbg_value(i64 %i.h, !4979, !DIExpression(), !8840)
  %i.i = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %i.h), !dbg !8872 ; 2 uses
  %i.j = extractvalue { i64, i1 } %i.i, 1, !dbg !8872
    #dbg_value(i64 poison, !4975, !DIExpression(), !8855)
    #dbg_value(i1 %i.j, !4976, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !8855)
    #dbg_value(i1 %i.j, !5025, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !8857)
  br i1 %i.j, label %bb.g, label %bb.f, !dbg !8873, !prof !2014

bb.f:                                             ; preds = %bb.e
  %i.k = extractvalue { i64, i1 } %i.i, 0, !dbg !8872
    #dbg_value(i64 %i.k, !4975, !DIExpression(), !8855)
    #dbg_value(i64 %i.k, !4954, !DIExpression(), !8858)
  %i.l = udiv i64 %i.k, 8000000000, !dbg !8874
  br label %bb.d, !dbg !8875

bb.g:                                             ; preds = %bb.e, %bb.c
    #dbg_value(ptr poison, !4981, !DIExpression(), !8860)
  %i.m = zext i64 %0 to i128, !dbg !8876
    #dbg_value(i128 %i.m, !5006, !DIExpression(), !8849)
    #dbg_value(i128 %i.m, !5012, !DIExpression(), !8851)
    #dbg_value(i128 %i.m, !5022, !DIExpression(), !8853)
  %i.n = tail call { i128, i1 } @llvm.umul.with.overflow.i128(i128 %i.m, i128 %i.f), !dbg !8877 ; 2 uses
  %i.o = extractvalue { i128, i1 } %i.n, 0, !dbg !8877
  %i.p = extractvalue { i128, i1 } %i.n, 1, !dbg !8877
    #dbg_value(i128 %i.o, !4956, !DIExpression(), !8861)
    #dbg_value(i128 %i.o, !5013, !DIExpression(), !8862)
    #dbg_value(i1 %i.p, !5014, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !8862)
    #dbg_value(i1 %i.p, !5025, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !8864)
  br i1 %i.p, label %bb.h, label %bb.i, !dbg !8878, !prof !2014

bb.h:                                             ; preds = %bb.g
    #dbg_value(i128 -1, !4956, !DIExpression(), !8861)
    #dbg_value(i128 -1, !5013, !DIExpression(), !8862)
  br label %bb.i, !dbg !8879

bb.i:                                             ; preds = %bb.g, %bb.h
  %.sroa.05.0 = phi i128 [ -4096, %bb.h ], [ %i.o, %bb.g ], !dbg !8849
    #dbg_value(i128 poison, !5013, !DIExpression(), !8862)
    #dbg_value(i128 poison, !4956, !DIExpression(), !8861)
  %i.q = udiv i128 %.sroa.05.0, 8000000000, !dbg !8880
    #dbg_value(i128 %i.q, !4957, !DIExpression(), !8865)
    #dbg_value(i128 %i.q, !2893, !DIExpression(), !8831)
    #dbg_value(i128 %i.q, !2893, !DIExpression(), !8831)
    #dbg_value(i128 18446744073709551615, !2896, !DIExpression(), !8831)
    #dbg_value(i128 18446744073709551615, !2896, !DIExpression(), !8831)
    #dbg_value(ptr undef, !2893, !DIExpression(DW_OP_deref), !8831)
    #dbg_value(ptr undef, !2896, !DIExpression(DW_OP_deref), !8831)
  %..i = tail call noundef range(i128 0, 18446744073709551616) i128 @llvm.umin.i128(i128 range(i128 0, 147573952589676412920000000001) %i.q, i128 18446744073709551615), !dbg !8881
  %i.r = trunc nuw i128 %..i to i64, !dbg !8882
  br label %bb.d, !dbg !8870
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs3_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr2NtB5_5BBRv23new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([1088 x i8]) align 8 captures(none) dereferenceable(1088) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef range(i32 0, 1000000000) %5, ptr noalias nofree noundef readonly align 8 captures(address_is_null) dereferenceable_or_null(192) %6) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !8890 {
bb.a:
    #dbg_declare(ptr getelementptr inbounds nuw (i8, ptr @27, i64 16), !8984, !DIExpression(DW_OP_LLVM_fragment, 128, 384), !8919)
    #dbg_declare(ptr getelementptr inbounds nuw (i8, ptr @27, i64 88), !8984, !DIExpression(DW_OP_LLVM_fragment, 704, 128), !8919)
    #dbg_declare(ptr getelementptr inbounds nuw (i8, ptr @27, i64 189), !8984, !DIExpression(DW_OP_LLVM_fragment, 1512, 40), !8919)
    #dbg_declare(ptr getelementptr inbounds nuw (i8, ptr @27, i64 203), !8984, !DIExpression(DW_OP_LLVM_fragment, 1624, 40), !8919)
  %.sroa.4 = alloca [688 x i8], align 8           ; 4 uses
  %i.a = alloca [208 x i8], align 8               ; 43 uses
    #dbg_value(ptr %6, !8978, !DIExpression(), !9019)
    #dbg_value(i64 %1, !8974, !DIExpression(), !9019)
    #dbg_value(i64 %2, !8975, !DIExpression(), !9019)
    #dbg_value(i64 %3, !8976, !DIExpression(), !9019)
    #dbg_value(i64 %4, !8977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9019)
    #dbg_value(i32 %5, !8977, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !9019)
    #dbg_declare(ptr %i.a, !8980, !DIExpression(), !9020)
    #dbg_declare(ptr poison, !9021, !DIExpression(), !9027)
  %i.b = mul i64 %3, %1, !dbg !9085               ; 5 uses
    #dbg_value(i64 %i.b, !8979, !DIExpression(), !9028)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9086
  %.not = icmp eq ptr %6, null, !dbg !9087
  br i1 %.not, label %bb.ah, label %bb.b, !dbg !9088

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %6, !8981, !DIExpression(), !9029)
    #dbg_value(i64 0, !8984, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9030)
    #dbg_value(i64 undef, !8984, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9030)
    #dbg_value(i64 3, !8984, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !9030)
    #dbg_value(i64 0, !8984, !DIExpression(DW_OP_LLVM_fragment, 576, 64), !9030)
    #dbg_value(i64 8, !8984, !DIExpression(DW_OP_LLVM_fragment, 640, 64), !9030)
    #dbg_value(i64 2, !8984, !DIExpression(DW_OP_LLVM_fragment, 832, 64), !9030)
    #dbg_value(i64 10, !8984, !DIExpression(DW_OP_LLVM_fragment, 896, 64), !9030)
    #dbg_value(float 2.000000e+00, !8984, !DIExpression(DW_OP_LLVM_fragment, 960, 32), !9030)
    #dbg_value(float 2.773000e+00, !8984, !DIExpression(DW_OP_LLVM_fragment, 992, 32), !9030)
    #dbg_value(float 1.250000e+00, !8984, !DIExpression(DW_OP_LLVM_fragment, 1024, 32), !9030)
    #dbg_value(float 2.000000e+00, !8984, !DIExpression(DW_OP_LLVM_fragment, 1056, 32), !9030)
    #dbg_value(float f0x3EB1783C, !8984, !DIExpression(DW_OP_LLVM_fragment, 1088, 32), !9030)
    #dbg_value(i32 1065353216, !8984, !DIExpression(DW_OP_LLVM_fragment, 1120, 32), !9030)
    #dbg_value(float 1.250000e+00, !8984, !DIExpression(DW_OP_LLVM_fragment, 1152, 32), !9030)
    #dbg_value(float f0x3F666666, !8984, !DIExpression(DW_OP_LLVM_fragment, 1184, 32), !9030)
    #dbg_value(i32 1065353216, !8984, !DIExpression(DW_OP_LLVM_fragment, 1216, 32), !9030)
    #dbg_value(float 2.000000e+00, !8984, !DIExpression(DW_OP_LLVM_fragment, 1248, 32), !9030)
    #dbg_value(float 2.250000e+00, !8984, !DIExpression(DW_OP_LLVM_fragment, 1280, 32), !9030)
    #dbg_value(i32 1056964608, !8984, !DIExpression(DW_OP_LLVM_fragment, 1312, 32), !9030)
    #dbg_value(float 1.000000e+00, !8984, !DIExpression(DW_OP_LLVM_fragment, 1344, 32), !9030)
    #dbg_value(float 1.000000e+00, !8984, !DIExpression(DW_OP_LLVM_fragment, 1376, 32), !9030)
    #dbg_value(i32 1041865114, !8984, !DIExpression(DW_OP_LLVM_fragment, 1408, 32), !9030)
    #dbg_value(float 1.500000e-02, !8984, !DIExpression(DW_OP_LLVM_fragment, 1440, 32), !9030)
    #dbg_value(i32 1050253722, !8984, !DIExpression(DW_OP_LLVM_fragment, 1472, 32), !9030)
    #dbg_value(i8 1, !8984, !DIExpression(DW_OP_LLVM_fragment, 1504, 8), !9030)
    #dbg_value(i8 1, !8984, !DIExpression(DW_OP_LLVM_fragment, 1552, 8), !9030)
    #dbg_value(i8 1, !8984, !DIExpression(DW_OP_LLVM_fragment, 1560, 8), !9030)
    #dbg_value(i8 0, !8984, !DIExpression(DW_OP_LLVM_fragment, 1568, 8), !9030)
    #dbg_value(i8 0, !8984, !DIExpression(DW_OP_LLVM_fragment, 1576, 8), !9030)
    #dbg_value(i8 1, !8984, !DIExpression(DW_OP_LLVM_fragment, 1584, 8), !9030)
    #dbg_value(i8 0, !8984, !DIExpression(DW_OP_LLVM_fragment, 1592, 8), !9030)
    #dbg_value(i8 0, !8984, !DIExpression(DW_OP_LLVM_fragment, 1600, 8), !9030)
    #dbg_value(i8 1, !8984, !DIExpression(DW_OP_LLVM_fragment, 1608, 8), !9030)
    #dbg_value(i8 0, !8984, !DIExpression(DW_OP_LLVM_fragment, 1616, 8), !9030)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9063), !dbg !9089
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9064), !dbg !9089
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9065), !dbg !9089
    #dbg_value(ptr %6, !8988, !DIExpression(), !8925)
  %i.c = load i32, ptr %6, align 8, !dbg !9090, !range !1940, !alias.scope !9065, !noundef !1281
  %i.d = trunc nuw i32 %i.c to i1, !dbg !9091
  br i1 %i.d, label %bb.c, label %bb.d, !dbg !9091

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 4, !dbg !9090
  %i.f = load float, ptr %i.e, align 4, !dbg !9092, !alias.scope !9065, !noundef !1281
    #dbg_value(float %i.f, !8989, !DIExpression(), !8926)
    #dbg_value(float %i.f, !8984, !DIExpression(DW_OP_LLVM_fragment, 960, 32), !9030)
  br label %bb.d, !dbg !9093

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.921.0 = phi float [ %i.f, %bb.c ], [ 2.000000e+00, %bb.b ], !dbg !9094
    #dbg_value(float %.sroa.921.0, !8984, !DIExpression(DW_OP_LLVM_fragment, 960, 32), !9030)
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8, !dbg !9095
  %i.h = load i32, ptr %i.g, align 8, !dbg !9095, !range !1940, !alias.scope !9065, !noundef !1281
  %i.i = trunc nuw i32 %i.h to i1, !dbg !9096
  br i1 %i.i, label %bb.e, label %bb.f, !dbg !9096

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 12, !dbg !9095
  %i.k = load float, ptr %i.j, align 4, !dbg !9097, !alias.scope !9065, !noundef !1281
    #dbg_value(float %i.k, !8990, !DIExpression(), !8927)
    #dbg_value(float %i.k, !8984, !DIExpression(DW_OP_LLVM_fragment, 992, 32), !9030)
  br label %bb.f, !dbg !9093

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.10.0 = phi float [ %i.k, %bb.e ], [ 2.773000e+00, %bb.d ], !dbg !9094
    #dbg_value(float %.sroa.10.0, !8984, !DIExpression(DW_OP_LLVM_fragment, 992, 32), !9030)
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16, !dbg !9098
  %i.m = load i32, ptr %i.l, align 8, !dbg !9098, !range !1940, !alias.scope !9065, !noundef !1281
  %i.n = trunc nuw i32 %i.m to i1, !dbg !9099
  br i1 %i.n, label %bb.g, label %bb.h, !dbg !9099

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 20, !dbg !9098
  %i.p = load float, ptr %i.o, align 4, !dbg !9100, !alias.scope !9065, !noundef !1281
    #dbg_value(float %i.p, !8991, !DIExpression(), !8928)
    #dbg_value(float %i.p, !8984, !DIExpression(DW_OP_LLVM_fragment, 1024, 32), !9030)
  br label %bb.h, !dbg !9093

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.11.0 = phi float [ %i.p, %bb.g ], [ 1.250000e+00, %bb.f ], !dbg !9094
    #dbg_value(float %.sroa.11.0, !8984, !DIExpression(DW_OP_LLVM_fragment, 1024, 32), !9030)
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 24, !dbg !9101
  %i.r = load i64, ptr %i.q, align 8, !dbg !9101, !range !2465, !alias.scope !9065, !noundef !1281
  %i.s = trunc nuw i64 %i.r to i1, !dbg !9102
  br i1 %i.s, label %bb.i, label %bb.j, !dbg !9102

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 32, !dbg !9101
  %i.u = load i64, ptr %i.t, align 8, !dbg !9103, !alias.scope !9065, !noundef !1281
    #dbg_value(i64 %i.u, !8992, !DIExpression(), !8929)
    #dbg_value(i64 %i.u, !8984, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !9030)
  br label %bb.j, !dbg !9093

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.613.0 = phi i64 [ %i.u, %bb.i ], [ 3, %bb.h ], !dbg !9094
    #dbg_value(i64 %.sroa.613.0, !8984, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !9030)
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 40, !dbg !9104
  %i.w = load i64, ptr %i.v, align 8, !dbg !9104, !range !2465, !alias.scope !9065, !noundef !1281
  %i.x = trunc nuw i64 %i.w to i1, !dbg !9105
  br i1 %i.x, label %bb.k, label %bb.l, !dbg !9105

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 48, !dbg !9104
  %i.z = load i64, ptr %i.y, align 8, !dbg !9106, !alias.scope !9065, !noundef !1281
    #dbg_value(i64 %i.z, !8993, !DIExpression(), !8930)
    #dbg_value(i64 %i.z, !8984, !DIExpression(DW_OP_LLVM_fragment, 640, 64), !9030)
  br label %bb.l, !dbg !9093

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.716.0 = phi i64 [ %i.z, %bb.k ], [ 8, %bb.j ], !dbg !9094
    #dbg_value(i64 %.sroa.716.0, !8984, !DIExpression(DW_OP_LLVM_fragment, 640, 64), !9030)
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 56, !dbg !9107
  %i.ab = load i32, ptr %i.aa, align 8, !dbg !9107, !range !1940, !alias.scope !9065, !noundef !1281
  %i.ac = trunc nuw i32 %i.ab to i1, !dbg !9108
  br i1 %i.ac, label %bb.m, label %bb.n, !dbg !9108

bb.m:                                             ; preds = %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 60, !dbg !9107
  %i.ae = load float, ptr %i.ad, align 4, !dbg !9109, !alias.scope !9065, !noundef !1281
    #dbg_value(float %i.ae, !8994, !DIExpression(), !8931)
    #dbg_value(float %i.ae, !8984, !DIExpression(DW_OP_LLVM_fragment, 1056, 32), !9030)
  br label %bb.n, !dbg !9093

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.12.0 = phi float [ %i.ae, %bb.m ], [ 2.000000e+00, %bb.l ], !dbg !9094
    #dbg_value(float %.sroa.12.0, !8984, !DIExpression(DW_OP_LLVM_fragment, 1056, 32), !9030)
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 64, !dbg !9110
  %i.ag = load i32, ptr %i.af, align 8, !dbg !9110, !range !1940, !alias.scope !9065, !noundef !1281
  %i.ah = trunc nuw i32 %i.ag to i1, !dbg !9111
  br i1 %i.ah, label %bb.o, label %bb.p, !dbg !9111

bb.o:                                             ; preds = %bb.n
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 68, !dbg !9110
  %i.aj = load float, ptr %i.ai, align 4, !dbg !9112, !alias.scope !9065, !noundef !1281
    #dbg_value(float %i.aj, !8995, !DIExpression(), !8932)
    #dbg_value(float %i.aj, !8984, !DIExpression(DW_OP_LLVM_fragment, 1088, 32), !9030)
  br label %bb.p, !dbg !9093

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.13.0 = phi float [ %i.aj, %bb.o ], [ f0x3EB1783C, %bb.n ], !dbg !9094
    #dbg_value(float %.sroa.13.0, !8984, !DIExpression(DW_OP_LLVM_fragment, 1088, 32), !9030)
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 72, !dbg !9113
  %i.al = load i8, ptr %i.ak, align 8, !dbg !9113, !range !9066, !alias.scope !9065, !noundef !1281 ; 2 uses
  %.not.i = icmp eq i8 %i.al, 2, !dbg !9113
  %spec.select = select i1 %.not.i, i8 1, i8 %i.al, !dbg !9114
    #dbg_value(i8 %spec.select, !8984, !DIExpression(DW_OP_LLVM_fragment, 1504, 8), !9030)
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 73, !dbg !9115
  %i.an = load i8, ptr %i.am, align 1, !dbg !9115, !range !9066, !alias.scope !9065, !noundef !1281 ; 2 uses
  %.not28.i = icmp eq i8 %i.an, 2, !dbg !9115
  %.sroa.24.0 = select i1 %.not28.i, i8 0, i8 %i.an, !dbg !9116
    #dbg_value(i8 %.sroa.24.0, !8984, !DIExpression(DW_OP_LLVM_fragment, 1568, 8), !9030)
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 74, !dbg !9117
  %i.ap = load i8, ptr %i.ao, align 2, !dbg !9117, !range !9066, !alias.scope !9065, !noundef !1281 ; 2 uses
  %.not29.i = icmp eq i8 %i.ap, 2, !dbg !9117
  %.sroa.25.0 = select i1 %.not29.i, i8 0, i8 %i.ap, !dbg !9118
    #dbg_value(i8 %.sroa.25.0, !8984, !DIExpression(DW_OP_LLVM_fragment, 1576, 8), !9030)
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 76, !dbg !9119
  %i.ar = load i32, ptr %i.aq, align 4, !dbg !9119, !range !1940, !alias.scope !9065, !noundef !1281
  %i.as = trunc nuw i32 %i.ar to i1, !dbg !9120
  br i1 %i.as, label %bb.q, label %bb.r, !dbg !9120

end_hunk_0
begin_hunk_1_@_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr26ParamsNtB6_5Debug3fmtBE_:bb.a
  store ptr @103, ptr %i.cl, align 8, !dbg !13612, !noalias !13610
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 368, !dbg !13612
  store ptr %i.aa, ptr %i.cm, align 8, !dbg !13612, !noalias !13610
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 376, !dbg !13612
  store ptr @101, ptr %i.cn, align 8, !dbg !13612, !noalias !13610
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 384, !dbg !13612
  store ptr %i.ab, ptr %i.co, align 8, !dbg !13612, !noalias !13610
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 392, !dbg !13612
  store ptr @101, ptr %i.cp, align 8, !dbg !13612, !noalias !13610
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 400, !dbg !13612
  store ptr %i.ac, ptr %i.cq, align 8, !dbg !13612, !noalias !13610
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 408, !dbg !13612
  store ptr @48, ptr %i.cr, align 8, !dbg !13612, !noalias !13610
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 416, !dbg !13612
  store ptr %i.ad, ptr %i.cs, align 8, !dbg !13612, !noalias !13610
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 424, !dbg !13612
  store ptr @101, ptr %i.ct, align 8, !dbg !13612, !noalias !13610
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 432, !dbg !13612
  store ptr %i.ae, ptr %i.cu, align 8, !dbg !13612, !noalias !13610
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 440, !dbg !13612
  store ptr @101, ptr %i.cv, align 8, !dbg !13612, !noalias !13610
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 448, !dbg !13612
  store ptr %i.af, ptr %i.cw, align 8, !dbg !13612, !noalias !13610
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 456, !dbg !13612
  store ptr @101, ptr %i.cx, align 8, !dbg !13612, !noalias !13610
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 464, !dbg !13612
  store ptr %i.ag, ptr %i.cy, align 8, !dbg !13612, !noalias !13610
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 472, !dbg !13612
  store ptr @102, ptr %i.cz, align 8, !dbg !13612, !noalias !13610
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 480, !dbg !13612
  store ptr %i.ah, ptr %i.da, align 8, !dbg !13612, !noalias !13610
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 488, !dbg !13612
  store ptr @102, ptr %i.db, align 8, !dbg !13612, !noalias !13610
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 496, !dbg !13612
  store ptr %i.ai, ptr %i.dc, align 8, !dbg !13612, !noalias !13610
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 504, !dbg !13612
  store ptr @102, ptr %i.dd, align 8, !dbg !13612, !noalias !13610
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 512, !dbg !13612
  store ptr %i.aj, ptr %i.de, align 8, !dbg !13612, !noalias !13610
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 520, !dbg !13612
  store ptr @102, ptr %i.df, align 8, !dbg !13612, !noalias !13610
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 528, !dbg !13612
  store ptr %i.ak, ptr %i.dg, align 8, !dbg !13612, !noalias !13610
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 536, !dbg !13612
  store ptr @102, ptr %i.dh, align 8, !dbg !13612, !noalias !13610
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 544, !dbg !13612
  store ptr %i.al, ptr %i.di, align 8, !dbg !13612, !noalias !13610
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 552, !dbg !13612
  store ptr @102, ptr %i.dj, align 8, !dbg !13612, !noalias !13610
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 560, !dbg !13612
  store ptr %i.am, ptr %i.dk, align 8, !dbg !13612, !noalias !13610
  %i.dl = getelementptr inbounds nuw i8, ptr %i.b, i64 568, !dbg !13612
  store ptr @102, ptr %i.dl, align 8, !dbg !13612, !noalias !13610
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 576, !dbg !13612
  store ptr %i.an, ptr %i.dm, align 8, !dbg !13612, !noalias !13610
  %i.dn = getelementptr inbounds nuw i8, ptr %i.b, i64 584, !dbg !13612
  store ptr @102, ptr %i.dn, align 8, !dbg !13612, !noalias !13610
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 592, !dbg !13612
  store ptr %i.ao, ptr %i.do, align 8, !dbg !13612, !noalias !13610
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 600, !dbg !13612
  store ptr @104, ptr %i.dp, align 8, !dbg !13612, !noalias !13610
  %i.dq = getelementptr inbounds nuw i8, ptr %i.b, i64 608, !dbg !13612
  store ptr %i.ap, ptr %i.dq, align 8, !dbg !13612, !noalias !13610
  %i.dr = getelementptr inbounds nuw i8, ptr %i.b, i64 616, !dbg !13612
  store ptr @102, ptr %i.dr, align 8, !dbg !13612, !noalias !13610
  %i.ds = getelementptr inbounds nuw i8, ptr %i.b, i64 624, !dbg !13612
  store ptr %i.c, ptr %i.ds, align 8, !dbg !13612, !noalias !13610
  %i.dt = getelementptr inbounds nuw i8, ptr %i.b, i64 632, !dbg !13612
  store ptr @105, ptr %i.dt, align 8, !dbg !13612, !noalias !13610
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 640, !dbg !13612
  store ptr %i.aq, ptr %i.du, align 8, !dbg !13612, !noalias !13610
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 648, !dbg !13612
  store ptr @102, ptr %i.dv, align 8, !dbg !13612, !noalias !13610
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 656, !dbg !13612
  store ptr %i.ar, ptr %i.dw, align 8, !dbg !13612, !noalias !13610
  %i.dx = getelementptr inbounds nuw i8, ptr %i.b, i64 664, !dbg !13612
  store ptr @102, ptr %i.dx, align 8, !dbg !13612, !noalias !13610
  %i.dy = getelementptr inbounds nuw i8, ptr %i.b, i64 672, !dbg !13612
  store ptr %i.a, ptr %i.dy, align 8, !dbg !13612, !noalias !13610
  %i.dz = getelementptr inbounds nuw i8, ptr %i.b, i64 680, !dbg !13612
  store ptr @106, ptr %i.dz, align 8, !dbg !13612, !noalias !13610
    #dbg_value(ptr %i.b, !13598, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13578)
    #dbg_value(i64 43, !13598, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13578)
  %i.ea = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_fields_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @100, i64 noundef 43, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.b, i64 noundef 43), !dbg !13655
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13656, !noalias !13610
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13656, !noalias !13610
  ret i1 %i.ea, !dbg !13657
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRTyINtNtB8_6option6OptionNtNtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion3bbr17bandwidth_sampler27ConnectionStateOnSentPacketEENtB6_5Debug3fmtB14_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !13658 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr %0, !13674, !DIExpression(), !13677)
    #dbg_value(ptr %1, !13675, !DIExpression(), !13677)
  %i.d = load ptr, ptr %0, align 8, !dbg !13697, !nonnull !1281, !align !1994, !noundef !1281 ; 2 uses
    #dbg_value(ptr %i.d, !13678, !DIExpression(), !13664)
    #dbg_value(ptr %1, !13682, !DIExpression(), !13664)
    #dbg_declare(ptr %i.c, !13683, !DIExpression(), !13665)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !13698, !noalias !13695
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter11debug_tuple(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0), !dbg !13699, !noalias !13696
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !13700, !noalias !13695
    #dbg_value(ptr %i.d, !13684, !DIExpression(), !13669)
  store ptr %i.d, ptr %i.b, align 8, !dbg !13700, !noalias !13695
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13700, !noalias !13695
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !13700
    #dbg_value(ptr %i.e, !13685, !DIExpression(), !13669)
  store ptr %i.e, ptr %i.a, align 8, !dbg !13700, !noalias !13695
    #dbg_value(ptr %i.b, !13684, !DIExpression(DW_OP_deref), !13669)
  %i.f = call noundef nonnull align 8 ptr @_RNvMs3_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @43), !dbg !13701 ; 0 uses
    #dbg_value(ptr %i.a, !13685, !DIExpression(DW_OP_deref), !13669)
  %i.g = call noundef nonnull align 8 ptr @_RNvMs3_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @44), !dbg !13701 ; 0 uses
  %i.h = call noundef zeroext i1 @_RNvMs3_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c), !dbg !13702
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13703, !noalias !13695
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13703, !noalias !13695
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !13704, !noalias !13695
  ret i1 %i.h, !dbg !13705
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef i64 @_RNvXs2_NtNtCs3f36owOmepS_6quiche8recovery9bandwidthNtB5_9BandwidthINtNtNtCskKLDkoKarTP_4core3ops5arith3MulNtNtB19_4time8DurationE3mul(i64 noundef %0, i64 noundef %1, i32 noundef range(i32 0, 1000000000) %2) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !13706 {
bb.a:
    #dbg_value(i64 %0, !13745, !DIExpression(), !13748)
    #dbg_value(i64 %1, !13746, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13748)
    #dbg_value(i32 %2, !13746, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !13748)
    #dbg_value(i64 %0, !4951, !DIExpression(), !13708)
    #dbg_value(i64 %1, !4952, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13708)
    #dbg_value(i32 %2, !4952, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !13708)
    #dbg_value(ptr poison, !4960, !DIExpression(), !13710)
    #dbg_value(ptr poison, !4969, !DIExpression(), !13712)
    #dbg_value(i64 %0, !4973, !DIExpression(), !13714)
    #dbg_value(i64 %0, !4978, !DIExpression(), !13716)
  %i.a = icmp eq i64 %0, -1, !dbg !13749
  br i1 %i.a, label %bb.b, label %bb.c, !dbg !13749

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr poison, !4964, !DIExpression(), !13717)
    #dbg_value(ptr poison, !4971, !DIExpression(), !13718)
  %i.b = icmp ne i64 %1, 0, !dbg !13750
  %.not.i = icmp ne i32 %2, 0
  %or.cond.not.i = or i1 %i.b, %.not.i, !dbg !13750
  %spec.select.i = sext i1 %or.cond.not.i to i64, !dbg !13750
  br label %_RNvMs3_NtNtCs3f36owOmepS_6quiche8recovery9bandwidthNtB5_9Bandwidth19to_bytes_per_period.exit, !dbg !13750

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr poison, !4981, !DIExpression(), !13720)
  %i.c = zext i64 %1 to i128, !dbg !13751
  %i.d = mul nuw nsw i128 %i.c, 1000000000, !dbg !13751
  %i.e = zext nneg i32 %2 to i128, !dbg !13752
  %i.f = add nuw nsw i128 %i.d, %i.e, !dbg !13751 ; 3 uses
    #dbg_value(i128 %i.f, !4955, !DIExpression(), !13721)
    #dbg_value(i128 %i.f, !4986, !DIExpression(), !13723)
    #dbg_value(i128 %i.f, !5004, !DIExpression(), !13725)
    #dbg_value(i128 %i.f, !5009, !DIExpression(), !13727)
    #dbg_value(i128 %i.f, !5016, !DIExpression(), !13729)
  %i.g = icmp samesign ugt i128 %i.f, 18446744073709551615, !dbg !13753
  br i1 %i.g, label %bb.f, label %bb.d, !dbg !13753

bb.d:                                             ; preds = %bb.c
  %i.h = trunc nuw i128 %i.f to i64, !dbg !13754
    #dbg_value(i64 %i.h, !4953, !DIExpression(), !13730)
    #dbg_value(i64 %i.h, !4974, !DIExpression(), !13714)
    #dbg_value(i64 %i.h, !4979, !DIExpression(), !13716)
  %i.i = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %i.h), !dbg !13755 ; 2 uses
  %i.j = extractvalue { i64, i1 } %i.i, 1, !dbg !13755
    #dbg_value(i64 poison, !4975, !DIExpression(), !13731)
    #dbg_value(i1 %i.j, !4976, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13731)
    #dbg_value(i1 %i.j, !5025, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13733)
  br i1 %i.j, label %bb.f, label %bb.e, !dbg !13756, !prof !2014

bb.e:                                             ; preds = %bb.d
  %i.k = extractvalue { i64, i1 } %i.i, 0, !dbg !13755
    #dbg_value(i64 %i.k, !4975, !DIExpression(), !13731)
    #dbg_value(i64 %i.k, !4954, !DIExpression(), !13734)
  %i.l = udiv i64 %i.k, 8000000000, !dbg !13757
  br label %_RNvMs3_NtNtCs3f36owOmepS_6quiche8recovery9bandwidthNtB5_9Bandwidth19to_bytes_per_period.exit, !dbg !13758

bb.f:                                             ; preds = %bb.d, %bb.c
    #dbg_value(ptr poison, !4981, !DIExpression(), !13736)
  %i.m = zext i64 %0 to i128, !dbg !13759
    #dbg_value(i128 %i.m, !5006, !DIExpression(), !13725)
    #dbg_value(i128 %i.m, !5012, !DIExpression(), !13727)
    #dbg_value(i128 %i.m, !5022, !DIExpression(), !13729)
  %i.n = tail call { i128, i1 } @llvm.umul.with.overflow.i128(i128 %i.m, i128 %i.f), !dbg !13760 ; 2 uses
  %i.o = extractvalue { i128, i1 } %i.n, 0, !dbg !13760
  %i.p = extractvalue { i128, i1 } %i.n, 1, !dbg !13760
    #dbg_value(i128 %i.o, !4956, !DIExpression(), !13737)
    #dbg_value(i128 %i.o, !5013, !DIExpression(), !13738)
    #dbg_value(i1 %i.p, !5014, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13738)
    #dbg_value(i1 %i.p, !5025, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13740)
  br i1 %i.p, label %bb.g, label %bb.h, !dbg !13761, !prof !2014

bb.g:                                             ; preds = %bb.f
    #dbg_value(i128 -1, !4956, !DIExpression(), !13737)
    #dbg_value(i128 -1, !5013, !DIExpression(), !13738)
  br label %bb.h, !dbg !13762

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.05.0.i = phi i128 [ -4096, %bb.g ], [ %i.o, %bb.f ], !dbg !13763
    #dbg_value(i128 poison, !5013, !DIExpression(), !13738)
    #dbg_value(i128 poison, !4956, !DIExpression(), !13737)
  %i.q = udiv i128 %.sroa.05.0.i, 8000000000, !dbg !13764
    #dbg_value(i128 %i.q, !4957, !DIExpression(), !13741)
    #dbg_value(i128 %i.q, !2893, !DIExpression(), !13743)
    #dbg_value(i128 %i.q, !2893, !DIExpression(), !13743)
    #dbg_value(i128 18446744073709551615, !2896, !DIExpression(), !13743)
    #dbg_value(i128 18446744073709551615, !2896, !DIExpression(), !13743)
    #dbg_value(ptr undef, !2893, !DIExpression(DW_OP_deref), !13743)
    #dbg_value(ptr undef, !2896, !DIExpression(DW_OP_deref), !13743)
  %..i.i = tail call noundef range(i128 0, 18446744073709551616) i128 @llvm.umin.i128(i128 range(i128 0, 147573952589676412920000000001) %i.q, i128 18446744073709551615), !dbg !13765
  %i.r = trunc nuw i128 %..i.i to i64, !dbg !13766
  br label %_RNvMs3_NtNtCs3f36owOmepS_6quiche8recovery9bandwidthNtB5_9Bandwidth19to_bytes_per_period.exit, !dbg !13767

_RNvMs3_NtNtCs3f36owOmepS_6quiche8recovery9bandwidthNtB5_9Bandwidth19to_bytes_per_period.exit: ; preds = %bb.b, %bb.e, %bb.h
  %.sroa.0.0.i = phi i64 [ %spec.select.i, %bb.b ], [ %i.l, %bb.e ], [ %i.r, %bb.h ], !dbg !13768
  ret i64 %.sroa.0.0.i, !dbg !13769
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs4_NtNtCs3f36owOmepS_6quiche8recovery9bandwidthNtB5_9BandwidthNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !dbg !13780 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !13788, !DIExpression(), !13811)
    #dbg_value(ptr %1, !13789, !DIExpression(), !13811)
    #dbg_value(ptr %1, !13812, !DIExpression(), !13820)
    #dbg_value(ptr %1, !13812, !DIExpression(), !13823)
    #dbg_value(ptr %1, !13812, !DIExpression(), !13826)
    #dbg_value(ptr %0, !13791, !DIExpression(), !13827)
  %i.g = load i64, ptr %0, align 8, !dbg !13835, !noundef !1281 ; 3 uses
    #dbg_value(i64 %i.g, !13790, !DIExpression(), !13828)
    #dbg_value(i64 %i.g, !13796, !DIExpression(), !13829)
    #dbg_value(i64 %i.g, !13802, !DIExpression(), !13830)
  %i.h = icmp ult i64 %i.g, 1000000, !dbg !13835
  %i.i = uitofp i64 %i.g to double, !dbg !13811   ; 3 uses
  br i1 %i.h, label %bb.c, label %bb.b, !dbg !13835

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !13797, !DIExpression(), !13831)
  %i.j = icmp ult i64 %i.g, 1000000000, !dbg !13836
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !13837 ; 2 uses
  br i1 %i.j, label %bb.e, label %bb.d, !dbg !13836

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !13838
  %i.l = fdiv double %i.i, 1.000000e+03, !dbg !13838
  store double %i.l, ptr %i.f, align 8, !dbg !13838
    #dbg_value(ptr %i.f, !13793, !DIExpression(), !13832)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !13839
  store ptr %i.f, ptr %i.e, align 8, !dbg !13839
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !13839
  store ptr @_RNvXs7_NtNtCskKLDkoKarTP_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8, !dbg !13839
    #dbg_value(ptr @45, !13813, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13820)
    #dbg_value(ptr %i.e, !13813, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13820)
  %i.m = load ptr, ptr %1, align 8, !dbg !13840, !nonnull !1281, !noundef !1281
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !13840
  %i.o = load ptr, ptr %i.n, align 8, !dbg !13840, !nonnull !1281, !align !1994, !noundef !1281
  %i.p = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noundef nonnull @45, ptr noundef nonnull %i.e), !dbg !13841
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !13842
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !13842
  br label %bb.f, !dbg !13842

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !13843
  %i.q = fdiv double %i.i, 1.000000e+09, !dbg !13843
  store double %i.q, ptr %i.b, align 8, !dbg !13843
    #dbg_value(ptr %i.b, !13804, !DIExpression(), !13833)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13844
  store ptr %i.b, ptr %i.a, align 8, !dbg !13844
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !13844
  store ptr @_RNvXs7_NtNtCskKLDkoKarTP_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.422.0..sroa_idx, align 8, !dbg !13844
    #dbg_value(ptr @47, !13813, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13826)
    #dbg_value(ptr %i.a, !13813, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13826)
  %i.r = load ptr, ptr %1, align 8, !dbg !13845, !nonnull !1281, !noundef !1281
  %i.s = load ptr, ptr %i.k, align 8, !dbg !13845, !nonnull !1281, !align !1994, !noundef !1281
  %i.t = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.s, ptr noundef nonnull @47, ptr noundef nonnull %i.a), !dbg !13846
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13847
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13847
  br label %bb.f, !dbg !13847

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !13848
  %i.u = fdiv double %i.i, 1.000000e+06, !dbg !13848
  store double %i.u, ptr %i.d, align 8, !dbg !13848
    #dbg_value(ptr %i.d, !13799, !DIExpression(), !13834)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !13849
  store ptr %i.d, ptr %i.c, align 8, !dbg !13849
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !13849
  store ptr @_RNvXs7_NtNtCskKLDkoKarTP_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.418.0..sroa_idx, align 8, !dbg !13849
    #dbg_value(ptr @46, !13813, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13823)
    #dbg_value(ptr %i.c, !13813, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13823)
  %i.v = load ptr, ptr %1, align 8, !dbg !13850, !nonnull !1281, !noundef !1281
  %i.w = load ptr, ptr %i.k, align 8, !dbg !13850, !nonnull !1281, !align !1994, !noundef !1281
  %i.x = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.w, ptr noundef nonnull @46, ptr noundef nonnull %i.c), !dbg !13851
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !13852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !13852
  br label %bb.f, !dbg !13852

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d
  %.sroa.0.1.in = phi i1 [ %i.p, %bb.c ], [ %i.x, %bb.e ], [ %i.t, %bb.d ]
  ret i1 %.sroa.0.1.in, !dbg !13853
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvXs4_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr2NtB5_5BBRv2NtB7_17CongestionControl13max_bandwidth(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1088) %0) unnamed_addr #0 !dbg !385 {
bb.a:
    #dbg_value(ptr %0, !2817, !DIExpression(), !13854)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208, !dbg !13855
  %i.b = tail call noundef nonnull align 8 ptr @_RNvMs1_NtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr24modeNtB5_4Mode13network_model(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(808) %i.a), !dbg !13856
  %i.c = tail call noundef i64 @_RNvMs1_NtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr213network_modelNtB5_17BBRv2NetworkModel13max_bandwidth(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(688) %i.b), !dbg !13857
  ret i64 %i.c, !dbg !13858
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs4_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr2NtB5_5BBRv2NtB7_17CongestionControl14on_app_limited(ptr noalias nofree noundef align 8 dereferenceable(1088) %0, i64 noundef %1) unnamed_addr #0 !dbg !387 {
bb.a:
    #dbg_value(ptr %0, !2821, !DIExpression(), !13859)
    #dbg_value(ptr %0, !2826, !DIExpression(), !13861)
    #dbg_value(i64 %1, !2822, !DIExpression(), !13859)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1032, !dbg !13867
  %i.b = load i64, ptr %i.a, align 8, !dbg !13867, !noundef !1281
  %.not = icmp ult i64 %1, %i.b, !dbg !13868
  br i1 %.not, label %bb.b, label %bb.c, !dbg !13868

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208, !dbg !13869
  %i.d = tail call noundef nonnull align 8 ptr @_RNvMs1_NtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr24modeNtB5_4Mode17network_model_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(808) %i.c), !dbg !13870 ; 4 uses
    #dbg_value(ptr %i.d, !2824, !DIExpression(), !13862)
    #dbg_value(ptr %i.d, !2831, !DIExpression(), !13864)
    #dbg_value(ptr %i.d, !2839, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !13866)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32, !dbg !13871
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 464, !dbg !13871
  store i8 1, ptr %i.f, align 8, !dbg !13871
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 432, !dbg !13872
  %i.h = load i64, ptr %i.g, align 8, !dbg !13872, !noundef !1281
  store i64 1, ptr %i.e, align 8, !dbg !13873
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40, !dbg !13873
  store i64 %i.h, ptr %i.i, align 8, !dbg !13873
  br label %bb.c, !dbg !13874

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void, !dbg !13874
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs4_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr2NtB5_5BBRv2NtB7_17CongestionControl14on_packet_sent(ptr noalias nofree noundef align 8 dereferenceable(1088) %0, i64 noundef %1, i32 noundef range(i32 0, 1000000000) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i1 noundef zeroext %6) unnamed_addr #0 !dbg !392 {
bb.a:
    #dbg_value(ptr %0, !2846, !DIExpression(), !13884)
    #dbg_value(i64 %1, !2849, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13884)
    #dbg_value(i32 %2, !2849, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !13884)
    #dbg_value(i64 %3, !2850, !DIExpression(), !13884)
    #dbg_value(i64 %4, !2851, !DIExpression(), !13884)
    #dbg_value(i64 %5, !2852, !DIExpression(), !13884)
    #dbg_value(i1 %6, !2853, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13884)
  %i.a = icmp eq i64 %3, 0, !dbg !13887
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 191
  %i.c = load i8, ptr %i.b, align 1, !range !2015
  %i.d = trunc nuw i8 %i.c to i1
  %or.cond = select i1 %i.a, i1 %i.d, i1 false, !dbg !13887
  br i1 %or.cond, label %bb.b, label %_RNvMs3_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr2NtB5_5BBRv218on_exit_quiescence.exit, !dbg !13887

_RNvMs3_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr2NtB5_5BBRv218on_exit_quiescence.exit: ; preds = %bb.c, %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 208, !dbg !13888
  %i.f = tail call noundef nonnull align 8 ptr @_RNvMs1_NtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr24modeNtB5_4Mode17network_model_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(808) %i.e), !dbg !13889
    #dbg_value(ptr %i.f, !2854, !DIExpression(), !13885)
  tail call void @_RNvMs1_NtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr213network_modelNtB5_17BBRv2NetworkModel14on_packet_sent(ptr noalias nofree noundef nonnull align 8 dereferenceable(688) %i.f, i64 noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i1 noundef zeroext %6), !dbg !13890
  ret void, !dbg !13891

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !2856, !DIExpression(), !13876)
    #dbg_value(i64 %1, !2860, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13876)
    #dbg_value(i32 %2, !2860, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !13876)
    #dbg_value(ptr %0, !2865, !DIExpression(DW_OP_plus_uconst, 1016, DW_OP_stack_value), !13878)
    #dbg_value(ptr %0, !2870, !DIExpression(DW_OP_plus_uconst, 1016, DW_OP_stack_value), !13880)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1016, !dbg !13892
  %i.h = load i64, ptr %i.g, align 8, !dbg !13892, !alias.scope !13886
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1024, !dbg !13892 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !dbg !13892, !range !2876, !alias.scope !13886, !noundef !1281 ; 2 uses
  store i32 -1, ptr %i.i, align 8, !dbg !13893, !alias.scope !13886
  %.not.i = icmp eq i32 %i.j, -1, !dbg !13894
  br i1 %.not.i, label %_RNvMs3_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr2NtB5_5BBRv218on_exit_quiescence.exit, label %bb.c, !dbg !13895

bb.c:                                             ; preds = %bb.b
    #dbg_value(i64 %i.h, !2861, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13883)
    #dbg_value(i32 %i.j, !2861, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !13883)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 208, !dbg !13896
  tail call void @_RNvMs1_NtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr24modeNtB5_4Mode21do_on_exit_quiescence(ptr noalias nofree noundef nonnull align 8 dereferenceable(808) %i.k, i64 noundef %1, i32 noundef range(i32 0, 1000000000) %2, i64 noundef %i.h, i32 noundef %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1088) %0), !dbg !13897
  br label %_RNvMs3_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr2NtB5_5BBRv218on_exit_quiescence.exit, !dbg !13898
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvXs4_NtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr2NtB5_5BBRv2NtB7_17CongestionControl18bandwidth_estimate(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1088) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(184) %1) unnamed_addr #0 !dbg !400 {
bb.a:
    #dbg_value(ptr %0, !2900, !DIExpression(), !13899)
    #dbg_value(ptr %1, !2903, !DIExpression(), !13899)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208, !dbg !13901
  %i.b = tail call noundef nonnull align 8 ptr @_RNvMs1_NtNtNtNtCs3f36owOmepS_6quiche8recovery11gcongestion4bbr24modeNtB5_4Mode13network_model(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(808) %i.a), !dbg !13902
end_hunk_1
