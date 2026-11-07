Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/shadowsocks-rs/original/shadowsocks_rust-8c1b79cab299925f.shadowsocks_rust.79f42262b046863e-cgu.0?download=true
inline.NumInlined: 5128
inline.NumDeleted: 2462
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 54
begin_hunk_0_@_RINvXs0_NtCseuwcdgGPBeX_5json52deQNtB6_12DeserializerNtNtCs2d6kDCn68sB_10serde_core2de12Deserializer15deserialize_mapNtNtBR_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust:bb.a
  br label %bb.x

_RINvXNtNtCs2d6kDCn68sB_10serde_core2de11ignored_anyNtB3_10IgnoredAnyNtB5_7Visitor9visit_mapNtNtCseuwcdgGPBeX_5json52de9MapAccessECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %bb.s, %bb.l, %bb.c
  %i.aq = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer21expect_collection_end(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, i32 noundef 125, i8 noundef 7, i8 noundef 11) #30
  br label %bb.x

bb.x:                                             ; preds = %_RINvXNtNtCs2d6kDCn68sB_10serde_core2de11ignored_anyNtB3_10IgnoredAnyNtB5_7Visitor9visit_mapNtNtCseuwcdgGPBeX_5json52de9MapAccessECsat9HgdBb3qc_16shadowsocks_rust.exit, %bb.b, %bb.a, %_RINvXs2_NtCseuwcdgGPBeX_5json52deNtB6_9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtBM_11ignored_any10IgnoredAnyEECsat9HgdBb3qc_16shadowsocks_rust.exit.thread
  %.sroa.0.0 = phi ptr [ %i.e, %bb.b ], [ %i.b, %bb.a ], [ %i.ap, %_RINvXs2_NtCseuwcdgGPBeX_5json52deNtB6_9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtBM_11ignored_any10IgnoredAnyEECsat9HgdBb3qc_16shadowsocks_rust.exit.thread ], [ %i.aq, %_RINvXNtNtCs2d6kDCn68sB_10serde_core2de11ignored_anyNtB3_10IgnoredAnyNtB5_7Visitor9visit_mapNtNtCseuwcdgGPBeX_5json52de9MapAccessECsat9HgdBb3qc_16shadowsocks_rust.exit ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RINvXs0_NtCseuwcdgGPBeX_5json52deQNtB6_12DeserializerNtNtCs2d6kDCn68sB_10serde_core2de12Deserializer15deserialize_seqNtNtBR_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) #30 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.b = tail call { i64, ptr } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer11expect_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, i32 noundef 91, i8 noundef 0, i8 noundef 20) #30 ; 2 uses
  %i.c = extractvalue { i64, ptr } %i.b, 0
  %i.d = extractvalue { i64, ptr } %i.b, 1        ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = trunc nuw i64 %i.c to i1
  br i1 %i.f, label %bb.j, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9SeqAccessNtNtCs2d6kDCn68sB_10serde_core2de9SeqAccess12next_elementNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.preheader

_RINvYNtNtCseuwcdgGPBeX_5json52de9SeqAccessNtNtCs2d6kDCn68sB_10serde_core2de9SeqAccess12next_elementNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.preheader: ; preds = %bb.b
  %i.g = tail call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) #30, !noalias !4040, !inline_history !4037 ; 2 uses
  %.not.i.i.peel = icmp eq ptr %i.g, null
  br i1 %.not.i.i.peel, label %bb.c, label %_RINvXNtNtCs2d6kDCn68sB_10serde_core2de11ignored_anyNtB3_10IgnoredAnyNtB5_7Visitor9visit_seqNtNtCseuwcdgGPBeX_5json52de9SeqAccessECsat9HgdBb3qc_16shadowsocks_rust.exit.thread39

bb.c:                                             ; preds = %_RINvYNtNtCseuwcdgGPBeX_5json52de9SeqAccessNtNtCs2d6kDCn68sB_10serde_core2de9SeqAccess12next_elementNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.preheader
  %i.h = tail call { i64, i32 } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer4peek(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) #30, !noalias !4040, !inline_history !4037
  %i.i = extractvalue { i64, i32 } %i.h, 1
  %i.j = icmp eq i32 %i.i, 93
  br i1 %i.j, label %_RINvXNtNtCs2d6kDCn68sB_10serde_core2de11ignored_anyNtB3_10IgnoredAnyNtB5_7Visitor9visit_seqNtNtCseuwcdgGPBeX_5json52de9SeqAccessECsat9HgdBb3qc_16shadowsocks_rust.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call fastcc noundef align 8 ptr @_RINvXs0_NtCseuwcdgGPBeX_5json52deQNtB6_12DeserializerNtNtCs2d6kDCn68sB_10serde_core2de12Deserializer15deserialize_anyNtNtBR_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) #30, !noalias !4040, !inline_history !4038 ; 2 uses
  %.not25.i.i.peel = icmp eq ptr %i.k, null
  br i1 %.not25.i.i.peel, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9SeqAccessNtNtCs2d6kDCn68sB_10serde_core2de9SeqAccess12next_elementNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit, label %_RINvXNtNtCs2d6kDCn68sB_10serde_core2de11ignored_anyNtB3_10IgnoredAnyNtB5_7Visitor9visit_seqNtNtCseuwcdgGPBeX_5json52de9SeqAccessECsat9HgdBb3qc_16shadowsocks_rust.exit.thread39

_RINvYNtNtCseuwcdgGPBeX_5json52de9SeqAccessNtNtCs2d6kDCn68sB_10serde_core2de9SeqAccess12next_elementNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %bb.d, %bb.g
  %i.l = tail call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) #30, !noalias !4040, !inline_history !4037 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %bb.e, label %_RINvXNtNtCs2d6kDCn68sB_10serde_core2de11ignored_anyNtB3_10IgnoredAnyNtB5_7Visitor9visit_seqNtNtCseuwcdgGPBeX_5json52de9SeqAccessECsat9HgdBb3qc_16shadowsocks_rust.exit.thread39

bb.e:                                             ; preds = %_RINvYNtNtCseuwcdgGPBeX_5json52de9SeqAccessNtNtCs2d6kDCn68sB_10serde_core2de9SeqAccess12next_elementNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit
  %i.m = tail call { i64, i32 } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer4peek(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) #30, !noalias !4040, !inline_history !4037
  %i.n = extractvalue { i64, i32 } %i.m, 1
  %i.o = icmp eq i32 %i.n, 93
  br i1 %i.o, label %_RINvXNtNtCs2d6kDCn68sB_10serde_core2de11ignored_anyNtB3_10IgnoredAnyNtB5_7Visitor9visit_seqNtNtCseuwcdgGPBeX_5json52de9SeqAccessECsat9HgdBb3qc_16shadowsocks_rust.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = tail call { i64, ptr } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer11expect_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, i32 noundef 44, i8 noundef 0, i8 noundef 14) #30, !noalias !4040, !inline_history !4037 ; 2 uses
  %i.q = extractvalue { i64, ptr } %i.p, 0
  %i.r = trunc nuw i64 %i.q to i1
  br i1 %i.r, label %_RINvXNtNtCs2d6kDCn68sB_10serde_core2de11ignored_anyNtB3_10IgnoredAnyNtB5_7Visitor9visit_seqNtNtCseuwcdgGPBeX_5json52de9SeqAccessECsat9HgdBb3qc_16shadowsocks_rust.exit, label %bb.h

bb.g:                                             ; preds = %bb.i
  %i.s = tail call fastcc noundef align 8 ptr @_RINvXs0_NtCseuwcdgGPBeX_5json52deQNtB6_12DeserializerNtNtCs2d6kDCn68sB_10serde_core2de12Deserializer15deserialize_anyNtNtBR_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) #30, !noalias !4040, !inline_history !4038 ; 2 uses
  %.not25.i.i = icmp eq ptr %i.s, null
  br i1 %.not25.i.i, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9SeqAccessNtNtCs2d6kDCn68sB_10serde_core2de9SeqAccess12next_elementNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit, label %_RINvXNtNtCs2d6kDCn68sB_10serde_core2de11ignored_anyNtB3_10IgnoredAnyNtB5_7Visitor9visit_seqNtNtCseuwcdgGPBeX_5json52de9SeqAccessECsat9HgdBb3qc_16shadowsocks_rust.exit.thread39, !llvm.loop !4039

bb.h:                                             ; preds = %bb.f
  %i.t = tail call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) #30, !noalias !4040, !inline_history !4037 ; 2 uses
  %.not24.i.i = icmp eq ptr %i.t, null
  br i1 %.not24.i.i, label %bb.i, label %_RINvXNtNtCs2d6kDCn68sB_10serde_core2de11ignored_anyNtB3_10IgnoredAnyNtB5_7Visitor9visit_seqNtNtCseuwcdgGPBeX_5json52de9SeqAccessECsat9HgdBb3qc_16shadowsocks_rust.exit.thread39

bb.i:                                             ; preds = %bb.h
  %i.u = tail call { i64, i32 } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer4peek(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) #30, !noalias !4040, !inline_history !4037
  %i.v = extractvalue { i64, i32 } %i.u, 1
  %i.w = icmp eq i32 %i.v, 93
  br i1 %i.w, label %_RINvXNtNtCs2d6kDCn68sB_10serde_core2de11ignored_anyNtB3_10IgnoredAnyNtB5_7Visitor9visit_seqNtNtCseuwcdgGPBeX_5json52de9SeqAccessECsat9HgdBb3qc_16shadowsocks_rust.exit.thread, label %bb.g

_RINvXNtNtCs2d6kDCn68sB_10serde_core2de11ignored_anyNtB3_10IgnoredAnyNtB5_7Visitor9visit_seqNtNtCseuwcdgGPBeX_5json52de9SeqAccessECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %bb.f
  %i.x = extractvalue { i64, ptr } %i.p, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.x) ]
  br label %_RINvXNtNtCs2d6kDCn68sB_10serde_core2de11ignored_anyNtB3_10IgnoredAnyNtB5_7Visitor9visit_seqNtNtCseuwcdgGPBeX_5json52de9SeqAccessECsat9HgdBb3qc_16shadowsocks_rust.exit.thread39

_RINvXNtNtCs2d6kDCn68sB_10serde_core2de11ignored_anyNtB3_10IgnoredAnyNtB5_7Visitor9visit_seqNtNtCseuwcdgGPBeX_5json52de9SeqAccessECsat9HgdBb3qc_16shadowsocks_rust.exit.thread39: ; preds = %_RINvYNtNtCseuwcdgGPBeX_5json52de9SeqAccessNtNtCs2d6kDCn68sB_10serde_core2de9SeqAccess12next_elementNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit, %bb.h, %bb.g, %_RINvYNtNtCseuwcdgGPBeX_5json52de9SeqAccessNtNtCs2d6kDCn68sB_10serde_core2de9SeqAccess12next_elementNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.preheader, %bb.d, %_RINvXNtNtCs2d6kDCn68sB_10serde_core2de11ignored_anyNtB3_10IgnoredAnyNtB5_7Visitor9visit_seqNtNtCseuwcdgGPBeX_5json52de9SeqAccessECsat9HgdBb3qc_16shadowsocks_rust.exit
  %.sroa.1524.1.ph42 = phi ptr [ %i.x, %_RINvXNtNtCs2d6kDCn68sB_10serde_core2de11ignored_anyNtB3_10IgnoredAnyNtB5_7Visitor9visit_seqNtNtCseuwcdgGPBeX_5json52de9SeqAccessECsat9HgdBb3qc_16shadowsocks_rust.exit ], [ %i.g, %_RINvYNtNtCseuwcdgGPBeX_5json52de9SeqAccessNtNtCs2d6kDCn68sB_10serde_core2de9SeqAccess12next_elementNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.preheader ], [ %i.k, %bb.d ], [ %i.l, %_RINvYNtNtCseuwcdgGPBeX_5json52de9SeqAccessNtNtCs2d6kDCn68sB_10serde_core2de9SeqAccess12next_elementNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit ], [ %i.t, %bb.h ], [ %i.s, %bb.g ]
  %i.y = tail call noundef nonnull align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer13with_position(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef nonnull align 8 %.sroa.1524.1.ph42, i64 noundef %i.e) #30
  br label %bb.j

