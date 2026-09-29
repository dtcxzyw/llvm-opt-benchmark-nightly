Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsignal-rs/original/libsignal_message_backup-4250b6b8caaf551e.libsignal_message_backup.eef80394ae7480fa-cgu.13?download=true
inline.NumInlined: 299
inline.NumDeleted: 178
begin_hunk_0_@_RINvXs1_NtCsfzLoC2LLPWN_7bincode2deQINtB6_12DeserializerNtNtB6_4read11SliceReaderINtNtB8_6config17WithOtherTrailingINtB1k_15WithOtherEndianINtB1k_20WithOtherIntEncodingNtB1k_14DefaultOptionsNtNtB1k_3int14FixintEncodingENtNtB1k_6endian12LittleEndianENtNtB1k_8trailing14RejectTrailingEENtNtCs6yNvtpc0TEA_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCs807GXlIGG3x_7zkgroup6crypto6proofssb_1__NtB5K_34ReceiptCredentialPresentationProofNtB4A_11Deserialize11deserialize9___VisitorECskw1zp9IbpTW_24libsignal_message_backup:bb.a
  %.sroa.410.0..sroa_idx.i.i105.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %.sroa.243.i, ptr noundef nonnull align 8 dereferenceable(152) %.sroa.410.0..sroa_idx.i.i105.i, i64 152, i1 false), !noalias !465
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !471
  %.not.i.i109.i = icmp eq i64 %5, 4
  br i1 %.not.i.i109.i, label %bb.z, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !473
  call void @_RINvXs7_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtB6_14RistrettoPointNtNtCs6yNvtpc0TEA_10serde_core2de11Deserialize11deserializeQINtNtCsfzLoC2LLPWN_7bincode2de12DeserializerNtNtB2a_4read11SliceReaderINtNtB2c_6config17WithOtherTrailingINtB3i_15WithOtherEndianINtB3i_20WithOtherIntEncodingNtB3i_14DefaultOptionsNtNtB3i_3int14FixintEncodingENtNtB3i_6endian12LittleEndianENtNtB3i_8trailing14RejectTrailingEEECskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(address) dereferenceable(168) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1), !noalias !474
  %i.ac = load i64, ptr %i.b, align 8, !range !13, !noalias !473, !noundef !5
  %i.ad = trunc nuw i64 %i.ac to i1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !473 ; 3 uses
  br i1 %i.ad, label %bb.w, label %bb.x

bb.u:                                             ; preds = %bb.n
  %i.ag = call noundef nonnull align 8 ptr @_RNvYINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtCsfzLoC2LLPWN_7bincode5error9ErrorKindENtNtCs6yNvtpc0TEA_10serde_core2de5Error14invalid_lengthCskw1zp9IbpTW_24libsignal_message_backup(i64 noundef 3, ptr noundef nonnull @2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3), !noalias !462
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.r
  %.sink225.i = phi ptr [ %i.ag, %bb.u ], [ %i.z, %bb.r ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink225.i, ptr %i.ah, align 8, !alias.scope !462, !noalias !468
  store i64 -1, ptr %0, align 8, !alias.scope !462, !noalias !468
  br label %_RINvXs0_NvXNvNtNtCs807GXlIGG3x_7zkgroup6crypto6proofssb_1__NtBb_34ReceiptCredentialPresentationProofNtNtCs6yNvtpc0TEA_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1C_7Visitor9visit_seqINtNvXs1_NtCsfzLoC2LLPWN_7bincode2deQINtB3k_12DeserializerppENtB1C_12Deserializer17deserialize_tuple6AccessNtNtB3k_4read11SliceReaderINtNtB3m_6config17WithOtherTrailingINtB5n_15WithOtherEndianINtB5n_20WithOtherIntEncodingNtB5n_14DefaultOptionsNtNtB5n_3int14FixintEncodingENtNtB5n_6endian12LittleEndianENtNtB5n_8trailing14RejectTrailingEEECskw1zp9IbpTW_24libsignal_message_backup.exit

bb.w:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !473
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.af) ]
  br label %bb.aa

bb.x:                                             ; preds = %bb.t
  %.sroa.410.0..sroa_idx.i.i110.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %.sroa.255.i, ptr noundef nonnull align 8 dereferenceable(152) %.sroa.410.0..sroa_idx.i.i110.i, i64 152, i1 false), !noalias !465
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !473
  %.not.i.i114.i = icmp eq i64 %5, 5
  br i1 %.not.i.i114.i, label %bb.ad, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !475
  call void @_RINvXsh_NtNtCs6yNvtpc0TEA_10serde_core2de5implsINtNtCs6i54tJFfzR_5alloc3vec3VechENtB8_11Deserialize11deserializeQINtNtCsfzLoC2LLPWN_7bincode2de12DeserializerNtNtB1Q_4read11SliceReaderINtNtB1S_6config17WithOtherTrailingINtB2Y_15WithOtherEndianINtB2Y_20WithOtherIntEncodingNtB2Y_14DefaultOptionsNtNtB2Y_3int14FixintEncodingENtNtB2Y_6endian12LittleEndianENtNtB2Y_8trailing14RejectTrailingEEECskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1), !noalias !476
  %i.ai = load i64, ptr %i.a, align 8, !range !6, !noalias !475, !noundef !5 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, -1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !475 ; 3 uses
  br i1 %i.aj, label %bb.ab, label %bb.ac

bb.z:                                             ; preds = %bb.s
  %i.am = call noundef nonnull align 8 ptr @_RNvYINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtCsfzLoC2LLPWN_7bincode5error9ErrorKindENtNtCs6yNvtpc0TEA_10serde_core2de5Error14invalid_lengthCskw1zp9IbpTW_24libsignal_message_backup(i64 noundef 4, ptr noundef nonnull @2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3), !noalias !462
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.w
  %.sink227.i = phi ptr [ %i.am, %bb.z ], [ %i.af, %bb.w ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink227.i, ptr %i.an, align 8, !alias.scope !462, !noalias !468
  store i64 -1, ptr %0, align 8, !alias.scope !462, !noalias !468
  br label %_RINvXs0_NvXNvNtNtCs807GXlIGG3x_7zkgroup6crypto6proofssb_1__NtBb_34ReceiptCredentialPresentationProofNtNtCs6yNvtpc0TEA_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1C_7Visitor9visit_seqINtNvXs1_NtCsfzLoC2LLPWN_7bincode2deQINtB3k_12DeserializerppENtB1C_12Deserializer17deserialize_tuple6AccessNtNtB3k_4read11SliceReaderINtNtB3m_6config17WithOtherTrailingINtB5n_15WithOtherEndianINtB5n_20WithOtherIntEncodingNtB5n_14DefaultOptionsNtNtB5n_3int14FixintEncodingENtNtB5n_6endian12LittleEndianENtNtB5n_8trailing14RejectTrailingEEECskw1zp9IbpTW_24libsignal_message_backup.exit

bb.ab:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !475
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.al) ]
  br label %bb.ae

bb.ac:                                            ; preds = %bb.y
  %.sroa.513.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.513.0.copyload.i.i.i = load i64, ptr %.sroa.513.0..sroa_idx.i.i.i, align 8, !noalias !475
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !475
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %.sroa.7.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(152) %.sroa.27.i, i64 152, i1 false), !noalias !468
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %.sroa.9.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(152) %.sroa.219.i, i64 152, i1 false), !noalias !468
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %.sroa.11.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(152) %.sroa.231.i, i64 152, i1 false), !noalias !468
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 512
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %.sroa.13.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(152) %.sroa.243.i, i64 152, i1 false), !noalias !468
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 672
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %.sroa.15.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(152) %.sroa.255.i, i64 152, i1 false), !noalias !468
  store i64 %i.ai, ptr %0, align 8, !alias.scope !462, !noalias !468
  %.sroa.470.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.al, ptr %.sroa.470.0..sroa_idx.i, align 8, !alias.scope !462, !noalias !468
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.513.0.copyload.i.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !462, !noalias !468
  %.sroa.671.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.j, ptr %.sroa.671.0..sroa_idx.i, align 8, !alias.scope !462, !noalias !468
  %.sroa.872.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %i.n, ptr %.sroa.872.0..sroa_idx.i, align 8, !alias.scope !462, !noalias !468
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 344
  store ptr %i.t, ptr %.sroa.10.0..sroa_idx.i, align 8, !alias.scope !462, !noalias !468
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 504
  store ptr %i.z, ptr %.sroa.12.0..sroa_idx.i, align 8, !alias.scope !462, !noalias !468
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 664
  store ptr %i.af, ptr %.sroa.14.0..sroa_idx.i, align 8, !alias.scope !462, !noalias !468
  br label %_RINvXs0_NvXNvNtNtCs807GXlIGG3x_7zkgroup6crypto6proofssb_1__NtBb_34ReceiptCredentialPresentationProofNtNtCs6yNvtpc0TEA_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1C_7Visitor9visit_seqINtNvXs1_NtCsfzLoC2LLPWN_7bincode2deQINtB3k_12DeserializerppENtB1C_12Deserializer17deserialize_tuple6AccessNtNtB3k_4read11SliceReaderINtNtB3m_6config17WithOtherTrailingINtB5n_15WithOtherEndianINtB5n_20WithOtherIntEncodingNtB5n_14DefaultOptionsNtNtB5n_3int14FixintEncodingENtNtB5n_6endian12LittleEndianENtNtB5n_8trailing14RejectTrailingEEECskw1zp9IbpTW_24libsignal_message_backup.exit

