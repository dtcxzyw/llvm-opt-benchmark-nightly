Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_lakefs-10d984d21e7865f1.deltalake_lakefs.dde20bc8cb465b21-cgu.10?download=true
inline.NumInlined: 570
inline.NumDeleted: 305
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvXs1_NtNtCsdLO2CoGLRSt_6base645write7encoderINtB5_13EncoderWriterNtNtNtB9_6engine15general_purpose14GeneralPurposeQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs:bb.a
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !740, !noalias !739, !noundef !5 ; 2 uses
  %i.l = icmp sgt i64 %i.k, -1
  tail call void @llvm.assume(i1 %i.l)
  %i.m = load ptr, ptr %i.i, align 8, !alias.scope !740, !noalias !739, !nonnull !5, !noundef !5
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull readonly align 8 dereferenceable(1064) %0, i64 range(i64 0, 1025) %.promoted.i.i, i1 false)
  %.pre.i.i.i.i.us.i.i = load i64, ptr %i.j, align 8, !alias.scope !740, !noalias !739
  %i.o = add i64 %.pre.i.i.i.i.us.i.i, %.promoted.i.i
  store i64 %i.o, ptr %i.j, align 8, !alias.scope !740, !noalias !739
  store i8 0, ptr %i.b, align 1, !alias.scope !738
  store i64 0, ptr %i.g, align 8, !alias.scope !738
  br label %_RNvMs_NtNtCsdLO2CoGLRSt_6base645write7encoderINtB4_13EncoderWriterNtNtNtB8_6engine15general_purpose14GeneralPurposeQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE24write_all_encoded_outputCsj34PGqTgg0L_16deltalake_lakefs.exit.i

.split.us6.i.i:                                   ; preds = %.lr.ph.split.split.us.i.i
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.promoted.i.i, i64 noundef 1024, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #25, !noalias !738
  unreachable

_RNvMs_NtNtCsdLO2CoGLRSt_6base645write7encoderINtB4_13EncoderWriterNtNtNtB8_6engine15general_purpose14GeneralPurposeQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE24write_all_encoded_outputCsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %._crit_edge.split.us.i.i, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1032 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !734, !noundef !5 ; 4 uses
  %.not7.i = icmp eq i64 %i.q, 0
  br i1 %.not7.i, label %_RNvMs_NtNtCsdLO2CoGLRSt_6base645write7encoderINtB4_13EncoderWriterNtNtNtB8_6engine15general_purpose14GeneralPurposeQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE21write_final_leftoversCsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.d

bb.d:                                             ; preds = %_RNvMs_NtNtCsdLO2CoGLRSt_6base645write7encoderINtB4_13EncoderWriterNtNtNtB8_6engine15general_purpose14GeneralPurposeQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE24write_all_encoded_outputCsj34PGqTgg0L_16deltalake_lakefs.exit.i
  %i.r = icmp ult i64 %i.q, 4
  br i1 %i.r, label %bb.f, label %bb.e, !prof !25

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.q, i64 noundef 3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #25, !noalias !734
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !734, !nonnull !5, !noundef !5
  %i.v = tail call { i64, i64 } @_RINvNvNtNtCsdLO2CoGLRSt_6base646engine6Engine12encode_slice5innerNtNtB6_15general_purpose14GeneralPurposeECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(323) %i.u, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef range(i64 1, 4) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(1064) %0, i64 noundef 1024) ; 2 uses
  %i.w = extractvalue { i64, i64 } %i.v, 0
  %i.x = extractvalue { i64, i64 } %i.v, 1        ; 7 uses
  %i.y = trunc nuw i64 %i.w to i1
  br i1 %i.y, label %bb.g, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultjNtNtCsdLO2CoGLRSt_6base646encode16EncodeSliceErrorE6expectCsj34PGqTgg0L_16deltalake_lakefs.exit.i, !prof !4

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 22, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #19
  unreachable

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultjNtNtCsdLO2CoGLRSt_6base646encode16EncodeSliceErrorE6expectCsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %bb.f
  store i64 %i.x, ptr %i.g, align 8, !alias.scope !734
  tail call void @llvm.experimental.noalias.scope.decl(metadata !741)
  %.not5.i9.i = icmp eq i64 %i.x, 0
  br i1 %.not5.i9.i, label %_RNvMs_NtNtCsdLO2CoGLRSt_6base645write7encoderINtB4_13EncoderWriterNtNtNtB8_6engine15general_purpose14GeneralPurposeQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE24write_all_encoded_outputCsj34PGqTgg0L_16deltalake_lakefs.exit17.i, label %.lr.ph.i10.i