_RINvXNtNtCs2d6kDCn68sB_10serde_core2de11ignored_anyNtB3_10IgnoredAnyNtB5_7Visitor9visit_seqNtNtCseuwcdgGPBeX_5json52de9SeqAccessECsat9HgdBb3qc_16shadowsocks_rust.exit.thread: ; preds = %bb.e, %bb.i, %bb.c
  %i.z = tail call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer21expect_collection_end(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, i32 noundef 93, i8 noundef 0, i8 noundef 12) #30
  br label %bb.j

bb.j:                                             ; preds = %_RINvXNtNtCs2d6kDCn68sB_10serde_core2de11ignored_anyNtB3_10IgnoredAnyNtB5_7Visitor9visit_seqNtNtCseuwcdgGPBeX_5json52de9SeqAccessECsat9HgdBb3qc_16shadowsocks_rust.exit.thread, %bb.b, %bb.a, %_RINvXNtNtCs2d6kDCn68sB_10serde_core2de11ignored_anyNtB3_10IgnoredAnyNtB5_7Visitor9visit_seqNtNtCseuwcdgGPBeX_5json52de9SeqAccessECsat9HgdBb3qc_16shadowsocks_rust.exit.thread39
  %.sroa.0.0 = phi ptr [ %i.d, %bb.b ], [ %i.a, %bb.a ], [ %i.y, %_RINvXNtNtCs2d6kDCn68sB_10serde_core2de11ignored_anyNtB3_10IgnoredAnyNtB5_7Visitor9visit_seqNtNtCseuwcdgGPBeX_5json52de9SeqAccessECsat9HgdBb3qc_16shadowsocks_rust.exit.thread39 ], [ %i.z, %_RINvXNtNtCs2d6kDCn68sB_10serde_core2de11ignored_anyNtB3_10IgnoredAnyNtB5_7Visitor9visit_seqNtNtCseuwcdgGPBeX_5json52de9SeqAccessECsat9HgdBb3qc_16shadowsocks_rust.exit.thread ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtBb_9LogConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1c_7Visitor9visit_mapNtNtCseuwcdgGPBeX_5json52de9MapAccessEBd_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [32 x i8], align 8                ; 9 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [32 x i8], align 8                ; 7 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [24 x i8], align 8                ; 7 uses
  %i.y = alloca [58 x i8], align 1                ; 4 uses
  %i.z = alloca [16 x i8], align 16               ; 4 uses
  %i.aa = alloca [32 x i8], align 8               ; 7 uses
  %i.ab = alloca [16 x i8], align 8               ; 5 uses
  %i.ac = alloca [24 x i8], align 8               ; 5 uses
  %i.ad = alloca [32 x i8], align 8               ; 7 uses
  %i.ae = alloca [16 x i8], align 8               ; 5 uses
  %i.af = alloca [24 x i8], align 8               ; 6 uses
  %i.ag = alloca [16 x i8], align 8               ; 5 uses
  %i.ah = alloca [24 x i8], align 8               ; 7 uses
  %i.ai = alloca [57 x i8], align 1               ; 4 uses
  %i.aj = alloca [16 x i8], align 16              ; 4 uses
  %i.ak = alloca [32 x i8], align 8               ; 7 uses
  %i.al = alloca [16 x i8], align 8               ; 5 uses
  %i.am = alloca [24 x i8], align 8               ; 5 uses
  %i.an = alloca [32 x i8], align 8               ; 7 uses
  %i.ao = alloca [16 x i8], align 8               ; 5 uses
  %i.ap = alloca [24 x i8], align 8               ; 5 uses
  %i.aq = alloca [48 x i8], align 16              ; 9 uses
  %i.ar = alloca [16 x i8], align 8               ; 7 uses
  %i.as = alloca [16 x i8], align 8               ; 5 uses
  %i.at = alloca [16 x i8], align 8               ; 5 uses
  %i.au = alloca [16 x i8], align 8               ; 5 uses
  %i.av = alloca [16 x i8], align 8               ; 5 uses
  %i.aw = alloca [16 x i8], align 8               ; 5 uses
  %i.ax = alloca [16 x i8], align 8               ; 5 uses
  %i.ay = alloca [32 x i8], align 8               ; 8 uses
  %i.az = alloca [24 x i8], align 8               ; 7 uses
  %i.ba = alloca [16 x i8], align 8               ; 7 uses
  %i.bb = alloca [16 x i8], align 8               ; 7 uses
  %i.bc = alloca [16 x i8], align 8               ; 5 uses
  %i.bd = alloca [16 x i8], align 8               ; 5 uses
  %i.be = alloca [16 x i8], align 8               ; 5 uses
  %i.bf = alloca [16 x i8], align 8               ; 5 uses
  %i.bg = alloca [16 x i8], align 8               ; 5 uses
  %i.bh = alloca [16 x i8], align 8               ; 5 uses
  %i.bi = alloca [16 x i8], align 8               ; 5 uses
  %i.bj = alloca [16 x i8], align 8               ; 5 uses
  %i.bk = alloca [16 x i8], align 8               ; 5 uses
  %i.bl = alloca [16 x i8], align 8               ; 5 uses
  %i.bm = alloca [32 x i8], align 8               ; 9 uses
  %i.bn = alloca [32 x i8], align 8               ; 9 uses
  %i.bo = alloca [16 x i8], align 8               ; 7 uses
  %i.bp = alloca [16 x i8], align 8               ; 5 uses
  %i.bq = alloca [16 x i8], align 8               ; 5 uses
  %i.br = alloca [32 x i8], align 8               ; 8 uses
  %i.bs = alloca [16 x i8], align 8               ; 5 uses
  %i.bt = alloca [16 x i8], align 8               ; 5 uses
  %i.bu = alloca [16 x i8], align 8               ; 5 uses
  %i.bv = alloca [16 x i8], align 8               ; 5 uses
  %i.bw = alloca [32 x i8], align 8               ; 8 uses
  %i.bx = alloca [16 x i8], align 8               ; 6 uses
  %i.by = alloca [24 x i8], align 8               ; 7 uses
  %i.bz = alloca [24 x i8], align 8               ; 7 uses
  %i.ca = alloca [16 x i8], align 8               ; 7 uses
  %i.cb = alloca [16 x i8], align 8               ; 7 uses
  %i.cc = alloca [16 x i8], align 8               ; 5 uses
  %i.cd = alloca [16 x i8], align 8               ; 5 uses
  %i.ce = alloca [16 x i8], align 8               ; 5 uses
  %i.cf = alloca [16 x i8], align 8               ; 5 uses
  %i.cg = alloca [32 x i8], align 8               ; 11 uses
  %i.ch = alloca [16 x i8], align 8               ; 11 uses
  %i.ci = alloca [16 x i8], align 8               ; 11 uses
  %i.cj = alloca [32 x i8], align 8               ; 9 uses
  %.sroa.10.i.i.i.i.i.i.i.i.i.i.i = alloca [16 x i8], align 8 ; 11 uses
  %i.ck = alloca [16 x i8], align 8               ; 7 uses
  %i.cl = alloca [24 x i8], align 8               ; 11 uses
  %i.cm = alloca [24 x i8], align 8               ; 7 uses
  %i.cn = alloca [16 x i8], align 8               ; 5 uses
  %i.co = alloca [16 x i8], align 8               ; 5 uses
  %i.cp = alloca [16 x i8], align 8               ; 5 uses
  %i.cq = alloca [16 x i8], align 8               ; 5 uses
  %i.cr = alloca [16 x i8], align 8               ; 9 uses
  %i.cs = alloca [32 x i8], align 8               ; 11 uses
  %i.ct = alloca [16 x i8], align 8               ; 5 uses
  %i.cu = alloca [16 x i8], align 8               ; 5 uses
  %i.cv = alloca [32 x i8], align 8               ; 8 uses
  %i.cw = alloca [24 x i8], align 8               ; 2 uses
  %i.cx = alloca [56 x i8], align 8               ; 10 uses
  %i.cy = alloca [16 x i8], align 8               ; 7 uses
  %i.cz = alloca [24 x i8], align 8               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz)
  store i64 -1, ptr %i.cz, align 8
  %i.da = tail call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4648 ; 2 uses
  %.not.i.i3646 = icmp eq ptr %i.da, null
  br i1 %.not.i.i3646, label %.lr.ph, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtB1B_9LogConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.db = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.dc = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.de = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cl, i64 16 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.di = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i7.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i8.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  %.sroa.4107.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %.sroa.5108.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %.sroa.4104.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %.sroa.5105.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i11.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i.i13.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.dn = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i145.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i147.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.do = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 16 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 24 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ch, i64 1 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ci, i64 4 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i25.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i26.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %.sroa.457.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.sroa.558.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %.sroa.514.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %.sroa.627.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 16 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 24 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  %.sroa.10.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %.sroa.10.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx5709 = getelementptr inbounds nuw i8, ptr %.sroa.10.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %.sroa.10.i.i.i.i.i.i.i.i.i.i.i.4.i.i.i.i.i.i.i.i.i.i.i.4.i.i.i.i.i.i.i.i.i.i.i.4.i.i.i.i.i.i.i.i.i.i.4.i.i.i.i.i.i.i.i.i.i.4.i.i.i.i.i.i.i.i.i.4.i.i.i.i.i.i.i.i.i.4.i.i.i.i.i.i.i.i.4.i.i.i.i.i.i.i.i.4.i.i.i.i.i.i.i.4.i.i.i.i.i.i.i.4.i.i.i.i.i.i.4.i.i.i.i.i.i.4.i.i.i.i.i.4.i.i.i.i.i.4.i.i.i.i.4.i.i.i.i.4.i.i.i.4.i.i.i.4.i.i.4.i.i.4.i.4.i.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.i.i.i.i.i.i.i.i.i.i.i, i64 4
  %.sroa.10.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx5710 = getelementptr inbounds nuw i8, ptr %.sroa.10.i.i.i.i.i.i.i.i.i.i.i, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogFormatConfigEB1B_.exit
  %i.ee = phi i64 [ -1, %.lr.ph ], [ %i.is, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogFormatConfigEB1B_.exit ] ; 9 uses
  %.sroa.04.03653 = phi i32 [ 0, %.lr.ph ], [ %.sroa.04.1, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogFormatConfigEB1B_.exit ] ; 9 uses
  %.sroa.4.03652 = phi i32 [ undef, %.lr.ph ], [ %.sroa.4.1, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogFormatConfigEB1B_.exit ] ; 8 uses
  %.sroa.09.03651 = phi i8 [ 2, %.lr.ph ], [ %.sroa.09.1, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogFormatConfigEB1B_.exit ] ; 10 uses
  %.sroa.7.03650 = phi i1 [ true, %.lr.ph ], [ false, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogFormatConfigEB1B_.exit ]
  %.sroa.0103.03649 = phi i64 [ -2, %.lr.ph ], [ %.sroa.0103.1, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogFormatConfigEB1B_.exit ] ; 19 uses
  %.sroa.10.03648 = phi ptr [ undef, %.lr.ph ], [ %.sroa.10.1, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogFormatConfigEB1B_.exit ] ; 17 uses
  %.sroa.13.03647 = phi i64 [ undef, %.lr.ph ], [ %.sroa.13.1, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogFormatConfigEB1B_.exit ] ; 5 uses
  %i.ef = call { i64, i32 } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer4peek(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4648
  %i.eg = extractvalue { i64, i32 } %i.ef, 1
  %i.eh = icmp eq i32 %i.eg, 125
  br i1 %i.eh, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %.sroa.7.03650, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ei = call { i64, ptr } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer11expect_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i32 noundef 44, i8 noundef 7, i8 noundef 14) #30, !noalias !4648 ; 2 uses
  %i.ej = extractvalue { i64, ptr } %i.ei, 0
  %i.ek = trunc nuw i64 %i.ej to i1
  br i1 %i.ek, label %bb.v, label %bb.w