bb.ad:                                            ; preds = %bb.x
  %i.ao = call noundef nonnull align 8 ptr @_RNvYINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtCsfzLoC2LLPWN_7bincode5error9ErrorKindENtNtCs6yNvtpc0TEA_10serde_core2de5Error14invalid_lengthCskw1zp9IbpTW_24libsignal_message_backup(i64 noundef 5, ptr noundef nonnull @2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3), !noalias !462
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ab
  %.sink229.i = phi ptr [ %i.ao, %bb.ad ], [ %i.al, %bb.ab ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink229.i, ptr %i.ap, align 8, !alias.scope !462, !noalias !468
  store i64 -1, ptr %0, align 8, !alias.scope !462, !noalias !468
  br label %_RINvXs0_NvXNvNtNtCs807GXlIGG3x_7zkgroup6crypto6proofssb_1__NtBb_34ReceiptCredentialPresentationProofNtNtCs6yNvtpc0TEA_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1C_7Visitor9visit_seqINtNvXs1_NtCsfzLoC2LLPWN_7bincode2deQINtB3k_12DeserializerppENtB1C_12Deserializer17deserialize_tuple6AccessNtNtB3k_4read11SliceReaderINtNtB3m_6config17WithOtherTrailingINtB5n_15WithOtherEndianINtB5n_20WithOtherIntEncodingNtB5n_14DefaultOptionsNtNtB5n_3int14FixintEncodingENtNtB5n_6endian12LittleEndianENtNtB5n_8trailing14RejectTrailingEEECskw1zp9IbpTW_24libsignal_message_backup.exit

_RINvXs0_NvXNvNtNtCs807GXlIGG3x_7zkgroup6crypto6proofssb_1__NtBb_34ReceiptCredentialPresentationProofNtNtCs6yNvtpc0TEA_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1C_7Visitor9visit_seqINtNvXs1_NtCsfzLoC2LLPWN_7bincode2deQINtB3k_12DeserializerppENtB1C_12Deserializer17deserialize_tuple6AccessNtNtB3k_4read11SliceReaderINtNtB3m_6config17WithOtherTrailingINtB5n_15WithOtherEndianINtB5n_20WithOtherIntEncodingNtB5n_14DefaultOptionsNtNtB5n_3int14FixintEncodingENtNtB5n_6endian12LittleEndianENtNtB5n_8trailing14RejectTrailingEEECskw1zp9IbpTW_24libsignal_message_backup.exit: ; preds = %bb.g, %bb.l, %bb.q, %bb.v, %bb.aa, %bb.ac, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.255.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.243.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.231.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.219.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.27.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1_NtCsfzLoC2LLPWN_7bincode2deQINtB6_12DeserializerNtNtB6_4read11SliceReaderINtNtB8_6config17WithOtherTrailingINtB1k_15WithOtherEndianINtB1k_20WithOtherIntEncodingNtB1k_14DefaultOptionsNtNtB1k_3int14FixintEncodingENtNtB1k_6endian12LittleEndianENtNtB1k_8trailing14RejectTrailingEENtNtCs6yNvtpc0TEA_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtNtCs807GXlIGG3x_7zkgroup3api8receipts31receipt_credential_presentations_1__NtB5K_29ReceiptCredentialPresentationNtB4A_11Deserialize11deserialize9___VisitorECskw1zp9IbpTW_24libsignal_message_backup(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([856 x i8]) align 8 captures(none) dereferenceable(856) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %4, i64 noundef range(i64 0, 576460752303423488) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = alloca [824 x i8], align 8               ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [1 x i8], align 1                 ; 6 uses
  %.sroa.10.i = alloca [9 x i8], align 8          ; 7 uses
  %i.k = alloca [824 x i8], align 8               ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !535)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !536)
  %.not.i.i.i = icmp eq i64 %5, 0
  br i1 %.not.i.i.i, label %_RINvYINtNvXs1_NtCsfzLoC2LLPWN_7bincode2deQINtBc_12DeserializerppENtNtCs6yNvtpc0TEA_10serde_core2de12Deserializer17deserialize_tuple6AccessNtNtBc_4read11SliceReaderINtNtBe_6config17WithOtherTrailingINtB2E_15WithOtherEndianINtB2E_20WithOtherIntEncodingNtB2E_14DefaultOptionsNtNtB2E_3int14FixintEncodingENtNtB2E_6endian12LittleEndianENtNtB2E_8trailing14RejectTrailingEENtB13_9SeqAccess12next_elementINtNtNtCs807GXlIGG3x_7zkgroup6common13serialization11VersionByteKh0_EECskw1zp9IbpTW_24libsignal_message_backup.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !537)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !538)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !539)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !540)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.m = tail call noundef nonnull ptr @_RNvXs9_NtCsfzLoC2LLPWN_7bincode6configINtB5_17WithOtherTrailingINtB5_15WithOtherEndianINtB5_20WithOtherIntEncodingNtB5_14DefaultOptionsNtNtB5_3int14FixintEncodingENtNtB5_6endian12LittleEndianENtNtB5_8trailing14RejectTrailingENtNtB5_8internal15InternalOptions5limitCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull %i.l), !noalias !541 ; 0 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !542)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !543
  store i8 0, ptr %i.j, align 1, !noalias !543
  tail call void @llvm.experimental.noalias.scope.decl(metadata !544)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !545, !noalias !546, !noundef !5 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !543
  %i.p = tail call noundef nonnull align 8 ptr @_RNvXs_NtCsfzLoC2LLPWN_7bincode5errorINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtB4_9ErrorKindEINtNtCsgxBkk5gSRhY_4core7convert4FromNtNtNtB1r_2io5error5ErrorE4from(ptr noundef nonnull inttoptr (i64 158913789955 to ptr)), !noalias !541
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %1, align 8, !alias.scope !545, !noalias !546, !nonnull !5, !noundef !5 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.s = add nsw i64 %i.o, -1
  call void @_RINvNtCsgxBkk5gSRhY_4core5slice20copy_from_slice_implhECskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull %i.j, i64 noundef 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.q, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21), !noalias !547
  store ptr %i.r, ptr %1, align 8, !alias.scope !545, !noalias !546, !captures !12
  store i64 %i.s, ptr %i.n, align 8, !alias.scope !545, !noalias !546
  %i.t = load i8, ptr %i.j, align 1, !noalias !543, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !543
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !548
  %i.v = zext i8 %i.t to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.v, ptr %i.w, align 8, !noalias !548
  store i8 1, ptr %i.i, align 8, !noalias !548
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !548
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !548
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !548
  store ptr @0, ptr %i.f, align 8, !noalias !548
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXNtNtNtCsgxBkk5gSRhY_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !548
  call void @_RNvNvNtCs6i54tJFfzR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull @7, ptr noundef nonnull %i.f), !noalias !549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !548
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !noalias !548, !nonnull !5, !noundef !5
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !noalias !548, !noundef !5
  store ptr %i.y, ptr %i.h, align 8, !noalias !548
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !noalias !548
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !548
  store ptr %i.h, ptr %i.e, align 8, !noalias !550
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @3, ptr %i.ac, align 8, !noalias !550
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !550
  store ptr %i.i, ptr %i.d, align 8, !noalias !550
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXNtCs6yNvtpc0TEA_10serde_core2deNtB2_10UnexpectedNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !550
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.e, ptr %i.ad, align 8, !noalias !550
  %.sroa.46.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtRDNtNtCs6yNvtpc0TEA_10serde_core2de8ExpectedEL_NtB6_7Display3fmtCskw1zp9IbpTW_24libsignal_message_backup, ptr %.sroa.46.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !550
  %i.ae = invoke fastcc noalias noundef nonnull align 8 ptr @_RINvXs1_NtCsfzLoC2LLPWN_7bincode5errorINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtB6_9ErrorKindENtNtCs6yNvtpc0TEA_10serde_core2de5Error6customNtNtCsgxBkk5gSRhY_4core3fmt9ArgumentsECskw1zp9IbpTW_24libsignal_message_backup(ptr noundef nonnull @88, ptr noundef nonnull %i.d)
          to label %bb.g unwind label %bb.f, !noalias !549

bb.f:                                             ; preds = %bb.e
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #19
          to label %common.resume.i unwind label %bb.j, !noalias !549

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !550
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !548
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RNCINvXs1_NtNtCs807GXlIGG3x_7zkgroup6common13serializationINtB8_11VersionByteKh0_ENtNtCs6yNvtpc0TEA_10serde_core2de11Deserialize11deserializeQINtNtCsfzLoC2LLPWN_7bincode2de12DeserializerNtNtB2j_4read11SliceReaderINtNtB2l_6config17WithOtherTrailingINtB3r_15WithOtherEndianINtB3r_20WithOtherIntEncodingNtB3r_14DefaultOptionsNtNtB3r_3int14FixintEncodingENtNtB3r_6endian12LittleEndianENtNtB3r_8trailing14RejectTrailingEEE0Cskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i.i.i unwind label %bb.h, !noalias !549

bb.h:                                             ; preds = %bb.g
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume.i unwind label %bb.i, !noalias !549

bb.i:                                             ; preds = %bb.h
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #18, !noalias !549
  unreachable

common.resume.i:                                  ; preds = %bb.ac, %bb.s, %bb.h, %bb.f
  %common.resume.op.i = phi { ptr, i32 } [ %i.aw, %bb.s ], [ %i.af, %bb.f ], [ %i.ag, %bb.h ], [ %i.br, %bb.ac ]
  resume { ptr, i32 } %common.resume.op.i

bb.j:                                             ; preds = %bb.f
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #18, !noalias !549
  unreachable

_RNCINvXs1_NtNtCs807GXlIGG3x_7zkgroup6common13serializationINtB8_11VersionByteKh0_ENtNtCs6yNvtpc0TEA_10serde_core2de11Deserialize11deserializeQINtNtCsfzLoC2LLPWN_7bincode2de12DeserializerNtNtB2j_4read11SliceReaderINtNtB2l_6config17WithOtherTrailingINtB3r_15WithOtherEndianINtB3r_20WithOtherIntEncodingNtB3r_14DefaultOptionsNtNtB3r_3int14FixintEncodingENtNtB3r_6endian12LittleEndianENtNtB3r_8trailing14RejectTrailingEEE0Cskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i.i.i: ; preds = %bb.g
  call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g), !noalias !549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !548
  br label %bb.m

bb.k:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !551
  %.not.i.i50.i = icmp eq i64 %5, 1
  br i1 %.not.i.i50.i, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !552
  call void @_RINvXNvNtNtCs807GXlIGG3x_7zkgroup6crypto6proofssb_1__NtB5_34ReceiptCredentialPresentationProofNtNtCs6yNvtpc0TEA_10serde_core2de11Deserialize11deserializeQINtNtCsfzLoC2LLPWN_7bincode2de12DeserializerNtNtB2v_4read11SliceReaderINtNtB2x_6config17WithOtherTrailingINtB3D_15WithOtherEndianINtB3D_20WithOtherIntEncodingNtB3D_14DefaultOptionsNtNtB3D_3int14FixintEncodingENtNtB3D_6endian12LittleEndianENtNtB3D_8trailing14RejectTrailingEEECskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull sret([824 x i8]) align 8 captures(address) dereferenceable(824) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1), !noalias !553
  %i.aj = load i64, ptr %i.c, align 8, !range !6, !noalias !552, !noundef !5 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, -1
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !noalias !552 ; 3 uses
  br i1 %i.ak, label %bb.n, label %bb.o

_RINvYINtNvXs1_NtCsfzLoC2LLPWN_7bincode2deQINtBc_12DeserializerppENtNtCs6yNvtpc0TEA_10serde_core2de12Deserializer17deserialize_tuple6AccessNtNtBc_4read11SliceReaderINtNtBe_6config17WithOtherTrailingINtB2E_15WithOtherEndianINtB2E_20WithOtherIntEncodingNtB2E_14DefaultOptionsNtNtB2E_3int14FixintEncodingENtNtB2E_6endian12LittleEndianENtNtB2E_8trailing14RejectTrailingEENtB13_9SeqAccess12next_elementINtNtNtCs807GXlIGG3x_7zkgroup6common13serialization11VersionByteKh0_EECskw1zp9IbpTW_24libsignal_message_backup.exit.i: ; preds = %bb.a
  %i.an = tail call noundef nonnull align 8 ptr @_RNvYINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtCsfzLoC2LLPWN_7bincode5error9ErrorKindENtNtCs6yNvtpc0TEA_10serde_core2de5Error14invalid_lengthCskw1zp9IbpTW_24libsignal_message_backup(i64 noundef 0, ptr noundef nonnull @5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3), !noalias !535
  br label %bb.m

