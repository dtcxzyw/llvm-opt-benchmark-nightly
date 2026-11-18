Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_wasm_chat_template.candle_wasm_chat_template.41e4d5002cfb9e58-cgu.07?download=true
inline.NumInlined: 196
inline.NumDeleted: 124
begin_hunk_0_@_RNvXsZ_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core3fmt5Write10write_char:bb.a
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128            ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i32 %1, 65536
  %..i = select i1 %i.f, i64 3, i64 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0.i = phi i64 [ 2, %bb.b ], [ %..i, %bb.c ], [ 1, %bb.a ] ; 3 uses
  %i.g = load i64, ptr %0, align 8, !range !5, !alias.scope !279, !noundef !4
  %i.h = sub nsw i64 %i.g, %i.b
  %i.i = icmp ugt i64 %.sroa.0.0.i, %i.h
  br i1 %i.i, label %bb.e, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs5EKAXG1naGG_25candle_wasm_chat_template.exit.i, !prof !6

bb.e:                                             ; preds = %bb.d
  tail call void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %.sroa.0.0.i, i64 noundef 1, i64 noundef 1)
  br label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs5EKAXG1naGG_25candle_wasm_chat_template.exit.i

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs5EKAXG1naGG_25candle_wasm_chat_template.exit.i: ; preds = %bb.e, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !278, !nonnull !4, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.b ; 10 uses
  br i1 %i.d, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs5EKAXG1naGG_25candle_wasm_chat_template.exit.i
  %i.m = icmp samesign ult i32 %1, 2048
  %i.n = trunc i32 %1 to i8
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128                ; 3 uses
  %i.q = lshr i32 %1, 6
  %i.r = trunc i32 %i.q to i8                     ; 2 uses
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128                ; 2 uses
  %i.u = lshr i32 %1, 12
  %i.v = trunc i32 %i.u to i8                     ; 2 uses
  %i.w = and i8 %i.v, 63
  %i.x = or disjoint i8 %i.w, -128
  %i.y = lshr i32 %1, 18
  %i.z = trunc nuw nsw i32 %i.y to i8
  %i.aa = or disjoint i8 %i.z, -16
  br i1 %i.m, label %bb.h, label %bb.i

bb.g:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs5EKAXG1naGG_25candle_wasm_chat_template.exit.i
  %i.ab = trunc nuw nsw i32 %1 to i8
  store i8 %i.ab, ptr %i.l, align 1
  br label %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push.exit

bb.h:                                             ; preds = %bb.f
  %i.ac = or disjoint i8 %i.r, -64
  store i8 %i.ac, ptr %i.l, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 %i.p, ptr %i.ad, align 1
  br label %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push.exit

bb.i:                                             ; preds = %bb.f
  %i.ae = icmp samesign ult i32 %1, 65536
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.af = or disjoint i8 %i.v, -32
  store i8 %i.af, ptr %i.l, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 %i.t, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store i8 %i.p, ptr %i.ah, align 1
  br label %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push.exit

bb.k:                                             ; preds = %bb.i
  store i8 %i.aa, ptr %i.l, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 %i.x, ptr %i.ai, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store i8 %i.t, ptr %i.aj, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 3
  store i8 %i.p, ptr %i.ak, align 1
  br label %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push.exit

_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.g, %bb.h, %bb.j, %bb.k
  %i.al = add nuw i64 %.sroa.0.0.i, %i.b
  store i64 %i.al, ptr %i.a, align 8, !alias.scope !278
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core3fmt5Write9write_str(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !287, !noundef !4 ; 5 uses
  %i.c = load i64, ptr %0, align 8, !range !5, !alias.scope !287, !noundef !4
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs5EKAXG1naGG_25candle_wasm_chat_template.exit.thread.i.i, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs5EKAXG1naGG_25candle_wasm_chat_template.exit.i.i, !prof !6

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs5EKAXG1naGG_25candle_wasm_chat_template.exit.thread.i.i: ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %2, i64 noundef 1, i64 noundef 1), !noalias !288
  %i.f = load i64, ptr %i.a, align 8, !alias.scope !289, !noundef !4 ; 2 uses
  %i.g = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.g)
  br label %bb.b

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs5EKAXG1naGG_25candle_wasm_chat_template.exit.i.i: ; preds = %bb.a
  %i.h = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.h)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs5EKAXG1naGG_25candle_wasm_chat_template.exit.i.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs5EKAXG1naGG_25candle_wasm_chat_template.exit.thread.i.i
  %i.i = phi i64 [ %i.f, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs5EKAXG1naGG_25candle_wasm_chat_template.exit.thread.i.i ], [ %i.b, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs5EKAXG1naGG_25candle_wasm_chat_template.exit.i.i ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !289, !nonnull !4, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !289
  br label %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String8push_str.exit: ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs5EKAXG1naGG_25candle_wasm_chat_template.exit.i.i, %bb.b
  %i.m = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs5EKAXG1naGG_25candle_wasm_chat_template.exit.i.i ]
  %i.n = add i64 %i.m, %2
  store i64 %i.n, ptr %i.a, align 8, !alias.scope !289
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCseZbltJ5Yqe_10serde_core2deINtNvXsh_NtB4_5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtB4_11Deserialize11deserialize10VecVisitorNtCs5EKAXG1naGG_25candle_wasm_chat_template13NamedTemplateENtB4_8Expected3fmtB2a_(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 10)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCseZbltJ5Yqe_10serde_core2deINtNvXsh_NtB4_5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtB4_11Deserialize11deserialize10VecVisitorNtCs5EKAXG1naGG_25candle_wasm_chat_template7MessageENtB4_8Expected3fmtB2a_(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 10)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCseZbltJ5Yqe_10serde_core2deNtNtB4_5impls13StringVisitorNtB4_8Expected3fmtCs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs4_NtNtCseZbltJ5Yqe_10serde_core2de5implsNtB5_13StringVisitorNtB7_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden { ptr, i64 } @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterReEENtNtNtB8_6traits8iterator8Iterator4nextCs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !alias.scope !292, !nonnull !4, !noundef !4 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !292, !nonnull !4, !noundef !4
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5EKAXG1naGG_25candle_wasm_chat_template.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %0, align 8, !alias.scope !292
  %i.f = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noundef !4
  br label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5EKAXG1naGG_25candle_wasm_chat_template.exit.thread

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5EKAXG1naGG_25candle_wasm_chat_template.exit.thread: ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i64 [ %i.h, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  %i.i = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.j = insertvalue { ptr, i64 } %i.i, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterReEENtNtNtB8_6traits8iterator8Iterator9size_hintCs5EKAXG1naGG_25candle_wasm_chat_template(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #3 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 4                   ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !295
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !295
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !295
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvXs_NvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator10advance_byINtNtBe_6option8IntoIterNtNtCs1fJj97VvEPD_9minijinja5value5ValueENtB4_13SpecAdvanceBy15spec_advance_byCs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %_RINvYINtNtCsf3Ta7LF998c_4core6option8IntoIterNtNtCs1fJj97VvEPD_9minijinja5value5ValueENtNtNtNtB8_4iter6traits8iterator8Iterator8try_foldINtNtNtB8_3num7nonzero7NonZerojENCNvXs_NvB1m_10advance_byB3_NtB2N_13SpecAdvanceBy15spec_advance_by0INtB6_6OptionB2a_EECs5EKAXG1naGG_25candle_wasm_chat_template.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !305)
  %.promoted.i = load i8, ptr %0, align 8, !alias.scope !306 ; 2 uses
  store i8 -1, ptr %0, align 8, !alias.scope !307
  %.not11.i = icmp eq i8 %.promoted.i, -1
  br i1 %.not11.i, label %_RINvYINtNtCsf3Ta7LF998c_4core6option8IntoIterNtNtCs1fJj97VvEPD_9minijinja5value5ValueENtNtNtNtB8_4iter6traits8iterator8Iterator8try_foldINtNtNtB8_3num7nonzero7NonZerojENCNvXs_NvB1m_10advance_byB3_NtB2N_13SpecAdvanceBy15spec_advance_by0INtB6_6OptionB2a_EECs5EKAXG1naGG_25candle_wasm_chat_template.exit, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %bb.b
  %.sroa.7.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !305
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.7.0..sroa_idx7.i, i64 23, i1 false)
  store i64 %1, ptr %i.a, align 8, !noalias !305
  store i8 %.promoted.i, ptr %i.b, align 8, !noalias !305
  %i.c = add i64 %1, -1                           ; 2 uses
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value5ValueECs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b), !noalias !305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !305
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvYINtNtCsf3Ta7LF998c_4core6option8IntoIterNtNtCs1fJj97VvEPD_9minijinja5value5ValueENtNtNtNtB8_4iter6traits8iterator8Iterator8try_foldINtNtNtB8_3num7nonzero7NonZerojENCNvXs_NvB1m_10advance_byB3_NtB2N_13SpecAdvanceBy15spec_advance_by0INtB6_6OptionB2a_EECs5EKAXG1naGG_25candle_wasm_chat_template.exit, label %._crit_edge.split.us.i

._crit_edge.split.us.i:                           ; preds = %.lr.ph.split.us.i
  store i8 -1, ptr %0, align 8, !alias.scope !308
  br label %_RINvYINtNtCsf3Ta7LF998c_4core6option8IntoIterNtNtCs1fJj97VvEPD_9minijinja5value5ValueENtNtNtNtB8_4iter6traits8iterator8Iterator8try_foldINtNtNtB8_3num7nonzero7NonZerojENCNvXs_NvB1m_10advance_byB3_NtB2N_13SpecAdvanceBy15spec_advance_by0INtB6_6OptionB2a_EECs5EKAXG1naGG_25candle_wasm_chat_template.exit

