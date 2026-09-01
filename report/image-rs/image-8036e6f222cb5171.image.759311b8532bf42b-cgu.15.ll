Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.15?download=true
inline.NumInlined: 862
inline.NumDeleted: 412
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs5XDXJCpOCOR_3png13text_metadata17TextDecodingErrorNtB6_5Debug3fmtCsa5QsYiPB8Gl_5image:switch.lookup
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %.val = load i8, ptr %i.a, align 1, !range !1359, !noundef !5 ; 2 uses
  %i.b = zext nneg i8 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs5XDXJCpOCOR_3png13text_metadata17TextDecodingErrorNtB6_5Debug3fmtCsa5QsYiPB8Gl_5image, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs5XDXJCpOCOR_3png13text_metadata17TextDecodingErrorNtB6_5Debug3fmtCsa5QsYiPB8Gl_5image.163, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtB8_2io5error5ErrorNtB6_5Debug3fmtCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !57, !noundef !5
  %i.b = tail call noundef zeroext i1 @_RNvXNtNtCsj6eKBz9Db1c_4core2io5errorNtB2_5ErrorNtNtB6_3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtB8_3mem9alignment9AlignmentNtB6_5Debug3fmtCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !57, !noundef !5
  %i.b = tail call noundef zeroext i1 @_RNvXs_NtNtCsj6eKBz9Db1c_4core3mem9alignmentNtB4_9AlignmentNtNtB8_3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtB8_3num11float_parse14FloatErrorKindNtB6_5Debug3fmtCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %.val = load i8, ptr %i.a, align 1, !range !68, !noundef !5
  %i.b = trunc nuw i8 %.val to i1                 ; 2 uses
  %..i = select i1 %i.b, i64 7, i64 5
  %.1.i = select i1 %i.b, ptr @126, ptr @125
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.1.i, i64 noundef %..i)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtB8_3num11float_parse15ParseFloatErrorNtB6_5Debug3fmtCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1360
  store ptr %i.b, ptr %i.a, align 8, !noalias !1360
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @111, i64 noundef 15, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @112, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @110)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1360
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder8LineTypeNtB6_5Debug3fmtBE_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %.val = load i8, ptr %i.a, align 1, !range !1273, !noundef !5 ; 2 uses
  %i.b = zext nneg i8 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder8LineTypeNtB6_7Display3fmtBE_, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder8LineTypeNtB6_5Debug3fmtBE_.164, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs4wP2HXfJTCR_5alloc6string6StringNtB6_7Display3fmtCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !57, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1364)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1364, !noalias !1367, !nonnull !5, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1364, !noalias !1367, !noundef !5
  %i.f = tail call noundef zeroext i1 @_RNvXsi_NtCsj6eKBz9Db1c_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !1364
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtB8_3num11float_parse15ParseFloatErrorNtB6_7Display3fmtCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.b = tail call noundef zeroext i1 @_RNvXs_NtNtCsj6eKBz9Db1c_4core3num11float_parseNtB4_15ParseFloatErrorNtNtB8_3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder8LineTypeNtB6_7Display3fmtBE_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1369)
  %i.b = load i8, ptr %i.a, align 1, !range !1273, !alias.scope !1369, !noalias !1372, !noundef !5 ; 2 uses
  %i.c = zext nneg i8 %i.b to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder8LineTypeNtB6_7Display3fmtBE_, i64 %i.c
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.d = zext nneg i8 %i.b to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder8LineTypeNtB6_7Display3fmtBE_.165, i64 %i.d
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext), !noalias !1369
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs2_NtCsaXAyoiiLu3Y_9zune_jpeg10componentsNtB5_11ComponentIDNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !59, !noundef !5 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs2_NtCsaXAyoiiLu3Y_9zune_jpeg10componentsNtB5_11ComponentIDNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs2_NtCsaXAyoiiLu3Y_9zune_jpeg10componentsNtB5_11ComponentIDNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.166, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs3_NtNtCsj6eKBz9Db1c_4core3num11float_parseNtB5_15ParseFloatErrorNtNtB9_3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @111, i64 noundef 15, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @112, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @110)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7encoderNtB5_20NorunCombineIteratorNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [1 x i8], align 1                 ; 5 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  %i.d = alloca [1 x i8], align 1                 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load i64, ptr %i.g, align 8              ; 7 uses
  %i.i = load ptr, ptr %i.e, align 8, !nonnull !5 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.h ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i27 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.5.0..sroa_idx.i28 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.6.0..sroa_idx.i29 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.sroa.620.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %.promoted = load i64, ptr %i.f, align 8
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.m = phi i64 [ %.promoted, %bb.a ], [ %.be, %.backedge ] ; 11 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i8 2, ptr %1, align 8
  %i.n = load i8, ptr %0, align 8, !range !581, !noundef !5
  switch i8 %i.n, label %bb.g [
    i8 2, label %bb.c
    i8 0, label %_RNvXs1_NtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7encoderNtB5_11RunIteratorNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit36.thread
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !1374)
  call void @llvm.experimental.noalias.scope.decl(metadata !1377)
  %i.o = icmp eq i64 %i.m, %i.h
  br i1 %i.o, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1379
  %i.p = icmp ult i64 %i.m, %i.h
  br i1 %i.p, label %_RNvXs1_NtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7encoderNtB5_11RunIteratorNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.m, i64 noundef %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #28, !noalias !1379
  unreachable