bb.e:                                             ; preds = %bb.x, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv), !noalias !4649
  call void @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer9parse_key(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.cv, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4650
  %i.el = load i64, ptr %i.db, align 8, !range !51, !noalias !4649, !noundef !14 ; 12 uses
  %i.em = icmp eq i64 %i.el, -2
  br i1 %i.em, label %bb.y, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.5.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !4649, !nonnull !14, !noundef !14 ; 21 uses
  %.sroa.5.sroa.4.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !noalias !4649 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !noalias !4649
  %.not.i.i.i.i.i = icmp eq i64 %i.el, -1
  br i1 %.not.i.i.i.i.i, label %bb.q, label %bb.g

bb.g:                                             ; preds = %bb.f
  switch i64 %.sroa.5.sroa.4.0.copyload.i.i.i.i.i, label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtB8_9LogConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB19_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt4 [
    i64 5, label %bb.h
    i64 6, label %bb.i
    i64 7, label %bb.j
    i64 11, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  %i.en = load i32, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i, align 1
  %i.eo = xor i32 %i.en, 1702258028
  %i.ep = getelementptr i8, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i, i64 4
  %i.eq = load i8, ptr %i.ep, align 1
  %i.er = zext i8 %i.eq to i32
  %i.es = xor i32 %i.er, 108
  %i.et = or i32 %i.eo, %i.es
  %i.eu = icmp ne i32 %i.et, 0
  %i.ev = zext i1 %i.eu to i32
  %i.ew = icmp eq i32 %i.ev, 0
  br i1 %i.ew, label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtB8_9LogConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB19_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt0, label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtB8_9LogConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB19_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt4

bb.i:                                             ; preds = %bb.g
  %i.ex = load i32, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i, align 1
  %i.ey = xor i32 %i.ex, 1836216166
  %i.ez = getelementptr i8, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i, i64 4
  %i.fa = load i16, ptr %i.ez, align 1
  %i.fb = zext i16 %i.fa to i32
  %i.fc = xor i32 %i.fb, 29793
  %i.fd = or i32 %i.ey, %i.fc
  %i.fe = icmp ne i32 %i.fd, 0
  %i.ff = zext i1 %i.fe to i32
  %i.fg = icmp eq i32 %i.ff, 0
  br i1 %i.fg, label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtB8_9LogConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB19_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt1, label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtB8_9LogConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB19_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt4

bb.j:                                             ; preds = %bb.g
  %i.fh = load i32, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i, align 1
  %i.fi = xor i32 %i.fh, 1953067639
  %i.fj = getelementptr i8, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i, i64 3
  %i.fk = load i32, ptr %i.fj, align 1
  %i.fl = xor i32 %i.fk, 1936876916
  %i.fm = or i32 %i.fi, %i.fl
  %i.fn = icmp ne i32 %i.fm, 0
  %i.fo = zext i1 %i.fn to i32
  %i.fp = icmp eq i32 %i.fo, 0
  br i1 %i.fp, label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtB8_9LogConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB19_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt2, label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtB8_9LogConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB19_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt4

bb.k:                                             ; preds = %bb.g
  %i.fq = load i64, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i, align 1
  %i.fr = xor i64 %i.fq, 8097304357423181667
  %i.fs = getelementptr i8, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i, i64 3
  %i.ft = load i64, ptr %i.fs, align 1
  %i.fu = xor i64 %i.ft, 7526748012507785574
  %i.fv = or i64 %i.fr, %i.fu
  %i.fw = icmp ne i64 %i.fv, 0
  %i.fx = zext i1 %i.fw to i32
  %i.fy = icmp eq i32 %i.fx, 0
  br i1 %i.fy, label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtB8_9LogConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB19_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt3, label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtB8_9LogConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB19_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt4

_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtB8_9LogConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB19_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt3: ; preds = %bb.k
  %i.fz = icmp eq i64 %i.el, 0
  br i1 %i.fz, label %.thread152, label %bb.l

_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtB8_9LogConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB19_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt0: ; preds = %bb.h
  %i.ga = icmp eq i64 %i.el, 0
  br i1 %i.ga, label %.thread139, label %bb.m

_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtB8_9LogConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB19_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt1: ; preds = %bb.i
  %i.gb = icmp eq i64 %i.el, 0
  br i1 %i.gb, label %.thread144, label %bb.n

_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtB8_9LogConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB19_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt4: ; preds = %bb.g, %bb.h, %bb.i, %bb.j, %bb.k
  %i.gc = icmp eq i64 %i.el, 0
  br i1 %i.gc, label %.thread156, label %bb.o

_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtB8_9LogConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB19_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt2: ; preds = %bb.j
  %i.gd = icmp eq i64 %i.el, 0
  br i1 %i.gd, label %.thread148, label %bb.p

bb.l:                                             ; preds = %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtB8_9LogConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB19_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.0.0.copyload.i.i.i.i.i, i64 noundef %i.el, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !4651
  br label %.thread152

bb.m:                                             ; preds = %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtB8_9LogConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB19_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt0
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.0.0.copyload.i.i.i.i.i, i64 noundef %i.el, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !4651
  br label %.thread139

bb.n:                                             ; preds = %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtB8_9LogConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB19_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt1
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.0.0.copyload.i.i.i.i.i, i64 noundef %i.el, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !4651
  br label %.thread144

bb.o:                                             ; preds = %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtB8_9LogConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB19_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.0.0.copyload.i.i.i.i.i, i64 noundef %i.el, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !4651
  br label %.thread156

bb.p:                                             ; preds = %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtB8_9LogConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB19_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.0.0.copyload.i.i.i.i.i, i64 noundef %i.el, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !4651
  br label %.thread148

bb.q:                                             ; preds = %bb.f
  switch i64 %.sroa.5.sroa.4.0.copyload.i.i.i.i.i, label %.thread156 [
    i64 5, label %bb.r
    i64 6, label %bb.s
    i64 7, label %bb.t
    i64 11, label %bb.u
  ]

bb.r:                                             ; preds = %bb.q
  %i.ge = load i32, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i, align 1
  %i.gf = xor i32 %i.ge, 1702258028
  %i.gg = getelementptr i8, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i, i64 4
  %i.gh = load i8, ptr %i.gg, align 1
  %i.gi = zext i8 %i.gh to i32
  %i.gj = xor i32 %i.gi, 108
  %i.gk = or i32 %i.gf, %i.gj
  %i.gl = icmp ne i32 %i.gk, 0
  %i.gm = zext i1 %i.gl to i32
  %i.gn = icmp eq i32 %i.gm, 0
  br i1 %i.gn, label %.thread139, label %.thread156

bb.s:                                             ; preds = %bb.q
  %i.go = load i32, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i, align 1
  %i.gp = xor i32 %i.go, 1836216166
  %i.gq = getelementptr i8, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i, i64 4
  %i.gr = load i16, ptr %i.gq, align 1
  %i.gs = zext i16 %i.gr to i32
  %i.gt = xor i32 %i.gs, 29793
  %i.gu = or i32 %i.gp, %i.gt
  %i.gv = icmp ne i32 %i.gu, 0
  %i.gw = zext i1 %i.gv to i32
  %i.gx = icmp eq i32 %i.gw, 0
  br i1 %i.gx, label %.thread144, label %.thread156

bb.t:                                             ; preds = %bb.q
  %i.gy = load i32, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i, align 1
  %i.gz = xor i32 %i.gy, 1953067639
  %i.ha = getelementptr i8, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i, i64 3
  %i.hb = load i32, ptr %i.ha, align 1
  %i.hc = xor i32 %i.hb, 1936876916
  %i.hd = or i32 %i.gz, %i.hc
  %i.he = icmp ne i32 %i.hd, 0
  %i.hf = zext i1 %i.he to i32
  %i.hg = icmp eq i32 %i.hf, 0
  br i1 %i.hg, label %.thread148, label %.thread156

bb.u:                                             ; preds = %bb.q
  %i.hh = load i64, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i, align 1
  %i.hi = xor i64 %i.hh, 8097304357423181667
  %i.hj = getelementptr i8, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i, i64 3
  %i.hk = load i64, ptr %i.hj, align 1
  %i.hl = xor i64 %i.hk, 7526748012507785574
  %i.hm = or i64 %i.hi, %i.hl
  %i.hn = icmp ne i64 %i.hm, 0
  %i.ho = zext i1 %i.hn to i32
  %i.hp = icmp eq i32 %i.ho, 0
  br i1 %i.hp, label %.thread152, label %.thread156

bb.v:                                             ; preds = %bb.d
  %i.hq = extractvalue { i64, ptr } %i.ei, 1
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtB1B_9LogConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit

bb.w:                                             ; preds = %bb.d
  %i.hr = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4648 ; 2 uses
  %.not22.i.i = icmp eq ptr %i.hr, null
  br i1 %.not22.i.i, label %bb.x, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtB1B_9LogConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit

bb.x:                                             ; preds = %bb.w
  %i.hs = call { i64, i32 } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer4peek(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4648
  %i.ht = extractvalue { i64, i32 } %i.hs, 1
  %i.hu = icmp eq i32 %i.ht, 125
  br i1 %i.hu, label %.thread, label %bb.e

bb.y:                                             ; preds = %bb.e
  %i.hv = load ptr, ptr %i.cv, align 8, !noalias !4649, !nonnull !14, !align !27, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !noalias !4649
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtB1B_9LogConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit

_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtB1B_9LogConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit: ; preds = %bb.w, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogFormatConfigEB1B_.exit, %bb.a, %bb.y, %bb.v
  %.sroa.10.03258 = phi ptr [ %.sroa.10.03648, %bb.v ], [ %.sroa.10.03648, %bb.y ], [ undef, %bb.a ], [ %.sroa.10.03648, %bb.w ], [ %.sroa.10.1, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogFormatConfigEB1B_.exit ]
  %.sroa.0103.03095 = phi i64 [ %.sroa.0103.03649, %bb.v ], [ %.sroa.0103.03649, %bb.y ], [ -2, %bb.a ], [ %.sroa.0103.03649, %bb.w ], [ %.sroa.0103.1, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogFormatConfigEB1B_.exit ]
  %.sroa.9107.0 = phi ptr [ %i.hq, %bb.v ], [ %i.hv, %bb.y ], [ %i.da, %bb.a ], [ %i.hr, %bb.w ], [ %i.it, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogFormatConfigEB1B_.exit ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9107.0) ]
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread

.thread:                                          ; preds = %bb.x, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx)
  call void @llvm.experimental.noalias.scope.decl(metadata !4652)
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !4652
  %i.hw = call noundef align 8 dereferenceable_or_null(104) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 104, i64 noundef range(i64 1, -9223372036854775807) 8) #30, !noalias !4652 ; 5 uses
  %i.hx = icmp eq ptr %i.hw, null
  br i1 %i.hx, label %bb.z, label %_RNvXs_NtCsat9HgdBb3qc_16shadowsocks_rust6configNtB4_9LogConfigNtNtCsf3Ta7LF998c_4core7default7Default7default.exit, !prof !17