_RINvYINtNtCsf3Ta7LF998c_4core6option8IntoIterNtNtCs1fJj97VvEPD_9minijinja5value5ValueENtNtNtNtB8_4iter6traits8iterator8Iterator8try_foldINtNtNtB8_3num7nonzero7NonZerojENCNvXs_NvB1m_10advance_byB3_NtB2N_13SpecAdvanceBy15spec_advance_by0INtB6_6OptionB2a_EECs5EKAXG1naGG_25candle_wasm_chat_template.exit: ; preds = %.lr.ph.split.us.i, %._crit_edge.split.us.i, %bb.b, %bb.a
  %.sroa.0.1 = phi i64 [ 0, %bb.a ], [ 0, %.lr.ph.split.us.i ], [ %i.c, %._crit_edge.split.us.i ], [ %1, %bb.b ]
  ret i64 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvXs_NvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator10advance_byINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtBa_12double_ended19DoubleEndedIteratorp4ItemNtNtCs1fJj97VvEPD_9minijinja5value5ValueNtNtBe_6marker4SendNtB3f_4SyncEL_ENtB4_13SpecAdvanceBy15spec_advance_byCs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val6 = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %.val6, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !4, !noalias !313, !nonnull !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void %i.e(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %.val) #23, !noalias !314, !inline_history !312
  %i.f = load i8, ptr %i.b, align 8, !range !15, !noundef !4
  %.not2.i = icmp eq i8 %i.f, -1
  br i1 %.not2.i, label %_RINvYINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIteratorp4ItemNtNtCs1fJj97VvEPD_9minijinja5value5ValueNtNtBL_6marker4SendNtB2B_4SyncEL_ENtNtBH_8iterator8Iterator8try_foldINtNtNtBL_3num7nonzero7NonZerojENCNvXs_NvB37_10advance_byB3_NtB4i_13SpecAdvanceBy15spec_advance_by0INtNtBL_6option6OptionB3F_EECs5EKAXG1naGG_25candle_wasm_chat_template.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i64 %1, ptr %i.a, align 8
  %i.h = add i64 %1, -1                           ; 2 uses
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value5ValueECs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RINvYINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIteratorp4ItemNtNtCs1fJj97VvEPD_9minijinja5value5ValueNtNtBL_6marker4SendNtB2B_4SyncEL_ENtNtBH_8iterator8Iterator8try_foldINtNtNtBL_3num7nonzero7NonZerojENCNvXs_NvB37_10advance_byB3_NtB4i_13SpecAdvanceBy15spec_advance_by0INtNtBL_6option6OptionB3F_EECs5EKAXG1naGG_25candle_wasm_chat_template.exit, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i64 %i.l, ptr %i.a, align 8
  %i.j = add i64 %i.l, -1                         ; 2 uses
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value5ValueECs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RINvYINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIteratorp4ItemNtNtCs1fJj97VvEPD_9minijinja5value5ValueNtNtBL_6marker4SendNtB2B_4SyncEL_ENtNtBH_8iterator8Iterator8try_foldINtNtNtBL_3num7nonzero7NonZerojENCNvXs_NvB37_10advance_byB3_NtB4i_13SpecAdvanceBy15spec_advance_by0INtNtBL_6option6OptionB3F_EECs5EKAXG1naGG_25candle_wasm_chat_template.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i, %bb.c
  %i.l = phi i64 [ %i.j, %bb.c ], [ %i.h, %.lr.ph.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void %i.e(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %.val) #23, !noalias !314, !inline_history !312
  %i.m = load i8, ptr %i.b, align 8, !range !15, !noundef !4
  %.not.i = icmp eq i8 %i.m, -1
  br i1 %.not.i, label %_RINvYINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIteratorp4ItemNtNtCs1fJj97VvEPD_9minijinja5value5ValueNtNtBL_6marker4SendNtB2B_4SyncEL_ENtNtBH_8iterator8Iterator8try_foldINtNtNtBL_3num7nonzero7NonZerojENCNvXs_NvB37_10advance_byB3_NtB4i_13SpecAdvanceBy15spec_advance_by0INtNtBL_6option6OptionB3F_EECs5EKAXG1naGG_25candle_wasm_chat_template.exit, label %bb.c

_RINvYINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIteratorp4ItemNtNtCs1fJj97VvEPD_9minijinja5value5ValueNtNtBL_6marker4SendNtB2B_4SyncEL_ENtNtBH_8iterator8Iterator8try_foldINtNtNtBL_3num7nonzero7NonZerojENCNvXs_NvB37_10advance_byB3_NtB4i_13SpecAdvanceBy15spec_advance_by0INtNtBL_6option6OptionB3F_EECs5EKAXG1naGG_25candle_wasm_chat_template.exit: ; preds = %.lr.ph, %bb.c, %.lr.ph.i, %bb.b
  %.sroa.0.0.i = phi i64 [ %1, %bb.b ], [ 0, %.lr.ph.i ], [ 0, %bb.c ], [ %i.l, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_RINvYINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIteratorp4ItemNtNtCs1fJj97VvEPD_9minijinja5value5ValueNtNtBL_6marker4SendNtB2B_4SyncEL_ENtNtBH_8iterator8Iterator8try_foldINtNtNtBL_3num7nonzero7NonZerojENCNvXs_NvB37_10advance_byB3_NtB4i_13SpecAdvanceBy15spec_advance_by0INtNtBL_6option6OptionB3F_EECs5EKAXG1naGG_25candle_wasm_chat_template.exit
  %.sroa.0.1 = phi i64 [ %.sroa.0.0.i, %_RINvYINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIteratorp4ItemNtNtCs1fJj97VvEPD_9minijinja5value5ValueNtNtBL_6marker4SendNtB2B_4SyncEL_ENtNtBH_8iterator8Iterator8try_foldINtNtNtBL_3num7nonzero7NonZerojENCNvXs_NvB37_10advance_byB3_NtB4i_13SpecAdvanceBy15spec_advance_by0INtNtBL_6option6OptionB3F_EECs5EKAXG1naGG_25candle_wasm_chat_template.exit ], [ 0, %bb.a ]
  ret i64 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvXs_NvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator10advance_byINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtBa_12double_ended19DoubleEndedIteratorp4ItemTNtNtCs1fJj97VvEPD_9minijinja5value5ValueB2A_ENtNtBe_6marker4SendNtB3l_4SyncEL_ENtB4_13SpecAdvanceBy15spec_advance_byCs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val6 = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %.val6, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !4, !noalias !319, !nonnull !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void %i.e(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.b, ptr noundef nonnull %.val) #23, !noalias !320, !inline_history !318
  %i.f = load i8, ptr %i.b, align 8, !range !15, !noundef !4
  %.not3.i = icmp eq i8 %i.f, -1
  br i1 %.not3.i, label %_RINvYINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIteratorp4ItemTNtNtCs1fJj97VvEPD_9minijinja5value5ValueB1W_ENtNtBL_6marker4SendNtB2H_4SyncEL_ENtNtBH_8iterator8Iterator8try_foldINtNtNtBL_3num7nonzero7NonZerojENCNvXs_NvB3d_10advance_byB3_NtB4o_13SpecAdvanceBy15spec_advance_by0INtNtBL_6option6OptionB3L_EECs5EKAXG1naGG_25candle_wasm_chat_template.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i
  %.sroa.01.04.i = phi i64 [ %1, %.lr.ph.i ], [ %i.k, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  store i64 %.sroa.01.04.i, ptr %i.a, align 8
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value5ValueECs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %_RNCNvXs_NvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator10advance_byINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtBc_12double_ended19DoubleEndedIteratorp4ItemTNtNtCs1fJj97VvEPD_9minijinja5value5ValueB2C_ENtNtBg_6marker4SendNtB3n_4SyncEL_ENtB6_13SpecAdvanceBy15spec_advance_by0Cs5EKAXG1naGG_25candle_wasm_chat_template.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value5ValueECs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #18
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.i

_RNCNvXs_NvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator10advance_byINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtBc_12double_ended19DoubleEndedIteratorp4ItemTNtNtCs1fJj97VvEPD_9minijinja5value5ValueB2C_ENtNtBg_6marker4SendNtB3n_4SyncEL_ENtB6_13SpecAdvanceBy15spec_advance_by0Cs5EKAXG1naGG_25candle_wasm_chat_template.exit.i: ; preds = %bb.c
  %i.k = add i64 %.sroa.01.04.i, -1               ; 3 uses
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value5ValueECs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RINvYINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIteratorp4ItemTNtNtCs1fJj97VvEPD_9minijinja5value5ValueB1W_ENtNtBL_6marker4SendNtB2H_4SyncEL_ENtNtBH_8iterator8Iterator8try_foldINtNtNtBL_3num7nonzero7NonZerojENCNvXs_NvB3d_10advance_byB3_NtB4o_13SpecAdvanceBy15spec_advance_by0INtNtBL_6option6OptionB3L_EECs5EKAXG1naGG_25candle_wasm_chat_template.exit, label %bb.g

bb.g:                                             ; preds = %_RNCNvXs_NvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator10advance_byINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtBc_12double_ended19DoubleEndedIteratorp4ItemTNtNtCs1fJj97VvEPD_9minijinja5value5ValueB2C_ENtNtBg_6marker4SendNtB3n_4SyncEL_ENtB6_13SpecAdvanceBy15spec_advance_by0Cs5EKAXG1naGG_25candle_wasm_chat_template.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void %i.e(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.b, ptr noundef nonnull %.val) #23, !noalias !320, !inline_history !318
  %i.m = load i8, ptr %i.b, align 8, !range !15, !noundef !4
  %.not.i = icmp eq i8 %i.m, -1
  br i1 %.not.i, label %_RINvYINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIteratorp4ItemTNtNtCs1fJj97VvEPD_9minijinja5value5ValueB1W_ENtNtBL_6marker4SendNtB2H_4SyncEL_ENtNtBH_8iterator8Iterator8try_foldINtNtNtBL_3num7nonzero7NonZerojENCNvXs_NvB3d_10advance_byB3_NtB4o_13SpecAdvanceBy15spec_advance_by0INtNtBL_6option6OptionB3L_EECs5EKAXG1naGG_25candle_wasm_chat_template.exit, label %bb.c

_RINvYINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIteratorp4ItemTNtNtCs1fJj97VvEPD_9minijinja5value5ValueB1W_ENtNtBL_6marker4SendNtB2H_4SyncEL_ENtNtBH_8iterator8Iterator8try_foldINtNtNtBL_3num7nonzero7NonZerojENCNvXs_NvB3d_10advance_byB3_NtB4o_13SpecAdvanceBy15spec_advance_by0INtNtBL_6option6OptionB3L_EECs5EKAXG1naGG_25candle_wasm_chat_template.exit: ; preds = %_RNCNvXs_NvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator10advance_byINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtBc_12double_ended19DoubleEndedIteratorp4ItemTNtNtCs1fJj97VvEPD_9minijinja5value5ValueB2C_ENtNtBg_6marker4SendNtB3n_4SyncEL_ENtB6_13SpecAdvanceBy15spec_advance_by0Cs5EKAXG1naGG_25candle_wasm_chat_template.exit.i, %bb.g, %bb.b
  %.sroa.0.0.i = phi i64 [ %1, %bb.b ], [ 0, %_RNCNvXs_NvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator10advance_byINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtBc_12double_ended19DoubleEndedIteratorp4ItemTNtNtCs1fJj97VvEPD_9minijinja5value5ValueB2C_ENtNtBg_6marker4SendNtB3n_4SyncEL_ENtB6_13SpecAdvanceBy15spec_advance_by0Cs5EKAXG1naGG_25candle_wasm_chat_template.exit.i ], [ %i.k, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_RINvYINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIteratorp4ItemTNtNtCs1fJj97VvEPD_9minijinja5value5ValueB1W_ENtNtBL_6marker4SendNtB2H_4SyncEL_ENtNtBH_8iterator8Iterator8try_foldINtNtNtBL_3num7nonzero7NonZerojENCNvXs_NvB3d_10advance_byB3_NtB4o_13SpecAdvanceBy15spec_advance_by0INtNtBL_6option6OptionB3L_EECs5EKAXG1naGG_25candle_wasm_chat_template.exit
  %.sroa.0.1 = phi i64 [ %.sroa.0.0.i, %_RINvYINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIteratorp4ItemTNtNtCs1fJj97VvEPD_9minijinja5value5ValueB1W_ENtNtBL_6marker4SendNtB2H_4SyncEL_ENtNtBH_8iterator8Iterator8try_foldINtNtNtBL_3num7nonzero7NonZerojENCNvXs_NvB3d_10advance_byB3_NtB4o_13SpecAdvanceBy15spec_advance_by0INtNtBL_6option6OptionB3L_EECs5EKAXG1naGG_25candle_wasm_chat_template.exit ], [ 0, %bb.a ]
  ret i64 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtCs5EKAXG1naGG_25candle_wasm_chat_template13NamedTemplateENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBH_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtCs5EKAXG1naGG_25candle_wasm_chat_template13NamedTemplateEBE_.exit, label %.lr.ph

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs5EKAXG1naGG_25candle_wasm_chat_template13NamedTemplateEBD_.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5EKAXG1naGG_25candle_wasm_chat_template.exit.i.i
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtCs5EKAXG1naGG_25candle_wasm_chat_template13NamedTemplateEBE_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs5EKAXG1naGG_25candle_wasm_chat_template13NamedTemplateEBD_.exit.i
  %.sroa.0.0.i13 = phi i64 [ %i.h, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs5EKAXG1naGG_25candle_wasm_chat_template13NamedTemplateEBD_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %.sroa.0.0.i13 ; 3 uses
  %i.h = add nuw nsw i64 %.sroa.0.0.i13, 1        ; 4 uses
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5EKAXG1naGG_25candle_wasm_chat_template.exit.i.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body.i unwind label %bb.c

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5EKAXG1naGG_25candle_wasm_chat_template.exit.i.i: ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs5EKAXG1naGG_25candle_wasm_chat_template13NamedTemplateEBD_.exit.i unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.d:                                             ; preds = %.lr.ph15
  %i.m = add nuw nsw i64 %.sroa.0.1.i14, 1        ; 2 uses
  %i.n = icmp eq i64 %i.m, %i.d
  br i1 %i.n, label %._crit_edge, label %.lr.ph15

bb.e:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5EKAXG1naGG_25candle_wasm_chat_template.exit.i.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.o, %bb.e ], [ %i.i, %bb.b ]
  %i.p = icmp eq i64 %i.h, %i.d
  br i1 %i.p, label %._crit_edge, label %.lr.ph15

.lr.ph15:                                         ; preds = %.body.i, %bb.d
  %.sroa.0.1.i14 = phi i64 [ %i.m, %bb.d ], [ %i.h, %.body.i ] ; 2 uses
  %i.q = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %.sroa.0.1.i14
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs5EKAXG1naGG_25candle_wasm_chat_template13NamedTemplateEBD_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.q) #18
          to label %bb.d unwind label %bb.f

._crit_edge:                                      ; preds = %bb.d, %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

bb.f:                                             ; preds = %.lr.ph15
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtCs5EKAXG1naGG_25candle_wasm_chat_template13NamedTemplateEBE_.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs5EKAXG1naGG_25candle_wasm_chat_template13NamedTemplateEBD_.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtCs5EKAXG1naGG_25candle_wasm_chat_template7MessageENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBH_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtCs5EKAXG1naGG_25candle_wasm_chat_template7MessageEBE_.exit, label %.lr.ph

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs5EKAXG1naGG_25candle_wasm_chat_template7MessageEBD_.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5EKAXG1naGG_25candle_wasm_chat_template.exit.i.i
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtCs5EKAXG1naGG_25candle_wasm_chat_template7MessageEBE_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs5EKAXG1naGG_25candle_wasm_chat_template7MessageEBD_.exit.i
  %.sroa.0.0.i13 = phi i64 [ %i.h, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs5EKAXG1naGG_25candle_wasm_chat_template7MessageEBD_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %.sroa.0.0.i13 ; 3 uses
  %i.h = add nuw nsw i64 %.sroa.0.0.i13, 1        ; 4 uses
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5EKAXG1naGG_25candle_wasm_chat_template.exit.i.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body.i unwind label %bb.c

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5EKAXG1naGG_25candle_wasm_chat_template.exit.i.i: ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs5EKAXG1naGG_25candle_wasm_chat_template7MessageEBD_.exit.i unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.d:                                             ; preds = %.lr.ph15
  %i.m = add nuw nsw i64 %.sroa.0.1.i14, 1        ; 2 uses
  %i.n = icmp eq i64 %i.m, %i.d
  br i1 %i.n, label %._crit_edge, label %.lr.ph15

bb.e:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5EKAXG1naGG_25candle_wasm_chat_template.exit.i.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.o, %bb.e ], [ %i.i, %bb.b ]
  %i.p = icmp eq i64 %i.h, %i.d
  br i1 %i.p, label %._crit_edge, label %.lr.ph15

.lr.ph15:                                         ; preds = %.body.i, %bb.d
  %.sroa.0.1.i14 = phi i64 [ %i.m, %bb.d ], [ %i.h, %.body.i ] ; 2 uses
  %i.q = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %.sroa.0.1.i14
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs5EKAXG1naGG_25candle_wasm_chat_template7MessageEBD_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.q) #18
          to label %bb.d unwind label %bb.f

._crit_edge:                                      ; preds = %bb.d, %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

bb.f:                                             ; preds = %.lr.ph15
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtCs5EKAXG1naGG_25candle_wasm_chat_template7MessageEBE_.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs5EKAXG1naGG_25candle_wasm_chat_template7MessageEBD_.exit.i, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtCsej0D7ZFyXq_12wasm_bindgen7JsValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !323)
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtCsej0D7ZFyXq_12wasm_bindgen7JsValueECs5EKAXG1naGG_25candle_wasm_chat_template.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsej0D7ZFyXq_12wasm_bindgen7JsValueECs5EKAXG1naGG_25candle_wasm_chat_template.exit.i
  %.sroa.0.09.i = phi i64 [ %i.g, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsej0D7ZFyXq_12wasm_bindgen7JsValueECs5EKAXG1naGG_25candle_wasm_chat_template.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.sroa.0.09.i
  %i.g = add nuw nsw i64 %.sroa.0.09.i, 1         ; 2 uses
  %.val7.i = load i32, ptr %i.f, align 4, !alias.scope !323, !noundef !4 ; 2 uses
  %i.h = icmp ugt i32 %.val7.i, 1027
  br i1 %i.h, label %bb.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsej0D7ZFyXq_12wasm_bindgen7JsValueECs5EKAXG1naGG_25candle_wasm_chat_template.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  tail call void @_RNvCsej0D7ZFyXq_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %.val7.i) #19, !noalias !323
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsej0D7ZFyXq_12wasm_bindgen7JsValueECs5EKAXG1naGG_25candle_wasm_chat_template.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsej0D7ZFyXq_12wasm_bindgen7JsValueECs5EKAXG1naGG_25candle_wasm_chat_template.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.i = icmp eq i64 %i.g, %i.d
  br i1 %i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtCsej0D7ZFyXq_12wasm_bindgen7JsValueECs5EKAXG1naGG_25candle_wasm_chat_template.exit, label %.lr.ph.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtCsej0D7ZFyXq_12wasm_bindgen7JsValueECs5EKAXG1naGG_25candle_wasm_chat_template.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCsej0D7ZFyXq_12wasm_bindgen7JsValueECs5EKAXG1naGG_25candle_wasm_chat_template.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs1fJj97VvEPD_9minijinja5value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCs1fJj97VvEPD_9minijinja5value5ValueECs5EKAXG1naGG_25candle_wasm_chat_template.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCs1fJj97VvEPD_9minijinja5value5ValueECs5EKAXG1naGG_25candle_wasm_chat_template.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add nuw nsw i64 %.sroa.0.0.i1, 1         ; 4 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value5ValueECs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph3
  %i.i = add nuw nsw i64 %.sroa.0.1.i2, 1         ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %._crit_edge, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i2 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.1.i2
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value5ValueECs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #18
          to label %bb.c unwind label %bb.e

._crit_edge:                                      ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCs1fJj97VvEPD_9minijinja5value5ValueECs5EKAXG1naGG_25candle_wasm_chat_template.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs1fJj97VvEPD_9minijinja2vm7context5FrameENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCs1fJj97VvEPD_9minijinja2vm7context5FrameECs5EKAXG1naGG_25candle_wasm_chat_template.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCs1fJj97VvEPD_9minijinja2vm7context5FrameECs5EKAXG1naGG_25candle_wasm_chat_template.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [80 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add nuw nsw i64 %.sroa.0.0.i1, 1         ; 4 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs1fJj97VvEPD_9minijinja2vm7context5FrameECs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef align 8 dereferenceable(80) %i.g)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph3
  %i.i = add nuw nsw i64 %.sroa.0.1.i2, 1         ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %._crit_edge, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i2 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [80 x i8], ptr %i.b, i64 %.sroa.0.1.i2
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs1fJj97VvEPD_9minijinja2vm7context5FrameECs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef align 8 dereferenceable(80) %i.m) #18
          to label %bb.c unwind label %bb.e

