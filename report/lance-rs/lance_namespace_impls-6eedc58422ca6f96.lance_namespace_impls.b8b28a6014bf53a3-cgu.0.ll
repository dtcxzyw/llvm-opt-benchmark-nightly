Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_namespace_impls-6eedc58422ca6f96.lance_namespace_impls.b8b28a6014bf53a3-cgu.0?download=true
inline.NumInlined: 73510
inline.NumDeleted: 27553
loop-unroll.NumCompletelyUnrolled: 88
loop-unroll.NumRuntimeUnrolled: 193
loop-unroll.NumUnrolled: 285
begin_hunk_0_@_RINvNtNtCskAO0uQb8M5a_5prost8encoding8hash_map6encodeNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBT_3vec3VechEB1r_INvNtB4_6string6encodeB1r_ENvB1Q_11encoded_lenINvNtB4_5bytes6encodeB1r_B1r_EINvB2A_11encoded_lenB1r_EECsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  store i8 10, ptr %i.ay, align 1, !noalias !85873
  %i.az = add nuw i64 %.sink1.i6.i.i, 1
  store i64 %i.az, ptr %i.h, align 8, !alias.scope !85871, !noalias !85872
  %i.ba = icmp sgt i64 %.val25.i, -1
  tail call void @llvm.assume(i1 %i.ba)
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %.val25.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val24.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85874)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85875)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85876)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85877)
  %i.bb = load i64, ptr %i.h, align 8, !alias.scope !85878, !noalias !85879, !noundef !416 ; 5 uses
  %i.bc = load i64, ptr %1, align 8, !range !419, !alias.scope !85878, !noalias !85879, !noundef !416
  %i.bd = sub i64 %i.bc, %i.bb
  %i.be = icmp ugt i64 %.val25.i, %i.bd
  br i1 %i.be, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i.i, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i, !prof !426

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i.i: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.bb, i64 noundef range(i64 0, -9223372036854775808) %.val25.i, i64 noundef 1, i64 noundef 1)
  %i.bf = load i64, ptr %i.h, align 8, !alias.scope !85880, !noalias !85879, !noundef !416 ; 2 uses
  %i.bg = icmp sgt i64 %i.bf, -1
  tail call void @llvm.assume(i1 %i.bg)
  br label %bb.g

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  %i.bh = icmp sgt i64 %i.bb, -1
  tail call void @llvm.assume(i1 %i.bh)
  %.not.i.i.i.i.i.i.i = icmp samesign eq i64 %.val25.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvYINvNtNtCskAO0uQb8M5a_5prost8encoding6string6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEEINtNtNtCscI6d9CVNmLh_4core3ops8function2FnTmRNtNtBV_6string6StringQBQ_EE4callCsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %bb.g

bb.g:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i.i
  %i.bi = phi i64 [ %i.bf, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i.i ], [ %i.bb, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i ] ; 2 uses
  %i.bj = load ptr, ptr %i.i, align 8, !alias.scope !85880, !noalias !85879, !nonnull !416, !noundef !416
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bi
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bk, ptr nonnull readonly align 1 %.val24.i, i64 range(i64 0, -9223372036854775808) %.val25.i, i1 false), !noalias !85881
  br label %_RNvYINvNtNtCskAO0uQb8M5a_5prost8encoding6string6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEEINtNtNtCscI6d9CVNmLh_4core3ops8function2FnTmRNtNtBV_6string6StringQBQ_EE4callCsfR8GmIBoxTX_21lance_namespace_impls.exit.i

_RNvYINvNtNtCskAO0uQb8M5a_5prost8encoding6string6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEEINtNtNtCscI6d9CVNmLh_4core3ops8function2FnTmRNtNtBV_6string6StringQBQ_EE4callCsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %bb.g, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i
  %i.bl = phi i64 [ %i.bi, %bb.g ], [ %i.bb, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i ]
  %i.bm = add nuw i64 %i.bl, %.val25.i
  store i64 %i.bm, ptr %i.h, align 8, !alias.scope !85880, !noalias !85879
  br label %bb.h

bb.h:                                             ; preds = %_RNvYINvNtNtCskAO0uQb8M5a_5prost8encoding6string6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEEINtNtNtCscI6d9CVNmLh_4core3ops8function2FnTmRNtNtBV_6string6StringQBQ_EE4callCsfR8GmIBoxTX_21lance_namespace_impls.exit.i, %.noexc
  br i1 %i.aa, label %_RNvYINvNtNtCskAO0uQb8M5a_5prost8encoding5bytes6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEBP_EINtNtNtCscI6d9CVNmLh_4core3ops8function2FnTmRBP_QBP_EE4callCsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val26.i = load ptr, ptr %i.y, align 8, !noalias !85860 ; 2 uses
  %.val27.i = load i64, ptr %i.z, align 8, !noalias !85860 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85882)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85883)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85884)
  %.pre18.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !85885, !noalias !85865 ; 3 uses
  %.pre28.i.i.i = load i64, ptr %1, align 8, !range !419, !alias.scope !85885, !noalias !85865
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85886)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85887)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85888)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85889)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85890)
  %i.bn = icmp eq i64 %.pre28.i.i.i, %.pre18.i.i.i
  br i1 %i.bn, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, !prof !426

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i: ; preds = %bb.i
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.pre18.i.i.i, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1)
  %i.bo = load i64, ptr %i.h, align 8, !alias.scope !85891, !noalias !85892, !noundef !416
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i, %bb.i
  %.sink1.i6.i.i.i = phi i64 [ %i.bo, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i7.i.i.i ], [ %.pre18.i.i.i, %bb.i ] ; 3 uses
  %i.bp = icmp sgt i64 %.sink1.i6.i.i.i, -1
  tail call void @llvm.assume(i1 %i.bp)
  %i.bq = load ptr, ptr %i.i, align 8, !alias.scope !85891, !noalias !85892, !nonnull !416, !noundef !416
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.sink1.i6.i.i.i
  store i8 18, ptr %i.br, align 1, !noalias !85893
  %i.bs = add nuw i64 %.sink1.i6.i.i.i, 1
  store i64 %i.bs, ptr %i.h, align 8, !alias.scope !85891, !noalias !85892
  %i.bt = icmp sgt i64 %.val27.i, -1
  tail call void @llvm.assume(i1 %i.bt)
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls(i64 noundef %.val27.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85894)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val26.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85895)
  %i.bu = load i64, ptr %i.h, align 8, !alias.scope !85896, !noalias !85897, !noundef !416 ; 3 uses
  %i.bv = load i64, ptr %1, align 8, !range !419, !alias.scope !85896, !noalias !85897, !noundef !416
  %i.bw = sub i64 %i.bv, %i.bu
  %i.bx = icmp ugt i64 %.val27.i, %i.bw
  br i1 %i.bx, label %.lr.ph.split.us.i.i.i.i.i, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i, !prof !426

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  %.not8.i.i.i.i.i = icmp eq i64 %.val27.i, 0
  br i1 %.not8.i.i.i.i.i, label %_RNvYINvNtNtCskAO0uQb8M5a_5prost8encoding5bytes6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEBP_EINtNtNtCscI6d9CVNmLh_4core3ops8function2FnTmRBP_QBP_EE4callCsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance.exit.us.i.i.i.i.i

.lr.ph.split.us.i.i.i.i.i:                        ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.bu, i64 noundef range(i64 0, -9223372036854775808) %.val27.i, i64 noundef 1, i64 noundef 1)
  %.pre.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !85898, !noalias !85897 ; 3 uses
  %.pre1.i.i.i.i = load i64, ptr %1, align 8, !range !419, !alias.scope !85898, !noalias !85897
  %.pre2.i.i.i.i = sub i64 %.pre1.i.i.i.i, %.pre.i.i.i.i
  %i.by = icmp ugt i64 %.val27.i, %.pre2.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85899)
  br i1 %i.by, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.us.i.i.i.i.i, label %_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance.exit.us.i.i.i.i.i, !prof !466

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.us.i.i.i.i.i: ; preds = %.lr.ph.split.us.i.i.i.i.i
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.pre.i.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %.val27.i, i64 noundef 1, i64 noundef 1)
  %i.bz = load i64, ptr %i.h, align 8, !alias.scope !85900, !noalias !85897, !noundef !416
  br label %_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance.exit.us.i.i.i.i.i

_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance.exit.us.i.i.i.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.us.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i
  %.sink12.i.i.i.i.i = phi i64 [ %i.bz, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.us.i.i.i.i.i ], [ %.pre.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i ], [ %i.bu, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i ] ; 3 uses
  %i.ca = icmp sgt i64 %.sink12.i.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.ca)
  %i.cb = load ptr, ptr %i.i, align 8, !alias.scope !85900, !noalias !85897, !nonnull !416, !noundef !416
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.sink12.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cc, ptr nonnull readonly align 1 %.val26.i, i64 range(i64 0, -9223372036854775808) %.val27.i, i1 false), !noalias !85901
  %i.cd = add nuw i64 %.sink12.i.i.i.i.i, %.val27.i
  store i64 %i.cd, ptr %i.h, align 8, !alias.scope !85900, !noalias !85897
  br label %_RNvYINvNtNtCskAO0uQb8M5a_5prost8encoding5bytes6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEBP_EINtNtNtCscI6d9CVNmLh_4core3ops8function2FnTmRBP_QBP_EE4callCsfR8GmIBoxTX_21lance_namespace_impls.exit.i

_RNvYINvNtNtCskAO0uQb8M5a_5prost8encoding5bytes6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEBP_EINtNtNtCscI6d9CVNmLh_4core3ops8function2FnTmRBP_QBP_EE4callCsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %_RNvXs0_NtNtCs4XDKJNDGLq7_5bytes3buf8buf_implRShNtB5_3Buf7advance.exit.us.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i, %bb.h
  %i.ce = icmp eq i64 %i.u, 0
  br i1 %i.ce, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit14, label %bb.b

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls.exit14: ; preds = %_RNvYINvNtNtCskAO0uQb8M5a_5prost8encoding5bytes6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEBP_EINtNtNtCscI6d9CVNmLh_4core3ops8function2FnTmRBP_QBP_EE4callCsfR8GmIBoxTX_21lance_namespace_impls.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtCsa7501wwoJJ1_11lance_index6scalar8inverted9tokenizer26deserialize_format_versionQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB1x_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 9 uses
  %i.d = alloca [56 x i8], align 8                ; 6 uses
  %i.e = alloca [20 x i8], align 1                ; 3 uses
  %i.f = alloca [56 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 2 uses
  %i.i = alloca [32 x i8], align 8                ; 6 uses
  %i.j = alloca [56 x i8], align 8                ; 7 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 2 uses
  %i.m = alloca [16 x i8], align 8                ; 7 uses
  %i.n = alloca [56 x i8], align 8                ; 7 uses
  %i.o = alloca [32 x i8], align 8                ; 10 uses
  %.sroa.3 = alloca [7 x i8], align 1             ; 2 uses
  %.sroa.5 = alloca [16 x i8], align 8            ; 2 uses
  %.sroa.9 = alloca [7 x i8], align 1             ; 5 uses
  %.sroa.14 = alloca [16 x i8], align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85952)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85953)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !85954, !noalias !85955, !noundef !416 ; 4 uses
  %.promoted.i.i = load i64, ptr %i.p, align 8, !alias.scope !85956, !noalias !85957 ; 2 uses
  %i.s = icmp ult i64 %.promoted.i.i, %i.r
  br i1 %i.s, label %.lr.ph.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !85954, !noalias !85955, !nonnull !416, !noundef !416 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.v = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.y, %bb.c ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85958)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85959)
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !noalias !85960, !noundef !416
  switch i8 %i.x, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 110, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.y = add i64 %i.v, 1                          ; 3 uses
  store i64 %i.y, ptr %i.p, align 8, !alias.scope !85961, !noalias !85957
  %exitcond.not.i.i = icmp eq i64 %i.y, %i.r
  br i1 %exitcond.not.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i, label %bb.b

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i: ; preds = %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !85962
  call fastcc void @_RINvXNtNtCs5QD3CVEMyfH_10serde_json5value2deNtB5_5ValueNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeQINtNtB7_2de12DeserializerNtNtB7_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(56) %1), !noalias !85963
  %i.z = load i8, ptr %i.c, align 8, !range !522, !noalias !85962, !noundef !416 ; 2 uses
  %i.aa = icmp eq i8 %i.z, -1
  br i1 %i.aa, label %_RINvXs5_NtCs5QD3CVEMyfH_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de12Deserializer18deserialize_optionINtNtB1j_5impls13OptionVisitorNtNtB8_5value5ValueEECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread93, label %_RINvXs5_NtCs5QD3CVEMyfH_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de12Deserializer18deserialize_optionINtNtB1j_5impls13OptionVisitorNtNtB8_5value5ValueEECsfR8GmIBoxTX_21lance_namespace_impls.exit

_RINvXs5_NtCs5QD3CVEMyfH_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de12Deserializer18deserialize_optionINtNtB1j_5impls13OptionVisitorNtNtB8_5value5ValueEECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread93: ; preds = %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !85962, !nonnull !416, !align !417, !noundef !416
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !85962
  br label %_RINvXs5_NtCs5QD3CVEMyfH_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de12Deserializer18deserialize_optionINtNtB1j_5impls13OptionVisitorNtNtB8_5value5ValueEECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.ad = add i64 %i.v, 1                         ; 4 uses
  store i64 %i.ad, ptr %i.p, align 8, !alias.scope !85964, !noalias !85965
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85966)
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %i.ad, i64 %i.r) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85967)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85968)
  %exitcond.not.i9.not.i = icmp ult i64 %i.ad, %i.r
  br i1 %exitcond.not.i9.not.i, label %bb.e, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !noalias !85969, !noundef !416
  %i.ag = add i64 %i.v, 2                         ; 3 uses
  store i64 %i.ag, ptr %i.p, align 8, !alias.scope !85970, !noalias !85971
  %.not.i.i = icmp eq i8 %i.af, 117
  br i1 %.not.i.i, label %bb.f, label %bb.j, !prof !696

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85972)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85973)
  %exitcond.not.i9.1.i = icmp eq i64 %i.ag, %umax.i.i
  br i1 %exitcond.not.i9.1.i, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !noalias !85974, !noundef !416
  %i.aj = add i64 %i.v, 3                         ; 3 uses
  store i64 %i.aj, ptr %i.p, align 8, !alias.scope !85975, !noalias !85971
  %.not.i.1.i = icmp eq i8 %i.ai, 108
  br i1 %.not.i.1.i, label %bb.h, label %bb.j, !prof !696

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85976)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85977)
  %exitcond.not.i9.2.i = icmp eq i64 %i.aj, %umax.i.i
  br i1 %exitcond.not.i9.2.i, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !noalias !85978, !noundef !416
  %i.am = add i64 %i.v, 4
  store i64 %i.am, ptr %i.p, align 8, !alias.scope !85979, !noalias !85971
  %.not.i.2.i = icmp eq i8 %i.al, 108
  br i1 %.not.i.2.i, label %_RINvXs5_NtCs5QD3CVEMyfH_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de12Deserializer18deserialize_optionINtNtB1j_5impls13OptionVisitorNtNtB8_5value5ValueEECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread88, label %bb.j, !prof !696

_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i: ; preds = %bb.h, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !85980
  store i64 5, ptr %i.b, align 8, !noalias !85980
  %i.an = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !85981
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !85980
  br label %_RINvXs5_NtCs5QD3CVEMyfH_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de12Deserializer18deserialize_optionINtNtB1j_5impls13OptionVisitorNtNtB8_5value5ValueEECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !85980
  store i64 9, ptr %i.a, align 8, !noalias !85980
  %i.ao = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a), !noalias !85981
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !85980
  br label %_RINvXs5_NtCs5QD3CVEMyfH_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de12Deserializer18deserialize_optionINtNtB1j_5impls13OptionVisitorNtNtB8_5value5ValueEECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread

_RINvXs5_NtCs5QD3CVEMyfH_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de12Deserializer18deserialize_optionINtNtB1j_5impls13OptionVisitorNtNtB8_5value5ValueEECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9.0..sroa_idx, i64 7, i1 false), !noalias !85982
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.10.0.copyload = load ptr, ptr %.sroa.10.0..sroa_idx, align 8, !noalias !85982
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14.0..sroa_idx, i64 16, i1 false), !noalias !85982
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !85962
  br label %_RINvXs5_NtCs5QD3CVEMyfH_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de12Deserializer18deserialize_optionINtNtB1j_5impls13OptionVisitorNtNtB8_5value5ValueEECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread88

_RINvXs5_NtCs5QD3CVEMyfH_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de12Deserializer18deserialize_optionINtNtB1j_5impls13OptionVisitorNtNtB8_5value5ValueEECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread: ; preds = %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i, %bb.j, %_RINvXs5_NtCs5QD3CVEMyfH_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de12Deserializer18deserialize_optionINtNtB1j_5impls13OptionVisitorNtNtB8_5value5ValueEECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread93
  %.sroa.10.187 = phi ptr [ %i.ac, %_RINvXs5_NtCs5QD3CVEMyfH_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de12Deserializer18deserialize_optionINtNtB1j_5impls13OptionVisitorNtNtB8_5value5ValueEECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread93 ], [ %i.ao, %bb.j ], [ %i.an, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.187, ptr %i.ap, align 8
  store i8 1, ptr %0, align 8
  br label %bb.ao

_RINvXs5_NtCs5QD3CVEMyfH_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de12Deserializer18deserialize_optionINtNtB1j_5impls13OptionVisitorNtNtB8_5value5ValueEECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread88: ; preds = %bb.i, %_RINvXs5_NtCs5QD3CVEMyfH_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de12Deserializer18deserialize_optionINtNtB1j_5impls13OptionVisitorNtNtB8_5value5ValueEECsfR8GmIBoxTX_21lance_namespace_impls.exit
  %i.aq = phi i8 [ %i.z, %_RINvXs5_NtCs5QD3CVEMyfH_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de12Deserializer18deserialize_optionINtNtB1j_5impls13OptionVisitorNtNtB8_5value5ValueEECsfR8GmIBoxTX_21lance_namespace_impls.exit ], [ -1, %bb.i ] ; 3 uses
  %.sroa.10.191 = phi ptr [ %.sroa.10.0.copyload, %_RINvXs5_NtCs5QD3CVEMyfH_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de12Deserializer18deserialize_optionINtNtB1j_5impls13OptionVisitorNtNtB8_5value5ValueEECsfR8GmIBoxTX_21lance_namespace_impls.exit ], [ undef, %bb.i ] ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9, i64 7, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  %.not = icmp eq i8 %i.aq, -1
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_RINvXs5_NtCs5QD3CVEMyfH_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de12Deserializer18deserialize_optionINtNtB1j_5impls13OptionVisitorNtNtB8_5value5ValueEECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i8 %i.aq, ptr %i.o, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3, i64 7, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  store ptr %.sroa.10.191, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i64 16, i1 false)
  %i.ar = ptrtoint ptr %.sroa.10.191 to i64       ; 2 uses
  switch i8 %i.aq, label %bb.m [
    i8 0, label %bb.al
    i8 2, label %bb.n
    i8 3, label %bb.o
  ]

bb.l:                                             ; preds = %_RINvXs5_NtCs5QD3CVEMyfH_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de12Deserializer18deserialize_optionINtNtB1j_5impls13OptionVisitorNtNtB8_5value5ValueEECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread88
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 -1, ptr %i.as, align 1
  store i8 0, ptr %0, align 8
  br label %bb.ao

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.i, ptr %i.g, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs_NtCs5QD3CVEMyfH_10serde_json5valueNtB4_5ValueNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.431.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull @412, ptr noundef nonnull %i.g)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfR8GmIBoxTX_21lance_namespace_impls.exit unwind label %bb.am

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, i64 16, i1 false)
  %i.at = load i64, ptr %i.m, align 8, !range !483, !noundef !416
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %bb.p, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfR8GmIBoxTX_21lance_namespace_impls.exit61

bb.o:                                             ; preds = %bb.k
  %.sroa.572.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !nonnull !416, !noundef !416 ; 3 uses
  %.sroa.873.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.sroa.873.0.copyload = load i64, ptr %.sroa.873.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke void @_RNvNtNtNtNtCsa7501wwoJJ1_11lance_index6scalar8inverted5index6format26resolve_fts_format_version(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.n, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.572.0.copyload, i64 %.sroa.873.0.copyload)
          to label %bb.af unwind label %bb.ad

bb.p:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !noundef !416
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ax = call { ptr, i64 } @_RNvMsf_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impy4__fmt(i64 noundef %i.aw, ptr noalias noundef nonnull %i.e, i64 noundef 20) ; 2 uses
  %i.ay = extractvalue { ptr, i64 } %i.ax, 0
  %i.az = extractvalue { ptr, i64 } %i.ax, 1      ; 8 uses
  %.not.i = icmp slt i64 %i.az, 0
  br i1 %.not.i, label %bb.s, label %bb.q, !prof !441

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfR8GmIBoxTX_21lance_namespace_impls.exit61: ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.m, ptr %i.k, align 8
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs2_NtCs5QD3CVEMyfH_10serde_json6numberNtB5_6NumberNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.443.0..sroa_idx, align 8
  call void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noundef nonnull @412, ptr noundef nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.ba = call fastcc noundef nonnull align 8 ptr @_RINvXs6_NtCs5QD3CVEMyfH_10serde_json5errorNtB6_5ErrorNtNtCskpEw9nXJLNc_10serde_core2de5Error6customNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.l)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ba, ptr %i.bb, align 8
  store i8 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ao

bb.q:                                             ; preds = %bb.p
  %i.bc = icmp eq i64 %i.az, 0                    ; 3 uses
  br i1 %i.bc, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread116, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #68, !noalias !85983
  %i.bd = call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.az, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !85983 ; 3 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.p, %bb.r
  %.sroa.4.0.ph = phi i64 [ 1, %bb.r ], [ 0, %bb.p ]
  call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %i.az) #72
  unreachable

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread116: ; preds = %bb.q, %bb.t
  %i.bf = phi ptr [ %i.bd, %bb.t ], [ inttoptr (i64 1 to ptr), %bb.q ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  invoke void @_RNvNtNtNtNtCsa7501wwoJJ1_11lance_index6scalar8inverted5index6format26resolve_fts_format_version(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bf, i64 %i.az)
          to label %bb.w unwind label %bb.u

bb.t:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bd, ptr align 1 %i.ay, i64 %i.az, i1 false)
  br label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread116

bb.u:                                             ; preds = %bb.x, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread116
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.bc, label %.thread104, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bf, i64 noundef %i.az, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !85984
  br label %.thread104

bb.w:                                             ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread116
  %i.bh = load i8, ptr %i.j, align 8, !range !423, !noundef !416 ; 2 uses
  %.not52 = icmp eq i8 %i.bh, -1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.bj = load i8, ptr %i.bi, align 1             ; 2 uses
  br i1 %.not52, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 2
end_hunk_0
begin_hunk_1_@_RINvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemNtNtCs9vBodVtS8mO_24datafusion_physical_expr12partitioning12DistributionNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90127)
  store i64 0, ptr %.sroa.0.033.us.us98.i.epil, align 8, !noalias !90126
  %.sroa.6.0..sroa.0.0.sroa_idx.us.us103.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us98.i.epil, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.0..sroa.0.0.sroa_idx.us.us103.i.epil, align 8, !noalias !90126
  %.sroa.723.0..sroa.0.0.sroa_idx.us.us104.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us98.i.epil, i64 16
  store i64 0, ptr %.sroa.723.0..sroa.0.0.sroa_idx.us.us104.i.epil, align 8, !noalias !90126
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us.us98.i.epil, i64 24 ; 2 uses
  %epil.iter79.next = add i64 %epil.iter79, 1     ; 2 uses
  %epil.iter79.cmp.not = icmp eq i64 %epil.iter79.next, %xtraiter78
  br i1 %epil.iter79.cmp.not, label %._crit_edge.thread.i, label %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us101.i.epil, !llvm.loop !90116

._crit_edge.thread.i.loopexit66.unr-lcssa:        ; preds = %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us39.i
  %lcmp.mod75.not = icmp eq i64 %xtraiter74, 0
  br i1 %lcmp.mod75.not, label %._crit_edge.thread.i, label %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us39.i.epil.preheader

_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us39.i.epil.preheader: ; preds = %._crit_edge.thread.i.loopexit66.unr-lcssa, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us39.i.preheader
  %.sroa.0.033.us36.i.epil.init = phi ptr [ %.sroa.10.0.i, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us39.i.preheader ], [ %i.bf, %._crit_edge.thread.i.loopexit66.unr-lcssa ]
  %lcmp.mod77 = icmp ne i64 %xtraiter74, 0
  tail call void @llvm.assume(i1 %lcmp.mod77)
  br label %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us39.i.epil

_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us39.i.epil: ; preds = %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us39.i.epil, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us39.i.epil.preheader
  %.sroa.0.033.us36.i.epil = phi ptr [ %i.ch, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us39.i.epil ], [ %.sroa.0.033.us36.i.epil.init, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us39.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us39.i.epil ], [ 0, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us39.i.epil.preheader ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90125)
  store i64 -9223372036854775808, ptr %.sroa.0.033.us36.i.epil, align 8, !noalias !90126
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.033.us36.i.epil, i64 24 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter74
  br i1 %epil.iter.cmp.not, label %._crit_edge.thread.i, label %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us39.i.epil, !llvm.loop !90117

._crit_edge.thread.i:                             ; preds = %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.loopexit.us.i, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us53.i.prol.loopexit, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us53.i, %._crit_edge.thread.i.loopexit66.unr-lcssa, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us39.i.epil, %._crit_edge.thread.i.loopexit64.unr-lcssa, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us101.i.epil, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us89.i.prol.loopexit, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us89.i, %._crit_edge.thread.i.loopexit.unr-lcssa, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us.i.epil, %._crit_edge.i
  %.sroa.0.0.lcssa140.i = phi ptr [ %.sroa.10.0.i, %._crit_edge.i ], [ %i.bo, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us53.i ], [ %i.cg, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us101.i.epil ], [ %i.al, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us89.i ], [ %i.cf, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us.i.epil ], [ %i.ch, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us39.i.epil ], [ %i.ag, %._crit_edge.thread.i.loopexit.unr-lcssa ], [ %.lcssa63.unr, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us.us89.i.prol.loopexit ], [ %i.ap, %._crit_edge.thread.i.loopexit64.unr-lcssa ], [ %i.bf, %._crit_edge.thread.i.loopexit66.unr-lcssa ], [ %.lcssa69.unr, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.us53.i.prol.loopexit ], [ %i.cc, %_RNvXse_NtCs9vBodVtS8mO_24datafusion_physical_expr12partitioningNtB5_12DistributionNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.loopexit.us.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.lcssa140.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !noalias !90121
  store i64 %2, ptr %i.h, align 8, !alias.scope !90121, !noalias !90122
  br label %_RNvMs3_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs9vBodVtS8mO_24datafusion_physical_expr12partitioning12DistributionE11extend_withCsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.i:                                             ; preds = %bb.k
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !90126
  unreachable

bb.j:                                             ; preds = %.split74.us.i
  %i.cj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store i64 %storemerge31.us66.i, ptr %i.h, align 8, !alias.scope !90121, !noalias !90122
  %switch1.i15.i = icmp slt i64 %i.j, -9223372036854775806
  br i1 %switch1.i15.i, label %.body, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBG_4sync3ArcDNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %1)
          to label %.body unwind label %bb.i, !noalias !90121

bb.l:                                             ; preds = %bb.h
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.j, %bb.k, %bb.l
  %eh.lpad-body = phi { ptr, i32 } [ %i.ck, %bb.l ], [ %i.cj, %bb.k ], [ %i.cj, %bb.j ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs9vBodVtS8mO_24datafusion_physical_expr12partitioning12DistributionEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(24) %i.a) #73
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs9vBodVtS8mO_24datafusion_physical_expr12partitioning12DistributionECsfR8GmIBoxTX_21lance_namespace_impls.exit unwind label %bb.m

_RNvMs3_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs9vBodVtS8mO_24datafusion_physical_expr12partitioning12DistributionE11extend_withCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %._crit_edge.thread.i, %bb.g, %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.m:                                             ; preds = %bb.o, %.body
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs9vBodVtS8mO_24datafusion_physical_expr12partitioning12DistributionECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.n, %bb.o, %.body
  %.pn7 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.cm, %bb.o ], [ %i.cm, %bb.n ]
  resume { ptr, i32 } %.pn7

bb.n:                                             ; preds = %bb.d
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cn = load i64, ptr %1, align 8, !range !529, !alias.scope !90132, !noundef !416
  %switch1.i = icmp slt i64 %i.cn, -9223372036854775806
  br i1 %switch1.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs9vBodVtS8mO_24datafusion_physical_expr12partitioning12DistributionECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBG_4sync3ArcDNtNtCsj4DjkV52PPz_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %1)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs9vBodVtS8mO_24datafusion_physical_expr12partitioning12DistributionECsfR8GmIBoxTX_21lance_namespace_impls.exit unwind label %bb.m
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXNtNtCs5QD3CVEMyfH_10serde_json5value2deNtB5_5ValueNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeQINtNtB7_2de12DeserializerNtNtB7_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [32 x i8], align 8                ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 8 uses
  %i.o = alloca [24 x i8], align 8                ; 11 uses
  %i.p = alloca [16 x i8], align 8                ; 6 uses
  %i.q = alloca [72 x i8], align 8                ; 12 uses
  %i.r = alloca [24 x i8], align 8                ; 7 uses
  %i.s = alloca [16 x i8], align 8                ; 7 uses
  %.sroa.4.i = alloca [31 x i8], align 1          ; 4 uses
  %i.t = alloca [32 x i8], align 8                ; 5 uses
  %i.u = alloca [32 x i8], align 8                ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [32 x i8], align 8                ; 20 uses
  %i.x = alloca [24 x i8], align 8                ; 7 uses
  %i.y = alloca [32 x i8], align 8                ; 6 uses
  %i.z = alloca [24 x i8], align 8                ; 11 uses
  %i.aa = alloca [16 x i8], align 8               ; 9 uses
  %i.ab = alloca [32 x i8], align 8               ; 4 uses
  %i.ac = alloca [24 x i8], align 8               ; 4 uses
  %i.ad = alloca [40 x i8], align 8               ; 7 uses
  %i.ae = alloca [24 x i8], align 8               ; 4 uses
  %i.af = alloca [32 x i8], align 8               ; 7 uses
  %i.ag = alloca [40 x i8], align 8               ; 12 uses
  %.sroa.8 = alloca [16 x i8], align 8            ; 6 uses
  %i.ah = alloca [24 x i8], align 8               ; 4 uses
  %i.ai = alloca [24 x i8], align 8               ; 7 uses
  %i.aj = alloca [16 x i8], align 8               ; 6 uses
  %i.ak = alloca [16 x i8], align 8               ; 6 uses
  %.sroa.20 = alloca [6 x i8], align 2            ; 6 uses
  %i.al = alloca [24 x i8], align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90339)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90341)
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 19 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !90342, !noalias !90343, !noundef !416 ; 8 uses
  %.promoted.i47 = load i64, ptr %i.am, align 8, !alias.scope !90341, !noalias !90344 ; 2 uses
  %i.ap = icmp ult i64 %.promoted.i47, %i.ao
  br i1 %i.ap, label %.lr.ph.i, label %.loopexit170

.lr.ph.i:                                         ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !90342, !noalias !90343, !nonnull !416, !noundef !416 ; 11 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.as = phi i64 [ %.promoted.i47, %.lr.ph.i ], [ %i.av, %bb.c ] ; 19 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90345), !noalias !90339
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90346), !noalias !90339
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !noalias !90347, !noundef !416 ; 3 uses
  switch i8 %i.au, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.av = add i64 %i.as, 1                        ; 3 uses
  store i64 %i.av, ptr %i.am, align 8, !alias.scope !90348, !noalias !90344
  %exitcond.not.i48 = icmp eq i64 %i.av, %i.ao
  br i1 %exitcond.not.i48, label %.loopexit170, label %bb.b

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.20)
  switch i8 %i.au, label %bb.d [
    i8 110, label %bb.e
    i8 116, label %bb.l
    i8 102, label %bb.s
    i8 45, label %bb.ab
    i8 34, label %bb.ac
    i8 91, label %bb.ad
    i8 123, label %bb.ae
  ]

.loopexit170:                                     ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !90349
  store i64 5, ptr %i.al, align 8, !noalias !90349
  %i.aw = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.al), !noalias !90339, !inline_history !90147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !90349
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aw, ptr %i.ax, align 8, !alias.scope !90339, !noalias !90340
  store i8 -1, ptr %0, align 8, !alias.scope !90339, !noalias !90340
  br label %_RINvXs5_NtCs5QD3CVEMyfH_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2q_5ValueNtB1j_11Deserialize11deserialize12ValueVisitorECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.d:                                             ; preds = %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit
  %i.ay = add i8 %i.au, -48
  %or.cond8.i = icmp ult i8 %i.ay, 10
  br i1 %or.cond8.i, label %bb.ec, label %bb.eb, !prof !447

bb.e:                                             ; preds = %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit
  %i.az = add i64 %i.as, 1                        ; 4 uses
  store i64 %i.az, ptr %i.am, align 8, !alias.scope !90350, !noalias !90339
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90351)
  %umax.i40 = tail call i64 @llvm.umax.i64(i64 %i.az, i64 %i.ao) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90352), !noalias !90339
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90353), !noalias !90339
  %exitcond.not.i42.not = icmp ult i64 %i.az, %i.ao
  br i1 %exitcond.not.i42.not, label %bb.f, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i45

bb.f:                                             ; preds = %bb.e
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !noalias !90354, !noundef !416
  %i.bc = add i64 %i.as, 2                        ; 3 uses
  store i64 %i.bc, ptr %i.am, align 8, !alias.scope !90355, !noalias !90356
  %.not.i43 = icmp eq i8 %i.bb, 117
  br i1 %.not.i43, label %bb.g, label %bb.k, !prof !696

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90357), !noalias !90339
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90358), !noalias !90339
  %exitcond.not.i42.1 = icmp eq i64 %i.bc, %umax.i40
  br i1 %exitcond.not.i42.1, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i45, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !noalias !90359, !noundef !416
  %i.bf = add i64 %i.as, 3                        ; 3 uses
  store i64 %i.bf, ptr %i.am, align 8, !alias.scope !90360, !noalias !90356
  %.not.i43.1 = icmp eq i8 %i.be, 108
  br i1 %.not.i43.1, label %bb.i, label %bb.k, !prof !696

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90361), !noalias !90339
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90362), !noalias !90339
  %exitcond.not.i42.2 = icmp eq i64 %i.bf, %umax.i40
  br i1 %exitcond.not.i42.2, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i45, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !noalias !90363, !noundef !416
  %i.bi = add i64 %i.as, 4
  store i64 %i.bi, ptr %i.am, align 8, !alias.scope !90364, !noalias !90356
  %.not.i43.2 = icmp eq i8 %i.bh, 108
  br i1 %.not.i43.2, label %.thread, label %bb.k, !prof !696

_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i45: ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !90365
  store i64 5, ptr %i.h, align 8, !noalias !90365
  %i.bj = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h), !noalias !90366
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !90365
  br label %bb.af

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !90365
  store i64 9, ptr %i.g, align 8, !noalias !90365
  %i.bk = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g), !noalias !90366
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !90365
  br label %bb.af

bb.l:                                             ; preds = %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit
  %i.bl = add i64 %i.as, 1                        ; 4 uses
  store i64 %i.bl, ptr %i.am, align 8, !alias.scope !90367, !noalias !90339
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90368)
  %umax.i32 = tail call i64 @llvm.umax.i64(i64 %i.bl, i64 %i.ao) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90369), !noalias !90339
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90370), !noalias !90339
  %exitcond.not.i34.not = icmp ult i64 %i.bl, %i.ao
  br i1 %exitcond.not.i34.not, label %bb.m, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37

bb.m:                                             ; preds = %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !noalias !90371, !noundef !416
  %i.bo = add i64 %i.as, 2                        ; 3 uses
  store i64 %i.bo, ptr %i.am, align 8, !alias.scope !90372, !noalias !90373
  %.not.i35 = icmp eq i8 %i.bn, 114
  br i1 %.not.i35, label %bb.n, label %bb.r, !prof !696

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90374), !noalias !90339
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90375), !noalias !90339
  %exitcond.not.i34.1 = icmp eq i64 %i.bo, %umax.i32
  br i1 %exitcond.not.i34.1, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !noalias !90376, !noundef !416
  %i.br = add i64 %i.as, 3                        ; 3 uses
  store i64 %i.br, ptr %i.am, align 8, !alias.scope !90377, !noalias !90373
  %.not.i35.1 = icmp eq i8 %i.bq, 117
  br i1 %.not.i35.1, label %bb.p, label %bb.r, !prof !696

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90378), !noalias !90339
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90379), !noalias !90339
  %exitcond.not.i34.2 = icmp eq i64 %i.br, %umax.i32
  br i1 %exitcond.not.i34.2, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !noalias !90380, !noundef !416
  %i.bu = add i64 %i.as, 4
  store i64 %i.bu, ptr %i.am, align 8, !alias.scope !90381, !noalias !90373
  %.not.i35.2 = icmp eq i8 %i.bt, 101
  br i1 %.not.i35.2, label %.thread, label %bb.r, !prof !696

_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37: ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !90382
  store i64 5, ptr %i.j, align 8, !noalias !90382
  %i.bv = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.j), !noalias !90383
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !90382
  br label %bb.ai

bb.r:                                             ; preds = %bb.q, %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !90382
  store i64 9, ptr %i.i, align 8, !noalias !90382
  %i.bw = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.i), !noalias !90383
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !90382
  br label %bb.ai

bb.s:                                             ; preds = %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit
  %i.bx = add i64 %i.as, 1                        ; 4 uses
  store i64 %i.bx, ptr %i.am, align 8, !alias.scope !90384, !noalias !90339
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90385)
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.bx, i64 %i.ao) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90386), !noalias !90339
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90387), !noalias !90339
  %exitcond.not.i.not = icmp ult i64 %i.bx, %i.ao
  br i1 %exitcond.not.i.not, label %bb.t, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i

bb.t:                                             ; preds = %bb.s
  %i.by = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !noalias !90388, !noundef !416
  %i.ca = add i64 %i.as, 2                        ; 3 uses
  store i64 %i.ca, ptr %i.am, align 8, !alias.scope !90389, !noalias !90390
  %.not.i30 = icmp eq i8 %i.bz, 97
  br i1 %.not.i30, label %bb.u, label %bb.aa, !prof !696

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90391), !noalias !90339
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90392), !noalias !90339
  %exitcond.not.i.1 = icmp eq i64 %i.ca, %umax.i
  br i1 %exitcond.not.i.1, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !noalias !90393, !noundef !416
  %i.cd = add i64 %i.as, 3                        ; 3 uses
  store i64 %i.cd, ptr %i.am, align 8, !alias.scope !90394, !noalias !90390
  %.not.i30.1 = icmp eq i8 %i.cc, 108
  br i1 %.not.i30.1, label %bb.w, label %bb.aa, !prof !696

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90395), !noalias !90339
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90396), !noalias !90339
  %exitcond.not.i.2 = icmp eq i64 %i.cd, %umax.i
  br i1 %exitcond.not.i.2, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !noalias !90397, !noundef !416
  %i.cg = add i64 %i.as, 4                        ; 3 uses
  store i64 %i.cg, ptr %i.am, align 8, !alias.scope !90398, !noalias !90390
  %.not.i30.2 = icmp eq i8 %i.cf, 115
  br i1 %.not.i30.2, label %bb.y, label %bb.aa, !prof !696

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90399), !noalias !90339
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90400), !noalias !90339
  %exitcond.not.i.3 = icmp eq i64 %i.cg, %umax.i
  br i1 %exitcond.not.i.3, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !noalias !90401, !noundef !416
  %i.cj = add i64 %i.as, 5
  store i64 %i.cj, ptr %i.am, align 8, !alias.scope !90402, !noalias !90390
  %.not.i30.3 = icmp eq i8 %i.ci, 101
  br i1 %.not.i30.3, label %.thread, label %bb.aa, !prof !696

_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i: ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !90403
  store i64 5, ptr %i.l, align 8, !noalias !90403
  %i.ck = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.l), !noalias !90404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !90403
  br label %bb.aj

bb.aa:                                            ; preds = %bb.z, %bb.x, %bb.v, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !90403
  store i64 9, ptr %i.k, align 8, !noalias !90403
  %i.cl = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k), !noalias !90404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !90403
  br label %bb.aj

bb.ab:                                            ; preds = %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit
  %i.cm = add i64 %i.as, 1
  store i64 %i.cm, ptr %i.am, align 8, !alias.scope !90405, !noalias !90339
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !90349
  call fastcc void @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.ak, ptr noalias noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext false), !noalias !90339, !inline_history !90147
  %i.cn = load i64, ptr %i.ak, align 8, !range !495, !noalias !90349, !noundef !416 ; 2 uses
  %i.co = icmp eq i64 %i.cn, -1
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  br i1 %i.co, label %bb.ak, label %bb.al

bb.ac:                                            ; preds = %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit
  %i.cq = add i64 %i.as, 1
  store i64 %i.cq, ptr %i.am, align 8, !alias.scope !90406, !noalias !90339
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.cr, align 8, !alias.scope !90340, !noalias !90339
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !90349
  call void @_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ai, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noalias noundef nonnull align 8 dereferenceable(56) %1), !noalias !90339, !inline_history !90147
  %i.cs = load i64, ptr %i.ai, align 8, !range !437, !noalias !90349, !noundef !416 ; 2 uses
  %i.ct = icmp eq i64 %i.cs, -1
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !noalias !90349 ; 3 uses
  br i1 %i.ct, label %bb.ap, label %bb.aq

bb.ad:                                            ; preds = %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.cx = load i8, ptr %i.cw, align 8, !alias.scope !90340, !noalias !90339, !noundef !416
  %i.cy = add i8 %i.cx, -1                        ; 2 uses
  store i8 %i.cy, ptr %i.cw, align 8, !alias.scope !90340, !noalias !90339
  %i.cz = icmp eq i8 %i.cy, 0
  br i1 %i.cz, label %bb.az, label %bb.ba, !prof !426

bb.ae:                                            ; preds = %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.db = load i8, ptr %i.da, align 8, !alias.scope !90340, !noalias !90339, !noundef !416
  %i.dc = add i8 %i.db, -1                        ; 2 uses
  store i8 %i.dc, ptr %i.da, align 8, !alias.scope !90340, !noalias !90339
  %i.dd = icmp eq i8 %i.dc, 0
  br i1 %i.dd, label %bb.ce, label %bb.cf, !prof !426

bb.af:                                            ; preds = %bb.k, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i45
  %.sroa.0.1.i44.ph = phi ptr [ %i.bj, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i45 ], [ %i.bk, %bb.k ]
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i44.ph, ptr %i.de, align 8, !alias.scope !90339, !noalias !90340
  store i8 -1, ptr %0, align 8, !alias.scope !90339, !noalias !90340
  br label %bb.ah

bb.ag:                                            ; preds = %.thread159, %.thread156
  %.sroa.33.0 = phi i64 [ %.sroa.33.3, %.thread159 ], [ %.sroa.33.2, %.thread156 ]
  %.sroa.29.0 = phi i64 [ %.sroa.29.3, %.thread159 ], [ %.sroa.29.2, %.thread156 ]
  %.sroa.20291.0 = phi i64 [ %.sroa.20291.3, %.thread159 ], [ %.sroa.20291.2, %.thread156 ] ; 2 uses
  %.sroa.18.0 = phi i8 [ %.sroa.18.2, %.thread159 ], [ %.sroa.18.1, %.thread156 ]
  %.sroa.0.0 = phi i8 [ %.sroa.0.3, %.thread159 ], [ %.sroa.0.2, %.thread156 ] ; 2 uses
  %i.df = icmp eq i8 %.sroa.0.0, -1
  br i1 %i.df, label %._crit_edge, label %.thread, !prof !90407

._crit_edge:                                      ; preds = %bb.ag
  %i.dg = inttoptr i64 %.sroa.20291.0 to ptr
  br label %bb.ed

bb.ah:                                            ; preds = %bb.ee, %bb.ce, %bb.az, %bb.ap, %bb.ak, %bb.aj, %bb.ai, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20)
  br label %_RINvXs5_NtCs5QD3CVEMyfH_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2q_5ValueNtB1j_11Deserialize11deserialize12ValueVisitorECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.ai:                                            ; preds = %bb.r, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37
  %.sroa.0.1.i36.ph = phi ptr [ %i.bv, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37 ], [ %i.bw, %bb.r ]
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i36.ph, ptr %i.dh, align 8, !alias.scope !90339, !noalias !90340
  store i8 -1, ptr %0, align 8, !alias.scope !90339, !noalias !90340
  br label %bb.ah

bb.aj:                                            ; preds = %bb.aa, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i
  %.sroa.0.1.i.ph = phi ptr [ %i.ck, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i ], [ %i.cl, %bb.aa ]
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph, ptr %i.di, align 8, !alias.scope !90339, !noalias !90340
  store i8 -1, ptr %0, align 8, !alias.scope !90339, !noalias !90340
  br label %bb.ah

bb.ak:                                            ; preds = %bb.ab
  %i.dj = load ptr, ptr %i.cp, align 8, !noalias !90349, !nonnull !416, !align !417, !noundef !416
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dj, ptr %i.dk, align 8, !alias.scope !90339, !noalias !90340
  store i8 -1, ptr %0, align 8, !alias.scope !90339, !noalias !90340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !90349
  br label %bb.ah

bb.al:                                            ; preds = %bb.ab
  %.sroa.4.0.copyload = load i64, ptr %i.cp, align 8, !noalias !90349 ; 3 uses
  switch i64 %i.cn, label %default.unreachable391 [
    i64 0, label %bb.am
    i64 1, label %_RINvMs2_NtCs5QD3CVEMyfH_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserialize12ValueVisitorECsfR8GmIBoxTX_21lance_namespace_impls.exit27
    i64 2, label %bb.ao
  ]

default.unreachable391:                           ; preds = %bb.ef, %bb.al
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.dl = bitcast i64 %.sroa.4.0.copyload to double
  %i.dm = tail call double @llvm.fabs.f64(double %i.dl)
  %i.dn = fcmp ueq double %i.dm, +inf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !90408
  br i1 %i.dn, label %_RINvXNvXNtNtCs5QD3CVEMyfH_10serde_json5value2deNtB8_5ValueNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsfR8GmIBoxTX_21lance_namespace_impls.exit.i21, label %bb.an

bb.an:                                            ; preds = %bb.am
  store i8 0, ptr %i.m, align 8, !noalias !90408
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs5QD3CVEMyfH_10serde_json5value5ValueECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.m), !noalias !90409
  br label %_RINvXNvXNtNtCs5QD3CVEMyfH_10serde_json5value2deNtB8_5ValueNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsfR8GmIBoxTX_21lance_namespace_impls.exit.i21

_RINvXNvXNtNtCs5QD3CVEMyfH_10serde_json5value2deNtB8_5ValueNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsfR8GmIBoxTX_21lance_namespace_impls.exit.i21: ; preds = %bb.an, %bb.am
  %.sroa.08.014.i.i22 = phi i64 [ 2, %bb.an ], [ -1, %bb.am ]
  %.sroa.0.0.i.i23 = phi i8 [ 2, %bb.an ], [ 0, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !90408
  br label %_RINvMs2_NtCs5QD3CVEMyfH_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserialize12ValueVisitorECsfR8GmIBoxTX_21lance_namespace_impls.exit27

bb.ao:                                            ; preds = %bb.al
  %.lobit.i.i16 = lshr i64 %.sroa.4.0.copyload, 63
  br label %_RINvMs2_NtCs5QD3CVEMyfH_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserialize12ValueVisitorECsfR8GmIBoxTX_21lance_namespace_impls.exit27

_RINvMs2_NtCs5QD3CVEMyfH_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserialize12ValueVisitorECsfR8GmIBoxTX_21lance_namespace_impls.exit27: ; preds = %bb.al, %_RINvXNvXNtNtCs5QD3CVEMyfH_10serde_json5value2deNtB8_5ValueNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsfR8GmIBoxTX_21lance_namespace_impls.exit.i21, %bb.ao
  %.sroa.0.0.i.i23.sink = phi i8 [ %.sroa.0.0.i.i23, %_RINvXNvXNtNtCs5QD3CVEMyfH_10serde_json5value2deNtB8_5ValueNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsfR8GmIBoxTX_21lance_namespace_impls.exit.i21 ], [ 2, %bb.ao ], [ 2, %bb.al ]
  %.sroa.08.014.i.i22.sink = phi i64 [ %.sroa.08.014.i.i22, %_RINvXNvXNtNtCs5QD3CVEMyfH_10serde_json5value2deNtB8_5ValueNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsfR8GmIBoxTX_21lance_namespace_impls.exit.i21 ], [ %.lobit.i.i16, %bb.ao ], [ 0, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !90349
  br label %.thread

bb.ap:                                            ; preds = %bb.ac
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cv, ptr %i.do, align 8, !alias.scope !90339, !noalias !90340
  store i8 -1, ptr %0, align 8, !alias.scope !90339, !noalias !90340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !90349
  br label %bb.ah

end_hunk_1
begin_hunk_2_@_RINvXs1_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan3ddlNtB6_19CreateExternalTableNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtB1p_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  tail call void %i.af(ptr noundef nonnull %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ap, i64 noundef %i.ao), !noalias !95319, !inline_history !98
  br label %_RINvXsi_NtCs2bHstFFhpHt_17datafusion_common15table_referenceNtB6_14TableReferenceNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtB1j_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit

_RINvXsi_NtCs2bHstFFhpHt_17datafusion_common15table_referenceNtB6_14TableReferenceNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtB1j_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %_RINvXs4_NtCs2bHstFFhpHt_17datafusion_common8dfschemaNtB6_8DFSchemaNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtB14_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit, %.sink.split.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !416, !noundef !416
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.at = load i64, ptr %i.as, align 8, !noundef !416
  tail call void %i.af(ptr noundef nonnull %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ar, i64 noundef %i.at), !noalias !95322, !inline_history !709
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.av = load ptr, ptr %i.au, align 8, !nonnull !416, !noundef !416
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ax = load i64, ptr %i.aw, align 8, !noundef !416
  tail call void %i.af(ptr noundef nonnull %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.av, i64 noundef %i.ax), !noalias !95323, !inline_history !709
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.az = load ptr, ptr %i.ay, align 8, !nonnull !416, !noundef !416 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bb = load i64, ptr %i.ba, align 8, !noundef !416 ; 3 uses
  tail call void %i.m(ptr noundef nonnull %i.i, i64 noundef %i.bb), !noalias !95324, !inline_history !471
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95325)
  %.idx.i = mul nuw nsw i64 %i.bb, 24
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 %.idx.i
  %i.bd = icmp eq i64 %i.bb, 0
  br i1 %i.bd, label %_RINvYNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceQDNtBH_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RINvXsi_NtCs2bHstFFhpHt_17datafusion_common15table_referenceNtB6_14TableReferenceNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtB1j_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit, %.lr.ph.i
  %.sroa.0.01.i = phi ptr [ %i.be, %.lr.ph.i ], [ %i.az, %_RINvXsi_NtCs2bHstFFhpHt_17datafusion_common15table_referenceNtB6_14TableReferenceNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtB1j_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit ] ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i, i64 24 ; 2 uses
  %i.bf = getelementptr i8, ptr %.sroa.0.01.i, i64 8
  %.sroa.0.0.val.i = load ptr, ptr %i.bf, align 8, !alias.scope !95325, !nonnull !416, !noundef !416
  %i.bg = getelementptr i8, ptr %.sroa.0.01.i, i64 16
  %.sroa.0.0.val3.i = load i64, ptr %i.bg, align 8, !alias.scope !95325, !noundef !416
  tail call void %i.af(ptr noundef nonnull %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.val.i, i64 noundef %.sroa.0.0.val3.i), !noalias !95326, !inline_history !103
  %i.bh = icmp eq ptr %i.be, %i.bc
  br i1 %i.bh, label %_RINvYNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceQDNtBH_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %.lr.ph.i

_RINvYNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceQDNtBH_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %.lr.ph.i, %_RINvXsi_NtCs2bHstFFhpHt_17datafusion_common15table_referenceNtB6_14TableReferenceNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtB1j_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.bj = load i8, ptr %i.bi, align 8, !range !428, !noundef !416
  %i.bk = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8, !invariant.load !416, !noalias !95327, !nonnull !416 ; 2 uses
  tail call void %i.bl(ptr noundef nonnull %i.i, i8 noundef %i.bj), !noalias !95327, !inline_history !708
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bn = load i64, ptr %i.bm, align 8, !range !421, !noundef !416
  %i.bo = icmp ne i64 %i.bn, -1                   ; 2 uses
  %i.bp = zext i1 %i.bo to i64
  tail call void %i.y(ptr noundef nonnull %i.i, i64 noundef %i.bp), !noalias !95328, !inline_history !710
  br i1 %i.bo, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RINvYNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceQDNtBH_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.br = load ptr, ptr %i.bq, align 8, !nonnull !416, !noundef !416
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bt = load i64, ptr %i.bs, align 8, !noundef !416
  tail call void %i.af(ptr noundef nonnull %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.br, i64 noundef %i.bt), !noalias !95329, !inline_history !709
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_RINvYNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceQDNtBH_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bv = load ptr, ptr %i.bu, align 8, !nonnull !416, !noundef !416 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !416 ; 3 uses
  tail call void %i.m(ptr noundef nonnull %i.i, i64 noundef %i.bx), !noalias !95330, !inline_history !471
  %.idx = mul nuw nsw i64 %i.bx, 24
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.idx
  %i.bz = icmp eq i64 %i.bx, 0
  br i1 %i.bz, label %_RINvYINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortENtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceQDNtB1m_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %.lr.ph7

_RINvXsb_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortENtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtB1s_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.loopexit: ; preds = %.lr.ph, %.lr.ph7
  %i.ca = icmp eq ptr %i.cb, %i.by
  br i1 %i.ca, label %_RINvYINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortENtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceQDNtB1m_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.loopexit, label %.lr.ph7

.lr.ph7:                                          ; preds = %bb.d, %_RINvXsb_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortENtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtB1s_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.loopexit
  %.sroa.0.0.i6 = phi ptr [ %i.cb, %_RINvXsb_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortENtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtB1s_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.loopexit ], [ %i.bv, %bb.d ] ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i6, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95331)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95332)
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i6, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !alias.scope !95331, !noalias !95332, !nonnull !416, !noundef !416 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i6, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !95331, !noalias !95332, !noundef !416 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95333)
  %i.cg = load ptr, ptr %1, align 8, !alias.scope !95334, !noalias !95331, !nonnull !416, !noundef !416
  %i.ch = load ptr, ptr %i.j, align 8, !alias.scope !95334, !noalias !95331, !nonnull !416, !align !417, !noundef !416
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 136
  %i.cj = load ptr, ptr %i.ci, align 8, !invariant.load !416, !noalias !95335, !nonnull !416
  tail call void %i.cj(ptr noundef nonnull %i.cg, i64 noundef %i.cf), !noalias !95335, !inline_history !95299
  %.idx8 = shl nuw nsw i64 %i.cf, 7
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx8
  %i.cl = icmp eq i64 %i.cf, 0
  br i1 %i.cl, label %_RINvXsb_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortENtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtB1s_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph7, %.lr.ph
  %.sroa.0.0.i.i5 = phi ptr [ %i.cm, %.lr.ph ], [ %i.cd, %.lr.ph7 ] ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i5, i64 128 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95336)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95337)
  tail call fastcc void @_RINvXs18_NtCs1Jc0oVeks7E_15datafusion_expr4exprNtB7_4ExprNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtBV_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(128) %.sroa.0.0.i.i5, ptr noalias noundef nonnull align 8 dereferenceable(16) %1), !noalias !95331, !inline_history !95303
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i5, i64 112
  %i.co = load i8, ptr %i.cn, align 16, !range !428, !alias.scope !95336, !noalias !95338, !noundef !416
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95339), !noalias !95331
  %i.cp = load ptr, ptr %1, align 8, !alias.scope !95340, !noalias !95341, !nonnull !416, !noundef !416
  %i.cq = load ptr, ptr %i.j, align 8, !alias.scope !95340, !noalias !95341, !nonnull !416, !align !417, !noundef !416
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 40
  %i.cs = load ptr, ptr %i.cr, align 8, !invariant.load !416, !noalias !95342, !nonnull !416
  tail call void %i.cs(ptr noundef nonnull %i.cp, i8 noundef %i.co), !noalias !95342, !inline_history !95306
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i5, i64 113
  %i.cu = load i8, ptr %i.ct, align 1, !range !428, !alias.scope !95336, !noalias !95338, !noundef !416
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95343), !noalias !95331
  %i.cv = load ptr, ptr %1, align 8, !alias.scope !95344, !noalias !95341, !nonnull !416, !noundef !416
  %i.cw = load ptr, ptr %i.j, align 8, !alias.scope !95344, !noalias !95341, !nonnull !416, !align !417, !noundef !416
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 40
  %i.cy = load ptr, ptr %i.cx, align 8, !invariant.load !416, !noalias !95345, !nonnull !416
  tail call void %i.cy(ptr noundef nonnull %i.cv, i8 noundef %i.cu), !noalias !95345, !inline_history !95306
  %i.cz = icmp eq ptr %i.cm, %i.ck
  br i1 %i.cz, label %_RINvXsb_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortENtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtB1s_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.loopexit, label %.lr.ph

_RINvYINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortENtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceQDNtB1m_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.loopexit: ; preds = %_RINvXsb_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortENtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtB1s_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.loopexit
  %.pre = load ptr, ptr %1, align 8, !alias.scope !95346
  %.pre9 = load ptr, ptr %i.j, align 8, !alias.scope !95346
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre9, i64 40
  %.pre10 = load ptr, ptr %.phi.trans.insert, align 8, !invariant.load !416, !noalias !95346
  br label %_RINvYINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortENtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceQDNtB1m_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit

_RINvYINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortENtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceQDNtB1m_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %_RINvYINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortENtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceQDNtB1m_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.loopexit, %bb.d
  %i.da = phi ptr [ %.pre10, %_RINvYINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortENtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceQDNtB1m_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.loopexit ], [ %i.bl, %bb.d ]
  %i.db = phi ptr [ %.pre, %_RINvYINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortENtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceQDNtB1m_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.loopexit ], [ %i.i, %bb.d ]
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 307
  %i.dd = load i8, ptr %i.dc, align 1, !range !428, !noundef !416
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95346)
  tail call void %i.da(ptr noundef nonnull %i.db, i8 noundef %i.dd), !noalias !95346, !inline_history !708
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.df = load i64, ptr %i.de, align 8, !noundef !416
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95347)
  %i.dg = load ptr, ptr %1, align 8, !alias.scope !95347, !nonnull !416, !noundef !416
  %i.dh = load ptr, ptr %i.j, align 8, !alias.scope !95347, !nonnull !416, !align !417, !noundef !416
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 80
  %i.dj = load ptr, ptr %i.di, align 8, !invariant.load !416, !noalias !95347, !nonnull !416
  tail call void %i.dj(ptr noundef nonnull %i.dg, i64 noundef %i.df), !noalias !95347, !inline_history !95348
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvXs1_NtNtCskpEw9nXJLNc_10serde_core2de5implsbNtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB1l_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95395)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95396)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95397)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !95398, !noalias !95399, !noundef !416 ; 6 uses
  %.promoted.i.i = load i64, ptr %i.g, align 8, !alias.scope !95400, !noalias !95401 ; 2 uses
  %i.j = icmp ult i64 %.promoted.i.i, %i.i
  br i1 %i.j, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !95398, !noalias !95399, !nonnull !416, !noundef !416 ; 8 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.m = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.p, %bb.c ] ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95402)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95403)
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !noalias !95404, !noundef !416
  switch i8 %i.o, label %bb.u [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 116, label %bb.d
    i8 102, label %bb.k
  ], !prof !474

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.p = add i64 %i.m, 1                          ; 3 uses
  store i64 %i.p, ptr %i.g, align 8, !alias.scope !95405, !noalias !95401
  %exitcond.not.i.i = icmp eq i64 %i.p, %i.i
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.b

.loopexit.i:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !95406
  store i64 5, ptr %i.f, align 8, !noalias !95406
  %i.q = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f), !noalias !95395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !95406
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %i.r, align 8, !alias.scope !95395, !noalias !95396
  br label %_RINvXs5_NtCs5QD3CVEMyfH_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de12Deserializer16deserialize_boolNtNtB1j_5impls11BoolVisitorECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.d:                                             ; preds = %bb.b
  %i.s = add i64 %i.m, 1                          ; 4 uses
  store i64 %i.s, ptr %i.g, align 8, !alias.scope !95407, !noalias !95395
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95408)
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 %i.i) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95409)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95410)
  %exitcond.not.i10.not.i = icmp ult i64 %i.s, %i.i
  br i1 %exitcond.not.i10.not.i, label %bb.e, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !noalias !95411, !noundef !416
  %i.v = add i64 %i.m, 2                          ; 3 uses
  store i64 %i.v, ptr %i.g, align 8, !alias.scope !95412, !noalias !95413
  %.not.i.i = icmp eq i8 %i.u, 114
  br i1 %.not.i.i, label %bb.f, label %bb.j, !prof !696

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95414)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95415)
  %exitcond.not.i10.1.i = icmp eq i64 %i.v, %umax.i.i
  br i1 %exitcond.not.i10.1.i, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !noalias !95416, !noundef !416
  %i.y = add i64 %i.m, 3                          ; 3 uses
  store i64 %i.y, ptr %i.g, align 8, !alias.scope !95417, !noalias !95413
  %.not.i.1.i = icmp eq i8 %i.x, 117
  br i1 %.not.i.1.i, label %bb.h, label %bb.j, !prof !696

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95418)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95419)
  %exitcond.not.i10.2.i = icmp eq i64 %i.y, %umax.i.i
  br i1 %exitcond.not.i10.2.i, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !noalias !95420, !noundef !416
  %i.ab = add i64 %i.m, 4
  store i64 %i.ab, ptr %i.g, align 8, !alias.scope !95421, !noalias !95413
  %.not.i.2.i = icmp eq i8 %i.aa, 101
  br i1 %.not.i.2.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %bb.j, !prof !696

_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i: ; preds = %bb.h, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !95422
  store i64 5, ptr %i.e, align 8, !noalias !95422
  %i.ac = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e), !noalias !95423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !95422
  br label %bb.t

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !95422
  store i64 9, ptr %i.d, align 8, !noalias !95422
  %i.ad = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d), !noalias !95423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !95422
  br label %bb.t

bb.k:                                             ; preds = %bb.b
  %i.ae = add i64 %i.m, 1                         ; 4 uses
  store i64 %i.ae, ptr %i.g, align 8, !alias.scope !95424, !noalias !95395
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95425)
  %umax.i13.i = tail call i64 @llvm.umax.i64(i64 %i.ae, i64 %i.i) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95426)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95427)
  %exitcond.not.i15.not.i = icmp ult i64 %i.ae, %i.i
  br i1 %exitcond.not.i15.not.i, label %bb.l, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i19.i

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !noalias !95428, !noundef !416
  %i.ah = add i64 %i.m, 2                         ; 3 uses
  store i64 %i.ah, ptr %i.g, align 8, !alias.scope !95429, !noalias !95430
  %.not.i16.i = icmp eq i8 %i.ag, 97
  br i1 %.not.i16.i, label %bb.m, label %bb.s, !prof !696

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95431)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95432)
  %exitcond.not.i15.1.i = icmp eq i64 %i.ah, %umax.i13.i
  br i1 %exitcond.not.i15.1.i, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i19.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !95433, !noundef !416
  %i.ak = add i64 %i.m, 3                         ; 3 uses
  store i64 %i.ak, ptr %i.g, align 8, !alias.scope !95434, !noalias !95430
  %.not.i16.1.i = icmp eq i8 %i.aj, 108
  br i1 %.not.i16.1.i, label %bb.o, label %bb.s, !prof !696

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95435)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95436)
  %exitcond.not.i15.2.i = icmp eq i64 %i.ak, %umax.i13.i
  br i1 %exitcond.not.i15.2.i, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i19.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !noalias !95437, !noundef !416
  %i.an = add i64 %i.m, 4                         ; 3 uses
  store i64 %i.an, ptr %i.g, align 8, !alias.scope !95438, !noalias !95430
  %.not.i16.2.i = icmp eq i8 %i.am, 115
  br i1 %.not.i16.2.i, label %bb.q, label %bb.s, !prof !696

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95439)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95440)
  %exitcond.not.i15.3.i = icmp eq i64 %i.an, %umax.i13.i
  br i1 %exitcond.not.i15.3.i, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i19.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !noalias !95441, !noundef !416
  %i.aq = add i64 %i.m, 5
  store i64 %i.aq, ptr %i.g, align 8, !alias.scope !95442, !noalias !95430
  %.not.i16.3.i = icmp eq i8 %i.ap, 101
  br i1 %.not.i16.3.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %bb.s, !prof !696

_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i19.i: ; preds = %bb.q, %bb.o, %bb.m, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !95443
  store i64 5, ptr %i.c, align 8, !noalias !95443
  %i.ar = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c), !noalias !95444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !95443
  br label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !95443
  store i64 9, ptr %i.b, align 8, !noalias !95443
  %i.as = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !95444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !95443
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i19.i, %bb.j, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i
  %.sroa.0.1.i18.ph.sink.i = phi ptr [ %i.as, %bb.s ], [ %i.ar, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i19.i ], [ %i.ac, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i ], [ %i.ad, %bb.j ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i18.ph.sink.i, ptr %i.at, align 8, !alias.scope !95395, !noalias !95396
  br label %_RINvXs5_NtCs5QD3CVEMyfH_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de12Deserializer16deserialize_boolNtNtB1j_5impls11BoolVisitorECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.u:                                             ; preds = %bb.b
  %i.au = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE17peek_invalid_typeCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @592), !noalias !95395
  %i.av = call fastcc noundef nonnull align 8 ptr @_RINvMs0_NtCs5QD3CVEMyfH_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 %i.au, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1), !noalias !95395
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.aw, align 8, !alias.scope !95395, !noalias !95396
  br label %_RINvXs5_NtCs5QD3CVEMyfH_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de12Deserializer16deserialize_boolNtNtB1j_5impls11BoolVisitorECsfR8GmIBoxTX_21lance_namespace_impls.exit

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %bb.r, %bb.i
  %.sroa.7.0.i = phi i8 [ 1, %bb.i ], [ 0, %bb.r ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.7.0.i, ptr %i.ax, align 1, !alias.scope !95395, !noalias !95396
  br label %_RINvXs5_NtCs5QD3CVEMyfH_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de12Deserializer16deserialize_boolNtNtB1j_5impls11BoolVisitorECsfR8GmIBoxTX_21lance_namespace_impls.exit

_RINvXs5_NtCs5QD3CVEMyfH_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de12Deserializer16deserialize_boolNtNtB1j_5impls11BoolVisitorECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %.loopexit.i, %bb.t, %bb.u, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  %storemerge.sink.i = phi i8 [ 1, %bb.t ], [ 1, %.loopexit.i ], [ 0, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.i ], [ 1, %bb.u ]
  store i8 %storemerge.sink.i, ptr %0, align 8, !alias.scope !95395, !noalias !95396
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, ptr } @_RINvXs1c_NtNtCskpEw9nXJLNc_10serde_core2de5implsjNtB9_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB1m_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 7 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95466)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95467)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95468)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !95469, !noalias !95470, !noundef !416 ; 2 uses
  %.promoted.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !95471, !noalias !95472 ; 2 uses
  %i.l = icmp ult i64 %.promoted.i.i.i, %i.k
  br i1 %i.l, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !95469, !noalias !95470, !nonnull !416, !noundef !416
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.o = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.r, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95473)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95474)
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !noalias !95475, !noundef !416 ; 2 uses
  switch i8 %i.q, label %bb.e [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 45, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.r = add i64 %i.o, 1                          ; 3 uses
  store i64 %i.r, ptr %i.i, align 8, !alias.scope !95476, !noalias !95472
  %exitcond.not.i.i.i = icmp eq i64 %i.r, %i.k
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i, label %bb.b

.loopexit.i.i:                                    ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !95477
  store i64 5, ptr %i.h, align 8, !noalias !95477
  %i.s = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !95477
  br label %_RINvXs5_NtCs5QD3CVEMyfH_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de12Deserializer15deserialize_u64NtNvXs1c_NtB1j_5implsjNtB1j_11Deserialize11deserialize16PrimitiveVisitorECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.d:                                             ; preds = %bb.b
  %i.t = add i64 %i.o, 1
  store i64 %i.t, ptr %i.i, align 8, !alias.scope !95478
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !95477
  call fastcc void @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(56) %0, i1 noundef zeroext false)
  %i.u = load i64, ptr %i.g, align 8, !range !495, !noalias !95477, !noundef !416 ; 2 uses
  %i.v = icmp eq i64 %i.u, -1
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  br i1 %i.v, label %bb.f, label %bb.g, !prof !424

bb.e:                                             ; preds = %bb.b
  %i.x = add i8 %i.q, -48
  %or.cond.i.i = icmp ult i8 %i.x, 10
  br i1 %or.cond.i.i, label %bb.m, label %bb.l, !prof !447

bb.f:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %i.w, align 8, !noalias !95477, !nonnull !416, !align !417, !noundef !416
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !95477
  br label %_RINvXs5_NtCs5QD3CVEMyfH_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de12Deserializer15deserialize_u64NtNvXs1c_NtB1j_5implsjNtB1j_11Deserialize11deserialize16PrimitiveVisitorECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.g:                                             ; preds = %bb.d
  %.sroa.2.0.copyload.i.i = load i64, ptr %i.w, align 8, !noalias !95477 ; 4 uses
  switch i64 %i.u, label %default.unreachable [
    i64 0, label %bb.h
    i64 1, label %_RINvMs2_NtCs5QD3CVEMyfH_10serde_json2deNtB6_12ParserNumber5visitNtNvXs1c_NtNtCskpEw9nXJLNc_10serde_core2de5implsjNtB1b_11Deserialize11deserialize16PrimitiveVisitorECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
    i64 2, label %bb.i
  ]

default.unreachable:                              ; preds = %bb.p, %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !95479
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.2.0.copyload.i.i, ptr %i.z, align 8, !noalias !95479
  store i8 3, ptr %i.e, align 8, !noalias !95479
  %i.aa = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5QD3CVEMyfH_10serde_json5errorNtB5_5ErrorNtNtCskpEw9nXJLNc_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @110), !noalias !95480
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !95479
  br label %_RINvMs2_NtCs5QD3CVEMyfH_10serde_json2deNtB6_12ParserNumber5visitNtNvXs1c_NtNtCskpEw9nXJLNc_10serde_core2de5implsjNtB1b_11Deserialize11deserialize16PrimitiveVisitorECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i

bb.i:                                             ; preds = %bb.g
  %i.ab = icmp sgt i64 %.sroa.2.0.copyload.i.i, -1
  br i1 %i.ab, label %_RINvMs2_NtCs5QD3CVEMyfH_10serde_json2deNtB6_12ParserNumber5visitNtNvXs1c_NtNtCskpEw9nXJLNc_10serde_core2de5implsjNtB1b_11Deserialize11deserialize16PrimitiveVisitorECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %bb.j, !prof !439

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !95479
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.2.0.copyload.i.i, ptr %i.ac, align 8, !noalias !95479
  store i8 2, ptr %i.d, align 8, !noalias !95479
  %i.ad = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5QD3CVEMyfH_10serde_json5errorNtB5_5ErrorNtNtCskpEw9nXJLNc_10serde_core2de5Error13invalid_value(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @110), !noalias !95480
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !95479
  br label %_RINvMs2_NtCs5QD3CVEMyfH_10serde_json2deNtB6_12ParserNumber5visitNtNvXs1c_NtNtCskpEw9nXJLNc_10serde_core2de5implsjNtB1b_11Deserialize11deserialize16PrimitiveVisitorECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i

end_hunk_2
begin_hunk_3_@_RINvXs3_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB6_5FieldNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtBT_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls:bb.a

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvXs3_NtCskAO0uQb8M5a_5prost8encodingINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtB6_6sealed12BytesAdapter12replace_withNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) initializes((16, 24)) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store i64 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val = load i64, ptr %i.b, align 8, !noundef !416 ; 12 uses
  %i.c = load i64, ptr %0, align 8, !range !419, !alias.scope !98482, !noundef !416 ; 2 uses
  %i.d = icmp ugt i64 %.val, %i.c
  br i1 %i.d, label %bb.b, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit, !prof !426

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0, i64 noundef %.val, i64 noundef 1, i64 noundef 1)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit_crit_edge unwind label %bb.e

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit_crit_edge: ; preds = %bb.b
  %.pre = load i64, ptr %i.a, align 8, !alias.scope !98483, !noalias !98484
  %.pre11 = load i64, ptr %0, align 8, !range !419, !alias.scope !98483, !noalias !98484
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit_crit_edge, %bb.a
  %i.e = phi i64 [ %.pre11, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit_crit_edge ], [ %i.c, %bb.a ]
  %i.f = phi i64 [ %.pre, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit_crit_edge ], [ 0, %bb.a ] ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 4 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98485)
  %i.g = sub i64 %i.e, %i.f
  %i.h = icmp ugt i64 %.val, %i.g
  br i1 %i.h, label %bb.c, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i, !prof !426

.loopexit.split-lp.i:                             ; preds = %bb.c
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.split.us.i, %.loopexit.split-lp.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit.us.i, %.loopexit.split.us.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !noalias !98486, !nonnull !416, !noundef !416
  invoke void %i.j(ptr noundef %.sroa.9.0.copyload, ptr noundef %.sroa.5.0.copyload, i64 noundef %.val)
          to label %.body.thread unwind label %bb.d, !noalias !98487, !inline_history !1

bb.c:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.f, i64 noundef %.val, i64 noundef 1, i64 noundef 1)
          to label %.lr.ph.split.us.i unwind label %.loopexit.split-lp.i, !noalias !98484

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit
  %.not9.i = icmp eq i64 %.val, 0
  br i1 %.not9.i, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit._crit_edge.i, label %_RNvXs3_NtCs4XDKJNDGLq7_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance.exit.us.i

.lr.ph.split.us.i:                                ; preds = %bb.c
  %.pre12 = load i64, ptr %i.a, align 8, !alias.scope !98488, !noalias !98484 ; 3 uses
  %.pre13 = load i64, ptr %0, align 8, !range !419, !alias.scope !98488, !noalias !98484
  %.pre14 = sub i64 %.pre13, %.pre12
  %i.k = icmp ugt i64 %.val, %.pre14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98489)
  br i1 %i.k, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.us.i, label %_RNvXs3_NtCs4XDKJNDGLq7_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance.exit.us.i, !prof !98490

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.us.i: ; preds = %.lr.ph.split.us.i
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.pre12, i64 noundef %.val, i64 noundef 1, i64 noundef 1)
          to label %.noexc5.us.i unwind label %.loopexit.split.us.i, !noalias !98484

.noexc5.us.i:                                     ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.us.i
  %i.l = load i64, ptr %i.a, align 8, !alias.scope !98491, !noalias !98484, !noundef !416
  br label %_RNvXs3_NtCs4XDKJNDGLq7_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance.exit.us.i

_RNvXs3_NtCs4XDKJNDGLq7_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance.exit.us.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i, %.noexc5.us.i, %.lr.ph.split.us.i
  %.sink16.i = phi i64 [ %i.l, %.noexc5.us.i ], [ %.pre12, %.lr.ph.split.us.i ], [ %i.f, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = icmp sgt i64 %.sink16.i, -1
  tail call void @llvm.assume(i1 %i.n)
  %i.o = load ptr, ptr %i.m, align 8, !alias.scope !98491, !noalias !98484, !nonnull !416, !noundef !416
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sink16.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr nonnull readonly align 1 %.sroa.5.0.copyload, i64 %.val, i1 false), !noalias !98492
  %i.q = add i64 %.sink16.i, %.val
  store i64 %i.q, ptr %i.a, align 8, !alias.scope !98491, !noalias !98484
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 %.val
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit._crit_edge.i

.loopexit.split.us.i:                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.us.i
  %lpad.loopexit.us.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit._crit_edge.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i, %_RNvXs3_NtCs4XDKJNDGLq7_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance.exit.us.i
  %i.s = phi ptr [ %i.r, %_RNvXs3_NtCs4XDKJNDGLq7_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance.exit.us.i ], [ %.sroa.5.0.copyload, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !noalias !98493, !nonnull !416, !noundef !416
  tail call void %i.u(ptr noundef %.sroa.9.0.copyload, ptr noundef %i.s, i64 noundef 0), !inline_history !98477
  ret void

bb.d:                                             ; preds = %.loopexit.i
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !98487
  unreachable

.body.thread:                                     ; preds = %bb.e, %.loopexit.i
  %eh.lpad-body8 = phi { ptr, i32 } [ %i.w, %bb.e ], [ %lpad.phi.i, %.loopexit.i ]
  resume { ptr, i32 } %eh.lpad-body8

bb.e:                                             ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98494)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98495)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !98496, !noundef !416
  %i.z = load ptr, ptr %1, align 8, !alias.scope !98496, !nonnull !416, !align !417, !noundef !416
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !98496, !nonnull !416, !noundef !416
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !98496, !noundef !416
  invoke void %i.ab(ptr noundef %i.y, ptr noundef %i.ad, i64 noundef %.val)
          to label %.body.thread unwind label %bb.f, !inline_history !1

bb.f:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs3_NtCskpEw9nXJLNc_10serde_core2deINtNtCscI6d9CVNmLh_4core6marker11PhantomDataINtNtBG_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB1K_6string6StringEEENtB6_15DeserializeSeed11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB3g_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98534)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98535)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98536)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98537)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98538)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !98539, !noalias !98540, !noundef !416 ; 4 uses
  %.promoted.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !98541, !noalias !98542 ; 2 uses
  %i.g = icmp ult i64 %.promoted.i.i.i, %i.f
  br i1 %i.g, label %.lr.ph.i.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !98539, !noalias !98540, !nonnull !416, !noundef !416 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.j = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.m, %bb.c ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98543)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98544)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !noalias !98545, !noundef !416
  switch i8 %i.l, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 110, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.m = add i64 %i.j, 1                          ; 3 uses
  store i64 %i.m, ptr %i.d, align 8, !alias.scope !98546, !noalias !98542
  %exitcond.not.i.i.i = icmp eq i64 %i.m, %i.f
  br i1 %exitcond.not.i.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i, label %bb.b

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i: ; preds = %bb.c, %bb.b, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98547)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !98548
  call fastcc void @_RINvXsh_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBO_6string6StringENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2d_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(56) %1), !noalias !98549
  %i.n = load i64, ptr %i.c, align 8, !range !421, !noalias !98548, !noundef !416
  %i.o = icmp eq i64 %i.n, -1
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !noalias !98548, !nonnull !416, !align !417, !noundef !416
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %i.r, align 8, !alias.scope !98549, !noalias !98550
  store i64 -2, ptr %0, align 8, !alias.scope !98549, !noalias !98550
  br label %_RINvXsd_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtB6_13OptionVisitorINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB19_6string6StringEENtB8_7Visitor10visit_someQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2u_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

bb.e:                                             ; preds = %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !98550
  br label %_RINvXsd_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtB6_13OptionVisitorINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB19_6string6StringEENtB8_7Visitor10visit_someQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2u_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

_RINvXsd_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtB6_13OptionVisitorINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB19_6string6StringEENtB8_7Visitor10visit_someQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2u_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !98548
  br label %_RINvXse_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB1q_6string6StringEENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2R_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.f:                                             ; preds = %bb.b
  %i.s = add i64 %i.j, 1                          ; 4 uses
  store i64 %i.s, ptr %i.d, align 8, !alias.scope !98551, !noalias !98552
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98553)
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 %i.f) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98554)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98555)
  %exitcond.not.i9.not.i.i = icmp ult i64 %i.s, %i.f
  br i1 %exitcond.not.i9.not.i.i, label %bb.g, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !noalias !98556, !noundef !416
  %i.v = add i64 %i.j, 2                          ; 3 uses
  store i64 %i.v, ptr %i.d, align 8, !alias.scope !98557, !noalias !98558
  %.not.i.i.i = icmp eq i8 %i.u, 117
  br i1 %.not.i.i.i, label %bb.h, label %bb.l, !prof !696

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98559)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98560)
  %exitcond.not.i9.1.i.i = icmp eq i64 %i.v, %umax.i.i.i
  br i1 %exitcond.not.i9.1.i.i, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !noalias !98561, !noundef !416
  %i.y = add i64 %i.j, 3                          ; 3 uses
  store i64 %i.y, ptr %i.d, align 8, !alias.scope !98562, !noalias !98558
  %.not.i.1.i.i = icmp eq i8 %i.x, 108
  br i1 %.not.i.1.i.i, label %bb.j, label %bb.l, !prof !696

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98563)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98564)
  %exitcond.not.i9.2.i.i = icmp eq i64 %i.y, %umax.i.i.i
  br i1 %exitcond.not.i9.2.i.i, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !noalias !98565, !noundef !416
  %i.ab = add i64 %i.j, 4
  store i64 %i.ab, ptr %i.d, align 8, !alias.scope !98566, !noalias !98558
  %.not.i.2.i.i = icmp eq i8 %i.aa, 108
  br i1 %.not.i.2.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %bb.l, !prof !696

_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i: ; preds = %bb.j, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !98567
  store i64 5, ptr %i.b, align 8, !noalias !98567
  %i.ac = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !98568
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !98567
  br label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.i, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !98567
  store i64 9, ptr %i.a, align 8, !noalias !98567
  %i.ad = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a), !noalias !98568
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !98567
  br label %bb.m

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %bb.k
  store i64 -1, ptr %0, align 8, !alias.scope !98569, !noalias !98570
  br label %_RINvXse_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB1q_6string6StringEENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2R_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.m:                                             ; preds = %bb.l, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i
  %.sroa.0.1.i.ph.i.i = phi ptr [ %i.ac, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i ], [ %i.ad, %bb.l ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph.i.i, ptr %i.ae, align 8, !alias.scope !98552, !noalias !98570
  store i64 -2, ptr %0, align 8, !alias.scope !98552, !noalias !98570
  br label %_RINvXse_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB1q_6string6StringEENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2R_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit

_RINvXse_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB1q_6string6StringEENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2R_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %_RINvXsd_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtB6_13OptionVisitorINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB19_6string6StringEENtB8_7Visitor10visit_someQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2u_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, %bb.m
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs3_NtCskpEw9nXJLNc_10serde_core2deINtNtCscI6d9CVNmLh_4core6marker11PhantomDataINtNtBG_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VechEEENtB6_15DeserializeSeed11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2V_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98608)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98609)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98610)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98611)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98612)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !98613, !noalias !98614, !noundef !416 ; 4 uses
  %.promoted.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !98615, !noalias !98616 ; 2 uses
  %i.g = icmp ult i64 %.promoted.i.i.i, %i.f
  br i1 %i.g, label %.lr.ph.i.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !98613, !noalias !98614, !nonnull !416, !noundef !416 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.j = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.m, %bb.c ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98617)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98618)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !noalias !98619, !noundef !416
  switch i8 %i.l, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 110, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.m = add i64 %i.j, 1                          ; 3 uses
  store i64 %i.m, ptr %i.d, align 8, !alias.scope !98620, !noalias !98616
  %exitcond.not.i.i.i = icmp eq i64 %i.m, %i.f
  br i1 %exitcond.not.i.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i, label %bb.b

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i: ; preds = %bb.c, %bb.b, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98621)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !98622
  call fastcc void @_RINvXsh_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCs40k4W9msRzi_5alloc3vec3VechENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB1T_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(56) %1), !noalias !98623
  %i.n = load i64, ptr %i.c, align 8, !range !421, !noalias !98622, !noundef !416
  %i.o = icmp eq i64 %i.n, -1
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !noalias !98622, !nonnull !416, !align !417, !noundef !416
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %i.r, align 8, !alias.scope !98623, !noalias !98624
  store i64 -2, ptr %0, align 8, !alias.scope !98623, !noalias !98624
  br label %_RINvXsd_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtB6_13OptionVisitorINtNtCs40k4W9msRzi_5alloc3vec3VechEENtB8_7Visitor10visit_someQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB29_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

bb.e:                                             ; preds = %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !98624
  br label %_RINvXsd_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtB6_13OptionVisitorINtNtCs40k4W9msRzi_5alloc3vec3VechEENtB8_7Visitor10visit_someQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB29_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

_RINvXsd_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtB6_13OptionVisitorINtNtCs40k4W9msRzi_5alloc3vec3VechEENtB8_7Visitor10visit_someQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB29_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !98622
  br label %_RINvXse_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VechEENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2w_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.f:                                             ; preds = %bb.b
  %i.s = add i64 %i.j, 1                          ; 4 uses
  store i64 %i.s, ptr %i.d, align 8, !alias.scope !98625, !noalias !98626
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98627)
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 %i.f) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98628)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98629)
  %exitcond.not.i9.not.i.i = icmp ult i64 %i.s, %i.f
  br i1 %exitcond.not.i9.not.i.i, label %bb.g, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !noalias !98630, !noundef !416
  %i.v = add i64 %i.j, 2                          ; 3 uses
  store i64 %i.v, ptr %i.d, align 8, !alias.scope !98631, !noalias !98632
  %.not.i.i.i = icmp eq i8 %i.u, 117
  br i1 %.not.i.i.i, label %bb.h, label %bb.l, !prof !696

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98633)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98634)
  %exitcond.not.i9.1.i.i = icmp eq i64 %i.v, %umax.i.i.i
  br i1 %exitcond.not.i9.1.i.i, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !noalias !98635, !noundef !416
  %i.y = add i64 %i.j, 3                          ; 3 uses
  store i64 %i.y, ptr %i.d, align 8, !alias.scope !98636, !noalias !98632
  %.not.i.1.i.i = icmp eq i8 %i.x, 108
  br i1 %.not.i.1.i.i, label %bb.j, label %bb.l, !prof !696

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98637)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98638)
  %exitcond.not.i9.2.i.i = icmp eq i64 %i.y, %umax.i.i.i
  br i1 %exitcond.not.i9.2.i.i, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !noalias !98639, !noundef !416
  %i.ab = add i64 %i.j, 4
  store i64 %i.ab, ptr %i.d, align 8, !alias.scope !98640, !noalias !98632
  %.not.i.2.i.i = icmp eq i8 %i.aa, 108
  br i1 %.not.i.2.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %bb.l, !prof !696

_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i: ; preds = %bb.j, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !98641
  store i64 5, ptr %i.b, align 8, !noalias !98641
  %i.ac = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !98642
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !98641
  br label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.i, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !98641
  store i64 9, ptr %i.a, align 8, !noalias !98641
  %i.ad = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a), !noalias !98642
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !98641
  br label %bb.m

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %bb.k
  store i64 -1, ptr %0, align 8, !alias.scope !98643, !noalias !98644
  br label %_RINvXse_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VechEENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2w_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.m:                                             ; preds = %bb.l, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i
  %.sroa.0.1.i.ph.i.i = phi ptr [ %i.ac, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i ], [ %i.ad, %bb.l ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph.i.i, ptr %i.ae, align 8, !alias.scope !98626, !noalias !98644
  store i64 -2, ptr %0, align 8, !alias.scope !98626, !noalias !98644
  br label %_RINvXse_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VechEENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2w_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit

_RINvXse_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VechEENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2w_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %_RINvXsd_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtB6_13OptionVisitorINtNtCs40k4W9msRzi_5alloc3vec3VechEENtB8_7Visitor10visit_someQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB29_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, %bb.m
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs3_NtCskpEw9nXJLNc_10serde_core2deINtNtCscI6d9CVNmLh_4core6marker11PhantomDataINtNtBG_6option6OptionINtNtCsjDo0Ci2kbYz_6chrono8datetime8DateTimeNtNtNtB1K_6offset3utc3UtcEEENtB6_15DeserializeSeed11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB3u_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 4                ; 6 uses
  %i.e = alloca [16 x i8], align 4                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98710)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98711)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98712)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98713)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98714)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !98715, !noalias !98716, !noundef !416 ; 6 uses
  %.promoted.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !98717, !noalias !98718 ; 3 uses
  %i.k = icmp ult i64 %.promoted.i.i.i, %i.j
  br i1 %i.k, label %.lr.ph.i.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !98715, !noalias !98716, !nonnull !416, !noundef !416 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.n = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.q, %bb.c ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98719)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98720)
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !noalias !98721, !noundef !416
  switch i8 %i.p, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 110, label %bb.t
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.q = add i64 %i.n, 1                          ; 3 uses
  store i64 %i.q, ptr %i.h, align 8, !alias.scope !98722, !noalias !98718
  %exitcond.not.i.i.i = icmp eq i64 %i.q, %i.j
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i.i.i.i, label %bb.b

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i: ; preds = %bb.b, %bb.a
  %.promoted.i.i.i.i.i.i = phi i64 [ %.promoted.i.i.i, %bb.a ], [ %i.n, %bb.b ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98723)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98724)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98725)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98726)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98727)
  %i.r = icmp ult i64 %.promoted.i.i.i.i.i.i, %i.j
  br i1 %i.r, label %.lr.ph.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !98728, !noalias !98729, !nonnull !416, !noundef !416
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i
  %i.u = phi i64 [ %.promoted.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.x, %bb.e ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98730)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98731)
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !noalias !98732, !noundef !416
  switch i8 %i.w, label %bb.g [
    i8 32, label %bb.e
    i8 10, label %bb.e
    i8 9, label %bb.e
    i8 13, label %bb.e
    i8 34, label %bb.f
  ], !prof !440

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  %i.x = add i64 %i.u, 1                          ; 3 uses
  store i64 %i.x, ptr %i.h, align 8, !alias.scope !98733, !noalias !98734
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.x, %i.j
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %bb.d

.loopexit.i.i.i.i.i:                              ; preds = %bb.c, %bb.e, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !98735
  store i64 5, ptr %i.g, align 8, !noalias !98735
  %i.y = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g), !noalias !98736
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !98735
  br label %bb.r

bb.f:                                             ; preds = %bb.d
  %i.z = add i64 %i.u, 1
  store i64 %i.z, ptr %i.h, align 8, !alias.scope !98737, !noalias !98736
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.aa, align 8, !alias.scope !98738, !noalias !98736
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !98735
  call void @_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(56) %1), !noalias !98736
  %i.ab = load i64, ptr %i.f, align 8, !range !437, !noalias !98735, !noundef !416 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, -1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !noalias !98735 ; 4 uses
  br i1 %i.ac, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.af = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE17peek_invalid_typeCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @587), !noalias !98736
  br label %bb.q

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !98735
  br label %bb.r

bb.i:                                             ; preds = %bb.f
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !98735 ; 2 uses
  %i.ag = trunc nuw i64 %i.ab to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ae) ]
  br i1 %i.ag, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !98739
  call void @_RNvXNtNtCsjDo0Ci2kbYz_6chrono6format5parseINtNtB6_8datetime8DateTimeNtNtNtB6_6offset5fixed11FixedOffsetENtNtNtCscI6d9CVNmLh_4core3str6traits7FromStr8from_str(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ae, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i), !noalias !98740
  %i.ah = load i32, ptr %i.e, align 4, !noalias !98739, !noundef !416 ; 2 uses
  %i.ai = icmp eq i32 %i.ah, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  br i1 %i.ai, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ak = load i8, ptr %i.aj, align 4, !range !552, !noalias !98739, !noundef !416
  %i.al = call fastcc noundef nonnull align 8 ptr @_RINvXs6_NtCs5QD3CVEMyfH_10serde_json5errorNtB6_5ErrorNtNtCskpEw9nXJLNc_10serde_core2de5Error6customNtNtCsjDo0Ci2kbYz_6chrono6format10ParseErrorECsfR8GmIBoxTX_21lance_namespace_impls(i8 noundef %i.ak), !noalias !98740
  br label %_RINvXs_NtNtCsjDo0Ci2kbYz_6chrono8datetime5serdeNtB5_15DateTimeVisitorNtNtCskpEw9nXJLNc_10serde_core2de7Visitor9visit_strNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %.sroa.10.0.copyload14.i.i.i.i.i = load i32, ptr %i.aj, align 4, !noalias !98741
  %.sroa.1017.0..sroa_idx18.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.1017.0.copyload19.i.i.i.i.i = load ptr, ptr %.sroa.1017.0..sroa_idx18.i.i.i.i.i, align 4, !noalias !98741
  br label %_RINvXs_NtNtCsjDo0Ci2kbYz_6chrono8datetime5serdeNtB5_15DateTimeVisitorNtNtCskpEw9nXJLNc_10serde_core2de7Visitor9visit_strNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i

_RINvXs_NtNtCsjDo0Ci2kbYz_6chrono8datetime5serdeNtB5_15DateTimeVisitorNtNtCskpEw9nXJLNc_10serde_core2de7Visitor9visit_strNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.sroa.10.1.i.i.i.i.i = phi i32 [ undef, %bb.k ], [ %.sroa.10.0.copyload14.i.i.i.i.i, %bb.l ]
  %.sroa.1017.2.i.i.i.i.i = phi ptr [ %i.al, %bb.k ], [ %.sroa.1017.0.copyload19.i.i.i.i.i, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !98739
  br label %bb.p

bb.m:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !98742
  call void @_RNvXNtNtCsjDo0Ci2kbYz_6chrono6format5parseINtNtB6_8datetime8DateTimeNtNtNtB6_6offset5fixed11FixedOffsetENtNtNtCscI6d9CVNmLh_4core3str6traits7FromStr8from_str(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ae, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i), !noalias !98743
  %i.am = load i32, ptr %i.d, align 4, !noalias !98742, !noundef !416 ; 2 uses
  %i.an = icmp eq i32 %i.am, 0
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  br i1 %i.an, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ap = load i8, ptr %i.ao, align 4, !range !552, !noalias !98742, !noundef !416
  %i.aq = call fastcc noundef nonnull align 8 ptr @_RINvXs6_NtCs5QD3CVEMyfH_10serde_json5errorNtB6_5ErrorNtNtCskpEw9nXJLNc_10serde_core2de5Error6customNtNtCsjDo0Ci2kbYz_6chrono6format10ParseErrorECsfR8GmIBoxTX_21lance_namespace_impls(i8 noundef %i.ap), !noalias !98743
  br label %_RINvYNtNtNtCsjDo0Ci2kbYz_6chrono8datetime5serde15DateTimeVisitorNtNtCskpEw9nXJLNc_10serde_core2de7Visitor18visit_borrowed_strNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %.sroa.10.0.copyload16.i.i.i.i.i = load i32, ptr %i.ao, align 4, !noalias !98744
  %.sroa.1017.0..sroa_idx20.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.1017.0.copyload21.i.i.i.i.i = load ptr, ptr %.sroa.1017.0..sroa_idx20.i.i.i.i.i, align 4, !noalias !98744
  br label %_RINvYNtNtNtCsjDo0Ci2kbYz_6chrono8datetime5serde15DateTimeVisitorNtNtCskpEw9nXJLNc_10serde_core2de7Visitor18visit_borrowed_strNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i

_RINvYNtNtNtCsjDo0Ci2kbYz_6chrono8datetime5serde15DateTimeVisitorNtNtCskpEw9nXJLNc_10serde_core2de7Visitor18visit_borrowed_strNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i: ; preds = %bb.o, %bb.n
  %.sroa.10.2.i.i.i.i.i = phi i32 [ undef, %bb.n ], [ %.sroa.10.0.copyload16.i.i.i.i.i, %bb.o ]
  %.sroa.1017.3.i.i.i.i.i = phi ptr [ %i.aq, %bb.n ], [ %.sroa.1017.0.copyload21.i.i.i.i.i, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !98742
  br label %bb.p

bb.p:                                             ; preds = %_RINvYNtNtNtCsjDo0Ci2kbYz_6chrono8datetime5serde15DateTimeVisitorNtNtCskpEw9nXJLNc_10serde_core2de7Visitor18visit_borrowed_strNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i, %_RINvXs_NtNtCsjDo0Ci2kbYz_6chrono8datetime5serdeNtB5_15DateTimeVisitorNtNtCskpEw9nXJLNc_10serde_core2de7Visitor9visit_strNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i = phi i32 [ %.sroa.10.1.i.i.i.i.i, %_RINvXs_NtNtCsjDo0Ci2kbYz_6chrono8datetime5serdeNtB5_15DateTimeVisitorNtNtCskpEw9nXJLNc_10serde_core2de7Visitor9visit_strNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i ], [ %.sroa.10.2.i.i.i.i.i, %_RINvYNtNtNtCsjDo0Ci2kbYz_6chrono8datetime5serde15DateTimeVisitorNtNtCskpEw9nXJLNc_10serde_core2de7Visitor18visit_borrowed_strNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i ]
  %.sroa.010.0.i.i.i.i.i = phi i32 [ %i.ah, %_RINvXs_NtNtCsjDo0Ci2kbYz_6chrono8datetime5serdeNtB5_15DateTimeVisitorNtNtCskpEw9nXJLNc_10serde_core2de7Visitor9visit_strNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i ], [ %i.am, %_RINvYNtNtNtCsjDo0Ci2kbYz_6chrono8datetime5serde15DateTimeVisitorNtNtCskpEw9nXJLNc_10serde_core2de7Visitor18visit_borrowed_strNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.1017.0.i.i.i.i.i = phi ptr [ %.sroa.1017.2.i.i.i.i.i, %_RINvXs_NtNtCsjDo0Ci2kbYz_6chrono8datetime5serdeNtB5_15DateTimeVisitorNtNtCskpEw9nXJLNc_10serde_core2de7Visitor9visit_strNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i ], [ %.sroa.1017.3.i.i.i.i.i, %_RINvYNtNtNtCsjDo0Ci2kbYz_6chrono8datetime5serde15DateTimeVisitorNtNtCskpEw9nXJLNc_10serde_core2de7Visitor18visit_borrowed_strNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !98735
  %i.ar = icmp eq i32 %.sroa.010.0.i.i.i.i.i, 0
  br i1 %i.ar, label %bb.q, label %bb.s, !prof !426

bb.q:                                             ; preds = %bb.p, %bb.g
  %.sroa.1017.1.i.i.i.i.i = phi ptr [ %.sroa.1017.0.i.i.i.i.i, %bb.p ], [ %i.af, %bb.g ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1017.1.i.i.i.i.i) ]
  %i.as = call fastcc noundef nonnull align 8 ptr @_RINvMs0_NtCs5QD3CVEMyfH_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 %.sroa.1017.1.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1), !noalias !98736
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.h, %.loopexit.i.i.i.i.i
  %.sroa.6.0.ph.i.i.i = phi ptr [ %i.as, %bb.q ], [ %i.y, %.loopexit.i.i.i.i.i ], [ %i.ae, %bb.h ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.ph.i.i.i) ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.0.ph.i.i.i, ptr %i.at, align 8, !alias.scope !98745, !noalias !98746
  br label %_RINvXse_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionINtNtCsjDo0Ci2kbYz_6chrono8datetime8DateTimeNtNtNtB1q_6offset3utc3UtcEENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB35_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.s:                                             ; preds = %bb.p
  %i.au = ptrtoint ptr %.sroa.1017.0.i.i.i.i.i to i64
  %.sroa.6.8.insert.ext.i.i.i = zext i32 %.sroa.10.0.i.i.i.i.i to i64
  %.sroa.6.12.insert.ext.i.i.i = shl i64 %i.au, 32
  %.sroa.6.12.insert.insert.i.i.i = or disjoint i64 %.sroa.6.12.insert.ext.i.i.i, %.sroa.6.8.insert.ext.i.i.i
  %i.av = inttoptr i64 %.sroa.6.12.insert.insert.i.i.i to ptr
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.010.0.i.i.i.i.i, ptr %i.aw, align 4, !alias.scope !98745, !noalias !98746
  %.sroa.44.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %.sroa.44.0..sroa_idx.i.i.i, align 8, !alias.scope !98745, !noalias !98746
  br label %_RINvXse_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionINtNtCsjDo0Ci2kbYz_6chrono8datetime8DateTimeNtNtNtB1q_6offset3utc3UtcEENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB35_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.t:                                             ; preds = %bb.b
  %i.ax = add i64 %i.n, 1                         ; 4 uses
  store i64 %i.ax, ptr %i.h, align 8, !alias.scope !98747, !noalias !98748
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98749)
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ax, i64 %i.j) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98750)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98751)
  %exitcond.not.i9.not.i.i = icmp ult i64 %i.ax, %i.j
  br i1 %exitcond.not.i9.not.i.i, label %bb.u, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i

bb.u:                                             ; preds = %bb.t
  %i.ay = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !noalias !98752, !noundef !416
  %i.ba = add i64 %i.n, 2                         ; 3 uses
  store i64 %i.ba, ptr %i.h, align 8, !alias.scope !98753, !noalias !98754
  %.not.i.i.i = icmp eq i8 %i.az, 117
  br i1 %.not.i.i.i, label %bb.v, label %bb.z, !prof !696

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98755)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98756)
  %exitcond.not.i9.1.i.i = icmp eq i64 %i.ba, %umax.i.i.i
  br i1 %exitcond.not.i9.1.i.i, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bb = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !98757, !noundef !416
  %i.bd = add i64 %i.n, 3                         ; 3 uses
  store i64 %i.bd, ptr %i.h, align 8, !alias.scope !98758, !noalias !98754
  %.not.i.1.i.i = icmp eq i8 %i.bc, 108
  br i1 %.not.i.1.i.i, label %bb.x, label %bb.z, !prof !696

bb.x:                                             ; preds = %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98759)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98760)
  %exitcond.not.i9.2.i.i = icmp eq i64 %i.bd, %umax.i.i.i
  br i1 %exitcond.not.i9.2.i.i, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.be = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !98761, !noundef !416
  %i.bg = add i64 %i.n, 4
  store i64 %i.bg, ptr %i.h, align 8, !alias.scope !98762, !noalias !98754
  %.not.i.2.i.i = icmp eq i8 %i.bf, 108
  br i1 %.not.i.2.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %bb.z, !prof !696

_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i: ; preds = %bb.x, %bb.v, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !98763
  store i64 5, ptr %i.c, align 8, !noalias !98763
  %i.bh = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c), !noalias !98764
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !98763
  br label %bb.aa

bb.z:                                             ; preds = %bb.y, %bb.w, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !98763
  store i64 9, ptr %i.b, align 8, !noalias !98763
  %i.bi = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !98764
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !98763
  br label %bb.aa

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %bb.y
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.bj, align 4, !alias.scope !98765, !noalias !98766
  br label %_RINvXse_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionINtNtCsjDo0Ci2kbYz_6chrono8datetime8DateTimeNtNtNtB1q_6offset3utc3UtcEENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB35_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.aa:                                            ; preds = %bb.z, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i
  %.sroa.0.1.i.ph.i.i = phi ptr [ %i.bh, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i ], [ %i.bi, %bb.z ]
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph.i.i, ptr %i.bk, align 8, !alias.scope !98748, !noalias !98766
  br label %_RINvXse_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionINtNtCsjDo0Ci2kbYz_6chrono8datetime8DateTimeNtNtNtB1q_6offset3utc3UtcEENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB35_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit

_RINvXse_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionINtNtCsjDo0Ci2kbYz_6chrono8datetime8DateTimeNtNtNtB1q_6offset3utc3UtcEENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB35_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.r, %bb.s, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, %bb.aa
  %.sink.i.i = phi i32 [ 0, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i ], [ 1, %bb.aa ], [ 0, %bb.s ], [ 1, %bb.r ]
  store i32 %.sink.i.i, ptr %0, align 8, !alias.scope !98748, !noalias !98766
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs3_NtCskpEw9nXJLNc_10serde_core2deINtNtCscI6d9CVNmLh_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEENtB6_15DeserializeSeed11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2Y_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98804)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98805)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98806)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98807)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98808)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !98809, !noalias !98810, !noundef !416 ; 4 uses
  %.promoted.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !98811, !noalias !98812 ; 2 uses
  %i.g = icmp ult i64 %.promoted.i.i.i, %i.f
  br i1 %i.g, label %.lr.ph.i.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !98809, !noalias !98810, !nonnull !416, !noundef !416 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.j = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.m, %bb.c ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98813)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98814)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !noalias !98815, !noundef !416
  switch i8 %i.l, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 110, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.m = add i64 %i.j, 1                          ; 3 uses
  store i64 %i.m, ptr %i.d, align 8, !alias.scope !98816, !noalias !98812
  %exitcond.not.i.i.i = icmp eq i64 %i.m, %i.f
  br i1 %exitcond.not.i.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i, label %bb.b

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i: ; preds = %bb.c, %bb.b, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98817)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !98818
  call fastcc void @_RINvXs6_NtNtCskpEw9nXJLNc_10serde_core2de5implsNtNtCs40k4W9msRzi_5alloc6string6StringNtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB1W_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(56) %1), !noalias !98819
  %i.n = load i64, ptr %i.c, align 8, !range !421, !noalias !98818, !noundef !416
  %i.o = icmp eq i64 %i.n, -1
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !noalias !98818, !nonnull !416, !align !417, !noundef !416
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %i.r, align 8, !alias.scope !98819, !noalias !98820
  store i64 -2, ptr %0, align 8, !alias.scope !98819, !noalias !98820
  br label %_RINvXsd_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs40k4W9msRzi_5alloc6string6StringENtB8_7Visitor10visit_someQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2c_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

bb.e:                                             ; preds = %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !98820
  br label %_RINvXsd_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs40k4W9msRzi_5alloc6string6StringENtB8_7Visitor10visit_someQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2c_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

_RINvXsd_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs40k4W9msRzi_5alloc6string6StringENtB8_7Visitor10visit_someQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2c_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !98818
  br label %_RINvXse_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2z_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.f:                                             ; preds = %bb.b
  %i.s = add i64 %i.j, 1                          ; 4 uses
  store i64 %i.s, ptr %i.d, align 8, !alias.scope !98821, !noalias !98822
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98823)
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 %i.f) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98824)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98825)
  %exitcond.not.i9.not.i.i = icmp ult i64 %i.s, %i.f
  br i1 %exitcond.not.i9.not.i.i, label %bb.g, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !noalias !98826, !noundef !416
  %i.v = add i64 %i.j, 2                          ; 3 uses
  store i64 %i.v, ptr %i.d, align 8, !alias.scope !98827, !noalias !98828
  %.not.i.i.i = icmp eq i8 %i.u, 117
  br i1 %.not.i.i.i, label %bb.h, label %bb.l, !prof !696

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98829)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98830)
  %exitcond.not.i9.1.i.i = icmp eq i64 %i.v, %umax.i.i.i
  br i1 %exitcond.not.i9.1.i.i, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !noalias !98831, !noundef !416
  %i.y = add i64 %i.j, 3                          ; 3 uses
  store i64 %i.y, ptr %i.d, align 8, !alias.scope !98832, !noalias !98828
  %.not.i.1.i.i = icmp eq i8 %i.x, 108
  br i1 %.not.i.1.i.i, label %bb.j, label %bb.l, !prof !696

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98833)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98834)
  %exitcond.not.i9.2.i.i = icmp eq i64 %i.y, %umax.i.i.i
  br i1 %exitcond.not.i9.2.i.i, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !noalias !98835, !noundef !416
  %i.ab = add i64 %i.j, 4
  store i64 %i.ab, ptr %i.d, align 8, !alias.scope !98836, !noalias !98828
  %.not.i.2.i.i = icmp eq i8 %i.aa, 108
  br i1 %.not.i.2.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %bb.l, !prof !696

_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i: ; preds = %bb.j, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !98837
  store i64 5, ptr %i.b, align 8, !noalias !98837
  %i.ac = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !98838
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !98837
  br label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.i, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !98837
  store i64 9, ptr %i.a, align 8, !noalias !98837
  %i.ad = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a), !noalias !98838
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !98837
  br label %bb.m

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %bb.k
  store i64 -1, ptr %0, align 8, !alias.scope !98839, !noalias !98840
  br label %_RINvXse_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2z_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.m:                                             ; preds = %bb.l, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i
  %.sroa.0.1.i.ph.i.i = phi ptr [ %i.ac, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i ], [ %i.ad, %bb.l ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph.i.i, ptr %i.ae, align 8, !alias.scope !98822, !noalias !98840
  store i64 -2, ptr %0, align 8, !alias.scope !98822, !noalias !98840
  br label %_RINvXse_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2z_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit

_RINvXse_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2z_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %_RINvXsd_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtB6_13OptionVisitorNtNtCs40k4W9msRzi_5alloc6string6StringENtB8_7Visitor10visit_someQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2c_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, %bb.m
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs3_NtCskpEw9nXJLNc_10serde_core2deINtNtCscI6d9CVNmLh_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtCs97bFUy425Ar_15lance_tokenizer7stemmer8LanguageEENtB6_15DeserializeSeed11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB3c_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98993)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98994)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98995)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98996)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98997)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 18 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !98998, !noalias !98999, !noundef !416 ; 9 uses
  %.promoted.i.i.i = load i64, ptr %i.s, align 8, !alias.scope !99000, !noalias !99001 ; 3 uses
  %i.v = icmp ult i64 %.promoted.i.i.i, %i.u
  br i1 %i.v, label %.lr.ph.i.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !98998, !noalias !98999, !nonnull !416, !noundef !416 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.y = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.ab, %bb.c ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99002)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99003)
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !noalias !99004, !noundef !416
  switch i8 %i.aa, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 110, label %bb.ad
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.ab = add i64 %i.y, 1                         ; 3 uses
  store i64 %i.ab, ptr %i.s, align 8, !alias.scope !99005, !noalias !99001
  %exitcond.not.i.i.i = icmp eq i64 %i.ab, %i.u
  br i1 %exitcond.not.i.i.i, label %.loopexit9.i.i.i.i.i, label %bb.b

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i: ; preds = %bb.b, %bb.a
  %.promoted.i.i.i.i.i.i = phi i64 [ %.promoted.i.i.i, %bb.a ], [ %i.y, %bb.b ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99006)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99007)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99008)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99009)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99010)
  %i.ac = icmp ult i64 %.promoted.i.i.i.i.i.i, %i.u
  br i1 %i.ac, label %.lr.ph.i.i.i.i.i.i, label %.loopexit9.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !99011, !noalias !99012, !nonnull !416, !noundef !416 ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i
  %i.af = phi i64 [ %.promoted.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.ai, %bb.e ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99013)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99014)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !noalias !99015, !noundef !416
  switch i8 %i.ah, label %bb.f [
    i8 32, label %bb.e
    i8 10, label %bb.e
    i8 9, label %bb.e
    i8 13, label %bb.e
    i8 123, label %bb.g
    i8 34, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i
  ], !prof !474

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  %i.ai = add i64 %i.af, 1                        ; 3 uses
  store i64 %i.ai, ptr %i.s, align 8, !alias.scope !99016, !noalias !99017
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.ai, %i.u
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit9.i.i.i.i.i, label %bb.d

.loopexit9.i.i.i.i.i:                             ; preds = %bb.c, %bb.e, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !99018
  store i64 5, ptr %i.n, align 8, !noalias !99018
  %i.aj = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.n), !noalias !99019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !99018
  br label %_RINvXNvNtCs97bFUy425Ar_15lance_tokenizer7stemmers_1__NtB5_8LanguageNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB26_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !99018
  store i64 10, ptr %i.o, align 8, !noalias !99018
  %i.ak = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.o), !noalias !99019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !99018
  br label %_RINvXNvNtCs97bFUy425Ar_15lance_tokenizer7stemmers_1__NtB5_8LanguageNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB26_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i

bb.g:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 6 uses
  %i.am = load i8, ptr %i.al, align 8, !alias.scope !99020, !noalias !99019, !noundef !416
  %i.an = add i8 %i.am, -1                        ; 2 uses
  store i8 %i.an, ptr %i.al, align 8, !alias.scope !99020, !noalias !99019
  %i.ao = icmp eq i8 %i.an, 0
  br i1 %i.ao, label %bb.w, label %bb.m, !prof !426

.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i:       ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99021)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99022)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99023)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99024)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99025)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99026)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99027)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99028)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i
  %i.ap = phi i64 [ %i.as, %bb.h ], [ %i.af, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ap
end_hunk_3
begin_hunk_4_@_RINvXs3_NtCskpEw9nXJLNc_10serde_core2deINtNtCscI6d9CVNmLh_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtCs97bFUy425Ar_15lance_tokenizer7stemmer8LanguageEENtB6_15DeserializeSeed11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB3c_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  store i64 3, ptr %i.h, align 8, !noalias !99044
  %i.bo = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h), !noalias !99045
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !99044
  br label %_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de13VariantAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de10EnumAccess7variantNtNvXNvNtCs97bFUy425Ar_15lance_tokenizer7stemmers_1__NtB29_8LanguageNtB1d_11Deserialize11deserialize7___FieldECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !99044
  store i64 17, ptr %i.i, align 8, !noalias !99044
  %i.bp = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.i), !noalias !99045
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !99044
  br label %_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de13VariantAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de10EnumAccess7variantNtNvXNvNtCs97bFUy425Ar_15lance_tokenizer7stemmers_1__NtB29_8LanguageNtB1d_11Deserialize11deserialize7___FieldECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !99044
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99046)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99047)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99048)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99049)
  %i.bq = add i64 %i.bk, 1
  store i64 %i.bq, ptr %i.s, align 8, !alias.scope !99050, !noalias !99051
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.br, align 8, !alias.scope !99052, !noalias !99051
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !99053
  call void @_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noalias noundef nonnull align 8 dereferenceable(56) %1), !noalias !99051
  %i.bs = load i64, ptr %i.f, align 8, !range !437, !noalias !99053, !noundef !416
  %i.bt = icmp eq i64 %i.bs, -1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !noalias !99053, !nonnull !416, !noundef !416 ; 2 uses
  br i1 %i.bt, label %_RINvXs3_NtCskpEw9nXJLNc_10serde_core2deINtNtCscI6d9CVNmLh_4core6marker11PhantomDataNtNvXNvNtCs97bFUy425Ar_15lance_tokenizer7stemmers_1__NtB1q_8LanguageNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtCs5QD3CVEMyfH_10serde_json2de6MapKeyNtNtB3I_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i.i.i, label %_RINvXs3_NtCskpEw9nXJLNc_10serde_core2deINtNtCscI6d9CVNmLh_4core6marker11PhantomDataNtNvXNvNtCs97bFUy425Ar_15lance_tokenizer7stemmers_1__NtB1q_8LanguageNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtCs5QD3CVEMyfH_10serde_json2de6MapKeyNtNtB3I_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i, !prof !476

_RINvXs3_NtCskpEw9nXJLNc_10serde_core2deINtNtCscI6d9CVNmLh_4core6marker11PhantomDataNtNvXNvNtCs97bFUy425Ar_15lance_tokenizer7stemmers_1__NtB1q_8LanguageNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtCs5QD3CVEMyfH_10serde_json2de6MapKeyNtNtB3I_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i.i.i: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !99053
  br label %bb.r

_RINvXs3_NtCskpEw9nXJLNc_10serde_core2deINtNtCscI6d9CVNmLh_4core6marker11PhantomDataNtNvXNvNtCs97bFUy425Ar_15lance_tokenizer7stemmers_1__NtB1q_8LanguageNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtCs5QD3CVEMyfH_10serde_json2de6MapKeyNtNtB3I_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i: ; preds = %bb.p
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i9.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i.i.i10.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i9.i.i.i.i.i, align 8, !noalias !99053
  call fastcc void @_RINvXNvXNvNtCs97bFUy425Ar_15lance_tokenizer7stemmers_1__NtB8_8LanguageNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB18_7Visitor9visit_strNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(16) %i.g, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bv, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i10.i.i.i.i.i), !noalias !99045
  %.pre.i.i.i.i.i.i.i.i = load i8, ptr %i.g, align 8, !range !428, !noalias !99044
  %i.bw = trunc nuw i8 %.pre.i.i.i.i.i.i.i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !99053
  br i1 %i.bw, label %_RINvXs3_NtCskpEw9nXJLNc_10serde_core2deINtNtCscI6d9CVNmLh_4core6marker11PhantomDataNtNvXNvNtCs97bFUy425Ar_15lance_tokenizer7stemmers_1__NtB1q_8LanguageNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtCs5QD3CVEMyfH_10serde_json2de6MapKeyNtNtB3I_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i._crit_edge.i.i.i.i.i.i.i, label %bb.s, !prof !542

_RINvXs3_NtCskpEw9nXJLNc_10serde_core2deINtNtCscI6d9CVNmLh_4core6marker11PhantomDataNtNvXNvNtCs97bFUy425Ar_15lance_tokenizer7stemmers_1__NtB1q_8LanguageNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtCs5QD3CVEMyfH_10serde_json2de6MapKeyNtNtB3I_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i._crit_edge.i.i.i.i.i.i.i: ; preds = %_RINvXs3_NtCskpEw9nXJLNc_10serde_core2deINtNtCscI6d9CVNmLh_4core6marker11PhantomDataNtNvXNvNtCs97bFUy425Ar_15lance_tokenizer7stemmers_1__NtB1q_8LanguageNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtCs5QD3CVEMyfH_10serde_json2de6MapKeyNtNtB3I_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i
  %.phi.trans.insert.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i.i, align 8, !noalias !99044
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !99044
  store i64 10, ptr %i.j, align 8, !noalias !99044
  %i.bx = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.j), !noalias !99045
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !99044
  br label %_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de13VariantAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de10EnumAccess7variantNtNvXNvNtCs97bFUy425Ar_15lance_tokenizer7stemmers_1__NtB29_8LanguageNtB1d_11Deserialize11deserialize7___FieldECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i

bb.r:                                             ; preds = %_RINvXs3_NtCskpEw9nXJLNc_10serde_core2deINtNtCscI6d9CVNmLh_4core6marker11PhantomDataNtNvXNvNtCs97bFUy425Ar_15lance_tokenizer7stemmers_1__NtB1q_8LanguageNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtCs5QD3CVEMyfH_10serde_json2de6MapKeyNtNtB3I_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i._crit_edge.i.i.i.i.i.i.i, %_RINvXs3_NtCskpEw9nXJLNc_10serde_core2deINtNtCscI6d9CVNmLh_4core6marker11PhantomDataNtNvXNvNtCs97bFUy425Ar_15lance_tokenizer7stemmers_1__NtB1q_8LanguageNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtCs5QD3CVEMyfH_10serde_json2de6MapKeyNtNtB3I_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i.i.i
  %i.by = phi ptr [ %.pre.i.i.i.i.i.i.i, %_RINvXs3_NtCskpEw9nXJLNc_10serde_core2deINtNtCscI6d9CVNmLh_4core6marker11PhantomDataNtNvXNvNtCs97bFUy425Ar_15lance_tokenizer7stemmers_1__NtB1q_8LanguageNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtCs5QD3CVEMyfH_10serde_json2de6MapKeyNtNtB3I_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i._crit_edge.i.i.i.i.i.i.i ], [ %i.bv, %_RINvXs3_NtCskpEw9nXJLNc_10serde_core2deINtNtCscI6d9CVNmLh_4core6marker11PhantomDataNtNvXNvNtCs97bFUy425Ar_15lance_tokenizer7stemmers_1__NtB1q_8LanguageNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtCs5QD3CVEMyfH_10serde_json2de6MapKeyNtNtB3I_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i.i.i ]
  %i.bz = call fastcc noundef nonnull align 8 ptr @_RINvMs0_NtCs5QD3CVEMyfH_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 %i.by, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1), !noalias !99045
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !99044
  br label %_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de13VariantAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de10EnumAccess7variantNtNvXNvNtCs97bFUy425Ar_15lance_tokenizer7stemmers_1__NtB29_8LanguageNtB1d_11Deserialize11deserialize7___FieldECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i

bb.s:                                             ; preds = %_RINvXs3_NtCskpEw9nXJLNc_10serde_core2deINtNtCscI6d9CVNmLh_4core6marker11PhantomDataNtNvXNvNtCs97bFUy425Ar_15lance_tokenizer7stemmers_1__NtB1q_8LanguageNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtCs5QD3CVEMyfH_10serde_json2de6MapKeyNtNtB3I_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.cb = load i8, ptr %i.ca, align 1, !range !572, !noalias !99044, !noundef !416
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !99044
  call void @llvm.experimental.noalias.scope.decl(metadata !99054)
  call void @llvm.experimental.noalias.scope.decl(metadata !99055)
  %i.cc = load i64, ptr %i.t, align 8, !alias.scope !99056, !noalias !99057, !noundef !416 ; 2 uses
  %.promoted.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.s, align 8, !alias.scope !99058, !noalias !99059 ; 2 uses
  %i.cd = icmp ult i64 %.promoted.i.i.i.i.i.i.i.i.i.i, %i.cc
  br i1 %i.cd, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i7.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.s
  %i.ce = load ptr, ptr %i.ad, align 8, !alias.scope !99056, !noalias !99057, !nonnull !416, !noundef !416
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.cf = phi i64 [ %.promoted.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.ci, %bb.u ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !99060)
  call void @llvm.experimental.noalias.scope.decl(metadata !99061)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !noalias !99062, !noundef !416
  switch i8 %i.ch, label %bb.v [
    i8 32, label %bb.u
    i8 10, label %bb.u
    i8 9, label %bb.u
    i8 13, label %bb.u
    i8 58, label %_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de13VariantAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de10EnumAccess7variantNtNvXNvNtCs97bFUy425Ar_15lance_tokenizer7stemmers_1__NtB29_8LanguageNtB1d_11Deserialize11deserialize7___FieldECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i
  ], !prof !440

bb.u:                                             ; preds = %bb.t, %bb.t, %bb.t, %bb.t
  %i.ci = add i64 %i.cf, 1                        ; 3 uses
  store i64 %i.ci, ptr %i.s, align 8, !alias.scope !99063, !noalias !99059
  %exitcond.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ci, %i.cc
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i7.i.i.i.i.i.i.i.i, label %bb.t

.loopexit.i7.i.i.i.i.i.i.i.i:                     ; preds = %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !99064
  store i64 3, ptr %i.d, align 8, !noalias !99064
  %i.cj = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d), !noalias !99045
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !99064
  br label %_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de13VariantAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de10EnumAccess7variantNtNvXNvNtCs97bFUy425Ar_15lance_tokenizer7stemmers_1__NtB29_8LanguageNtB1d_11Deserialize11deserialize7___FieldECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !99064
  store i64 6, ptr %i.e, align 8, !noalias !99064
  %i.ck = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e), !noalias !99045
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !99064
  br label %_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de13VariantAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de10EnumAccess7variantNtNvXNvNtCs97bFUy425Ar_15lance_tokenizer7stemmers_1__NtB29_8LanguageNtB1d_11Deserialize11deserialize7___FieldECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i

_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de13VariantAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de10EnumAccess7variantNtNvXNvNtCs97bFUy425Ar_15lance_tokenizer7stemmers_1__NtB29_8LanguageNtB1d_11Deserialize11deserialize7___FieldECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i: ; preds = %bb.t
  %i.cl = add i64 %i.cf, 1
  store i64 %i.cl, ptr %i.s, align 8, !alias.scope !99065, !noalias !99045
  %i.cm = call fastcc noundef align 8 ptr @_RNvXsc_NtCs5QD3CVEMyfH_10serde_json2deINtB5_13VariantAccessNtNtB7_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de13VariantAccess12unit_variantCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(56) %1), !noalias !99066 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i.i.i.i, label %bb.x, label %_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de13VariantAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de10EnumAccess7variantNtNvXNvNtCs97bFUy425Ar_15lance_tokenizer7stemmers_1__NtB29_8LanguageNtB1d_11Deserialize11deserialize7___FieldECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !99018
  store i64 24, ptr %i.r, align 8, !noalias !99018
  %i.cn = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.r), !noalias !99019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !99018
  br label %_RINvXNvNtCs97bFUy425Ar_15lance_tokenizer7stemmers_1__NtB5_8LanguageNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB26_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i

bb.x:                                             ; preds = %_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de13VariantAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de10EnumAccess7variantNtNvXNvNtCs97bFUy425Ar_15lance_tokenizer7stemmers_1__NtB29_8LanguageNtB1d_11Deserialize11deserialize7___FieldECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i
  %i.co = load i8, ptr %i.al, align 8, !alias.scope !99020, !noalias !99019, !noundef !416
  %i.cp = add i8 %i.co, 1
  store i8 %i.cp, ptr %i.al, align 8, !alias.scope !99020, !noalias !99019
  call void @llvm.experimental.noalias.scope.decl(metadata !99067)
  %i.cq = load i64, ptr %i.t, align 8, !alias.scope !99068, !noalias !99069, !noundef !416 ; 2 uses
  %.promoted.i12.i.i.i.i.i = load i64, ptr %i.s, align 8, !alias.scope !99070, !noalias !99071 ; 2 uses
  %i.cr = icmp ult i64 %.promoted.i12.i.i.i.i.i, %i.cq
  br i1 %i.cr, label %.lr.ph.i14.i.i.i.i.i, label %.loopexit.i.i.i.i.i

.lr.ph.i14.i.i.i.i.i:                             ; preds = %bb.x
  %i.cs = load ptr, ptr %i.ad, align 8, !alias.scope !99068, !noalias !99069, !nonnull !416, !noundef !416
  br label %bb.y

bb.y:                                             ; preds = %bb.z, %.lr.ph.i14.i.i.i.i.i
  %i.ct = phi i64 [ %.promoted.i12.i.i.i.i.i, %.lr.ph.i14.i.i.i.i.i ], [ %i.cw, %bb.z ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !99072)
  call void @llvm.experimental.noalias.scope.decl(metadata !99073)
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !noalias !99074, !noundef !416
  switch i8 %i.cv, label %bb.ab [
    i8 32, label %bb.z
    i8 10, label %bb.z
    i8 9, label %bb.z
    i8 13, label %bb.z
    i8 125, label %bb.aa
  ], !prof !440

bb.z:                                             ; preds = %bb.y, %bb.y, %bb.y, %bb.y
  %i.cw = add i64 %i.ct, 1                        ; 3 uses
  store i64 %i.cw, ptr %i.s, align 8, !alias.scope !99075, !noalias !99071
  %exitcond.not.i15.i.i.i.i.i = icmp eq i64 %i.cw, %i.cq
  br i1 %exitcond.not.i15.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %bb.y

.loopexit.i.i.i.i.i:                              ; preds = %bb.z, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !99018
  store i64 3, ptr %i.p, align 8, !noalias !99018
  %i.cx = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.p), !noalias !99019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !99018
  br label %_RINvXNvNtCs97bFUy425Ar_15lance_tokenizer7stemmers_1__NtB5_8LanguageNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB26_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.cy = add i64 %i.ct, 1
  store i64 %i.cy, ptr %i.s, align 8, !alias.scope !99076, !noalias !99019
  br label %bb.ac

bb.ab:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !99018
  store i64 10, ptr %i.q, align 8, !noalias !99018
  %i.cz = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.q), !noalias !99019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !99018
  br label %_RINvXNvNtCs97bFUy425Ar_15lance_tokenizer7stemmers_1__NtB5_8LanguageNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB26_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i

_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de13VariantAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de10EnumAccess7variantNtNvXNvNtCs97bFUy425Ar_15lance_tokenizer7stemmers_1__NtB29_8LanguageNtB1d_11Deserialize11deserialize7___FieldECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i: ; preds = %_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de13VariantAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de10EnumAccess7variantNtNvXNvNtCs97bFUy425Ar_15lance_tokenizer7stemmers_1__NtB29_8LanguageNtB1d_11Deserialize11deserialize7___FieldECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i, %bb.v, %.loopexit.i7.i.i.i.i.i.i.i.i, %bb.r, %bb.q, %bb.o, %.loopexit.i.i.i.i.i.i.i.i
  %.sink53.i.i.i.i.i = phi ptr [ %i.bo, %.loopexit.i.i.i.i.i.i.i.i ], [ %i.cm, %_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de13VariantAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de10EnumAccess7variantNtNvXNvNtCs97bFUy425Ar_15lance_tokenizer7stemmers_1__NtB29_8LanguageNtB1d_11Deserialize11deserialize7___FieldECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i ], [ %i.bp, %bb.o ], [ %i.bz, %bb.r ], [ %i.bx, %bb.q ], [ %i.cj, %.loopexit.i7.i.i.i.i.i.i.i.i ], [ %i.ck, %bb.v ]
  %i.da = load i8, ptr %i.al, align 8, !alias.scope !99020, !noalias !99019, !noundef !416
  %i.db = add i8 %i.da, 1
  store i8 %i.db, ptr %i.al, align 8, !alias.scope !99020, !noalias !99019
  br label %_RINvXNvNtCs97bFUy425Ar_15lance_tokenizer7stemmers_1__NtB5_8LanguageNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB26_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i

_RINvXNvNtCs97bFUy425Ar_15lance_tokenizer7stemmers_1__NtB5_8LanguageNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB26_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i: ; preds = %_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de13VariantAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de10EnumAccess7variantNtNvXNvNtCs97bFUy425Ar_15lance_tokenizer7stemmers_1__NtB29_8LanguageNtB1d_11Deserialize11deserialize7___FieldECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i, %bb.ab, %.loopexit.i.i.i.i.i, %bb.w, %_RINvXs3_NtCskpEw9nXJLNc_10serde_core2deINtNtCscI6d9CVNmLh_4core6marker11PhantomDataNtNvXNvNtCs97bFUy425Ar_15lance_tokenizer7stemmers_1__NtB1q_8LanguageNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB3J_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread6.i.i.i.i.i.i.i.i, %bb.k, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.f, %.loopexit9.i.i.i.i.i
  %.sroa.311.1.i.i.i = phi ptr [ %i.aj, %.loopexit9.i.i.i.i.i ], [ %i.cn, %bb.w ], [ %.sink53.i.i.i.i.i, %_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de13VariantAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de10EnumAccess7variantNtNvXNvNtCs97bFUy425Ar_15lance_tokenizer7stemmers_1__NtB29_8LanguageNtB1d_11Deserialize11deserialize7___FieldECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i ], [ %i.cz, %bb.ab ], [ %i.cx, %.loopexit.i.i.i.i.i ], [ %i.au, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ak, %bb.f ], [ %i.ba, %bb.k ], [ %i.bf, %_RINvXs3_NtCskpEw9nXJLNc_10serde_core2deINtNtCscI6d9CVNmLh_4core6marker11PhantomDataNtNvXNvNtCs97bFUy425Ar_15lance_tokenizer7stemmers_1__NtB1q_8LanguageNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB3J_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread6.i.i.i.i.i.i.i.i ]
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.311.1.i.i.i, ptr %i.dc, align 8, !alias.scope !99077, !noalias !99078
  br label %_RINvXse_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCs97bFUy425Ar_15lance_tokenizer7stemmer8LanguageENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2N_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.ac:                                            ; preds = %bb.aa, %_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de17UnitVariantAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de10EnumAccess7variantNtNvXNvNtCs97bFUy425Ar_15lance_tokenizer7stemmers_1__NtB2d_8LanguageNtB1h_11Deserialize11deserialize7___FieldECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i
  %.sroa.11.1.ph.i.i.i = phi i8 [ %i.bh, %_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de17UnitVariantAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de10EnumAccess7variantNtNvXNvNtCs97bFUy425Ar_15lance_tokenizer7stemmers_1__NtB2d_8LanguageNtB1h_11Deserialize11deserialize7___FieldECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i ], [ %i.cb, %bb.aa ]
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.11.1.ph.i.i.i, ptr %i.dd, align 1, !alias.scope !99077, !noalias !99078
  br label %_RINvXse_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCs97bFUy425Ar_15lance_tokenizer7stemmer8LanguageENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2N_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.ad:                                            ; preds = %bb.b
  %i.de = add i64 %i.y, 1                         ; 4 uses
  store i64 %i.de, ptr %i.s, align 8, !alias.scope !99079, !noalias !99080
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99081)
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.de, i64 %i.u) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99082)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99083)
  %exitcond.not.i9.not.i.i = icmp ult i64 %i.de, %i.u
  br i1 %exitcond.not.i9.not.i.i, label %bb.ae, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.df = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1, !noalias !99084, !noundef !416
  %i.dh = add i64 %i.y, 2                         ; 3 uses
  store i64 %i.dh, ptr %i.s, align 8, !alias.scope !99085, !noalias !99086
  %.not.i.i.i = icmp eq i8 %i.dg, 117
  br i1 %.not.i.i.i, label %bb.af, label %bb.aj, !prof !696

bb.af:                                            ; preds = %bb.ae
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99087)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99088)
  %exitcond.not.i9.1.i.i = icmp eq i64 %i.dh, %umax.i.i.i
  br i1 %exitcond.not.i9.1.i.i, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.di = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !noalias !99089, !noundef !416
  %i.dk = add i64 %i.y, 3                         ; 3 uses
  store i64 %i.dk, ptr %i.s, align 8, !alias.scope !99090, !noalias !99086
  %.not.i.1.i.i = icmp eq i8 %i.dj, 108
  br i1 %.not.i.1.i.i, label %bb.ah, label %bb.aj, !prof !696

bb.ah:                                            ; preds = %bb.ag
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99091)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99092)
  %exitcond.not.i9.2.i.i = icmp eq i64 %i.dk, %umax.i.i.i
  br i1 %exitcond.not.i9.2.i.i, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dl = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !noalias !99093, !noundef !416
  %i.dn = add i64 %i.y, 4
  store i64 %i.dn, ptr %i.s, align 8, !alias.scope !99094, !noalias !99086
  %.not.i.2.i.i = icmp eq i8 %i.dm, 108
  br i1 %.not.i.2.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %bb.aj, !prof !696

_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i: ; preds = %bb.ah, %bb.af, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !99095
  store i64 5, ptr %i.c, align 8, !noalias !99095
  %i.do = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c), !noalias !99096
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !99095
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ai, %bb.ag, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !99095
  store i64 9, ptr %i.b, align 8, !noalias !99095
  %i.dp = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !99096
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !99095
  br label %bb.ak

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %bb.ai
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 -1, ptr %i.dq, align 1, !alias.scope !99097, !noalias !99098
  br label %_RINvXse_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCs97bFUy425Ar_15lance_tokenizer7stemmer8LanguageENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2N_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.ak:                                            ; preds = %bb.aj, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i
  %.sroa.0.1.i.ph.i.i = phi ptr [ %i.do, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i ], [ %i.dp, %bb.aj ]
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph.i.i, ptr %i.dr, align 8, !alias.scope !99080, !noalias !99098
  br label %_RINvXse_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCs97bFUy425Ar_15lance_tokenizer7stemmer8LanguageENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2N_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit

_RINvXse_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionNtNtCs97bFUy425Ar_15lance_tokenizer7stemmer8LanguageENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2N_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %_RINvXNvNtCs97bFUy425Ar_15lance_tokenizer7stemmers_1__NtB5_8LanguageNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB26_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, %bb.ac, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, %bb.ak
  %.sink.i.i = phi i8 [ 0, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i ], [ 1, %bb.ak ], [ 0, %bb.ac ], [ 1, %_RINvXNvNtCs97bFUy425Ar_15lance_tokenizer7stemmers_1__NtB5_8LanguageNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB26_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i ]
  store i8 %.sink.i.i, ptr %0, align 8, !alias.scope !99080, !noalias !99098
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs3_NtCskpEw9nXJLNc_10serde_core2deINtNtCscI6d9CVNmLh_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtNtNtCsa7501wwoJJ1_11lance_index6scalar8inverted9tokenizer19DocumentGranularityEENtB6_15DeserializeSeed11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB3G_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 9 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99251)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99252)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99253)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99254)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99255)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 18 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !99256, !noalias !99257, !noundef !416 ; 9 uses
  %.promoted.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !99258, !noalias !99259 ; 3 uses
  %i.t = icmp ult i64 %.promoted.i.i.i, %i.s
  br i1 %i.t, label %.lr.ph.i.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !99256, !noalias !99257, !nonnull !416, !noundef !416 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.w = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.z, %bb.c ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99260)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99261)
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !noalias !99262, !noundef !416
  switch i8 %i.y, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 110, label %bb.au
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.z = add i64 %i.w, 1                          ; 3 uses
  store i64 %i.z, ptr %i.q, align 8, !alias.scope !99263, !noalias !99259
  %exitcond.not.i.i.i = icmp eq i64 %i.z, %i.s
  br i1 %exitcond.not.i.i.i, label %.loopexit9.i.i.i.i.i, label %bb.b

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i: ; preds = %bb.b, %bb.a
  %.promoted.i.i.i.i.i.i = phi i64 [ %.promoted.i.i.i, %bb.a ], [ %i.w, %bb.b ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99264)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99266)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99267)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99268)
  %i.aa = icmp ult i64 %.promoted.i.i.i.i.i.i, %i.s
  br i1 %i.aa, label %.lr.ph.i.i.i.i.i.i, label %.loopexit9.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !99269, !noalias !99270, !nonnull !416, !noundef !416 ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i
  %i.ad = phi i64 [ %.promoted.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.ag, %bb.e ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99271)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99272)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !noalias !99273, !noundef !416
  switch i8 %i.af, label %bb.f [
    i8 32, label %bb.e
    i8 10, label %bb.e
    i8 9, label %bb.e
    i8 13, label %bb.e
    i8 123, label %bb.g
    i8 34, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i
  ], !prof !474

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  %i.ag = add i64 %i.ad, 1                        ; 3 uses
  store i64 %i.ag, ptr %i.q, align 8, !alias.scope !99274, !noalias !99275
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.ag, %i.s
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit9.i.i.i.i.i, label %bb.d

.loopexit9.i.i.i.i.i:                             ; preds = %bb.c, %bb.e, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !99276
  store i64 5, ptr %i.l, align 8, !noalias !99276
  %i.ah = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.l), !noalias !99277
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !99276
  br label %bb.at

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !99276
  store i64 10, ptr %i.m, align 8, !noalias !99276
  %i.ai = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.m), !noalias !99277
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !99276
  br label %bb.at

bb.g:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 6 uses
  %i.ak = load i8, ptr %i.aj, align 8, !alias.scope !99278, !noalias !99277, !noundef !416
  %i.al = add i8 %i.ak, -1                        ; 2 uses
  store i8 %i.al, ptr %i.aj, align 8, !alias.scope !99278, !noalias !99277
  %i.am = icmp eq i8 %i.al, 0
  br i1 %i.am, label %bb.an, label %bb.w, !prof !426

.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i:       ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99279)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99280)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99281)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99282)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99283)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99284)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99285)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99286)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i
  %i.an = phi i64 [ %i.aq, %bb.h ], [ %i.ad, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.an
end_hunk_4
begin_hunk_5_@_RINvXs3_NtCskpEw9nXJLNc_10serde_core2deINtNtCscI6d9CVNmLh_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtNtNtCsa7501wwoJJ1_11lance_index6scalar8inverted9tokenizer19DocumentGranularityEENtB6_15DeserializeSeed11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB3G_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  %i.dp = load i64, ptr %i.dd, align 1
  %i.dq = xor i64 %i.dp, 7308327755965491564
  %i.dr = getelementptr i8, ptr %i.dd, i64 8
  %i.ds = load i32, ptr %i.dr, align 1
  %i.dt = zext i32 %i.ds to i64
  %i.du = xor i64 %i.dt, 1953391981
  %i.dv = or i64 %i.dq, %i.du
  %i.dw = icmp ne i64 %i.dv, 0
  %i.dx = zext i1 %i.dw to i32
  %i.dy = icmp eq i32 %i.dx, 0
  br i1 %i.dy, label %bb.aj, label %.sink.split.i.i.i.i.i.i.i.i, !prof !439

bb.ae:                                            ; preds = %bb.aa
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i10.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i [
    i64 3, label %bb.af
    i64 12, label %bb.ag
  ], !prof !732

bb.af:                                            ; preds = %bb.ae
  %i.dz = load i16, ptr %i.dd, align 1
  %i.ea = xor i16 %i.dz, 28530
  %i.eb = getelementptr i8, ptr %i.dd, i64 2
  %i.ec = load i8, ptr %i.eb, align 1
  %i.ed = zext i8 %i.ec to i16
  %i.ee = xor i16 %i.ed, 119
  %i.ef = or i16 %i.ea, %i.ee
  %i.eg = icmp ne i16 %i.ef, 0
  %i.eh = zext i1 %i.eg to i32
  %i.ei = icmp eq i32 %i.eh, 0
  br i1 %i.ei, label %bb.aj, label %.sink.split.i.i.i.i.i.i.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.ej = load i64, ptr %i.dd, align 1
  %i.ek = xor i64 %i.ej, 7308327755965491564
  %i.el = getelementptr i8, ptr %i.dd, i64 8
  %i.em = load i32, ptr %i.el, align 1
  %i.en = zext i32 %i.em to i64
  %i.eo = xor i64 %i.en, 1953391981
  %i.ep = or i64 %i.ek, %i.eo
  %i.eq = icmp ne i64 %i.ep, 0
  %i.er = zext i1 %i.eq to i32
  %i.es = icmp eq i32 %i.er, 0
  br i1 %i.es, label %bb.aj, label %.sink.split.i.i.i.i.i.i.i.i, !prof !439

bb.ah:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !99302
  store i64 10, ptr %i.i, align 8, !noalias !99302
  %i.et = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.i), !noalias !99303
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !99302
  br label %_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de13VariantAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de10EnumAccess7variantNtNvXNvNtNtNtCsa7501wwoJJ1_11lance_index6scalar8inverted9tokenizers_1__NtB29_19DocumentGranularityNtB1d_11Deserialize11deserialize7___FieldECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i:                      ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab
  %i.eu = call fastcc noundef nonnull align 8 ptr @_RNvYNtNtCs5QD3CVEMyfH_10serde_json5error5ErrorNtNtCskpEw9nXJLNc_10serde_core2de5Error15unknown_variantCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.dd, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i.i10.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @487, i64 noundef 2), !noalias !99309
  br label %bb.ai

bb.ai:                                            ; preds = %.sink.split.i.i.i.i.i.i.i.i, %bb.z
  %.sroa.1010.0.i.i.i.i.i.i.i.i = phi ptr [ %i.dd, %bb.z ], [ %i.eu, %.sink.split.i.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !99311
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1010.0.i.i.i.i.i.i.i.i) ]
  %i.ev = call fastcc noundef nonnull align 8 ptr @_RINvMs0_NtCs5QD3CVEMyfH_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 %.sroa.1010.0.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1), !noalias !99303
  br label %_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de13VariantAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de10EnumAccess7variantNtNvXNvNtNtNtCsa7501wwoJJ1_11lance_index6scalar8inverted9tokenizers_1__NtB29_19DocumentGranularityNtB1d_11Deserialize11deserialize7___FieldECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i

bb.aj:                                            ; preds = %bb.ag, %bb.af, %bb.ad, %bb.ac
  %not.cond.i.i.i.i.i.i = phi i8 [ 1, %bb.ag ], [ 1, %bb.ad ], [ 0, %bb.ac ], [ 0, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !99311
  call void @llvm.experimental.noalias.scope.decl(metadata !99312)
  call void @llvm.experimental.noalias.scope.decl(metadata !99313)
  %i.ew = load i64, ptr %i.r, align 8, !alias.scope !99314, !noalias !99315, !noundef !416 ; 2 uses
  %.promoted.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !99316, !noalias !99317 ; 2 uses
  %i.ex = icmp ult i64 %.promoted.i.i.i.i.i.i.i.i.i.i, %i.ew
  br i1 %i.ex, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i7.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.aj
  %i.ey = load ptr, ptr %i.ab, align 8, !alias.scope !99314, !noalias !99315, !nonnull !416, !noundef !416
  br label %bb.ak

bb.ak:                                            ; preds = %bb.al, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.ez = phi i64 [ %.promoted.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.fc, %bb.al ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !99318)
  call void @llvm.experimental.noalias.scope.decl(metadata !99319)
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.ez
  %i.fb = load i8, ptr %i.fa, align 1, !noalias !99320, !noundef !416
  switch i8 %i.fb, label %bb.am [
    i8 32, label %bb.al
    i8 10, label %bb.al
    i8 9, label %bb.al
    i8 13, label %bb.al
    i8 58, label %_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de13VariantAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de10EnumAccess7variantNtNvXNvNtNtNtCsa7501wwoJJ1_11lance_index6scalar8inverted9tokenizers_1__NtB29_19DocumentGranularityNtB1d_11Deserialize11deserialize7___FieldECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i
  ], !prof !440

bb.al:                                            ; preds = %bb.ak, %bb.ak, %bb.ak, %bb.ak
  %i.fc = add i64 %i.ez, 1                        ; 3 uses
  store i64 %i.fc, ptr %i.q, align 8, !alias.scope !99321, !noalias !99317
  %exitcond.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.fc, %i.ew
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i7.i.i.i.i.i.i.i.i, label %bb.ak

.loopexit.i7.i.i.i.i.i.i.i.i:                     ; preds = %bb.al, %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !99322
  store i64 3, ptr %i.d, align 8, !noalias !99322
  %i.fd = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d), !noalias !99303
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !99322
  br label %_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de13VariantAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de10EnumAccess7variantNtNvXNvNtNtNtCsa7501wwoJJ1_11lance_index6scalar8inverted9tokenizers_1__NtB29_19DocumentGranularityNtB1d_11Deserialize11deserialize7___FieldECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !99322
  store i64 6, ptr %i.e, align 8, !noalias !99322
  %i.fe = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e), !noalias !99303
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !99322
  br label %_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de13VariantAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de10EnumAccess7variantNtNvXNvNtNtNtCsa7501wwoJJ1_11lance_index6scalar8inverted9tokenizers_1__NtB29_19DocumentGranularityNtB1d_11Deserialize11deserialize7___FieldECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i

_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de13VariantAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de10EnumAccess7variantNtNvXNvNtNtNtCsa7501wwoJJ1_11lance_index6scalar8inverted9tokenizers_1__NtB29_19DocumentGranularityNtB1d_11Deserialize11deserialize7___FieldECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i: ; preds = %bb.ak
  %i.ff = add i64 %i.ez, 1
  store i64 %i.ff, ptr %i.q, align 8, !alias.scope !99323, !noalias !99303
  %i.fg = call fastcc noundef align 8 ptr @_RNvXsc_NtCs5QD3CVEMyfH_10serde_json2deINtB5_13VariantAccessNtNtB7_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de13VariantAccess12unit_variantCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(56) %1), !noalias !99324 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fg, null
  br i1 %.not.i.i.i.i.i.i, label %bb.ao, label %_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de13VariantAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de10EnumAccess7variantNtNvXNvNtNtNtCsa7501wwoJJ1_11lance_index6scalar8inverted9tokenizers_1__NtB29_19DocumentGranularityNtB1d_11Deserialize11deserialize7___FieldECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i

bb.an:                                            ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !99276
  store i64 24, ptr %i.p, align 8, !noalias !99276
  %i.fh = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.p), !noalias !99277
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !99276
  br label %bb.at

bb.ao:                                            ; preds = %_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de13VariantAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de10EnumAccess7variantNtNvXNvNtNtNtCsa7501wwoJJ1_11lance_index6scalar8inverted9tokenizers_1__NtB29_19DocumentGranularityNtB1d_11Deserialize11deserialize7___FieldECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i
  %i.fi = load i8, ptr %i.aj, align 8, !alias.scope !99278, !noalias !99277, !noundef !416
  %i.fj = add i8 %i.fi, 1
  store i8 %i.fj, ptr %i.aj, align 8, !alias.scope !99278, !noalias !99277
  call void @llvm.experimental.noalias.scope.decl(metadata !99325)
  %i.fk = load i64, ptr %i.r, align 8, !alias.scope !99326, !noalias !99327, !noundef !416 ; 2 uses
  %.promoted.i15.i.i.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !99328, !noalias !99329 ; 2 uses
  %i.fl = icmp ult i64 %.promoted.i15.i.i.i.i.i, %i.fk
  br i1 %i.fl, label %.lr.ph.i17.i.i.i.i.i, label %.loopexit.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i:                             ; preds = %bb.ao
  %i.fm = load ptr, ptr %i.ab, align 8, !alias.scope !99326, !noalias !99327, !nonnull !416, !noundef !416
  br label %bb.ap

bb.ap:                                            ; preds = %bb.aq, %.lr.ph.i17.i.i.i.i.i
  %i.fn = phi i64 [ %.promoted.i15.i.i.i.i.i, %.lr.ph.i17.i.i.i.i.i ], [ %i.fq, %bb.aq ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !99330)
  call void @llvm.experimental.noalias.scope.decl(metadata !99331)
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fn
  %i.fp = load i8, ptr %i.fo, align 1, !noalias !99332, !noundef !416
  switch i8 %i.fp, label %bb.as [
    i8 32, label %bb.aq
    i8 10, label %bb.aq
    i8 9, label %bb.aq
    i8 13, label %bb.aq
    i8 125, label %bb.ar
  ], !prof !440

bb.aq:                                            ; preds = %bb.ap, %bb.ap, %bb.ap, %bb.ap
  %i.fq = add i64 %i.fn, 1                        ; 3 uses
  store i64 %i.fq, ptr %i.q, align 8, !alias.scope !99333, !noalias !99329
  %exitcond.not.i18.i.i.i.i.i = icmp eq i64 %i.fq, %i.fk
  br i1 %exitcond.not.i18.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %bb.ap

.loopexit.i.i.i.i.i:                              ; preds = %bb.aq, %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !99276
  store i64 3, ptr %i.n, align 8, !noalias !99276
  %i.fr = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.n), !noalias !99277
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !99276
  br label %bb.at

bb.ar:                                            ; preds = %bb.ap
  %i.fs = add i64 %i.fn, 1
  store i64 %i.fs, ptr %i.q, align 8, !alias.scope !99334, !noalias !99277
  br label %_RINvXNvNtNtNtCsa7501wwoJJ1_11lance_index6scalar8inverted9tokenizers_1__NtB5_19DocumentGranularityNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2A_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i

bb.as:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !99276
  store i64 10, ptr %i.o, align 8, !noalias !99276
  %i.ft = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.o), !noalias !99277
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !99276
  br label %bb.at

_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de13VariantAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de10EnumAccess7variantNtNvXNvNtNtNtCsa7501wwoJJ1_11lance_index6scalar8inverted9tokenizers_1__NtB29_19DocumentGranularityNtB1d_11Deserialize11deserialize7___FieldECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i: ; preds = %_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de13VariantAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de10EnumAccess7variantNtNvXNvNtNtNtCsa7501wwoJJ1_11lance_index6scalar8inverted9tokenizers_1__NtB29_19DocumentGranularityNtB1d_11Deserialize11deserialize7___FieldECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i, %bb.am, %.loopexit.i7.i.i.i.i.i.i.i.i, %bb.ai, %bb.ah, %bb.y, %.loopexit.i.i.i.i.i.i.i.i
  %.sroa.107.012.i.sink.i.i.i.i.i = phi ptr [ %i.cw, %.loopexit.i.i.i.i.i.i.i.i ], [ %i.cx, %bb.y ], [ %i.fe, %bb.am ], [ %i.fd, %.loopexit.i7.i.i.i.i.i.i.i.i ], [ %i.et, %bb.ah ], [ %i.ev, %bb.ai ], [ %i.fg, %_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de13VariantAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de10EnumAccess7variantNtNvXNvNtNtNtCsa7501wwoJJ1_11lance_index6scalar8inverted9tokenizers_1__NtB29_19DocumentGranularityNtB1d_11Deserialize11deserialize7___FieldECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i ]
  %i.fu = load i8, ptr %i.aj, align 8, !alias.scope !99278, !noalias !99277, !noundef !416
  %i.fv = add i8 %i.fu, 1
  store i8 %i.fv, ptr %i.aj, align 8, !alias.scope !99278, !noalias !99277
  br label %bb.at

bb.at:                                            ; preds = %_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de13VariantAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de10EnumAccess7variantNtNvXNvNtNtNtCsa7501wwoJJ1_11lance_index6scalar8inverted9tokenizers_1__NtB29_19DocumentGranularityNtB1d_11Deserialize11deserialize7___FieldECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i, %bb.as, %.loopexit.i.i.i.i.i, %bb.an, %bb.t, %bb.f, %.loopexit9.i.i.i.i.i
  %.sroa.151.1.ph.i.i.i = phi ptr [ %.sroa.91.1.ph.i.i.i.i.i.i.i.i, %bb.t ], [ %i.ai, %bb.f ], [ %i.fr, %.loopexit.i.i.i.i.i ], [ %i.ft, %bb.as ], [ %.sroa.107.012.i.sink.i.i.i.i.i, %_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de13VariantAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de10EnumAccess7variantNtNvXNvNtNtNtCsa7501wwoJJ1_11lance_index6scalar8inverted9tokenizers_1__NtB29_19DocumentGranularityNtB1d_11Deserialize11deserialize7___FieldECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i ], [ %i.fh, %bb.an ], [ %i.ah, %.loopexit9.i.i.i.i.i ]
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.151.1.ph.i.i.i, ptr %i.fw, align 8, !alias.scope !99335, !noalias !99336
  br label %_RINvXse_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtNtCsa7501wwoJJ1_11lance_index6scalar8inverted9tokenizer19DocumentGranularityENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB3h_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit

_RINvXNvNtNtNtCsa7501wwoJJ1_11lance_index6scalar8inverted9tokenizers_1__NtB5_19DocumentGranularityNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2A_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i: ; preds = %bb.ar, %bb.v, %bb.u
  %.sroa.11.1.i.i.i = phi i8 [ 0, %bb.v ], [ 1, %bb.u ], [ %not.cond.i.i.i.i.i.i, %bb.ar ]
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.11.1.i.i.i, ptr %i.fx, align 1, !alias.scope !99335, !noalias !99336
  br label %_RINvXse_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtNtCsa7501wwoJJ1_11lance_index6scalar8inverted9tokenizer19DocumentGranularityENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB3h_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.au:                                            ; preds = %bb.b
  %i.fy = add i64 %i.w, 1                         ; 4 uses
  store i64 %i.fy, ptr %i.q, align 8, !alias.scope !99337, !noalias !99338
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99339)
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.fy, i64 %i.s) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99341)
  %exitcond.not.i9.not.i.i = icmp ult i64 %i.fy, %i.s
  br i1 %exitcond.not.i9.not.i.i, label %bb.av, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i

bb.av:                                            ; preds = %bb.au
  %i.fz = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.fy
  %i.ga = load i8, ptr %i.fz, align 1, !noalias !99342, !noundef !416
  %i.gb = add i64 %i.w, 2                         ; 3 uses
  store i64 %i.gb, ptr %i.q, align 8, !alias.scope !99343, !noalias !99344
  %.not.i.i.i = icmp eq i8 %i.ga, 117
  br i1 %.not.i.i.i, label %bb.aw, label %bb.ba, !prof !696

bb.aw:                                            ; preds = %bb.av
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99345)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99346)
  %exitcond.not.i9.1.i.i = icmp eq i64 %i.gb, %umax.i.i.i
  br i1 %exitcond.not.i9.1.i.i, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gc = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.gb
  %i.gd = load i8, ptr %i.gc, align 1, !noalias !99347, !noundef !416
  %i.ge = add i64 %i.w, 3                         ; 3 uses
  store i64 %i.ge, ptr %i.q, align 8, !alias.scope !99348, !noalias !99344
  %.not.i.1.i.i = icmp eq i8 %i.gd, 108
  br i1 %.not.i.1.i.i, label %bb.ay, label %bb.ba, !prof !696

bb.ay:                                            ; preds = %bb.ax
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99349)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99350)
  %exitcond.not.i9.2.i.i = icmp eq i64 %i.ge, %umax.i.i.i
  br i1 %exitcond.not.i9.2.i.i, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gf = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ge
  %i.gg = load i8, ptr %i.gf, align 1, !noalias !99351, !noundef !416
  %i.gh = add i64 %i.w, 4
  store i64 %i.gh, ptr %i.q, align 8, !alias.scope !99352, !noalias !99344
  %.not.i.2.i.i = icmp eq i8 %i.gg, 108
  br i1 %.not.i.2.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %bb.ba, !prof !696

_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i: ; preds = %bb.ay, %bb.aw, %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !99353
  store i64 5, ptr %i.c, align 8, !noalias !99353
  %i.gi = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c), !noalias !99354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !99353
  br label %bb.bb

bb.ba:                                            ; preds = %bb.az, %bb.ax, %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !99353
  store i64 9, ptr %i.b, align 8, !noalias !99353
  %i.gj = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !99354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !99353
  br label %bb.bb

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %bb.az
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 2, ptr %i.gk, align 1, !alias.scope !99355, !noalias !99356
  br label %_RINvXse_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtNtCsa7501wwoJJ1_11lance_index6scalar8inverted9tokenizer19DocumentGranularityENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB3h_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.bb:                                            ; preds = %bb.ba, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i
  %.sroa.0.1.i.ph.i.i = phi ptr [ %i.gi, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i ], [ %i.gj, %bb.ba ]
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph.i.i, ptr %i.gl, align 8, !alias.scope !99338, !noalias !99356
  br label %_RINvXse_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtNtCsa7501wwoJJ1_11lance_index6scalar8inverted9tokenizer19DocumentGranularityENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB3h_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit

_RINvXse_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtNtCsa7501wwoJJ1_11lance_index6scalar8inverted9tokenizer19DocumentGranularityENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB3h_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.at, %_RINvXNvNtNtNtCsa7501wwoJJ1_11lance_index6scalar8inverted9tokenizers_1__NtB5_19DocumentGranularityNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2A_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, %bb.bb
  %.sink.i.i = phi i8 [ 0, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i ], [ 1, %bb.bb ], [ 0, %_RINvXNvNtNtNtCsa7501wwoJJ1_11lance_index6scalar8inverted9tokenizers_1__NtB5_19DocumentGranularityNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2A_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i ], [ 1, %bb.at ]
  store i8 %.sink.i.i, ptr %0, align 8, !alias.scope !99338, !noalias !99356
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs3_NtCskpEw9nXJLNc_10serde_core2deINtNtCscI6d9CVNmLh_4core6marker11PhantomDataINtNtBG_6option6OptionbEENtB6_15DeserializeSeed11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2n_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99394)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99395)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99396)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99397)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99398)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !99399, !noalias !99400, !noundef !416 ; 4 uses
  %.promoted.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !99401, !noalias !99402 ; 2 uses
  %i.g = icmp ult i64 %.promoted.i.i.i, %i.f
  br i1 %i.g, label %.lr.ph.i.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !99399, !noalias !99400, !nonnull !416, !noundef !416 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.j = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.m, %bb.c ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99404)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !noalias !99405, !noundef !416
  switch i8 %i.l, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 110, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.m = add i64 %i.j, 1                          ; 3 uses
  store i64 %i.m, ptr %i.d, align 8, !alias.scope !99406, !noalias !99402
  %exitcond.not.i.i.i = icmp eq i64 %i.m, %i.f
  br i1 %exitcond.not.i.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i, label %bb.b

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i: ; preds = %bb.c, %bb.b, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99407)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !99408
  call fastcc void @_RINvXs1_NtNtCskpEw9nXJLNc_10serde_core2de5implsbNtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB1l_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(56) %1), !noalias !99409
  %i.n = load i8, ptr %i.c, align 8, !range !428, !noalias !99408, !noundef !416
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !noalias !99408, !nonnull !416, !align !417, !noundef !416
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %i.r, align 8, !alias.scope !99409, !noalias !99410
  br label %_RINvXsd_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtB6_13OptionVisitorbENtB8_7Visitor10visit_someQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB1B_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

bb.e:                                             ; preds = %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.t = load i8, ptr %i.s, align 1, !range !428, !noalias !99408, !noundef !416
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.t, ptr %i.u, align 1, !alias.scope !99409, !noalias !99410
  br label %_RINvXsd_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtB6_13OptionVisitorbENtB8_7Visitor10visit_someQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB1B_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

_RINvXsd_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtB6_13OptionVisitorbENtB8_7Visitor10visit_someQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB1B_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %bb.e, %bb.d
  %storemerge.i.i.i = phi i8 [ 0, %bb.e ], [ 1, %bb.d ]
  store i8 %storemerge.i.i.i, ptr %0, align 8, !alias.scope !99409, !noalias !99410
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !99408
  br label %_RINvXse_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionbENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB1Y_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.f:                                             ; preds = %bb.b
  %i.v = add i64 %i.j, 1                          ; 4 uses
  store i64 %i.v, ptr %i.d, align 8, !alias.scope !99411, !noalias !99412
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99413)
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.v, i64 %i.f) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99414)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99415)
  %exitcond.not.i9.not.i.i = icmp ult i64 %i.v, %i.f
  br i1 %exitcond.not.i9.not.i.i, label %bb.g, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !noalias !99416, !noundef !416
  %i.y = add i64 %i.j, 2                          ; 3 uses
  store i64 %i.y, ptr %i.d, align 8, !alias.scope !99417, !noalias !99418
  %.not.i.i.i = icmp eq i8 %i.x, 117
  br i1 %.not.i.i.i, label %bb.h, label %bb.l, !prof !696

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99419)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99420)
  %exitcond.not.i9.1.i.i = icmp eq i64 %i.y, %umax.i.i.i
  br i1 %exitcond.not.i9.1.i.i, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !noalias !99421, !noundef !416
  %i.ab = add i64 %i.j, 3                         ; 3 uses
  store i64 %i.ab, ptr %i.d, align 8, !alias.scope !99422, !noalias !99418
  %.not.i.1.i.i = icmp eq i8 %i.aa, 108
  br i1 %.not.i.1.i.i, label %bb.j, label %bb.l, !prof !696

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99423)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99424)
  %exitcond.not.i9.2.i.i = icmp eq i64 %i.ab, %umax.i.i.i
  br i1 %exitcond.not.i9.2.i.i, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !99425, !noundef !416
  %i.ae = add i64 %i.j, 4
  store i64 %i.ae, ptr %i.d, align 8, !alias.scope !99426, !noalias !99418
  %.not.i.2.i.i = icmp eq i8 %i.ad, 108
  br i1 %.not.i.2.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %bb.l, !prof !696

_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i: ; preds = %bb.j, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !99427
  store i64 5, ptr %i.b, align 8, !noalias !99427
  %i.af = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !99428
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !99427
  br label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.i, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !99427
  store i64 9, ptr %i.a, align 8, !noalias !99427
  %i.ag = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a), !noalias !99428
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !99427
  br label %bb.m

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 2, ptr %i.ah, align 1, !alias.scope !99429, !noalias !99430
  store i8 0, ptr %0, align 8, !alias.scope !99429, !noalias !99430
  br label %_RINvXse_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionbENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB1Y_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.m:                                             ; preds = %bb.l, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i
  %.sroa.0.1.i.ph.i.i = phi ptr [ %i.af, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i ], [ %i.ag, %bb.l ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph.i.i, ptr %i.ai, align 8, !alias.scope !99412, !noalias !99430
  store i8 1, ptr %0, align 8, !alias.scope !99412, !noalias !99430
  br label %_RINvXse_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionbENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB1Y_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit

_RINvXse_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionbENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB1Y_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %_RINvXsd_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtB6_13OptionVisitorbENtB8_7Visitor10visit_someQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB1B_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, %bb.m
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs3_NtCskpEw9nXJLNc_10serde_core2deINtNtCscI6d9CVNmLh_4core6marker11PhantomDataINtNtBG_6option6OptionmEENtB6_15DeserializeSeed11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2n_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99468)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99469)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99470)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99471)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99472)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !99473, !noalias !99474, !noundef !416 ; 4 uses
  %.promoted.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !99475, !noalias !99476 ; 2 uses
  %i.g = icmp ult i64 %.promoted.i.i.i, %i.f
  br i1 %i.g, label %.lr.ph.i.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !99473, !noalias !99474, !nonnull !416, !noundef !416 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.j = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.m, %bb.c ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99477)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99478)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !noalias !99479, !noundef !416
  switch i8 %i.l, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 110, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.m = add i64 %i.j, 1                          ; 3 uses
  store i64 %i.m, ptr %i.d, align 8, !alias.scope !99480, !noalias !99476
  %exitcond.not.i.i.i = icmp eq i64 %i.m, %i.f
  br i1 %exitcond.not.i.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i, label %bb.b

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i: ; preds = %bb.c, %bb.b, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99481)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !99482
  call fastcc void @_RINvXs16_NtNtCskpEw9nXJLNc_10serde_core2de5implsmNtB9_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB1m_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(56) %1), !noalias !99483
  %i.n = load i32, ptr %i.c, align 8, !range !433, !noalias !99482, !noundef !416
  %i.o = trunc nuw i32 %i.n to i1
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !noalias !99482, !nonnull !416, !align !417, !noundef !416
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %i.r, align 8, !alias.scope !99483, !noalias !99484
  br label %_RINvXsd_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtB6_13OptionVisitormENtB8_7Visitor10visit_someQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB1B_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

bb.e:                                             ; preds = %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.t = load i32, ptr %i.s, align 4, !noalias !99482, !noundef !416
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.u, align 4, !alias.scope !99483, !noalias !99484
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.t, ptr %i.v, align 8, !alias.scope !99483, !noalias !99484
  br label %_RINvXsd_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtB6_13OptionVisitormENtB8_7Visitor10visit_someQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB1B_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

_RINvXsd_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtB6_13OptionVisitormENtB8_7Visitor10visit_someQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB1B_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %bb.e, %bb.d
  %storemerge.i.i.i = phi i32 [ 0, %bb.e ], [ 1, %bb.d ]
  store i32 %storemerge.i.i.i, ptr %0, align 8, !alias.scope !99483, !noalias !99484
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !99482
  br label %_RINvXse_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionmENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB1Y_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.f:                                             ; preds = %bb.b
  %i.w = add i64 %i.j, 1                          ; 4 uses
  store i64 %i.w, ptr %i.d, align 8, !alias.scope !99485, !noalias !99486
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99487)
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.w, i64 %i.f) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99488)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99489)
  %exitcond.not.i9.not.i.i = icmp ult i64 %i.w, %i.f
  br i1 %exitcond.not.i9.not.i.i, label %bb.g, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !noalias !99490, !noundef !416
  %i.z = add i64 %i.j, 2                          ; 3 uses
  store i64 %i.z, ptr %i.d, align 8, !alias.scope !99491, !noalias !99492
  %.not.i.i.i = icmp eq i8 %i.y, 117
  br i1 %.not.i.i.i, label %bb.h, label %bb.l, !prof !696

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99493)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99494)
  %exitcond.not.i9.1.i.i = icmp eq i64 %i.z, %umax.i.i.i
  br i1 %exitcond.not.i9.1.i.i, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !noalias !99495, !noundef !416
  %i.ac = add i64 %i.j, 3                         ; 3 uses
  store i64 %i.ac, ptr %i.d, align 8, !alias.scope !99496, !noalias !99492
  %.not.i.1.i.i = icmp eq i8 %i.ab, 108
  br i1 %.not.i.1.i.i, label %bb.j, label %bb.l, !prof !696

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99497)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99498)
  %exitcond.not.i9.2.i.i = icmp eq i64 %i.ac, %umax.i.i.i
  br i1 %exitcond.not.i9.2.i.i, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !99499, !noundef !416
  %i.af = add i64 %i.j, 4
  store i64 %i.af, ptr %i.d, align 8, !alias.scope !99500, !noalias !99492
  %.not.i.2.i.i = icmp eq i8 %i.ae, 108
  br i1 %.not.i.2.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %bb.l, !prof !696

_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i: ; preds = %bb.j, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !99501
  store i64 5, ptr %i.b, align 8, !noalias !99501
  %i.ag = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !99502
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !99501
  br label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.i, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !99501
  store i64 9, ptr %i.a, align 8, !noalias !99501
  %i.ah = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a), !noalias !99502
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !99501
  br label %bb.m

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.ai, align 4, !alias.scope !99503, !noalias !99504
  store i32 0, ptr %0, align 8, !alias.scope !99503, !noalias !99504
  br label %_RINvXse_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionmENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB1Y_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.m:                                             ; preds = %bb.l, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i
  %.sroa.0.1.i.ph.i.i = phi ptr [ %i.ag, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i ], [ %i.ah, %bb.l ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph.i.i, ptr %i.aj, align 8, !alias.scope !99486, !noalias !99504
  store i32 1, ptr %0, align 8, !alias.scope !99486, !noalias !99504
  br label %_RINvXse_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionmENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB1Y_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit

_RINvXse_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionmENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB1Y_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %_RINvXsd_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtB6_13OptionVisitormENtB8_7Visitor10visit_someQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB1B_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, %bb.m
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs3_NtCskpEw9nXJLNc_10serde_core2deINtNtCscI6d9CVNmLh_4core6marker11PhantomDataINtNtBG_6option6OptionyEENtB6_15DeserializeSeed11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2n_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99540)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99541)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99542)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99543)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99544)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !99545, !noalias !99546, !noundef !416 ; 4 uses
  %.promoted.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !99547, !noalias !99548 ; 2 uses
  %i.f = icmp ult i64 %.promoted.i.i.i, %i.e
  br i1 %i.f, label %.lr.ph.i.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !99545, !noalias !99546, !nonnull !416, !noundef !416 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.i = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.l, %bb.c ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99549)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99550)
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !noalias !99551, !noundef !416
  switch i8 %i.k, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 110, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.l = add i64 %i.i, 1                          ; 3 uses
  store i64 %i.l, ptr %i.c, align 8, !alias.scope !99552, !noalias !99548
  %exitcond.not.i.i.i = icmp eq i64 %i.l, %i.e
  br i1 %exitcond.not.i.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i, label %bb.b

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i: ; preds = %bb.c, %bb.b, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99553)
  %i.m = tail call fastcc { i64, ptr } @_RINvXs19_NtNtCskpEw9nXJLNc_10serde_core2de5implsyNtB9_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB1m_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(56) %1), !noalias !99554 ; 2 uses
  %i.n = extractvalue { i64, ptr } %i.m, 0
  %i.o = trunc nuw i64 %i.n to i1
  %spec.select.i.i.i = select i1 %i.o, i64 -1, i64 1
  %i.p = extractvalue { i64, ptr } %i.m, 1
  %.sink2.i.i.i = ptrtoint ptr %i.p to i64
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink2.i.i.i, ptr %i.q, align 8, !alias.scope !99554, !noalias !99555
  br label %_RINvXse_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionyENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB1Y_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.d:                                             ; preds = %bb.b
  %i.r = add i64 %i.i, 1                          ; 4 uses
  store i64 %i.r, ptr %i.c, align 8, !alias.scope !99556, !noalias !99557
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99558)
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.r, i64 %i.e) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99559)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99560)
  %exitcond.not.i9.not.i.i = icmp ult i64 %i.r, %i.e
  br i1 %exitcond.not.i9.not.i.i, label %bb.e, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !noalias !99561, !noundef !416
  %i.u = add i64 %i.i, 2                          ; 3 uses
  store i64 %i.u, ptr %i.c, align 8, !alias.scope !99562, !noalias !99563
  %.not.i.i.i = icmp eq i8 %i.t, 117
  br i1 %.not.i.i.i, label %bb.f, label %bb.j, !prof !696

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99564)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99565)
  %exitcond.not.i9.1.i.i = icmp eq i64 %i.u, %umax.i.i.i
  br i1 %exitcond.not.i9.1.i.i, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !noalias !99566, !noundef !416
  %i.x = add i64 %i.i, 3                          ; 3 uses
  store i64 %i.x, ptr %i.c, align 8, !alias.scope !99567, !noalias !99563
  %.not.i.1.i.i = icmp eq i8 %i.w, 108
  br i1 %.not.i.1.i.i, label %bb.h, label %bb.j, !prof !696

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99568)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99569)
  %exitcond.not.i9.2.i.i = icmp eq i64 %i.x, %umax.i.i.i
  br i1 %exitcond.not.i9.2.i.i, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !noalias !99570, !noundef !416
  %i.aa = add i64 %i.i, 4
  store i64 %i.aa, ptr %i.c, align 8, !alias.scope !99571, !noalias !99563
  %.not.i.2.i.i = icmp eq i8 %i.z, 108
  br i1 %.not.i.2.i.i, label %_RINvXse_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionyENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB1Y_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.j, !prof !696

_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i: ; preds = %bb.h, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !99572
  store i64 5, ptr %i.b, align 8, !noalias !99572
  %i.ab = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !99573
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !99572
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !99572
  store i64 9, ptr %i.a, align 8, !noalias !99572
  %i.ac = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a), !noalias !99573
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !99572
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i
  %.sroa.0.1.i.ph.i.i = phi ptr [ %i.ab, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i ], [ %i.ac, %bb.j ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph.i.i, ptr %i.ad, align 8, !alias.scope !99557, !noalias !99574
  br label %_RINvXse_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionyENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB1Y_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit

_RINvXse_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCscI6d9CVNmLh_4core6option6OptionyENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB1Y_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i, %bb.i, %bb.k
  %.sink.i.i = phi i64 [ -1, %bb.k ], [ %spec.select.i.i.i, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i ], [ 0, %bb.i ]
  store i64 %.sink.i.i, ptr %0, align 8, !alias.scope !99557, !noalias !99574
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs3_NtCskpEw9nXJLNc_10serde_core2deINtNtCscI6d9CVNmLh_4core6marker11PhantomDataINtNtCs40k4W9msRzi_5alloc3vec3VecTyNtNtB1o_6string6StringEEENtB6_15DeserializeSeed11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2W_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 8 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.929.i.i.i.i.i.i.i.i.i = alloca i64, align 8 ; 10 uses
  %.sroa.15.i.i.i.i.i.i.i.i.i = alloca i64, align 8 ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.9.i.i.i.i.i = alloca i64, align 8        ; 8 uses
  %.sroa.15.i.i.i.i.i = alloca i64, align 8       ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 10 uses
  %i.k = alloca [16 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99690)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99691)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99692)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99693)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99694)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !99695, !noalias !99696, !noundef !416 ; 2 uses
  %.promoted.i.i.i = load i64, ptr %i.o, align 8, !alias.scope !99697, !noalias !99698 ; 2 uses
  %i.r = icmp ult i64 %.promoted.i.i.i, %i.q
  br i1 %i.r, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !99695, !noalias !99696, !nonnull !416, !noundef !416
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.u = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.x, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99699)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99700)
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !noalias !99701, !noundef !416
  switch i8 %i.w, label %bb.e [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 91, label %bb.d
  ], !prof !440

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.x = add i64 %i.u, 1                          ; 3 uses
  store i64 %i.x, ptr %i.o, align 8, !alias.scope !99702, !noalias !99698
  %exitcond.not.i.i.i = icmp eq i64 %i.x, %i.q
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i, label %bb.b

.loopexit.i.i:                                    ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !99703
  store i64 5, ptr %i.n, align 8, !noalias !99703
  %i.y = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.n), !noalias !99704
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !99703
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %i.z, align 8, !alias.scope !99704, !noalias !99705
  store i64 -1, ptr %0, align 8, !alias.scope !99704, !noalias !99705
  br label %_RINvXsh_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCs40k4W9msRzi_5alloc3vec3VecTyNtNtBO_6string6StringEENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2g_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.d:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.ab = load i8, ptr %i.aa, align 8, !alias.scope !99705, !noalias !99704, !noundef !416
  %i.ac = add i8 %i.ab, -1                        ; 2 uses
  store i8 %i.ac, ptr %i.aa, align 8, !alias.scope !99705, !noalias !99704
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.f, label %bb.g, !prof !426

bb.e:                                             ; preds = %bb.b
  %i.ae = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE17peek_invalid_typeCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @584), !noalias !99704
  br label %.thread45.i.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !99703
  store i64 24, ptr %i.m, align 8, !noalias !99703
  %i.af = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.m), !noalias !99704
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !99703
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !alias.scope !99704, !noalias !99705
  store i64 -1, ptr %0, align 8, !alias.scope !99704, !noalias !99705
  br label %_RINvXsh_NtNtCskpEw9nXJLNc_10serde_core2de5implsINtNtCs40k4W9msRzi_5alloc3vec3VecTyNtNtBO_6string6StringEENtB8_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB2g_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.g:                                             ; preds = %bb.d
  %i.ah = add i64 %i.u, 1
  store i64 %i.ah, ptr %i.o, align 8, !alias.scope !99706, !noalias !99704
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !99703
  store ptr %1, ptr %i.k, align 8, !noalias !99707
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i8 1, ptr %i.ai, align 8, !noalias !99707
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !99707
  store i64 0, ptr %i.j, align 8, !noalias !99707
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.aj, align 8, !noalias !99707
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.12.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.929.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.14.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.15.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  br label %bb.h

bb.h:                                             ; preds = %bb.av, %bb.g
  %storemerge.i.i.i = phi i64 [ 0, %bb.g ], [ %i.dt, %bb.av ]
  store i64 %storemerge.i.i.i, ptr %i.ak, align 8, !noalias !99707
  call void @llvm.experimental.noalias.scope.decl(metadata !99708)
  call void @llvm.experimental.noalias.scope.decl(metadata !99709)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !99710
  invoke fastcc void @_RINvNvXs7_NtCs5QD3CVEMyfH_10serde_json2deINtB8_9SeqAccesspENtNtCskpEw9nXJLNc_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read7StrReadECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k)
          to label %.noexc.i.i.i unwind label %bb.am, !noalias !99711

.noexc.i.i.i:                                     ; preds = %bb.h
  %i.as = load i8, ptr %i.i, align 8, !range !428, !noalias !99710, !noundef !416
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.noexc.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !noalias !99710, !nonnull !416, !align !417, !noundef !416
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !99710
end_hunk_5
begin_hunk_6_@_RINvXs4s_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB7_13AlterOperatorNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtB13_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102201)
  %i.da = load ptr, ptr %1, align 8, !alias.scope !102201, !noalias !102150, !nonnull !416, !noundef !416
  %i.db = load ptr, ptr %i.f, align 8, !alias.scope !102201, !noalias !102150, !nonnull !416, !align !417, !noundef !416
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 136
  %i.dd = load ptr, ptr %i.dc, align 8, !invariant.load !416, !noalias !102202, !nonnull !416
  tail call void %i.dd(ptr noundef nonnull %i.da, i64 noundef %i.cz), !noalias !102202, !inline_history !102141
  %.idx = shl nuw nsw i64 %i.cz, 5
  %i.de = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.idx
  %i.df = icmp eq i64 %i.cz, 0
  br i1 %i.df, label %_RINvXs4C_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB7_22AlterOperatorOperationNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtB1c_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l, %.lr.ph
  %.sroa.0.0.i5 = phi ptr [ %i.dg, %.lr.ph ], [ %i.cx, %bb.l ] ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i5, i64 32 ; 2 uses
  tail call fastcc void @_RINvXs4M_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB7_14OperatorOptionNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtB14_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i5, ptr noalias noundef nonnull align 8 dereferenceable(16) %1), !noalias !102150, !inline_history !102142
  %i.dh = icmp eq ptr %i.dg, %i.de
  br i1 %i.dh, label %_RINvXs4C_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB7_22AlterOperatorOperationNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtB1c_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %.lr.ph

_RINvXs4C_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB7_22AlterOperatorOperationNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtB1c_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %.lr.ph, %_RINvXs55_NtCs40MM8ukkVQd_9sqlparser3astNtB7_14ObjectNamePartNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtBY_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, %bb.l, %bb.g, %bb.f, %bb.e, %bb.d
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs59_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB7_16RenameSelectItemNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtB18_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !421, !noundef !416
  %i.b = icmp eq i64 %i.a, -1                     ; 2 uses
  %i.c = zext i1 %i.b to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.d = getelementptr inbounds nuw i8, ptr %.8.val, i64 128
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !416, !noalias !734, !nonnull !416 ; 5 uses
  tail call void %i.e(ptr noundef nonnull %.0.val, i64 noundef %i.c), !noalias !734, !inline_history !710
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !416, !noundef !416 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i64, ptr %i.h, align 8, !noundef !416 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.8.val, i64 136
  %i.k = load ptr, ptr %i.j, align 8, !invariant.load !416, !noalias !102246, !nonnull !416
  tail call void %i.k(ptr noundef nonnull %.0.val, i64 noundef %i.i), !noalias !102246, !inline_history !471
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102247)
  %.idx.i = shl nuw nsw i64 %i.i, 7
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx.i
  %i.m = icmp eq i64 %i.i, 0
  br i1 %i.m, label %_RINvYNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query14IdentWithAliasNtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceQDNtBZ_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.8.val, i64 144
  %i.o = load ptr, ptr %i.n, align 8, !invariant.load !416, !noalias !102248, !nonnull !416 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.8.val, i64 56 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_RINvXs4v_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB7_14IdentWithAliasNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtB16_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, %.lr.ph.i
  %.sroa.0.01.i = phi ptr [ %i.g, %.lr.ph.i ], [ %i.q, %_RINvXs4v_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB7_14IdentWithAliasNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtB16_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i ] ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i, i64 128 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102249)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102250)
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !102251, !nonnull !416, !noundef !416
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i, i64 16
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !102251, !noundef !416
  tail call void %i.o(ptr noundef nonnull %.0.val, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef %i.u), !noalias !102252, !inline_history !102214
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i, i64 56
  %i.w = load i32, ptr %i.v, align 8, !range !705, !alias.scope !102251, !noundef !416 ; 2 uses
  %i.x = icmp ne i32 %i.w, -1                     ; 2 uses
  %i.y = zext i1 %i.x to i64
  tail call void %i.e(ptr noundef nonnull %.0.val, i64 noundef %i.y), !noalias !102253, !inline_history !102217
  br i1 %i.x, label %bb.d, label %_RINvXs3_NtCs40MM8ukkVQd_9sqlparser3astNtB6_5IdentNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtBN_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.z = load ptr, ptr %i.p, align 8, !invariant.load !416, !noalias !102254, !nonnull !416
  tail call void %i.z(ptr noundef nonnull %.0.val, i32 noundef %i.w), !noalias !102254, !inline_history !102220
  br label %_RINvXs3_NtCs40MM8ukkVQd_9sqlparser3astNtB6_5IdentNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtBN_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

_RINvXs3_NtCs40MM8ukkVQd_9sqlparser3astNtB6_5IdentNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtBN_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %bb.d, %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102255)
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i, i64 72
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !102256, !nonnull !416, !noundef !416
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i, i64 80
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !102256, !noundef !416
  tail call void %i.o(ptr noundef nonnull %.0.val, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef %i.ad), !noalias !102257, !inline_history !102214
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i, i64 120
  %i.af = load i32, ptr %i.ae, align 8, !range !705, !alias.scope !102256, !noundef !416 ; 2 uses
  %i.ag = icmp ne i32 %i.af, -1                   ; 2 uses
  %i.ah = zext i1 %i.ag to i64
  tail call void %i.e(ptr noundef nonnull %.0.val, i64 noundef %i.ah), !noalias !102258, !inline_history !102217
  br i1 %i.ag, label %bb.e, label %_RINvXs4v_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB7_14IdentWithAliasNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtB16_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i

bb.e:                                             ; preds = %_RINvXs3_NtCs40MM8ukkVQd_9sqlparser3astNtB6_5IdentNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtBN_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  %i.ai = load ptr, ptr %i.p, align 8, !invariant.load !416, !noalias !102259, !nonnull !416
  tail call void %i.ai(ptr noundef nonnull %.0.val, i32 noundef %i.af), !noalias !102259, !inline_history !102220
  br label %_RINvXs4v_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB7_14IdentWithAliasNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtB16_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i

_RINvXs4v_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB7_14IdentWithAliasNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtB16_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %bb.e, %_RINvXs3_NtCs40MM8ukkVQd_9sqlparser3astNtB6_5IdentNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtBN_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  %i.aj = icmp eq ptr %i.q, %i.l
  br i1 %i.aj, label %_RINvYNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query14IdentWithAliasNtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceQDNtBZ_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.c

bb.f:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102260)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !102260, !nonnull !416, !noundef !416
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !102260, !noundef !416
  %i.ao = getelementptr inbounds nuw i8, ptr %.8.val, i64 144
  %i.ap = load ptr, ptr %i.ao, align 8, !invariant.load !416, !noalias !102261, !nonnull !416 ; 2 uses
  tail call void %i.ap(ptr noundef nonnull %.0.val, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.al, i64 noundef %i.an), !noalias !102262, !inline_history !717
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ar = load i32, ptr %i.aq, align 8, !range !705, !alias.scope !102260, !noundef !416 ; 2 uses
  %i.as = icmp ne i32 %i.ar, -1                   ; 2 uses
  %i.at = zext i1 %i.as to i64
  tail call void %i.e(ptr noundef nonnull %.0.val, i64 noundef %i.at), !noalias !102263, !inline_history !718
  br i1 %i.as, label %bb.g, label %_RINvXs3_NtCs40MM8ukkVQd_9sqlparser3astNtB6_5IdentNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtBN_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.g:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %.8.val, i64 56
  %i.av = load ptr, ptr %i.au, align 8, !invariant.load !416, !noalias !102264, !nonnull !416
  tail call void %i.av(ptr noundef nonnull %.0.val, i32 noundef %i.ar), !noalias !102264, !inline_history !719
  br label %_RINvXs3_NtCs40MM8ukkVQd_9sqlparser3astNtB6_5IdentNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtBN_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit

_RINvXs3_NtCs40MM8ukkVQd_9sqlparser3astNtB6_5IdentNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtBN_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.f, %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102265)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !102265, !nonnull !416, !noundef !416
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !102265, !noundef !416
  tail call void %i.ap(ptr noundef nonnull %.0.val, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ax, i64 noundef %i.az), !noalias !102266, !inline_history !717
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bb = load i32, ptr %i.ba, align 8, !range !705, !alias.scope !102265, !noundef !416 ; 2 uses
  %i.bc = icmp ne i32 %i.bb, -1                   ; 2 uses
  %i.bd = zext i1 %i.bc to i64
  tail call void %i.e(ptr noundef nonnull %.0.val, i64 noundef %i.bd), !noalias !102267, !inline_history !718
  br i1 %i.bc, label %bb.h, label %_RINvYNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query14IdentWithAliasNtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceQDNtBZ_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.h:                                             ; preds = %_RINvXs3_NtCs40MM8ukkVQd_9sqlparser3astNtB6_5IdentNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtBN_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit
  %i.be = getelementptr inbounds nuw i8, ptr %.8.val, i64 56
  %i.bf = load ptr, ptr %i.be, align 8, !invariant.load !416, !noalias !102268, !nonnull !416
  tail call void %i.bf(ptr noundef nonnull %.0.val, i32 noundef %i.bb), !noalias !102268, !inline_history !719
  br label %_RINvYNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query14IdentWithAliasNtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceQDNtBZ_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit

_RINvYNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query14IdentWithAliasNtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceQDNtBZ_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %_RINvXs4v_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB7_14IdentWithAliasNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtB16_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, %bb.h, %_RINvXs3_NtCs40MM8ukkVQd_9sqlparser3astNtB6_5IdentNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtBN_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs5_NtCs5QD3CVEMyfH_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de12Deserializer18deserialize_optionINtNtB1j_5impls13OptionVisitorjEECsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102298)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !102299, !noalias !102300, !noundef !416 ; 4 uses
  %.promoted.i = load i64, ptr %i.c, align 8, !alias.scope !102298, !noalias !102301 ; 2 uses
  %i.f = icmp ult i64 %.promoted.i, %i.e
  br i1 %i.f, label %.lr.ph.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread

.lr.ph.i:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !102299, !noalias !102300, !nonnull !416, !noundef !416 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.i = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.l, %bb.c ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102302)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102303)
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !noalias !102304, !noundef !416
  switch i8 %i.k, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 110, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.l = add i64 %i.i, 1                          ; 3 uses
  store i64 %i.l, ptr %i.c, align 8, !alias.scope !102305, !noalias !102301
  %exitcond.not.i = icmp eq i64 %i.l, %i.e
  br i1 %exitcond.not.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread, label %bb.b

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread: ; preds = %bb.b, %bb.c, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102306)
  %i.m = tail call fastcc { i64, ptr } @_RINvXs1c_NtNtCskpEw9nXJLNc_10serde_core2de5implsjNtB9_11Deserialize11deserializeQINtNtCs5QD3CVEMyfH_10serde_json2de12DeserializerNtNtB1m_4read7StrReadEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(56) %1), !noalias !102306 ; 2 uses
  %i.n = extractvalue { i64, ptr } %i.m, 0
  %i.o = trunc nuw i64 %i.n to i1
  %spec.select.i = select i1 %i.o, i64 -1, i64 1
  %i.p = extractvalue { i64, ptr } %i.m, 1
  %.sink2.i = ptrtoint ptr %i.p to i64
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink2.i, ptr %i.q, align 8, !alias.scope !102306, !noalias !102307
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.d:                                             ; preds = %bb.b
  %i.r = add i64 %i.i, 1                          ; 4 uses
  store i64 %i.r, ptr %i.c, align 8, !alias.scope !102308
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102309)
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.r, i64 %i.e) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102310)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102311)
  %exitcond.not.i9.not = icmp ult i64 %i.r, %i.e
  br i1 %exitcond.not.i9.not, label %bb.e, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !noalias !102312, !noundef !416
  %i.u = add i64 %i.i, 2                          ; 3 uses
  store i64 %i.u, ptr %i.c, align 8, !alias.scope !102313, !noalias !102314
  %.not.i = icmp eq i8 %i.t, 117
  br i1 %.not.i, label %bb.f, label %bb.j, !prof !696

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102315)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102316)
  %exitcond.not.i9.1 = icmp eq i64 %i.u, %umax.i
  br i1 %exitcond.not.i9.1, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !noalias !102317, !noundef !416
  %i.x = add i64 %i.i, 3                          ; 3 uses
  store i64 %i.x, ptr %i.c, align 8, !alias.scope !102318, !noalias !102314
  %.not.i.1 = icmp eq i8 %i.w, 108
  br i1 %.not.i.1, label %bb.h, label %bb.j, !prof !696

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102319)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102320)
  %exitcond.not.i9.2 = icmp eq i64 %i.x, %umax.i
  br i1 %exitcond.not.i9.2, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !noalias !102321, !noundef !416
  %i.aa = add i64 %i.i, 4
  store i64 %i.aa, ptr %i.c, align 8, !alias.scope !102322, !noalias !102314
  %.not.i.2 = icmp eq i8 %i.z, 108
  br i1 %.not.i.2, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.j, !prof !696

_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i: ; preds = %bb.h, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !102323
  store i64 5, ptr %i.b, align 8, !noalias !102323
  %i.ab = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !102324
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !102323
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !102323
  store i64 9, ptr %i.a, align 8, !noalias !102323
  %i.ac = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a), !noalias !102324
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !102323
  br label %bb.k

bb.k:                                             ; preds = %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, %bb.j
  %.sroa.0.1.i.ph = phi ptr [ %i.ab, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i ], [ %i.ac, %bb.j ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph, ptr %i.ad, align 8
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.i, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread, %bb.k
  %.sink = phi i64 [ -1, %bb.k ], [ %spec.select.i, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread ], [ 0, %bb.i ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs5_NtCs5QD3CVEMyfH_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCskpEw9nXJLNc_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2s_5ValueNtB1l_11Deserialize11deserialize12ValueVisitorECsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %.sroa.4.i60 = alloca [31 x i8], align 1        ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 5 uses
  %i.g = alloca [56 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [32 x i8], align 8                ; 20 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [32 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 10 uses
  %i.m = alloca [16 x i8], align 8                ; 8 uses
  %i.n = alloca [32 x i8], align 8                ; 8 uses
  %i.o = alloca [24 x i8], align 8                ; 11 uses
  %i.p = alloca [16 x i8], align 8                ; 6 uses
  %i.q = alloca [32 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 4 uses
  %i.y = alloca [40 x i8], align 8                ; 7 uses
  %i.z = alloca [24 x i8], align 8                ; 4 uses
  %i.aa = alloca [32 x i8], align 8               ; 7 uses
  %i.ab = alloca [40 x i8], align 8               ; 12 uses
  %.sroa.8 = alloca [16 x i8], align 8            ; 6 uses
  %i.ac = alloca [24 x i8], align 8               ; 4 uses
  %i.ad = alloca [24 x i8], align 8               ; 7 uses
  %i.ae = alloca [16 x i8], align 8               ; 6 uses
  %i.af = alloca [16 x i8], align 8               ; 6 uses
  %.sroa.20 = alloca [6 x i8], align 2            ; 6 uses
  %i.ag = alloca [24 x i8], align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102475)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 19 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !102476, !noalias !102477, !noundef !416 ; 8 uses
  %.promoted.i = load i64, ptr %i.ah, align 8, !alias.scope !102475, !noalias !102478 ; 2 uses
  %i.ak = icmp ult i64 %.promoted.i, %i.aj
  br i1 %i.ak, label %.lr.ph.i, label %.loopexit164

.lr.ph.i:                                         ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !102476, !noalias !102477, !nonnull !416, !noundef !416 ; 11 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.an = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.aq, %bb.c ] ; 19 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102479)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !noalias !102480, !noundef !416 ; 3 uses
  switch i8 %i.ap, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.aq = add i64 %i.an, 1                        ; 3 uses
  store i64 %i.aq, ptr %i.ah, align 8, !alias.scope !102481, !noalias !102478
  %exitcond.not.i = icmp eq i64 %i.aq, %i.aj
  br i1 %exitcond.not.i, label %.loopexit164, label %bb.b

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.20)
  switch i8 %i.ap, label %bb.d [
    i8 110, label %bb.e
    i8 116, label %bb.l
    i8 102, label %bb.s
    i8 45, label %bb.ab
    i8 34, label %bb.ac
    i8 91, label %bb.ad
    i8 123, label %bb.ae
  ]

.loopexit164:                                     ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store i64 5, ptr %i.ag, align 8
  %i.ar = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.eg

bb.d:                                             ; preds = %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit
  %i.at = add i8 %i.ap, -48
  %or.cond8 = icmp ult i8 %i.at, 10
  br i1 %or.cond8, label %bb.dy, label %bb.dx, !prof !447

bb.e:                                             ; preds = %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit
  %i.au = add i64 %i.an, 1                        ; 4 uses
  store i64 %i.au, ptr %i.ah, align 8, !alias.scope !102482
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102483)
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.au, i64 %i.aj) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102484)
  %exitcond.not.i37.not = icmp ult i64 %i.au, %i.aj
  br i1 %exitcond.not.i37.not, label %bb.f, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i

bb.f:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !102485, !noundef !416
  %i.ax = add i64 %i.an, 2                        ; 3 uses
  store i64 %i.ax, ptr %i.ah, align 8, !alias.scope !102486, !noalias !102487
  %.not.i = icmp eq i8 %i.aw, 117
  br i1 %.not.i, label %bb.g, label %bb.k, !prof !696

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102488)
  %exitcond.not.i37.1 = icmp eq i64 %i.ax, %umax.i
  br i1 %exitcond.not.i37.1, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !noalias !102489, !noundef !416
  %i.ba = add i64 %i.an, 3                        ; 3 uses
  store i64 %i.ba, ptr %i.ah, align 8, !alias.scope !102490, !noalias !102487
  %.not.i.1 = icmp eq i8 %i.az, 108
  br i1 %.not.i.1, label %bb.i, label %bb.k, !prof !696

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102491)
  %exitcond.not.i37.2 = icmp eq i64 %i.ba, %umax.i
  br i1 %exitcond.not.i37.2, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !102492, !noundef !416
  %i.bd = add i64 %i.an, 4
  store i64 %i.bd, ptr %i.ah, align 8, !alias.scope !102493, !noalias !102487
  %.not.i.2 = icmp eq i8 %i.bc, 108
  br i1 %.not.i.2, label %.thread, label %bb.k, !prof !696

_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i: ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !102494
  store i64 5, ptr %i.w, align 8, !noalias !102494
  %i.be = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.w), !noalias !102495
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !102494
  br label %bb.af

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !102494
  store i64 9, ptr %i.v, align 8, !noalias !102494
  %i.bf = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.v), !noalias !102495
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !102494
  br label %bb.af

bb.l:                                             ; preds = %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit
  %i.bg = add i64 %i.an, 1                        ; 4 uses
  store i64 %i.bg, ptr %i.ah, align 8, !alias.scope !102496
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102497)
  %umax.i40 = tail call i64 @llvm.umax.i64(i64 %i.bg, i64 %i.aj) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102498)
  %exitcond.not.i42.not = icmp ult i64 %i.bg, %i.aj
  br i1 %exitcond.not.i42.not, label %bb.m, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i46

bb.m:                                             ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !102499, !noundef !416
  %i.bj = add i64 %i.an, 2                        ; 3 uses
  store i64 %i.bj, ptr %i.ah, align 8, !alias.scope !102500, !noalias !102501
  %.not.i43 = icmp eq i8 %i.bi, 114
  br i1 %.not.i43, label %bb.n, label %bb.r, !prof !696

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102502)
  %exitcond.not.i42.1 = icmp eq i64 %i.bj, %umax.i40
  br i1 %exitcond.not.i42.1, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i46, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !102503, !noundef !416
  %i.bm = add i64 %i.an, 3                        ; 3 uses
  store i64 %i.bm, ptr %i.ah, align 8, !alias.scope !102504, !noalias !102501
  %.not.i43.1 = icmp eq i8 %i.bl, 117
  br i1 %.not.i43.1, label %bb.p, label %bb.r, !prof !696

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102505)
  %exitcond.not.i42.2 = icmp eq i64 %i.bm, %umax.i40
  br i1 %exitcond.not.i42.2, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i46, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bn = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !102506, !noundef !416
  %i.bp = add i64 %i.an, 4
  store i64 %i.bp, ptr %i.ah, align 8, !alias.scope !102507, !noalias !102501
  %.not.i43.2 = icmp eq i8 %i.bo, 101
  br i1 %.not.i43.2, label %.thread, label %bb.r, !prof !696

_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i46: ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !102508
  store i64 5, ptr %i.u, align 8, !noalias !102508
  %i.bq = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.u), !noalias !102509
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !102508
  br label %bb.ai

bb.r:                                             ; preds = %bb.q, %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !102508
  store i64 9, ptr %i.t, align 8, !noalias !102508
  %i.br = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.t), !noalias !102509
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !102508
  br label %bb.ai

bb.s:                                             ; preds = %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit
  %i.bs = add i64 %i.an, 1                        ; 4 uses
  store i64 %i.bs, ptr %i.ah, align 8, !alias.scope !102510
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102511)
  %umax.i49 = tail call i64 @llvm.umax.i64(i64 %i.bs, i64 %i.aj) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102512)
  %exitcond.not.i51.not = icmp ult i64 %i.bs, %i.aj
  br i1 %exitcond.not.i51.not, label %bb.t, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i55

bb.t:                                             ; preds = %bb.s
  %i.bt = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !noalias !102513, !noundef !416
  %i.bv = add i64 %i.an, 2                        ; 3 uses
  store i64 %i.bv, ptr %i.ah, align 8, !alias.scope !102514, !noalias !102515
  %.not.i52 = icmp eq i8 %i.bu, 97
  br i1 %.not.i52, label %bb.u, label %bb.aa, !prof !696

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102516)
  %exitcond.not.i51.1 = icmp eq i64 %i.bv, %umax.i49
  br i1 %exitcond.not.i51.1, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i55, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bw = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !noalias !102517, !noundef !416
  %i.by = add i64 %i.an, 3                        ; 3 uses
  store i64 %i.by, ptr %i.ah, align 8, !alias.scope !102518, !noalias !102515
  %.not.i52.1 = icmp eq i8 %i.bx, 108
  br i1 %.not.i52.1, label %bb.w, label %bb.aa, !prof !696

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102519)
  %exitcond.not.i51.2 = icmp eq i64 %i.by, %umax.i49
  br i1 %exitcond.not.i51.2, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i55, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bz = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !noalias !102520, !noundef !416
  %i.cb = add i64 %i.an, 4                        ; 3 uses
  store i64 %i.cb, ptr %i.ah, align 8, !alias.scope !102521, !noalias !102515
  %.not.i52.2 = icmp eq i8 %i.ca, 115
  br i1 %.not.i52.2, label %bb.y, label %bb.aa, !prof !696

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102522)
  %exitcond.not.i51.3 = icmp eq i64 %i.cb, %umax.i49
  br i1 %exitcond.not.i51.3, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i55, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cc = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !noalias !102523, !noundef !416
  %i.ce = add i64 %i.an, 5
  store i64 %i.ce, ptr %i.ah, align 8, !alias.scope !102524, !noalias !102515
  %.not.i52.3 = icmp eq i8 %i.cd, 101
  br i1 %.not.i52.3, label %.thread, label %bb.aa, !prof !696

_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i55: ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !102525
  store i64 5, ptr %i.s, align 8, !noalias !102525
  %i.cf = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.s), !noalias !102526
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !102525
  br label %bb.aj

bb.aa:                                            ; preds = %bb.z, %bb.x, %bb.v, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !102525
  store i64 9, ptr %i.r, align 8, !noalias !102525
  %i.cg = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.r), !noalias !102526
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !102525
  br label %bb.aj

bb.ab:                                            ; preds = %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit
  %i.ch = add i64 %i.an, 1
  store i64 %i.ch, ptr %i.ah, align 8, !alias.scope !102527
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call fastcc void @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_integerCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.af, ptr noalias noundef align 8 dereferenceable(56) %1, i1 noundef zeroext false)
  %i.ci = load i64, ptr %i.af, align 8, !range !495, !noundef !416 ; 2 uses
  %i.cj = icmp eq i64 %i.ci, -1
  %i.ck = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  br i1 %i.cj, label %bb.ak, label %bb.al

bb.ac:                                            ; preds = %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit
  %i.cl = add i64 %i.an, 1
  store i64 %i.cl, ptr %i.ah, align 8, !alias.scope !102528
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.cm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read9parse_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ad, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  %i.cn = load i64, ptr %i.ad, align 8, !range !437, !noundef !416 ; 2 uses
  %i.co = icmp eq i64 %i.cn, -1
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8            ; 3 uses
  br i1 %i.co, label %bb.ap, label %bb.aq

bb.ad:                                            ; preds = %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.cs = load i8, ptr %i.cr, align 8, !noundef !416
  %i.ct = add i8 %i.cs, -1                        ; 2 uses
  store i8 %i.ct, ptr %i.cr, align 8
  %i.cu = icmp eq i8 %i.ct, 0
  br i1 %i.cu, label %bb.az, label %bb.ba, !prof !426

bb.ae:                                            ; preds = %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsfR8GmIBoxTX_21lance_namespace_impls.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.cw = load i8, ptr %i.cv, align 8, !noundef !416
  %i.cx = add i8 %i.cw, -1                        ; 2 uses
  store i8 %i.cx, ptr %i.cv, align 8
  %i.cy = icmp eq i8 %i.cx, 0
  br i1 %i.cy, label %bb.cf, label %bb.cg, !prof !426

bb.af:                                            ; preds = %bb.k, %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i
  %.sroa.0.1.i.ph = phi ptr [ %i.be, %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i ], [ %i.bf, %bb.k ]
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph, ptr %i.cz, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.ah

bb.ag:                                            ; preds = %.thread159, %.thread156
  %.sroa.33.0 = phi i64 [ %.sroa.33.3, %.thread159 ], [ %.sroa.33.2, %.thread156 ]
  %.sroa.29.0 = phi i64 [ %.sroa.29.3, %.thread159 ], [ %.sroa.29.2, %.thread156 ]
  %.sroa.20203.0 = phi i64 [ %.sroa.20203.3, %.thread159 ], [ %.sroa.20203.2, %.thread156 ] ; 2 uses
  %.sroa.18.0 = phi i8 [ %.sroa.18.2, %.thread159 ], [ %.sroa.18.1, %.thread156 ]
  %.sroa.0.0 = phi i8 [ %.sroa.0.3, %.thread159 ], [ %.sroa.0.2, %.thread156 ] ; 2 uses
  %i.da = icmp eq i8 %.sroa.0.0, -1
  br i1 %i.da, label %._crit_edge, label %.thread, !prof !102529

._crit_edge:                                      ; preds = %bb.ag
  %i.db = inttoptr i64 %.sroa.20203.0 to ptr
  br label %bb.dz

bb.ah:                                            ; preds = %bb.ea, %bb.cf, %bb.az, %bb.ap, %bb.ak, %bb.aj, %bb.ai, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20)
  br label %bb.eg

bb.ai:                                            ; preds = %bb.r, %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i46
  %.sroa.0.1.i45.ph = phi ptr [ %i.bq, %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i46 ], [ %i.br, %bb.r ]
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i45.ph, ptr %i.dc, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.ah

bb.aj:                                            ; preds = %bb.aa, %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i55
  %.sroa.0.1.i54.ph = phi ptr [ %i.cf, %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i55 ], [ %i.cg, %bb.aa ]
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i54.ph, ptr %i.dd, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.ah

bb.ak:                                            ; preds = %bb.ab
  %i.de = load ptr, ptr %i.ck, align 8, !nonnull !416, !align !417, !noundef !416
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.de, ptr %i.df, align 8
  store i8 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.ah

bb.al:                                            ; preds = %bb.ab
  %.sroa.2.0.copyload = load i64, ptr %i.ck, align 8 ; 3 uses
  switch i64 %i.ci, label %default.unreachable254 [
    i64 0, label %bb.am
    i64 1, label %_RINvMs2_NtCs5QD3CVEMyfH_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserialize12ValueVisitorECsfR8GmIBoxTX_21lance_namespace_impls.exit
    i64 2, label %bb.ao
  ]

default.unreachable254:                           ; preds = %bb.eb, %bb.al
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.dg = bitcast i64 %.sroa.2.0.copyload to double
  %i.dh = tail call double @llvm.fabs.f64(double %i.dg)
  %i.di = fcmp ueq double %i.dh, +inf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !102530
  br i1 %i.di, label %_RINvXNvXNtNtCs5QD3CVEMyfH_10serde_json5value2deNtB8_5ValueNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  store i8 0, ptr %i.q, align 8, !noalias !102530
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs5QD3CVEMyfH_10serde_json5value5ValueECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.q), !noalias !102531
  br label %_RINvXNvXNtNtCs5QD3CVEMyfH_10serde_json5value2deNtB8_5ValueNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsfR8GmIBoxTX_21lance_namespace_impls.exit.i

_RINvXNvXNtNtCs5QD3CVEMyfH_10serde_json5value2deNtB8_5ValueNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %bb.an, %bb.am
  %.sroa.08.014.i.i = phi i64 [ 2, %bb.an ], [ -1, %bb.am ]
  %.sroa.0.0.i.i = phi i8 [ 2, %bb.an ], [ 0, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !102530
  br label %_RINvMs2_NtCs5QD3CVEMyfH_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserialize12ValueVisitorECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.ao:                                            ; preds = %bb.al
  %.lobit.i.i = lshr i64 %.sroa.2.0.copyload, 63
  br label %_RINvMs2_NtCs5QD3CVEMyfH_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserialize12ValueVisitorECsfR8GmIBoxTX_21lance_namespace_impls.exit

_RINvMs2_NtCs5QD3CVEMyfH_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserialize12ValueVisitorECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.al, %_RINvXNvXNtNtCs5QD3CVEMyfH_10serde_json5value2deNtB8_5ValueNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, %bb.ao
  %.sroa.0.0.i.i.sink = phi i8 [ %.sroa.0.0.i.i, %_RINvXNvXNtNtCs5QD3CVEMyfH_10serde_json5value2deNtB8_5ValueNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsfR8GmIBoxTX_21lance_namespace_impls.exit.i ], [ 2, %bb.ao ], [ 2, %bb.al ]
  %.sroa.08.014.i.i.sink = phi i64 [ %.sroa.08.014.i.i, %_RINvXNvXNtNtCs5QD3CVEMyfH_10serde_json5value2deNtB8_5ValueNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsfR8GmIBoxTX_21lance_namespace_impls.exit.i ], [ %.lobit.i.i, %bb.ao ], [ 0, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %.thread

bb.ap:                                            ; preds = %bb.ac
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cq, ptr %i.dj, align 8
  store i8 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.ah

bb.aq:                                            ; preds = %bb.ac
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 10 uses
  %i.dk = trunc nuw i64 %i.cn to i1
end_hunk_6
begin_hunk_7_@_RINvYINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprENtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceQDNtB1m_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls:bb.a

bb.b:                                             ; preds = %.lr.ph5, %_RINvYNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprNtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceQDNtBO_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.loopexit
  %.sroa.0.04 = phi ptr [ %0, %.lr.ph5 ], [ %i.e, %_RINvYNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprNtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceQDNtBO_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.loopexit ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124694)
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !124694, !noalias !124695, !nonnull !416, !noundef !416 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !124694, !noalias !124695, !noundef !416 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124696)
  %i.j = load ptr, ptr %2, align 8, !alias.scope !124696, !noalias !124694, !nonnull !416, !noundef !416
  %i.k = load ptr, ptr %i.c, align 8, !alias.scope !124696, !noalias !124694, !nonnull !416, !align !417, !noundef !416
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !416, !noalias !124697, !nonnull !416
  tail call void %i.m(ptr noundef nonnull %i.j, i64 noundef %i.i), !noalias !124697, !inline_history !124692
  %.idx6 = mul nuw nsw i64 %i.i, 112
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx6
  %i.o = icmp eq i64 %i.i, 0
  br i1 %i.o, label %_RINvYNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprNtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceQDNtBO_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.sroa.0.0.i3 = phi ptr [ %i.p, %.lr.ph ], [ %i.g, %bb.b ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i3, i64 112 ; 2 uses
  tail call fastcc void @_RINvXs18_NtCs1Jc0oVeks7E_15datafusion_expr4exprNtB7_4ExprNtNtCscI6d9CVNmLh_4core4hash4Hash4hashQDNtBV_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %.sroa.0.0.i3, ptr noalias noundef nonnull align 8 dereferenceable(16) %2), !noalias !124694, !inline_history !124693
  %i.q = icmp eq ptr %i.p, %i.n
  br i1 %i.q, label %_RINvYNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprNtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceQDNtBO_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.loopexit, label %.lr.ph

_RINvYNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprNtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceQDNtBO_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit._crit_edge: ; preds = %_RINvYNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprNtNtCscI6d9CVNmLh_4core4hash4Hash10hash_sliceQDNtBO_6HasherEL_ECsfR8GmIBoxTX_21lance_namespace_impls.exit.loopexit, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray12as_primitiveNtNtBG_5types10UInt64TypeECsfR8GmIBoxTX_21lance_namespace_impls(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.c = load i64, ptr %i.b, align 8, !range !420, !invariant.load !416
  %i.d = add nsw i64 %i.c, -1
  %i.e = and i64 %i.d, -16
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = getelementptr i8, ptr %.8.val, i64 32
  %.val.i = load ptr, ptr %i.h, align 8
  %i.i = tail call { ptr, ptr } %.val.i(ptr noundef nonnull %i.g), !inline_history !124698 ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.i, 0        ; 3 uses
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !416, !nonnull !416
  call void %i.m(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef %i.j), !inline_history !124698
  %i.n = load i128, ptr %i.a, align 16, !noundef !416
  %i.o = icmp ne i128 %i.n, 160558909810114970933442868382829364862
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not1 = icmp eq ptr %i.j, null
  %.not = or i1 %.not1, %i.o
  br i1 %.not, label %bb.c, label %bb.b, !prof !426

bb.b:                                             ; preds = %bb.a
  ret ptr %i.j

bb.c:                                             ; preds = %bb.a
  call void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @627, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @628) #72
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECsfR8GmIBoxTX_21lance_namespace_impls(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124840)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124841)
  %i.q = getelementptr inbounds nuw i8, ptr %.0.val, i64 40 ; 30 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.val, i64 32 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !124842, !noalias !124843, !noundef !416 ; 4 uses
  %.promoted.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !124844, !noalias !124845 ; 2 uses
  %i.t = icmp ult i64 %.promoted.i.i.i, %i.s
  br i1 %i.t, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 5 uses
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !124842, !noalias !124843, !nonnull !416, !noundef !416 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.w = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.z, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124846)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124847)
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !noalias !124848, !noundef !416
  switch i8 %i.y, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 58, label %bb.e
  ], !prof !440

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.z = add i64 %i.w, 1                          ; 3 uses
  store i64 %i.z, ptr %i.q, align 8, !alias.scope !124849, !noalias !124845
  %exitcond.not.i.i.i = icmp eq i64 %i.z, %i.s
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i, label %bb.b

.loopexit.i.i:                                    ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !124840
  store i64 3, ptr %i.o, align 8, !noalias !124840
  %i.aa = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !124840
  br label %_RINvXs9_NtCs5QD3CVEMyfH_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess15next_value_seedINtNtCscI6d9CVNmLh_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !124840
  store i64 6, ptr %i.p, align 8, !noalias !124840
  %i.ab = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !124840
  br label %_RINvXs9_NtCs5QD3CVEMyfH_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess15next_value_seedINtNtCscI6d9CVNmLh_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.e:                                             ; preds = %bb.b
  %i.ac = add i64 %i.w, 1                         ; 3 uses
  store i64 %i.ac, ptr %i.q, align 8, !alias.scope !124850
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124851)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124852)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124853)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124854)
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 8 uses
  store i64 0, ptr %i.ad, align 8, !alias.scope !124855
  %i.ae = icmp ult i64 %i.ac, %i.s
  br i1 %i.ae, label %.lr.ph.i.lr.ph.i.i.i.i.i, label %.loopexit130.i.i.i.i.i

.lr.ph.i.lr.ph.i.i.i.i.i:                         ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 3 uses
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.bg, %.lr.ph.i.lr.ph.i.i.i.i.i
  %i.ag = phi ptr [ %i.v, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ %i.eq, %bb.bg ] ; 11 uses
  %.promoted.i171.i.i.i.i.i = phi i64 [ %i.ac, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ %.promoted.i.i.i.i.i.i, %bb.bg ]
  %i.ah = phi i64 [ %i.s, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ %i.ep, %bb.bg ] ; 7 uses
  %.sroa.7.0170.i.i.i.i.i = phi i8 [ undef, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ %.sroa.027.2163.i.i.i.i.i, %bb.bg ] ; 2 uses
  %.sroa.039.0169.i.i.i.i.i = phi i1 [ false, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ true, %bb.bg ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124856)
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i
  %i.ai = phi i64 [ %.promoted.i171.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.al, %bb.g ] ; 17 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !noalias !124857, !noundef !416 ; 3 uses
  switch i8 %i.ak, label %bb.h [
    i8 32, label %bb.g
    i8 10, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
    i8 110, label %bb.i
    i8 116, label %bb.o
    i8 102, label %bb.u
    i8 45, label %bb.ac
    i8 34, label %bb.ad
    i8 91, label %bb.ae
    i8 123, label %bb.ae
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f
  %i.al = add i64 %i.ai, 1                        ; 3 uses
  store i64 %i.al, ptr %i.q, align 8, !alias.scope !124858, !noalias !124859
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.al, %i.ah
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit130.i.i.i.i.i, label %bb.f

.loopexit130.i.i.i.i.i:                           ; preds = %bb.bg, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !124855
  store i64 5, ptr %i.n, align 8, !noalias !124855
  %i.am = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !124855
  br label %_RINvXs9_NtCs5QD3CVEMyfH_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess15next_value_seedINtNtCscI6d9CVNmLh_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.h:                                             ; preds = %bb.f
  %i.an = add i8 %i.ak, -48
  %or.cond.i.i.i.i.i = icmp ult i8 %i.an, 10
  br i1 %or.cond.i.i.i.i.i, label %bb.aj, label %bb.ai, !prof !447

bb.i:                                             ; preds = %bb.f
  %i.ao = add i64 %i.ai, 1                        ; 4 uses
  store i64 %i.ao, ptr %i.q, align 8, !alias.scope !124860
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124861)
  %umax.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ao, i64 %i.ah) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124862)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124863)
  %exitcond.not.i53.not.i.i.i.i.i = icmp ult i64 %i.ao, %i.ah
  br i1 %exitcond.not.i53.not.i.i.i.i.i, label %bb.j, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !124864, !noundef !416
  %i.ar = add i64 %i.ai, 2                        ; 3 uses
  store i64 %i.ar, ptr %i.q, align 8, !alias.scope !124865, !noalias !124866
  %.not.i.i.i.i.i.i = icmp eq i8 %i.aq, 117
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %.loopexit233.i.i.i.i.i, !prof !696

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124867)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124868)
  %exitcond.not.i53.1.i.i.i.i.i = icmp eq i64 %i.ar, %umax.i.i.i.i.i.i
  br i1 %exitcond.not.i53.1.i.i.i.i.i, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !124869, !noundef !416
  %i.au = add i64 %i.ai, 3                        ; 3 uses
  store i64 %i.au, ptr %i.q, align 8, !alias.scope !124870, !noalias !124866
  %.not.i.1.i.i.i.i.i = icmp eq i8 %i.at, 108
  br i1 %.not.i.1.i.i.i.i.i, label %bb.m, label %.loopexit233.i.i.i.i.i, !prof !696

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124871)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124872)
  %exitcond.not.i53.2.i.i.i.i.i = icmp eq i64 %i.au, %umax.i.i.i.i.i.i
  br i1 %exitcond.not.i53.2.i.i.i.i.i, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !124873, !noundef !416
  %i.ax = add i64 %i.ai, 4
  store i64 %i.ax, ptr %i.q, align 8, !alias.scope !124874, !noalias !124866
  %.not.i.2.i.i.i.i.i = icmp eq i8 %i.aw, 108
  br i1 %.not.i.2.i.i.i.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i, label %.loopexit233.i.i.i.i.i, !prof !696

_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.k, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !124875
  store i64 5, ptr %i.f, align 8, !noalias !124875
  %i.ay = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f), !noalias !124876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !124875
  br label %_RINvXs9_NtCs5QD3CVEMyfH_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess15next_value_seedINtNtCscI6d9CVNmLh_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECsfR8GmIBoxTX_21lance_namespace_impls.exit

.loopexit233.i.i.i.i.i:                           ; preds = %bb.n, %bb.l, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !124875
  store i64 9, ptr %i.e, align 8, !noalias !124875
  %i.az = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e), !noalias !124876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !124875
  br label %_RINvXs9_NtCs5QD3CVEMyfH_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess15next_value_seedINtNtCscI6d9CVNmLh_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.o:                                             ; preds = %bb.f
  %i.ba = add i64 %i.ai, 1                        ; 4 uses
  store i64 %i.ba, ptr %i.q, align 8, !alias.scope !124877
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124878)
  %umax.i56.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 %i.ah) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124879)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124880)
  %exitcond.not.i58.not.i.i.i.i.i = icmp ult i64 %i.ba, %i.ah
  br i1 %exitcond.not.i58.not.i.i.i.i.i, label %bb.p, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !124881, !noundef !416
  %i.bd = add i64 %i.ai, 2                        ; 3 uses
  store i64 %i.bd, ptr %i.q, align 8, !alias.scope !124882, !noalias !124883
  %.not.i59.i.i.i.i.i = icmp eq i8 %i.bc, 114
  br i1 %.not.i59.i.i.i.i.i, label %bb.q, label %.loopexit226.i.i.i.i.i, !prof !696

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124884)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124885)
  %exitcond.not.i58.1.i.i.i.i.i = icmp eq i64 %i.bd, %umax.i56.i.i.i.i.i
  br i1 %exitcond.not.i58.1.i.i.i.i.i, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.be = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !124886, !noundef !416
  %i.bg = add i64 %i.ai, 3                        ; 3 uses
  store i64 %i.bg, ptr %i.q, align 8, !alias.scope !124887, !noalias !124883
  %.not.i59.1.i.i.i.i.i = icmp eq i8 %i.bf, 117
  br i1 %.not.i59.1.i.i.i.i.i, label %bb.s, label %.loopexit226.i.i.i.i.i, !prof !696

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124888)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124889)
  %exitcond.not.i58.2.i.i.i.i.i = icmp eq i64 %i.bg, %umax.i56.i.i.i.i.i
  br i1 %exitcond.not.i58.2.i.i.i.i.i, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !124890, !noundef !416
  %i.bj = add i64 %i.ai, 4
  store i64 %i.bj, ptr %i.q, align 8, !alias.scope !124891, !noalias !124883
  %.not.i59.2.i.i.i.i.i = icmp eq i8 %i.bi, 101
  br i1 %.not.i59.2.i.i.i.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i, label %.loopexit226.i.i.i.i.i, !prof !696

_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i: ; preds = %bb.s, %bb.q, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !124892
  store i64 5, ptr %i.d, align 8, !noalias !124892
  %i.bk = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d), !noalias !124893
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !124892
  br label %_RINvXs9_NtCs5QD3CVEMyfH_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess15next_value_seedINtNtCscI6d9CVNmLh_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECsfR8GmIBoxTX_21lance_namespace_impls.exit

.loopexit226.i.i.i.i.i:                           ; preds = %bb.t, %bb.r, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !124892
  store i64 9, ptr %i.c, align 8, !noalias !124892
  %i.bl = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c), !noalias !124893
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !124892
  br label %_RINvXs9_NtCs5QD3CVEMyfH_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess15next_value_seedINtNtCscI6d9CVNmLh_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.u:                                             ; preds = %bb.f
  %i.bm = add i64 %i.ai, 1                        ; 4 uses
  store i64 %i.bm, ptr %i.q, align 8, !alias.scope !124894
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124895)
  %umax.i65.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bm, i64 %i.ah) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124896)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124897)
  %exitcond.not.i67.not.i.i.i.i.i = icmp ult i64 %i.bm, %i.ah
  br i1 %exitcond.not.i67.not.i.i.i.i.i, label %bb.v, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i

bb.v:                                             ; preds = %bb.u
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !124898, !noundef !416
  %i.bp = add i64 %i.ai, 2                        ; 3 uses
  store i64 %i.bp, ptr %i.q, align 8, !alias.scope !124899, !noalias !124900
  %.not.i68.i.i.i.i.i = icmp eq i8 %i.bo, 97
  br i1 %.not.i68.i.i.i.i.i, label %bb.w, label %.loopexit219.i.i.i.i.i, !prof !696

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124901)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124902)
  %exitcond.not.i67.1.i.i.i.i.i = icmp eq i64 %i.bp, %umax.i65.i.i.i.i.i
  br i1 %exitcond.not.i67.1.i.i.i.i.i, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !noalias !124903, !noundef !416
  %i.bs = add i64 %i.ai, 3                        ; 3 uses
  store i64 %i.bs, ptr %i.q, align 8, !alias.scope !124904, !noalias !124900
  %.not.i68.1.i.i.i.i.i = icmp eq i8 %i.br, 108
  br i1 %.not.i68.1.i.i.i.i.i, label %bb.y, label %.loopexit219.i.i.i.i.i, !prof !696

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124905)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124906)
  %exitcond.not.i67.2.i.i.i.i.i = icmp eq i64 %i.bs, %umax.i65.i.i.i.i.i
  br i1 %exitcond.not.i67.2.i.i.i.i.i, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !noalias !124907, !noundef !416
  %i.bv = add i64 %i.ai, 4                        ; 3 uses
  store i64 %i.bv, ptr %i.q, align 8, !alias.scope !124908, !noalias !124900
  %.not.i68.2.i.i.i.i.i = icmp eq i8 %i.bu, 115
  br i1 %.not.i68.2.i.i.i.i.i, label %bb.aa, label %.loopexit219.i.i.i.i.i, !prof !696

bb.aa:                                            ; preds = %bb.z
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124909)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124910)
  %exitcond.not.i67.3.i.i.i.i.i = icmp eq i64 %i.bv, %umax.i65.i.i.i.i.i
  br i1 %exitcond.not.i67.3.i.i.i.i.i, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !noalias !124911, !noundef !416
  %i.by = add i64 %i.ai, 5
  store i64 %i.by, ptr %i.q, align 8, !alias.scope !124912, !noalias !124900
  %.not.i68.3.i.i.i.i.i = icmp eq i8 %i.bx, 101
  br i1 %.not.i68.3.i.i.i.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i, label %.loopexit219.i.i.i.i.i, !prof !696

_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i: ; preds = %bb.aa, %bb.y, %bb.w, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !124913
  store i64 5, ptr %i.b, align 8, !noalias !124913
  %i.bz = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !124914
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !124913
  br label %_RINvXs9_NtCs5QD3CVEMyfH_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess15next_value_seedINtNtCscI6d9CVNmLh_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECsfR8GmIBoxTX_21lance_namespace_impls.exit

.loopexit219.i.i.i.i.i:                           ; preds = %bb.ab, %bb.z, %bb.x, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !124913
  store i64 9, ptr %i.a, align 8, !noalias !124913
  %i.ca = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a), !noalias !124914
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !124913
  br label %_RINvXs9_NtCs5QD3CVEMyfH_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess15next_value_seedINtNtCscI6d9CVNmLh_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.ac:                                            ; preds = %bb.f
  %i.cb = add i64 %i.ai, 1
  store i64 %i.cb, ptr %i.q, align 8, !alias.scope !124915
  %i.cc = tail call fastcc noundef align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_integerCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(56) %.0.val) ; 2 uses
  %.not45.i.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not45.i.i.i.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i, label %_RINvXs9_NtCs5QD3CVEMyfH_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess15next_value_seedINtNtCscI6d9CVNmLh_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.ad:                                            ; preds = %bb.f
  %i.cd = add i64 %i.ai, 1
  store i64 %i.cd, ptr %i.q, align 8, !alias.scope !124916
  %i.ce = tail call noundef align 8 ptr @_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read10ignore_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u) ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i, label %_RINvXs9_NtCs5QD3CVEMyfH_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess15next_value_seedINtNtCscI6d9CVNmLh_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.ae:                                            ; preds = %bb.f, %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124917)
  %i.cf = zext i1 %.sroa.039.0169.i.i.i.i.i to i64 ; 2 uses
  %i.cg = load i64, ptr %i.ad, align 8, !alias.scope !124918, !noundef !416 ; 3 uses
  %i.ch = load i64, ptr %.0.val, align 8, !range !419, !alias.scope !124918, !noundef !416
  %i.ci = sub i64 %i.ch, %i.cg
  %i.cj = icmp ult i64 %i.ci, %i.cf
  br i1 %i.cj, label %bb.af, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i, !prof !426

bb.af:                                            ; preds = %bb.ae
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(56) %.0.val, i64 noundef %i.cg, i64 noundef %i.cf, i64 noundef 1, i64 noundef 1)
  %.pre.i.i.i.i.i.i = load i64, ptr %i.ad, align 8, !alias.scope !124919
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i: ; preds = %bb.af, %bb.ae
  %i.ck = phi i64 [ %i.cg, %bb.ae ], [ %.pre.i.i.i.i.i.i, %bb.af ] ; 3 uses
  br i1 %.sroa.039.0169.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VechE14extend_trustedINtNtCscI6d9CVNmLh_4core6option8IntoIterhEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i
  %i.cl = load ptr, ptr %i.af, align 8, !alias.scope !124919, !nonnull !416, !noundef !416
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.ck
  store i8 %.sroa.7.0170.i.i.i.i.i, ptr %i.cm, align 1, !noalias !124920
  %i.cn = add i64 %i.ck, 1
  br label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VechE14extend_trustedINtNtCscI6d9CVNmLh_4core6option8IntoIterhEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i

_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VechE14extend_trustedINtNtCscI6d9CVNmLh_4core6option8IntoIterhEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i
  %.val5.i.i.i.i.i.i.i.i = phi i64 [ %i.cn, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ck, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i ]
  store i64 %.val5.i.i.i.i.i.i.i.i, ptr %i.ad, align 8, !alias.scope !124919, !noalias !124921
  %i.co = load i64, ptr %i.q, align 8, !alias.scope !124922, !noundef !416
  %i.cp = add i64 %i.co, 1
  store i64 %i.cp, ptr %i.q, align 8, !alias.scope !124922
  br label %bb.ah

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i: ; preds = %bb.aj, %bb.ad, %bb.ac, %bb.ab, %bb.t, %bb.n
  br i1 %.sroa.039.0169.i.i.i.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i
  %i.cq = load i64, ptr %i.ad, align 8, !alias.scope !124855, !noundef !416 ; 2 uses
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %_RINvXs9_NtCs5QD3CVEMyfH_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess15next_value_seedINtNtCscI6d9CVNmLh_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.ak

bb.ah:                                            ; preds = %bb.ak, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i, %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VechE14extend_trustedINtNtCscI6d9CVNmLh_4core6option8IntoIterhEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i
  %.sroa.027.0.i.i.i.i.i = phi i8 [ %i.ak, %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VechE14extend_trustedINtNtCscI6d9CVNmLh_4core6option8IntoIterhEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i ], [ %i.dc, %bb.ak ], [ %.sroa.7.0170.i.i.i.i.i, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.042.0.i.i.i.i.i = phi i1 [ false, %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VechE14extend_trustedINtNtCscI6d9CVNmLh_4core6option8IntoIterhEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i ], [ true, %bb.ak ], [ true, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i ]
  %i.cs = load i64, ptr %i.r, align 8, !alias.scope !124923, !noalias !124924, !noundef !416 ; 6 uses
  %.promoted.i73162.i.i.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !124925, !noalias !124926 ; 2 uses
  %i.ct = icmp ult i64 %.promoted.i73162.i.i.i.i.i, %i.cs
  br i1 %i.ct, label %.lr.ph.i75.lr.ph.i.i.i.i.i, label %.loopexit123.i.i.i.i.i

.lr.ph.i75.lr.ph.i.i.i.i.i:                       ; preds = %bb.ah
  %i.cu = load ptr, ptr %i.u, align 8, !alias.scope !124923, !noalias !124924, !nonnull !416, !noundef !416 ; 3 uses
  br label %.lr.ph.i75.i.i.i.i.i

bb.ai:                                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !124855
  store i64 10, ptr %i.m, align 8, !noalias !124855
  %i.cv = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !124855
  br label %_RINvXs9_NtCs5QD3CVEMyfH_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess15next_value_seedINtNtCscI6d9CVNmLh_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.aj:                                            ; preds = %bb.h
  %i.cw = tail call fastcc noundef align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_integerCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(56) %.0.val) ; 2 uses
  %.not49.i.i.i.i.i = icmp eq ptr %i.cw, null
  br i1 %.not49.i.i.i.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i, label %_RINvXs9_NtCs5QD3CVEMyfH_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess15next_value_seedINtNtCscI6d9CVNmLh_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.ak:                                            ; preds = %bb.ag
  %i.cx = add i64 %i.cq, -1                       ; 3 uses
  store i64 %i.cx, ptr %i.ad, align 8, !alias.scope !124855
  %i.cy = load i64, ptr %.0.val, align 8, !range !419, !alias.scope !124855, !noundef !416
  %i.cz = icmp ult i64 %i.cx, %i.cy
  tail call void @llvm.assume(i1 %i.cz)
  %i.da = load ptr, ptr %i.af, align 8, !alias.scope !124855, !nonnull !416, !noundef !416
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.cx
  %i.dc = load i8, ptr %i.db, align 1, !noundef !416
  br label %bb.ah

.lr.ph.i75.i.i.i.i.i:                             ; preds = %bb.av, %.lr.ph.i75.lr.ph.i.i.i.i.i
  %.promoted.i73165.i.i.i.i.i = phi i64 [ %.promoted.i73162.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i ], [ %i.dm, %bb.av ]
  %.sroa.042.2164.i.i.i.i.i = phi i1 [ %.sroa.042.0.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i ], [ true, %bb.av ] ; 2 uses
  %.sroa.027.2163.i.i.i.i.i = phi i8 [ %.sroa.027.0.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i ], [ %i.du, %bb.av ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124927)
  br label %bb.al

bb.al:                                            ; preds = %bb.am, %.lr.ph.i75.i.i.i.i.i
  %i.dd = phi i64 [ %.promoted.i73165.i.i.i.i.i, %.lr.ph.i75.i.i.i.i.i ], [ %i.dg, %bb.am ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124928)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124929)
  %i.de = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !noalias !124930, !noundef !416
  switch i8 %i.df, label %.loopexit.i.i.i.i.i [
    i8 32, label %bb.am
    i8 10, label %bb.am
    i8 9, label %bb.am
    i8 13, label %bb.am
    i8 44, label %bb.aq
    i8 93, label %bb.ar
    i8 125, label %bb.as
  ]

bb.am:                                            ; preds = %bb.al, %bb.al, %bb.al, %bb.al
  %i.dg = add i64 %i.dd, 1                        ; 3 uses
  store i64 %i.dg, ptr %i.q, align 8, !alias.scope !124931, !noalias !124926
  %exitcond.not.i76.i.i.i.i.i = icmp eq i64 %i.dg, %i.cs
  br i1 %exitcond.not.i76.i.i.i.i.i, label %.loopexit123.i.i.i.i.i, label %bb.al

.loopexit123.i.i.i.i.i:                           ; preds = %bb.ah, %bb.av, %bb.am
  %.sroa.027.2159.i.i.i.i.i = phi i8 [ %i.du, %bb.av ], [ %.sroa.027.2163.i.i.i.i.i, %bb.am ], [ %.sroa.027.0.i.i.i.i.i, %bb.ah ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !124855
  switch i8 %.sroa.027.2159.i.i.i.i.i, label %bb.an [
    i8 91, label %bb.ap
    i8 123, label %bb.ao
  ]

bb.an:                                            ; preds = %.loopexit123.i.i.i.i.i
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3312) #72
  unreachable

end_hunk_7
begin_hunk_8_@_RNCNvNtNtCs9KQ7US1M400_11lance_table2io6commit22read_version_from_hint0CsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  %i.ea = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.eb = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  br label %bb.au

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc50.i.i, %.noexc21.i.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !noalias !177079, !nonnull !416, !align !417, !noundef !416
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !177079
  br label %bb.ay

bb.au:                                            ; preds = %.noexc50.i.i, %.lr.ph.i22.i.i.i.i
  %.sroa.05.0225.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i22.i.i.i.i ], [ %.sroa.05.1.i.i.i.i.i, %.noexc50.i.i ] ; 4 uses
  %.sroa.4.0224.i.i.i.i.i = phi i64 [ undef, %.lr.ph.i22.i.i.i.i ], [ %.sroa.4.1.i.i.i.i.i, %.noexc50.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !177080)
  call void @llvm.experimental.noalias.scope.decl(metadata !177081)
  %i.ee = load i8, ptr %i.ea, align 1, !range !428, !noalias !177079, !noundef !416
  %i.ef = trunc nuw i8 %i.ee to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !177079
  br i1 %i.ef, label %bb.av, label %_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs9KQ7US1M400_11lance_table2io6commits_1__NtB25_11VersionHintNtB1a_11Deserialize11deserialize7___FieldECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread37.i.i.i.i.i

bb.av:                                            ; preds = %bb.au
  %i.eg = load ptr, ptr %i.aa, align 8, !alias.scope !177082, !noalias !177083, !nonnull !416, !align !417, !noundef !416 ; 32 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !177084)
  call void @llvm.experimental.noalias.scope.decl(metadata !177085)
  call void @llvm.experimental.noalias.scope.decl(metadata !177086)
  call void @llvm.experimental.noalias.scope.decl(metadata !177087)
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 24 ; 7 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 40 ; 35 uses
  %i.ej = load i64, ptr %i.ei, align 8, !alias.scope !177088, !noalias !177089, !noundef !416
  %i.ek = add i64 %i.ej, 1
  store i64 %i.ek, ptr %i.ei, align 8, !alias.scope !177088, !noalias !177089
  %i.el = getelementptr inbounds nuw i8, ptr %i.eg, i64 16 ; 9 uses
  store i64 0, ptr %i.el, align 8, !alias.scope !177090, !noalias !177089
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !177091
  invoke void @_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read9parse_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.y, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eh, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.eg)
          to label %.noexc22.i.i unwind label %.loopexit.split-lp.loopexit.i.i, !noalias !177062

.noexc22.i.i:                                     ; preds = %bb.av
  %i.em = load i64, ptr %i.y, align 8, !range !437, !noalias !177091, !noundef !416
  %i.en = icmp eq i64 %i.em, -1
  %i.eo = load ptr, ptr %i.eb, align 8, !noalias !177091 ; 5 uses
  br i1 %i.en, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.noexc22.i.i
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !177091
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eo) ]
  %i.ep = icmp eq i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i, 7
  br i1 %i.ep, label %_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs9KQ7US1M400_11lance_table2io6commits_1__NtB25_11VersionHintNtB1a_11Deserialize11deserialize7___FieldECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i, label %_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs9KQ7US1M400_11lance_table2io6commits_1__NtB25_11VersionHintNtB1a_11Deserialize11deserialize7___FieldECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread41.i.i.i.i.i

_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs9KQ7US1M400_11lance_table2io6commits_1__NtB25_11VersionHintNtB1a_11Deserialize11deserialize7___FieldECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread41.i.i.i.i.i: ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !177091
  br label %bb.az

bb.ax:                                            ; preds = %.noexc22.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !177091
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eo) ]
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %._crit_edge.i.i.i.i.i
  %.sroa.1132.0.ph.i.i.i.i.i = phi ptr [ %i.eo, %bb.ax ], [ %i.ed, %._crit_edge.i.i.i.i.i ]
  %i.eq = ptrtoint ptr %.sroa.1132.0.ph.i.i.i.i.i to i64
  br label %_RINvXs0_NvXNvNtNtCs9KQ7US1M400_11lance_table2io6commits_1__NtBb_11VersionHintNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1f_7Visitor9visit_mapINtNtCs5QD3CVEMyfH_10serde_json2de9MapAccessNtNtB2T_4read9SliceReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i

_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs9KQ7US1M400_11lance_table2io6commits_1__NtB25_11VersionHintNtB1a_11Deserialize11deserialize7___FieldECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i: ; preds = %bb.aw
  %i.er = load i32, ptr %i.eo, align 1
  %i.es = xor i32 %i.er, 1936876918
  %i.et = getelementptr i8, ptr %i.eo, i64 3
  %i.eu = load i32, ptr %i.et, align 1
  %i.ev = xor i32 %i.eu, 1852795251
  %i.ew = or i32 %i.es, %i.ev
  %i.ex = icmp ne i32 %i.ew, 0
  %i.ey = zext i1 %i.ex to i32
  %.not.i.i.i.i.i = icmp eq i32 %i.ey, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !177091
  br i1 %.not.i.i.i.i.i, label %bb.dh, label %bb.az

_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs9KQ7US1M400_11lance_table2io6commits_1__NtB25_11VersionHintNtB1a_11Deserialize11deserialize7___FieldECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread37.i.i.i.i.i: ; preds = %bb.au
  %i.ez = trunc nuw i64 %.sroa.05.0225.i.i.i.i.i to i1
  br i1 %i.ez, label %_RINvXs0_NvXNvNtNtCs9KQ7US1M400_11lance_table2io6commits_1__NtBb_11VersionHintNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1f_7Visitor9visit_mapINtNtCs5QD3CVEMyfH_10serde_json2de9MapAccessNtNtB2T_4read9SliceReadEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i, label %bb.dp

bb.az:                                            ; preds = %_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs9KQ7US1M400_11lance_table2io6commits_1__NtB25_11VersionHintNtB1a_11Deserialize11deserialize7___FieldECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i, %_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess8next_keyNtNvXNvNtNtCs9KQ7US1M400_11lance_table2io6commits_1__NtB25_11VersionHintNtB1a_11Deserialize11deserialize7___FieldECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread41.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !177092)
  call void @llvm.experimental.noalias.scope.decl(metadata !177093)
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eg, i64 32 ; 3 uses
  %i.fb = load i64, ptr %i.fa, align 8, !alias.scope !177094, !noalias !177095, !noundef !416 ; 4 uses
  %.promoted.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ei, align 8, !alias.scope !177096, !noalias !177097 ; 2 uses
  %i.fc = icmp ult i64 %.promoted.i.i.i.i.i.i.i.i.i, %i.fb
  br i1 %i.fc, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.az
  %i.fd = load ptr, ptr %i.eh, align 8, !alias.scope !177094, !noalias !177095, !nonnull !416, !noundef !416 ; 2 uses
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bb, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.fe = phi i64 [ %.promoted.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.fh, %bb.bb ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !177098)
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.fe
  %i.fg = load i8, ptr %i.ff, align 1, !noalias !177099, !noundef !416
  switch i8 %i.fg, label %bb.bc [
    i8 32, label %bb.bb
    i8 10, label %bb.bb
    i8 9, label %bb.bb
    i8 13, label %bb.bb
    i8 58, label %bb.bd
  ], !prof !440

bb.bb:                                            ; preds = %bb.ba, %bb.ba, %bb.ba, %bb.ba
  %i.fh = add i64 %i.fe, 1                        ; 3 uses
  store i64 %i.fh, ptr %i.ei, align 8, !alias.scope !177100, !noalias !177097
  %exitcond.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.fh, %i.fb
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i, label %bb.ba

.loopexit.i.i.i.i.i.i.i.i:                        ; preds = %bb.az, %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !177101
  store i64 3, ptr %i.w, align 8, !noalias !177101
  %i.fi = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.eg, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.w)
          to label %.noexc23.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !177062

.noexc23.i.i:                                     ; preds = %.loopexit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !177101
  br label %.loopexit.i23.i.i.i.i

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !177101
  store i64 6, ptr %i.x, align 8, !noalias !177101
  %i.fj = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.eg, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.x)
          to label %.noexc24.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !177062

.noexc24.i.i:                                     ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !177101
  br label %.loopexit.i23.i.i.i.i

bb.bd:                                            ; preds = %bb.ba
  %i.fk = add i64 %i.fe, 1                        ; 3 uses
  store i64 %i.fk, ptr %i.ei, align 8, !alias.scope !177102, !noalias !177062
  call void @llvm.experimental.noalias.scope.decl(metadata !177103)
  call void @llvm.experimental.noalias.scope.decl(metadata !177104)
  call void @llvm.experimental.noalias.scope.decl(metadata !177105)
  call void @llvm.experimental.noalias.scope.decl(metadata !177106)
  store i64 0, ptr %i.el, align 8, !alias.scope !177107, !noalias !177062
  %i.fl = icmp ult i64 %i.fk, %i.fb
  br i1 %i.fl, label %.lr.ph.i.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit130.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.lr.ph.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.bd
  %i.fm = getelementptr inbounds nuw i8, ptr %i.eg, i64 8 ; 3 uses
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.de, %.lr.ph.i.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.fn = phi ptr [ %i.fd, %.lr.ph.i.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.jx, %bb.de ] ; 11 uses
  %.promoted.i171.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fk, %.lr.ph.i.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.promoted.i.i.i.i.i.i.i.i.i.i.i.i, %bb.de ]
  %i.fo = phi i64 [ %i.fb, %.lr.ph.i.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.jw, %bb.de ] ; 7 uses
  %.sroa.7.0170.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ undef, %.lr.ph.i.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.027.2163.i.i.i.i.i.i.i.i.i.i.i, %bb.de ] ; 2 uses
  %.sroa.039.0169.i.i.i.i.i.i.i.i.i.i.i = phi i1 [ false, %.lr.ph.i.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ true, %bb.de ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !177108)
  br label %bb.be

bb.be:                                            ; preds = %bb.bf, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fp = phi i64 [ %.promoted.i171.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.fs, %bb.bf ] ; 17 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.fp
  %i.fr = load i8, ptr %i.fq, align 1, !noalias !177109, !noundef !416 ; 3 uses
  switch i8 %i.fr, label %bb.bg [
    i8 32, label %bb.bf
    i8 10, label %bb.bf
    i8 9, label %bb.bf
    i8 13, label %bb.bf
    i8 110, label %bb.bh
    i8 116, label %bb.bn
    i8 102, label %bb.bt
    i8 45, label %bb.cb
    i8 34, label %bb.cc
    i8 91, label %bb.cd
    i8 123, label %bb.cd
  ]

bb.bf:                                            ; preds = %bb.be, %bb.be, %bb.be, %bb.be
  %i.fs = add i64 %i.fp, 1                        ; 3 uses
  store i64 %i.fs, ptr %i.ei, align 8, !alias.scope !177110, !noalias !177111
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.fs, %i.fo
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit130.i.i.i.i.i.i.i.i.i.i.i, label %bb.be

.loopexit130.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.bd, %bb.de, %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !177112
  store i64 5, ptr %i.v, align 8, !noalias !177112
  %i.ft = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.eg, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.v)
          to label %.noexc25.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !177062

.noexc25.i.i:                                     ; preds = %.loopexit130.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !177112
  br label %.loopexit.i23.i.i.i.i

bb.bg:                                            ; preds = %bb.be
  %i.fu = add i8 %i.fr, -48
  %or.cond.i.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.fu, 10
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i, label %bb.ci, label %bb.ch, !prof !447

bb.bh:                                            ; preds = %bb.be
  %i.fv = add i64 %i.fp, 1                        ; 4 uses
  store i64 %i.fv, ptr %i.ei, align 8, !alias.scope !177113, !noalias !177062
  call void @llvm.experimental.noalias.scope.decl(metadata !177114)
  %umax.i.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.fv, i64 %i.fo) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !177115)
  %exitcond.not.i53.not.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.fv, %i.fo
  br i1 %exitcond.not.i53.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.bi, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.bi:                                            ; preds = %bb.bh
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.fv
  %i.fx = load i8, ptr %i.fw, align 1, !noalias !177116, !noundef !416
  %i.fy = add i64 %i.fp, 2                        ; 3 uses
  store i64 %i.fy, ptr %i.ei, align 8, !alias.scope !177117, !noalias !177118
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.fx, 117
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bj, label %.loopexit233.i.i.i.i.i.i.i.i.i.i.i, !prof !696

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.experimental.noalias.scope.decl(metadata !177119)
  %exitcond.not.i53.1.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.fy, %umax.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i53.1.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.fy
  %i.ga = load i8, ptr %i.fz, align 1, !noalias !177120, !noundef !416
  %i.gb = add i64 %i.fp, 3                        ; 3 uses
  store i64 %i.gb, ptr %i.ei, align 8, !alias.scope !177121, !noalias !177118
  %.not.i.1.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ga, 108
  br i1 %.not.i.1.i.i.i.i.i.i.i.i.i.i.i, label %bb.bl, label %.loopexit233.i.i.i.i.i.i.i.i.i.i.i, !prof !696

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.experimental.noalias.scope.decl(metadata !177122)
  %exitcond.not.i53.2.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.gb, %umax.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i53.2.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.gb
  %i.gd = load i8, ptr %i.gc, align 1, !noalias !177123, !noundef !416
  %i.ge = add i64 %i.fp, 4
  store i64 %i.ge, ptr %i.ei, align 8, !alias.scope !177124, !noalias !177118
  %.not.i.2.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.gd, 108
  br i1 %.not.i.2.i.i.i.i.i.i.i.i.i.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit233.i.i.i.i.i.i.i.i.i.i.i, !prof !696

_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bl, %bb.bj, %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !177125
  store i64 5, ptr %i.n, align 8, !noalias !177125
  %i.gf = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.eg, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.n)
          to label %.noexc26.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !177062

.noexc26.i.i:                                     ; preds = %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !177125
  br label %.loopexit.i23.i.i.i.i

.loopexit233.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.bm, %bb.bk, %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !177125
  store i64 9, ptr %i.m, align 8, !noalias !177125
  %i.gg = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.eg, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.m)
          to label %.noexc27.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !177062

.noexc27.i.i:                                     ; preds = %.loopexit233.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !177125
  br label %.loopexit.i23.i.i.i.i

bb.bn:                                            ; preds = %bb.be
  %i.gh = add i64 %i.fp, 1                        ; 4 uses
  store i64 %i.gh, ptr %i.ei, align 8, !alias.scope !177126, !noalias !177062
  call void @llvm.experimental.noalias.scope.decl(metadata !177127)
  %umax.i56.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.gh, i64 %i.fo) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !177128)
  %exitcond.not.i58.not.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.gh, %i.fo
  br i1 %exitcond.not.i58.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.bo, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i.i.i.i.i

bb.bo:                                            ; preds = %bb.bn
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.gh
  %i.gj = load i8, ptr %i.gi, align 1, !noalias !177129, !noundef !416
  %i.gk = add i64 %i.fp, 2                        ; 3 uses
  store i64 %i.gk, ptr %i.ei, align 8, !alias.scope !177130, !noalias !177131
  %.not.i59.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.gj, 114
  br i1 %.not.i59.i.i.i.i.i.i.i.i.i.i.i, label %bb.bp, label %.loopexit226.i.i.i.i.i.i.i.i.i.i.i, !prof !696

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.experimental.noalias.scope.decl(metadata !177132)
  %exitcond.not.i58.1.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.gk, %umax.i56.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i58.1.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i.i.i.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.gk
  %i.gm = load i8, ptr %i.gl, align 1, !noalias !177133, !noundef !416
  %i.gn = add i64 %i.fp, 3                        ; 3 uses
  store i64 %i.gn, ptr %i.ei, align 8, !alias.scope !177134, !noalias !177131
  %.not.i59.1.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.gm, 117
  br i1 %.not.i59.1.i.i.i.i.i.i.i.i.i.i.i, label %bb.br, label %.loopexit226.i.i.i.i.i.i.i.i.i.i.i, !prof !696

bb.br:                                            ; preds = %bb.bq
  call void @llvm.experimental.noalias.scope.decl(metadata !177135)
  %exitcond.not.i58.2.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.gn, %umax.i56.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i58.2.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i.i.i.i.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.go = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.gn
  %i.gp = load i8, ptr %i.go, align 1, !noalias !177136, !noundef !416
  %i.gq = add i64 %i.fp, 4
  store i64 %i.gq, ptr %i.ei, align 8, !alias.scope !177137, !noalias !177131
  %.not.i59.2.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.gp, 101
  br i1 %.not.i59.2.i.i.i.i.i.i.i.i.i.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit226.i.i.i.i.i.i.i.i.i.i.i, !prof !696

_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.br, %bb.bp, %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !177138
  store i64 5, ptr %i.l, align 8, !noalias !177138
  %i.gr = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.eg, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.l)
          to label %.noexc28.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !177062

.noexc28.i.i:                                     ; preds = %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !177138
  br label %.loopexit.i23.i.i.i.i

.loopexit226.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.bs, %bb.bq, %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !177138
  store i64 9, ptr %i.k, align 8, !noalias !177138
  %i.gs = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.eg, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k)
          to label %.noexc29.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !177062

.noexc29.i.i:                                     ; preds = %.loopexit226.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !177138
  br label %.loopexit.i23.i.i.i.i

bb.bt:                                            ; preds = %bb.be
  %i.gt = add i64 %i.fp, 1                        ; 4 uses
  store i64 %i.gt, ptr %i.ei, align 8, !alias.scope !177139, !noalias !177062
  call void @llvm.experimental.noalias.scope.decl(metadata !177140)
  %umax.i65.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.gt, i64 %i.fo) ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !177141)
  %exitcond.not.i67.not.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.gt, %i.fo
  br i1 %exitcond.not.i67.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.bu, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i.i.i.i.i

bb.bu:                                            ; preds = %bb.bt
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.gt
  %i.gv = load i8, ptr %i.gu, align 1, !noalias !177142, !noundef !416
  %i.gw = add i64 %i.fp, 2                        ; 3 uses
  store i64 %i.gw, ptr %i.ei, align 8, !alias.scope !177143, !noalias !177144
  %.not.i68.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.gv, 97
  br i1 %.not.i68.i.i.i.i.i.i.i.i.i.i.i, label %bb.bv, label %.loopexit219.i.i.i.i.i.i.i.i.i.i.i, !prof !696

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.experimental.noalias.scope.decl(metadata !177145)
  %exitcond.not.i67.1.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.gw, %umax.i65.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i67.1.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i.i.i.i.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.gw
  %i.gy = load i8, ptr %i.gx, align 1, !noalias !177146, !noundef !416
  %i.gz = add i64 %i.fp, 3                        ; 3 uses
  store i64 %i.gz, ptr %i.ei, align 8, !alias.scope !177147, !noalias !177144
  %.not.i68.1.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.gy, 108
  br i1 %.not.i68.1.i.i.i.i.i.i.i.i.i.i.i, label %bb.bx, label %.loopexit219.i.i.i.i.i.i.i.i.i.i.i, !prof !696

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.experimental.noalias.scope.decl(metadata !177148)
  %exitcond.not.i67.2.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.gz, %umax.i65.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i67.2.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i.i.i.i.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ha = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.gz
  %i.hb = load i8, ptr %i.ha, align 1, !noalias !177149, !noundef !416
  %i.hc = add i64 %i.fp, 4                        ; 3 uses
  store i64 %i.hc, ptr %i.ei, align 8, !alias.scope !177150, !noalias !177144
  %.not.i68.2.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.hb, 115
  br i1 %.not.i68.2.i.i.i.i.i.i.i.i.i.i.i, label %bb.bz, label %.loopexit219.i.i.i.i.i.i.i.i.i.i.i, !prof !696

bb.bz:                                            ; preds = %bb.by
  call void @llvm.experimental.noalias.scope.decl(metadata !177151)
  %exitcond.not.i67.3.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.hc, %umax.i65.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i67.3.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i.i.i.i.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.hd = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.hc
  %i.he = load i8, ptr %i.hd, align 1, !noalias !177152, !noundef !416
  %i.hf = add i64 %i.fp, 5
  store i64 %i.hf, ptr %i.ei, align 8, !alias.scope !177153, !noalias !177144
  %.not.i68.3.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.he, 101
  br i1 %.not.i68.3.i.i.i.i.i.i.i.i.i.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit219.i.i.i.i.i.i.i.i.i.i.i, !prof !696

_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bz, %bb.bx, %bb.bv, %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !177154
  store i64 5, ptr %i.j, align 8, !noalias !177154
  %i.hg = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.eg, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.j)
          to label %.noexc30.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !177062

.noexc30.i.i:                                     ; preds = %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !177154
  br label %.loopexit.i23.i.i.i.i

.loopexit219.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.ca, %bb.by, %bb.bw, %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !177154
  store i64 9, ptr %i.i, align 8, !noalias !177154
  %i.hh = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.eg, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.i)
          to label %.noexc31.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !177062

.noexc31.i.i:                                     ; preds = %.loopexit219.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !177154
  br label %.loopexit.i23.i.i.i.i

bb.cb:                                            ; preds = %bb.be
  %i.hi = add i64 %i.fp, 1
  store i64 %i.hi, ptr %i.ei, align 8, !alias.scope !177155, !noalias !177062
  %i.hj = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_integerCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.eg)
          to label %.noexc32.i.i unwind label %.loopexit62.i.i, !noalias !177062 ; 2 uses

.noexc32.i.i:                                     ; preds = %bb.cb
  %.not45.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.hj, null
  br i1 %.not45.i.i.i.i.i.i.i.i.i.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i23.i.i.i.i

bb.cc:                                            ; preds = %bb.be
  %i.hk = add i64 %i.fp, 1
  store i64 %i.hk, ptr %i.ei, align 8, !alias.scope !177156, !noalias !177062
  %i.hl = invoke noundef align 8 ptr @_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read10ignore_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eh)
          to label %.noexc33.i.i unwind label %.loopexit62.i.i, !noalias !177062 ; 2 uses

.noexc33.i.i:                                     ; preds = %bb.cc
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.hl, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i23.i.i.i.i

bb.cd:                                            ; preds = %bb.be, %bb.be
  call void @llvm.experimental.noalias.scope.decl(metadata !177157)
  %i.hm = zext i1 %.sroa.039.0169.i.i.i.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.hn = load i64, ptr %i.el, align 8, !alias.scope !177158, !noalias !177062, !noundef !416 ; 3 uses
  %i.ho = load i64, ptr %i.eg, align 8, !range !419, !alias.scope !177158, !noalias !177062, !noundef !416
  %i.hp = sub i64 %i.ho, %i.hn
  %i.hq = icmp ult i64 %i.hp, %i.hm
  br i1 %i.hq, label %bb.ce, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i, !prof !426

bb.ce:                                            ; preds = %bb.cd
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.eg, i64 noundef %i.hn, i64 noundef %i.hm, i64 noundef 1, i64 noundef 1)
          to label %.noexc34.i.i unwind label %.loopexit62.i.i, !noalias !177062

.noexc34.i.i:                                     ; preds = %bb.ce
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.el, align 8, !alias.scope !177159, !noalias !177062
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc34.i.i, %bb.cd
  %i.hr = phi i64 [ %i.hn, %bb.cd ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc34.i.i ] ; 3 uses
  br i1 %.sroa.039.0169.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VechE14extend_trustedINtNtCscI6d9CVNmLh_4core6option8IntoIterhEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hs = load ptr, ptr %i.fm, align 8, !alias.scope !177159, !noalias !177062, !nonnull !416, !noundef !416
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.hr
  store i8 %.sroa.7.0170.i.i.i.i.i.i.i.i.i.i.i, ptr %i.ht, align 1, !noalias !177160
  %i.hu = add i64 %i.hr, 1
  br label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VechE14extend_trustedINtNtCscI6d9CVNmLh_4core6option8IntoIterhEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i

_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VechE14extend_trustedINtNtCscI6d9CVNmLh_4core6option8IntoIterhEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.val5.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.hu, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.hr, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  store i64 %.val5.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.el, align 8, !alias.scope !177159, !noalias !177161
  %i.hv = load i64, ptr %i.ei, align 8, !alias.scope !177162, !noalias !177062, !noundef !416
  %i.hw = add i64 %i.hv, 1
  store i64 %i.hw, ptr %i.ei, align 8, !alias.scope !177162, !noalias !177062
  br label %bb.cg

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc36.i.i, %.noexc33.i.i, %.noexc32.i.i, %bb.ca, %bb.bs, %bb.bm
  br i1 %.sroa.039.0169.i.i.i.i.i.i.i.i.i.i.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.hx = load i64, ptr %i.el, align 8, !alias.scope !177107, !noalias !177062, !noundef !416 ; 2 uses
  %i.hy = icmp eq i64 %i.hx, 0
  br i1 %i.hy, label %_RINvYINtNtCs5QD3CVEMyfH_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCskpEw9nXJLNc_10serde_core2de9MapAccess10next_valueNtNtB1a_11ignored_any10IgnoredAnyECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i, label %bb.cj

bb.cg:                                            ; preds = %bb.cj, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i, %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VechE14extend_trustedINtNtCscI6d9CVNmLh_4core6option8IntoIterhEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.027.0.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %i.fr, %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VechE14extend_trustedINtNtCscI6d9CVNmLh_4core6option8IntoIterhEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ij, %bb.cj ], [ %.sroa.7.0170.i.i.i.i.i.i.i.i.i.i.i, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.042.0.i.i.i.i.i.i.i.i.i.i.i = phi i1 [ false, %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VechE14extend_trustedINtNtCscI6d9CVNmLh_4core6option8IntoIterhEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i ], [ true, %bb.cj ], [ true, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i ]
  %i.hz = load i64, ptr %i.fa, align 8, !alias.scope !177163, !noalias !177164, !noundef !416 ; 6 uses
  %.promoted.i73162.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ei, align 8, !alias.scope !177165, !noalias !177166 ; 2 uses
  %i.ia = icmp ult i64 %.promoted.i73162.i.i.i.i.i.i.i.i.i.i.i, %i.hz
  br i1 %i.ia, label %.lr.ph.i75.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit123.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i75.lr.ph.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %bb.cg
  %i.ib = load ptr, ptr %i.eh, align 8, !alias.scope !177163, !noalias !177164, !nonnull !416, !noundef !416 ; 3 uses
  br label %.lr.ph.i75.i.i.i.i.i.i.i.i.i.i.i

bb.ch:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !177112
  store i64 10, ptr %i.u, align 8, !noalias !177112
  %i.ic = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.eg, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.u)
          to label %.noexc35.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !177062

.noexc35.i.i:                                     ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !177112
  br label %.loopexit.i23.i.i.i.i

bb.ci:                                            ; preds = %bb.bg
  %i.id = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_integerCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.eg)
          to label %.noexc36.i.i unwind label %.loopexit62.i.i, !noalias !177062 ; 2 uses

.noexc36.i.i:                                     ; preds = %bb.ci
  %.not49.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.id, null
  br i1 %.not49.i.i.i.i.i.i.i.i.i.i.i, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i23.i.i.i.i

bb.cj:                                            ; preds = %bb.cf
  %i.ie = add i64 %i.hx, -1                       ; 3 uses
  store i64 %i.ie, ptr %i.el, align 8, !alias.scope !177107, !noalias !177062
  %i.if = load i64, ptr %i.eg, align 8, !range !419, !alias.scope !177107, !noalias !177062, !noundef !416
  %i.ig = icmp ult i64 %i.ie, %i.if
  call void @llvm.assume(i1 %i.ig)
  %i.ih = load ptr, ptr %i.fm, align 8, !alias.scope !177107, !noalias !177062, !nonnull !416, !noundef !416
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.ie
  %i.ij = load i8, ptr %i.ii, align 1, !noalias !177062, !noundef !416
  br label %bb.cg

.lr.ph.i75.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.ct, %.lr.ph.i75.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.promoted.i73165.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.promoted.i73162.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.it, %bb.ct ]
  %.sroa.042.2164.i.i.i.i.i.i.i.i.i.i.i = phi i1 [ %.sroa.042.0.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ true, %bb.ct ] ; 2 uses
  %.sroa.027.2163.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %.sroa.027.0.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.jb, %bb.ct ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !177167)
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cl, %.lr.ph.i75.i.i.i.i.i.i.i.i.i.i.i
  %i.ik = phi i64 [ %.promoted.i73165.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i75.i.i.i.i.i.i.i.i.i.i.i ], [ %i.in, %bb.cl ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !177168)
  %i.il = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.ik
  %i.im = load i8, ptr %i.il, align 1, !noalias !177169, !noundef !416
  switch i8 %i.im, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i [
    i8 32, label %bb.cl
    i8 10, label %bb.cl
    i8 9, label %bb.cl
    i8 13, label %bb.cl
    i8 44, label %bb.co
    i8 93, label %bb.cp
    i8 125, label %bb.cq
  ]

bb.cl:                                            ; preds = %bb.ck, %bb.ck, %bb.ck, %bb.ck
  %i.in = add i64 %i.ik, 1                        ; 3 uses
end_hunk_8
begin_hunk_9_@_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14parse_exponentCsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  %i.w = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.x, align 8
  store i64 1, ptr %0, align 8
  br label %bb.q

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 13, ptr %i.c, align 8
  %i.y = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %i.z, align 8
  store i64 1, ptr %0, align 8
  br label %bb.q

bb.f:                                             ; preds = %bb.c
  %i.aa = zext nneg i8 %i.v to i32                ; 2 uses
  %i.ab = icmp ult i64 %i.u, %i.j
  br i1 %i.ab, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread

_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28: ; preds = %bb.f, %bb.s
  %.sroa.08.054 = phi i32 [ %i.bj, %bb.s ], [ %i.aa, %bb.f ] ; 4 uses
  %i.ac = phi i64 [ %i.ag, %bb.s ], [ %i.u, %bb.f ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !211105, !noundef !416
  %i.af = add i8 %i.ae, -48                       ; 3 uses
  %or.cond1 = icmp ult i8 %i.af, 10
  br i1 %or.cond1, label %bb.g, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread

_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread: ; preds = %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28, %bb.s, %bb.f
  %.sroa.08.0.lcssa = phi i32 [ %i.aa, %bb.f ], [ %i.bj, %bb.s ], [ %.sroa.08.054, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28 ] ; 2 uses
  br i1 %.sroa.0.0, label %bb.i, label %bb.h

bb.g:                                             ; preds = %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28
  %i.ag = add i64 %i.ac, 1                        ; 3 uses
  store i64 %i.ag, ptr %i.f, align 8, !alias.scope !211106
  %i.ah = zext nneg i8 %i.af to i32
  %i.ai = icmp sgt i32 %.sroa.08.054, 214748363
  br i1 %i.ai, label %bb.r, label %bb.s

bb.h:                                             ; preds = %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread
  %i.aj = tail call i32 @llvm.ssub.sat.i32(i32 %4, i32 %.sroa.08.0.lcssa)
  br label %bb.j

bb.i:                                             ; preds = %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread
  %i.ak = tail call i32 @llvm.sadd.sat.i32(i32 %4, i32 %.sroa.08.0.lcssa)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.015.0 = phi i32 [ %i.ak, %bb.i ], [ %i.aj, %bb.h ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211107)
  %i.al = uitofp i64 %3 to double                 ; 2 uses
  %.sroa.012.020.i = tail call i32 @llvm.abs.i32(i32 %.sroa.015.0, i1 false) ; 2 uses
  %i.am = icmp ult i32 %.sroa.012.020.i, 309
  br i1 %i.am, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %bb.l
  %.sroa.0.022.i = phi i32 [ %i.au, %bb.l ], [ %.sroa.015.0, %bb.j ] ; 2 uses
  %.sroa.04.021.i = phi double [ %i.at, %bb.l ], [ %i.al, %bb.j ] ; 3 uses
  %i.an = fcmp oeq double %.sroa.04.021.i, 0.000000e+00
  br i1 %i.an, label %.loopexit.i, label %bb.k

._crit_edge.i:                                    ; preds = %bb.l, %bb.j
  %.sroa.04.0.lcssa.i = phi double [ %i.al, %bb.j ], [ %i.at, %bb.l ] ; 2 uses
  %.sroa.0.0.lcssa.i = phi i32 [ %.sroa.015.0, %bb.j ], [ %i.au, %bb.l ]
  %.sroa.012.0.lcssa.i = phi i32 [ %.sroa.012.020.i, %bb.j ], [ %.sroa.012.0.i, %bb.l ]
  %i.ao = zext nneg i32 %.sroa.012.0.lcssa.i to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtCs5QD3CVEMyfH_10serde_json2de5POW10, i64 %i.ao
  %i.aq = load double, ptr %i.ap, align 8, !noalias !211108, !noundef !416 ; 2 uses
  %i.ar = icmp sgt i32 %.sroa.0.0.lcssa.i, -1
  br i1 %i.ar, label %bb.o, label %bb.n

bb.k:                                             ; preds = %.lr.ph.i
  %i.as = icmp sgt i32 %.sroa.0.022.i, -1
  br i1 %i.as, label %bb.m, label %bb.l, !prof !426

bb.l:                                             ; preds = %bb.k
  %i.at = fdiv double %.sroa.04.021.i, 1.000000e+308 ; 2 uses
  %i.au = add nsw i32 %.sroa.0.022.i, 308         ; 3 uses
  %.sroa.012.0.i = tail call i32 @llvm.abs.i32(i32 %i.au, i1 true) ; 2 uses
  %i.av = icmp samesign ult i32 %.sroa.012.0.i, 309
  br i1 %i.av, label %._crit_edge.i, label %.lr.ph.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !211108
  store i64 14, ptr %i.a, align 8, !noalias !211108
  %i.aw = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a), !noalias !211107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !211108
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aw, ptr %i.ax, align 8, !alias.scope !211107, !noalias !211109
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsfR8GmIBoxTX_21lance_namespace_impls.exit

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.o, %bb.n
  %.sroa.04.1.i = phi double [ %i.bb, %bb.o ], [ %i.ba, %bb.n ], [ %.sroa.04.021.i, %.lr.ph.i ] ; 2 uses
  %i.ay = fneg double %.sroa.04.1.i
  %.sroa.04.2.i = select i1 %2, double %.sroa.04.1.i, double %i.ay
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sroa.04.2.i, ptr %i.az, align 8, !alias.scope !211107, !noalias !211109
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.n:                                             ; preds = %._crit_edge.i
  %i.ba = fdiv double %.sroa.04.0.lcssa.i, %i.aq
  br label %.loopexit.i

bb.o:                                             ; preds = %._crit_edge.i
  %i.bb = fmul double %.sroa.04.0.lcssa.i, %i.aq  ; 2 uses
  %i.bc = tail call double @llvm.fabs.f64(double %i.bb)
  %i.bd = fcmp oeq double %i.bc, +inf
  br i1 %i.bd, label %bb.p, label %.loopexit.i, !prof !426

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !211108
  store i64 14, ptr %i.b, align 8, !noalias !211108
  %i.be = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !211107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !211108
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.be, ptr %i.bf, align 8, !alias.scope !211107, !noalias !211109
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsfR8GmIBoxTX_21lance_namespace_impls.exit

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.m, %.loopexit.i, %bb.p
  %storemerge.i = phi i64 [ 0, %.loopexit.i ], [ 1, %bb.p ], [ 1, %bb.m ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !211107, !noalias !211109
  br label %bb.q

bb.q:                                             ; preds = %bb.t, %bb.e, %bb.d, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsfR8GmIBoxTX_21lance_namespace_impls.exit
  ret void

bb.r:                                             ; preds = %bb.g
  %i.bg = icmp ne i32 %.sroa.08.054, 214748364
  %i.bh = icmp samesign ugt i8 %i.af, 7
  %or.cond2 = or i1 %i.bg, %i.bh
  br i1 %or.cond2, label %bb.t, label %bb.s, !prof !462

bb.s:                                             ; preds = %bb.r, %bb.g
  %i.bi = mul i32 %.sroa.08.054, 10
  %i.bj = add i32 %i.bi, %i.ah                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ag, %i.j
  br i1 %exitcond.not, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28

bb.t:                                             ; preds = %bb.r
  %i.bk = icmp eq i64 %3, 0
  tail call void @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE23parse_exponent_overflowB7_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i1 noundef zeroext %i.bk, i1 noundef zeroext %.sroa.0.0)
  br label %bb.q
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE17peek_invalid_typeCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211168)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 16 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !211169, !noalias !211170, !noundef !416 ; 17 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !211169, !noalias !211170, !noundef !416 ; 10 uses
  %i.v = icmp ult i64 %i.s, %i.u
  br i1 %i.v, label %bb.b, label %.thread64

bb.b:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %i.q, align 8, !alias.scope !211169, !noalias !211170, !nonnull !416, !noundef !416
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.s
  %i.y = load i8, ptr %i.x, align 1, !noalias !211171, !noundef !416 ; 2 uses
  switch i8 %i.y, label %bb.c [
    i8 110, label %bb.d
    i8 116, label %bb.k
    i8 102, label %bb.r
    i8 45, label %bb.aa
    i8 34, label %bb.ab
    i8 91, label %bb.ac
    i8 123, label %bb.ad
  ], !prof !786

bb.c:                                             ; preds = %bb.b
  %i.z = add i8 %i.y, -48
  %or.cond = icmp ult i8 %i.z, 10
  br i1 %or.cond, label %bb.aj, label %.thread64, !prof !696

bb.d:                                             ; preds = %bb.b
  %i.aa = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.aa, ptr %i.r, align 8, !alias.scope !211172
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211173)
  %i.ab = load ptr, ptr %i.q, align 8, !alias.scope !211173, !noalias !211174, !nonnull !416 ; 3 uses
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 %i.u)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211176)
  %exitcond.not.i.not = icmp ult i64 %i.aa, %i.u
  br i1 %exitcond.not.i.not, label %bb.e, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aa
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !211177, !noundef !416
  %i.ae = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.ae, ptr %i.r, align 8, !alias.scope !211178, !noalias !211179
  %.not.i = icmp eq i8 %i.ad, 117
  br i1 %.not.i, label %bb.f, label %bb.j, !prof !696

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211180)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211181)
  %exitcond.not.i.1 = icmp eq i64 %i.u, %i.ae
  br i1 %exitcond.not.i.1, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !noalias !211182, !noundef !416
  %i.ah = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.ah, ptr %i.r, align 8, !alias.scope !211183, !noalias !211179
  %.not.i.1 = icmp eq i8 %i.ag, 108
  br i1 %.not.i.1, label %bb.h, label %bb.j, !prof !696

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211185)
  %exitcond.not.i.2 = icmp eq i64 %i.ah, %umax.i
  br i1 %exitcond.not.i.2, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !211186, !noundef !416
  %i.ak = add i64 %i.s, 4
  store i64 %i.ak, ptr %i.r, align 8, !alias.scope !211187, !noalias !211179
  %.not.i.2 = icmp eq i8 %i.aj, 108
  br i1 %.not.i.2, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.j, !prof !696

_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i: ; preds = %bb.h, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !211188
  store i64 5, ptr %i.f, align 8, !noalias !211188
  %i.al = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f), !noalias !211174
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !211188
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !211188
  store i64 9, ptr %i.e, align 8, !noalias !211188
  %i.am = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e), !noalias !211174
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !211188
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread

bb.k:                                             ; preds = %bb.b
  %i.an = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.an, ptr %i.r, align 8, !alias.scope !211189
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211190)
  %i.ao = load ptr, ptr %i.q, align 8, !alias.scope !211190, !noalias !211191, !nonnull !416 ; 3 uses
  %umax.i24 = tail call i64 @llvm.umax.i64(i64 %i.an, i64 %i.u)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211193)
  %exitcond.not.i26.not = icmp ult i64 %i.an, %i.u
  br i1 %exitcond.not.i26.not, label %bb.l, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !211194, !noundef !416
  %i.ar = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.ar, ptr %i.r, align 8, !alias.scope !211195, !noalias !211196
  %.not.i27 = icmp eq i8 %i.aq, 114
  br i1 %.not.i27, label %bb.m, label %bb.q, !prof !696

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211197)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211198)
  %exitcond.not.i26.1 = icmp eq i64 %i.u, %i.ar
  br i1 %exitcond.not.i26.1, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !211199, !noundef !416
  %i.au = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.au, ptr %i.r, align 8, !alias.scope !211200, !noalias !211196
  %.not.i27.1 = icmp eq i8 %i.at, 117
  br i1 %.not.i27.1, label %bb.o, label %bb.q, !prof !696

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211202)
  %exitcond.not.i26.2 = icmp eq i64 %i.au, %umax.i24
  br i1 %exitcond.not.i26.2, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !211203, !noundef !416
  %i.ax = add i64 %i.s, 4
  store i64 %i.ax, ptr %i.r, align 8, !alias.scope !211204, !noalias !211196
  %.not.i27.2 = icmp eq i8 %i.aw, 101
  br i1 %.not.i27.2, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit30, label %bb.q, !prof !696

_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29: ; preds = %bb.o, %bb.m, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !211205
  store i64 5, ptr %i.d, align 8, !noalias !211205
  %i.ay = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d), !noalias !211191
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !211205
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread

bb.q:                                             ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !211205
  store i64 9, ptr %i.c, align 8, !noalias !211205
  %i.az = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c), !noalias !211191
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !211205
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread

bb.r:                                             ; preds = %bb.b
  %i.ba = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.ba, ptr %i.r, align 8, !alias.scope !211206
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211207)
  %i.bb = load ptr, ptr %i.q, align 8, !alias.scope !211207, !noalias !211208, !nonnull !416 ; 4 uses
  %umax.i32 = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 %i.u) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211209)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211210)
  %exitcond.not.i34.not = icmp ult i64 %i.ba, %i.u
  br i1 %exitcond.not.i34.not, label %bb.s, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37

bb.s:                                             ; preds = %bb.r
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ba
  %i.bd = load i8, ptr %i.bc, align 1, !noalias !211211, !noundef !416
  %i.be = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.be, ptr %i.r, align 8, !alias.scope !211212, !noalias !211213
  %.not.i35 = icmp eq i8 %i.bd, 97
  br i1 %.not.i35, label %bb.t, label %bb.z, !prof !696

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211214)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211215)
  %exitcond.not.i34.1 = icmp eq i64 %i.u, %i.be
  br i1 %exitcond.not.i34.1, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !noalias !211216, !noundef !416
  %i.bh = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.bh, ptr %i.r, align 8, !alias.scope !211217, !noalias !211213
  %.not.i35.1 = icmp eq i8 %i.bg, 108
  br i1 %.not.i35.1, label %bb.v, label %bb.z, !prof !696

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211218)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211219)
  %exitcond.not.i34.2 = icmp eq i64 %i.bh, %umax.i32
  br i1 %exitcond.not.i34.2, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !noalias !211220, !noundef !416
  %i.bk = add i64 %i.s, 4                         ; 3 uses
  store i64 %i.bk, ptr %i.r, align 8, !alias.scope !211221, !noalias !211213
  %.not.i35.2 = icmp eq i8 %i.bj, 115
  br i1 %.not.i35.2, label %bb.x, label %bb.z, !prof !696

bb.x:                                             ; preds = %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211222)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211223)
  %exitcond.not.i34.3 = icmp eq i64 %i.bk, %umax.i32
  br i1 %exitcond.not.i34.3, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !noalias !211224, !noundef !416
  %i.bn = add i64 %i.s, 5
  store i64 %i.bn, ptr %i.r, align 8, !alias.scope !211225, !noalias !211213
  %.not.i35.3 = icmp eq i8 %i.bm, 101
  br i1 %.not.i35.3, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit38, label %bb.z, !prof !696

_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37: ; preds = %bb.x, %bb.v, %bb.t, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !211226
  store i64 5, ptr %i.b, align 8, !noalias !211226
  %i.bo = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !211208
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !211226
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread

bb.z:                                             ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !211226
  store i64 9, ptr %i.a, align 8, !noalias !211226
  %i.bp = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a), !noalias !211208
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !211226
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread

bb.aa:                                            ; preds = %bb.b
  %i.bq = add nuw i64 %i.s, 1
  store i64 %i.bq, ptr %i.r, align 8, !alias.scope !211227
  call fastcc void @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.m, ptr noalias noundef align 8 dereferenceable(56) %0, i1 noundef zeroext false)
  %i.br = load i64, ptr %i.m, align 8, !range !495, !noundef !416
  %i.bs = icmp eq i64 %i.br, -1
  br i1 %i.bs, label %bb.af, label %bb.ag, !prof !439

bb.ab:                                            ; preds = %bb.b
  %i.bt = add nuw i64 %i.s, 1
  store i64 %i.bt, ptr %i.r, align 8, !alias.scope !211228
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  %i.bv = load i64, ptr %i.k, align 8, !range !437, !noundef !416
  %i.bw = icmp eq i64 %i.bv, -1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !416, !noundef !416 ; 2 uses
  br i1 %i.bw, label %bb.ah, label %bb.ai, !prof !439

bb.ac:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i8 10, ptr %i.i, align 8
  %i.bz = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5QD3CVEMyfH_10serde_json5errorNtB5_5ErrorNtNtCskpEw9nXJLNc_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.i, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ae

bb.ad:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 11, ptr %i.h, align 8
  %i.ca = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5QD3CVEMyfH_10serde_json5errorNtB5_5ErrorNtNtCskpEw9nXJLNc_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ae

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i8 7, ptr %i.p, align 8
  %i.cb = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5QD3CVEMyfH_10serde_json5errorNtB5_5ErrorNtNtCskpEw9nXJLNc_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.p, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.al, %.thread64, %bb.ai, %bb.ag, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit38, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit30, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit, %bb.ad, %bb.ac
  %.sroa.02.0 = phi ptr [ %i.cs, %bb.al ], [ %i.cn, %.thread64 ], [ %i.cb, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit ], [ %i.ce, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit30 ], [ %i.cg, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit38 ], [ %i.cj, %bb.ag ], [ %i.cm, %bb.ai ], [ %i.bz, %bb.ac ], [ %i.ca, %bb.ad ]
  %i.cc = call fastcc noundef nonnull align 8 ptr @_RINvMs0_NtCs5QD3CVEMyfH_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 %.sroa.02.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0)
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit30: ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store i8 1, ptr %i.cd, align 1
  store i8 0, ptr %i.o, align 8
  %i.ce = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5QD3CVEMyfH_10serde_json5errorNtB5_5ErrorNtNtCskpEw9nXJLNc_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ae

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit38: ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store i8 0, ptr %i.cf, align 1
  store i8 0, ptr %i.n, align 8
  %i.cg = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5QD3CVEMyfH_10serde_json5errorNtB5_5ErrorNtNtCskpEw9nXJLNc_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.n, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.ae

bb.af:                                            ; preds = %bb.aa
  %i.ch = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !416, !align !417, !noundef !416
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread

bb.ag:                                            ; preds = %bb.aa
  %i.cj = call noundef nonnull align 8 ptr @_RNvMs2_NtCs5QD3CVEMyfH_10serde_json2deNtB5_12ParserNumber12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.m, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  br label %bb.ae

bb.ah:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread

bb.ai:                                            ; preds = %bb.ab
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.by, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.sroa.6.0.copyload, ptr %i.cl, align 8
  store i8 5, ptr %i.j, align 8
  %i.cm = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5QD3CVEMyfH_10serde_json5errorNtB5_5ErrorNtNtCskpEw9nXJLNc_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ae

.thread64:                                        ; preds = %bb.a, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 10, ptr %i.g, align 8
  %i.cn = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ae

bb.aj:                                            ; preds = %bb.c
  call fastcc void @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.l, ptr noalias noundef align 8 dereferenceable(56) %0, i1 noundef zeroext true)
  %i.co = load i64, ptr %i.l, align 8, !range !495, !noundef !416
  %i.cp = icmp eq i64 %i.co, -1
  br i1 %i.cp, label %bb.ak, label %bb.al, !prof !439

bb.ak:                                            ; preds = %bb.aj
  %i.cq = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !nonnull !416, !align !417, !noundef !416
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread

bb.al:                                            ; preds = %bb.aj
  %i.cs = call noundef nonnull align 8 ptr @_RNvMs2_NtCs5QD3CVEMyfH_10serde_json2deNtB5_12ParserNumber12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.l, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  br label %bb.ae

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread: ; preds = %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37, %bb.z, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29, %bb.q, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, %bb.j, %bb.af, %bb.ah, %bb.ak, %bb.ae
  %.sroa.0.1 = phi ptr [ %i.cc, %bb.ae ], [ %i.cr, %bb.ak ], [ %i.by, %bb.ah ], [ %i.az, %bb.q ], [ %i.am, %bb.j ], [ %i.ci, %bb.af ], [ %i.al, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i ], [ %i.ay, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29 ], [ %i.bo, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37 ], [ %i.bp, %bb.z ]
  ret ptr %.sroa.0.1
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = invoke { i64, i64 } @_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read8position(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i64, i64 } %i.b, 0
  %i.d = extractvalue { i64, i64 } %i.b, 1
  %i.e = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCs5QD3CVEMyfH_10serde_json5errorNtB5_5Error6syntax(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.d)
  ret ptr %i.e
end_hunk_9
begin_hunk_10_@_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14parse_exponentCsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  store i64 5, ptr %i.d, align 8
  %i.w = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.x, align 8
  store i64 1, ptr %0, align 8
  br label %bb.q

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 13, ptr %i.c, align 8
  %i.y = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %i.z, align 8
  store i64 1, ptr %0, align 8
  br label %bb.q

bb.f:                                             ; preds = %bb.c
  %i.aa = zext nneg i8 %i.v to i32                ; 2 uses
  %i.ab = icmp ult i64 %i.u, %i.j
  br i1 %i.ab, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28.thread

_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28: ; preds = %bb.f, %bb.s
  %.sroa.08.054 = phi i32 [ %i.bj, %bb.s ], [ %i.aa, %bb.f ] ; 4 uses
  %i.ac = phi i64 [ %i.ag, %bb.s ], [ %i.u, %bb.f ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !211446, !noundef !416
  %i.af = add i8 %i.ae, -48                       ; 3 uses
  %or.cond1 = icmp ult i8 %i.af, 10
  br i1 %or.cond1, label %bb.g, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28.thread

_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28.thread: ; preds = %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28, %bb.s, %bb.f
  %.sroa.08.0.lcssa = phi i32 [ %i.aa, %bb.f ], [ %i.bj, %bb.s ], [ %.sroa.08.054, %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28 ] ; 2 uses
  br i1 %.sroa.0.0, label %bb.i, label %bb.h

bb.g:                                             ; preds = %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28
  %i.ag = add i64 %i.ac, 1                        ; 3 uses
  store i64 %i.ag, ptr %i.f, align 8, !alias.scope !211447
  %i.ah = zext nneg i8 %i.af to i32
  %i.ai = icmp sgt i32 %.sroa.08.054, 214748363
  br i1 %i.ai, label %bb.r, label %bb.s

bb.h:                                             ; preds = %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28.thread
  %i.aj = tail call i32 @llvm.ssub.sat.i32(i32 %4, i32 %.sroa.08.0.lcssa)
  br label %bb.j

bb.i:                                             ; preds = %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28.thread
  %i.ak = tail call i32 @llvm.sadd.sat.i32(i32 %4, i32 %.sroa.08.0.lcssa)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.015.0 = phi i32 [ %i.ak, %bb.i ], [ %i.aj, %bb.h ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211448)
  %i.al = uitofp i64 %3 to double                 ; 2 uses
  %.sroa.012.020.i = tail call i32 @llvm.abs.i32(i32 %.sroa.015.0, i1 false) ; 2 uses
  %i.am = icmp ult i32 %.sroa.012.020.i, 309
  br i1 %i.am, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %bb.l
  %.sroa.0.022.i = phi i32 [ %i.au, %bb.l ], [ %.sroa.015.0, %bb.j ] ; 2 uses
  %.sroa.04.021.i = phi double [ %i.at, %bb.l ], [ %i.al, %bb.j ] ; 3 uses
  %i.an = fcmp oeq double %.sroa.04.021.i, 0.000000e+00
  br i1 %i.an, label %.loopexit.i, label %bb.k

._crit_edge.i:                                    ; preds = %bb.l, %bb.j
  %.sroa.04.0.lcssa.i = phi double [ %i.al, %bb.j ], [ %i.at, %bb.l ] ; 2 uses
  %.sroa.0.0.lcssa.i = phi i32 [ %.sroa.015.0, %bb.j ], [ %i.au, %bb.l ]
  %.sroa.012.0.lcssa.i = phi i32 [ %.sroa.012.020.i, %bb.j ], [ %.sroa.012.0.i, %bb.l ]
  %i.ao = zext nneg i32 %.sroa.012.0.lcssa.i to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtCs5QD3CVEMyfH_10serde_json2de5POW10, i64 %i.ao
  %i.aq = load double, ptr %i.ap, align 8, !noalias !211449, !noundef !416 ; 2 uses
  %i.ar = icmp sgt i32 %.sroa.0.0.lcssa.i, -1
  br i1 %i.ar, label %bb.o, label %bb.n

bb.k:                                             ; preds = %.lr.ph.i
  %i.as = icmp sgt i32 %.sroa.0.022.i, -1
  br i1 %i.as, label %bb.m, label %bb.l, !prof !426

bb.l:                                             ; preds = %bb.k
  %i.at = fdiv double %.sroa.04.021.i, 1.000000e+308 ; 2 uses
  %i.au = add nsw i32 %.sroa.0.022.i, 308         ; 3 uses
  %.sroa.012.0.i = tail call i32 @llvm.abs.i32(i32 %i.au, i1 true) ; 2 uses
  %i.av = icmp samesign ult i32 %.sroa.012.0.i, 309
  br i1 %i.av, label %._crit_edge.i, label %.lr.ph.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !211449
  store i64 14, ptr %i.a, align 8, !noalias !211449
  %i.aw = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a), !noalias !211448
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !211449
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aw, ptr %i.ax, align 8, !alias.scope !211448, !noalias !211450
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsfR8GmIBoxTX_21lance_namespace_impls.exit

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.o, %bb.n
  %.sroa.04.1.i = phi double [ %i.bb, %bb.o ], [ %i.ba, %bb.n ], [ %.sroa.04.021.i, %.lr.ph.i ] ; 2 uses
  %i.ay = fneg double %.sroa.04.1.i
  %.sroa.04.2.i = select i1 %2, double %.sroa.04.1.i, double %i.ay
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sroa.04.2.i, ptr %i.az, align 8, !alias.scope !211448, !noalias !211450
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.n:                                             ; preds = %._crit_edge.i
  %i.ba = fdiv double %.sroa.04.0.lcssa.i, %i.aq
  br label %.loopexit.i

bb.o:                                             ; preds = %._crit_edge.i
  %i.bb = fmul double %.sroa.04.0.lcssa.i, %i.aq  ; 2 uses
  %i.bc = tail call double @llvm.fabs.f64(double %i.bb)
  %i.bd = fcmp oeq double %i.bc, +inf
  br i1 %i.bd, label %bb.p, label %.loopexit.i, !prof !426

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !211449
  store i64 14, ptr %i.b, align 8, !noalias !211449
  %i.be = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !211448
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !211449
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.be, ptr %i.bf, align 8, !alias.scope !211448, !noalias !211450
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsfR8GmIBoxTX_21lance_namespace_impls.exit

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.m, %.loopexit.i, %bb.p
  %storemerge.i = phi i64 [ 0, %.loopexit.i ], [ 1, %bb.p ], [ 1, %bb.m ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !211448, !noalias !211450
  br label %bb.q

bb.q:                                             ; preds = %bb.t, %bb.e, %bb.d, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsfR8GmIBoxTX_21lance_namespace_impls.exit
  ret void

bb.r:                                             ; preds = %bb.g
  %i.bg = icmp ne i32 %.sroa.08.054, 214748364
  %i.bh = icmp samesign ugt i8 %i.af, 7
  %or.cond2 = or i1 %i.bg, %i.bh
  br i1 %or.cond2, label %bb.t, label %bb.s, !prof !462

bb.s:                                             ; preds = %bb.r, %bb.g
  %i.bi = mul i32 %.sroa.08.054, 10
  %i.bj = add i32 %i.bi, %i.ah                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ag, %i.j
  br i1 %exitcond.not, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28.thread, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28

bb.t:                                             ; preds = %bb.r
  %i.bk = icmp eq i64 %3, 0
  tail call void @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE23parse_exponent_overflowCs3PfUT229lOd_12object_store(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i1 noundef zeroext %i.bk, i1 noundef zeroext %.sroa.0.0)
  br label %bb.q
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE17peek_invalid_typeCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211489)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 16 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !211489, !noalias !211490, !noundef !416 ; 17 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !211489, !noalias !211490, !noundef !416 ; 10 uses
  %i.v = icmp ult i64 %i.s, %i.u
  br i1 %i.v, label %bb.b, label %.thread64

bb.b:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %i.q, align 8, !alias.scope !211489, !noalias !211490, !nonnull !416, !noundef !416
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.s
  %i.y = load i8, ptr %i.x, align 1, !noalias !211491, !noundef !416 ; 2 uses
  switch i8 %i.y, label %bb.c [
    i8 110, label %bb.d
    i8 116, label %bb.k
    i8 102, label %bb.r
    i8 45, label %bb.aa
    i8 34, label %bb.ab
    i8 91, label %bb.ac
    i8 123, label %bb.ad
  ], !prof !786

bb.c:                                             ; preds = %bb.b
  %i.z = add i8 %i.y, -48
  %or.cond = icmp ult i8 %i.z, 10
  br i1 %or.cond, label %bb.aj, label %.thread64, !prof !696

bb.d:                                             ; preds = %bb.b
  %i.aa = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.aa, ptr %i.r, align 8, !alias.scope !211492
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211493)
  %i.ab = load ptr, ptr %i.q, align 8, !alias.scope !211493, !noalias !211494, !nonnull !416 ; 3 uses
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 %i.u)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211495)
  %exitcond.not.i.not = icmp ult i64 %i.aa, %i.u
  br i1 %exitcond.not.i.not, label %bb.e, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aa
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !211496, !noundef !416
  %i.ae = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.ae, ptr %i.r, align 8, !alias.scope !211497, !noalias !211498
  %.not.i = icmp eq i8 %i.ad, 117
  br i1 %.not.i, label %bb.f, label %bb.j, !prof !696

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211499)
  %exitcond.not.i.1 = icmp eq i64 %i.u, %i.ae
  br i1 %exitcond.not.i.1, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !noalias !211500, !noundef !416
  %i.ah = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.ah, ptr %i.r, align 8, !alias.scope !211501, !noalias !211498
  %.not.i.1 = icmp eq i8 %i.ag, 108
  br i1 %.not.i.1, label %bb.h, label %bb.j, !prof !696

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211502)
  %exitcond.not.i.2 = icmp eq i64 %i.ah, %umax.i
  br i1 %exitcond.not.i.2, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !211503, !noundef !416
  %i.ak = add i64 %i.s, 4
  store i64 %i.ak, ptr %i.r, align 8, !alias.scope !211504, !noalias !211498
  %.not.i.2 = icmp eq i8 %i.aj, 108
  br i1 %.not.i.2, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.j, !prof !696

_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i: ; preds = %bb.h, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !211505
  store i64 5, ptr %i.f, align 8, !noalias !211505
  %i.al = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f), !noalias !211494
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !211505
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !211505
  store i64 9, ptr %i.e, align 8, !noalias !211505
  %i.am = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e), !noalias !211494
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !211505
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread

bb.k:                                             ; preds = %bb.b
  %i.an = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.an, ptr %i.r, align 8, !alias.scope !211506
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211507)
  %i.ao = load ptr, ptr %i.q, align 8, !alias.scope !211507, !noalias !211508, !nonnull !416 ; 3 uses
  %umax.i24 = tail call i64 @llvm.umax.i64(i64 %i.an, i64 %i.u)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211509)
  %exitcond.not.i26.not = icmp ult i64 %i.an, %i.u
  br i1 %exitcond.not.i26.not, label %bb.l, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i29

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !211510, !noundef !416
  %i.ar = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.ar, ptr %i.r, align 8, !alias.scope !211511, !noalias !211512
  %.not.i27 = icmp eq i8 %i.aq, 114
  br i1 %.not.i27, label %bb.m, label %bb.q, !prof !696

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211513)
  %exitcond.not.i26.1 = icmp eq i64 %i.u, %i.ar
  br i1 %exitcond.not.i26.1, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i29, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !211514, !noundef !416
  %i.au = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.au, ptr %i.r, align 8, !alias.scope !211515, !noalias !211512
  %.not.i27.1 = icmp eq i8 %i.at, 117
  br i1 %.not.i27.1, label %bb.o, label %bb.q, !prof !696

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211516)
  %exitcond.not.i26.2 = icmp eq i64 %i.au, %umax.i24
  br i1 %exitcond.not.i26.2, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i29, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !211517, !noundef !416
  %i.ax = add i64 %i.s, 4
  store i64 %i.ax, ptr %i.r, align 8, !alias.scope !211518, !noalias !211512
  %.not.i27.2 = icmp eq i8 %i.aw, 101
  br i1 %.not.i27.2, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit30, label %bb.q, !prof !696

_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i29: ; preds = %bb.o, %bb.m, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !211519
  store i64 5, ptr %i.d, align 8, !noalias !211519
  %i.ay = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d), !noalias !211508
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !211519
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread

bb.q:                                             ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !211519
  store i64 9, ptr %i.c, align 8, !noalias !211519
  %i.az = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c), !noalias !211508
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !211519
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread

bb.r:                                             ; preds = %bb.b
  %i.ba = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.ba, ptr %i.r, align 8, !alias.scope !211520
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211521)
  %i.bb = load ptr, ptr %i.q, align 8, !alias.scope !211521, !noalias !211522, !nonnull !416 ; 4 uses
  %umax.i32 = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 %i.u) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211523)
  %exitcond.not.i34.not = icmp ult i64 %i.ba, %i.u
  br i1 %exitcond.not.i34.not, label %bb.s, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37

bb.s:                                             ; preds = %bb.r
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ba
  %i.bd = load i8, ptr %i.bc, align 1, !noalias !211524, !noundef !416
  %i.be = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.be, ptr %i.r, align 8, !alias.scope !211525, !noalias !211526
  %.not.i35 = icmp eq i8 %i.bd, 97
  br i1 %.not.i35, label %bb.t, label %bb.z, !prof !696

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211527)
  %exitcond.not.i34.1 = icmp eq i64 %i.u, %i.be
  br i1 %exitcond.not.i34.1, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !noalias !211528, !noundef !416
  %i.bh = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.bh, ptr %i.r, align 8, !alias.scope !211529, !noalias !211526
  %.not.i35.1 = icmp eq i8 %i.bg, 108
  br i1 %.not.i35.1, label %bb.v, label %bb.z, !prof !696

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211530)
  %exitcond.not.i34.2 = icmp eq i64 %i.bh, %umax.i32
  br i1 %exitcond.not.i34.2, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !noalias !211531, !noundef !416
  %i.bk = add i64 %i.s, 4                         ; 3 uses
  store i64 %i.bk, ptr %i.r, align 8, !alias.scope !211532, !noalias !211526
  %.not.i35.2 = icmp eq i8 %i.bj, 115
  br i1 %.not.i35.2, label %bb.x, label %bb.z, !prof !696

bb.x:                                             ; preds = %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211533)
  %exitcond.not.i34.3 = icmp eq i64 %i.bk, %umax.i32
  br i1 %exitcond.not.i34.3, label %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !noalias !211534, !noundef !416
  %i.bn = add i64 %i.s, 5
  store i64 %i.bn, ptr %i.r, align 8, !alias.scope !211535, !noalias !211526
  %.not.i35.3 = icmp eq i8 %i.bm, 101
  br i1 %.not.i35.3, label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit38, label %bb.z, !prof !696

_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37: ; preds = %bb.x, %bb.v, %bb.t, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !211536
  store i64 5, ptr %i.b, align 8, !noalias !211536
  %i.bo = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !211522
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !211536
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread

bb.z:                                             ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !211536
  store i64 9, ptr %i.a, align 8, !noalias !211536
  %i.bp = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a), !noalias !211522
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !211536
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread

bb.aa:                                            ; preds = %bb.b
  %i.bq = add nuw i64 %i.s, 1
  store i64 %i.bq, ptr %i.r, align 8, !alias.scope !211537
  call fastcc void @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_integerCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.m, ptr noalias noundef align 8 dereferenceable(56) %0, i1 noundef zeroext false)
  %i.br = load i64, ptr %i.m, align 8, !range !495, !noundef !416
  %i.bs = icmp eq i64 %i.br, -1
  br i1 %i.bs, label %bb.af, label %bb.ag, !prof !439

bb.ab:                                            ; preds = %bb.b
  %i.bt = add nuw i64 %i.s, 1
  store i64 %i.bt, ptr %i.r, align 8, !alias.scope !211538
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read9parse_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  %i.bv = load i64, ptr %i.k, align 8, !range !437, !noundef !416
  %i.bw = icmp eq i64 %i.bv, -1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !416, !noundef !416 ; 2 uses
  br i1 %i.bw, label %bb.ah, label %bb.ai, !prof !439

bb.ac:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i8 10, ptr %i.i, align 8
  %i.bz = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5QD3CVEMyfH_10serde_json5errorNtB5_5ErrorNtNtCskpEw9nXJLNc_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.i, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ae

bb.ad:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 11, ptr %i.h, align 8
  %i.ca = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5QD3CVEMyfH_10serde_json5errorNtB5_5ErrorNtNtCskpEw9nXJLNc_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ae

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i8 7, ptr %i.p, align 8
  %i.cb = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5QD3CVEMyfH_10serde_json5errorNtB5_5ErrorNtNtCskpEw9nXJLNc_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.p, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.al, %.thread64, %bb.ai, %bb.ag, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit38, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit30, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit, %bb.ad, %bb.ac
  %.sroa.02.0 = phi ptr [ %i.cs, %bb.al ], [ %i.cn, %.thread64 ], [ %i.cb, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit ], [ %i.ce, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit30 ], [ %i.cg, %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit38 ], [ %i.cj, %bb.ag ], [ %i.cm, %bb.ai ], [ %i.bz, %bb.ac ], [ %i.ca, %bb.ad ]
  %i.cc = call fastcc noundef nonnull align 8 ptr @_RINvMs0_NtCs5QD3CVEMyfH_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read9SliceReadE12fix_position0ECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 %.sroa.02.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0)
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit30: ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store i8 1, ptr %i.cd, align 1
  store i8 0, ptr %i.o, align 8
  %i.ce = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5QD3CVEMyfH_10serde_json5errorNtB5_5ErrorNtNtCskpEw9nXJLNc_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ae

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit38: ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store i8 0, ptr %i.cf, align 1
  store i8 0, ptr %i.n, align 8
  %i.cg = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5QD3CVEMyfH_10serde_json5errorNtB5_5ErrorNtNtCskpEw9nXJLNc_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.n, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.ae

bb.af:                                            ; preds = %bb.aa
  %i.ch = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !416, !align !417, !noundef !416
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread

bb.ag:                                            ; preds = %bb.aa
  %i.cj = call noundef nonnull align 8 ptr @_RNvMs2_NtCs5QD3CVEMyfH_10serde_json2deNtB5_12ParserNumber12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.m, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  br label %bb.ae

bb.ah:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread

bb.ai:                                            ; preds = %bb.ab
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.by, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.sroa.6.0.copyload, ptr %i.cl, align 8
  store i8 5, ptr %i.j, align 8
  %i.cm = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5QD3CVEMyfH_10serde_json5errorNtB5_5ErrorNtNtCskpEw9nXJLNc_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ae

.thread64:                                        ; preds = %bb.a, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 10, ptr %i.g, align 8
  %i.cn = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ae

bb.aj:                                            ; preds = %bb.c
  call fastcc void @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_integerCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.l, ptr noalias noundef align 8 dereferenceable(56) %0, i1 noundef zeroext true)
  %i.co = load i64, ptr %i.l, align 8, !range !495, !noundef !416
  %i.cp = icmp eq i64 %i.co, -1
  br i1 %i.cp, label %bb.ak, label %bb.al, !prof !439

bb.ak:                                            ; preds = %bb.aj
  %i.cq = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !nonnull !416, !align !417, !noundef !416
  br label %_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread

bb.al:                                            ; preds = %bb.aj
  %i.cs = call noundef nonnull align 8 ptr @_RNvMs2_NtCs5QD3CVEMyfH_10serde_json2deNtB5_12ParserNumber12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.l, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  br label %bb.ae

_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread: ; preds = %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37, %bb.z, %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i29, %bb.q, %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i, %bb.j, %bb.af, %bb.ah, %bb.ak, %bb.ae
  %.sroa.0.1 = phi ptr [ %i.cc, %bb.ae ], [ %i.cr, %bb.ak ], [ %i.by, %bb.ah ], [ %i.az, %bb.q ], [ %i.am, %bb.j ], [ %i.ci, %bb.af ], [ %i.al, %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i ], [ %i.ay, %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i29 ], [ %i.bo, %_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37 ], [ %i.bp, %bb.z ]
  ret ptr %.sroa.0.1
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = invoke { i64, i64 } @_RNvXs5_NtCs5QD3CVEMyfH_10serde_json4readNtB5_9SliceReadNtB5_4Read8position(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i64, i64 } %i.b, 0
  %i.d = extractvalue { i64, i64 } %i.b, 1
  %i.e = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCs5QD3CVEMyfH_10serde_json5errorNtB5_5Error6syntax(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.d)
  ret ptr %i.e

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.f

end_hunk_10
begin_hunk_11_@_RNvXs_NtNtCsgczF5crJ4sT_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardINtNtNtNtB8_11collections4hash3map7HashMapmINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtCseXbohGRa9jr_5tokio4sync9once_cell8OnceCellIB23_NtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEEEEEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCsgczF5crJ4sT_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardINtNtNtNtB8_11collections4hash3map7HashMapyNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapEEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias readonly align 8 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @6966, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCsgczF5crJ4sT_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardINtNtNtNtB8_11collections4hash3set7HashSetyEEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias readonly align 8 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @6966, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCsgczF5crJ4sT_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardNtNtCs40Ppcsylqp4_17crossbeam_channel5waker5WakerEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias readonly align 8 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @6966, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCsgczF5crJ4sT_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardNtNtNtB6_4mpmc4zero5InnerEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias readonly align 8 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @6966, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCsgczF5crJ4sT_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardNtNtNtB6_4mpmc5waker5WakerEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias readonly align 8 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @6966, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCsgczF5crJ4sT_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardNtNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4zero5InnerEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias readonly align 8 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @6966, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCsgczF5crJ4sT_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias readonly align 8 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @6966, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCsgczF5crJ4sT_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardNtNtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insert10MergeStatsEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias readonly align 8 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @6966, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCsgczF5crJ4sT_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardNtNtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insert18InsertedKeyTrackerEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias readonly align 8 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @6966, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCsgczF5crJ4sT_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_6rwlock16RwLockWriteGuardINtNtNtNtB8_11collections4hash3map7HashMapTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtB2d_4sync4WeakNtB2N_11ObjectStoreEEEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias readonly align 8 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @6966, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCsgczF5crJ4sT_3std4sync6poisonINtB4_11PoisonErrorINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs9KQ7US1M400_11lance_table6format8fragment8FragmentEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias readonly align 8 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @6966, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCsgczF5crJ4sT_3std4sync6poisonINtB4_11PoisonErrorINtNtCs40k4W9msRzi_5alloc3vec3VecyEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias readonly align 8 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @6966, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCsgczF5crJ4sT_3std4sync6poisonINtB4_11PoisonErrorINtNtNtNtB8_11collections4hash3map7HashMapyNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias readonly align 8 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @6966, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCsgczF5crJ4sT_3std4sync6poisonINtB4_11PoisonErrorNtNtNtNtCshkPeWWG1flk_5lance7dataset5write12merge_insert10MergeStatsENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias readonly align 8 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @6966, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs_NtNtCskTBvlRM5ILY_4moka3cht4iterINtB4_4IterNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB8_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB23_16CachedReaderDataEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !range !428, !noundef !416
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !243432, !noalias !243433
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !243432, !noalias !243433, !nonnull !416 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !243432, !noalias !243433, !nonnull !416, !align !417 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load i64, ptr %i.i, align 8, !alias.scope !243432, !noalias !243433
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.o

bb.c:                                             ; preds = %.preheader, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit4
  %i.s = phi i64 [ %.promoted, %.preheader ], [ %i.v, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit4 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !243434)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %_RNvMs0_NtNtCskTBvlRM5ILY_4moka3cht4iterINtB5_4IterNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB9_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB24_16CachedReaderDataEE12current_keysCsfR8GmIBoxTX_21lance_namespace_impls.exit.i, %bb.c
  %i.t = phi i64 [ %i.s, %bb.c ], [ %i.v, %_RNvMs0_NtNtCskTBvlRM5ILY_4moka3cht4iterINtB5_4IterNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB9_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB24_16CachedReaderDataEE12current_keysCsfR8GmIBoxTX_21lance_namespace_impls.exit.i ]
  %i.u = phi i64 [ %i.s, %bb.c ], [ %i.w, %_RNvMs0_NtNtCskTBvlRM5ILY_4moka3cht4iterINtB5_4IterNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB9_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB24_16CachedReaderDataEE12current_keysCsfR8GmIBoxTX_21lance_namespace_impls.exit.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !243435)
  %umax.i.i = call i64 @llvm.umax.i64(i64 %i.u, i64 %i.k) ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB12_6string6StringEEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  %i.v = phi i64 [ %i.ae, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB12_6string6StringEEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i ], [ %i.t, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i ] ; 2 uses
  %i.w = phi i64 [ %i.ae, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB12_6string6StringEEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i ], [ %i.u, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i ] ; 6 uses
  %i.x = load i64, ptr %1, align 8, !range !421, !alias.scope !243432, !noalias !243433, !noundef !416 ; 4 uses
  %.not.i.i = icmp eq i64 %i.x, -1
  br i1 %.not.i.i, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBO_6string6StringEE6map_orbNvMs_BM_BJ_8is_emptyECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBO_6string6StringEE6map_orbNvMs_BM_BJ_8is_emptyECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBO_6string6StringEE6map_orbNvMs_BM_BJ_8is_emptyECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %bb.d
  %.val.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !243436, !noalias !243433, !noundef !416 ; 3 uses
  %i.y = icmp ult i64 %.val.i.i.i, 384307168202282326
  call void @llvm.assume(i1 %i.y)
  %i.z = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.z, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBO_6string6StringEE6map_orbNvMs_BM_BJ_8is_emptyECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.thread.i.i, label %_RNvMs0_NtNtCskTBvlRM5ILY_4moka3cht4iterINtB5_4IterNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB9_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB24_16CachedReaderDataEE12current_keysCsfR8GmIBoxTX_21lance_namespace_impls.exit.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBO_6string6StringEE6map_orbNvMs_BM_BJ_8is_emptyECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i: ; preds = %bb.d
  %exitcond.not.i.i = icmp eq i64 %i.w, %umax.i.i
  br i1 %exitcond.not.i.i, label %bb.h, label %bb.e

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBO_6string6StringEE6map_orbNvMs_BM_BJ_8is_emptyECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.thread.i.i: ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBO_6string6StringEE6map_orbNvMs_BM_BJ_8is_emptyECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  %exitcond.not9.i.i = icmp eq i64 %i.w, %umax.i.i
  br i1 %exitcond.not9.i.i, label %bb.h, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i

bb.e:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBO_6string6StringEE6map_orbNvMs_BM_BJ_8is_emptyECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !243437
  %i.aa = load ptr, ptr %i.p, align 8, !invariant.load !416, !noalias !243437, !nonnull !416
  call void %i.aa(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %i.m, i64 noundef %i.w), !noalias !243437, !inline_history !243419
  call void @llvm.experimental.noalias.scope.decl(metadata !243438)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB12_6string6StringEEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i: ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBO_6string6StringEE6map_orbNvMs_BM_BJ_8is_emptyECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !243437
  %i.ab = load ptr, ptr %i.p, align 8, !invariant.load !416, !noalias !243437, !nonnull !416
  call void %i.ab(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %i.m, i64 noundef %i.w), !noalias !243437, !inline_history !243419
  call void @llvm.experimental.noalias.scope.decl(metadata !243439)
  %i.ac = icmp eq i64 %i.x, 0
  br i1 %i.ac, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB12_6string6StringEEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i
  %.val.i.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !243440, !noalias !243433, !nonnull !416, !noundef !416
  %i.ad = mul nuw i64 %i.x, 24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !243441
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB12_6string6StringEEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB12_6string6StringEEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %bb.f, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !243433
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !243437
  %i.ae = add i64 %i.w, 1                         ; 3 uses
  store i64 %i.ae, ptr %i.i, align 8, !alias.scope !243432, !noalias !243433
  br label %bb.d

_RNvMs0_NtNtCskTBvlRM5ILY_4moka3cht4iterINtB5_4IterNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB9_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB24_16CachedReaderDataEE12current_keysCsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBO_6string6StringEE6map_orbNvMs_BM_BJ_8is_emptyECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  %i.af = add nsw i64 %.val.i.i.i, -1             ; 3 uses
  store i64 %i.af, ptr %i.h, align 8, !alias.scope !243434, !noalias !243433
  %i.ag = icmp samesign ult i64 %i.af, %i.x
  call void @llvm.assume(i1 %i.ag)
  %i.ah = load ptr, ptr %i.q, align 8, !alias.scope !243434, !noalias !243433, !nonnull !416, !noundef !416
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.af ; 3 uses
  %.sroa.011.0.copyload.i = load i64, ptr %i.ai, align 8, !noalias !243442 ; 6 uses
  %.not3.i = icmp eq i64 %.sroa.011.0.copyload.i, -1
  br i1 %.not3.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i, label %bb.g

bb.g:                                             ; preds = %_RNvMs0_NtNtCskTBvlRM5ILY_4moka3cht4iterINtB5_4IterNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB9_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB24_16CachedReaderDataEE12current_keysCsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !243442
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !243442 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %.sroa.011.0.copyload.i, ptr %i.d, align 8
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.8.0..sroa_idx, align 8
  store i64 %.sroa.5.0.copyload.i, ptr %.sroa.9.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.aj = load ptr, ptr %i.r, align 8, !invariant.load !416, !nonnull !416
  invoke void %i.aj(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.c, ptr noundef nonnull %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d)
          to label %bb.k unwind label %bb.i

bb.h:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBO_6string6StringEE6map_orbNvMs_BM_BJ_8is_emptyECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.thread.i.i, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBO_6string6StringEE6map_orbNvMs_BM_BJ_8is_emptyECsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i
  store i8 1, ptr %i.e, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.o

bb.i:                                             ; preds = %bb.g
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %i.al = icmp eq i64 %.sroa.011.0.copyload.i, 0
  br i1 %i.al, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %.sroa.011.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !243443
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.k:                                             ; preds = %bb.g
  %i.am = load i64, ptr %i.c, align 8, !range !421, !noundef !416
  %.not1 = icmp eq i64 %i.am, -1
  br i1 %.not1, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.an, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ao = icmp eq i64 %.sroa.011.0.copyload.i, 0
  br i1 %i.ao, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit4, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %.sroa.011.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !243444
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit4

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit4: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.c

bb.o:                                             ; preds = %bb.l, %bb.h, %bb.b
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.j, %bb.i
  resume { ptr, i32 } %i.ak
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtNtCs9KQ7US1M400_11lance_table2io6commit17external_manifestNtB4_29ExternalManifestCommitHandlerNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @6971, i64 noundef 29, ptr noalias noundef nonnull readonly captures(address, read_provenance) @6972, i64 noundef 23, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6970)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4takeINtB4_4TakeINtNtB6_7flatten7FlattenINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtB6_3map3MapNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNCNCNvMs6_NtCsbjTsVCnQnhv_12lance_select4maskNtB3i_14RowAddrTreeMap9row_addrs00EEEENtNtNtB8_6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(312) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.i.i = alloca [128 x i8], align 8       ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !416 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtB7_3map3MapNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNCNCNvMs6_NtCsbjTsVCnQnhv_12lance_select4maskNtB31_14RowAddrTreeMap9row_addrs00EEENtNtNtB9_6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, -1
  store i64 %i.d, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 4 uses
  %.sroa.5.0..sroa_idx17.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i.i = load i64, ptr %0, align 8, !range !549, !alias.scope !243474
  %i.h = icmp eq i64 %.pre.i.i, -2
  br i1 %i.h, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call { i32, i32 } @_RNvXs0_NtNtCs1akgR21QTtx_7roaring6bitmap4iterNtB5_4IterNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(304) %0) ; 2 uses
  %i.j = extractvalue { i32, i32 } %i.i, 0
  %i.k = trunc i32 %i.j to i1
  br i1 %i.k, label %_RINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNCNCNvMs6_NtCsbjTsVCnQnhv_12lance_select4maskNtB2f_14RowAddrTreeMap9row_addrs00ENtNtNtCs63DIHKhvmTb_10lance_core5utils7address10RowAddressNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load i64, ptr %0, align 8, !range !549, !alias.scope !243475, !noundef !416
  %i.m = icmp eq i64 %i.l, -2
  br i1 %i.m, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNCNCNvMs6_NtCsbjTsVCnQnhv_12lance_select4maskNtB2o_14RowAddrTreeMap9row_addrs00EEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.peel.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 dereferenceable(304) %0)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNCNCNvMs6_NtCsbjTsVCnQnhv_12lance_select4maskNtB2o_14RowAddrTreeMap9row_addrs00EEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.peel.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNCNCNvMs6_NtCsbjTsVCnQnhv_12lance_select4maskNtB2o_14RowAddrTreeMap9row_addrs00EEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.peel.i: ; preds = %bb.e, %bb.d
  store i64 -2, ptr %0, align 8, !alias.scope !243474
  br label %bb.f

bb.f:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNCNCNvMs6_NtCsbjTsVCnQnhv_12lance_select4maskNtB2o_14RowAddrTreeMap9row_addrs00EEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.peel.i, %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243476)
  %i.n = load ptr, ptr %i.e, align 8, !alias.scope !243477, !noalias !243478, !noundef !416
  %.not.i2.i.peel.i = icmp eq ptr %i.n, null
  br i1 %.not.i2.i.peel.i, label %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtB7_3map3MapNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNCNCNvMs6_NtCsbjTsVCnQnhv_12lance_select4maskNtB2V_14RowAddrTreeMap9row_addrs00EEEINtB5_8FuseImplBY_E4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243479)
  %i.o = load ptr, ptr %i.f, align 8, !alias.scope !243480, !noalias !243481, !nonnull !416, !noundef !416
  %i.p = load ptr, ptr %i.g, align 8, !alias.scope !243480, !noalias !243481, !nonnull !416, !noundef !416 ; 4 uses
  %i.q = icmp eq ptr %i.p, %i.o
  br i1 %i.q, label %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtB7_3map3MapNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNCNCNvMs6_NtCsbjTsVCnQnhv_12lance_select4maskNtB2V_14RowAddrTreeMap9row_addrs00EEEINtB5_8FuseImplBY_E4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i, label %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtB7_3map3MapNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNCNCNvMs6_NtCsbjTsVCnQnhv_12lance_select4maskNtB2V_14RowAddrTreeMap9row_addrs00EEEINtB5_8FuseImplBY_E4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.peel.i

_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtB7_3map3MapNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNCNCNvMs6_NtCsbjTsVCnQnhv_12lance_select4maskNtB2V_14RowAddrTreeMap9row_addrs00EEEINtB5_8FuseImplBY_E4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.peel.i: ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 136
  store ptr %i.r, ptr %i.g, align 8, !alias.scope !243480, !noalias !243481
  %.sroa.0.0.copyload10.i.peel.i = load i64, ptr %i.p, align 8, !noalias !243482 ; 2 uses
  %.not.i.peel.i = icmp eq i64 %.sroa.0.0.copyload10.i.peel.i, -2
  br i1 %.not.i.peel.i, label %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtB7_3map3MapNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNCNCNvMs6_NtCsbjTsVCnQnhv_12lance_select4maskNtB2V_14RowAddrTreeMap9row_addrs00EEEINtB5_8FuseImplBY_E4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNCNCNvMs6_NtCsbjTsVCnQnhv_12lance_select4maskNtB2o_14RowAddrTreeMap9row_addrs00EEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNCNCNvMs6_NtCsbjTsVCnQnhv_12lance_select4maskNtB2o_14RowAddrTreeMap9row_addrs00EEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtB7_3map3MapNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNCNCNvMs6_NtCsbjTsVCnQnhv_12lance_select4maskNtB2V_14RowAddrTreeMap9row_addrs00EEEINtB5_8FuseImplBY_E4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.peel.i, %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtB7_3map3MapNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNCNCNvMs6_NtCsbjTsVCnQnhv_12lance_select4maskNtB2V_14RowAddrTreeMap9row_addrs00EEEINtB5_8FuseImplBY_E4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  %.sink.i = phi ptr [ %i.af, %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtB7_3map3MapNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNCNCNvMs6_NtCsbjTsVCnQnhv_12lance_select4maskNtB2V_14RowAddrTreeMap9row_addrs00EEEINtB5_8FuseImplBY_E4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i ], [ %i.p, %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtB7_3map3MapNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNCNCNvMs6_NtCsbjTsVCnQnhv_12lance_select4maskNtB2V_14RowAddrTreeMap9row_addrs00EEEINtB5_8FuseImplBY_E4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.peel.i ]
end_hunk_11
begin_hunk_12_@_RNvXscF_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_11AlterSchemaNtNtCscI6d9CVNmLh_4core5clone5Clone5clone:bb.a
bb.aa:                                            ; preds = %.body.i88
  %i.cl = mul nuw i64 %.val2.i.i, 88
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bx, i64 noundef %i.cl, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !246015, !inline_history !804
  br label %.body89

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs40MM8ukkVQd_9sqlparser3ast14ObjectNamePartEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %bb.w, %.body
  %.val.i.i = load i64, ptr %i.h, align 8, !range !419, !alias.scope !246018, !noundef !416 ; 2 uses
  %i.cm = icmp eq i64 %.val.i.i, 0
  br i1 %i.cm, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40MM8ukkVQd_9sqlparser3ast10ObjectNameECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.ab

bb.ab:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs40MM8ukkVQd_9sqlparser3ast14ObjectNamePartEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  %i.cn = mul nuw i64 %.val.i.i, 88
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bx, i64 noundef %i.cn, i64 noundef range(i64 1, -9223372036854775807) 8) #68, !noalias !246015, !inline_history !804
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40MM8ukkVQd_9sqlparser3ast10ObjectNameECsfR8GmIBoxTX_21lance_namespace_impls.exit

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs40MM8ukkVQd_9sqlparser3ast3ddl20AlterSchemaOperationEENtNtNtB8_6traits8iterator8Iterator4nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.thread: ; preds = %_RNvXscl_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_20AlterSchemaOperationNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i, %bb.e, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.thread
  %i.co = phi ptr [ %i.w, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.thread ], [ %i.aa, %bb.e ], [ %i.aa, %_RNvXscl_NtNtCs40MM8ukkVQd_9sqlparser3ast3ddlNtB6_20AlterSchemaOperationNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i ]
  store i64 %i.r, ptr %i.co, align 8, !noalias !245980
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cp, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !245980
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %i.n, ptr %i.cq, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

.body89:                                          ; preds = %.body.i88, %bb.aa
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40MM8ukkVQd_9sqlparser3ast10ObjectNameECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.ab, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs40MM8ukkVQd_9sqlparser3ast14ObjectNamePartEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXscG_NtCs40MM8ukkVQd_9sqlparser3astNtB6_18CreateTableOptionsNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = load i64, ptr %0, align 8, !range !547, !noundef !416
  switch i64 %i.e, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3720, i64 noundef 4)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.d, align 8
  %i.h = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @4548, i64 noundef 4, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4319)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.c, align 8
  %i.j = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @4949, i64 noundef 7, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4319)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.b, align 8
  %i.l = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @5177, i64 noundef 5, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4319)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %i.a, align 8
  %i.n = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @7244, i64 noundef 15, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4319)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.f, %bb.b ], [ %i.h, %bb.c ], [ %i.j, %bb.d ], [ %i.l, %bb.e ], [ %i.n, %bb.f ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXscR_NtCs40MM8ukkVQd_9sqlparser3astNtB6_9FromTableNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load i64, ptr %0, align 8, !range !442, !noundef !416
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.e, ptr %i.a, align 8
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @7253, i64 noundef 14, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5588)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @7252, i64 noundef 15, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5588)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.f, %bb.b ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsc_NtCs2bHstFFhpHt_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.c, ptr %i.a, align 8
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @7259, i64 noundef 8, ptr noalias noundef nonnull readonly captures(address, read_provenance) @5109, i64 noundef 5, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3742, ptr noalias noundef nonnull readonly captures(address, read_provenance) @7260, i64 noundef 16, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7257, ptr noalias noundef nonnull readonly captures(address, read_provenance) @7261, i64 noundef 23, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7258)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsc_NtCs2bHstFFhpHt_17datafusion_common9join_typeNtB5_14JoinConstraintNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !428, !noundef !416
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %. = select i1 %i.b, i64 5, i64 2
  %.1 = select i1 %i.b, ptr @4739, ptr @4354
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.1, i64 noundef %.)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RNvXsc_NtCs5QD3CVEMyfH_10serde_json2deINtB5_13VariantAccessNtNtB7_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de13VariantAccess12unit_variantCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246047)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246048)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !246049, !noalias !246050, !noundef !416 ; 4 uses
  %.promoted.i.i = load i64, ptr %i.e, align 8, !alias.scope !246051, !noalias !246052 ; 2 uses
  %i.h = icmp ult i64 %.promoted.i.i, %i.g
  br i1 %i.h, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !246049, !noalias !246050, !nonnull !416, !noundef !416 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.k = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.n, %bb.c ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246053)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246054)
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !noalias !246055, !noundef !416
  switch i8 %i.m, label %bb.k [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 110, label %bb.d
  ], !prof !440

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.n = add i64 %i.k, 1                          ; 3 uses
  store i64 %i.n, ptr %i.e, align 8, !alias.scope !246056, !noalias !246052
  %exitcond.not.i.i = icmp eq i64 %i.n, %i.g
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.b

.loopexit.i:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !246047
  store i64 5, ptr %i.d, align 8, !noalias !246047
  %i.o = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !246047
  br label %_RINvXs5_NtCs5QD3CVEMyfH_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de12Deserializer16deserialize_unitNtNtB1j_5impls11UnitVisitorECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.d:                                             ; preds = %bb.b
  %i.p = add i64 %i.k, 1                          ; 4 uses
  store i64 %i.p, ptr %i.e, align 8, !alias.scope !246057
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246058)
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 %i.g) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246059)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246060)
  %exitcond.not.i10.not.i = icmp ult i64 %i.p, %i.g
  br i1 %exitcond.not.i10.not.i, label %bb.e, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !noalias !246061, !noundef !416
  %i.s = add i64 %i.k, 2                          ; 3 uses
  store i64 %i.s, ptr %i.e, align 8, !alias.scope !246062, !noalias !246063
  %.not.i.i = icmp eq i8 %i.r, 117
  br i1 %.not.i.i, label %bb.f, label %bb.j, !prof !696

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246064)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246065)
  %exitcond.not.i10.1.i = icmp eq i64 %i.s, %umax.i.i
  br i1 %exitcond.not.i10.1.i, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !noalias !246066, !noundef !416
  %i.v = add i64 %i.k, 3                          ; 3 uses
  store i64 %i.v, ptr %i.e, align 8, !alias.scope !246067, !noalias !246063
  %.not.i.1.i = icmp eq i8 %i.u, 108
  br i1 %.not.i.1.i, label %bb.h, label %bb.j, !prof !696

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246068)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246069)
  %exitcond.not.i10.2.i = icmp eq i64 %i.v, %umax.i.i
  br i1 %exitcond.not.i10.2.i, label %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !noalias !246070, !noundef !416
  %i.y = add i64 %i.k, 4
  store i64 %i.y, ptr %i.e, align 8, !alias.scope !246071, !noalias !246063
  %.not.i.2.i = icmp eq i8 %i.x, 108
  br i1 %.not.i.2.i, label %_RINvXs5_NtCs5QD3CVEMyfH_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de12Deserializer16deserialize_unitNtNtB1j_5impls11UnitVisitorECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.j, !prof !696

_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i: ; preds = %bb.h, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !246072
  store i64 5, ptr %i.c, align 8, !noalias !246072
  %i.z = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c), !noalias !246073
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !246072
  br label %_RINvXs5_NtCs5QD3CVEMyfH_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de12Deserializer16deserialize_unitNtNtB1j_5impls11UnitVisitorECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !246072
  store i64 9, ptr %i.b, align 8, !noalias !246072
  %i.aa = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !246073
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !246072
  br label %_RINvXs5_NtCs5QD3CVEMyfH_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de12Deserializer16deserialize_unitNtNtB1j_5impls11UnitVisitorECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.k:                                             ; preds = %bb.b
  %i.ab = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5QD3CVEMyfH_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE17peek_invalid_typeCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @593)
  %i.ac = call fastcc noundef nonnull align 8 ptr @_RINvMs0_NtCs5QD3CVEMyfH_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0)
  br label %_RINvXs5_NtCs5QD3CVEMyfH_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de12Deserializer16deserialize_unitNtNtB1j_5impls11UnitVisitorECsfR8GmIBoxTX_21lance_namespace_impls.exit

_RINvXs5_NtCs5QD3CVEMyfH_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCskpEw9nXJLNc_10serde_core2de12Deserializer16deserialize_unitNtNtB1j_5impls11UnitVisitorECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %.loopexit.i, %bb.i, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i, %bb.j, %bb.k
  %.sroa.0.2.i = phi ptr [ %i.o, %.loopexit.i ], [ %i.aa, %bb.j ], [ %i.ac, %bb.k ], [ %i.z, %_RNvXs8_NtCs5QD3CVEMyfH_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i ], [ null, %bb.i ]
  ret ptr %.sroa.0.2.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsc_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan9statementNtB5_21TransactionConclusionNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !428, !noundef !416
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %. = select i1 %i.b, i64 8, i64 6
  %.1 = select i1 %i.b, ptr @7265, ptr @7264
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.1, i64 noundef %.)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsc_NtNtCs40MM8ukkVQd_9sqlparser3ast8operatorNtB5_14BinaryOperatorNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load i64, ptr %0, align 8, !range !688, !noundef !416
  switch i64 %i.c, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.g
    i64 6, label %bb.h
    i64 7, label %bb.i
    i64 8, label %bb.j
    i64 9, label %bb.k
    i64 10, label %bb.l
    i64 11, label %bb.m
    i64 12, label %bb.n
    i64 13, label %bb.o
    i64 14, label %bb.p
    i64 15, label %bb.q
    i64 16, label %bb.r
    i64 17, label %bb.s
    i64 18, label %bb.t
    i64 19, label %bb.u
    i64 20, label %bb.v
    i64 21, label %bb.w
    i64 22, label %bb.x
    i64 23, label %bb.y
    i64 24, label %bb.z
    i64 25, label %bb.aa
    i64 26, label %bb.ab
    i64 27, label %bb.ac
    i64 28, label %bb.ad
    i64 29, label %bb.ae
    i64 30, label %bb.af
    i64 31, label %bb.ag
    i64 32, label %bb.ah
    i64 33, label %bb.ai
    i64 34, label %bb.aj
    i64 35, label %bb.ak
    i64 36, label %bb.al
    i64 37, label %bb.am
    i64 38, label %bb.an
    i64 39, label %bb.ao
    i64 40, label %bb.ap
    i64 41, label %bb.aq
    i64 42, label %bb.ar
    i64 43, label %bb.as
    i64 44, label %bb.at
    i64 45, label %bb.au
    i64 46, label %bb.av
    i64 47, label %bb.aw
    i64 48, label %bb.ax
    i64 49, label %bb.ay
    i64 50, label %bb.az
    i64 51, label %bb.ba
    i64 52, label %bb.bb
    i64 53, label %bb.bc
    i64 54, label %bb.bd
    i64 55, label %bb.be
    i64 56, label %bb.bf
    i64 57, label %bb.bg
    i64 58, label %bb.bh
    i64 59, label %bb.bi
    i64 60, label %bb.bj
    i64 61, label %bb.bk
    i64 62, label %bb.bl
    i64 63, label %bb.bm
    i64 64, label %bb.bn
    i64 65, label %bb.bo
    i64 66, label %bb.bp
    i64 67, label %bb.bq
    i64 68, label %bb.br
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3626, i64 noundef 4)
  br label %bb.bs

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3627, i64 noundef 5)
  br label %bb.bs

bb.d:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3628, i64 noundef 8)
  br label %bb.bs

bb.e:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3629, i64 noundef 6)
  br label %bb.bs

bb.f:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3630, i64 noundef 6)
  br label %bb.bs

bb.g:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3648, i64 noundef 12)
  br label %bb.bs

bb.h:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3624, i64 noundef 2)
  br label %bb.bs

bb.i:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3622, i64 noundef 2)
  br label %bb.bs

bb.j:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3625, i64 noundef 4)
  br label %bb.bs

bb.k:                                             ; preds = %bb.a
  %i.m = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3623, i64 noundef 4)
  br label %bb.bs

bb.l:                                             ; preds = %bb.a
  %i.n = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @7266, i64 noundef 9)
  br label %bb.bs
end_hunk_12