.lr.ph.i10.i:                                     ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultjNtNtCsdLO2CoGLRSt_6base646encode16EncodeSliceErrorE6expectCsj34PGqTgg0L_16deltalake_lakefs.exit.i
  %i.z = load ptr, ptr %i.e, align 8, !alias.scope !742, !align !8, !noundef !5 ; 4 uses
  %.not.i.i11.i = icmp eq ptr %i.z, null
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !743)
  store i8 1, ptr %i.b, align 1, !alias.scope !742
  br i1 %.not.i.i11.i, label %.lr.ph.split.us.i16.i, label %.lr.ph.split.split.us.i12.i, !prof !4

.lr.ph.split.us.i16.i:                            ; preds = %.lr.ph.i10.i
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 22, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #25, !noalias !744
  unreachable

.lr.ph.split.split.us.i12.i:                      ; preds = %.lr.ph.i10.i
  %i.ac = icmp ult i64 %i.x, 1025
  br i1 %i.ac, label %._crit_edge.split.us.i14.i, label %.split.us6.i13.i, !prof !25

._crit_edge.split.us.i14.i:                       ; preds = %.lr.ph.split.split.us.i12.i
  tail call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z, i64 noundef range(i64 0, 1025) %i.x), !noalias !745
  %i.ad = load i64, ptr %i.aa, align 8, !alias.scope !746, !noalias !745, !noundef !5 ; 2 uses
  %i.ae = icmp sgt i64 %i.ad, -1
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = load ptr, ptr %i.ab, align 8, !alias.scope !746, !noalias !745, !nonnull !5, !noundef !5
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr nonnull readonly align 8 dereferenceable(1064) %0, i64 range(i64 0, 1025) %i.x, i1 false)
  %.pre.i.i.i.i.us.i15.i = load i64, ptr %i.aa, align 8, !alias.scope !746, !noalias !745
  %i.ah = add i64 %.pre.i.i.i.i.us.i15.i, %i.x
  store i64 %i.ah, ptr %i.aa, align 8, !alias.scope !746, !noalias !745
  store i8 0, ptr %i.b, align 1, !alias.scope !742
  store i64 0, ptr %i.g, align 8, !alias.scope !742
  br label %_RNvMs_NtNtCsdLO2CoGLRSt_6base645write7encoderINtB4_13EncoderWriterNtNtNtB8_6engine15general_purpose14GeneralPurposeQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE24write_all_encoded_outputCsj34PGqTgg0L_16deltalake_lakefs.exit17.i

.split.us6.i13.i:                                 ; preds = %.lr.ph.split.split.us.i12.i
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.x, i64 noundef 1024, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #25, !noalias !744
  unreachable

_RNvMs_NtNtCsdLO2CoGLRSt_6base645write7encoderINtB4_13EncoderWriterNtNtNtB8_6engine15general_purpose14GeneralPurposeQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE24write_all_encoded_outputCsj34PGqTgg0L_16deltalake_lakefs.exit17.i: ; preds = %._crit_edge.split.us.i14.i, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultjNtNtCsdLO2CoGLRSt_6base646encode16EncodeSliceErrorE6expectCsj34PGqTgg0L_16deltalake_lakefs.exit.i
  store i64 0, ptr %i.p, align 8, !alias.scope !734
  br label %_RNvMs_NtNtCsdLO2CoGLRSt_6base645write7encoderINtB4_13EncoderWriterNtNtNtB8_6engine15general_purpose14GeneralPurposeQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE21write_final_leftoversCsj34PGqTgg0L_16deltalake_lakefs.exit