bb.m:                                             ; preds = %_RINvYINtNvXs1_NtCsfzLoC2LLPWN_7bincode2deQINtBc_12DeserializerppENtNtCs6yNvtpc0TEA_10serde_core2de12Deserializer17deserialize_tuple6AccessNtNtBc_4read11SliceReaderINtNtBe_6config17WithOtherTrailingINtB2E_15WithOtherEndianINtB2E_20WithOtherIntEncodingNtB2E_14DefaultOptionsNtNtB2E_3int14FixintEncodingENtNtB2E_6endian12LittleEndianENtNtB2E_8trailing14RejectTrailingEENtB13_9SeqAccess12next_elementINtNtNtCs807GXlIGG3x_7zkgroup6common13serialization11VersionByteKh0_EECskw1zp9IbpTW_24libsignal_message_backup.exit.i, %_RNCINvXs1_NtNtCs807GXlIGG3x_7zkgroup6common13serializationINtB8_11VersionByteKh0_ENtNtCs6yNvtpc0TEA_10serde_core2de11Deserialize11deserializeQINtNtCsfzLoC2LLPWN_7bincode2de12DeserializerNtNtB2j_4read11SliceReaderINtNtB2l_6config17WithOtherTrailingINtB3r_15WithOtherEndianINtB3r_20WithOtherIntEncodingNtB3r_14DefaultOptionsNtNtB3r_3int14FixintEncodingENtNtB3r_6endian12LittleEndianENtNtB3r_8trailing14RejectTrailingEEE0Cskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i.i.i, %bb.c
  %.sink.i = phi ptr [ %i.an, %_RINvYINtNvXs1_NtCsfzLoC2LLPWN_7bincode2deQINtBc_12DeserializerppENtNtCs6yNvtpc0TEA_10serde_core2de12Deserializer17deserialize_tuple6AccessNtNtBc_4read11SliceReaderINtNtBe_6config17WithOtherTrailingINtB2E_15WithOtherEndianINtB2E_20WithOtherIntEncodingNtB2E_14DefaultOptionsNtNtB2E_3int14FixintEncodingENtNtB2E_6endian12LittleEndianENtNtB2E_8trailing14RejectTrailingEENtB13_9SeqAccess12next_elementINtNtNtCs807GXlIGG3x_7zkgroup6common13serialization11VersionByteKh0_EECskw1zp9IbpTW_24libsignal_message_backup.exit.i ], [ %i.ae, %_RNCINvXs1_NtNtCs807GXlIGG3x_7zkgroup6common13serializationINtB8_11VersionByteKh0_ENtNtCs6yNvtpc0TEA_10serde_core2de11Deserialize11deserializeQINtNtCsfzLoC2LLPWN_7bincode2de12DeserializerNtNtB2j_4read11SliceReaderINtNtB2l_6config17WithOtherTrailingINtB3r_15WithOtherEndianINtB3r_20WithOtherIntEncodingNtB3r_14DefaultOptionsNtNtB3r_3int14FixintEncodingENtNtB3r_6endian12LittleEndianENtNtB3r_8trailing14RejectTrailingEEE0Cskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i.i.i ], [ %i.p, %bb.c ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink.i, ptr %i.ao, align 8, !alias.scope !535, !noalias !536
  store i64 -1, ptr %0, align 8, !alias.scope !535, !noalias !536
  br label %_RINvXs0_NvXNvNtNtNtCs807GXlIGG3x_7zkgroup3api8receipts31receipt_credential_presentations_1__NtBb_29ReceiptCredentialPresentationNtNtCs6yNvtpc0TEA_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB24_7Visitor9visit_seqINtNvXs1_NtCsfzLoC2LLPWN_7bincode2deQINtB3M_12DeserializerppENtB24_12Deserializer17deserialize_tuple6AccessNtNtB3M_4read11SliceReaderINtNtB3O_6config17WithOtherTrailingINtB5P_15WithOtherEndianINtB5P_20WithOtherIntEncodingNtB5P_14DefaultOptionsNtNtB5P_3int14FixintEncodingENtNtB5P_6endian12LittleEndianENtNtB5P_8trailing14RejectTrailingEEECskw1zp9IbpTW_24libsignal_message_backup.exit

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !552
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.am) ]
  br label %bb.r

bb.o:                                             ; preds = %bb.l
  %i.ap = add nsw i64 %5, -2                      ; 3 uses
  %.sroa.512.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(808) %.sroa.510.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(808) %.sroa.512.0..sroa_idx.i.i.i, i64 808, i1 false), !noalias !551
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !552
  store i64 %i.aj, ptr %i.k, align 8, !noalias !551
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.am, ptr %.sroa.49.0..sroa_idx.i, align 8, !noalias !551
  %.not.i.i51.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i51.i, label %.critedge.invoke.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aq = invoke { i64, ptr } @_RINvXNvNtNtCs807GXlIGG3x_7zkgroup6common12simple_typess_1__NtB5_9TimestampNtNtCs6yNvtpc0TEA_10serde_core2de11Deserialize11deserializeQINtNtCsfzLoC2LLPWN_7bincode2de12DeserializerNtNtB2b_4read11SliceReaderINtNtB2d_6config17WithOtherTrailingINtB3j_15WithOtherEndianINtB3j_20WithOtherIntEncodingNtB3j_14DefaultOptionsNtNtB3j_3int14FixintEncodingENtNtB3j_6endian12LittleEndianENtNtB3j_8trailing14RejectTrailingEEECskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1)
          to label %.noexc.i unwind label %bb.s, !noalias !535 ; 2 uses

.noexc.i:                                         ; preds = %bb.p
  %i.ar = extractvalue { i64, ptr } %i.aq, 0
  %i.as = extractvalue { i64, ptr } %i.aq, 1      ; 2 uses
  %i.at = trunc nuw i64 %i.ar to i1
  br i1 %i.at, label %bb.ab, label %bb.t

bb.q:                                             ; preds = %bb.k
  %i.au = call noundef nonnull align 8 ptr @_RNvYINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtCsfzLoC2LLPWN_7bincode5error9ErrorKindENtNtCs6yNvtpc0TEA_10serde_core2de5Error14invalid_lengthCskw1zp9IbpTW_24libsignal_message_backup(i64 noundef 1, ptr noundef nonnull @5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3), !noalias !535
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n
  %.sink133.i = phi ptr [ %i.au, %bb.q ], [ %i.am, %bb.n ]
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink133.i, ptr %i.av, align 8, !alias.scope !535, !noalias !536
  store i64 -1, ptr %0, align 8, !alias.scope !535, !noalias !536
  br label %bb.ae

bb.s:                                             ; preds = %.critedge.invoke.i, %bb.y, %bb.w, %bb.v, %bb.u, %bb.p
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs807GXlIGG3x_7zkgroup6crypto6proofs34ReceiptCredentialPresentationProofECskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef align 8 dereferenceable(824) %i.k) #19
          to label %common.resume.i unwind label %bb.af, !noalias !535

bb.t:                                             ; preds = %.noexc.i
  %i.ax = ptrtoint ptr %i.as to i64
  %.not.i.i52.i = icmp eq i64 %i.ap, 1
  br i1 %.not.i.i52.i, label %.critedge.invoke.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !554)
  call void @llvm.experimental.noalias.scope.decl(metadata !555)
  call void @llvm.experimental.noalias.scope.decl(metadata !556)
  call void @llvm.experimental.noalias.scope.decl(metadata !557)
  %i.ay = invoke noundef nonnull ptr @_RNvXs9_NtCsfzLoC2LLPWN_7bincode6configINtB5_17WithOtherTrailingINtB5_15WithOtherEndianINtB5_20WithOtherIntEncodingNtB5_14DefaultOptionsNtNtB5_3int14FixintEncodingENtNtB5_6endian12LittleEndianENtNtB5_8trailing14RejectTrailingENtNtB5_8internal15InternalOptions5limitCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull %i.l)
          to label %.noexc53.i unwind label %bb.s, !noalias !535 ; 0 uses

.noexc53.i:                                       ; preds = %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !558)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !559
  store i64 0, ptr %i.b, align 8, !noalias !559
  %i.az = load i64, ptr %i.n, align 8, !alias.scope !560, !noalias !561, !noundef !5 ; 2 uses
  %i.ba = icmp ugt i64 %i.az, 7
  br i1 %i.ba, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.noexc53.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !559
  %i.bb = invoke noundef nonnull align 8 ptr @_RNvXs_NtCsfzLoC2LLPWN_7bincode5errorINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtB4_9ErrorKindEINtNtCsgxBkk5gSRhY_4core7convert4FromNtNtNtB1r_2io5error5ErrorE4from(ptr noundef nonnull inttoptr (i64 158913789955 to ptr))
          to label %bb.ab unwind label %bb.s, !noalias !535

bb.w:                                             ; preds = %.noexc53.i
  %i.bc = load ptr, ptr %1, align 8, !alias.scope !560, !noalias !561, !nonnull !5, !noundef !5 ; 2 uses
  invoke void @_RINvNtCsgxBkk5gSRhY_4core5slice20copy_from_slice_implhECskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull %i.b, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bc, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21)
          to label %bb.x unwind label %bb.s, !noalias !535

bb.x:                                             ; preds = %bb.w
  %i.bd = add nsw i64 %i.az, -8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %i.be, ptr %1, align 8, !alias.scope !560, !noalias !561, !captures !12
  store i64 %i.bd, ptr %i.n, align 8, !alias.scope !560, !noalias !561
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.b, align 8, !noalias !559
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !559
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !562)
  call void @llvm.experimental.noalias.scope.decl(metadata !563)
  %.not.i.i56.not.i = icmp eq i64 %i.ap, 2
  br i1 %.not.i.i56.not.i, label %.critedge.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !564
  invoke void @_RINvXs2d_NtNtCs6yNvtpc0TEA_10serde_core2de5implsAhj10_NtB9_11Deserialize11deserializeQINtNtCsfzLoC2LLPWN_7bincode2de12DeserializerNtNtB1p_4read11SliceReaderINtNtB1r_6config17WithOtherTrailingINtB2x_15WithOtherEndianINtB2x_20WithOtherIntEncodingNtB2x_14DefaultOptionsNtNtB2x_3int14FixintEncodingENtNtB2x_6endian12LittleEndianENtNtB2x_8trailing14RejectTrailingEEECskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1)
          to label %.noexc59.i unwind label %bb.s, !noalias !535

.noexc59.i:                                       ; preds = %bb.y
  %i.bf = load i8, ptr %i.a, align 8, !range !4, !noalias !564, !noundef !5
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.noexc59.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.636.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 840
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %.sroa.636.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(6) %i.bh, i64 6, i1 false), !noalias !536
  %.sroa.10.2..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.bi = load i8, ptr %.sroa.10.2..sroa_idx.i, align 1, !noalias !565
  store i8 %i.bi, ptr %.sroa.10.i, align 8, !noalias !565
  %.sroa.411.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.411.0.copyload.i.i.i = load ptr, ptr %.sroa.411.0..sroa_idx.i.i.i, align 8, !noalias !564 ; 2 uses
  %.sroa.512.0..sroa_idx.i.i58.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.512.0.copyload.i.i.i = load i8, ptr %.sroa.512.0..sroa_idx.i.i58.i, align 8, !noalias !564
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !564
  %.sroa.10.i.1.i.1.i.1..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.i, i64 1
  store ptr %.sroa.411.0.copyload.i.i.i, ptr %.sroa.10.i.1.i.1.i.1..sroa_idx, align 1, !alias.scope !566, !noalias !565
  %.sroa.10.i.0..sroa.10.i.0..sroa.10.i.0..sroa.10.0..sroa.10.0..sroa.10.8..sroa.544.0.copyload.i = load ptr, ptr %.sroa.10.i, align 8, !noalias !551
  %i.bj = ptrtoint ptr %.sroa.411.0.copyload.i.i.i to i64
  %i.bk = lshr i64 %i.bj, 56
  %i.bl = trunc nuw i64 %i.bk to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(856) %0, ptr noundef nonnull align 8 dereferenceable(824) %i.k, i64 824, i1 false), !noalias !536
  %.sroa.434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 824
  store i64 %i.ax, ptr %.sroa.434.0..sroa_idx.i, align 8, !alias.scope !535, !noalias !536
  %.sroa.535.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 832
  store i64 %.val.i.i.i.i.i.i.i.i, ptr %.sroa.535.0..sroa_idx.i, align 8, !alias.scope !535, !noalias !536
  %.sroa.737.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 846
  store ptr %.sroa.10.i.0..sroa.10.i.0..sroa.10.i.0..sroa.10.0..sroa.10.0..sroa.10.8..sroa.544.0.copyload.i, ptr %.sroa.737.0..sroa_idx.i, align 2, !alias.scope !535, !noalias !536
  %.sroa.838.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 854
  store i8 %i.bl, ptr %.sroa.838.0..sroa_idx.i, align 2, !alias.scope !535, !noalias !536
  %.sroa.838.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 855
  store i8 %.sroa.512.0.copyload.i.i.i, ptr %.sroa.838.0..sroa_idx.sroa_idx.i, align 1, !alias.scope !535, !noalias !536
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !551
  br label %_RINvXs0_NvXNvNtNtNtCs807GXlIGG3x_7zkgroup3api8receipts31receipt_credential_presentations_1__NtBb_29ReceiptCredentialPresentationNtNtCs6yNvtpc0TEA_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB24_7Visitor9visit_seqINtNvXs1_NtCsfzLoC2LLPWN_7bincode2deQINtB3M_12DeserializerppENtB24_12Deserializer17deserialize_tuple6AccessNtNtB3M_4read11SliceReaderINtNtB3O_6config17WithOtherTrailingINtB5P_15WithOtherEndianINtB5P_20WithOtherIntEncodingNtB5P_14DefaultOptionsNtNtB5P_3int14FixintEncodingENtNtB5P_6endian12LittleEndianENtNtB5P_8trailing14RejectTrailingEEECskw1zp9IbpTW_24libsignal_message_backup.exit