._crit_edge:                                      ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCs1fJj97VvEPD_9minijinja2vm7context5FrameECs5EKAXG1naGG_25candle_wasm_chat_template.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentECs5EKAXG1naGG_25candle_wasm_chat_template.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentECs5EKAXG1naGG_25candle_wasm_chat_template.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add nuw i64 %.sroa.0.0.i1, 1             ; 4 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentECs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef align 8 dereferenceable(32) %i.g)
          to label %bb.b unwind label %bb.d, !inline_history !324

bb.c:                                             ; preds = %.lr.ph3
  %i.i = add nuw i64 %.sroa.0.1.i2, 1             ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %._crit_edge, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i2 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.0.1.i2
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentECs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef align 8 dereferenceable(32) %i.m) #18
          to label %bb.c unwind label %bb.e, !inline_history !324

._crit_edge:                                      ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17, !inline_history !324
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentECs5EKAXG1naGG_25candle_wasm_chat_template.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecRNtNtNtCs1fJj97VvEPD_9minijinja8compiler12instructions12InstructionsENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentBG_EENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSTNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentBD_EECs5EKAXG1naGG_25candle_wasm_chat_template.exit, label %.lr.ph

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentBC_EECs5EKAXG1naGG_25candle_wasm_chat_template.exit: ; preds = %bb.c
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSTNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentBD_EECs5EKAXG1naGG_25candle_wasm_chat_template.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentBC_EECs5EKAXG1naGG_25candle_wasm_chat_template.exit
  %.sroa.0.0.i13 = phi i64 [ %i.h, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentBC_EECs5EKAXG1naGG_25candle_wasm_chat_template.exit ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %.sroa.0.0.i13 ; 3 uses
  %i.h = add nuw i64 %.sroa.0.0.i13, 1            ; 4 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentECs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.g) #24
          to label %bb.c unwind label %bb.b, !inline_history !325