_RNvMs_NtNtCsdLO2CoGLRSt_6base645write7encoderINtB4_13EncoderWriterNtNtNtB8_6engine15general_purpose14GeneralPurposeQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE21write_final_leftoversCsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %_RNvMs_NtNtCsdLO2CoGLRSt_6base645write7encoderINtB4_13EncoderWriterNtNtNtB8_6engine15general_purpose14GeneralPurposeQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE24write_all_encoded_outputCsj34PGqTgg0L_16deltalake_lakefs.exit17.i, %_RNvMs_NtNtCsdLO2CoGLRSt_6base645write7encoderINtB4_13EncoderWriterNtNtNtB8_6engine15general_purpose14GeneralPurposeQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE24write_all_encoded_outputCsj34PGqTgg0L_16deltalake_lakefs.exit.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorNtB6_5Debug3fmtCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !8, !noundef !5
  %i.b = tail call noundef zeroext i1 @_RNvXNtNtCs2pqxYH9ZEk8_3std2io5errorNtB2_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueNtB6_5Debug3fmtCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !8, !noundef !5
  %i.b = tail call noundef zeroext i1 @_RNvXs0_NtNtCs4j34XAPZOn0_4http6header5valueNtB5_11HeaderValueNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noundef nonnull align 8 %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.c, align 8
  store ptr %3, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %4, ptr %i.d, align 8
  %i.e = call noundef i64 @_RNvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterhENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
  %i.f = call noundef i64 @_RNvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterhENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %i.f, i64 %i.e)
  store ptr %1, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.0.0.i, ptr %i.k, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs8CRAYtH5WmW_12futures_util3fnsINtB5_7MapOkFnNCNvXs2_NtCsjyY8HP3IvQ6_12object_store6prefixINtBZ_11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB11_11ObjectStoreEL_EEB2s_16list_with_offset0EINtB5_6FnMut1INtNtCsbvkFyIu7lgC_4core6result6ResultNtB11_10ObjectMetaNtB11_5ErrorEE8call_mutCsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(96) %2) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !range !7, !noundef !5
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false)
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs_NtCs8CRAYtH5WmW_12futures_util3fnsNCNvXs2_NtCsjyY8HP3IvQ6_12object_store6prefixINtBK_11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBM_11ObjectStoreEL_EEB2d_16list_with_offset0INtB4_6FnMut1NtBM_10ObjectMetaE8call_mutCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(96) %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs8CRAYtH5WmW_12futures_util3fnsINtB5_7MapOkFnNCNvXs2_NtCsjyY8HP3IvQ6_12object_store6prefixINtBZ_11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB11_11ObjectStoreEL_EEB2s_4list0EINtB5_6FnMut1INtNtCsbvkFyIu7lgC_4core6result6ResultNtB11_10ObjectMetaNtB11_5ErrorEE8call_mutCsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(96) %2) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !range !7, !noundef !5
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false)
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs_NtCs8CRAYtH5WmW_12futures_util3fnsNCNvXs2_NtCsjyY8HP3IvQ6_12object_store6prefixINtBK_11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBM_11ObjectStoreEL_EEB2d_4list0INtB4_6FnMut1NtBM_10ObjectMetaE8call_mutCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(96) %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvYINtNtNtCsdLO2CoGLRSt_6base645write7encoder13EncoderWriterNtNtNtB9_6engine15general_purpose14GeneralPurposeQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs2pqxYH9ZEk8_3std2io5Write9write_allCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(1064) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1032 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1048 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1059 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.ab
  %.sroa.0.054 = phi ptr [ %1, %.lr.ph ], [ %i.bb, %bb.ab ] ; 6 uses
  %.sroa.6.053 = phi i64 [ %2, %.lr.ph ], [ %i.ba, %bb.ab ] ; 14 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !768)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !769)
  %i.h = load ptr, ptr %i.b, align 8, !alias.scope !768, !noalias !769, !align !8, !noundef !5 ; 4 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.c, label %bb.d, !prof !4

bb.c:                                             ; preds = %bb.b
  tail call void @_RINvNtCs2pqxYH9ZEk8_3std9panicking11begin_panicReEB4_(ptr noalias noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #25, !noalias !770
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = load i64, ptr %i.c, align 8, !alias.scope !768, !noalias !769, !noundef !5 ; 6 uses
  %.not75.i = icmp eq i64 %i.i, 0
  br i1 %.not75.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = load i64, ptr %i.d, align 8, !alias.scope !768, !noalias !769, !noundef !5 ; 10 uses
  %.not76.i = icmp eq i64 %i.j, 0
  br i1 %.not76.i, label %bb.h, label %bb.i

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !771)
  store i8 1, ptr %i.g, align 1, !alias.scope !772, !noalias !769
  %i.k = icmp ult i64 %i.i, 1025
  br i1 %i.k, label %_RNvXs0_NtNtCsdLO2CoGLRSt_6base645write7encoderINtB5_13EncoderWriterNtNtNtB9_6engine15general_purpose14GeneralPurposeQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs2pqxYH9ZEk8_3std2io5Write5writeCsj34PGqTgg0L_16deltalake_lakefs.exit.thread, label %bb.g, !prof !25

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.i, i64 noundef 1024, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #25, !noalias !773
  unreachable