bb.z:                                             ; preds = %.thread
  call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 104) #34, !noalias !4652
  unreachable

_RNvXs_NtCsat9HgdBb3qc_16shadowsocks_rust6configNtB4_9LogConfigNtNtCsf3Ta7LF998c_4core7default7Default7default.exit: ; preds = %.thread
  store i64 2, ptr %i.hw, align 8, !noalias !4652
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  store i32 0, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !4652
  %.sroa.42.sroa.5.0..sroa.42.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  store i8 2, ptr %.sroa.42.sroa.5.0..sroa.42.0..sroa_idx.sroa_idx.i, align 8, !noalias !4652
  %i.hy = getelementptr inbounds nuw i8, ptr %i.cx, i64 48
  store i32 0, ptr %i.hy, align 8, !alias.scope !4652
  %i.hz = getelementptr inbounds nuw i8, ptr %i.cx, i64 52
  store i8 0, ptr %i.hz, align 4, !alias.scope !4652
  store i64 1, ptr %i.cx, align 8, !alias.scope !4652
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store ptr %i.hw, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !4652
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !4652
  %i.ia = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  store i64 -1, ptr %i.ia, align 8, !alias.scope !4652
  %i.ib = trunc nuw i32 %.sroa.04.03653 to i1
  %.sroa.045.0 = select i1 %i.ib, i32 %.sroa.4.03652, i32 0 ; 2 uses
  %.not64 = icmp eq i8 %.sroa.09.03651, 2
  %.sroa.047.0 = select i1 %.not64, i8 0, i8 %.sroa.09.03651 ; 2 uses
  %.not65.not = icmp eq i64 %i.ee, -1             ; 3 uses
  %. = select i1 %.not65.not, ptr %i.cx, ptr %i.cz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cw, ptr noundef nonnull align 8 dereferenceable(24) %., i64 24, i1 false)
  %.not66 = icmp eq i64 %.sroa.0103.03649, -2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.cw, i64 24, i1 false)
  %.sroa.049.sroa.8.0..sroa_idx123 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br i1 %.not66, label %bb.ns, label %bb.nr

default.unreachable:                              ; preds = %bb.ky, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs4_1__NtB1B_19LogFileWriterConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.mg
  unreachable

.thread139:                                       ; preds = %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtB8_9LogConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB19_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt0, %bb.m, %bb.r
  %i.ic = icmp eq i32 %.sroa.04.03653, 1
  br i1 %i.ic, label %bb.ag, label %bb.ad, !prof !23

.thread144:                                       ; preds = %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtB8_9LogConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB19_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt1, %bb.n, %bb.s
  %.not70 = icmp eq i8 %.sroa.09.03651, 2
  br i1 %.not70, label %bb.ai, label %bb.by, !prof !20

.thread148:                                       ; preds = %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtB8_9LogConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB19_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt2, %bb.p, %bb.t
  %.not69 = icmp eq i64 %i.ee, -1
  br i1 %.not69, label %bb.bz, label %bb.mu, !prof !20

.thread152:                                       ; preds = %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtB8_9LogConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB19_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt3, %bb.l, %bb.u
  %.not68 = icmp eq i64 %.sroa.0103.03649, -2
  br i1 %.not68, label %bb.mx, label %bb.no, !prof !20

.thread156:                                       ; preds = %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtB8_9LogConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB19_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.jt4, %bb.o, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q
  %i.id = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !inline_history !0 ; 2 uses
  %.not.i.i81 = icmp eq ptr %i.id, null
  br i1 %.not.i.i81, label %bb.aa, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread

bb.aa:                                            ; preds = %.thread156
  %i.ie = call { i64, ptr } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer11expect_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i32 noundef 58, i8 noundef 7, i8 noundef 13) #30, !inline_history !0 ; 2 uses
  %i.if = extractvalue { i64, ptr } %i.ie, 0
  %i.ig = trunc nuw i64 %i.if to i1
  br i1 %i.ig, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ih = extractvalue { i64, ptr } %i.ie, 1
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit

bb.ac:                                            ; preds = %bb.aa
  %i.ii = call fastcc noundef align 8 ptr @_RINvXs0_NtCseuwcdgGPBeX_5json52deQNtB6_12DeserializerNtNtCs2d6kDCn68sB_10serde_core2de12Deserializer15deserialize_anyNtNtBR_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !inline_history !1
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit

_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %bb.ab, %bb.ac
  %.sroa.0.0.i.i = phi ptr [ %i.ii, %bb.ac ], [ %i.ih, %bb.ab ] ; 2 uses
  %.not67 = icmp eq ptr %.sroa.0.0.i.i, null
  br i1 %.not67, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogFormatConfigEB1B_.exit, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread

bb.ad:                                            ; preds = %.thread139
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy)
  call void @llvm.experimental.noalias.scope.decl(metadata !4653)
  call void @llvm.experimental.noalias.scope.decl(metadata !4654)
  %i.ij = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4655 ; 2 uses
  %.not.i.i82 = icmp eq ptr %i.ij, null
  br i1 %.not.i.i82, label %bb.ae, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valuemECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.sink.split

bb.ae:                                            ; preds = %bb.ad
  %i.ik = call { i64, ptr } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer11expect_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i32 noundef 58, i8 noundef 7, i8 noundef 13) #30, !noalias !4655 ; 2 uses
  %i.il = extractvalue { i64, ptr } %i.ik, 0
  %i.im = trunc nuw i64 %i.il to i1
  br i1 %i.im, label %bb.af, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valuemECsat9HgdBb3qc_16shadowsocks_rust.exit

bb.af:                                            ; preds = %bb.ae
  %i.in = extractvalue { i64, ptr } %i.ik, 1
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valuemECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.sink.split

_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valuemECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %bb.ae
  call fastcc void @_RINvXs16_NtNtCs2d6kDCn68sB_10serde_core2de5implsmNtB9_11Deserialize11deserializeQNtNtCseuwcdgGPBeX_5json52de12DeserializerECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.cy, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #35
  %.pre.a = load i32, ptr %i.cy, align 8, !range !13
  %i.io = trunc nuw i32 %.pre.a to i1
  br i1 %i.io, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valuemECsat9HgdBb3qc_16shadowsocks_rust.exit.thread, label %bb.ah

bb.ag:                                            ; preds = %.thread139
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu)
  store ptr @152, ptr %i.cu, align 8, !noalias !4656
  %i.ip = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i64 5, ptr %i.ip, align 8, !noalias !4656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct), !noalias !4656
  store ptr %i.cu, ptr %i.ct, align 8, !noalias !4656
  %.sroa.42.0..sroa_idx.i83 = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.42.0..sroa_idx.i83, align 8, !noalias !4656
  %i.iq = call fastcc noalias noundef nonnull align 8 ptr @_RINvXs3_NtCseuwcdgGPBeX_5json55errorNtB6_5ErrorNtNtCs2d6kDCn68sB_10serde_core2de5Error6customNtNtCsf3Ta7LF998c_4core3fmt9ArgumentsECsat9HgdBb3qc_16shadowsocks_rust(ptr noundef nonnull @896, ptr noundef nonnull %i.ct) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct), !noalias !4656
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu)
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread

_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valuemECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.sink.split: ; preds = %bb.ad, %bb.af
  %.sink = phi ptr [ %i.in, %bb.af ], [ %i.ij, %bb.ad ]
  store ptr %.sink, ptr %2, align 8, !alias.scope !4655
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valuemECsat9HgdBb3qc_16shadowsocks_rust.exit.thread

_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valuemECsat9HgdBb3qc_16shadowsocks_rust.exit.thread: ; preds = %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valuemECsat9HgdBb3qc_16shadowsocks_rust.exit, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valuemECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.sink.split
  %3 = load ptr, ptr %2, align 8, !nonnull !14, !align !27, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy)
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread

bb.ah:                                            ; preds = %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valuemECsat9HgdBb3qc_16shadowsocks_rust.exit
  %i.ir = load i32, ptr %i.ed, align 4, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy)
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogFormatConfigEB1B_.exit