_RNvXs1_NtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7encoderNtB5_11RunIteratorNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit: ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.m ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !noalias !1379, !noundef !5
  store i8 %i.r, ptr %i.d, align 1, !noalias !1379
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1379
  store ptr %i.q, ptr %i.k, align 8, !noalias !1379
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1379
  store ptr %i.d, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !1379
  store i8 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !1379
  store i64 127, ptr %i.c, align 8, !noalias !1379
  %i.s = call noundef i64 @_RNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10take_while9TakeWhileINtNtNtBe_5slice4iter4IterhENCNvXs1_NtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7encoderNtB2s_11RunIteratorB6_4next0ENtB4_13SpecAdvanceBy15spec_advance_byB2y_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k, i64 noundef range(i64 1, 0) 127), !noalias !1379
  %i.t = load i64, ptr %i.c, align 8, !alias.scope !1380, !noalias !1379
  %i.u = sub i64 %i.t, %i.s                       ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1379
  %i.v = icmp ult i64 %i.u, 3                     ; 3 uses
  %i.w = load i8, ptr %i.d, align 1, !noalias !1379
  %.sroa.43.0.i = select i1 %i.v, i64 %i.m, i64 %i.u
  %.sroa.3.0.i = select i1 %i.v, i8 undef, i8 %i.w
  %.sroa.01.0.i = zext i1 %i.v to i8
  %i.x = add i64 %i.u, %i.m                       ; 2 uses
  store i64 %i.x, ptr %i.f, align 8, !alias.scope !1377, !noalias !1374
  store i8 %.sroa.01.0.i, ptr %0, align 8, !alias.scope !1374, !noalias !1377
  store i8 %.sroa.3.0.i, ptr %.sroa.3.0..sroa_idx.i, align 1, !alias.scope !1374, !noalias !1377
  store i64 %.sroa.43.0.i, ptr %.sroa.43.0..sroa_idx.i, align 8, !alias.scope !1374, !noalias !1377
  store i64 %i.u, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !1374, !noalias !1377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1379
  %cond127 = icmp ugt i64 %i.u, 2
  br i1 %cond127, label %_RNvXs1_NtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7encoderNtB5_11RunIteratorNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit36.thread, label %bb.f

.loopexit:                                        ; preds = %bb.c
  store i8 2, ptr %0, align 8
  br label %_RNvXs1_NtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7encoderNtB5_11RunIteratorNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit36.thread

bb.f:                                             ; preds = %_RNvXs1_NtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7encoderNtB5_11RunIteratorNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  br label %.backedge

_RNvXs1_NtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7encoderNtB5_11RunIteratorNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit36.thread: ; preds = %bb.g, %bb.b, %_RNvXs1_NtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7encoderNtB5_11RunIteratorNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit, %bb.k, %bb.o, %bb.n, %.loopexit
  ret void

bb.g:                                             ; preds = %bb.b
  %i.y = load i64, ptr %.sroa.43.0..sroa_idx.i, align 8, !noundef !5 ; 2 uses
  %i.z = load i64, ptr %.sroa.64.0..sroa_idx.i, align 8, !noundef !5
  call void @llvm.experimental.noalias.scope.decl(metadata !1383)
  %i.aa = icmp eq i64 %i.m, %i.h
  br i1 %i.aa, label %_RNvXs1_NtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7encoderNtB5_11RunIteratorNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit36.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1386
  %i.ab = icmp ult i64 %i.m, %i.h
  br i1 %i.ab, label %_RNvXs1_NtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7encoderNtB5_11RunIteratorNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit36, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.m, i64 noundef %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #28, !noalias !1386
  unreachable