_RNvXs0_NtNtCsdLO2CoGLRSt_6base645write7encoderINtB5_13EncoderWriterNtNtNtB9_6engine15general_purpose14GeneralPurposeQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs2pqxYH9ZEk8_3std2io5Write5writeCsj34PGqTgg0L_16deltalake_lakefs.exit.thread: ; preds = %bb.f
  tail call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef range(i64 0, 1025) %i.i), !noalias !774
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !775, !noalias !774, !noundef !5 ; 2 uses
  %i.n = icmp sgt i64 %i.m, -1
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !775, !noalias !774, !nonnull !5, !noundef !5
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull readonly align 8 dereferenceable(1064) %0, i64 range(i64 0, 1025) %i.i, i1 false), !noalias !769
  %.pre.i.i.i.i.i = load i64, ptr %i.l, align 8, !alias.scope !775, !noalias !774
  %i.r = add i64 %.pre.i.i.i.i.i, %i.i
  store i64 %i.r, ptr %i.l, align 8, !alias.scope !775, !noalias !774
  store i8 0, ptr %i.g, align 1, !alias.scope !772, !noalias !769
  store i64 0, ptr %i.c, align 8, !alias.scope !772, !noalias !769
  br label %.loopexit

bb.h:                                             ; preds = %bb.e
  %i.s = icmp samesign ult i64 %.sroa.6.053, 3
  br i1 %i.s, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.t = add i64 %i.j, %.sroa.6.053
  %i.u = icmp ugt i64 %i.t, 2
  br i1 %i.u, label %bb.m, label %bb.n

bb.j:                                             ; preds = %bb.s, %bb.h
  %.sroa.067.0.i = phi i64 [ 765, %bb.s ], [ 768, %bb.h ]
  %.sroa.064.0.i = phi i64 [ 4, %bb.s ], [ 0, %bb.h ] ; 3 uses
  %.sroa.061.0.i = phi i64 [ %i.ad, %bb.s ], [ 0, %bb.h ]
  %.sroa.19.0.i = phi i64 [ %i.am, %bb.s ], [ %.sroa.6.053, %bb.h ] ; 2 uses
  %.sroa.025.0.i = phi ptr [ %i.an, %bb.s ], [ %.sroa.0.054, %bb.h ]
  %i.v = urem i64 %.sroa.19.0.i, 3
  %i.w = sub nuw nsw i64 %.sroa.19.0.i, %i.v
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.067.0.i, i64 %i.w) ; 2 uses
  %i.x = load ptr, ptr %i.f, align 8, !alias.scope !768, !noalias !769, !nonnull !5, !noundef !5
  %i.y = sub nuw nsw i64 1024, %.sroa.064.0.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.064.0.i
  %i.aa = tail call noundef i64 @_RNvXs_NtNtCsdLO2CoGLRSt_6base646engine15general_purposeNtB4_14GeneralPurposeNtB6_6Engine15internal_encode(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(323) %i.x, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.025.0.i, i64 noundef %.sroa.0.0.i.i, ptr noalias noundef nonnull %i.z, i64 noundef %i.y)
  %i.ab = add i64 %i.aa, %.sroa.064.0.i           ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !776)
  store i8 1, ptr %i.g, align 1, !alias.scope !777, !noalias !769
  %i.ac = load ptr, ptr %i.b, align 8, !alias.scope !777, !noalias !769, !align !8, !noundef !5 ; 4 uses
  %.not.i79.i = icmp eq ptr %i.ac, null
  br i1 %.not.i79.i, label %bb.v, label %bb.u, !prof !4

bb.k:                                             ; preds = %bb.h
  tail call void @_RINvNtCsbvkFyIu7lgC_4core5slice20copy_from_slice_implhECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull %i.e, i64 noundef range(i64 1, -9223372036854775808) %.sroa.6.053, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.054, i64 noundef range(i64 1, -9223372036854775808) %.sroa.6.053, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18)
  br label %bb.l