_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogFormatConfigEB1B_.exit: ; preds = %bb.nl, %bb.ni, %bb.ng, %bb.ne, %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs0_1__NtBb_15LogFormatConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1k_7Visitor9visit_mapNtNtCseuwcdgGPBeX_5json52de9MapAccessEBd_.exit.i.i.i.i.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigEEEB1y_.exit, %bb.ah
  %i.is = phi i64 [ %i.ee, %bb.ah ], [ %i.ee, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit ], [ %.sroa.0.0.copyload.i3278.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigEEEB1y_.exit ], [ %i.ee, %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs0_1__NtBb_15LogFormatConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1k_7Visitor9visit_mapNtNtCseuwcdgGPBeX_5json52de9MapAccessEBd_.exit.i.i.i.i.i.i ], [ %i.ee, %bb.nl ], [ %i.ee, %bb.ne ], [ %i.ee, %bb.ng ], [ %i.ee, %bb.ni ]
  %.sroa.13.1 = phi i64 [ %.sroa.13.03647, %bb.ah ], [ %.sroa.13.03647, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit ], [ %.sroa.13.03647, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigEEEB1y_.exit ], [ %.sroa.13.03647, %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs0_1__NtBb_15LogFormatConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1k_7Visitor9visit_mapNtNtCseuwcdgGPBeX_5json52de9MapAccessEBd_.exit.i.i.i.i.i.i ], [ %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i.i.i, %bb.nl ], [ undef, %bb.ne ], [ %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i.i.i, %bb.ng ], [ 0, %bb.ni ]
  %.sroa.10.1 = phi ptr [ %.sroa.10.03648, %bb.ah ], [ %.sroa.10.03648, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit ], [ %.sroa.10.03648, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigEEEB1y_.exit ], [ %.sroa.10.03648, %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs0_1__NtBb_15LogFormatConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1k_7Visitor9visit_mapNtNtCseuwcdgGPBeX_5json52de9MapAccessEBd_.exit.i.i.i.i.i.i ], [ %i.ath, %bb.nl ], [ undef, %bb.ne ], [ %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i, %bb.ng ], [ inttoptr (i64 1 to ptr), %bb.ni ] ; 2 uses
  %.sroa.0103.1 = phi i64 [ %.sroa.0103.03649, %bb.ah ], [ %.sroa.0103.03649, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit ], [ %.sroa.0103.03649, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigEEEB1y_.exit ], [ %.sroa.0103.03649, %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs0_1__NtBb_15LogFormatConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1k_7Visitor9visit_mapNtNtCseuwcdgGPBeX_5json52de9MapAccessEBd_.exit.i.i.i.i.i.i ], [ %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i.i.i, %bb.nl ], [ -1, %bb.ne ], [ %i.ate, %bb.ng ], [ 0, %bb.ni ] ; 2 uses
  %.sroa.09.1 = phi i8 [ %.sroa.09.03651, %bb.ah ], [ %.sroa.09.03651, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit ], [ %.sroa.09.03651, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigEEEB1y_.exit ], [ %.sroa.3.0.i.i.i.i.i.i, %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs0_1__NtBb_15LogFormatConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1k_7Visitor9visit_mapNtNtCseuwcdgGPBeX_5json52de9MapAccessEBd_.exit.i.i.i.i.i.i ], [ %.sroa.09.03651, %bb.nl ], [ %.sroa.09.03651, %bb.ne ], [ %.sroa.09.03651, %bb.ng ], [ %.sroa.09.03651, %bb.ni ]
  %.sroa.4.1 = phi i32 [ %i.ir, %bb.ah ], [ %.sroa.4.03652, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit ], [ %.sroa.4.03652, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigEEEB1y_.exit ], [ %.sroa.4.03652, %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs0_1__NtBb_15LogFormatConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1k_7Visitor9visit_mapNtNtCseuwcdgGPBeX_5json52de9MapAccessEBd_.exit.i.i.i.i.i.i ], [ %.sroa.4.03652, %bb.nl ], [ %.sroa.4.03652, %bb.ne ], [ %.sroa.4.03652, %bb.ng ], [ %.sroa.4.03652, %bb.ni ]
  %.sroa.04.1 = phi i32 [ 1, %bb.ah ], [ %.sroa.04.03653, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit ], [ %.sroa.04.03653, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigEEEB1y_.exit ], [ %.sroa.04.03653, %_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs0_1__NtBb_15LogFormatConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1k_7Visitor9visit_mapNtNtCseuwcdgGPBeX_5json52de9MapAccessEBd_.exit.i.i.i.i.i.i ], [ %.sroa.04.03653, %bb.nl ], [ %.sroa.04.03653, %bb.ne ], [ %.sroa.04.03653, %bb.ng ], [ %.sroa.04.03653, %bb.ni ]
  %i.it = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4648 ; 2 uses
  %.not.i.i = icmp eq ptr %i.it, null
  br i1 %.not.i.i, label %bb.b, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtB1B_9LogConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit

bb.ai:                                            ; preds = %.thread144
  %i.iu = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4657 ; 2 uses
  %.not.i.i84 = icmp eq ptr %i.iu, null
  br i1 %.not.i.i84, label %bb.aj, label %.loopexit190

bb.aj:                                            ; preds = %bb.ai
  %i.iv = call { i64, ptr } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer11expect_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i32 noundef 58, i8 noundef 7, i8 noundef 13) #30, !noalias !4657 ; 2 uses
  %i.iw = extractvalue { i64, ptr } %i.iv, 0
  %i.ix = trunc nuw i64 %i.iw to i1
  br i1 %i.ix, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.iy = extractvalue { i64, ptr } %i.iv, 1
  br label %.loopexit190

bb.al:                                            ; preds = %bb.aj
  %i.iz = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4658 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.iz, null
  br i1 %.not.i.i.i.i.i.i, label %bb.am, label %.loopexit190

bb.am:                                            ; preds = %bb.al
  %i.ja = call { i64, ptr } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer11expect_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i32 noundef 123, i8 noundef 7, i8 noundef 19) #30, !noalias !4658 ; 3 uses
  %i.jb = extractvalue { i64, ptr } %i.ja, 0
  %i.jc = trunc nuw i64 %i.jb to i1
  br i1 %i.jc, label %.loopexit190.split.loop.exit3619, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.jd = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4659 ; 2 uses
  %.not.i.i58.i.i.i.i.i.i.i = icmp eq ptr %i.jd, null
  br i1 %.not.i.i58.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs0_1__NtB1B_15LogFormatConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.an
  %i.je = call { i64, i32 } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer4peek(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4659
  %i.jf = extractvalue { i64, i32 } %i.je, 1
  %i.jg = icmp eq i32 %i.jf, 125
  br i1 %i.jg, label %.thread.thread.i.i.i.i.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs), !noalias !4660
  call void @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer9parse_key(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.cs, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4661
  %i.jh = load i64, ptr %i.eb, align 8, !range !51, !noalias !4660, !noundef !14 ; 4 uses
  %i.ji = icmp eq i64 %i.jh, -2
  br i1 %i.ji, label %.loopexit78.i.i.i.i.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.peel.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4660, !nonnull !14, !noundef !14 ; 5 uses
  %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.peel.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4660
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !noalias !4660
  %.not.i.i.i.i.i.peel.i.i.i.i.i.i.i = icmp eq i64 %i.jh, -1
  %i.jj = icmp eq i64 %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.peel.i.i.i.i.i.i.i, 12 ; 2 uses
  br i1 %.not.i.i.i.i.i.peel.i.i.i.i.i.i.i, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  br i1 %i.jj, label %bb.ar, label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs0_1__NtB8_15LogFormatConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1h_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.peel.i.i.i.i.i.i.i

bb.ar:                                            ; preds = %bb.aq
  %i.jk = load i64, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.peel.i.i.i.i.i.i.i, align 1
  %i.jl = xor i64 %i.jk, 6878251652255869303
  %i.jm = getelementptr i8, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.peel.i.i.i.i.i.i.i, i64 8
  %i.jn = load i32, ptr %i.jm, align 1
  %i.jo = zext i32 %i.jn to i64
  %i.jp = xor i64 %i.jo, 1701669236
  %i.jq = or i64 %i.jl, %i.jp
  %i.jr = icmp ne i64 %i.jq, 0                    ; 2 uses
  %i.js = zext i1 %i.jr to i32                    ; 0 uses
  %spec.select.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i = zext i1 %i.jr to i8
  br label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs0_1__NtB8_15LogFormatConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1h_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.peel.i.i.i.i.i.i.i

_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs0_1__NtB8_15LogFormatConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1h_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.peel.i.i.i.i.i.i.i: ; preds = %bb.ar, %bb.aq
  %.sink.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i = phi i8 [ %spec.select.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i, %bb.ar ], [ 1, %bb.aq ] ; 2 uses
  %i.jt = icmp eq i64 %i.jh, 0
  br i1 %i.jt, label %bb.av, label %bb.as

bb.as:                                            ; preds = %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs0_1__NtB8_15LogFormatConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1h_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.peel.i.i.i.i.i.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.peel.i.i.i.i.i.i.i, i64 noundef %i.jh, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !4662
  br label %bb.av

bb.at:                                            ; preds = %bb.ap
  br i1 %i.jj, label %bb.au, label %.thread33.peel.i.i.i.i.i.i.i

bb.au:                                            ; preds = %bb.at
  %i.ju = load i64, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.peel.i.i.i.i.i.i.i, align 1
  %i.jv = xor i64 %i.ju, 6878251652255869303
  %i.jw = getelementptr i8, ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.peel.i.i.i.i.i.i.i, i64 8
  %i.jx = load i32, ptr %i.jw, align 1
  %i.jy = zext i32 %i.jx to i64
  %i.jz = xor i64 %i.jy, 1701669236
  %i.ka = or i64 %i.jv, %i.jz
  %i.kb = icmp ne i64 %i.ka, 0                    ; 2 uses
  %i.kc = zext i1 %i.kb to i32                    ; 0 uses
  %spec.select.i.i8.i.i.i.i.i.peel.i.i.i.i.i.i.i = zext i1 %i.kb to i8
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.as, %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs0_1__NtB8_15LogFormatConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1h_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.peel.i.i.i.i.i.i.i
  %.sroa.5.0.ph.peel.i.i.i.i.i.i.i = phi i8 [ %.sink.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i, %bb.as ], [ %.sink.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i, %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs0_1__NtB8_15LogFormatConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1h_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.peel.i.i.i.i.i.i.i ], [ %spec.select.i.i8.i.i.i.i.i.peel.i.i.i.i.i.i.i, %bb.au ]
  %cond.peel.i.i.i.i.i.i.i = icmp eq i8 %.sroa.5.0.ph.peel.i.i.i.i.i.i.i, 0
  br i1 %cond.peel.i.i.i.i.i.i.i, label %bb.az, label %.thread33.peel.i.i.i.i.i.i.i

.thread33.peel.i.i.i.i.i.i.i:                     ; preds = %bb.av, %bb.at
  %i.kd = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4663, !inline_history !0 ; 2 uses
  %.not.i.i17.peel.i.i.i.i.i.i.i = icmp eq ptr %i.kd, null
  br i1 %.not.i.i17.peel.i.i.i.i.i.i.i, label %bb.aw, label %.loopexit.i.i.i.i.i.i

bb.aw:                                            ; preds = %.thread33.peel.i.i.i.i.i.i.i
  %i.ke = call { i64, ptr } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer11expect_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i32 noundef 58, i8 noundef 7, i8 noundef 13) #30, !noalias !4663, !inline_history !0 ; 2 uses
  %i.kf = extractvalue { i64, ptr } %i.ke, 0
  %i.kg = trunc nuw i64 %i.kf to i1
  br i1 %i.kg, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.kh = call fastcc noundef align 8 ptr @_RINvXs0_NtCseuwcdgGPBeX_5json52deQNtB6_12DeserializerNtNtCs2d6kDCn68sB_10serde_core2de12Deserializer15deserialize_anyNtNtBR_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4663, !inline_history !1
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.peel.i.i.i.i.i.i.i

bb.ay:                                            ; preds = %bb.aw
  %i.ki = extractvalue { i64, ptr } %i.ke, 1
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.peel.i.i.i.i.i.i.i

_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.peel.i.i.i.i.i.i.i: ; preds = %bb.ay, %bb.ax
  %.sroa.0.0.i.i.peel.i.i.i.i.i.i.i = phi ptr [ %i.kh, %bb.ax ], [ %i.ki, %bb.ay ] ; 2 uses
  %.not15.peel.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.peel.i.i.i.i.i.i.i, null
  br i1 %.not15.peel.i.i.i.i.i.i.i, label %bb.bd, label %.loopexit.i.i.i.i.i.i

bb.az:                                            ; preds = %bb.av
  %i.kj = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4664 ; 2 uses
  %.not.i.i18.peel.i.i.i.i.i.i.i = icmp eq ptr %i.kj, null
  br i1 %.not.i.i18.peel.i.i.i.i.i.i.i, label %bb.ba, label %.loopexit.i.i.i.i.i.i.i