bb.aa:                                            ; preds = %.noexc59.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !noalias !564, !nonnull !5, !align !11, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !564
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  br label %bb.ab

.critedge.i:                                      ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  br label %.critedge.invoke.i

.critedge.invoke.i:                               ; preds = %.critedge.i, %bb.t, %bb.o
  %i.bo = phi i64 [ 4, %.critedge.i ], [ 2, %bb.o ], [ 3, %bb.t ]
  %i.bp = invoke noundef nonnull align 8 ptr @_RNvYINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtCsfzLoC2LLPWN_7bincode5error9ErrorKindENtNtCs6yNvtpc0TEA_10serde_core2de5Error14invalid_lengthCskw1zp9IbpTW_24libsignal_message_backup(i64 noundef %i.bo, ptr noundef nonnull @5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3)
          to label %bb.ab unwind label %bb.s, !noalias !535

bb.ab:                                            ; preds = %.critedge.invoke.i, %bb.aa, %bb.v, %.noexc.i
  %.sink137.sink.i = phi ptr [ %i.bn, %bb.aa ], [ %i.bp, %.critedge.invoke.i ], [ %i.as, %.noexc.i ], [ %i.bb, %bb.v ]
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink137.sink.i, ptr %i.bq, align 8, !alias.scope !535, !noalias !536
  store i64 -1, ptr %0, align 8, !alias.scope !535, !noalias !536
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(824) %i.k)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs807GXlIGG3x_7zkgroup6crypto6proofs34ReceiptCredentialPresentationProofECskw1zp9IbpTW_24libsignal_message_backup.exit.i unwind label %bb.ac, !noalias !535

bb.ac:                                            ; preds = %bb.ab
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(824) %i.k)
          to label %common.resume.i unwind label %bb.ad, !noalias !535

bb.ad:                                            ; preds = %bb.ac
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #18, !noalias !535
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs807GXlIGG3x_7zkgroup6crypto6proofs34ReceiptCredentialPresentationProofECskw1zp9IbpTW_24libsignal_message_backup.exit.i: ; preds = %bb.ab
  call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(824) %i.k), !noalias !535
  br label %bb.ae

bb.ae:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs807GXlIGG3x_7zkgroup6crypto6proofs34ReceiptCredentialPresentationProofECskw1zp9IbpTW_24libsignal_message_backup.exit.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !551
  br label %_RINvXs0_NvXNvNtNtNtCs807GXlIGG3x_7zkgroup3api8receipts31receipt_credential_presentations_1__NtBb_29ReceiptCredentialPresentationNtNtCs6yNvtpc0TEA_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB24_7Visitor9visit_seqINtNvXs1_NtCsfzLoC2LLPWN_7bincode2deQINtB3M_12DeserializerppENtB24_12Deserializer17deserialize_tuple6AccessNtNtB3M_4read11SliceReaderINtNtB3O_6config17WithOtherTrailingINtB5P_15WithOtherEndianINtB5P_20WithOtherIntEncodingNtB5P_14DefaultOptionsNtNtB5P_3int14FixintEncodingENtNtB5P_6endian12LittleEndianENtNtB5P_8trailing14RejectTrailingEEECskw1zp9IbpTW_24libsignal_message_backup.exit

bb.af:                                            ; preds = %bb.s
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #18, !noalias !535
  unreachable

_RINvXs0_NvXNvNtNtNtCs807GXlIGG3x_7zkgroup3api8receipts31receipt_credential_presentations_1__NtBb_29ReceiptCredentialPresentationNtNtCs6yNvtpc0TEA_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB24_7Visitor9visit_seqINtNvXs1_NtCsfzLoC2LLPWN_7bincode2deQINtB3M_12DeserializerppENtB24_12Deserializer17deserialize_tuple6AccessNtNtB3M_4read11SliceReaderINtNtB3O_6config17WithOtherTrailingINtB5P_15WithOtherEndianINtB5P_20WithOtherIntEncodingNtB5P_14DefaultOptionsNtNtB5P_3int14FixintEncodingENtNtB5P_6endian12LittleEndianENtNtB5P_8trailing14RejectTrailingEEECskw1zp9IbpTW_24libsignal_message_backup.exit: ; preds = %bb.m, %bb.z, %bb.ae
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noalias noundef nonnull align 8 ptr @_RINvXs1_NtCsfzLoC2LLPWN_7bincode5errorINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtB6_9ErrorKindENtNtCs6yNvtpc0TEA_10serde_core2de5Error6customNtNtCsgxBkk5gSRhY_4core3fmt9ArgumentsECskw1zp9IbpTW_24libsignal_message_backup(ptr noundef nonnull %0, ptr noundef nonnull %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !587)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !588)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !589)
  %i.d = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.e = and i64 %i.d, 1
  %.not.i.i.i = icmp eq i64 %i.e, 0
  %i.f = lshr i64 %i.d, 1                         ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !590)
  br i1 %.not.i.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !591)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !592)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !593
  call void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %i.f, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !593
  %i.g = load i64, ptr %i.a, align 8, !range !13, !noalias !593, !noundef !5
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !14, !noalias !593, !noundef !5 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.h, label %bb.c, label %_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i.i.i.i.i, !prof !15

bb.c:                                             ; preds = %bb.b
  %i.l = load i64, ptr %i.k, align 8, !noalias !593
  tail call void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.l) #22, !noalias !593
  unreachable

_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load ptr, ptr %i.k, align 8, !noalias !593, !nonnull !5, !noundef !5 ; 2 uses
  %i.n = icmp ule i64 %i.f, %i.j
  tail call void @llvm.assume(i1 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !593
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvYNvYeNtNtCs6i54tJFfzR_5alloc6borrow7ToOwned8to_ownedINtNtNtCsgxBkk5gSRhY_4core3ops8function6FnOnceTReEE9call_onceCskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull readonly align 1 %0, i64 range(i64 0, -9223372036854775808) %i.f, i1 false), !noalias !594
  br label %_RNvYNvYeNtNtCs6i54tJFfzR_5alloc6borrow7ToOwned8to_ownedINtNtNtCsgxBkk5gSRhY_4core3ops8function6FnOnceTReEE9call_onceCskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i.i

_RNvYNvYeNtNtCs6i54tJFfzR_5alloc6borrow7ToOwned8to_ownedINtNtNtCsgxBkk5gSRhY_4core3ops8function6FnOnceTReEE9call_onceCskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i.i: ; preds = %bb.d, %_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i.i.i.i.i
  store i64 %i.j, ptr %i.b, align 8, !alias.scope !595, !noalias !596
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !595, !noalias !596
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.f, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !595, !noalias !596
  br label %_RNvXsB_NtCs6i54tJFfzR_5alloc6stringNtNtCsgxBkk5gSRhY_4core3fmt9ArgumentsNtB5_8ToString9to_stringCskw1zp9IbpTW_24libsignal_message_backup.exit

bb.e:                                             ; preds = %bb.a
  call void @_RNvNvNtCs6i54tJFfzR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull %0, ptr noundef nonnull %1), !noalias !597
  br label %_RNvXsB_NtCs6i54tJFfzR_5alloc6stringNtNtCsgxBkk5gSRhY_4core3fmt9ArgumentsNtB5_8ToString9to_stringCskw1zp9IbpTW_24libsignal_message_backup.exit

_RNvXsB_NtCs6i54tJFfzR_5alloc6stringNtNtCsgxBkk5gSRhY_4core3fmt9ArgumentsNtB5_8ToString9to_stringCskw1zp9IbpTW_24libsignal_message_backup.exit: ; preds = %_RNvYNvYeNtNtCs6i54tJFfzR_5alloc6borrow7ToOwned8to_ownedINtNtNtCsgxBkk5gSRhY_4core3ops8function6FnOnceTReEE9call_onceCskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i.i, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  tail call void @_RNvCs1njKG4L9aB3_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !598
  %i.o = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs1njKG4L9aB3_7___rustc12___rust_alloc(i64 noundef range(i64 24, 529) 24, i64 noundef 8) #20, !noalias !598 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.f, label %_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxNtNtCsfzLoC2LLPWN_7bincode5error9ErrorKindE3newCskw1zp9IbpTW_24libsignal_message_backup.exit, !prof !15

bb.f:                                             ; preds = %_RNvXsB_NtCs6i54tJFfzR_5alloc6stringNtNtCsgxBkk5gSRhY_4core3fmt9ArgumentsNtB5_8ToString9to_stringCskw1zp9IbpTW_24libsignal_message_backup.exit
  invoke void @_RNvNtCs6i54tJFfzR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #22
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsfzLoC2LLPWN_7bincode5error9ErrorKindECskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #19
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.i:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.q

_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxNtNtCsfzLoC2LLPWN_7bincode5error9ErrorKindE3newCskw1zp9IbpTW_24libsignal_message_backup.exit: ; preds = %_RNvXsB_NtCs6i54tJFfzR_5alloc6stringNtNtCsgxBkk5gSRhY_4core3fmt9ArgumentsNtB5_8ToString9to_stringCskw1zp9IbpTW_24libsignal_message_backup.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret ptr %i.o
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RINvXs1_NtCsfzLoC2LLPWN_7bincode5errorINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtB6_9ErrorKindENtNtCs6yNvtpc0TEA_10serde_core2de5Error6customReECskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !608
  call void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %1, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !608
  %i.c = load i64, ptr %i.a, align 8, !range !13, !noalias !608, !noundef !5
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !14, !noalias !608, !noundef !5 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.d, label %bb.b, label %_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.g, align 8, !noalias !608
  tail call void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %i.f, i64 %i.h) #22, !noalias !608
  unreachable

_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i: ; preds = %bb.a
  %i.i = load ptr, ptr %i.g, align 8, !noalias !608, !nonnull !5, !noundef !5 ; 2 uses
  %i.j = icmp ule i64 %1, %i.f
  tail call void @llvm.assume(i1 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !608
  %.not.i.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i.i, label %_RNvXsB_NtCs6i54tJFfzR_5alloc6stringReNtB5_8ToString9to_stringCskw1zp9IbpTW_24libsignal_message_backup.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull readonly align 1 %0, i64 range(i64 0, -9223372036854775808) %1, i1 false), !noalias !609
  br label %_RNvXsB_NtCs6i54tJFfzR_5alloc6stringReNtB5_8ToString9to_stringCskw1zp9IbpTW_24libsignal_message_backup.exit

_RNvXsB_NtCs6i54tJFfzR_5alloc6stringReNtB5_8ToString9to_stringCskw1zp9IbpTW_24libsignal_message_backup.exit: ; preds = %_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i, %bb.c
  store i64 %i.f, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %1, ptr %.sroa.5.0..sroa_idx, align 8
  tail call void @_RNvCs1njKG4L9aB3_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !610
  %i.k = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs1njKG4L9aB3_7___rustc12___rust_alloc(i64 noundef range(i64 24, 529) 24, i64 noundef 8) #20, !noalias !610 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxNtNtCsfzLoC2LLPWN_7bincode5error9ErrorKindE3newCskw1zp9IbpTW_24libsignal_message_backup.exit, !prof !15

bb.d:                                             ; preds = %_RNvXsB_NtCs6i54tJFfzR_5alloc6stringReNtB5_8ToString9to_stringCskw1zp9IbpTW_24libsignal_message_backup.exit
  invoke void @_RNvNtCs6i54tJFfzR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #22
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsfzLoC2LLPWN_7bincode5error9ErrorKindECskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #19
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.m