bb.l:                                             ; preds = %bb.o, %bb.k
  %storemerge.i = phi i64 [ %.sroa.6.053, %bb.k ], [ %i.ai, %bb.o ]
  %.sroa.8.1.i = phi i64 [ %.sroa.6.053, %bb.k ], [ 1, %bb.o ]
  store i64 %storemerge.i, ptr %i.d, align 8, !alias.scope !768, !noalias !769
  br label %_RNvXs0_NtNtCsdLO2CoGLRSt_6base645write7encoderINtB5_13EncoderWriterNtNtNtB9_6engine15general_purpose14GeneralPurposeQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs2pqxYH9ZEk8_3std2io5Write5writeCsj34PGqTgg0L_16deltalake_lakefs.exit

bb.m:                                             ; preds = %bb.i
  %i.ad = sub i64 3, %i.j                         ; 7 uses
  %i.ae = icmp ugt i64 %i.j, 3
  br i1 %i.ae, label %bb.r, label %bb.q, !prof !4

bb.n:                                             ; preds = %bb.i
  %i.af = icmp ult i64 %i.j, 3
  br i1 %i.af, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ag = load i8, ptr %.sroa.0.054, align 1, !alias.scope !769, !noalias !768, !noundef !5
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.j
  store i8 %i.ag, ptr %i.ah, align 1, !alias.scope !768, !noalias !769
  %i.ai = add nuw nsw i64 %i.j, 1
  br label %bb.l

bb.p:                                             ; preds = %bb.n
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.j, i64 noundef 3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #25, !noalias !770
  unreachable

bb.q:                                             ; preds = %bb.m
  %.not77.i = icmp ugt i64 %i.ad, %.sroa.6.053
  br i1 %.not77.i, label %bb.t, label %bb.s, !prof !778

bb.r:                                             ; preds = %bb.m
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core5slice5index16slice_index_fail(i64 noundef %i.j, i64 noundef 3, i64 noundef 3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #25, !noalias !770
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.j
  tail call void @_RINvNtCsbvkFyIu7lgC_4core5slice20copy_from_slice_implhECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull %i.aj, i64 noundef %i.ad, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.054, i64 noundef %i.ad, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20)
  %i.ak = load ptr, ptr %i.f, align 8, !alias.scope !768, !noalias !769, !nonnull !5, !noundef !5
  %i.al = tail call noundef i64 @_RNvXs_NtNtCsdLO2CoGLRSt_6base646engine15general_purposeNtB4_14GeneralPurposeNtB6_6Engine15internal_encode(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(323) %i.ak, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 3, ptr noalias noundef nonnull align 8 dereferenceable(1064) %0, i64 noundef 1024) ; 0 uses
  %i.am = sub nuw nsw i64 %.sroa.6.053, %i.ad
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.054, i64 %i.ad
  store i64 0, ptr %i.d, align 8, !alias.scope !768, !noalias !769
  br label %bb.j

bb.t:                                             ; preds = %bb.q
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775808) %.sroa.6.053, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #25, !noalias !770
  unreachable

bb.u:                                             ; preds = %bb.j
  %i.ao = icmp ult i64 %i.ab, 1025
  br i1 %i.ao, label %bb.x, label %bb.w, !prof !25

bb.v:                                             ; preds = %bb.j
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 22, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #25, !noalias !776
  unreachable

bb.w:                                             ; preds = %bb.u
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ab, i64 noundef 1024, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #25, !noalias !776
  unreachable

bb.x:                                             ; preds = %bb.u
  tail call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac, i64 noundef range(i64 0, 1025) %i.ab), !noalias !779
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 3 uses
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !780, !noalias !779, !noundef !5 ; 3 uses
  %i.ar = icmp sgt i64 %i.aq, -1
  tail call void @llvm.assume(i1 %i.ar)
  %.not.i.i.i.i80.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i.i.i80.i, label %_RNvMs_NtNtCsdLO2CoGLRSt_6base645write7encoderINtB4_13EncoderWriterNtNtNtB8_6engine15general_purpose14GeneralPurposeQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE17write_to_delegateCsj34PGqTgg0L_16deltalake_lakefs.exit82.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !780, !noalias !779, !nonnull !5, !noundef !5
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.aq
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.au, ptr nonnull readonly align 8 dereferenceable(1064) %0, i64 range(i64 0, 1025) %i.ab, i1 false)
  %.pre.i.i.i.i81.i = load i64, ptr %i.ap, align 8, !alias.scope !780, !noalias !779
  br label %_RNvMs_NtNtCsdLO2CoGLRSt_6base645write7encoderINtB4_13EncoderWriterNtNtNtB8_6engine15general_purpose14GeneralPurposeQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE17write_to_delegateCsj34PGqTgg0L_16deltalake_lakefs.exit82.i