bb.ba:                                            ; preds = %bb.az
  %i.kk = call { i64, ptr } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer11expect_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i32 noundef 58, i8 noundef 7, i8 noundef 13) #30, !noalias !4664 ; 2 uses
  %i.kl = extractvalue { i64, ptr } %i.kk, 0
  %i.km = trunc nuw i64 %i.kl to i1
  br i1 %i.km, label %.loopexit80.i.i.i.i.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr), !noalias !4665
  call void @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer10parse_bool(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.cr, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4666
  %i.kn = load i8, ptr %i.ec, align 8, !range !28, !noalias !4665, !noundef !14 ; 2 uses
  %i.ko = icmp eq i8 %i.kn, 2
  br i1 %i.ko, label %.loopexit81.i.i.i.i.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !4665
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.peel.i.i.i.i.i.i.i
  %.sroa.04.1.peel.i.i.i.i.i.i.i = phi i8 [ %i.kn, %bb.bc ], [ 2, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.peel.i.i.i.i.i.i.i ]
  %i.kp = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4659 ; 2 uses
  %.not.i.i.peel.i.i.i.i.i.i.i = icmp eq ptr %i.kp, null
  br i1 %.not.i.i.peel.i.i.i.i.i.i.i, label %.peel.next.i.i.i.i.i.i.i, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs0_1__NtB1B_15LogFormatConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit.i.i.i.i.i.i.i

.peel.next.i.i.i.i.i.i.i:                         ; preds = %bb.bd, %bb.bx
  %.sroa.04.060.i.i.i.i.i.i.i = phi i8 [ %.sroa.04.1.i.i.i.i.i.i.i, %bb.bx ], [ %.sroa.04.1.peel.i.i.i.i.i.i.i, %bb.bd ] ; 4 uses
  %i.kq = call { i64, i32 } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer4peek(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4659
  %i.kr = extractvalue { i64, i32 } %i.kq, 1
  %i.ks = icmp eq i32 %i.kr, 125
  br i1 %i.ks, label %.thread.i.i.i.i.i.i.i, label %bb.be

bb.be:                                            ; preds = %.peel.next.i.i.i.i.i.i.i
  %i.kt = call { i64, ptr } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer11expect_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i32 noundef 44, i8 noundef 7, i8 noundef 14) #30, !noalias !4659 ; 2 uses
  %i.ku = extractvalue { i64, ptr } %i.kt, 0
  %i.kv = trunc nuw i64 %i.ku to i1
  br i1 %i.kv, label %.loopexit77.i.i.i.i.i.i.i, label %bb.bm

bb.bf:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs), !noalias !4660
  call void @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer9parse_key(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.cs, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4661
  %i.kw = load i64, ptr %i.eb, align 8, !range !51, !noalias !4660, !noundef !14 ; 4 uses
  %i.kx = icmp eq i64 %i.kw, -2
  br i1 %i.kx, label %.loopexit78.i.i.i.i.i.i.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4660, !nonnull !14, !noundef !14 ; 5 uses
  %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4660
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !noalias !4660
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.kw, -1
  %i.ky = icmp eq i64 %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, 12 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bk, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  br i1 %i.ky, label %bb.bi, label %_RINvXNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs0_1__NtB8_15LogFormatConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1h_7Visitor9visit_strNtNtCseuwcdgGPBeX_5json55error5ErrorEBa_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
end_hunk_0
begin_hunk_1_@_RINvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtBb_9LogConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1c_7Visitor9visit_mapNtNtCseuwcdgGPBeX_5json52de9MapAccessEBd_:bb.a
  %.sroa.16.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ase, i64 96
  store i8 %.sroa.41.0.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.16.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !4790
  %.sroa.17.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ase, i64 97
  store i8 %.sroa.42.0.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.17.0..sroa_idx.i.i.i.i.i.i, align 1, !noalias !4790
  %i.asf = add i64 %i.asa, 1                      ; 3 uses
  store i64 %i.asf, ptr %i.df, align 8, !noalias !4673
  %i.asg = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4674 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.asg, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.cf, label %_RINvXNvXsh_NtNtCs2d6kDCn68sB_10serde_core2de5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtBb_11Deserialize11deserializeINtB3_10VecVisitorNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigENtBb_7Visitor9visit_seqNtNtCseuwcdgGPBeX_5json52de9SeqAccessEB2c_.exit.thread.i.i.i.i.i

_RINvXNvXsh_NtNtCs2d6kDCn68sB_10serde_core2de5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtBb_11Deserialize11deserializeINtB3_10VecVisitorNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigENtBb_7Visitor9visit_seqNtNtCseuwcdgGPBeX_5json52de9SeqAccessEB2c_.exit.i.i.i.i.i: ; preds = %bb.mp, %bb.cf
  %.sroa.9.0.copyload.i.lcssa.ph.i.i.i.i = phi i64 [ %i.asf, %bb.cf ], [ %.sroa.9.0.copyload.i1695.i.i.i.i, %bb.mp ]
  %.sroa.4.0.copyload.i.lcssa.ph.i.i.i.i = phi ptr [ %i.asd, %bb.cf ], [ %.sroa.4.0.copyload.i1696.i.i.i.i, %bb.mp ] ; 2 uses
  %.sroa.0.0.copyload.i.pre.i.i.i.i = load i64, ptr %i.cl, align 8, !noalias !4791 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !noalias !4673
  %i.ash = icmp eq i64 %.sroa.0.0.copyload.i.pre.i.i.i.i, -1
  br i1 %i.ash, label %.loopexit189, label %bb.mr

.loopexit189:                                     ; preds = %_RINvXNvXsh_NtNtCs2d6kDCn68sB_10serde_core2de5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtBb_11Deserialize11deserializeINtB3_10VecVisitorNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigENtBb_7Visitor9visit_seqNtNtCseuwcdgGPBeX_5json52de9SeqAccessEB2c_.exit.i.i.i.i.i, %_RINvXNvXsh_NtNtCs2d6kDCn68sB_10serde_core2de5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtBb_11Deserialize11deserializeINtB3_10VecVisitorNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigENtBb_7Visitor9visit_seqNtNtCseuwcdgGPBeX_5json52de9SeqAccessEB2c_.exit.thread.i.i.i.i.i
  %.sroa.4.029.i.i.i.i.i = phi ptr [ %.sroa.12.0.ph.in.i.i.i.i.i.i, %_RINvXNvXsh_NtNtCs2d6kDCn68sB_10serde_core2de5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtBb_11Deserialize11deserializeINtB3_10VecVisitorNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigENtBb_7Visitor9visit_seqNtNtCseuwcdgGPBeX_5json52de9SeqAccessEB2c_.exit.thread.i.i.i.i.i ], [ %.sroa.4.0.copyload.i.lcssa.ph.i.i.i.i, %_RINvXNvXsh_NtNtCs2d6kDCn68sB_10serde_core2de5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtBb_11Deserialize11deserializeINtB3_10VecVisitorNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigENtBb_7Visitor9visit_seqNtNtCseuwcdgGPBeX_5json52de9SeqAccessEB2c_.exit.i.i.i.i.i ] ; 2 uses
  %.in = extractvalue { i64, ptr } %i.nb, 1
  %i.asi = ptrtoint ptr %.in to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.029.i.i.i.i.i) ]
  %i.asj = call noundef nonnull align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer13with_position(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 %.sroa.4.029.i.i.i.i.i, i64 noundef %i.asi) #30, !noalias !4671
  br label %bb.mt

bb.mr:                                            ; preds = %_RINvXNvXsh_NtNtCs2d6kDCn68sB_10serde_core2de5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtBb_11Deserialize11deserializeINtB3_10VecVisitorNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigENtBb_7Visitor9visit_seqNtNtCseuwcdgGPBeX_5json52de9SeqAccessEB2c_.exit.i.i.i.i.i, %_RINvXNvXsh_NtNtCs2d6kDCn68sB_10serde_core2de5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtBb_11Deserialize11deserializeINtB3_10VecVisitorNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigENtBb_7Visitor9visit_seqNtNtCseuwcdgGPBeX_5json52de9SeqAccessEB2c_.exit.i.thread.i.i.i.i
  %.sroa.4.0.copyload.i.lcssa3280.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_RINvXNvXsh_NtNtCs2d6kDCn68sB_10serde_core2de5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtBb_11Deserialize11deserializeINtB3_10VecVisitorNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigENtBb_7Visitor9visit_seqNtNtCseuwcdgGPBeX_5json52de9SeqAccessEB2c_.exit.i.thread.i.i.i.i ], [ %.sroa.4.0.copyload.i.lcssa.ph.i.i.i.i, %_RINvXNvXsh_NtNtCs2d6kDCn68sB_10serde_core2de5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtBb_11Deserialize11deserializeINtB3_10VecVisitorNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigENtBb_7Visitor9visit_seqNtNtCseuwcdgGPBeX_5json52de9SeqAccessEB2c_.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.9.0.copyload.i.lcssa3279.i.i.i.i = phi i64 [ 0, %_RINvXNvXsh_NtNtCs2d6kDCn68sB_10serde_core2de5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtBb_11Deserialize11deserializeINtB3_10VecVisitorNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigENtBb_7Visitor9visit_seqNtNtCseuwcdgGPBeX_5json52de9SeqAccessEB2c_.exit.i.thread.i.i.i.i ], [ %.sroa.9.0.copyload.i.lcssa.ph.i.i.i.i, %_RINvXNvXsh_NtNtCs2d6kDCn68sB_10serde_core2de5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtBb_11Deserialize11deserializeINtB3_10VecVisitorNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigENtBb_7Visitor9visit_seqNtNtCseuwcdgGPBeX_5json52de9SeqAccessEB2c_.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.0.0.copyload.i3278.i.i.i.i = phi i64 [ 0, %_RINvXNvXsh_NtNtCs2d6kDCn68sB_10serde_core2de5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtBb_11Deserialize11deserializeINtB3_10VecVisitorNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigENtBb_7Visitor9visit_seqNtNtCseuwcdgGPBeX_5json52de9SeqAccessEB2c_.exit.i.thread.i.i.i.i ], [ %.sroa.0.0.copyload.i.pre.i.i.i.i, %_RINvXNvXsh_NtNtCs2d6kDCn68sB_10serde_core2de5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtBb_11Deserialize11deserializeINtB3_10VecVisitorNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigENtBb_7Visitor9visit_seqNtNtCseuwcdgGPBeX_5json52de9SeqAccessEB2c_.exit.i.i.i.i.i ] ; 3 uses
  store i64 %.sroa.0.0.copyload.i3278.i.i.i.i, ptr %i.cm, align 8, !noalias !4672
  store ptr %.sroa.4.0.copyload.i.lcssa3280.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !4672
  store i64 %.sroa.9.0.copyload.i.lcssa3279.i.i.i.i, ptr %.sroa.514.0..sroa_idx.i.i.i.i.i, align 8, !noalias !4672
  %i.ask = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer21expect_collection_end(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i32 noundef 93, i8 noundef 0, i8 noundef 12) #30, !noalias !4671 ; 2 uses
  %.not21.i.i.i.i.i = icmp eq ptr %i.ask, null
  br i1 %.not21.i.i.i.i.i, label %bb.mv, label %bb.ms

bb.ms:                                            ; preds = %bb.mr
  call void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigEEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cm) #30, !noalias !4671
  br label %bb.mt

bb.mt:                                            ; preds = %bb.ms, %.loopexit189
  %.sroa.11.0 = phi ptr [ %i.ask, %bb.ms ], [ %i.asj, %.loopexit189 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !noalias !4672
  br label %.loopexit

bb.mu:                                            ; preds = %.thread148
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr @176, ptr %i.g, align 8, !noalias !4792
  %i.asl = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 7, ptr %i.asl, align 8, !noalias !4792
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4792
  store ptr %i.g, ptr %i.f, align 8, !noalias !4792
  %.sroa.42.0..sroa_idx.i89 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.42.0..sroa_idx.i89, align 8, !noalias !4792
  %i.asm = call fastcc noalias noundef nonnull align 8 ptr @_RINvXs3_NtCseuwcdgGPBeX_5json55errorNtB6_5ErrorNtNtCs2d6kDCn68sB_10serde_core2de5Error6customNtNtCsf3Ta7LF998c_4core3fmt9ArgumentsECsat9HgdBb3qc_16shadowsocks_rust(ptr noundef nonnull @896, ptr noundef nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4792
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread

.loopexit.split.loop.exit:                        ; preds = %bb.cd
  %i.asn = extractvalue { i64, ptr } %i.nb, 1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.bz, %bb.cc, %.loopexit.split.loop.exit, %bb.cb, %bb.mt
  %.sroa.11.1.ph = phi ptr [ %.sroa.11.0, %bb.mt ], [ %i.mz, %bb.cb ], [ %i.asn, %.loopexit.split.loop.exit ], [ %i.mv, %bb.bz ], [ %i.na, %bb.cc ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.1.ph) ]
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread

bb.mv:                                            ; preds = %bb.mr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !noalias !4672
  %i.aso = load i64, ptr %i.cz, align 8, !range !24, !alias.scope !4793, !noundef !14
  %i.asp = icmp eq i64 %i.aso, -1
  br i1 %i.asp, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigEEEB1y_.exit, label %bb.mw

bb.mw:                                            ; preds = %bb.mv
  call void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigEEB1c_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.cz) #30
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigEEEB1y_.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigEEEB1y_.exit: ; preds = %bb.mv, %bb.mw
  store i64 %.sroa.0.0.copyload.i3278.i.i.i.i, ptr %i.cz, align 8
  store ptr %.sroa.4.0.copyload.i.lcssa3280.i.i.i.i, ptr %.sroa.526.0..sroa_idx, align 8
  store i64 %.sroa.9.0.copyload.i.lcssa3279.i.i.i.i, ptr %.sroa.627.0..sroa_idx, align 8
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogFormatConfigEB1B_.exit

bb.mx:                                            ; preds = %.thread152
  %i.asq = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4794 ; 2 uses
  %.not.i.i90 = icmp eq ptr %i.asq, null
  br i1 %.not.i.i90, label %bb.my, label %.thread175

bb.my:                                            ; preds = %bb.mx
  %i.asr = call { i64, ptr } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer11expect_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i32 noundef 58, i8 noundef 7, i8 noundef 13) #30, !noalias !4794 ; 2 uses
  %i.ass = extractvalue { i64, ptr } %i.asr, 0
  %i.ast = trunc nuw i64 %i.ass to i1
  br i1 %i.ast, label %bb.mz, label %bb.na