_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxNtNtCsfzLoC2LLPWN_7bincode5error9ErrorKindE3newCskw1zp9IbpTW_24libsignal_message_backup.exit: ; preds = %_RNvXsB_NtCs6i54tJFfzR_5alloc6stringReNtB5_8ToString9to_stringCskw1zp9IbpTW_24libsignal_message_backup.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.k
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvYINtNvXs1_NtCsfzLoC2LLPWN_7bincode2deQINtBc_12DeserializerppENtNtCs6yNvtpc0TEA_10serde_core2de12Deserializer17deserialize_tuple6AccessNtNtBc_4read11SliceReaderINtNtBe_6config17WithOtherTrailingINtB2E_15WithOtherEndianINtB2E_20WithOtherIntEncodingNtB2E_14DefaultOptionsNtNtB2E_3int14FixintEncodingENtNtB2E_6endian12LittleEndianENtNtB2E_8trailing14RejectTrailingEENtB13_9SeqAccess12next_elementhECskw1zp9IbpTW_24libsignal_message_backup(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) initializes((0, 1)) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !632)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !633)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !633, !noalias !632, !noundef !5 ; 2 uses
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.d, align 1, !alias.scope !632, !noalias !633
  br label %_RINvXNvXs1_NtCsfzLoC2LLPWN_7bincode2deQINtB9_12DeserializerppENtNtCs6yNvtpc0TEA_10serde_core2de12Deserializer17deserialize_tupleINtB3_6AccessNtNtB9_4read11SliceReaderINtNtBb_6config17WithOtherTrailingINtB2H_15WithOtherEndianINtB2H_20WithOtherIntEncodingNtB2H_14DefaultOptionsNtNtB2H_3int14FixintEncodingENtNtB2H_6endian12LittleEndianENtNtB2H_8trailing14RejectTrailingEENtB10_9SeqAccess17next_element_seedINtNtCsgxBkk5gSRhY_4core6marker11PhantomDatahEECskw1zp9IbpTW_24libsignal_message_backup.exit

bb.c:                                             ; preds = %bb.a
  %i.e = add i64 %i.c, -1
  store i64 %i.e, ptr %i.b, align 8, !alias.scope !633, !noalias !632
  %i.f = load ptr, ptr %1, align 8, !alias.scope !633, !noalias !632, !nonnull !5, !align !11, !noundef !5 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !634)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !635)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !636)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !637)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = tail call noundef nonnull ptr @_RNvXs9_NtCsfzLoC2LLPWN_7bincode6configINtB5_17WithOtherTrailingINtB5_15WithOtherEndianINtB5_20WithOtherIntEncodingNtB5_14DefaultOptionsNtNtB5_3int14FixintEncodingENtNtB5_6endian12LittleEndianENtNtB5_8trailing14RejectTrailingENtNtB5_8internal15InternalOptions5limitCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull %i.g), !noalias !638 ; 0 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !639)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !640
  store i8 0, ptr %i.a, align 1, !noalias !640
  tail call void @llvm.experimental.noalias.scope.decl(metadata !641)
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !642, !noalias !643, !noundef !5 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !640
  %i.k = tail call noundef nonnull align 8 ptr @_RNvXs_NtCsfzLoC2LLPWN_7bincode5errorINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtB4_9ErrorKindEINtNtCsgxBkk5gSRhY_4core7convert4FromNtNtNtB1r_2io5error5ErrorE4from(ptr noundef nonnull inttoptr (i64 158913789955 to ptr)), !noalias !638
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.l, align 8, !alias.scope !632, !noalias !633
  br label %_RINvXNvXs1_NtCsfzLoC2LLPWN_7bincode2deQINtB9_12DeserializerppENtNtCs6yNvtpc0TEA_10serde_core2de12Deserializer17deserialize_tupleINtB3_6AccessNtNtB9_4read11SliceReaderINtNtBb_6config17WithOtherTrailingINtB2H_15WithOtherEndianINtB2H_20WithOtherIntEncodingNtB2H_14DefaultOptionsNtNtB2H_3int14FixintEncodingENtNtB2H_6endian12LittleEndianENtNtB2H_8trailing14RejectTrailingEENtB10_9SeqAccess17next_element_seedINtNtCsgxBkk5gSRhY_4core6marker11PhantomDatahEECskw1zp9IbpTW_24libsignal_message_backup.exit

bb.e:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.f, align 8, !alias.scope !642, !noalias !643, !nonnull !5, !noundef !5 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.o = add nsw i64 %i.j, -1
  call void @_RINvNtCsgxBkk5gSRhY_4core5slice20copy_from_slice_implhECskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull %i.a, i64 noundef 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21), !noalias !644
  store ptr %i.n, ptr %i.f, align 8, !alias.scope !642, !noalias !643, !captures !12
  store i64 %i.o, ptr %i.i, align 8, !alias.scope !642, !noalias !643
  %i.p = load i8, ptr %i.a, align 1, !noalias !640, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !640
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.q, align 1, !alias.scope !632, !noalias !633
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.p, ptr %i.r, align 2, !alias.scope !632, !noalias !633
  br label %_RINvXNvXs1_NtCsfzLoC2LLPWN_7bincode2deQINtB9_12DeserializerppENtNtCs6yNvtpc0TEA_10serde_core2de12Deserializer17deserialize_tupleINtB3_6AccessNtNtB9_4read11SliceReaderINtNtBb_6config17WithOtherTrailingINtB2H_15WithOtherEndianINtB2H_20WithOtherIntEncodingNtB2H_14DefaultOptionsNtNtB2H_3int14FixintEncodingENtNtB2H_6endian12LittleEndianENtNtB2H_8trailing14RejectTrailingEENtB10_9SeqAccess17next_element_seedINtNtCsgxBkk5gSRhY_4core6marker11PhantomDatahEECskw1zp9IbpTW_24libsignal_message_backup.exit

_RINvXNvXs1_NtCsfzLoC2LLPWN_7bincode2deQINtB9_12DeserializerppENtNtCs6yNvtpc0TEA_10serde_core2de12Deserializer17deserialize_tupleINtB3_6AccessNtNtB9_4read11SliceReaderINtNtBb_6config17WithOtherTrailingINtB2H_15WithOtherEndianINtB2H_20WithOtherIntEncodingNtB2H_14DefaultOptionsNtNtB2H_3int14FixintEncodingENtNtB2H_6endian12LittleEndianENtNtB2H_8trailing14RejectTrailingEENtB10_9SeqAccess17next_element_seedINtNtCsgxBkk5gSRhY_4core6marker11PhantomDatahEECskw1zp9IbpTW_24libsignal_message_backup.exit: ; preds = %bb.b, %bb.d, %bb.e
  %.sink.i = phi i8 [ 0, %bb.e ], [ 1, %bb.d ], [ 0, %bb.b ]
  store i8 %.sink.i, ptr %0, align 8, !alias.scope !632, !noalias !633
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef align 8 ptr @_RINvYQINtNtCsfzLoC2LLPWN_7bincode3ser10SerializerQINtNtCs6i54tJFfzR_5alloc3vec3VechEINtNtB9_6config14WithOtherLimitINtB1n_17WithOtherTrailingINtB1n_15WithOtherEndianINtB1n_20WithOtherIntEncodingNtB1n_14DefaultOptionsNtNtB1n_3int14FixintEncodingENtNtB1n_6endian12LittleEndianENtNtB1n_8trailing14RejectTrailingENtNtB1n_5limit8InfiniteEENtNtCs6yNvtpc0TEA_10serde_core3ser10Serializer11collect_seqRBM_ECskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val14 = load i64, ptr %i.d, align 8, !noundef !5 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 %.val14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !660)
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !660, !nonnull !5, !align !11, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !660
  store i64 %.val14, ptr %i.b, align 8, !alias.scope !661, !noalias !660
  call void @_RNvMs1_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechE17extend_from_sliceCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef range(i64 1, 9) 8), !noalias !660
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !660
  %i.f = icmp samesign eq i64 %.val14, 0
  br i1 %i.f, label %_RINvYINtNtNtCsgxBkk5gSRhY_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator12try_for_eachNCINvYQINtNtCsfzLoC2LLPWN_7bincode3ser10SerializerQINtNtCs6i54tJFfzR_5alloc3vec3VechEINtNtB1Q_6config14WithOtherLimitINtB34_17WithOtherTrailingINtB34_15WithOtherEndianINtB34_20WithOtherIntEncodingNtB34_14DefaultOptionsNtNtB34_3int14FixintEncodingENtNtB34_6endian12LittleEndianENtNtB34_8trailing14RejectTrailingENtNtB34_5limit8InfiniteEENtNtCs6yNvtpc0TEA_10serde_core3ser10Serializer11collect_seqRB2t_E0INtNtBa_6result6ResultuINtNtB2y_5boxed3BoxNtNtB1Q_5error9ErrorKindEEECskw1zp9IbpTW_24libsignal_message_backup.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %i.g = phi ptr [ %i.h, %.lr.ph.i.i ], [ %.val, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  %.val7.i.i = load i8, ptr %i.g, align 1, !alias.scope !662, !noalias !663, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !664
  store i8 %.val7.i.i, ptr %i.a, align 1, !noalias !664
  call void @_RNvMs1_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechE17extend_from_sliceCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef range(i64 1, 9) 1), !noalias !664
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !664
  %i.i = icmp eq ptr %i.h, %i.e
  br i1 %i.i, label %_RINvYINtNtNtCsgxBkk5gSRhY_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator12try_for_eachNCINvYQINtNtCsfzLoC2LLPWN_7bincode3ser10SerializerQINtNtCs6i54tJFfzR_5alloc3vec3VechEINtNtB1Q_6config14WithOtherLimitINtB34_17WithOtherTrailingINtB34_15WithOtherEndianINtB34_20WithOtherIntEncodingNtB34_14DefaultOptionsNtNtB34_3int14FixintEncodingENtNtB34_6endian12LittleEndianENtNtB34_8trailing14RejectTrailingENtNtB34_5limit8InfiniteEENtNtCs6yNvtpc0TEA_10serde_core3ser10Serializer11collect_seqRB2t_E0INtNtBa_6result6ResultuINtNtB2y_5boxed3BoxNtNtB1Q_5error9ErrorKindEEECskw1zp9IbpTW_24libsignal_message_backup.exit, label %.lr.ph.i.i

_RINvYINtNtNtCsgxBkk5gSRhY_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator12try_for_eachNCINvYQINtNtCsfzLoC2LLPWN_7bincode3ser10SerializerQINtNtCs6i54tJFfzR_5alloc3vec3VechEINtNtB1Q_6config14WithOtherLimitINtB34_17WithOtherTrailingINtB34_15WithOtherEndianINtB34_20WithOtherIntEncodingNtB34_14DefaultOptionsNtNtB34_3int14FixintEncodingENtNtB34_6endian12LittleEndianENtNtB34_8trailing14RejectTrailingENtNtB34_5limit8InfiniteEENtNtCs6yNvtpc0TEA_10serde_core3ser10Serializer11collect_seqRB2t_E0INtNtBa_6result6ResultuINtNtB2y_5boxed3BoxNtNtB1Q_5error9ErrorKindEEECskw1zp9IbpTW_24libsignal_message_backup.exit: ; preds = %.lr.ph.i.i, %bb.a
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef align 8 ptr @_RINvYQINtNtCsfzLoC2LLPWN_7bincode3ser11SizeCheckerQINtNtB9_6config14WithOtherLimitINtBQ_17WithOtherTrailingINtBQ_15WithOtherEndianINtBQ_20WithOtherIntEncodingNtBQ_14DefaultOptionsNtNtBQ_3int14FixintEncodingENtNtBQ_6endian12LittleEndianENtNtBQ_8trailing14RejectTrailingENtNtBQ_5limit8InfiniteEENtNtCs6yNvtpc0TEA_10serde_core3ser10Serializer11collect_seqRINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsfzLoC2LLPWN_7bincode5error9ErrorKindECskw1zp9IbpTW_24libsignal_message_backup.exit.i:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val14 = load i64, ptr %i.b, align 8, !noundef !5 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 %.val14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !684)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !685)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !686, !noundef !5 ; 4 uses
  %i.f = icmp ugt i64 %i.e, -9
  br i1 %i.f, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsfzLoC2LLPWN_7bincode5error9ErrorKindECskw1zp9IbpTW_24libsignal_message_backup.exit.i
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #21, !noalias !686
  unreachable