_RNvMs_NtNtCsdLO2CoGLRSt_6base645write7encoderINtB4_13EncoderWriterNtNtNtB8_6engine15general_purpose14GeneralPurposeQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE17write_to_delegateCsj34PGqTgg0L_16deltalake_lakefs.exit82.i: ; preds = %bb.y, %bb.x
  %i.av = phi i64 [ %.pre.i.i.i.i81.i, %bb.y ], [ %i.aq, %bb.x ]
  %i.aw = add i64 %i.av, %i.ab
  store i64 %i.aw, ptr %i.ap, align 8, !alias.scope !780, !noalias !779
  store i8 0, ptr %i.g, align 1, !alias.scope !777, !noalias !769
  store i64 0, ptr %i.c, align 8, !alias.scope !777, !noalias !769
  %i.ax = add nuw nsw i64 %.sroa.0.0.i.i, %.sroa.061.0.i
  br label %_RNvXs0_NtNtCsdLO2CoGLRSt_6base645write7encoderINtB5_13EncoderWriterNtNtNtB9_6engine15general_purpose14GeneralPurposeQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs2pqxYH9ZEk8_3std2io5Write5writeCsj34PGqTgg0L_16deltalake_lakefs.exit

_RNvXs0_NtNtCsdLO2CoGLRSt_6base645write7encoderINtB5_13EncoderWriterNtNtNtB9_6engine15general_purpose14GeneralPurposeQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs2pqxYH9ZEk8_3std2io5Write5writeCsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.l, %_RNvMs_NtNtCsdLO2CoGLRSt_6base645write7encoderINtB4_13EncoderWriterNtNtNtB8_6engine15general_purpose14GeneralPurposeQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE17write_to_delegateCsj34PGqTgg0L_16deltalake_lakefs.exit82.i
  %.sroa.8.0.i = phi i64 [ %.sroa.8.1.i, %bb.l ], [ %i.ax, %_RNvMs_NtNtCsdLO2CoGLRSt_6base645write7encoderINtB4_13EncoderWriterNtNtNtB8_6engine15general_purpose14GeneralPurposeQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE17write_to_delegateCsj34PGqTgg0L_16deltalake_lakefs.exit82.i ] ; 5 uses
  %i.ay = icmp eq i64 %.sroa.8.0.i, 0
  br i1 %i.ay, label %.loopexit, label %bb.z

.loopexit:                                        ; preds = %bb.ab, %_RNvXs0_NtNtCsdLO2CoGLRSt_6base645write7encoderINtB5_13EncoderWriterNtNtNtB9_6engine15general_purpose14GeneralPurposeQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs2pqxYH9ZEk8_3std2io5Write5writeCsj34PGqTgg0L_16deltalake_lakefs.exit, %bb.a, %_RNvXs0_NtNtCsdLO2CoGLRSt_6base645write7encoderINtB5_13EncoderWriterNtNtNtB9_6engine15general_purpose14GeneralPurposeQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs2pqxYH9ZEk8_3std2io5Write5writeCsj34PGqTgg0L_16deltalake_lakefs.exit.thread
  %.sroa.07.0 = phi ptr [ @29, %_RNvXs0_NtNtCsdLO2CoGLRSt_6base645write7encoderINtB5_13EncoderWriterNtNtNtB9_6engine15general_purpose14GeneralPurposeQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs2pqxYH9ZEk8_3std2io5Write5writeCsj34PGqTgg0L_16deltalake_lakefs.exit.thread ], [ null, %bb.a ], [ null, %bb.ab ], [ @29, %_RNvXs0_NtNtCsdLO2CoGLRSt_6base645write7encoderINtB5_13EncoderWriterNtNtNtB9_6engine15general_purpose14GeneralPurposeQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs2pqxYH9ZEk8_3std2io5Write5writeCsj34PGqTgg0L_16deltalake_lakefs.exit ]
  ret ptr %.sroa.07.0