_RNvXs1_NtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7encoderNtB5_11RunIteratorNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit36: ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.m ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !1386, !noundef !5
  store i8 %i.ad, ptr %i.b, align 1, !noalias !1386
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1386
  store ptr %i.ac, ptr %i.l, align 8, !noalias !1386
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx.i27, align 8, !noalias !1386
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx.i28, align 8, !noalias !1386
  store i8 0, ptr %.sroa.6.0..sroa_idx.i29, align 8, !noalias !1386
  store i64 127, ptr %i.a, align 8, !noalias !1386
  %i.ae = call noundef i64 @_RNvXs_NvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10take_while9TakeWhileINtNtNtBe_5slice4iter4IterhENCNvXs1_NtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7encoderNtB2s_11RunIteratorB6_4next0ENtB4_13SpecAdvanceBy15spec_advance_byB2y_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l, i64 noundef range(i64 1, 0) 127), !noalias !1386
  %i.af = load i64, ptr %i.a, align 8, !alias.scope !1388, !noalias !1386
  %i.ag = sub i64 %i.af, %i.ae                    ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1386
  %i.ah = load i8, ptr %i.b, align 1, !noalias !1386
  %i.ai = add i64 %i.ag, %i.m                     ; 2 uses
  store i64 %i.ai, ptr %i.f, align 8, !alias.scope !1383, !noalias !1391
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1386
  %cond = icmp ugt i64 %i.ag, 2
  br i1 %cond, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_RNvXs1_NtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7encoderNtB5_11RunIteratorNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit36
  %i.aj = add i64 %i.ag, %i.z                     ; 4 uses
  %i.ak = call i8 @llvm.ucmp.i8.i64(i64 %i.aj, i64 128)
  switch i8 %i.ak, label %bb.l [
    i8 -1, label %bb.m
    i8 0, label %bb.n
    i8 1, label %bb.o
  ]

bb.k:                                             ; preds = %_RNvXs1_NtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7encoderNtB5_11RunIteratorNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit36
  store i8 0, ptr %1, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.ah, ptr %.sroa.7.0..sroa_idx, align 1
  store i64 %i.ag, ptr %.sroa.519.0..sroa_idx, align 8
  store i64 %i.ag, ptr %.sroa.620.0..sroa_idx, align 8
  br label %_RNvXs1_NtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7encoderNtB5_11RunIteratorNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit36.thread

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.j
  store i8 1, ptr %1, align 8
  store i64 %i.y, ptr %.sroa.519.0..sroa_idx, align 8
  store i64 %i.aj, ptr %.sroa.620.0..sroa_idx, align 8
  br label %.backedge

.backedge:                                        ; preds = %bb.m, %bb.f
  %.be = phi i64 [ %i.ai, %bb.m ], [ %i.x, %bb.f ]
  br label %bb.b

bb.n:                                             ; preds = %bb.j
  store i8 1, ptr %0, align 8
  store i64 %i.aj, ptr %.sroa.64.0..sroa_idx.i, align 8
  br label %_RNvXs1_NtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7encoderNtB5_11RunIteratorNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit36.thread

bb.o:                                             ; preds = %bb.j
  %i.al = add i64 %i.y, 128
  %i.am = add i64 %i.aj, -128
  store i8 1, ptr %1, align 8
  store i64 %i.al, ptr %.sroa.519.0..sroa_idx, align 8
  store i64 %i.am, ptr %.sroa.620.0..sroa_idx, align 8
  store i8 1, ptr %0, align 8
  store i64 128, ptr %.sroa.64.0..sroa_idx.i, align 8
  br label %_RNvXs1_NtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7encoderNtB5_11RunIteratorNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next.exit36.thread
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden { i64, ptr } @_RNvXs4_NtNtCsj6eKBz9Db1c_4core2io6cursorINtB5_6CursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_4seek4Seek4seekCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef range(i64 0, 3) %1, i64 noundef %2) unnamed_addr #8 {
bb.a:
  switch i64 %1, label %default.unreachable10 [
    i64 0, label %.sink.split
    i64 1, label %bb.d
    i64 2, label %bb.b
  ]

default.unreachable10:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  br label %bb.d

.sink.split:                                      ; preds = %bb.a, %bb.d
  %.sink = phi i64 [ %i.f, %bb.d ], [ %2, %bb.a ] ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sink, ptr %i.a, align 8
  %i.b = inttoptr i64 %.sink to ptr
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.d
  %.sroa.4.0 = phi ptr [ @114, %bb.d ], [ %i.b, %.sink.split ]
  %.sroa.04.0 = phi i64 [ 1, %bb.d ], [ 0, %.sink.split ]
  %i.c = insertvalue { i64, ptr } poison, i64 %.sroa.04.0, 0
  %i.d = insertvalue { i64, ptr } %i.c, ptr %.sroa.4.0, 1
  ret { i64, ptr } %i.d