bb.b:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsfzLoC2LLPWN_7bincode5error9ErrorKindECskw1zp9IbpTW_24libsignal_message_backup.exit.i
  %i.g = add nuw i64 %i.e, 8                      ; 3 uses
  store i64 %i.g, ptr %i.d, align 8, !alias.scope !686
  %i.h = icmp samesign eq i64 %.val14, 0
  br i1 %i.h, label %_RINvYINtNtNtCsgxBkk5gSRhY_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator12try_for_eachNCINvYQINtNtCsfzLoC2LLPWN_7bincode3ser11SizeCheckerQINtNtB1Q_6config14WithOtherLimitINtB2x_17WithOtherTrailingINtB2x_15WithOtherEndianINtB2x_20WithOtherIntEncodingNtB2x_14DefaultOptionsNtNtB2x_3int14FixintEncodingENtNtB2x_6endian12LittleEndianENtNtB2x_8trailing14RejectTrailingENtNtB2x_5limit8InfiniteEENtNtCs6yNvtpc0TEA_10serde_core3ser10Serializer11collect_seqRINtNtCs6i54tJFfzR_5alloc3vec3VechEE0INtNtBa_6result6ResultuINtNtB7A_5boxed3BoxNtNtB1Q_5error9ErrorKindEEECskw1zp9IbpTW_24libsignal_message_backup.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.i = add i64 %.val14, -1
  %i.j = sub i64 -9, %i.e
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.j)
  %i.l = add i64 %i.k, 1                          ; 3 uses
  %min.iters.check = icmp ult i64 %i.l, 5
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader23, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
end_hunk_0
begin_hunk_1_@_RNvXs_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10gift_badgeNtB4_9GiftBadgeINtNtCsgxBkk5gSRhY_4core7convert7TryFromNtNtNtBa_5proto6backup9GiftBadgeE8try_from:bb.a
  store i64 %i.r, ptr %i.s, align 8, !noalias !816
  %i.t = invoke noundef align 8 ptr @_RINvYNtNtNtNtCs807GXlIGG3x_7zkgroup3api8receipts31receipt_credential_presentation29ReceiptCredentialPresentationNtNtCs6yNvtpc0TEA_10serde_core2de11Deserialize20deserialize_in_placeQINtNtCsfzLoC2LLPWN_7bincode2de12DeserializerNtNtB2W_4read11SliceReaderINtNtB2Y_6config17WithOtherTrailingINtB44_15WithOtherEndianINtB44_20WithOtherIntEncodingNtB44_14DefaultOptionsNtNtB44_3int14FixintEncodingENtNtB44_6endian12LittleEndianENtNtB44_8trailing14RejectTrailingEEECskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(856) %i.c)
          to label %bb.g unwind label %bb.f, !noalias !817 ; 2 uses

bb.f:                                             ; preds = %bb.h, %.noexc
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs807GXlIGG3x_7zkgroup3api8receipts31receipt_credential_presentation29ReceiptCredentialPresentationECskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef align 8 dereferenceable(856) %i.c) #19
          to label %.body unwind label %bb.l, !noalias !817

bb.g:                                             ; preds = %.noexc
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !816
  store ptr %i.t, ptr %i.a, align 8, !noalias !816
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtCsfzLoC2LLPWN_7bincode5error9ErrorKindEECskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.i unwind label %bb.f, !noalias !817

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !816
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !816
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(856) %i.c)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs807GXlIGG3x_7zkgroup3api8receipts31receipt_credential_presentation29ReceiptCredentialPresentationECskw1zp9IbpTW_24libsignal_message_backup.exit.i unwind label %bb.j, !noalias !817

bb.j:                                             ; preds = %bb.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(856) %i.c)
          to label %.body unwind label %bb.k, !noalias !817

bb.k:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #18, !noalias !817
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs807GXlIGG3x_7zkgroup3api8receipts31receipt_credential_presentation29ReceiptCredentialPresentationECskw1zp9IbpTW_24libsignal_message_backup.exit.i: ; preds = %bb.i
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(856) %i.c)
          to label %.thread unwind label %bb.b

.thread:                                          ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs807GXlIGG3x_7zkgroup3api8receipts31receipt_credential_presentation29ReceiptCredentialPresentationECskw1zp9IbpTW_24libsignal_message_backup.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !816
  br label %bb.n

bb.l:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #18, !noalias !817
  unreachable

bb.m:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !816
  %.sroa.0.0.copyload = load i64, ptr %i.c, align 8, !noalias !818 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !818
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.10.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 8, !noalias !818
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(832) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(832) %.sroa.11.0..sroa_idx, i64 832, i1 false), !noalias !818
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !816
  %i.y = icmp eq i64 %.sroa.0.0.copyload, -1
  br i1 %i.y, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.thread, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  br label %.sink.split

bb.o:                                             ; preds = %bb.m
  %i.z = ptrtoint ptr %.sroa.7.0.copyload to i64
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(832) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(832) %.sroa.11, i64 832, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  store i64 %.sroa.0.0.copyload, ptr %0, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.z, ptr %.sroa.416.0..sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.10.0.copyload, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.617.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 856
  store i8 %i.h, ptr %.sroa.617.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body31 unwind label %bb.r

bb.q:                                             ; preds = %bb.o
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit unwind label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #18
  unreachable

.body31:                                          ; preds = %bb.w, %bb.p, %bb.s, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.aa, %bb.p ], [ %i.ad, %bb.s ], [ %i.ai, %bb.w ]
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val28 = load ptr, ptr %i.ac, align 8, !align !11, !noundef !5
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsh1373Z0TDxr_8protobuf7special13SpecialFieldsECskw1zp9IbpTW_24libsignal_message_backup(ptr %.val28) #19
          to label %common.resume unwind label %bb.ab

bb.s:                                             ; preds = %bb.x, %bb.q
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body31

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val27 = load ptr, ptr %i.ae, align 8, !align !11, !noundef !5 ; 4 uses
  %i.af = icmp eq ptr %.val27, null
  br i1 %i.af, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsh1373Z0TDxr_8protobuf7special13SpecialFieldsECskw1zp9IbpTW_24libsignal_message_backup.exit, label %bb.t

bb.t:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit
  invoke void @_RNvXsg_NtCsfBDUjroi3FF_9hashbrown3rawINtB5_8RawTableTmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val27)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsh1373Z0TDxr_8protobuf7special13SpecialFieldsECskw1zp9IbpTW_24libsignal_message_backup.exit.sink.split unwind label %bb.u

common.resume.sink.split:                         ; preds = %bb.u, %bb.aa
  %.val.sink = phi ptr [ %.val, %bb.aa ], [ %.val27, %bb.u ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.am, %bb.aa ], [ %i.ag, %bb.u ]
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.sink, i64 noundef 32, i64 noundef 8) #20
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %.body31
  %common.resume.op = phi { ptr, i32 } [ %.pn, %.body31 ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.u:                                             ; preds = %bb.t
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsh1373Z0TDxr_8protobuf7special13SpecialFieldsECskw1zp9IbpTW_24libsignal_message_backup.exit.sink.split: ; preds = %bb.t, %bb.z
  %.val.sink44 = phi ptr [ %.val, %bb.z ], [ %.val27, %bb.t ]
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.sink44, i64 noundef 32, i64 noundef 8) #20
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsh1373Z0TDxr_8protobuf7special13SpecialFieldsECskw1zp9IbpTW_24libsignal_message_backup.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsh1373Z0TDxr_8protobuf7special13SpecialFieldsECskw1zp9IbpTW_24libsignal_message_backup.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsh1373Z0TDxr_8protobuf7special13SpecialFieldsECskw1zp9IbpTW_24libsignal_message_backup.exit.sink.split, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit37, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit
  ret void

.sink.split:                                      ; preds = %bb.d, %bb.n
  %.sink45 = phi i8 [ 0, %bb.n ], [ 1, %bb.d ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sink45, ptr %i.ah, align 8
  br label %bb.v

bb.v:                                             ; preds = %.sink.split, %bb.d
  %.sink = phi i64 [ -1, %bb.d ], [ -2, %.sink.split ]
  store i64 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.x unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body31 unwind label %bb.y

bb.x:                                             ; preds = %bb.v
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit37 unwind label %bb.s

bb.y:                                             ; preds = %bb.w
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit37: ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val = load ptr, ptr %i.ak, align 8, !align !11, !noundef !5 ; 4 uses
  %i.al = icmp eq ptr %.val, null
  br i1 %i.al, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsh1373Z0TDxr_8protobuf7special13SpecialFieldsECskw1zp9IbpTW_24libsignal_message_backup.exit, label %bb.z

bb.z:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit37
  invoke void @_RNvXsg_NtCsfBDUjroi3FF_9hashbrown3rawINtB5_8RawTableTmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsh1373Z0TDxr_8protobuf7special13SpecialFieldsECskw1zp9IbpTW_24libsignal_message_backup.exit.sink.split unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

bb.ab:                                            ; preds = %.body31, %.body
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #18
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noalias noundef nonnull ptr @_RNvXse_NtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipientNtB5_17FullRecipientDataINtNtCsgxBkk5gSRhY_4core7convert4FromINtB5_11DestinationB14_EE4from(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(440) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.6.i.sroa.0.i.i = alloca [16 x i8], align 8 ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 5 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 5 uses
  %i.x = alloca [24 x i8], align 8                ; 5 uses
  %i.y = alloca [48 x i8], align 8                ; 5 uses
  %i.z = alloca [48 x i8], align 8                ; 5 uses
  %i.aa = alloca [24 x i8], align 8               ; 4 uses
  %i.ab = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.516.i.i.i = alloca [16 x i8], align 8    ; 5 uses
  %i.ac = alloca [48 x i8], align 8               ; 6 uses
  %i.ad = alloca [24 x i8], align 8               ; 5 uses
  %i.ae = alloca [24 x i8], align 8               ; 5 uses
  %i.af = alloca [24 x i8], align 8               ; 5 uses
  %i.ag = alloca [24 x i8], align 8               ; 5 uses
  %i.ah = alloca [48 x i8], align 8               ; 6 uses
  %.sroa.512.i.i.i = alloca [32 x i8], align 1    ; 4 uses
  %i.ai = alloca [24 x i8], align 8               ; 6 uses
  %i.aj = alloca [24 x i8], align 8               ; 6 uses
  %i.ak = alloca [24 x i8], align 8               ; 6 uses
  %.sroa.54.i.i.i = alloca [32 x i8], align 1     ; 4 uses
  %.sroa.52.i.i.i = alloca [16 x i8], align 1     ; 4 uses
  %.sroa.5.i.i.i = alloca [16 x i8], align 1      ; 4 uses
  %.sroa.033.i.i = alloca [192 x i8], align 8     ; 12 uses
  %.sroa.027.i.i = alloca [72 x i8], align 8      ; 6 uses
  %.sroa.10.i.i = alloca [36 x i8], align 4       ; 5 uses
  %.sroa.6.i.i = alloca [36 x i8], align 4        ; 4 uses
  %.sroa.017.i.i = alloca [264 x i8], align 8     ; 12 uses
  %i.al = alloca [528 x i8], align 8              ; 12 uses
  %i.am = alloca [440 x i8], align 8              ; 92 uses
  %.sroa.9.i = alloca [16 x i8], align 8          ; 7 uses
  %.sroa.13.sroa.5.i = alloca [9 x i8], align 8   ; 4 uses
  %.sroa.14.i = alloca [17 x i8], align 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !855)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !855
  tail call void @llvm.experimental.noalias.scope.decl(metadata !856)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !857)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.sroa.0.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.516.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.033.i.i)
  %i.an = load i64, ptr %0, align 8, !range !9, !alias.scope !858, !noalias !856, !noundef !5 ; 2 uses
  %i.ao = icmp slt i64 %i.an, 0
  %i.ap = add i64 %i.an, -9223372036854775807     ; 2 uses
  %i.aq = select i1 %i.ao, i64 %i.ap, i64 0
  switch i64 %i.aq, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.bd
    i64 2, label %bb.cd
    i64 3, label %bb.cn
    i64 4, label %bb.co
    i64 5, label %bb.cp
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.017.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !859)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.as = load i8, ptr %i.ar, align 8, !range !4, !alias.scope !860, !noalias !861, !noundef !5
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 329
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.5.i.i.i, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.au, i64 16, i1 false), !noalias !861
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i.i = phi i8 [ 1, %bb.d ], [ 0, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.52.i.i.i)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 345
  %i.aw = load i8, ptr %i.av, align 1, !range !4, !alias.scope !860, !noalias !861, !noundef !5
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 346
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.52.i.i.i, ptr noundef nonnull readonly align 2 dereferenceable(16) %i.ay, i64 16, i1 false), !noalias !861
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.01.0.i.i.i = phi i8 [ 1, %bb.f ], [ 0, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.54.i.i.i)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 362
  %i.ba = load i8, ptr %i.az, align 2, !range !4, !alias.scope !860, !noalias !861, !noundef !5
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 363
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.sroa.54.i.i.i, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.bc, i64 32, i1 false), !noalias !861
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.03.0.i.i.i = phi i8 [ 1, %bb.h ], [ 0, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !862
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !range !6, !alias.scope !860, !noalias !861, !noundef !5
  %.not.i.i.i = icmp eq i64 %i.be, -1
  br i1 %.not.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvXs4_NtCs6i54tJFfzR_5alloc6stringNtB5_6StringNtNtCsgxBkk5gSRhY_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ak, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bd)
          to label %.noexc.i unwind label %bb.cy