bb.mz:                                            ; preds = %bb.my
  %i.asu = extractvalue { i64, ptr } %i.asr, 1
  br label %.thread175

bb.na:                                            ; preds = %bb.my
  %i.asv = call noundef align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer15skip_whitespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4795 ; 2 uses
  %.not.i.i.i.i.i91 = icmp eq ptr %i.asv, null
  br i1 %.not.i.i.i.i.i91, label %bb.nb, label %.thread175

bb.nb:                                            ; preds = %bb.na
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4796
  call void @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer7peek_or(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i8 noundef 9) #30, !noalias !4795
  %i.asw = load i32, ptr %i.dc, align 8, !range !52, !noalias !4796, !noundef !14 ; 2 uses
  %i.asx = icmp eq i32 %i.asw, -1
  br i1 %i.asx, label %bb.nc, label %bb.nd

bb.nc:                                            ; preds = %bb.nb
  %i.asy = load ptr, ptr %i.e, align 8, !noalias !4796, !nonnull !14, !align !27, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4796
  br label %.thread175

bb.nd:                                            ; preds = %bb.nb
  %i.asz = load i64, ptr %i.e, align 8, !noalias !4796, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4796
  %i.ata = icmp eq i32 %i.asw, 110
  br i1 %i.ata, label %bb.ne, label %bb.nf

bb.ne:                                            ; preds = %bb.nd
  %i.atb = call { i64, ptr } @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer10parse_null(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4795 ; 2 uses
  %i.atc = extractvalue { i64, ptr } %i.atb, 0
  %i.atd = trunc nuw i64 %i.atc to i1
  br i1 %i.atd, label %bb.nm, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogFormatConfigEB1B_.exit

bb.nf:                                            ; preds = %bb.nd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4797
  call void @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer12parse_string(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4798
  %i.ate = load i64, ptr %i.dd, align 8, !range !51, !noalias !4797, !noundef !14 ; 3 uses
  %i.atf = icmp eq i64 %i.ate, -2
  br i1 %i.atf, label %bb.nn, label %bb.ng

bb.ng:                                            ; preds = %bb.nf
  %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !4797 ; 3 uses
  %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !4797 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4797
  %.not.i.i.i.i.i.i.i.i92 = icmp eq i64 %i.ate, -1
  br i1 %.not.i.i.i.i.i.i.i.i92, label %bb.nh, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogFormatConfigEB1B_.exit

bb.nh:                                            ; preds = %bb.ng
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i) ]
  %.not.i.i.i.i.i.i.i.i.i.i.i95 = icmp slt i64 %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i95, label %bb.nk, label %bb.ni, !prof !39

bb.ni:                                            ; preds = %bb.nh
  %i.atg = icmp eq i64 %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i.i.i, 0
  br i1 %i.atg, label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogFormatConfigEB1B_.exit, label %bb.nj

bb.nj:                                            ; preds = %bb.ni
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !4799
  %i.ath = call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, 17) 1) #30, !noalias !4799 ; 3 uses
  %i.ati = icmp eq ptr %i.ath, null
  br i1 %i.ati, label %bb.nk, label %bb.nl

bb.nk:                                            ; preds = %bb.nj, %bb.nh
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %bb.nj ], [ 0, %bb.nh ]
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i.i.i) #34, !noalias !4800
  unreachable

bb.nl:                                            ; preds = %bb.nj
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ath, ptr nonnull readonly align 1 %.sroa.5.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 %.sroa.5.sroa.4.0.copyload.i.i.i.i.i.i.i.i, i1 false), !noalias !4801
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogFormatConfigEB1B_.exit

bb.nm:                                            ; preds = %bb.ne
  %i.atj = extractvalue { i64, ptr } %i.atb, 1
  br label %.thread175

bb.nn:                                            ; preds = %bb.nf
  %i.atk = load ptr, ptr %i.d, align 8, !noalias !4797, !nonnull !14, !align !27, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4797
  %i.atl = call noundef nonnull align 8 ptr @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer13with_position(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 %i.atk, i64 noundef %i.asz) #30, !noalias !4795
  br label %.thread175

bb.no:                                            ; preds = %.thread152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @177, ptr %i.c, align 8, !noalias !4802
  %i.atm = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 11, ptr %i.atm, align 8, !noalias !4802
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4802
  store ptr %i.c, ptr %i.b, align 8, !noalias !4802
  %.sroa.42.0..sroa_idx.i96 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.42.0..sroa_idx.i96, align 8, !noalias !4802
  %i.atn = call fastcc noalias noundef nonnull align 8 ptr @_RINvXs3_NtCseuwcdgGPBeX_5json55errorNtB6_5ErrorNtNtCs2d6kDCn68sB_10serde_core2de5Error6customNtNtCsf3Ta7LF998c_4core3fmt9ArgumentsECsat9HgdBb3qc_16shadowsocks_rust(ptr noundef nonnull @896, ptr noundef nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4802
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread

.thread175:                                       ; preds = %bb.mx, %bb.na, %bb.nn, %bb.nm, %bb.nc, %bb.mz
  %.sroa.11114.0.ph = phi ptr [ %i.asy, %bb.nc ], [ %i.atl, %bb.nn ], [ %i.asu, %bb.mz ], [ %i.atj, %bb.nm ], [ %i.asv, %bb.na ], [ %i.asq, %bb.mx ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11114.0.ph) ]
  %i.ato = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.11114.0.ph, ptr %i.ato, align 8
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCs5Xr050g3D4S_3std4path7PathBufEEECsat9HgdBb3qc_16shadowsocks_rust.exit99

_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread: ; preds = %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit, %.thread156, %bb.ag, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valuemECsat9HgdBb3qc_16shadowsocks_rust.exit.thread, %bb.by, %.loopexit190, %bb.mu, %.loopexit, %bb.no, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtB1B_9LogConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit
  %.sink9314 = phi ptr [ %i.iq, %bb.ag ], [ %3, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valuemECsat9HgdBb3qc_16shadowsocks_rust.exit.thread ], [ %i.mt, %bb.by ], [ %.sroa.7111.0.ph, %.loopexit190 ], [ %i.asm, %bb.mu ], [ %.sroa.11.1.ph, %.loopexit ], [ %i.atn, %bb.no ], [ %.sroa.9107.0, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtB1B_9LogConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit ], [ %.sroa.0.0.i.i, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit ], [ %i.id, %.thread156 ]
  %.sroa.10.03257 = phi ptr [ %.sroa.10.03648, %bb.ag ], [ %.sroa.10.03648, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valuemECsat9HgdBb3qc_16shadowsocks_rust.exit.thread ], [ %.sroa.10.03648, %bb.by ], [ %.sroa.10.03648, %.loopexit190 ], [ %.sroa.10.03648, %bb.mu ], [ %.sroa.10.03648, %.loopexit ], [ %.sroa.10.03648, %bb.no ], [ %.sroa.10.03258, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtB1B_9LogConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit ], [ %.sroa.10.03648, %.thread156 ], [ %.sroa.10.03648, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit ] ; 2 uses
  %.sroa.0103.03094 = phi i64 [ %.sroa.0103.03649, %bb.ag ], [ %.sroa.0103.03649, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valuemECsat9HgdBb3qc_16shadowsocks_rust.exit.thread ], [ %.sroa.0103.03649, %bb.by ], [ %.sroa.0103.03649, %.loopexit190 ], [ %.sroa.0103.03649, %bb.mu ], [ %.sroa.0103.03649, %.loopexit ], [ %.sroa.0103.03649, %bb.no ], [ %.sroa.0103.03095, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess8next_keyNtNvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtB1B_9LogConfigNtBG_11Deserialize11deserialize7___FieldEB1D_.exit ], [ %.sroa.0103.03649, %.thread156 ], [ %.sroa.0103.03649, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit ] ; 2 uses
  %i.atp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink9314, ptr %i.atp, align 8
  store i64 -1, ptr %0, align 8
  %i.atq = icmp sgt i64 %.sroa.0103.03094, 0
  br i1 %i.atq, label %bb.np, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCs5Xr050g3D4S_3std4path7PathBufEEECsat9HgdBb3qc_16shadowsocks_rust.exit99