bb.d:                                             ; preds = %bb.a, %bb.b
  %.sink12 = phi i64 [ 24, %bb.b ], [ 16, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %.sink12
  %.sroa.07.0 = load i64, ptr %i.e, align 8, !noundef !5 ; 2 uses
  %i.f = add i64 %.sroa.07.0, %2                  ; 2 uses
  %i.g = icmp ult i64 %i.f, %.sroa.07.0
  %i.h = icmp slt i64 %2, 0
  %i.i = xor i1 %i.h, %i.g
  br i1 %i.i, label %bb.c, label %.sink.split, !prof !177
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { i64, ptr } @_RNvXs4_NtNtCsj6eKBz9Db1c_4core2io6cursorINtB5_6CursorRShENtNtB7_4seek4Seek10stream_lenCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !5
  %i.b = inttoptr i64 %.val1 to ptr
  %i.c = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.b, 1
  ret { i64, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden { i64, ptr } @_RNvXs4_NtNtCsj6eKBz9Db1c_4core2io6cursorINtB5_6CursorRShENtNtB7_4seek4Seek4seekCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef range(i64 0, 3) %1, i64 noundef %2) unnamed_addr #8 {
bb.a:
  switch i64 %1, label %default.unreachable10 [
    i64 0, label %.sink.split
    i64 1, label %bb.d
    i64 2, label %bb.b
  ]

default.unreachable10:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  br label %bb.d

.sink.split:                                      ; preds = %bb.a, %bb.d
  %.sink = phi i64 [ %i.f, %bb.d ], [ %2, %bb.a ] ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.a, align 8
  %i.b = inttoptr i64 %.sink to ptr
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.d
  %.sroa.4.0 = phi ptr [ @114, %bb.d ], [ %i.b, %.sink.split ]
  %.sroa.04.0 = phi i64 [ 1, %bb.d ], [ 0, %.sink.split ]
  %i.c = insertvalue { i64, ptr } poison, i64 %.sroa.04.0, 0
  %i.d = insertvalue { i64, ptr } %i.c, ptr %.sroa.4.0, 1
  ret { i64, ptr } %i.d

bb.d:                                             ; preds = %bb.a, %bb.b
  %.sink12 = phi i64 [ 16, %bb.b ], [ 8, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %.sink12
  %.sroa.07.0 = load i64, ptr %i.e, align 8, !noundef !5 ; 2 uses
  %i.f = add i64 %.sroa.07.0, %2                  ; 2 uses
  %i.g = icmp ult i64 %i.f, %.sroa.07.0
  %i.h = icmp slt i64 %2, 0
  %i.i = xor i1 %i.h, %i.g
  br i1 %i.i, label %bb.c, label %.sink.split, !prof !177
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_NtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoderINtB5_10HdrDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder16read_image_boxedBb_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 captures(address) %1, ptr noalias nofree noundef nonnull %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [128 x i8], align 1               ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [128 x i8], align 1               ; 9 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [128 x i8], align 1               ; 9 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [128 x i8], align 1               ; 9 uses
  %i.t = alloca [64 x i8], align 8                ; 10 uses
  %i.u = alloca [64 x i8], align 8                ; 10 uses
  %i.v = alloca [64 x i8], align 8                ; 10 uses
  %i.w = alloca [64 x i8], align 8                ; 10 uses
  %i.x = alloca [64 x i8], align 8                ; 10 uses
  %i.y = alloca [24 x i8], align 8                ; 6 uses
  %i.z = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.12.i = alloca [7 x i8], align 1          ; 8 uses
  %.sroa.13.i = alloca [48 x i8], align 8         ; 8 uses
  %i.aa = alloca [48 x i8], align 8               ; 7 uses
  %i.ab = alloca [24 x i8], align 8               ; 15 uses
  %i.ac = alloca [16 x i8], align 8               ; 7 uses
  %i.ad = alloca [16 x i8], align 8               ; 5 uses
  %i.ae = alloca [96 x i8], align 8               ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ae, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1392)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1395)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !1397
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 %3, ptr %i.af, align 8, !noalias !1397
  store i8 0, ptr %i.ad, align 8, !noalias !1397
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !1397
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %.val.i.i = load i32, ptr %i.ag, align 8, !alias.scope !1399, !noalias !1402, !noundef !5 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 60
  %.val2.i.i = load i32, ptr %i.ah, align 4, !alias.scope !1399, !noalias !1402, !noundef !5 ; 2 uses
  %i.ai = zext i32 %.val.i.i to i64               ; 6 uses
  %i.aj = zext i32 %.val2.i.i to i64
  %i.ak = mul nuw i64 %i.aj, %i.ai
  %i.al = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ak, i64 12) ; 2 uses
  %i.am = extractvalue { i64, i1 } %i.al, 1
  br i1 %i.am, label %.thread.i, label %bb.e, !prof !177

.thread.i:                                        ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 -1, ptr %i.an, align 8, !noalias !1397
  store i8 0, ptr %i.ac, align 8, !noalias !1397
end_hunk_0