bb.b:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentECs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef align 8 dereferenceable(32) %i.j) #25
          to label %.body unwind label %bb.d, !inline_history !325

bb.c:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentECs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef align 8 dereferenceable(32) %i.k) #24
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentBC_EECs5EKAXG1naGG_25candle_wasm_chat_template.exit unwind label %bb.f, !inline_history !325

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17, !inline_history !325
  unreachable

bb.e:                                             ; preds = %.lr.ph15
  %i.m = add nuw i64 %.sroa.0.1.i14, 1            ; 2 uses
  %i.n = icmp eq i64 %i.m, %i.d
  br i1 %i.n, label %._crit_edge, label %.lr.ph15

bb.f:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.o, %bb.f ], [ %i.i, %bb.b ]
  %i.p = icmp eq i64 %i.h, %i.d
  br i1 %i.p, label %._crit_edge, label %.lr.ph15

.lr.ph15:                                         ; preds = %.body, %bb.e
  %.sroa.0.1.i14 = phi i64 [ %i.m, %bb.e ], [ %i.h, %.body ] ; 2 uses
  %i.q = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %.sroa.0.1.i14
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentBC_EECs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef align 8 dereferenceable(64) %i.q) #18
          to label %bb.e unwind label %bb.g, !inline_history !326

._crit_edge:                                      ; preds = %bb.e, %.body
  resume { ptr, i32 } %eh.lpad-body