bb.z:                                             ; preds = %_RNvXs0_NtNtCsdLO2CoGLRSt_6base645write7encoderINtB5_13EncoderWriterNtNtNtB9_6engine15general_purpose14GeneralPurposeQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs2pqxYH9ZEk8_3std2io5Write5writeCsj34PGqTgg0L_16deltalake_lakefs.exit
  %i.az = icmp ugt i64 %.sroa.8.0.i, %.sroa.6.053
  br i1 %i.az, label %bb.aa, label %bb.ab, !prof !4

bb.aa:                                            ; preds = %bb.z
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core5slice5index16slice_index_fail(i64 noundef %.sroa.8.0.i, i64 noundef %.sroa.6.053, i64 noundef %.sroa.6.053, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #19
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.ba = sub nuw nsw i64 %.sroa.6.053, %.sroa.8.0.i ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.054, i64 %.sroa.8.0.i
  %i.bc = icmp eq i64 %i.ba, 0
  br i1 %i.bc, label %.loopexit, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvYINtNtNtCsdLO2CoGLRSt_6base645write7encoder13EncoderWriterNtNtNtB9_6engine15general_purpose14GeneralPurposeQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs2pqxYH9ZEk8_3std2io5Write9write_fmtCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(1064) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @_RINvNtCs2pqxYH9ZEk8_3std2io17default_write_fmtINtNtNtCsdLO2CoGLRSt_6base645write7encoder13EncoderWriterNtNtNtBP_6engine15general_purpose14GeneralPurposeQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(1064) %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  ret ptr %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs4j34XAPZOn0_4http6header5valueNtB2_11HeaderValue11from_shared(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs4_NtCsgO6CtM78C4N_7reqwest8into_urlRNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_13IntoUrlSealed8into_url(ptr dead_on_unwind noalias noundef writable sret([88 x i8]) align 8 captures(address) dereferenceable(88), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtCsgO6CtM78C4N_7reqwest10async_impl7requestNtB4_14RequestBuilder3new(ptr dead_on_unwind noalias noundef writable sret([272 x i8]) align 8 captures(address) dereferenceable(272), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(264)) unnamed_addr #0

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #11

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef nonnull, i1 noundef zeroext, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB1v_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB3T_5error5ErrorEEs_0ENtNtBR_8schedule16BlockingScheduleECsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(176), ptr noundef, ptr, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB1y_9GetResult5bytes00ENtNtBR_8schedule16BlockingScheduleECsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48), ptr noundef, ptr, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB7_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel4path13ParsedLogPathENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarBG_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB7_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8ulvy0Wg6Ot_12delta_kernel4path13ParsedLogPathENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarBN_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtCs2pqxYH9ZEk8_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBX_6helper12lazy_resolve0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs5_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB1L_5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs5_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB2g_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB4E_5error5ErrorEEs_0EENtNtB13_8schedule16BlockingScheduleE9set_stageCsj34PGqTgg0L_16deltalake_lakefs(ptr noundef nonnull align 16, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(560)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB2j_9GetResult5bytes00EENtNtB13_8schedule16BlockingScheduleE9set_stageCsj34PGqTgg0L_16deltalake_lakefs(ptr noundef nonnull align 8, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(80)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB1H_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB45_5error5ErrorEEs_0ENtNtB13_8schedule16BlockingScheduleE9set_stageCsj34PGqTgg0L_16deltalake_lakefs(ptr noundef nonnull align 16, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(560)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB1K_9GetResult5bytes00ENtNtB13_8schedule16BlockingScheduleE9set_stageCsj34PGqTgg0L_16deltalake_lakefs(ptr noundef nonnull align 8, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(80)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize nonlazybind optsize uwtable
declare { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef) unnamed_addr #12

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RINvNvNtNtCsdLO2CoGLRSt_6base646engine6Engine12encode_slice5innerNtNtB6_15general_purpose14GeneralPurposeECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(323), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB2g_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB4E_5error5ErrorEEs_0EENtNtB13_8schedule16BlockingScheduleE4pollCsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias noundef writable sret([544 x i8]) align 16 captures(none) dereferenceable(544), ptr noundef nonnull align 16, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB2j_9GetResult5bytes00EENtNtB13_8schedule16BlockingScheduleE4pollCsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noundef nonnull align 8, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB1H_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB45_5error5ErrorEEs_0ENtNtB13_8schedule16BlockingScheduleE4pollCsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias noundef writable sret([544 x i8]) align 16 captures(none) dereferenceable(544), ptr noundef nonnull align 16, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

end_hunk_0