bb.k:                                             ; preds = %bb.i
  store i64 -1, ptr %i.ak, align 8, !noalias !862
  br label %.noexc.i

.noexc.i:                                         ; preds = %bb.k, %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.bg = load i32, ptr %i.bf, align 8, !range !863, !alias.scope !860, !noalias !861, !noundef !5 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.bi = load i64, ptr %i.bh, align 8, !alias.scope !860, !noalias !861
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !860, !noalias !861, !noundef !5 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 395
  %i.bm = load i8, ptr %i.bl, align 1, !range !4, !alias.scope !860, !noalias !861, !noundef !5
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.bo = load i32, ptr %i.bn, align 8, !range !864, !alias.scope !860, !noalias !861, !noundef !5 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !860, !noalias !861
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 431
  %i.bs = load i8, ptr %i.br, align 1, !range !16, !alias.scope !860, !noalias !861, !noundef !5
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 396
  %i.bu = load i8, ptr %i.bt, align 4, !range !4, !alias.scope !860, !noalias !861, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !862
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !range !6, !alias.scope !860, !noalias !861, !noundef !5
  %.not21.i.i.i = icmp eq i64 %i.bw, -1
  br i1 %.not21.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !862
  invoke void @_RNvXs4_NtCs6i54tJFfzR_5alloc6stringNtB5_6StringNtNtCsgxBkk5gSRhY_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ab, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bv)
          to label %bb.q unwind label %bb.p, !noalias !861

bb.m:                                             ; preds = %.noexc.i
  store i64 -1, ptr %i.aj, align 8, !noalias !862
  br label %bb.n

bb.n:                                             ; preds = %bb.q, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !862
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !range !6, !alias.scope !860, !noalias !861, !noundef !5
  %.not22.i.i.i = icmp eq i64 %i.by, -1
  br i1 %.not22.i.i.i, label %bb.s, label %bb.r

bb.o:                                             ; preds = %bb.u, %bb.p
  %.pn.pn.pn.pn.pn.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.i.i.i, %bb.u ], [ %i.bz, %bb.p ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ak) #19
          to label %bb.ev unwind label %bb.bc, !noalias !861

bb.p:                                             ; preds = %bb.l
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.q:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false), !noalias !862
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !862
  br label %bb.n

bb.r:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !862
  invoke void @_RNvXs4_NtCs6i54tJFfzR_5alloc6stringNtB5_6StringNtNtCsgxBkk5gSRhY_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bx)
          to label %bb.w unwind label %bb.v, !noalias !861

bb.s:                                             ; preds = %bb.n
  store i64 -1, ptr %i.ai, align 8, !noalias !862
  br label %bb.t

bb.t:                                             ; preds = %bb.w, %bb.s
end_hunk_1
begin_hunk_2_@_RNvXse_NtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipientNtB5_17FullRecipientDataINtNtCsgxBkk5gSRhY_4core7convert4FromINtB5_11DestinationB14_EE4from:bb.a
.body15.i.i:                                      ; preds = %bb.eo, %bb.dl
  %eh.lpad-body16.i.i = phi { ptr, i32 } [ %i.iw, %bb.eo ], [ %i.hh, %bb.dl ]
  %i.ix = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ix) #19
          to label %bb.ev unwind label %bb.en, !noalias !893

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i.i, %bb.dj
  %i.iy = getelementptr inbounds nuw i8, ptr %i.am, i64 32 ; 3 uses
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.iy)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit52.i.i unwind label %bb.ep, !noalias !893

bb.ep:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i
  %i.iz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.iy)
          to label %bb.ev unwind label %bb.eq, !noalias !893

bb.eq:                                            ; preds = %bb.ep
  %i.ja = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #18, !noalias !893
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit52.i.i: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc3vec3VechEEECskw1zp9IbpTW_24libsignal_message_backup.exit.i.i
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.iy)
          to label %bb.er unwind label %bb.cy

bb.er:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit52.i.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit.i48.i.i, %bb.ej, %bb.df
  %.sroa.13.sroa.0.0.i = phi i64 [ %.sroa.13.sroa.0.0.copyload.i, %bb.ej ], [ %.sroa.13.sroa.0.0.copyload.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit.i48.i.i ], [ %.sroa.13.sroa.0.1.i, %bb.df ], [ undef, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit52.i.i ]
  %.sroa.12.1.i = phi i64 [ %i.gu, %bb.ej ], [ %i.gu, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit.i48.i.i ], [ %.sroa.12.0.i, %bb.df ], [ %.sroa.12.8.copyload22.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit52.i.i ]
  %.sroa.0.1.i = phi i64 [ %.sroa.0.0.copyload19.i, %bb.ej ], [ %.sroa.0.0.copyload19.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECskw1zp9IbpTW_24libsignal_message_backup.exit.i48.i.i ], [ %.sroa.0.0.i, %bb.df ], [ -9223372036854775804, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECskw1zp9IbpTW_24libsignal_message_backup.exit52.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !855
  %.sroa.924.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !855
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(440) %.sroa.924.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(440) %0, i64 440, i1 false)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.i, i64 16, i1 false), !noalias !855
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(9) %.sroa.13.sroa.5.i, i64 9, i1 false), !noalias !855
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %.sroa.7.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(17) %.sroa.14.i, i64 17, i1 false), !noalias !855
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i)
  store i64 1, ptr %i.al, align 8, !noalias !855
  %i.jb = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i64 1, ptr %i.jb, align 8, !noalias !855
  %i.jc = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  store i64 %.sroa.0.1.i, ptr %i.jc, align 8, !noalias !855
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  store i64 %.sroa.12.1.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !855
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  store i64 %.sroa.13.sroa.0.0.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !855
  call void @_RNvCs1njKG4L9aB3_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !899
  %i.jd = call noundef align 8 dereferenceable_or_null(528) ptr @_RNvCs1njKG4L9aB3_7___rustc12___rust_alloc(i64 noundef range(i64 24, 529) 528, i64 noundef 8) #20, !noalias !899 ; 3 uses
  %i.je = icmp eq ptr %i.jd, null
  br i1 %i.je, label %bb.es, label %_RNvMsb_NtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipientNtB5_17FullRecipientData3new.exit, !prof !15

bb.es:                                            ; preds = %bb.er
  invoke void @_RNvNtCs6i54tJFfzR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 528) #22
          to label %.noexc17.i unwind label %bb.et

.noexc17.i:                                       ; preds = %bb.es
  unreachable

bb.et:                                            ; preds = %bb.es
  %i.jf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient20MinimalRecipientDataINtBE_11DestinationNtBE_17FullRecipientDataEEEBI_(ptr noalias nofree noundef align 8 dereferenceable(512) %i.jc)
          to label %.body.i unwind label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.jg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #18
  unreachable

.body.i:                                          ; preds = %bb.ev, %bb.et
  %eh.lpad-body28.i = phi { ptr, i32 } [ %eh.lpad-body.ph.i, %bb.ev ], [ %i.jf, %bb.et ]
  resume { ptr, i32 } %eh.lpad-body28.i

bb.ev:                                            ; preds = %bb.ep, %.body15.i.i, %bb.el, %bb.eh, %bb.cy, %bb.ct, %bb.ci, %bb.bj, %bb.o
  %eh.lpad-body.ph.i = phi { ptr, i32 } [ %.pn.i16.i.i, %bb.ct ], [ %i.gl, %bb.cy ], [ %.pn.pn.pn.pn.pn.pn.i7.i.i, %bb.bj ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.i.i.i, %bb.o ], [ %i.fr, %bb.ci ], [ %eh.lpad-body16.i.i, %.body15.i.i ], [ %i.it, %bb.el ], [ %.pn12.i.i, %bb.eh ], [ %i.iz, %bb.ep ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient11DestinationNtBE_17FullRecipientDataEEBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(440) %0) #19
          to label %.body.i unwind label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.jh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #18
  unreachable

_RNvMsb_NtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipientNtB5_17FullRecipientData3new.exit: ; preds = %bb.er
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(528) %i.jd, ptr noundef nonnull align 8 dereferenceable(528) %i.al, i64 528, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !855
  ret ptr %i.jd
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsn_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxNtNtCsfzLoC2LLPWN_7bincode5error9ErrorKindENtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmtCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !903)
  %i.g = load i64, ptr %i.f, align 8, !range !7, !alias.scope !903, !noalias !904, !noundef !5 ; 2 uses
  %i.h = xor i64 %i.g, -9223372036854775808
  %i.i = icmp slt i64 %i.g, 0
  %i.j = select i1 %i.i, i64 %i.h, i64 8
  switch i64 %i.j, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
    i64 7, label %bb.j
    i64 8, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !905
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.k, ptr %i.e, align 8, !noalias !905
  %i.l = call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @57, i64 noundef 2, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @56)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !905
  br label %_RNvXs3_NtCsfzLoC2LLPWN_7bincode5errorNtB5_9ErrorKindNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt.exit

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !905
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.m, ptr %i.d, align 8, !noalias !905
  %i.n = call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @59, i64 noundef 19, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @58)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !905
  br label %_RNvXs3_NtCsfzLoC2LLPWN_7bincode5errorNtB5_9ErrorKindNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !905
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.o, ptr %i.c, align 8, !noalias !905
  %i.p = call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 19, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @60)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !905
  br label %_RNvXs3_NtCsfzLoC2LLPWN_7bincode5errorNtB5_9ErrorKindNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt.exit

bb.f:                                             ; preds = %bb.a
  %i.q = tail call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 19), !noalias !903
  br label %_RNvXs3_NtCsfzLoC2LLPWN_7bincode5errorNtB5_9ErrorKindNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt.exit

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !905
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.r, ptr %i.b, align 8, !noalias !905
  %i.s = call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @64, i64 noundef 18, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @63)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !905
  br label %_RNvXs3_NtCsfzLoC2LLPWN_7bincode5errorNtB5_9ErrorKindNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt.exit

bb.h:                                             ; preds = %bb.a
  %i.t = tail call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @65, i64 noundef 26), !noalias !903
  br label %_RNvXs3_NtCsfzLoC2LLPWN_7bincode5errorNtB5_9ErrorKindNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt.exit

bb.i:                                             ; preds = %bb.a
  %i.u = tail call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @66, i64 noundef 9), !noalias !903
  br label %_RNvXs3_NtCsfzLoC2LLPWN_7bincode5errorNtB5_9ErrorKindNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt.exit

bb.j:                                             ; preds = %bb.a
  %i.v = tail call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 22), !noalias !903
  br label %_RNvXs3_NtCsfzLoC2LLPWN_7bincode5errorNtB5_9ErrorKindNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt.exit

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !905
  store ptr %i.f, ptr %i.a, align 8, !noalias !905
  %i.w = call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @68)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !905
  br label %_RNvXs3_NtCsfzLoC2LLPWN_7bincode5errorNtB5_9ErrorKindNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt.exit