bb.np:                                            ; preds = %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.03257) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.03257, i64 noundef %.sroa.0103.03094, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !4803
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCs5Xr050g3D4S_3std4path7PathBufEEECsat9HgdBb3qc_16shadowsocks_rust.exit99

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCs5Xr050g3D4S_3std4path7PathBufEEECsat9HgdBb3qc_16shadowsocks_rust.exit99: ; preds = %.thread175, %_RINvYNtNtCseuwcdgGPBeX_5json52de9MapAccessNtNtCs2d6kDCn68sB_10serde_core2de9MapAccess10next_valueNtNtBG_11ignored_any10IgnoredAnyECsat9HgdBb3qc_16shadowsocks_rust.exit.thread, %bb.np
  %i.atr = load i64, ptr %i.cz, align 8, !range !24, !alias.scope !4804, !noundef !14
  %i.ats = icmp eq i64 %i.atr, -1
  br i1 %i.ats, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigEEEB1y_.exit100, label %bb.nq

bb.nq:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCs5Xr050g3D4S_3std4path7PathBufEEECsat9HgdBb3qc_16shadowsocks_rust.exit99
  call void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigEEB1c_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.cz) #30
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigEEEB1y_.exit100

bb.nr:                                            ; preds = %_RNvXs_NtCsat9HgdBb3qc_16shadowsocks_rust6configNtB4_9LogConfigNtNtCsf3Ta7LF998c_4core7default7Default7default.exit
  store i64 %.sroa.0103.03649, ptr %.sroa.049.sroa.8.0..sroa_idx123, align 8
  %.sroa.049.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.10.03648, ptr %.sroa.049.sroa.10.0..sroa_idx, align 8
  %.sroa.049.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.13.03647, ptr %.sroa.049.sroa.12.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.sroa.045.0, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i8 %.sroa.047.0, ptr %.sroa.12.0..sroa_idx, align 4
  br i1 %.not65.not, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std4path7PathBufEECsat9HgdBb3qc_16shadowsocks_rust.exit, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std4path7PathBufEECsat9HgdBb3qc_16shadowsocks_rust.exit.sink.split

bb.ns:                                            ; preds = %_RNvXs_NtCsat9HgdBb3qc_16shadowsocks_rust6configNtB4_9LogConfigNtNtCsf3Ta7LF998c_4core7default7Default7default.exit
  store i64 -1, ptr %.sroa.049.sroa.8.0..sroa_idx123, align 8
  %.sroa.10.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.sroa.045.0, ptr %.sroa.10.0..sroa_idx51, align 8
  %.sroa.12.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i8 %.sroa.047.0, ptr %.sroa.12.0..sroa_idx53, align 4
  br i1 %.not65.not, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std4path7PathBufEECsat9HgdBb3qc_16shadowsocks_rust.exit, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std4path7PathBufEECsat9HgdBb3qc_16shadowsocks_rust.exit.sink.split

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std4path7PathBufEECsat9HgdBb3qc_16shadowsocks_rust.exit.sink.split: ; preds = %bb.nr, %bb.ns
  call void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigEEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cx) #30
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std4path7PathBufEECsat9HgdBb3qc_16shadowsocks_rust.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std4path7PathBufEECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std4path7PathBufEECsat9HgdBb3qc_16shadowsocks_rust.exit.sink.split, %bb.nr, %bb.ns
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigEEEB1y_.exit100

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsat9HgdBb3qc_16shadowsocks_rust6config15LogWriterConfigEEEB1y_.exit100: ; preds = %bb.nq, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCs5Xr050g3D4S_3std4path7PathBufEEECsat9HgdBb3qc_16shadowsocks_rust.exit99, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std4path7PathBufEECsat9HgdBb3qc_16shadowsocks_rust.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz)
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RINvXs16_NtNtCs2d6kDCn68sB_10serde_core2de5implsmNtB9_11Deserialize11deserializeQNtNtCseuwcdgGPBeX_5json52de12DeserializerECsat9HgdBb3qc_16shadowsocks_rust(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [58 x i8], align 1                ; 4 uses
  %i.h = alloca [16 x i8], align 16               ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %i.q = alloca [57 x i8], align 1                ; 4 uses
  %i.r = alloca [16 x i8], align 16               ; 4 uses
  %i.s = alloca [32 x i8], align 8                ; 7 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [24 x i8], align 8                ; 5 uses
  %i.v = alloca [32 x i8], align 8                ; 7 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [24 x i8], align 8                ; 5 uses
  %i.y = alloca [48 x i8], align 16               ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4833)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !4834
  call void @_RNvMs_NtCseuwcdgGPBeX_5json52deNtB4_12Deserializer12parse_number(ptr noalias nofree noundef nonnull sret([48 x i8]) align 16 captures(none) dereferenceable(48) %i.y, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #30, !noalias !4833
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load i64, ptr %i.z, align 16, !range !42, !noalias !4834, !noundef !14 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, -1
  br i1 %i.ab, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ac = load ptr, ptr %i.y, align 16, !noalias !4834, !nonnull !14, !align !27, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !4834
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ac, ptr %i.ad, align 8, !alias.scope !4833
  br label %_RINvXs0_NtCseuwcdgGPBeX_5json52deQNtB6_12DeserializerNtNtCs2d6kDCn68sB_10serde_core2de12Deserializer15deserialize_u32NtNvXs16_NtBR_5implsmNtBR_11Deserialize11deserialize16PrimitiveVisitorECsat9HgdBb3qc_16shadowsocks_rust.exit

bb.c:                                             ; preds = %bb.a
  %.sroa.08.0.copyload.i = load i64, ptr %i.y, align 16, !noalias !4834
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %.sroa.6.sroa.0.0.copyload.i = load double, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !4834
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %.sroa.6.sroa.4.0.copyload.i = load i128, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i, align 16, !noalias !4834 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !4834
  switch i64 %i.aa, label %default.unreachable [
    i64 0, label %bb.d
    i64 1, label %bb.e
    i64 2, label %bb.f
  ]

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.ae = icmp ugt i128 %.sroa.6.sroa.4.0.copyload.i, 18446744073709551615
  br i1 %i.ae, label %bb.i, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.af = add i128 %.sroa.6.sroa.4.0.copyload.i, -9223372036854775808
  %or.cond.i = icmp ult i128 %i.af, -18446744073709551616
  br i1 %or.cond.i, label %bb.l, label %bb.k

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !4835
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store double %.sroa.6.sroa.0.0.copyload.i, ptr %i.ag, align 8, !noalias !4835
  store i8 3, ptr %i.x, align 8, !noalias !4835
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !4835
  store ptr %i.a, ptr %i.w, align 8, !noalias !4836
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr @178, ptr %i.ah, align 8, !noalias !4836
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !4836
  store ptr %i.x, ptr %i.v, align 8, !noalias !4836
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @_RNvXNtCs2d6kDCn68sB_10serde_core2deNtB2_10UnexpectedNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !4836
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr %i.w, ptr %i.ai, align 8, !noalias !4836
  %.sroa.46.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRDNtNtCs2d6kDCn68sB_10serde_core2de8ExpectedEL_NtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.46.0..sroa_idx.i.i.i, align 8, !noalias !4836
  %i.aj = call fastcc noalias noundef nonnull align 8 ptr @_RINvXs3_NtCseuwcdgGPBeX_5json55errorNtB6_5ErrorNtNtCs2d6kDCn68sB_10serde_core2de5Error6customNtNtCsf3Ta7LF998c_4core3fmt9ArgumentsECsat9HgdBb3qc_16shadowsocks_rust(ptr noundef nonnull @893, ptr noundef nonnull %i.v) #30, !noalias !4837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !4836
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !4835
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !4835
  br label %_RINvXNvXs16_NtNtCs2d6kDCn68sB_10serde_core2de5implsmNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_u64NtNtCseuwcdgGPBeX_5json55error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i

bb.g:                                             ; preds = %bb.d
  %i.ak = trunc nuw i128 %.sroa.6.sroa.4.0.copyload.i to i64 ; 2 uses
  %i.al = icmp ugt i64 %i.ak, 4294967295
  br i1 %i.al, label %bb.h, label %_RINvXNvXs16_NtNtCs2d6kDCn68sB_10serde_core2de5implsmNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_u64NtNtCseuwcdgGPBeX_5json55error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.thread27.i, !prof !23

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !4838
  %i.am = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 %i.ak, ptr %i.am, align 8, !noalias !4838
  store i8 1, ptr %i.u, align 8, !noalias !4838
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !4838
  store ptr %i.a, ptr %i.t, align 8, !noalias !4839
  %i.an = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @178, ptr %i.an, align 8, !noalias !4839
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !4839
  store ptr %i.u, ptr %i.s, align 8, !noalias !4839
  %.sroa.42.0..sroa_idx.i.i13.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @_RNvXNtCs2d6kDCn68sB_10serde_core2deNtB2_10UnexpectedNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i13.i, align 8, !noalias !4839
  %i.ao = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.t, ptr %i.ao, align 8, !noalias !4839
  %.sroa.46.0..sroa_idx.i.i14.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRDNtNtCs2d6kDCn68sB_10serde_core2de8ExpectedEL_NtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.46.0..sroa_idx.i.i14.i, align 8, !noalias !4839
  %i.ap = call fastcc noalias noundef nonnull align 8 ptr @_RINvXs3_NtCseuwcdgGPBeX_5json55errorNtB6_5ErrorNtNtCs2d6kDCn68sB_10serde_core2de5Error6customNtNtCsf3Ta7LF998c_4core3fmt9ArgumentsECsat9HgdBb3qc_16shadowsocks_rust(ptr noundef nonnull @894, ptr noundef nonnull %i.s) #30, !noalias !4840
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !4839
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !4838
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !4838
  br label %_RINvXNvXs16_NtNtCs2d6kDCn68sB_10serde_core2de5implsmNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_u64NtNtCseuwcdgGPBeX_5json55error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i

bb.i:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !4834
  store i128 %.sroa.6.sroa.4.0.copyload.i, ptr %i.r, align 16, !noalias !4841
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !4841
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(57) %i.q, i8 0, i64 57, i1 false), !noalias !4841
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !4841
  store ptr %i.q, ptr %i.p, align 8, !noalias !4841
  %i.aq = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 57, ptr %i.aq, align 8, !noalias !4841
  %i.ar = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 0, ptr %i.ar, align 8, !noalias !4841
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !4841
  store ptr %i.r, ptr %i.o, align 8, !noalias !4841
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @_RNvXNtNtCsf3Ta7LF998c_4core3fmt3numoNtB4_7Display3fmt, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !4841
  %i.as = call noundef zeroext i1 @_RNvNtCsf3Ta7LF998c_4core3fmt5write(ptr noundef nonnull %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @192, ptr noundef nonnull @195, ptr noundef nonnull %i.o) #30, !noalias !4842
  br i1 %i.as, label %bb.j, label %_RINvYNtNvXs16_NtNtCs2d6kDCn68sB_10serde_core2de5implsmNtBe_11Deserialize11deserialize16PrimitiveVisitorNtBe_7Visitor10visit_u128NtNtCseuwcdgGPBeX_5json55error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i, !prof !23

bb.j:                                             ; preds = %bb.i
  call void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @260, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @265, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @196) #37, !noalias !4842
  unreachable

_RINvYNtNvXs16_NtNtCs2d6kDCn68sB_10serde_core2de5implsmNtBe_11Deserialize11deserialize16PrimitiveVisitorNtBe_7Visitor10visit_u128NtNtCseuwcdgGPBeX_5json55error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !4841
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !4841
  %i.at = call { ptr, i64 } @_RNvMNtCs2d6kDCn68sB_10serde_core6formatNtB2_3Buf6as_str(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p) #30, !noalias !4842 ; 2 uses
end_hunk_1