bb.g:                                             ; preds = %.lr.ph15
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17, !inline_history !326
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSTNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentBD_EECs5EKAXG1naGG_25candle_wasm_chat_template.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentBC_EECs5EKAXG1naGG_25candle_wasm_chat_template.exit, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTReNtNtCs1fJj97VvEPD_9minijinja5value5ValueEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSTReNtNtCs1fJj97VvEPD_9minijinja5value5ValueEECs5EKAXG1naGG_25candle_wasm_chat_template.exit, label %.lr.ph

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTReNtNtCs1fJj97VvEPD_9minijinja5value5ValueEECs5EKAXG1naGG_25candle_wasm_chat_template.exit.i: ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSTReNtNtCs1fJj97VvEPD_9minijinja5value5ValueEECs5EKAXG1naGG_25candle_wasm_chat_template.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTReNtNtCs1fJj97VvEPD_9minijinja5value5ValueEECs5EKAXG1naGG_25candle_wasm_chat_template.exit.i
  %.sroa.0.0.i1 = phi i64 [ %i.h, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTReNtNtCs1fJj97VvEPD_9minijinja5value5ValueEECs5EKAXG1naGG_25candle_wasm_chat_template.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add nuw nsw i64 %.sroa.0.0.i1, 1         ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value5ValueECs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTReNtNtCs1fJj97VvEPD_9minijinja5value5ValueEECs5EKAXG1naGG_25candle_wasm_chat_template.exit.i unwind label %bb.b

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTReNtNtCs1fJj97VvEPD_9minijinja5value5ValueEECs5EKAXG1naGG_25candle_wasm_chat_template.exit7.i: ; preds = %.lr.ph3
  %i.j = add nuw nsw i64 %.sroa.0.1.i2, 1         ; 2 uses
  %i.k = icmp eq i64 %i.j, %i.d
  br i1 %i.k, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTReNtNtCs1fJj97VvEPD_9minijinja5value5ValueEECs5EKAXG1naGG_25candle_wasm_chat_template.exit7.i._crit_edge, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = icmp eq i64 %i.h, %i.d
  br i1 %i.m, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTReNtNtCs1fJj97VvEPD_9minijinja5value5ValueEECs5EKAXG1naGG_25candle_wasm_chat_template.exit7.i._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.b, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTReNtNtCs1fJj97VvEPD_9minijinja5value5ValueEECs5EKAXG1naGG_25candle_wasm_chat_template.exit7.i
  %.sroa.0.1.i2 = phi i64 [ %i.j, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTReNtNtCs1fJj97VvEPD_9minijinja5value5ValueEECs5EKAXG1naGG_25candle_wasm_chat_template.exit7.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.n = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %.sroa.0.1.i2
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value5ValueECs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTReNtNtCs1fJj97VvEPD_9minijinja5value5ValueEECs5EKAXG1naGG_25candle_wasm_chat_template.exit7.i unwind label %bb.c

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTReNtNtCs1fJj97VvEPD_9minijinja5value5ValueEECs5EKAXG1naGG_25candle_wasm_chat_template.exit7.i._crit_edge: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTReNtNtCs1fJj97VvEPD_9minijinja5value5ValueEECs5EKAXG1naGG_25candle_wasm_chat_template.exit7.i, %bb.b
  resume { ptr, i32 } %i.l

bb.c:                                             ; preds = %.lr.ph3
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSTReNtNtCs1fJj97VvEPD_9minijinja5value5ValueEECs5EKAXG1naGG_25candle_wasm_chat_template.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTReNtNtCs1fJj97VvEPD_9minijinja5value5ValueEECs5EKAXG1naGG_25candle_wasm_chat_template.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvYNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsf3Ta7LF998c_4core3fmt5Write9write_fmtCs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 {
_RNvXs_NvNtNtCsf3Ta7LF998c_4core3fmt5Write9write_fmtQNtNtCsgCecv3eZDcN_5alloc6string6StringNtB4_12SpecWriteFmt14spec_write_fmtCs5EKAXG1naGG_25candle_wasm_chat_template.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCsf3Ta7LF998c_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @3, ptr noundef nonnull %1, ptr noundef nonnull %2), !inline_history !327
  ret i1 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtCs5EKAXG1naGG_25candle_wasm_chat_template13NamedTemplateENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBO_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtCs5EKAXG1naGG_25candle_wasm_chat_template7MessageENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBO_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtCsej0D7ZFyXq_12wasm_bindgen7JsValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentBN_EENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtCs5EKAXG1naGG_25candle_wasm_chat_template7MessageENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBY_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapReNtNtCs1fJj97VvEPD_9minijinja5value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NvNtNtCs1fJj97VvEPD_9minijinja5value6object1__NtB7_9DynObjectNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5EKAXG1naGG_25candle_wasm_chat_template(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsf3Ta7LF998c_4core3str8converts9from_utf8(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvXs6_NtCsaPlfBUY5LAj_10serde_json5errorNtB5_5ErrorNtNtCseZbltJ5Yqe_10serde_core2de5Error13invalid_value(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs5EKAXG1naGG_25candle_wasm_chat_template(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvMs3_NtCsaPlfBUY5LAj_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef align 8 dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXsD_NtNtNtCsiOg657KYfD4_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer18deserialize_stringNtNtB22_5impls13StringVisitorECs5EKAXG1naGG_25candle_wasm_chat_template(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs5_NtCsaPlfBUY5LAj_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer18deserialize_stringNtNtB1j_5impls13StringVisitorECs5EKAXG1naGG_25candle_wasm_chat_template(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvCs5EKAXG1naGG_25candle_wasm_chat_templates1_1__NtB5_13StringOrTokenNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeQINtNtCsaPlfBUY5LAj_10serde_json2de12DeserializerNtNtB2c_4read7StrReadEEB5_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvCs5EKAXG1naGG_25candle_wasm_chat_templates2_1__NtB5_18ChatTemplateConfigNtNtCseZbltJ5Yqe_10serde_core2de11Deserialize11deserializeQINtNtCsaPlfBUY5LAj_10serde_json2de12DeserializerNtNtB2h_4read7StrReadEEB5_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs5_NtCsaPlfBUY5LAj_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer15deserialize_seqINtNvXsh_NtB1j_5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtB1j_11Deserialize11deserialize10VecVisitorNtCs5EKAXG1naGG_25candle_wasm_chat_template7MessageEEB3W_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs7_NtCsaPlfBUY5LAj_10serde_json2deINtB6_9SeqAccessNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de9SeqAccess17next_element_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtCs5EKAXG1naGG_25candle_wasm_chat_template7MessageEEB2V_(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtCs5EKAXG1naGG_25candle_wasm_chat_template7MessageENCINvNtNtCsej0D7ZFyXq_12wasm_bindgen7convert5impls24js_value_vector_into_abiB1L_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3W_8for_each4callNtB2K_7JsValueNCINvMsk_B12_INtB12_3VecB4Z_E14extend_trustedBN_E0E0EB1N_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXsH_NtNtNtCsiOg657KYfD4_5serde7private2de7contentINtB6_18SeqRefDeserializerNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorENtNtCseZbltJ5Yqe_10serde_core2de9SeqAccess17next_element_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtCs5EKAXG1naGG_25candle_wasm_chat_template13NamedTemplateEEB3F_(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #4

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef align 8 dereferenceable(16), i64 noundef, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtCs5EKAXG1naGG_25candle_wasm_chat_template13NamedTemplateE8grow_oneBO_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #13

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtCs5EKAXG1naGG_25candle_wasm_chat_template7MessageE8grow_oneBO_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #6

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #14

; Function Attrs: cold nonlazybind uwtable
declare hidden void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #11

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvNtCsgCecv3eZDcN_5alloc4sync11data_offseteECs5EKAXG1naGG_25candle_wasm_chat_template(ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs2_NtCs1fJj97VvEPD_9minijinja5valueNtB5_8SmallStr7try_new(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 1 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMsq_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcShE15copy_from_sliceCs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtB7_3vec3VechEE9drop_slowCs1fJj97VvEPD_9minijinja(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #13

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs1fJj97VvEPD_9minijinja5error5ErrorE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #13

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs1fJj97VvEPD_9minijinja2vm11loop_object4LoopE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #13

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs1fJj97VvEPD_9minijinja2vm14closure_object7ClosureE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #13

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs1fJj97VvEPD_9minijinja(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvXs4_NtCs1fJj97VvEPD_9minijinja5errorNtB5_5ErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtB5_9ErrorKindE4from(i8 noundef range(i8 0, 20)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsej0D7ZFyXq_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs4_NtNtCseZbltJ5Yqe_10serde_core2de5implsNtB5_13StringVisitorNtB7_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCsf3Ta7LF998c_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCsf3Ta7LF998c_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsr_NtCsf3Ta7LF998c_4core3fmtSTReNtNtCs1fJj97VvEPD_9minijinja5value5ValueENtB5_5Debug3fmtCs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 230584300921369396), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtCsf3Ta7LF998c_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsC_NtNtCs1fJj97VvEPD_9minijinja5value8argtypesNtNtCsgCecv3eZDcN_5alloc6string6StringNtB5_7ArgType20from_state_and_value(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsh0WfaQiVYm0_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { cold noreturn nounwind }
attributes #18 = { cold }
attributes #19 = { nounwind }
attributes #20 = { noinline }
attributes #21 = { noreturn }
attributes #22 = { noinline noreturn }
end_hunk_0
begin_hunk_1_@llvm.experimental.noalias.scope.decl
!101 = !{!76}
!102 = !{!78}
!103 = !{!80}
!104 = !{!82}
!105 = !{!82, !80, !78, !76}
!106 = !{!84}
!107 = !{!88, !86, !84}
!108 = !{!90}
!109 = !{!94, !92, !90}
!110 = distinct !{!110, i1 true, !"_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentBG_EENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5EKAXG1naGG_25candle_wasm_chat_template"}
!111 = distinct !{!111, !110, !"_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentBG_EENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5EKAXG1naGG_25candle_wasm_chat_template: argument 0"}
!112 = distinct !{ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentBC_EECs5EKAXG1naGG_25candle_wasm_chat_template, ptr @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentBG_EENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5EKAXG1naGG_25candle_wasm_chat_template, null, null}
!113 = distinct !{ptr @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentBG_EENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5EKAXG1naGG_25candle_wasm_chat_template, null, null}
!114 = distinct !{null}
!115 = distinct !{!115, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentEECs5EKAXG1naGG_25candle_wasm_chat_template"}
!116 = distinct !{!116, !115, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentEECs5EKAXG1naGG_25candle_wasm_chat_template: argument 0"}
!117 = distinct !{null}
!118 = distinct !{!118, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentEECs5EKAXG1naGG_25candle_wasm_chat_template"}
!119 = distinct !{!119, !118, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentEECs5EKAXG1naGG_25candle_wasm_chat_template: argument 0"}
!120 = distinct !{!120, i1 true, !"_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5EKAXG1naGG_25candle_wasm_chat_template"}
!121 = distinct !{!121, !120, !"_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5EKAXG1naGG_25candle_wasm_chat_template: argument 0"}
!122 = distinct !{ptr @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5EKAXG1naGG_25candle_wasm_chat_template, null, null}
!123 = distinct !{null}
!124 = !{i8 0, i8 22}
!125 = !{!111}
!126 = !{!116}
!127 = !{!119}
!128 = !{!121}
!129 = distinct !{!129, i1 true, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtCs5EKAXG1naGG_25candle_wasm_chat_template13NamedTemplateE8push_mutBH_"}
!130 = distinct !{!130, !129, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtCs5EKAXG1naGG_25candle_wasm_chat_template13NamedTemplateE8push_mutBH_: argument 0"}
!131 = distinct !{!131, !129, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtCs5EKAXG1naGG_25candle_wasm_chat_template13NamedTemplateE8push_mutBH_: argument 1"}
!132 = !{!130}
!133 = !{!131}
!134 = distinct !{!134, i1 true, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtCs5EKAXG1naGG_25candle_wasm_chat_template7MessageE8push_mutBH_"}
!135 = distinct !{!135, !134, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtCs5EKAXG1naGG_25candle_wasm_chat_template7MessageE8push_mutBH_: argument 0"}
!136 = distinct !{!136, !134, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtCs5EKAXG1naGG_25candle_wasm_chat_template7MessageE8push_mutBH_: argument 1"}
!137 = !{!135}
!138 = !{!136}
!139 = distinct !{!139, i1 true, !"_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCINvNtNtBS_8adapters6copied13copy_try_foldBJ_B1A_INtNtBa_6option6OptionB1A_ENCINvNtB2d_3map12map_try_foldBJ_NtNtCs1fJj97VvEPD_9minijinja5value5ValueB1A_B2U_NvYB3R_INtNtBa_7convert4FromBJ_E4fromNCNvXs_NvBM_10advance_byINtB3q_3MapINtB2b_6CopiedB3_EB4D_ENtB5l_13SpecAdvanceBy15spec_advance_by0E0E0B2U_ECs5EKAXG1naGG_25candle_wasm_chat_template"}
!140 = distinct !{!140, !139, !"_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCINvNtNtBS_8adapters6copied13copy_try_foldBJ_B1A_INtNtBa_6option6OptionB1A_ENCINvNtB2d_3map12map_try_foldBJ_NtNtCs1fJj97VvEPD_9minijinja5value5ValueB1A_B2U_NvYB3R_INtNtBa_7convert4FromBJ_E4fromNCNvXs_NvBM_10advance_byINtB3q_3MapINtB2b_6CopiedB3_EB4D_ENtB5l_13SpecAdvanceBy15spec_advance_by0E0E0B2U_ECs5EKAXG1naGG_25candle_wasm_chat_template: argument 0"}
!141 = distinct !{!141, i1 true, !"_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5EKAXG1naGG_25candle_wasm_chat_template"}
!142 = distinct !{!142, !141, !"_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5EKAXG1naGG_25candle_wasm_chat_template: argument 0"}
!143 = distinct !{!143, i1 true, !"_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldReNtNtCs1fJj97VvEPD_9minijinja5value5ValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB1F_ENvYB11_INtNtBa_7convert4FromBZ_E4fromNCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_3MapINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterBZ_EEB2C_ENtB3k_13SpecAdvanceBy15spec_advance_by0E0Cs5EKAXG1naGG_25candle_wasm_chat_template"}
!144 = distinct !{!144, !143, !"_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldReNtNtCs1fJj97VvEPD_9minijinja5value5ValueINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB1F_ENvYB11_INtNtBa_7convert4FromBZ_E4fromNCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_3MapINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterBZ_EEB2C_ENtB3k_13SpecAdvanceBy15spec_advance_by0E0Cs5EKAXG1naGG_25candle_wasm_chat_template: argument 0"}
!145 = distinct !{!145, i1 true, !"_RNvYNvYNtNtCs1fJj97VvEPD_9minijinja5value5ValueINtNtCsf3Ta7LF998c_4core7convert4FromReE4fromINtNtNtBO_3ops8function5FnMutTB1k_EE8call_mutCs5EKAXG1naGG_25candle_wasm_chat_template"}
!146 = distinct !{!146, !145, !"_RNvYNvYNtNtCs1fJj97VvEPD_9minijinja5value5ValueINtNtCsf3Ta7LF998c_4core7convert4FromReE4fromINtNtNtBO_3ops8function5FnMutTB1k_EE8call_mutCs5EKAXG1naGG_25candle_wasm_chat_template: argument 1"}
!147 = distinct !{!147, !145, !"_RNvYNvYNtNtCs1fJj97VvEPD_9minijinja5value5ValueINtNtCsf3Ta7LF998c_4core7convert4FromReE4fromINtNtNtBO_3ops8function5FnMutTB1k_EE8call_mutCs5EKAXG1naGG_25candle_wasm_chat_template: argument 0"}
!148 = distinct !{!148, i1 true, !"_RNvXs3_NtNtCs1fJj97VvEPD_9minijinja5value8argtypesNtB7_5ValueINtNtCsf3Ta7LF998c_4core7convert4FromReE4from"}
!149 = distinct !{!149, !148, !"_RNvXs3_NtNtCs1fJj97VvEPD_9minijinja5value8argtypesNtB7_5ValueINtNtCsf3Ta7LF998c_4core7convert4FromReE4from: argument 1"}
!150 = distinct !{!150, !148, !"_RNvXs3_NtNtCs1fJj97VvEPD_9minijinja5value8argtypesNtB7_5ValueINtNtCsf3Ta7LF998c_4core7convert4FromReE4from: argument 0"}
!151 = !{!140}
!152 = !{!142, !140}
!153 = !{!144, !140}
!154 = !{!150, !149, !147, !146, !144, !140}
!155 = !{!150, !147, !140}
!156 = !{!149, !146, !144, !140}
!157 = distinct !{!157, i1 true, !"_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtCs5EKAXG1naGG_25candle_wasm_chat_template7MessageENCINvNtNtCsej0D7ZFyXq_12wasm_bindgen7convert5impls24js_value_vector_into_abiB1F_E0ENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecNtB2E_7JsValueEEB1H_"}
!158 = distinct !{!158, !157, !"_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtCs5EKAXG1naGG_25candle_wasm_chat_template7MessageENCINvNtNtCsej0D7ZFyXq_12wasm_bindgen7convert5impls24js_value_vector_into_abiB1F_E0ENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecNtB2E_7JsValueEEB1H_: argument 1"}
!159 = distinct !{!159, !157, !"_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtCs5EKAXG1naGG_25candle_wasm_chat_template7MessageENCINvNtNtCsej0D7ZFyXq_12wasm_bindgen7convert5impls24js_value_vector_into_abiB1F_E0ENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecNtB2E_7JsValueEEB1H_: argument 0"}
!160 = distinct !{!160, i1 true, !"_RINvXsf_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtCsej0D7ZFyXq_12wasm_bindgen7JsValueEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtB1p_8adapters3map3MapINtNtB6_9into_iter8IntoIterNtCs5EKAXG1naGG_25candle_wasm_chat_template7MessageENCINvNtNtBI_7convert5impls24js_value_vector_into_abiB3p_E0EEB3r_"}
!161 = distinct !{!161, !160, !"_RINvXsf_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtCsej0D7ZFyXq_12wasm_bindgen7JsValueEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtB1p_8adapters3map3MapINtNtB6_9into_iter8IntoIterNtCs5EKAXG1naGG_25candle_wasm_chat_template7MessageENCINvNtNtBI_7convert5impls24js_value_vector_into_abiB3p_E0EEB3r_: argument 1"}
!162 = distinct !{!162, !160, !"_RINvXsf_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtCsej0D7ZFyXq_12wasm_bindgen7JsValueEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtB1p_8adapters3map3MapINtNtB6_9into_iter8IntoIterNtCs5EKAXG1naGG_25candle_wasm_chat_template7MessageENCINvNtNtBI_7convert5impls24js_value_vector_into_abiB3p_E0EEB3r_: argument 0"}
!163 = distinct !{!163, i1 true, !"_RNvXNtNtNtCsf3Ta7LF998c_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtCs5EKAXG1naGG_25candle_wasm_chat_template7MessageENCINvNtNtCsej0D7ZFyXq_12wasm_bindgen7convert5impls24js_value_vector_into_abiB20_E0ENtB2_12IntoIterator9into_iterB22_"}
!164 = distinct !{!164, !163, !"_RNvXNtNtNtCsf3Ta7LF998c_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtCs5EKAXG1naGG_25candle_wasm_chat_template7MessageENCINvNtNtCsej0D7ZFyXq_12wasm_bindgen7convert5impls24js_value_vector_into_abiB20_E0ENtB2_12IntoIterator9into_iterB22_: argument 1"}
!165 = distinct !{!165, !163, !"_RNvXNtNtNtCsf3Ta7LF998c_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtCs5EKAXG1naGG_25candle_wasm_chat_template7MessageENCINvNtNtCsej0D7ZFyXq_12wasm_bindgen7convert5impls24js_value_vector_into_abiB20_E0ENtB2_12IntoIterator9into_iterB22_: argument 0"}
!166 = distinct !{!166, i1 true, !"_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec16in_place_collectINtB6_3VecNtCsej0D7ZFyXq_12wasm_bindgen7JsValueEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtCs5EKAXG1naGG_25candle_wasm_chat_template7MessageENCINvNtNtB10_7convert5impls24js_value_vector_into_abiB3u_E0EE9from_iterB3w_"}
!167 = distinct !{!167, !166, !"_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec16in_place_collectINtB6_3VecNtCsej0D7ZFyXq_12wasm_bindgen7JsValueEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtCs5EKAXG1naGG_25candle_wasm_chat_template7MessageENCINvNtNtB10_7convert5impls24js_value_vector_into_abiB3u_E0EE9from_iterB3w_: argument 1"}
!168 = distinct !{!168, i1 true, !"_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtCsej0D7ZFyXq_12wasm_bindgen7JsValueEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtCs5EKAXG1naGG_25candle_wasm_chat_template7MessageENCINvNtNtB15_7convert5impls24js_value_vector_into_abiB3o_E0EE9from_iterB3q_"}
!169 = distinct !{!169, !168, !"_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtCsej0D7ZFyXq_12wasm_bindgen7JsValueEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtCs5EKAXG1naGG_25candle_wasm_chat_template7MessageENCINvNtNtB15_7convert5impls24js_value_vector_into_abiB3o_E0EE9from_iterB3q_: argument 1"}
!170 = distinct !{!170, !166, !"_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec16in_place_collectINtB6_3VecNtCsej0D7ZFyXq_12wasm_bindgen7JsValueEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtCs5EKAXG1naGG_25candle_wasm_chat_template7MessageENCINvNtNtB10_7convert5impls24js_value_vector_into_abiB3u_E0EE9from_iterB3w_: argument 0"}
!171 = distinct !{!171, !168, !"_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtCsej0D7ZFyXq_12wasm_bindgen7JsValueEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtCs5EKAXG1naGG_25candle_wasm_chat_template7MessageENCINvNtNtB15_7convert5impls24js_value_vector_into_abiB3o_E0EE9from_iterB3q_: argument 0"}
!172 = distinct !{!172, i1 true, !"_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB6_3VecNtCsej0D7ZFyXq_12wasm_bindgen7JsValueEINtB4_10SpecExtendBT_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtCs5EKAXG1naGG_25candle_wasm_chat_template7MessageENCINvNtNtBV_7convert5impls24js_value_vector_into_abiB35_E0EE11spec_extendB37_"}
!173 = distinct !{!173, !172, !"_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB6_3VecNtCsej0D7ZFyXq_12wasm_bindgen7JsValueEINtB4_10SpecExtendBT_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtCs5EKAXG1naGG_25candle_wasm_chat_template7MessageENCINvNtNtBV_7convert5impls24js_value_vector_into_abiB35_E0EE11spec_extendB37_: argument 0"}
!174 = distinct !{!174, !172, !"_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB6_3VecNtCsej0D7ZFyXq_12wasm_bindgen7JsValueEINtB4_10SpecExtendBT_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtCs5EKAXG1naGG_25candle_wasm_chat_template7MessageENCINvNtNtBV_7convert5impls24js_value_vector_into_abiB35_E0EE11spec_extendB37_: argument 1"}
!175 = distinct !{!175, i1 true, !"_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtCsej0D7ZFyXq_12wasm_bindgen7JsValueE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtCs5EKAXG1naGG_25candle_wasm_chat_template7MessageENCINvNtNtBI_7convert5impls24js_value_vector_into_abiB2N_E0EEB2P_"}
!176 = distinct !{!176, !175, !"_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtCsej0D7ZFyXq_12wasm_bindgen7JsValueE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtCs5EKAXG1naGG_25candle_wasm_chat_template7MessageENCINvNtNtBI_7convert5impls24js_value_vector_into_abiB2N_E0EEB2P_: argument 0"}
!177 = distinct !{!177, !175, !"_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecNtCsej0D7ZFyXq_12wasm_bindgen7JsValueE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtCs5EKAXG1naGG_25candle_wasm_chat_template7MessageENCINvNtNtBI_7convert5impls24js_value_vector_into_abiB2N_E0EEB2P_: argument 1"}
!178 = distinct !{!178, i1 true, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtCsej0D7ZFyXq_12wasm_bindgen7JsValueE16into_boxed_sliceCs5EKAXG1naGG_25candle_wasm_chat_template"}
!179 = distinct !{!179, !178, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtCsej0D7ZFyXq_12wasm_bindgen7JsValueE16into_boxed_sliceCs5EKAXG1naGG_25candle_wasm_chat_template: argument 0"}
!180 = !{!162, !161, !159, !158}
!181 = !{!165, !164}
!182 = !{!162, !159}
!183 = !{!167}
!184 = !{!169}
!185 = !{!171, !169, !170, !167, !162, !161, !159, !158}
!186 = !{!169, !167}
!187 = !{!173}
!188 = !{!174}
!189 = !{!176}
!190 = !{!177}
!191 = !{!177, !174}
!192 = !{!177, !174, !171, !169, !170, !167, !162, !161, !159, !158}
!193 = !{!176, !173}
!194 = !{!176, !177, !173, !174, !171, !169, !170, !167, !162, !161, !159, !158}
!195 = !{!171, !170, !162, !161, !159, !158}
!196 = !{!169, !167, !161, !158}
!197 = !{!179}
!198 = distinct !{!198, i1 true, !"_RINvXs5_NtCsaPlfBUY5LAj_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer18deserialize_optionINtNtB1j_5impls13OptionVisitorNtCs5EKAXG1naGG_25candle_wasm_chat_template13StringOrTokenEEB2R_"}
!199 = distinct !{!199, !198, !"_RINvXs5_NtCsaPlfBUY5LAj_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer18deserialize_optionINtNtB1j_5impls13OptionVisitorNtCs5EKAXG1naGG_25candle_wasm_chat_template13StringOrTokenEEB2R_: argument 0"}
!200 = distinct !{!200, !198, !"_RINvXs5_NtCsaPlfBUY5LAj_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer18deserialize_optionINtNtB1j_5impls13OptionVisitorNtCs5EKAXG1naGG_25candle_wasm_chat_template13StringOrTokenEEB2R_: argument 1"}
!201 = distinct !{!201, i1 true, !"_RINvXsd_NtNtCseZbltJ5Yqe_10serde_core2de5implsINtB6_13OptionVisitorNtCs5EKAXG1naGG_25candle_wasm_chat_template13StringOrTokenENtB8_7Visitor10visit_someQINtNtCsaPlfBUY5LAj_10serde_json2de12DeserializerNtNtB2v_4read7StrReadEEB15_"}
!202 = distinct !{!202, !201, !"_RINvXsd_NtNtCseZbltJ5Yqe_10serde_core2de5implsINtB6_13OptionVisitorNtCs5EKAXG1naGG_25candle_wasm_chat_template13StringOrTokenENtB8_7Visitor10visit_someQINtNtCsaPlfBUY5LAj_10serde_json2de12DeserializerNtNtB2v_4read7StrReadEEB15_: argument 0"}
!203 = distinct !{!203, !201, !"_RINvXsd_NtNtCseZbltJ5Yqe_10serde_core2de5implsINtB6_13OptionVisitorNtCs5EKAXG1naGG_25candle_wasm_chat_template13StringOrTokenENtB8_7Visitor10visit_someQINtNtCsaPlfBUY5LAj_10serde_json2de12DeserializerNtNtB2v_4read7StrReadEEB15_: argument 1"}
!204 = distinct !{!204, i1 true, !"_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read7discard"}
!205 = distinct !{!205, !204, !"_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read7discard: argument 0"}
!206 = distinct !{!206, i1 true, !"_RINvXsd_NtNtCseZbltJ5Yqe_10serde_core2de5implsINtB6_13OptionVisitorNtCs5EKAXG1naGG_25candle_wasm_chat_template13StringOrTokenENtB8_7Visitor10visit_noneNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEB15_"}
!207 = distinct !{!207, !206, !"_RINvXsd_NtNtCseZbltJ5Yqe_10serde_core2de5implsINtB6_13OptionVisitorNtCs5EKAXG1naGG_25candle_wasm_chat_template13StringOrTokenENtB8_7Visitor10visit_noneNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEB15_: argument 0"}
!208 = !{!199}
!209 = !{!200}
!210 = !{!199, !200}
!211 = !{!202}
!212 = !{!202, !203, !199, !200}
!213 = !{!202, !199}
!214 = !{!203, !200}
!215 = !{!205, !200}
!216 = !{!207, !199}
!217 = distinct !{!217, i1 true, !"_RINvXs5_NtCsaPlfBUY5LAj_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer18deserialize_optionINtNtB1j_5impls13OptionVisitorNtCs5EKAXG1naGG_25candle_wasm_chat_template18ChatTemplateConfigEEB2R_"}
!218 = distinct !{!218, !217, !"_RINvXs5_NtCsaPlfBUY5LAj_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer18deserialize_optionINtNtB1j_5impls13OptionVisitorNtCs5EKAXG1naGG_25candle_wasm_chat_template18ChatTemplateConfigEEB2R_: argument 0"}
!219 = distinct !{!219, !217, !"_RINvXs5_NtCsaPlfBUY5LAj_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCseZbltJ5Yqe_10serde_core2de12Deserializer18deserialize_optionINtNtB1j_5impls13OptionVisitorNtCs5EKAXG1naGG_25candle_wasm_chat_template18ChatTemplateConfigEEB2R_: argument 1"}
!220 = distinct !{!220, i1 true, !"_RINvXsd_NtNtCseZbltJ5Yqe_10serde_core2de5implsINtB6_13OptionVisitorNtCs5EKAXG1naGG_25candle_wasm_chat_template18ChatTemplateConfigENtB8_7Visitor10visit_someQINtNtCsaPlfBUY5LAj_10serde_json2de12DeserializerNtNtB2A_4read7StrReadEEB15_"}
!221 = distinct !{!221, !220, !"_RINvXsd_NtNtCseZbltJ5Yqe_10serde_core2de5implsINtB6_13OptionVisitorNtCs5EKAXG1naGG_25candle_wasm_chat_template18ChatTemplateConfigENtB8_7Visitor10visit_someQINtNtCsaPlfBUY5LAj_10serde_json2de12DeserializerNtNtB2A_4read7StrReadEEB15_: argument 0"}
!222 = distinct !{!222, !220, !"_RINvXsd_NtNtCseZbltJ5Yqe_10serde_core2de5implsINtB6_13OptionVisitorNtCs5EKAXG1naGG_25candle_wasm_chat_template18ChatTemplateConfigENtB8_7Visitor10visit_someQINtNtCsaPlfBUY5LAj_10serde_json2de12DeserializerNtNtB2A_4read7StrReadEEB15_: argument 1"}
!223 = distinct !{!223, i1 true, !"_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read7discard"}
!224 = distinct !{!224, !223, !"_RNvXs8_NtCsaPlfBUY5LAj_10serde_json4readNtB5_7StrReadNtB5_4Read7discard: argument 0"}
!225 = distinct !{!225, i1 true, !"_RINvXsd_NtNtCseZbltJ5Yqe_10serde_core2de5implsINtB6_13OptionVisitorNtCs5EKAXG1naGG_25candle_wasm_chat_template18ChatTemplateConfigENtB8_7Visitor10visit_noneNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEB15_"}
!226 = distinct !{!226, !225, !"_RINvXsd_NtNtCseZbltJ5Yqe_10serde_core2de5implsINtB6_13OptionVisitorNtCs5EKAXG1naGG_25candle_wasm_chat_template18ChatTemplateConfigENtB8_7Visitor10visit_noneNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorEB15_: argument 0"}
!227 = !{!218}
!228 = !{!219}
!229 = !{!218, !219}
!230 = !{!221}
!231 = !{!221, !222, !218, !219}
!232 = !{!221, !218}
!233 = !{!222, !219}
!234 = !{!224, !219}
!235 = !{!226, !218}
!236 = distinct !{!236, i1 true, !"_RNvXs2_NtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterhEE11spec_extendCs5EKAXG1naGG_25candle_wasm_chat_template"}
!237 = distinct !{!237, !236, !"_RNvXs2_NtNtCsgCecv3eZDcN_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterhEE11spec_extendCs5EKAXG1naGG_25candle_wasm_chat_template: argument 0"}
!238 = distinct !{!238, i1 true, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCs5EKAXG1naGG_25candle_wasm_chat_template"}
!239 = distinct !{!239, !238, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCs5EKAXG1naGG_25candle_wasm_chat_template: argument 0"}
!240 = distinct !{!240, i1 true, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs5EKAXG1naGG_25candle_wasm_chat_template"}
!241 = distinct !{!241, !240, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs5EKAXG1naGG_25candle_wasm_chat_template: argument 0"}
!242 = !{!241, !239, !237}
!243 = !{!239, !237}
!244 = distinct !{!244, i1 true, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtCs5EKAXG1naGG_25candle_wasm_chat_template7MessageE10try_removeBG_"}
!245 = distinct !{!245, !244, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtCs5EKAXG1naGG_25candle_wasm_chat_template7MessageE10try_removeBG_: argument 1"}
!246 = distinct !{!246, !244, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtCs5EKAXG1naGG_25candle_wasm_chat_template7MessageE10try_removeBG_: argument 0"}
!247 = !{!245}
!248 = !{!246, !245}
!249 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!250 = distinct !{!250, i1 true, !"_RNvXs1_NtCsf3Ta7LF998c_4core7convertNtNtCsgCecv3eZDcN_5alloc6string6StringINtB5_4IntoNtNtCs1fJj97VvEPD_9minijinja5value5ValueE4intoCs5EKAXG1naGG_25candle_wasm_chat_template"}
!251 = distinct !{!251, !250, !"_RNvXs1_NtCsf3Ta7LF998c_4core7convertNtNtCsgCecv3eZDcN_5alloc6string6StringINtB5_4IntoNtNtCs1fJj97VvEPD_9minijinja5value5ValueE4intoCs5EKAXG1naGG_25candle_wasm_chat_template: argument 1"}
!252 = distinct !{!252, i1 true, !"_RNvXs5_NtNtCs1fJj97VvEPD_9minijinja5value8argtypesNtB7_5ValueINtNtCsf3Ta7LF998c_4core7convert4FromNtNtCsgCecv3eZDcN_5alloc6string6StringE4from"}
!253 = distinct !{!253, !252, !"_RNvXs5_NtNtCs1fJj97VvEPD_9minijinja5value8argtypesNtB7_5ValueINtNtCsf3Ta7LF998c_4core7convert4FromNtNtCsgCecv3eZDcN_5alloc6string6StringE4from: argument 1"}
!254 = distinct !{!254, !250, !"_RNvXs1_NtCsf3Ta7LF998c_4core7convertNtNtCsgCecv3eZDcN_5alloc6string6StringINtB5_4IntoNtNtCs1fJj97VvEPD_9minijinja5value5ValueE4intoCs5EKAXG1naGG_25candle_wasm_chat_template: argument 0"}
!255 = distinct !{!255, !252, !"_RNvXs5_NtNtCs1fJj97VvEPD_9minijinja5value8argtypesNtB7_5ValueINtNtCsf3Ta7LF998c_4core7convert4FromNtNtCsgCecv3eZDcN_5alloc6string6StringE4from: argument 0"}
!256 = distinct !{!256, i1 true, !"_RNvXs3_NtNtCs1fJj97VvEPD_9minijinja5value8argtypesNtB7_5ValueINtNtCsf3Ta7LF998c_4core7convert4FromReE4from"}
!257 = distinct !{!257, !256, !"_RNvXs3_NtNtCs1fJj97VvEPD_9minijinja5value8argtypesNtB7_5ValueINtNtCsf3Ta7LF998c_4core7convert4FromReE4from: argument 1"}
!258 = distinct !{!258, !256, !"_RNvXs3_NtNtCs1fJj97VvEPD_9minijinja5value8argtypesNtB7_5ValueINtNtCsf3Ta7LF998c_4core7convert4FromReE4from: argument 0"}
!259 = !{!251}
!260 = !{!253}
!261 = !{!253, !251}
!262 = !{!258, !257, !255, !253, !254, !251}
!263 = !{!255, !253, !254, !251}
!264 = !{!257, !253, !251}
!265 = !{!254, !251}
!266 = !{!254}
!267 = !{!255, !254}
!268 = distinct !{!268, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECs5EKAXG1naGG_25candle_wasm_chat_template"}
!269 = distinct !{!269, !268, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECs5EKAXG1naGG_25candle_wasm_chat_template: argument 0"}
!270 = distinct !{!270, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECs5EKAXG1naGG_25candle_wasm_chat_template"}
!271 = distinct !{!271, !270, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECs5EKAXG1naGG_25candle_wasm_chat_template: argument 0"}
!272 = !{!269}
!273 = !{!271}
!274 = distinct !{!274, i1 true, !"_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push"}
!275 = distinct !{!275, !274, !"_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push: argument 0"}
!276 = distinct !{!276, i1 true, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs5EKAXG1naGG_25candle_wasm_chat_template"}
!277 = distinct !{!277, !276, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs5EKAXG1naGG_25candle_wasm_chat_template: argument 0"}
!278 = !{!275}
!279 = !{!277, !275}
!280 = distinct !{!280, i1 true, !"_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String8push_str"}
!281 = distinct !{!281, !280, !"_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String8push_str: argument 0"}
!282 = distinct !{!282, i1 true, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCs5EKAXG1naGG_25candle_wasm_chat_template"}
!283 = distinct !{!283, !282, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCs5EKAXG1naGG_25candle_wasm_chat_template: argument 0"}
!284 = distinct !{!284, i1 true, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs5EKAXG1naGG_25candle_wasm_chat_template"}
!285 = distinct !{!285, !284, !"_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs5EKAXG1naGG_25candle_wasm_chat_template: argument 0"}
!286 = distinct !{!286, !280, !"_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String8push_str: argument 1"}
!287 = !{!285, !283, !281}
!288 = !{!286}
!289 = !{!283, !281}
!290 = distinct !{!290, i1 true, !"_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5EKAXG1naGG_25candle_wasm_chat_template"}
!291 = distinct !{!291, !290, !"_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5EKAXG1naGG_25candle_wasm_chat_template: argument 0"}
!292 = !{!291}
!293 = distinct !{!293, i1 true, !"_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs5EKAXG1naGG_25candle_wasm_chat_template"}
!294 = distinct !{!294, !293, !"_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs5EKAXG1naGG_25candle_wasm_chat_template: argument 0"}
!295 = !{!294}
!296 = distinct !{!296, i1 true, !"_RINvYINtNtCsf3Ta7LF998c_4core6option8IntoIterNtNtCs1fJj97VvEPD_9minijinja5value5ValueENtNtNtNtB8_4iter6traits8iterator8Iterator8try_foldINtNtNtB8_3num7nonzero7NonZerojENCNvXs_NvB1m_10advance_byB3_NtB2N_13SpecAdvanceBy15spec_advance_by0INtB6_6OptionB2a_EECs5EKAXG1naGG_25candle_wasm_chat_template"}
!297 = distinct !{!297, !296, !"_RINvYINtNtCsf3Ta7LF998c_4core6option8IntoIterNtNtCs1fJj97VvEPD_9minijinja5value5ValueENtNtNtNtB8_4iter6traits8iterator8Iterator8try_foldINtNtNtB8_3num7nonzero7NonZerojENCNvXs_NvB1m_10advance_byB3_NtB2N_13SpecAdvanceBy15spec_advance_by0INtB6_6OptionB2a_EECs5EKAXG1naGG_25candle_wasm_chat_template: argument 0"}
!298 = distinct !{!298, i1 true, !"_RNvXsy_NtCsf3Ta7LF998c_4core6optionINtB5_8IntoIterNtNtCs1fJj97VvEPD_9minijinja5value5ValueENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCs5EKAXG1naGG_25candle_wasm_chat_template"}
!299 = distinct !{!299, !298, !"_RNvXsy_NtCsf3Ta7LF998c_4core6optionINtB5_8IntoIterNtNtCs1fJj97VvEPD_9minijinja5value5ValueENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCs5EKAXG1naGG_25candle_wasm_chat_template: argument 0"}
!300 = distinct !{!300, !298, !"_RNvXsy_NtCsf3Ta7LF998c_4core6optionINtB5_8IntoIterNtNtCs1fJj97VvEPD_9minijinja5value5ValueENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCs5EKAXG1naGG_25candle_wasm_chat_template: argument 1"}
!301 = distinct !{!301, i1 true, !"_RNvXsy_NtCsf3Ta7LF998c_4core6optionINtB5_8IntoIterNtNtCs1fJj97VvEPD_9minijinja5value5ValueENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCs5EKAXG1naGG_25candle_wasm_chat_template"}
!302 = distinct !{!302, !301, !"_RNvXsy_NtCsf3Ta7LF998c_4core6optionINtB5_8IntoIterNtNtCs1fJj97VvEPD_9minijinja5value5ValueENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCs5EKAXG1naGG_25candle_wasm_chat_template: argument 1:pre.rot"}
!303 = distinct !{!303, i1 true, !"_RNvXsy_NtCsf3Ta7LF998c_4core6optionINtB5_8IntoIterNtNtCs1fJj97VvEPD_9minijinja5value5ValueENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCs5EKAXG1naGG_25candle_wasm_chat_template"}
!304 = distinct !{!304, !303, !"_RNvXsy_NtCsf3Ta7LF998c_4core6optionINtB5_8IntoIterNtNtCs1fJj97VvEPD_9minijinja5value5ValueENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCs5EKAXG1naGG_25candle_wasm_chat_template: argument 1:h.rot"}
!305 = !{!297}
!306 = !{!300, !299, !297}
!307 = !{!302, !297}
!308 = !{!304, !297}
!309 = distinct !{!309, i1 true, !"_RNvXNtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIteratorp4ItemNtNtCs1fJj97VvEPD_9minijinja5value5ValueNtNtBU_6marker4SendNtB2K_4SyncEL_ENtNtBQ_8iterator8Iterator4nextCs5EKAXG1naGG_25candle_wasm_chat_template"}
!310 = distinct !{!310, !309, !"_RNvXNtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIteratorp4ItemNtNtCs1fJj97VvEPD_9minijinja5value5ValueNtNtBU_6marker4SendNtB2K_4SyncEL_ENtNtBQ_8iterator8Iterator4nextCs5EKAXG1naGG_25candle_wasm_chat_template: argument 1"}
!311 = distinct !{!311, !309, !"_RNvXNtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIteratorp4ItemNtNtCs1fJj97VvEPD_9minijinja5value5ValueNtNtBU_6marker4SendNtB2K_4SyncEL_ENtNtBQ_8iterator8Iterator4nextCs5EKAXG1naGG_25candle_wasm_chat_template: argument 0"}
!312 = distinct !{null, ptr @_RNvXNtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIteratorp4ItemNtNtCs1fJj97VvEPD_9minijinja5value5ValueNtNtBU_6marker4SendNtB2K_4SyncEL_ENtNtBQ_8iterator8Iterator4nextCs5EKAXG1naGG_25candle_wasm_chat_template}
!313 = !{!311, !310}
!314 = !{!310}
!315 = distinct !{!315, i1 true, !"_RNvXNtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIteratorp4ItemTNtNtCs1fJj97VvEPD_9minijinja5value5ValueB25_ENtNtBU_6marker4SendNtB2Q_4SyncEL_ENtNtBQ_8iterator8Iterator4nextCs5EKAXG1naGG_25candle_wasm_chat_template"}
!316 = distinct !{!316, !315, !"_RNvXNtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIteratorp4ItemTNtNtCs1fJj97VvEPD_9minijinja5value5ValueB25_ENtNtBU_6marker4SendNtB2Q_4SyncEL_ENtNtBQ_8iterator8Iterator4nextCs5EKAXG1naGG_25candle_wasm_chat_template: argument 1"}
!317 = distinct !{!317, !315, !"_RNvXNtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIteratorp4ItemTNtNtCs1fJj97VvEPD_9minijinja5value5ValueB25_ENtNtBU_6marker4SendNtB2Q_4SyncEL_ENtNtBQ_8iterator8Iterator4nextCs5EKAXG1naGG_25candle_wasm_chat_template: argument 0"}
!318 = distinct !{null, ptr @_RNvXNtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCsf3Ta7LF998c_4core4iter6traits12double_ended19DoubleEndedIteratorp4ItemTNtNtCs1fJj97VvEPD_9minijinja5value5ValueB25_ENtNtBU_6marker4SendNtB2Q_4SyncEL_ENtNtBQ_8iterator8Iterator4nextCs5EKAXG1naGG_25candle_wasm_chat_template}
!319 = !{!317, !316}
!320 = !{!316}
!321 = distinct !{!321, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtCsej0D7ZFyXq_12wasm_bindgen7JsValueECs5EKAXG1naGG_25candle_wasm_chat_template"}
!322 = distinct !{!322, !321, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtCsej0D7ZFyXq_12wasm_bindgen7JsValueECs5EKAXG1naGG_25candle_wasm_chat_template: argument 0"}
!323 = !{!322}
!324 = distinct !{null}
!325 = distinct !{ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCseZbltJ5Yqe_10serde_core7private7content7ContentBC_EECs5EKAXG1naGG_25candle_wasm_chat_template, null}
!326 = distinct !{null}
!327 = distinct !{null}
end_hunk_1