_RNvXs3_NtCsfzLoC2LLPWN_7bincode5errorNtB5_9ErrorKindNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k
  %.sroa.0.0.in.i = phi i1 [ %i.l, %bb.c ], [ %i.n, %bb.d ], [ %i.p, %bb.e ], [ %i.q, %bb.f ], [ %i.s, %bb.g ], [ %i.t, %bb.h ], [ %i.u, %bb.i ], [ %i.v, %bb.j ], [ %i.w, %bb.k ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXst_NtNtCsgxBkk5gSRhY_4core3num7nonzeroINtB5_7NonZeroyENtNtB9_3fmt7Display3fmtCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i64, ptr %0, align 8, !range !906, !noundef !5
  store i64 %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvXsd_NtNtNtCsgxBkk5gSRhY_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: cold nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvYINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtCsfzLoC2LLPWN_7bincode5error9ErrorKindENtNtCs6yNvtpc0TEA_10serde_core2de5Error14invalid_lengthCskw1zp9IbpTW_24libsignal_message_backup(i64 noundef %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %0, ptr %i.c, align 8
  store ptr %1, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCsgxBkk5gSRhY_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.e, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtRDNtNtCs6yNvtpc0TEA_10serde_core2de8ExpectedEL_NtB6_7Display3fmtCskw1zp9IbpTW_24libsignal_message_backup, ptr %.sroa.46.0..sroa_idx, align 8
  %i.f = call fastcc noundef nonnull align 8 ptr @_RINvXs1_NtCsfzLoC2LLPWN_7bincode5errorINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtB6_9ErrorKindENtNtCs6yNvtpc0TEA_10serde_core2de5Error6customNtNtCsgxBkk5gSRhY_4core3fmt9ArgumentsECskw1zp9IbpTW_24libsignal_message_backup(ptr noundef nonnull @89, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10gift_badge14GiftBadgeErrorNtNtCsgxBkk5gSRhY_4core5error5Error5causeBa_(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBK_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_style19BubbleGradientColorENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBM_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient5group7members11GroupMemberENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBO_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient5group7members17GroupMemberBannedENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBO_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient5group7members28GroupMemberPendingProfileKeyENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBO_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient5group7members31GroupMemberPendingAdminApprovalENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBO_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient17FullRecipientDataENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_style19BubbleGradientColorENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient5group7members11GroupMemberENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBV_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient5group7members17GroupMemberBannedENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBV_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient5group7members28GroupMemberPendingProfileKeyENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBV_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient5group7members31GroupMemberPendingAdminApprovalENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBV_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsfBDUjroi3FF_9hashbrown3rawINtB5_8RawTableTmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsd_NtNtCsgxBkk5gSRhY_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtNtNtCs807GXlIGG3x_7zkgroup3api8receipts31receipt_credential_presentationNtB5_29ReceiptCredentialPresentationNtCs7CX08mopLjc_15partial_default14PartialDefault15partial_default(ptr dead_on_unwind noalias nofree noundef writable sret([856 x i8]) align 8 captures(none) dereferenceable(856)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvYNtNtNtNtCs807GXlIGG3x_7zkgroup3api8receipts31receipt_credential_presentation29ReceiptCredentialPresentationNtNtCs6yNvtpc0TEA_10serde_core2de11Deserialize20deserialize_in_placeQINtNtCsfzLoC2LLPWN_7bincode2de12DeserializerNtNtB2W_4read11SliceReaderINtNtB2Y_6config17WithOtherTrailingINtB44_15WithOtherEndianINtB44_20WithOtherIntEncodingNtB44_14DefaultOptionsNtNtB44_3int14FixintEncodingENtNtB44_6endian12LittleEndianENtNtB44_8trailing14RejectTrailingEEECskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(856)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtCs6yNvtpc0TEA_10serde_core2deReNtB5_8Expected3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvXsh_NtNtCs6yNvtpc0TEA_10serde_core2de5implsINtNtCs6i54tJFfzR_5alloc3vec3VecpENtBb_11Deserialize11deserializeINtB3_10VecVisitorhENtBb_7Visitor9visit_seqINtNvXs1_NtCsfzLoC2LLPWN_7bincode2deQINtB2F_12DeserializerppENtBb_12Deserializer17deserialize_tuple6AccessNtNtB2F_4read11SliceReaderINtNtB2H_6config17WithOtherTrailingINtB4H_15WithOtherEndianINtB4H_20WithOtherIntEncodingNtB4H_14DefaultOptionsNtNtB4H_3int14FixintEncodingENtNtB4H_6endian12LittleEndianENtNtB4H_8trailing14RejectTrailingEEECskw1zp9IbpTW_24libsignal_message_backup(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(16), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvXs7_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtB9_14RistrettoPointNtNtCs6yNvtpc0TEA_10serde_core2de11Deserialize11deserializeNtB3_21RistrettoPointVisitorNtB1e_7Visitor9visit_seqINtNvXs1_NtCsfzLoC2LLPWN_7bincode2deQINtB38_12DeserializerppENtB1e_12Deserializer17deserialize_tuple6AccessNtNtB38_4read11SliceReaderINtNtB3a_6config17WithOtherTrailingINtB5b_15WithOtherEndianINtB5b_20WithOtherIntEncodingNtB5b_14DefaultOptionsNtNtB5b_3int14FixintEncodingENtNtB5b_6endian12LittleEndianENtNtB5b_8trailing14RejectTrailingEEECskw1zp9IbpTW_24libsignal_message_backup(ptr dead_on_unwind noalias nofree noundef writable sret([168 x i8]) align 8 captures(none) dereferenceable(168), ptr noalias nofree noundef align 8 dereferenceable(16), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtCs6yNvtpc0TEA_10serde_core2deINtNtB4_5impls12ArrayVisitorAhj10_ENtB4_8Expected3fmtCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs2d_NtNtCs6yNvtpc0TEA_10serde_core2de5implsAhj10_NtB9_11Deserialize11deserializeQINtNtCsfzLoC2LLPWN_7bincode2de12DeserializerNtNtB1p_4read11SliceReaderINtNtB1r_6config17WithOtherTrailingINtB2x_15WithOtherEndianINtB2x_20WithOtherIntEncodingNtB2x_14DefaultOptionsNtNtB2x_3int14FixintEncodingENtNtB2x_6endian12LittleEndianENtNtB2x_8trailing14RejectTrailingEEECskw1zp9IbpTW_24libsignal_message_backup(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXsh_NtNtCs6yNvtpc0TEA_10serde_core2de5implsINtNtCs6i54tJFfzR_5alloc3vec3VechENtB8_11Deserialize11deserializeQINtNtCsfzLoC2LLPWN_7bincode2de12DeserializerNtNtB1Q_4read11SliceReaderINtNtB1S_6config17WithOtherTrailingINtB2Y_15WithOtherEndianINtB2Y_20WithOtherIntEncodingNtB2Y_14DefaultOptionsNtNtB2Y_3int14FixintEncodingENtNtB2Y_6endian12LittleEndianENtNtB2Y_8trailing14RejectTrailingEEECskw1zp9IbpTW_24libsignal_message_backup(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs7_NtCsdRrpXuHtjOb_16curve25519_dalek9ristrettoNtB6_14RistrettoPointNtNtCs6yNvtpc0TEA_10serde_core2de11Deserialize11deserializeQINtNtCsfzLoC2LLPWN_7bincode2de12DeserializerNtNtB2a_4read11SliceReaderINtNtB2c_6config17WithOtherTrailingINtB3i_15WithOtherEndianINtB3i_20WithOtherIntEncodingNtB3i_14DefaultOptionsNtNtB3i_3int14FixintEncodingENtNtB3i_6endian12LittleEndianENtNtB3i_8trailing14RejectTrailingEEECskw1zp9IbpTW_24libsignal_message_backup(ptr dead_on_unwind noalias nofree noundef writable sret([168 x i8]) align 8 captures(address) dereferenceable(168), ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvXNvNtNtCs807GXlIGG3x_7zkgroup6common12simple_typess_1__NtB5_9TimestampNtNtCs6yNvtpc0TEA_10serde_core2de11Deserialize11deserializeQINtNtCsfzLoC2LLPWN_7bincode2de12DeserializerNtNtB2b_4read11SliceReaderINtNtB2d_6config17WithOtherTrailingINtB3j_15WithOtherEndianINtB3j_20WithOtherIntEncodingNtB3j_14DefaultOptionsNtNtB3j_3int14FixintEncodingENtNtB3j_6endian12LittleEndianENtNtB3j_8trailing14RejectTrailingEEECskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvNtNtCs807GXlIGG3x_7zkgroup6crypto6proofssb_1__NtB5_34ReceiptCredentialPresentationProofNtNtCs6yNvtpc0TEA_10serde_core2de11Deserialize11deserializeQINtNtCsfzLoC2LLPWN_7bincode2de12DeserializerNtNtB2v_4read11SliceReaderINtNtB2x_6config17WithOtherTrailingINtB3D_15WithOtherEndianINtB3D_20WithOtherIntEncodingNtB3D_14DefaultOptionsNtNtB3D_3int14FixintEncodingENtNtB3D_6endian12LittleEndianENtNtB3D_8trailing14RejectTrailingEEECskw1zp9IbpTW_24libsignal_message_backup(ptr dead_on_unwind noalias nofree noundef writable sret([824 x i8]) align 8 captures(address) dereferenceable(824), ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvNtNtCsfzLoC2LLPWN_7bincode6config3int17cast_u64_to_usize(i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtNtCsgxBkk5gSRhY_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCs6i54tJFfzR_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCs1njKG4L9aB3_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #7

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCs1njKG4L9aB3_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvXs_NtCsfzLoC2LLPWN_7bincode5errorINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtB4_9ErrorKindEINtNtCsgxBkk5gSRhY_4core7convert4FromNtNtNtB1r_2io5error5ErrorE4from(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsgxBkk5gSRhY_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvXs9_NtCsfzLoC2LLPWN_7bincode6configINtB5_17WithOtherTrailingINtB5_15WithOtherEndianINtB5_20WithOtherIntEncodingNtB5_14DefaultOptionsNtNtB5_3int14FixintEncodingENtNtB5_6endian12LittleEndianENtNtB5_8trailing14RejectTrailingENtNtB5_8internal15InternalOptions5limitCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskw1zp9IbpTW_24libsignal_message_backup(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #1

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #13

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs6i54tJFfzR_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtNtCs9k3SxhrAWiO_3std3sys6random5linux19hashmap_random_keys() unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter12debug_struct(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsfzLoC2LLPWN_7bincode8internal9serializeRNtNtNtNtCs807GXlIGG3x_7zkgroup3api8receipts31receipt_credential_presentation29ReceiptCredentialPresentationINtNtB4_6config17WithOtherTrailingINtB2w_15WithOtherEndianINtB2w_20WithOtherIntEncodingNtB2w_14DefaultOptionsNtNtB2w_3int14FixintEncodingENtNtB2w_6endian12LittleEndianENtNtB2w_8trailing14RejectTrailingEECskw1zp9IbpTW_24libsignal_message_backup(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXCs17t5S1clqUH_12zkcredentialINtB2_10PrintAsHexRShENtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs1_NtNtCsgxBkk5gSRhY_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCsgxBkk5gSRhY_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsgxBkk5gSRhY_4core5slice20copy_from_slice_implhECskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs4_NtCs6i54tJFfzR_5alloc6stringNtB5_6StringNtNtCsgxBkk5gSRhY_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient5group7members11GroupMemberENtNtCsgxBkk5gSRhY_4core5clone5Clone5cloneBO_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient5group7members28GroupMemberPendingProfileKeyENtNtCsgxBkk5gSRhY_4core5clone5Clone5cloneBO_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient5group7members31GroupMemberPendingAdminApprovalENtNtCsgxBkk5gSRhY_4core5clone5Clone5cloneBO_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1
end_hunk_2
